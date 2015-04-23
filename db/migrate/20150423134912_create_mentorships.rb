class CreateMentorships < ActiveRecord::Migration
  def change
    create_table :mentorships do |t|
      t.timestamps null: false
    end
  end
end
