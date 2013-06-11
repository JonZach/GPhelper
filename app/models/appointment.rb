class Appointment < ActiveRecord::Base
  attr_accessible :city, :date, :street, :zip
end
