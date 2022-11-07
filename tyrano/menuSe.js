/*  メニューSE追加プラグイン ver1.02  */

var menu_se = TYRANO.kag.tmp.menu_se;
var click_on;


var seSelect = 'select' + TYRANO.kag.variable.sf.media,
    seClick = 'click' + TYRANO.kag.variable.sf.media;


$(".is-play-se").on({
  "touchstart mousedown": function(e) {
    click_on ++;
    if(seClick!="none") TYRANO.kag.ftag.startTag("playse",{storage:seClick, "buf":"3" ,stop:"true"});
  },
  "mouseenter": function() {
    click_on = 0;
    if(seSelect!="none") TYRANO.kag.ftag.startTag("playse",{storage:seSelect,"buf":"4" ,stop:"true"});
  }
});
