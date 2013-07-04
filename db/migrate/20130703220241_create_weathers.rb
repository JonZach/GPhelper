class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.string :city
      t.text :weather_info

      t.timestamps
    end
  end
end
