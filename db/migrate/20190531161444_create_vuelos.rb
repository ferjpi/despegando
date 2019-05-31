class CreateVuelos < ActiveRecord::Migration[5.2]
  def change
    create_table :vuelos do |t|
      t.string :departure
      t.string :destination
      t.integer :passenger
      t.integer :price

      t.timestamps
    end
  end
end
