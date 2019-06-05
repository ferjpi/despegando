class AddColumnPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :vuelos, :people, :integer
  end
end
