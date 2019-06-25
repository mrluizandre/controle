class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.belongs_to :product, foreign_key: true
      t.decimal :amount, precision: 15, scale: 3, default: 0
      t.integer :transaction_type

      t.timestamps
    end
  end
end
