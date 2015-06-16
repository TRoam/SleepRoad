class AddColumnToRecords < ActiveRecord::Migration
  def change
  	add_column :records, :sleep, :dateTime
  	add_column :records, :weakup, :dateTime
  end
end
