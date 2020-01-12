class CreateSchedules < ActiveRecord::Migration[5.2]
  #下記は、アソシエーション用で追加
  # def change
  #   create_table :rooms do |t|
  #     t.integer :facility_id
  #     t.string :name
  #     t.integer :seating_capacity
  #     t.integer :usage_fee
  #     t.string :accountable_time
  #     t.text :note

  #     t.timestamps
  #   end
  # end

  #下記は、アソシエーション用で追加
  # def change
  #   create_table :users do |t|
  #     t.integer :facility_id
  #     t.string :last_name
  #     t.string :first_name

  #     t.timestamps
  #   end
  # end

  def change
    create_table :schedules do |t|
      #下記2文は、アソシエーション用で追加
      # t.belongs_to :room
      # t.belongs_to :user

      t.integer :user_id
      t.integer :room_id
      t.time :starting_time
      t.time :finish_time
      t.string :title
      t.text :detail

      t.timestamps
    end
  end
end
