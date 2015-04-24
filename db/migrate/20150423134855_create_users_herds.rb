class CreateUsersHerds < ActiveRecord::Migration
  def change
    create_table :users_herds do |t|
      t.belongs_to :user
      t.belongs_to :herd
      t.timestamps null: false
    end
  end
end
