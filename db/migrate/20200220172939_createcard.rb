class Createcard < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :cardname
      t.text :cardetype
      t.text :requirements
      t.integer :user_id
    end 
  end
end
