class Facility < ApplicationRecord
  has_many :rooms, dependent: :destroy
  has_many :users, dependent: :destroy
end
