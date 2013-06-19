class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :street, :city, :zip
  #validates_presence_of :street, :city, :zip

  has_many :appointments

  geocoded_by :business_address
  after_validation :geocode

  def business_address
    [street, city, zip].compact.join(', ')
  end
end
