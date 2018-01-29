class AircraftsRoute < ActiveRecord::Base
  belongs_to :aircraft
  belongs_to :route
end