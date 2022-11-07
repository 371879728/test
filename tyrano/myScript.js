$(function(){

  // タップエフェクト
    $("body").click(function(e){
      eval("var on = tyrano.plugin.kag.variable.sf.tapEffect;");

      if(on){
          //パラメータ
          var box = {
              "width":"60",
              "height":"60"
          };
          //クリックした座標
          var x = e.pageX;
          var y = e.pageY;
          //装飾 クリック地点をセットしておく
          var style = {
              "position":"absolute",
              "top":y,
              "left":x,
              "z-index":99999999,
              "border":"3px #fff solid",
              //丸くする
              "border-radius":box.width/2
          };
          //適当な位置に追加
          $(this).append('<div id="circle"></div>');
          if(x != null){
              //見つけて、装飾して、動かして、消す
              $("#circle").css(style).animate({
                  "width":box.width,
                  "height":box.height,
                  "top":(y - box.height/2),
                  "left":(x - box.width/2),
              },{
                  "duration": 300,
                  "queue":false,
              }).fadeOut(300,function(){
                  $("#circle").remove();
              });
          }
      }
  });

  // ----------------------------------------------------------------------------------

  // システムボタン
  var windowVisi = true;

  // 解除
  $('.message_close_end').click(function(){
    if(windowVisi == false){
      messageShow();
    }
  });

  function messageShow(){
      windowVisi = true;
      $('.message_close_end').css({"display": "none"});
      $('.message_close_btn').css({"display": "block"});
      $('.layer.0_fore').css({"opacity": "1"});
      $('.layer.1_fore').css({"opacity": "1"});
      $('.layer.message0_fore').css({"opacity": "1"});
      $('.layer.message1_fore').css({"opacity": "1"});
      $('.layer.message2_fore').css({"opacity": "1"});
      $('.layer.message3_fore').css({"opacity": "1"});
      $('.button_menu').css({"display": "block"});
  }

  // ウィンドウまわり非表示
  $('.message_close_btn').click(function(){
    messageHide();
  });

  function messageHide(){
    windowVisi = false;
    $('.message_close_end').css({"display": "block"});
    $('.message_close_btn').css({"display": "none"});
    $('.layer.0_fore').css({"opacity": "0"});
    $('.layer.1_fore').css({"opacity": "0"});
    $('.layer.message0_fore').css({"opacity": "0"});
    $('.layer.message1_fore').css({"opacity": "0"});
    $('.layer.message2_fore').css({"opacity": "0"});
    $('.layer.message3_fore').css({"opacity": "0"});
    $('.button_menu').css({"display": "none"});
  }

  // ----------------------------------------------------------------------------------

  /* キーコンフィグ */

  // メニューを開く
  var menuView = false;
  $(window).on("click contextmenu", function (e) {
    if (e.which == 3) {
      rightClick();
      return false;
    }
  });
  function rightClick(){
    if($('.button_menu').css('display') != 'none' && windowVisi != false){
      menuView = true;
      $('.button_menu').click();
    }
    else {
      if(windowVisi != false){
        menuView = false;
        $('.menu_close').click();
      }
    }
  }

  // バックログ
  $(window).on('wheel', function(e) {
    var delta = e.originalEvent.deltaY ? -(e.originalEvent.deltaY) : e.originalEvent.wheelDelta ? e.originalEvent.wheelDelta : -(e.originalEvent.detail);
    if (delta > 0){
      backlogOpen();
    }
  });

  function backlogOpen(){
    if($('.button_menu').css('display') != 'none' && windowVisi != false){
      tyrano.plugin.kag.ftag.startTag("showlog",{});
    }
  }

  // キーボード
  $(window).keydown(function(e) {
    // Esc
    if (e.keyCode === 27){
      rightClick();
    }
  });

  
  // ----------------------------------------------------------------------------------

  var scrollbar_width, scrollbar_height = [],
      scrollAreaH = [], scrollAreaW = [],
      scrollTextH = [], scrollTextW = [],
      scrollbarH = [], scrollbarW = [],
      scrollbar_track = [],
      scrollbarMax = 0;

  function scrollberReset(num, id) {
    scrollAreaH[num] = $(id + ' .scroll-area').height();
    scrollTextH[num] = $(id + ' .scroll-text').outerHeight();
    scrollbarH[num] = parseInt(scrollAreaH[num] * scrollAreaH[num] / scrollTextH[num]);
    scrollAreaW[num] = $(id + ' .scroll-area').width(),
    scrollTextW[num] = $(id + ' .scroll-text').outerWidth(),
    scrollbarW[num] = parseInt(scrollAreaW[num] * scrollAreaW[num] / scrollTextW[num]);

    var screenWidth = $(window).width();
  }

  $(window).on('resize', function(){
    scrollberReset(1, '.testarea_A');
  });
  
  // スクロールバー
  function myscrollbarSet(num, id, type){
    $(id).addClass(type);

    // ▼元のスクロールバーの処理
    scrollbar_width[num] = window.innerWidth - document.body.scrollWidth;
    scrollbar_height[num] = window.innerHeight - document.body.scrollHeight;


    // 固定スクロールバーのとき（オーバーレイでない）
    if(type == 'side' && scrollbar_width > 0) {
        $(id + ' .scroll-area').addClass('is-scrollbar');
    }
    else if(type == 'foot' && scrollbar_height > 0) {
        $(id + ' .scroll-area').addClass('is-scrollbar');
    }

    // ▼変数

    scrollAreaH[num] = $(id + ' .scroll-area').height();
    scrollTextH[num] = $(id + ' .scroll-text').outerHeight();
    scrollbarH[num] = parseInt(scrollAreaH[num] * scrollAreaH[num] / scrollTextH[num]);
    scrollAreaW[num] = $(id + ' .scroll-area').width(),
    scrollTextW[num] = $(id + ' .scroll-text').outerWidth(),
    scrollbarW[num] = parseInt(scrollAreaW[num] * scrollAreaW[num] / scrollTextW[num]);

    // ▼つまみのサイズ
    if(type == 'side'){
      $(id + ' .scrollbar-knob').css('height', scrollbarH[num]);
    }
    else if(type == 'foot'){
      $(id + ' .scrollbar-knob').css('width', scrollbarW[num]);
    }

    // ▼スクロールバーの位置
    if(type == 'side'){
      scrollbar_track[num] = $(id + ' .scrollbar-bar').height() - $(id + ' .scrollbar-knob').height();

      $(id + ' .scroll-area').on('scroll', function() {
        scrollbar_track[num] = $(id + ' .scrollbar-bar').height() - $(id + ' .scrollbar-knob').height();
        var offset = $(this).scrollTop() * scrollbar_track[num] / (scrollTextH[num] - scrollAreaH[num]);
        
        $(id + ' .scrollbar-knob').css('transform', 'translateY(' + offset + 'px)');
      });
    }
    else if(type == 'foot'){
      scrollbar_track[num] = $(id + ' .scrollbar-bar').width() - $(id + ' .scrollbar-knob').width();

      $(id + ' .scroll-area').on('scroll', function() {
        scrollbar_track[num] = $(id + ' .scrollbar-bar').width() - $(id + ' .scrollbar-knob').width();
        var offset = $(this).scrollLeft() * scrollbar_track[num] / (scrollTextW[num] - scrollAreaW[num]);

        $(id + ' .scrollbar-knob').css('transform', 'translateX(' + offset + 'px)');
      });
    }


    // ▼つまみ動作
    var scrollActive = false, // つまみを操作しているかどうか
        knobClickY,
        knobClickX; // つまみ内のクリック位置

    // スクロールバークリック
    $(id + ' .scrollbar-knob').on('mousedown', function(event) {
      scrollActive = true;
      knobClickY = event.pageY - $(id + ' .scrollbar-knob').offset().top;
      knobClickX = event.pageX - $(id + ' .scrollbar-knob').offset().left;
    });

    $(id + ' .scrollbar-knob').on('touchstart', onTouchStart); //指が触れたか検知
    function onTouchStart(event) {
      scrollActive = true;
      knobClickY = event.changedTouches[0].pageY - $(id + ' .scrollbar-knob').offset().top;
      knobClickX = event.changedTouches[0].pageX - $(id + ' .scrollbar-knob').offset().left;

      $('body').css("overflow", "hidden");
    }
    
    // マウスがはなれた 
    $(document).on('mouseup', function() {
      scrollActive = false;
    });
    $(id + ' .scrollbar-knob').on('touchmove', onTouchMove); //指が動いたか検知
    function onTouchEnd(event) {
      scrollActive = false;
      $('body').removeAttr("style");
    }
    
    // マウスがうごいた
    function scrollbarMouseMove(num, pageX, pageY){
      if (!scrollActive) return;
      
      var scrollbar_knob_x = ((pageX - $(id + ' .scrollbar').offset().left) / scrollbar_track[num] * scrollbar_track[num]) - knobClickX;
      var scrollbar_knob_y = ((pageY - $(id + ' .scrollbar').offset().top) / scrollbar_track[num] * scrollbar_track[num]) - knobClickY;

      // つまみが上下の領域外を超えないようにする
      if(type == 'side'){
        if (scrollbar_knob_y < 0) {
          scrollbar_knob_y = 0;
        } else if (scrollbar_knob_y > scrollbar_track[num]) {
          scrollbar_knob_y = scrollbar_track[num];
        }

        // つまみの位置設定
        $(id + ' .scrollbar-knob').css('transform', 'translateY(' + scrollbar_knob_y + 'px)');

        // つまみの位置に応じてスクロールさせる
        $(id + ' .scroll-area').scrollTop(($(id + ' .scrollbar-knob').offset().top - $(id + ' .scrollbar').offset().top) / scrollbar_track[num] * (scrollTextH[num] - scrollAreaH[num]));
      }
      else if(type == 'foot'){
        if (scrollbar_knob_x < 0) {
          scrollbar_knob_x = 0;
        } else if (scrollbar_knob_x > scrollbar_track[num]) {
          scrollbar_knob_x = scrollbar_track[num];
        }

        // つまみの位置設定
        $(id + ' .scrollbar-knob').css('transform', 'translateX(' + scrollbar_knob_x + 'px)');

        // つまみの位置に応じてスクロールさせる
        $(id + ' .scroll-area').scrollLeft(($(id + ' .scrollbar-knob').offset().left - $(id + ' .scrollbar').offset().left) / scrollbar_track[num] * (scrollTextW[num] - scrollAreaW[num]));
      }
    }

    $(document).on('mousemove', function(event) {
      scrollbarMouseMove(num, event.pageX, event.pageY);
    });

    $(id + ' .scrollbar-knob').on('touchend', onTouchEnd); //指が離れたか検知
    function onTouchMove(event) {
      scrollbarMouseMove(num, event.changedTouches[0].pageX, event.changedTouches[0].pageY);
    }

    // つまみを操作中はテキスト選択できないようにする
    $(document).on('selectstart', function() {
      if (scrollActive) return false;
    });
  }

  // ----------------------------------------------------------------------------------

});