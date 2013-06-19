class Appointment < ActiveRecord::Base
  attr_accessible :city, :date, :street, :zip
  belongs_to :user

  validates_presence_of :user_id, :date, :city, :street

  geocoded_by :address
  after_validation :geocode

  def address
    [street, city, zip].compact.join(', ')
  end
end
