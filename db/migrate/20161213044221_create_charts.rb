class CreateCharts < ActiveRecord::Migration[5.0]
  def change
    create_table :charts do |t|

      t.column :location_id, :string
    end
  end
end
