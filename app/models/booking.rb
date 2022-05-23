class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :granny, class_name: "user", foreign_key: "granny_id"
end
