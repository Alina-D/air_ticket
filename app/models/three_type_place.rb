class ThreeTypePlace < Place
  validates :business_seats, :comfort_seats, presence: true
end