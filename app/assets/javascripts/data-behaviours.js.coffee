$(document).ready -> 
  $('[data-behaviour="datetimepicker"]').datetimepicker()

  close = (el) ->
    el.css "z-index", "0"
    el.css "position", "relative"
    el.attr "expanded", false
    el.animate
      right: "0%"
      width: "100%"
    , "medium"

  expand = (el) ->
    close($("[data-expandable='true']"))
    el.css "cursor", "pointer"
    el.css "z-index", "1000"
    el.css "position", "relative"
    el.css  "margin-left", "auto"
    el.css   "margin-right", "auto"
    el.attr "expanded", true
    el.animate
      right: el.data("offset")
      width: "300%"
      height: "300%"
    , "medium"

  $("[data-expandable='true']").click ->
    if $(this).attr("expanded") == "true"
      close($(this))
    else 
      expand($(this))


