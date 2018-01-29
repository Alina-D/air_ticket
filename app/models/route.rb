class Route < ActiveRecord::Base
  validates :name, presence: true
  validate :airports_count

  has_many :airports_routes
  has_many :airports, through: :airports_routes

  has_many :aircrafts_routes
  has_many :aircrafts, through: :aircrafts_routes

  before_validation :set_name

  private

  def set_name
    self.name = "#{airports.first.title} - #{airports.last.title}"
  end

  def airports_count
    if airports.size < 2
      errors.add(:base, 'Маршрут должен содержать минимум 2 станции!')
    end
  end

end

