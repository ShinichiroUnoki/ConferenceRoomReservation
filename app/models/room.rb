class Room < ApplicationRecord
  belongs_to :facility
  has_many :schedules, dependent: :destroy
  has_many :users, through: :schedules, dependent: :destroy
  #空で無いかどうか
  validates :name, :seating_capacity, :usage_fee, :accountable_time, presence: true
end
