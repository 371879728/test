[_tb_system_call  storage="system/_sys_config.ks"  ]
*start
[tb_start_tyrano_code  ]
[wait_cancel]

[hidemenubutton]
[hidesystembutton]
[cm]

[freeLayer]
[charaFreeLayer start="0" end="&sf.layerMax - 1"]
[layopt layer="0" left="0" top="0" visible="true"]

[posi layer="message0" name="config_area" left="0" top="0" visible="true"]
[current layer="message0"][er]

[image layer="base" storage="../bgimage/sys_back.jpg"]
[image layer="0" storage="../image/config/ttl_label.png" left="0" top="0" visible="true"]
[image layer="0" storage="../image/config/ttl_config.png" left="15" top="12" visible="true"]

[button enterse="select.ogg" clickse="click.ogg" graphic="../image/btn_back.png" name="allHide" y="480" target="*return" name="menu_close"]

[button enterse="select.ogg" clickse="click.ogg" graphic="../image/config/btn_reset.png" name="allHide" x="420" y="487" target="*reset"]


[slider name="volBgm" x="39" y="205" now="&sf.volBgm"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/config/btn_mute.png" x="385" y="170" target="*volBgm_change" exp="tf.click = 0"]

[slider name="volSe" x="39" y="314" now="&sf.volSe"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/config/btn_mute.png" x="385" y="282" target="*volSe_change" exp="tf.click = 0"]

[eval exp="tf.name = sf.myozi + '　' + sf.name"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/config/btn_name.png" x="276" y="395" target="*nameChange"]
[ptext layer="0" text="&tf.name" size="16" x="&(276 + 25)" y="&(395 + 7)" color="0xffffff"]


[speedChangeBtn num="1" set="&sf.textSpeed" speed="60" x="700" y="159" target="*textSpeed_change"]
[speedChangeBtn num="2" set="&sf.textSpeed" speed="70" x="&(700 + 55)" y="159" target="*textSpeed_change"]
[speedChangeBtn num="3" set="&sf.textSpeed" speed="80" x="&(700 + 55 * 2)" y="159" target="*textSpeed_change"]
[speedChangeBtn num="4" set="&sf.textSpeed" speed="90" x="&(700 + 55 * 3)" y="159" target="*textSpeed_change"]
[speedChangeBtn num="5" set="&sf.textSpeed" speed="100" x="&(700 + 55 * 4)" y="159" target="*textSpeed_change"]

[speedChangeBtn num="1" set="&sf.autoSpeed" speed="8000" x="700" y="212" target="*autoSpeed_change"]
[speedChangeBtn num="2" set="&sf.autoSpeed" speed="600" x="&(700 + 55)" y="212" target="*autoSpeed_change"]
[speedChangeBtn num="3" set="&sf.autoSpeed" speed="400" x="&(700 + 55 * 2)" y="212" target="*autoSpeed_change"]
[speedChangeBtn num="4" set="&sf.autoSpeed" speed="100" x="&(700 + 55 * 3)" y="212" target="*autoSpeed_change"]
[speedChangeBtn num="5" set="&sf.autoSpeed" speed="10" x="&(700 + 55 * 4)" y="212" target="*autoSpeed_change"]

[onoffBtn if="&sf.textOnce" x="785" y="286" on="*textOnce_on" off="*textOnce_off"]

[onoffBtn if="&sf.unreadSkip" x="785" y="345" on="*unreadSkip_on" off="*unreadSkip_off"]

[onoffBtn if="&sf.textColorUn != '0x000000'" x="785" y="399" on="*textColorChange_on" off="*textColorChange_off"]


[layopt layer="message1" visible="false"]


[s]

[_tb_end_tyrano_code  ]
*volBgm_change
[tb_start_tyrano_code  ]
[eval exp="sf.volBgm = tf.click"]
[bgmopt volume="&sf.volBgm"]
[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*volSe_change
[tb_start_tyrano_code  ]
[eval exp="sf.volSe = tf.click"]
[seopt volume="&sf.volSe"]
[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*nameChange
[tb_start_tyrano_code  ]
[eval exp="tf.myozi = sf.myozi"]
[eval exp="tf.name = sf.name"]

*nameChange_back
[cm]
[freeimage layer="0"]

[layopt layer="0" page="fore" visible="true"]
[image layer="0" storage="../image/config/ttl_config.png" left="15" top="12" visible="true"]

[ptext layer="0" text="※最大文字数は４文字です" size="18" x="410" y="120" color="0xffffff"]

[image layer="0" storage="../image/config/name_change_myozi.png" left="335" top="175" visible="true"]
[edit name="sf.myozi" initial="&tf.myozi" color="0xffffff" left="420" top="185" width="250" size="22" maxchars="4"]

[image layer="0" storage="../image/config/name_change_name.png" left="335" top="265" visible="true"]
[edit name="sf.name" initial="&tf.name" color="0xffffff" left="420" top="275" width="250" size="22" maxchars="4"]

[button enterse="select.ogg" clickse="click.ogg" graphic="../image/config/btn_name_reset.png" x="300" y="375"  target="*nameReset"]
[button enterse="select.ogg" clickse="click.ogg" graphic="../image/config/btn_name_cmt.png" x="520" y="375"  target="*nameCommit"]

[button enterse="select.ogg" clickse="click.ogg" graphic="../image/config/btn_close.png" x="430" y="485"  target="*start"]

[s]

*nameReset
[eval exp="tf.myozi = '浅利'"]
[eval exp="tf.name = 'ほのか'"]
[jump target="*nameChange_back"]
[s]
[_tb_end_tyrano_code  ]
*nameCommit
[tb_start_tyrano_code  ]
[commit name="sf.myozi"]
[commit name="sf.name"]
[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*textSpeed_change
[tb_start_tyrano_code  ]
[eval exp="sf.textSpeed = tf.speed"]
[eval exp="tf.speed = 100 - sf.textSpeed"]
[eval cond="tf.speed == 0" exp="tf.speed = '0'"]
[configdelay speed="&tf.speed"]
[resetdelay]

[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*autoSpeed_change
[tb_start_tyrano_code  ]
[eval exp="sf.autoSpeed = tf.speed"]
[autoconfig speed="&tf.speed"]

[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*textOnce_on
[tb_start_tyrano_code  ]
[eval exp="sf.textOnce = true"]
[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*textOnce_off
[tb_start_tyrano_code  ]
[eval exp="sf.textOnce = false"]
[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*unreadSkip_on
[tb_start_tyrano_code  ]
[eval exp="sf.unreadSkip=true"]
[config_record_label skip="true"]
[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*unreadSkip_off
[tb_start_tyrano_code  ]
[eval exp="sf.unreadSkip=false"]
[config_record_label skip="false"]
[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*selectSkipKeep_on
[tb_start_tyrano_code  ]
[eval exp="sf.selectSkipKeep = true"]
[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*selectSkipKeep_off
[tb_start_tyrano_code  ]
[eval exp="sf.selectSkipKeep = false"]
[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*selectAutoKeep_on
[tb_start_tyrano_code  ]
[eval exp="sf.selectAutoKeep = true"]
[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*selectAutoKeep_off
[tb_start_tyrano_code  ]
[eval exp="sf.selectAutoKeep = false"]
[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*textColorChange_on
[tb_start_tyrano_code  ]
[eval exp="sf.textColorUn = '0xff2970'"]
[config_record_label color="&sf.textColorUn"]
[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*textColorChange_off
[tb_start_tyrano_code  ]
[eval exp="sf.textColorUn = '0x000000'"]
[config_record_label color="&sf.textColorUn"]
[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*reset
[tb_start_tyrano_code  ]
[backlay]
[dialog type="confirm" text="設定をリセットしますか？" target="reset_ok"]

[jump target="*start"]
[s]

*reset_ok
[iscript]
sf.myozi = '浅利';
sf.name = 'ほのか';
sf.volBgm=100;
sf.volSe=100;
sf.textSpeed=80;
sf.autoSpeed=400;
sf.tapEffect = true;
sf.gamemode = 'full';
sf.textOnce = false;
sf.unreadSkip = false;
sf.selectSkipKeep = false;
sf.selectAutoKeep = false;
sf.textColorUn = '0x000000';
sf.textColorUn_text = 'カラーなし';
[endscript]

[bgmopt volume="&sf.volBgm"]
[seopt volume="&sf.volSe"]

[eval exp="tf.speed = 100 - sf.textSpeed"]
[configdelay speed="&tf.speed"]

[eval exp="tf.speed = (100 - sf.autoSpeed) * 20"]
[autoconfig speed="&tf.speed"]

[jump target="*start"]
[s]
[_tb_end_tyrano_code  ]
*return
[tb_start_tyrano_code  ]

[if exp="f.title_now"]
[eval exp="f.title_now = false"]
[else]
[showsystembutton]
[endif]

[cm]
[awakegame]
[s]
[_tb_end_tyrano_code  ]
