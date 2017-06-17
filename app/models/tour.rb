class Tour < ActiveRecord::Base
  belongs_to :itinerary


   accepts_nested_attributes_for :itinerary,  allow_destroy: true
   validates :add_desc, :departure_date, presence: true
   validates :add_payment, presence: true
   validates :count_days, presence: true

  def self.search(params)
    result = Tour.includes(:itinerary).references(:itinerary)
    if params['itinerary'].present?
      result = result.where(itinerary: {name: params['itinerary']})
    end
    if params['departure_date'].present?
      result = result.where(departure_date: params['departure_date'])
    end
    if params['add_desc'].present?
      result = result.where(add_desc: params['add_desc'])
    end
    if params['add_payment'].present?
      result = result.where(add_payment: params['add_payment'])
    end
    if params['count_days'].present?
      result = result.where(count_days: params['count_days'])
    end

   result.all
  end
end


  

