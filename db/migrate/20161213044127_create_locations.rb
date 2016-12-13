class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|

      t.column :name, :string
      t.column :address, :string
      t.timestamps
      
    end
  end
end
