class Lesson < ActiveRecord::Base
  belongs_to :instructor, -> { where role: "instructor" }, class_name: "User"
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :category
  has_many :reviews
end
