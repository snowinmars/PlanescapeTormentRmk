// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM965.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM965~

IF ~  NearbyDialog("Dmorte")
~ THEN BEGIN 0 // from:
  SAY #34920 /* ~Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу. На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 477
END

IF ~  !NearbyDialog("Dmorte")
~ THEN BEGIN 1 // from:
  SAY #34922 /* ~Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу. На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34923 /* ~«Итак... почему ты ходишь вдоль треугольника?»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45070 /* ~«Итак... почему ты ходишь вдоль треугольника?»~ */ GOTO 2
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45071 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 2
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45072 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 3
  IF ~~ THEN REPLY #45073 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #45074 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #34927 /* ~Труп уставился на тебя невидящим взглядом.~ */
  IF ~~ THEN REPLY #34928 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #45069 /* ~Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
  IF ~~ THEN REPLY #45075 /* ~Оставить труп в покое.~ */ EXIT
END
