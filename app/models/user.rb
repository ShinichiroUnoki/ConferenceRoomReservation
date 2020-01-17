class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :facility
  has_many :schedules, dependent: :destroy
  has_many :rooms, through: :schedules, dependent: :destroy
  validates :last_name, :first_name, presence: true

end
