class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :manufacture
      t.string :model
      t.string :year
      t.decimal :price

      t.timestamps
    end
  end
end
