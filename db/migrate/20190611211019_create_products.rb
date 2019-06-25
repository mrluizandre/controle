class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :minimum_stock, precision: 15, scale: 3, default: 0
      t.decimal :stock, precision: 15, scale: 3, default: 0

      t.timestamps
    end
  end
end
