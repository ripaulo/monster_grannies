class User < ApplicationRecord
  include PgSearch::Model
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :user_bookings, :class_name => 'Booking', :foreign_key => 'user_id', dependent: :destroy
  has_many :granny_bookings, :class_name => 'Booking', :foreign_key => 'granny_id', dependent: :destroy
  has_one_attached :photo

  validates :first_name, :last_name, :birth_date, :location, presence: true

  validates :description, :price, presence: true, if: :granny?

  scope :grannies, -> { where(granny: true) }

  pg_search_scope :search_by_name_and_description,
    against: [ :first_name, :last_name, :description, :location ],
    using: {
      tsearch: { prefix: true }
    }

  def name
    "#{first_name} #{last_name}"
  end
end
