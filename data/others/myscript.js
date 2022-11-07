
// iscript の中ではthis、jsファイルではtyrano.pluginを指定する

//一時変数：this.kag.variable.tf["変数名"]
//ゲーム変数：this.kag.stat.f["変数名"]
//システム変数：this.kag.variable.sf["変数名"]


  var select = {
    hover: function(){
      $('.select_btn').hover(

        function () {
          $(this).animate({
            "margin-top": "2px"
          }, 100);
        },

        function () {
          $(this).animate({
           "margin-top": "0"
          }, 100);
        }

      );
    }
  }


  // ----------------------------------------------------------------------------------
  // スマホメッセージ演出

    var lineMessageNum, lineMessageY;

    var lineMessage = {
      reset: function(){
        lineMessageNum = 0;
        lineMessageY = $('.myMessage-posi').height();
      },

      set: function(id, type, name, serif, image){
        var append = '';

        append += '<li class="is-' + type + ' is-' + id + '">' +
                    '<div class="message-block">' +
                      '<p class="icon left"></p>' +
                      '<div class="text">' +
                        '<span id="message-name" class="name">'+ name +'</span>';

        if(image != 'none'){
          append +=      '<span id="message-serif" class="image"><img src="' + image + '"></span>';
        }
        else {
          append +=      '<span id="message-serif" class="serif">' + serif + '</span>';
        }

        append +=      '</div>' +
                      '<p class="icon right"></p>' +
                    '</div>' +
                  '</li>';

        $('#message-inner').append(append);
      },

      click: function(){
        setTimeout(function (){
          lineMessageNum ++;

          var y = $('#message-inner li:nth-child(' + lineMessageNum + ')').height();
          lineMessageY -= y;

          var test = $('#message-inner li:nth-child(' + lineMessageNum + ')');

          $('#message-area').animate({"top": lineMessageY}, 200);
       }, 30);
      }
    }


  // ----------------------------------------------------------------------------------

    var myobj = {

      // 選択肢
      selectInner: function(id, text){
        $('#mySelectInner').append('<li id="' + id + '"><p><span>' + text + '</span></p></li>');
      },

      selectShow: function(){
        $('.layer_free').css({"display":"block"});
        $('.mySelect').animate({"opacity":1}, 300, function(){
            setTimeout(function(){

              $('.mySelect li:nth-child(1)').animate({
                "opacity":1,
                "left":0
              }, 300);

              setTimeout(function(){
                $('.mySelect li:nth-child(2)').animate({
                  "opacity":1,
                  "left":0
                }, 300);
              }, 100);

            }, 50);
        });  
      },

      selectHide: function(){
        $('.mySelect').animate({"opacity":0}, 300, function(){
          $('.layer_free').css({"display":"none"});
        });  
      },

        // コンフィグの表示
        config: function(){
            if (tyrano.plugin.kag.tmp.sleep_game != null) {
                return false;
            }
            
            $('.layer.layer_menu').css({'display':'none'});

            tyrano.plugin.kag.ftag.startTag("sleepgame",{storage:"sys_config.ks",next:false});
        },


        // タイトルに戻る
        backTitle: function(){
            if (tyrano.plugin.kag.tmp.sleep_game != null) {
                return false;
            }
            
            $('.layer.layer_menu').css({'display':'none'});

            tyrano.plugin.kag.ftag.startTag("sleepgame",{storage:"title_screen.ks", target:"title_dialog",next:false});
        },


        // スライダー表示
        slider: function(name, x, y, minBtn){
            var width = $(window).width();

            eval("var value = tyrano.plugin.kag.variable.sf." + name + ";");

            var append = '<div style="position: absolute; left:' + x + 'px; top: ' + y + 'px;" class="mySlider ' + name + '"></div>';

            var bX = x + 440, bY = y;
            if(minBtn != false){
                append += '<p style="position: absolute; left:' + bX + 'px; top: ' + bY + 'px;" class="mySlider-minBtn_' + name + '">' +
                '<img src="data/image/config/' + minBtn + '">' +
                '</p>';
            }

            $('.layer_free').append(append);

            $('.mySlider.' + name).slider({
              min: 0,
              max: 100,
              value: value,
              range: 'min',

              change: function(event, ui){
                value = ui.value;
                eval("tyrano.plugin.kag.variable.sf." + name + " = ui.value;");
                tyrano.plugin.kag.ftag.startTag("jump", {storage:"sys_config.ks", target:"*slide_change"});
              },

              stop : function(event, ui){
                value = ui.value;
                eval("tyrano.plugin.kag.variable.sf." + name + " = value;");
                tyrano.plugin.kag.ftag.startTag("jump", {storage:"sys_config.ks", target:"*slide_set"});
              }
            });

            $('.mySlider-minBtn_' + name).click(function(){
                if(name == 'textSpeed' || name == 'autoSpeed') {
                    eval("tyrano.plugin.kag.variable.sf." + name + " = 100;");
                }
                else {
                    eval("tyrano.plugin.kag.variable.sf." + name + " = 0;");
                }
                tyrano.plugin.kag.ftag.startTag("jump", {storage:"sys_config.ks", target:"*slide_set"});                
            });
        },
    };



  // ----------------------------------------------------------------------------------


  // スクロールバー
  function myscrollbarSet(num, id, type){
    $(id).addClass(type);

    // ▼元のスクロールバーの処理
    var scrollbar_width = [];
    var scrollbar_height = [];
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
    var scrollAreaH = [], scrollAreaW = [],
        scrollTextH = [], scrollTextW = [],
        scrollbarH = [], scrollbarW = [];

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
    var scrollbar_track = [];
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