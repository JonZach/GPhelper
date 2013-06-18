class Appointment < ActiveRecord::Base
  attr_accessible :city, :date, :street, :zip
  belongs_to :user

  validates_presence_of :user_id, :date, :city, :street
end
