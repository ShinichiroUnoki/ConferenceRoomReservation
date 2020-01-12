class Room < ApplicationRecord
  belongs_to :facility
  has_many :schedules
  has_many :users, through: :schedules
end
