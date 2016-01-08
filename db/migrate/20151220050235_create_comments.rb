class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.text :comment
      t.integer :event_id
      t.timestamps
    end
  end
end
