class AddNameToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :name, :string
  end
end
