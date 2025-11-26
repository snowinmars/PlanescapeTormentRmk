// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMBIEW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMBIEW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #280 /* ~[Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер, а его губы крепко зашиты. От тела исходит легкий запах формальдегида.]~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #282 /* ~«Итак... что тут у нас интересного?»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #281 /* ~«Итак... что тут у нас интересного?»~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #1160 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1345 /* ~Использовать на скелете свою способность «История костей».~ */ GOTO 2
  IF ~~ THEN REPLY #1346 /* ~«Было приятно поболтать с тобой. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #1347 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #284 /* ~Труп продолжает пялиться на тебя.~ */
  IF ~~ THEN REPLY #285 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.3
  SAY #1159 /* ~Труп не отвечает. Кажется, он далек от того, чтобы отвечать на твои вопросы.~ */
  IF ~~ THEN REPLY #1161 /* ~Оставить труп в покое.~ */ EXIT
END
