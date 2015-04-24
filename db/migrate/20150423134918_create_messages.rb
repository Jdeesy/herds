class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :reciever_id
      t.string :messages
      t.timestamps null: false
    end
  end
end
