class AddPreferences < ActiveRecord::Migration
  def up
		create_table :preferences do |t|
			t.string :value
			t.string :key
			t.string :value_type
			t.timestamps
		end
		change_table :preferences do |t|
			t.index :key, :unique => true
			t.index :value_type
		end
  end

  def down
		drop_table :preferences
  end
end
