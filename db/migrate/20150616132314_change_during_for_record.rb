class ChangeDuringForRecord < ActiveRecord::Migration
  def change
  	change_column :records, :during, :string
  end
end
