# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/




$(document).ready ->

  # ===================================================== init fancybox
  $(".fancybox").fancybox()

  $.fancybox ->
    "frameWidth" : 1100,
    'width': 1100,
    'autoDimensions': false,
    'autoSize': false


  $('ul#banner').bxSlider
    mode: 'fade'
#    auto: true
    pause: 6000
#    onSliderLoad: ->
#      $('.banner_header_title_inner').addClass('animated fadeInUp')
#      return
#  $('button#feed_back_button').click ->
#    alert('test')
#  $("#clock").countdown ->
#    startTime: "01:12:32:55"
#    $("#clock").countdown("2020/10/10").on "update.countdown", (event) ->
#      $this = $(this).html(event.strftime("" + "<span>%-w</span> week%!w " + "<span>%-d</span> day%!d " + "<span>%H</span> hr " + "<span>%M</span> min " + "<span>%S</span> sec"))
#
  owl = $("#carousel_product")
  owl.owlCarousel
    pagination: false,
#    navigationText: [
#      '<%= ApplicationHelper.embedded_svg "Main-arrow.svg", class: "owl_arrow_prev"%>',
#      '<%= ApplicationHelper.embedded_svg "Main-arrow.svg", class: "owl_arrow_next"%>'
#    ],
#    navigation: true,
    items: 4 #10 items above 1000px browser width
    itemsDesktop: [ #5 items between 1000px and 901px
      1000
      5
    ]
    itemsDesktopSmall: [ # betweem 900px and 601px
      900
      3
    ]
    itemsTablet: [ #2 items between 600 and 0
      640
      1
    ]
    itemsMobile: false # itemsMobile disabled - inherit from itemsTablet option
    autoPlay : false
    $("#cp_next").click ->
      owl.trigger "owl.next"


    $("#cp_prev").click ->
      owl.trigger "owl.prev"

  $('#mobile_button').click ->
    $('ul#mobile_menu').toggleClass('show_mm')
