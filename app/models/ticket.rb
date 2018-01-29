class Ticket < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :aircraft
  belongs_to :user

end