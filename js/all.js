var Sc;

Sc = {
  resize: function() {},
  scroll: function() {},
  initPerfectScrollBar: function() {
    var r;
    r = $('._roller');
    return $.each(r, function() {
      Scrollbar.use(OverscrollPlugin);
      return Scrollbar.initAll({
        alwaysShowTracks: true,
        continuousScrolling: true,
        damping: 0.05,
        thumbMinSize: 32,
        plugins: {
          effect: 'bounce',
          damping: 0.03,
          maxOverscroll: 30,
          glowColor: '#222a2d'
        }
      });
    });
  },
  init: function() {
    Sc.Win = $(window);
    
    //open popoup
    $('._open-popup').click(function() {
      var lp, p, t;
      t = $(this);
      lp = t.attr('data-link-to-popup');
      //$('._popup-box').addClass('show')
      p = $('._popup-box').find('._popup-item[data-popup=' + lp + ']');
      p.closest('._popup-box').addClass('show');
      p.addClass('show');
      $('._popup-item').not(p).removeClass('show');
      return $('html, body').addClass('ov-hidden');
    });
    //close popoup  
    $('._popup-cls').click(function() {
      $('._popup-box, ._popup-item').removeClass('show');
      return $('html, body').removeClass('ov-hidden');
    });
    //open submenu
    $('._nav-angel-open-submenu').click(function() {
      var p, sub, t;
      t = $(this);
      p = t.closest('._nav-menu-parent');
      sub = p.find('._sub-nav-menu');
      if (p.hasClass('open')) {
        sub.slideUp(300);
        return p.removeClass('open');
      } else {
        sub.slideDown(300);
        return p.addClass('open');
      }
    });
    //select
    $('._select:not(.inited)').addClass('inited').click(function() {
      var a;
      a = $(this);
      a.toggleClass('open');
      $('*').click(function(e) {
        var div;
        div = a;
        if (!div.is(e.target) && div.has(e.target).length === 0) {
          return div.removeClass('open');
        }
      });
      return a.find('._option').click(function() {
        var f, t;
        t = $(this).text();
        f = $(this).closest('._select').find('._i');
        if (f.is('div')) {
          return f.text(t);
        } else if (f.is('input')) {
          return f.val(t);
        }
      });
    });
    //faq
    $('._faq-head:not(.inited)').addClass('inited').click(function() {
      var b, h, i, l;
      h = $(this);
      i = h.closest('._faq-item');
      b = i.find('._faq-body');
      l = h.closest('._faq-list');
      if (i.hasClass('selected')) {
        i.removeClass('selected');
        b.slideUp('300');
      } else {
        i.addClass('selected');
        b.slideDown('300');
      }
      l.find('._faq-item').not(i).removeClass('selected');
      l.find('._faq-body').not(b).slideUp('300');
      return setTimeout((function() {
        var dest, elC, hh;
        // Ваш скрипт
        elC = h.attr('data-href');
        hh = $('.fake-head').outerHeight();
        dest = $(elC).offset().top - hh - 10;
        $('body,html').animate({
          scrollTop: dest
        }, 300);
      }), 500);
    });
    //cookies
    $('._cookie__close').click(function() {
      var p, t;
      t = $(this);
      p = t.closest('._cookie');
      return p.removeClass('active');
    });
    
    //counter
    /*count = $('._count')  
    $.each count, ->
      t = $(@)
      $countV = t.val()-0
      console.log $countV
      if $countV = '1'
        $('._minus').addClass('disable')
      else
        $('._minus').removeClass('disable')*/
    $('._counter ._plus:not(.inited)').addClass('inited').click(function() {
      var bM, i, n, p, s, sv;
      p = $(this).closest('._counter');
      s = p.find('._count');
      sv = s.val();
      i = p.find('._val');
      n = sv;
      n++;
      i.val(n);
      s.val(n);
      bM = p.find('._minus');
      return bM.removeClass('disable');
    });
    $('._counter ._minus:not(.inited)').addClass('inited').click(function() {
      var i, n, p, s, sv;
      p = $(this).closest('._counter');
      s = p.find('._count');
      sv = s.val();
      i = p.find('._val');
      n = sv;
      if (n > 1) {
        n--;
        i.val(n);
        s.val(n);
        if (n === 1) {
          return $(this).addClass('disable');
        }
      } else {
        return $(this).addClass('disable');
      }
    });
    //edit input
    $('._edit-bt').click(function() {
      var o, p, s, t;
      t = $(this);
      p = t.closest('._edit-parent');
      o = p.find('._edit-obj');
      s = p.find('._edit-save');
      o.removeClass('disabled');
      t.addClass('none');
      s.removeClass('none');
      return s.click(function() {
        o.addClass('disabled');
        t.removeClass('none');
        return s.addClass('none');
      });
    });
    Sc.initPerfectScrollBar();
    Sc.scroll();
    Sc.Win.scroll(function() {
      return Sc.scroll();
    });
    Sc.scroll();
    $("input[name=custom_phone]").mask("+7 999 999 99 99");
    Sc.Win.resize(function() {
      return Sc.resize();
    });
    return Sc.resize();
  }
};

$(window).ready(function() {
  return Sc.init();
});

$(window).scroll(function() {
  return Sc.scroll();
});
