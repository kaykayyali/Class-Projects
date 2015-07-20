class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.references :user, index: true
      t.string :name

      t.datetime :completion_date
      t.timestamps null: false
    end
  end
end
