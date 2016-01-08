class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string  :title
      t.string  :image
      t.string  :date
      t.text  :outline
      t.timestamps
    end
  end
end
