class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
    t.text :link
    t.text :shortlink
    t.integer :times_visited
      t.timestamps null: false
    end
  end
end
