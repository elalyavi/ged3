module ToursHelper
  def new_itinerary_form(form)
    form.fields_for(:itinerary, Itinerary.new) do |fr|
      render('tours/one_itinerary_form', fr: fr)
    end
  end
 def itinerary_select
  Itinerary.all.collect {|x| [x.name, x.id]}
 end
end
