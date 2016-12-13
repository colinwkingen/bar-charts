class AddNameAndAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :name, :string
    add_column :locations, :address, :string
  end
end
