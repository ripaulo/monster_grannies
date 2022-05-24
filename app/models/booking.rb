class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :granny, class_name: "User", foreign_key: "granny_id"
  validates :start_date, :end_date, presence: true

end
