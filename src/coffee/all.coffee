Sc =
  resize:()-> 

  scroll:()->    

  initPerfectScrollBar:->
    r  = $('._roller')
    $.each r, ->       
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
    
    #open popoup
    $('._open-popup').click ->
      t = $(@)
      lp = t.attr('data-link-to-popup')
      $('._popup-box').addClass('show')
      p = $('._popup-box').find('._popup-item[data-popup='+lp+']')
      p.addClass('show')
      $('html, body').addClass('ov-hidden')
    #close popoup  
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

    #faq
    $('._faq-head:not(.inited)').addClass('inited').click ->
      h = $(@)
      i = h.closest('._faq-item')
      b = i.find('._faq-body')
      l = h.closest('._faq-list')
      if i.hasClass('selected')
        i.removeClass('selected')
        b.slideUp('300')
      else
        i.addClass('selected')
        b.slideDown('300')
      l.find('._faq-item').not(i).removeClass('selected')
      l.find('._faq-body').not(b).slideUp('300')
      setTimeout (->
        # Ваш скрипт
        elC = h.attr('data-href')
        hh = $('.fake-head').outerHeight()
        dest = $(elC).offset().top - hh - 10
        $('body,html').animate { scrollTop: dest }, 300
        return
      ), 500

    #cookies
    $('._cookie__close').click ->
      t = $(@)
      p = t.closest('._cookie')
      p.removeClass('active')  

    #counter
    ###count = $('._count')  
    $.each count, ->
      t = $(@)
      $countV = t.val()-0
      console.log $countV
      if $countV = '1'
        $('._minus').addClass('disable')
      else
        $('._minus').removeClass('disable')###
    $('._counter ._plus:not(.inited)').addClass('inited').click ->
      p = $(@).closest('._counter')
      s = p.find('._count')
      sv = s.val()
      i = p.find('._val')
      n = sv
      n++
      i.val(n)
      s.val(n)
      bM = p.find('._minus')
      bM.removeClass('disable')
    $('._counter ._minus:not(.inited)').addClass('inited').click ->
      p = $(@).closest('._counter')
      s = p.find('._count')
      sv = s.val()
      i = p.find('._val')
      n = sv      
      if n > 1
        n--
        i.val(n)
        s.val(n)
        if n == 1
          $(@).addClass('disable')        
      else
        $(@).addClass('disable')              

    Sc.initPerfectScrollBar()

    Sc.scroll();

    Sc.Win.scroll ()->
      Sc.scroll()
    Sc.scroll()

    $("input[name=custom_phone]").mask("+7 999 999 99 99");

    Sc.Win.resize ->
      Sc.resize()
    Sc.resize()
  
$(window).ready ()->
  Sc.init();

$(window).scroll ()->
  Sc.scroll();