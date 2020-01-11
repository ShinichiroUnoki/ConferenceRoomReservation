class User < ApplicationRecord
  belongs_to :facility
  has_many :schedules, dependent: :destroy
end
