class Place < ApplicationRecord
  belongs_to :aircraft

  validates :title, :economy_seats, presence: true

  scope :one_type_place, -> {where(type: "OneTypePlace")}
  scope :two_type_place, -> {where(type: "TwoTypePlace")}
  scope :three_type_place, -> {where(type: "ThreeTypePlace")}
  scope :ordered, -> {order (:title)}


end
