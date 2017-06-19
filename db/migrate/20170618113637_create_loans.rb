class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.float :paid_out
      t.float :interest_paid
      t.float :return_rate
      t.references :borrower, null:false
      t.timestamps
    end
  end
end
