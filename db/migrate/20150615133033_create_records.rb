class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :user_id
      t.datetime :from
      t.datetime :to
      t.datetime :during

      t.timestamps
    end
  end
end
