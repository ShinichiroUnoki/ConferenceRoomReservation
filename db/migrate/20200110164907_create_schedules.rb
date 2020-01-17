class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|

      t.integer :user_id
      t.integer :room_id
      t.datetime :starting_time
      t.datetime :finish_time
      t.string :title
      t.text :detail
      t.string :url

      t.timestamps
    end
  end
end
