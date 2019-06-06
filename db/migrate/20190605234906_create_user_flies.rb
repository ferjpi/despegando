class CreateUserFlies < ActiveRecord::Migration[5.2]
  def change
    create_table :user_flies do |t|
      t.integer :user_id
      t.integer :vuelo_id

      t.timestamps
    end
  end
end
