class Excursion < ActiveRecord::Base
  belongs_to :city

    accepts_nested_attributes_for :city, allow_destroy: true

   

   validates :name, :describe, presence: true 
   validates :price, presence: true
end
