// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ79.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ79~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34942 /* ~Голова трупа была отрублена, а после наспех пришита назад. Несколько различных швов, все в разной степени потрепанности, указывают на то, голова в процессе работы постоянно отваливалась и возвращалась на место. На виске вырезан номер «79», рядом с неровным зубчатым кругом, выжженным на лбу.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34943 /* ~«Итак... что тут у нас интересного?»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34946 /* ~Осмотреть зубчатый круг.~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34947 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34948 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 2
  IF ~~ THEN REPLY #34951 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #34952 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34944 /* ~Труп продолжает пялиться на тебя.~ */
  IF ~~ THEN REPLY #34945 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34949 /* ~Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
  IF ~~ THEN REPLY #34950 /* ~Оставить труп в покое.~ */ EXIT
END
