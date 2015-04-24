class CreateHerds < ActiveRecord::Migration
  def change
    create_table :herds do |t|
      t.string :name
      t.string :activity
      t.timestamps null: false
    end
  end
end
