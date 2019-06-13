class AddColumnPromoToVuelo < ActiveRecord::Migration[5.2]
  def change
    add_column :promos, :vuelo_id, :integer
  end
end
