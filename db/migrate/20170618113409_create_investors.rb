class CreateInvestors < ActiveRecord::Migration[5.1]
  def change
    create_table :investors do |t|
      t.string :name
      t.string :desc
      t.float :invest_summ
      t.timestamps
    end
  end
end
