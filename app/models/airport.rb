class Airport < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  has_many :aircrafts
  has_many :airports_routes
  has_many :routes, through: :airports_routes

  scope :ordered, -> { joins(:airports_routes).order('airports_routes.position').uniq}

  def update_position(route, position)
    airport_route = airport_route(route)
    airport_route.update(position: position) if airport_route
  end

  def position_in(route)
    airport_route(route).try(:position)
  end

  protected

  def airport_route(route)
    @airport_route ||= airports_routes.where(route: route).first
  end
end
