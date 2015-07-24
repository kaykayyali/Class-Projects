class AddPhoneToDogs < ActiveRecord::Migration
  def change
  	add_column :dogs, :phone, :string
  end
end
