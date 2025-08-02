// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF594.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF594~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35018 /* ~Неуклюжий труп женщины уставился на тебя пустым взглядом. Ее кожа похожа на бумагу, совсем тонкая... как будто кто-то обернул ее тело в простыню из легкой ткани. На ее лбу угольным карандашом нацарапан номер «594». ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35019 /* ~«Итак... чем занимаешься вечером?»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35036 /* ~«Итак... чем занимаешься вечером?»~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35037 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35038 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35043 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXTERN ~DMORTE~ 334
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35044 /* ~Оставить труп в покое.~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35045 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35046 /* ~Оставить труп в покое.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35047 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35048 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35020 /* ~Труп продолжает пялиться на тебя.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35021 /* ~«Тогда прощай». ~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35034 /* ~«Тогда прощай». ~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35035 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35039 /* ~Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35040 /* ~«Тогда прощай». ~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35041 /* ~«Тогда прощай». ~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35042 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35049 /* ~Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
END
