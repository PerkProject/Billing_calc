class CreateBorrowers < ActiveRecord::Migration[5.1]
  def change
    create_table :borrowers do |t|
      t.string :name
      t.string :desc
      t.references :investor, null: true
      t.timestamps
    end
  end
end
