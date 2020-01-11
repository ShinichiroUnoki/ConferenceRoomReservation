class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :facility_id
      t.string :name
      t.integer :seating_capacity
      t.integer :usage_fee
      t.string :accountable_time
      t.text :note

      t.timestamps
    end
  end
end
