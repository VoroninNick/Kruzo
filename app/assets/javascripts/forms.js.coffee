$(document).ready ->

  $('form#order_question_form button').click (e)->
    e.preventDefault()

    name = $('form#order_question_form .name').val()
    phone =  $('form#order_question_form .phone').val()
    email =  $('form#order_question_form .email').val()

    valuesToSubmit = {data:{name:name, phone:phone, email:email}}

    $.ajax
      url: '/order_question'
      type: "POST"
      data: valuesToSubmit
      beforeSend: ->
        alert("sending...")
        #        $('.status').removeClass('dn')
        #        $(".status_inner").html "<img src=\"/assets/loader.gif\">"
        return
      success: (data) ->
        alert("message send!")
        #        $('form#order_game_form').css({'visibility':'hidden'})
        #        $(".status_inner").html "Дякуюємо! Ми отримали ваші дані, найближчим часом з вами звяжеться наш менеджер."
        return
      complete: ->
        alert("TY")
        $("form#order_question_form").each ->
          @reset() #Here form fields will be cleared.
          return
        #        $('.status').addClass('dn')

        return


  $('form#online_form_index_page button').click (e)->
    e.preventDefault()

    name = $('form#online_form_index_page .name').val()
    phone =  $('form#online_form_index_page .phone').val()
    email =  $('form#online_form_index_page .email').val()

    valuesToSubmit = {data:{name:name, phone:phone, email:email}}

    $.ajax
      url: '/order_online'
      type: "POST"
      data: valuesToSubmit
      beforeSend: ->
        alert("sending...")
        #        $('.status').removeClass('dn')
        #        $(".status_inner").html "<img src=\"/assets/loader.gif\">"
        return
      success: (data) ->
        alert("message send!")
        #        $('form#order_game_form').css({'visibility':'hidden'})
        #        $(".status_inner").html "Дякуюємо! Ми отримали ваші дані, найближчим часом з вами звяжеться наш менеджер."
        return
      complete: ->
        alert("TY")
        $("form#online_form_index_page").each ->
          @reset() #Here form fields will be cleared.
          return
        #        $('.status').addClass('dn')

        return


  $('form#online_order button').click (e)->
    e.preventDefault()

    name = $('form#online_order .name').val()
    phone =  $('form#online_order .phone').val()
    email =  $('form#online_order .email').val()

    valuesToSubmit = {data:{name:name, phone:phone, email:email}}

    $.ajax
      url: '/order_online'
      type: "POST"
      data: valuesToSubmit
      beforeSend: ->
        alert("sending...")
        #        $('.status').removeClass('dn')
        #        $(".status_inner").html "<img src=\"/assets/loader.gif\">"
        return
      success: (data) ->
        alert("message send!")
        #        $('form#order_game_form').css({'visibility':'hidden'})
        #        $(".status_inner").html "Дякуюємо! Ми отримали ваші дані, найближчим часом з вами звяжеться наш менеджер."
        return
      complete: ->
        alert("TY")
        $("form#online_order").each ->
          @reset() #Here form fields will be cleared.
          return
        #        $('.status').addClass('dn')

        return


  $('form#order_product_form button').click (e)->
    e.preventDefault()

    name = $('form#order_product_form .name').val()
    phone =  $('form#order_product_form .phone').val()

    valuesToSubmit = {data:{name:name, phone:phone}}

    $.ajax
      url: '/order_product'
      type: "POST"
      data: valuesToSubmit
      beforeSend: ->
        alert("sending...")
        #        $('.status').removeClass('dn')
        #        $(".status_inner").html "<img src=\"/assets/loader.gif\">"
        return
      success: (data) ->
        alert("message send!")
        #        $('form#order_game_form').css({'visibility':'hidden'})
        #        $(".status_inner").html "Дякуюємо! Ми отримали ваші дані, найближчим часом з вами звяжеться наш менеджер."
        return
      complete: ->
        alert("TY")
        $("form#order_product_form").each ->
          @reset() #Here form fields will be cleared.
          return
        #        $('.status').addClass('dn')

        return

  $('form#order_vip_card_form button').click (e)->
    e.preventDefault()

    name = $('form#order_vip_card_form .name').val()
    phone =  $('form#order_vip_card_form .phone').val()
    email =  $('form#order_vip_card_form .email').val()

    valuesToSubmit = {data:{name:name, phone:phone, email:email}}

    $.ajax
      url: '/order_card'
      type: "POST"
      data: valuesToSubmit
      beforeSend: ->
        alert("sending...")
        #        $('.status').removeClass('dn')
        #        $(".status_inner").html "<img src=\"/assets/loader.gif\">"
        return
      success: (data) ->
        alert("message send!")
        #        $('form#order_game_form').css({'visibility':'hidden'})
        #        $(".status_inner").html "Дякуюємо! Ми отримали ваші дані, найближчим часом з вами звяжеться наш менеджер."
        return
      complete: ->
        alert("TY")
        $("form#order_vip_card_form").each ->
          @reset() #Here form fields will be cleared.
          return
        #        $('.status').addClass('dn')

        return


  $('form#call_order_form button').click (e)->
    e.preventDefault()

    name = $('form#call_order_form .name').val()
    phone =  $('form#call_order_form .phone').val()

    valuesToSubmit = {data:{name:name, phone:phone}}

    $.ajax
      url: '/call_order'
      type: "POST"
      data: valuesToSubmit
      beforeSend: ->
        alert("sending...")
        #        $('.status').removeClass('dn')
        #        $(".status_inner").html "<img src=\"/assets/loader.gif\">"
        return
      success: (data) ->
        alert("message send!")
        #        $('form#order_game_form').css({'visibility':'hidden'})
        #        $(".status_inner").html "Дякуюємо! Ми отримали ваші дані, найближчим часом з вами звяжеться наш менеджер."
        return
      complete: ->
        alert("TY")
        $("form#call_order_form").each ->
          @reset() #Here form fields will be cleared.
          return
        #        $('.status').addClass('dn')

        return