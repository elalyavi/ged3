city_change_new = ->
  if($("#excursion_city_id").length > 0)
    alert("Сначала выберите форму редактирования.\nКнопка (Выбрать существующую/редактировать)")
  else
    elem = $("#city-change")
    data = elem.attr("data-content-new")
    elem.attr("data-content-new", elem.html())
    elem.html(data)
    window.datepicker_activation_by_item(elem)
  false


city_change_exist = ->
  elem1 = $("#excursion_city_attributes_id")
  elem2 = $("#excursion_city_id")
  if(elem1.length == 0 && elem2.length == 0)
    alert("Сначала выберите форму редактирования.\nКнопка (Cоздать/редактировать)")
  else
    elem = $("#city-change")
    data = elem.attr("data-content-exist")
    elem.attr("data-content-exist", elem.html())
    elem.html(data)
    window.datepicker_activation_by_item(elem)
  false

all_activities = ->
  $("#city-change-new-btn").click city_change_new
  $("#city-change-exist-btn").click city_change_exist
  # 
  # Нужную траницу определяем по её url - "excursions/new"
  if(location.href.indexOf("excursions/new") != -1)
    $("#city-change-new-btn").add("#city-change-exist-btn").remove()
    city_change_new()

$(document).ready all_activities
$(document).on 'page:load', all_activities
