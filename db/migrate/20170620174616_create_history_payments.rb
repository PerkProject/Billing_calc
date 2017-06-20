class CreateHistoryPayments < ActiveRecord::Migration[5.1]
  def change
    create_table :history_payments do |t|
      t.integer :month
      t.float :payment
      t.timestamps
    end
  end
end
