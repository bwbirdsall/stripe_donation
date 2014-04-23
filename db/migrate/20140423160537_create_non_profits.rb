class CreateNonProfits < ActiveRecord::Migration
  def change
    create_table :non_profits do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
