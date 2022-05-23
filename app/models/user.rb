class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :granny_skills
  has_many :bookings
  validates :first_name, :last_name, :age, presence: true
  validates :description, :price, :location, presence: true, if: :granny?
end
