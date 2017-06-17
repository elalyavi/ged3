itinerary_change_new = ->
  if($("#tour_itinerary_id").length > 0)
    alert("Сначала выберите форму редактирования.\nКнопка (Выбрать существующую/редактировать)")
  else
    elem = $("#itinerary-change")
    data = elem.attr("data-content-new")
    elem.attr("data-content-new", elem.html())
    elem.html(data)
    window.datepicker_activation_by_item(elem)
  false


itinerary_change_exist = ->
  elem1 = $("#tour_itinerary_attributes_id")
  elem2 = $("#tour_itinerary_id")
  if(elem1.length == 0 && elem2.length == 0)
    alert("Сначала выберите форму редактирования.\nКнопка (Cоздать/редактировать)")
  else
    elem = $("#itinerary-change")
    data = elem.attr("data-content-exist")
    elem.attr("data-content-exist", elem.html())
    elem.html(data)
    window.datepicker_activation_by_item(elem)
  false

all_activities = ->
  $("#itinerary-change-new-btn").click itinerary_change_new
  $("#itinerary-change-exist-btn").click itinerary_change_exist
  # 
  # Нужную траницу определяем по её url - "tours/new"
  if(location.href.indexOf("tours/new") != -1)
    $("#itinerary-change-new-btn").add("#itinerary-change-exist-btn").remove()
    itinerary_change_new()

$(document).ready all_activities
$(document).on 'page:load', all_activities
