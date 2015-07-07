class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.text :name
    	t.text :address
    	t.text :phone1
    	t.text :phone2
    	t.text :email1
    	t.text :email2


      t.timestamps null: false
    end
  end
end
