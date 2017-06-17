class Itinerary < ActiveRecord::Base
  belongs_to :city
  has_many :tours
  
  accepts_nested_attributes_for :city




 
  validates :city_id, presence: true
  validates :name, :desc, presence: true
  validates :price, presence: true
end
