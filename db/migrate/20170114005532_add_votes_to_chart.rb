class AddVotesToChart < ActiveRecord::Migration[5.0]
  def change
    add_column :charts, :votes, :integer
  end
end
