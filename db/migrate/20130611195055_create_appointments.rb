class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date
      t.string :street
      t.string :city
      t.string :zip

      t.timestamps
    end
  end
end
