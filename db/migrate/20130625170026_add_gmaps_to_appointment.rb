class AddGmapsToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :gmaps, :boolean
  end
end
