module ExcursionsHelper
  def new_city_form(form)
    form.fields_for(:city, City.new) do |fr|
      render('excursions/one_city_form', fr: fr)
    end
  end
end
