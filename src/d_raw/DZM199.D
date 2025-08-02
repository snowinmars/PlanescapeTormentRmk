// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM199.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM199~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34975 /* ~От этого оживленного трупа несет обугленным мясом и горелой одеждой. По правому боку тянутся довольно свежие следы от ожогов. Возможно, он был слишком близко к огню, и начал тлеть. На его лбу выгравирован номер «199»; его губы сшиты.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34976 /* ~«Итак... что тут у нас интересного?»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34979 /* ~«Итак... что тут у нас интересного?»~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34980 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34981 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 2
  IF ~~ THEN REPLY #34984 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #34985 /* ~Оставить зомби в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34977 /* ~Труп продолжает пялиться на тебя.~ */
  IF ~~ THEN REPLY #34978 /* ~Оставить зомби в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34982 /* ~Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
  IF ~~ THEN REPLY #34983 /* ~Оставить зомби в покое.~ */ EXIT
END
