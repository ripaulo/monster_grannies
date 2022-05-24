class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_bookings, :class_name => 'Booking', :foreign_key => 'user_id'
  has_many :granny_bookings, :class_name => 'Booking', :foreign_key => 'granny_id'

  validates :first_name, :last_name, :age, :location, presence: true
  validates :description, :price, presence: true, if: :granny?
end
