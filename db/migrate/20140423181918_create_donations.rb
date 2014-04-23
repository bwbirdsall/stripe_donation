class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :name
      t.string :email
      t.belongs_to :non_profit
      t.decimal :amount

      t.timestamps
    end
  end
end
