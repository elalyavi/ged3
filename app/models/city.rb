class City < ActiveRecord::Base
    has_many :excursions, inverse_of: :city, :dependent => :delete_all
    has_many :itinerary, :dependent => :delete_all
    accepts_nested_attributes_for :excursions, allow_destroy: true

    validates :name, presence: true

end
