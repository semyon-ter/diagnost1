Sc =
  resize:()-> 

  scroll:()->    
    ###if Sc.Win.scrollTop() > 30
      $('#head').addClass('bgc-color')
    else  
      $('#head').removeClass('bgc-color')###

  initPerfectScrollBar:->
    r  = $('._roller')
    $.each r, -> 
      #$t = $(@)
      #if Sc.Win.width() < 767
      #  $t.stopPropagation()
      #else
      Scrollbar.use OverscrollPlugin        
      Scrollbar.initAll({
        alwaysShowTracks: true
        continuousScrolling: true
        damping: 0.05
        plugins:
          effect: 'bounce'
          damping: 0.03
          maxOverscroll: 30
          glowColor: '#222a2d'            
        })

  init:()->
    Sc.Win = $(window)
    #Sc.initPerfectScrollBar()

    #open popoup
    $('._open-popup').click ->
      t = $(@)
      lp = t.attr('data-link-to-popup')
      $('._popup-box').addClass('show')
      p = $('._popup-box').find('._popup-item[data-popup='+lp+']')
      p.addClass('show')
      $('html, body').addClass('ov-hidden')
    $('._popup-cls').click ->
      $('._popup-box, ._popup-item').removeClass('show')
      $('html, body').removeClass('ov-hidden')

    #open submenu
    $('._nav-angel-open-submenu').click ->
      t = $(@)
      p = t.closest('._nav-menu-parent')
      sub = p.find('._sub-nav-menu')
      if p.hasClass('open')
        sub.slideUp(300)
        p.removeClass('open')
      else
        sub.slideDown(300)
        p.addClass('open')

    #select
    $('._select:not(.inited)').addClass('inited').click ->
      a = $(@)
      a.toggleClass('open')
      $('*').click (e) ->
        div = a
        if !div.is(e.target) and div.has(e.target).length == 0
          div.removeClass('open')
      a.find('._option').click ->
        t = $(@).text()
        f = $(@).closest('._select').find('._i')
        if f.is('div')
          f.text(t)
        else if f.is('input')
          f.val(t)    

    Sc.initPerfectScrollBar()

    Sc.scroll();

    Sc.Win.scroll ()->
      Sc.scroll()
    Sc.scroll()

    #$("input[name=custom_phone]").mask("+7 (999) 999-99-99");

    Sc.Win.resize ->
      Sc.resize()
    Sc.resize()
  
$(window).ready ()->
  Sc.init();

$(window).scroll ()->
  Sc.scroll();