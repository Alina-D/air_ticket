class User < ActiveRecord::Base
  validates :name, presence: true
  validates :last_name, presence: true

  has_many :tickets
end
