class AddRatingToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :rating, :float
  end
end
