class Aircraft < ActiveRecord::Base
  validates :model, presence: true, uniqueness: true

  belongs_to :current_airport, class_name: 'Airport', foreign_key: :current_airport_id

  has_many :aircrafts_routes
  has_many :routes, through: :aircrafts_routes

  has_many :tickets
  has_many :places
end