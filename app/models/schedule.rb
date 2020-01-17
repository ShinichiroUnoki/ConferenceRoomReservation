class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :starting_time, :finish_time, presence: true

  after_create do
    schedule = Schedule.find(id)
    schedule.url = "http://localhost:3000/schedules/edit/#{schedule.id}"
    schedule.save
  end
end
