class Camper < ApplicationRecord
  has_many :signups
  has_many :activities, through: :signups
  validates :name, presence: true
  validates :age, presence: true, numericality: {greater_than: 0}


end
