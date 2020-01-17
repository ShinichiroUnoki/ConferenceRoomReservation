class Room < ApplicationRecord
  belongs_to :facility
  has_many :schedules, dependent: :destroy
  has_many :users, through: :schedules, dependent: :destroy
end
