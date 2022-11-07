[loadjs  storage="live2d/lib/live2d.min.js"  ]
[loadjs  storage="live2d/framework/Live2DFramework.js"  ]
[loadjs  storage="live2d/framework/PlatformManager.js"  ]
[loadjs  storage="live2d/framework/LAppLive2DManager.js"  ]
[loadjs  storage="live2d/Live2Dmodel.js"  ]
[loadjs  storage="live2d/Live2Dtyrano.js"  ]
[iscript  ]
if(f.live2d_models == undefined){
f.live2d_models = {};
}
[endscript  ]
[macro  name="live2d_new"  ]
[iscript  ]
if(mp.name ==null)console.error('nameは必須です');
if(mp.left == null)mp.left = 0;
if(mp.top == null)mp.top = 0;
if(mp.width == null)mp.width = TYRANO.kag.config.scWidth;
if(mp.height == null)mp.height = TYRANO.kag.config.scWidth;
if(mp.zindex == null)mp.zindex = 12;
if(mp.opacity == null)mp.opacity = 0.0;
if(mp.can_visible == null)mp.can_visible = false;
if(mp.glleft == null)mp.glleft = 0.0;
if(mp.gltop == null)mp.gltop = 0.0;
if(mp.glscale == null)mp.glscale = 1.0;
parentID = 'tyrano_base';
TG.stat.is_strong_stop = true;
var complete_event = function(){
TG.stat.is_strong_stop = false;
TG.layer.showEventLayer();
TG.ftag.nextOrder();
};
live2d_new(
LIVE2D_MODEL[mp.name],
mp.name,
mp.left,
mp.top,
mp.width,
mp.height,
mp.zindex,
mp.opacity,
mp.can_visible,
Number(mp.glleft),
Number(mp.gltop),
Number(mp.glscale),
parentID,
complete_event);
[endscript  ]
[endmacro  ]
[macro  name="live2d_show"  ]
[iscript  ]
if(mp.name ==null)console.error('nameは必須です');
if(mp.time == null)mp.time = 1000;
if(mp.left == null)mp.left = 0;
if(mp.top == null)mp.top = 0;
if(mp.scale == null)mp.scale = 1;
TG.stat.is_strong_stop = true;
var complete_event = function(){
TG.stat.is_strong_stop = false;
TG.layer.showEventLayer();
TG.ftag.nextOrder();
};
live2d_show(mp.name, mp.time,mp.left,mp.top,mp.scale,complete_event);
[endscript  ]
[endmacro  ]
[macro  name="live2d_hide"  ]
[iscript  ]
if(mp.name ==null)console.error('nameは必須です');
if(mp.time == null)mp.time = 1000;
TG.stat.is_strong_stop = true;
var complete_event = function(){
TG.stat.is_strong_stop = false;
TG.layer.showEventLayer();
TG.ftag.nextOrder();
};
live2d_hide(mp.name, mp.time,complete_event);
[endscript  ]
[endmacro  ]
[macro  name="live2d_opacity"  ]
[iscript  ]
if(mp.name ==null)console.error('nameは必須です');
if(mp.opacity ==null)console.error('opacityは必須です');
if(mp.time == null)mp.time = 1000;
live2d_opacity(mp.name, mp.opacity, mp.time);
[endscript  ]
[endmacro  ]
[macro  name="live2d_color"  ]
[iscript  ]
if(mp.name ==null)console.error('nameは必須です');
if(mp.red == null)mp.red = 1.0;
if(mp.green == null)mp.green = 1.0;
if(mp.blue == null)mp.blue = 1.0;
live2d_color(mp.name, mp.red, mp.green, mp.blue);
[endscript  ]
[endmacro  ]
[macro  name="live2d_delete"  ]
[iscript  ]
if(mp.name ==null)console.error('nameは必須です');
parentID = 'tyrano_base';
live2d_delete(mp.name, parentID);
[endscript  ]
[endmacro  ]
[macro  name="live2d_motion"  ]
[iscript  ]
if(mp.name ==null)console.error('nameは必須です');
if(mp.filenm == null)mp.filenm = '';
if(mp.idle == null)mp.idle = '';
Live2Dcanvas[mp.name].motionChange(mp.name, mp.filenm, mp.idle);
[endscript  ]
[endmacro  ]
[macro  name="live2d_expression"  ]
[iscript  ]
if(mp.name ==null)console.error('nameは必須です');
if(mp.filenm == null)mp.filenm = '';
Live2Dcanvas[mp.name].expressionChange(mp.name, mp.filenm);
[endscript  ]
[endmacro  ]
[macro  name="live2d_trans"  ]
[iscript  ]
if(mp.name ==null)console.error('nameは必須です');
if(mp.left ==null)console.error('leftは必須です');
if(mp.top ==null)console.error('topは必須です');
if(mp.time == null)mp.time = 1000;
Live2Dcanvas[mp.name].transChange(mp.name,mp.left, mp.top, mp.time);
[endscript  ]
[endmacro  ]
[macro  name="live2d_rotate"  ]
[iscript  ]
if(mp.name ==null)console.error('nameは必須です');
if(mp.rotate ==null)console.error('rotateは必須です');
if(mp.time == null)mp.time = 1000;
Live2Dcanvas[mp.name].rotateChange(mp.name,mp.rotate, mp.time);
[endscript  ]
[endmacro  ]
[macro  name="live2d_scale"  ]
[iscript  ]
if(mp.name ==null)console.error('nameは必須です');
if(mp.scaleX ==null)console.error('scaleXは必須です');
if(mp.scaleY ==null)console.error('scaleYは必須です');
if(mp.time == null)mp.time = 1000;
Live2Dcanvas[mp.name].scaleChange(mp.scaleX, mp.scaleY, mp.time);
[endscript  ]
[endmacro  ]
[macro  name="live2d_shake"  ]
[iscript  ]
if(mp.name ==null)console.error('nameは必須です');
Live2Dcanvas[mp.name].vibration();
[endscript  ]
[endmacro  ]
[macro  name="live2d_restore"  ]
[iscript  ]
var live2d_models = TG.stat.f.live2d_models;
tf.i = 0;
tf.models = live2d_models;
tf.array_models = [];
var index=0;
for (var name in live2d_models){
live2d_models[name]["name"] = name;
tf.array_models[index] = live2d_models[name];
index++;
}
tf.cnt_model = tf.array_models.length;
[endscript  ]
*point
[iscript  ]
tf.model_name=tf.array_models[tf.i]["name"];
tf.model_left=tf.array_models[tf.i]["can_left"];
tf.model_top = tf.array_models[tf.i]["can_top"];
tf.model_glscale = tf.array_models[tf.i]["gl_scale"];
tf.model_scale = tf.array_models[tf.i]["scale"];
tf.model_visible = tf.array_models[tf.i]["can_visible"];
tf.model_width  = tf.array_models[tf.i]["can_width"];
tf.model_height = tf.array_models[tf.i]["can_height"];
//モーションはアイドル指定の場合のみ
if(tf.array_models[tf.i]["motion"]){
tf.model_motion = tf.array_models[tf.i]["motion"];
}else{
tf.model_motion = "";
}
//表情指定
if(tf.array_models[tf.i]["expression"]){
tf.model_expression = tf.array_models[tf.i]["expression"];
}else{
tf.model_expression = "";
}
if(tf.array_models[tf.i]["rotate"]){
tf.model_rotate = tf.array_models[tf.i]["rotate"];
}else{
tf.model_rotate = 0;
}
tf.i++;
[endscript  ]
[live2d_new  name="&tf.model_name"  width="&tf.model_width"  height="&tf.model_height"  glscale="&tf.model_glscale"  ]
[if  exp="tf.model_rotate!=0"  ]
[live2d_rotate  name="&tf.model_name"  rotate="&tf.model_rotate"  time="0"  ]
[endif  ]
[if  exp="tf.model_visible==true"  ]
[live2d_show  name="&tf.model_name"  left="&tf.model_left"  top="&tf.model_top"  scale="&tf.model_scale"  ]
[endif  ]
[if  exp="tf.model_motion!=''"  ]
[live2d_motion  name="&tf.model_name"  filenm="&tf.model_motion"  idle="ON"  ]
[endif  ]
[if  exp="tf.model_expression!=''"  ]
[live2d_expression  name="&tf.model_name"  filenm="&tf.model_expression"  ]
[endif  ]
[if  exp="tf.i<tf.cnt_model"  ]
[jump  target="point"  ]
[endif  ]
[endmacro  ]
