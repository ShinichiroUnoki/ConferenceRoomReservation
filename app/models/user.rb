class User < ApplicationRecord
  belongs_to :facility
  has_many :schedules
  has_many :rooms, through: :schedules
end
