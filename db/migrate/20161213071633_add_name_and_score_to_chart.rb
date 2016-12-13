class AddNameAndScoreToChart < ActiveRecord::Migration[5.0]
  def change
    add_column :charts, :name, :string
    add_column :charts, :score, :float
  end
end
