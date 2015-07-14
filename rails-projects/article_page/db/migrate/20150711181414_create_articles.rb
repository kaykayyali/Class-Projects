class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	
    	t.string :title 
    	t.string :author
    	t.datetime :date
    	t.string :source
    	t.text :content
    	t.text :summary

      t.timestamps null: false
    end
  end
end
