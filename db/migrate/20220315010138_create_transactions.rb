class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :amount
      t.string :description
      t.string :processor
      t.integer :user_id
      t.string :status

      t.timestamps
    end
  end
end
