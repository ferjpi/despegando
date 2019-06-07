class CreatePromos < ActiveRecord::Migration[5.2]
  def change
    create_table :promos do |t|
      t.string :description_package
      t.string :description
      t.string :description_value
      t.string :price_promo

      t.timestamps
    end
  end
end
