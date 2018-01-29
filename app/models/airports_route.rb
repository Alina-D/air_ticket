class AirportsRoute < ActiveRecord::Base
  belongs_to :airport
  belongs_to :route

  validates :airport_id, uniqueness: {scope: :route_id}

end