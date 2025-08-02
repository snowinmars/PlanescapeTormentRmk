// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ782.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ782~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24708 /* ~Как только ты подходишь, труп останавливается и смотрит на тебя невидящим взглядом. На его лбу вырезан номер «782», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #24709 /* ~«Я ищу ключ... быть может, он у тебя?»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #24712 /* ~«Я ищу ключ... быть может, он у тебя?»~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24713 /* ~Осмотреть труп, проверить, есть ли у него ключ.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24714 /* ~«Было приятно с тобой поболтать. Прощай».~ */ GOTO 2
  IF ~~ THEN REPLY #24717 /* ~Оставить труп в покое.~ */ EXIT
  IF ~~ THEN REPLY #24718 /* ~«Я хотел поговорить с тобой о торговце Заке».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #24710 /* ~Труп не отвечает.~ */
  IF ~~ THEN REPLY #24711 /* ~«Тогда неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #24715 /* ~Кажется, у этого трупа есть какой-то ключ. Он крепко держит его в левой руке, сжимая его большим и указательным пальцем мертвой хваткой. Чтобы взять ключ, тебе придется сломать руку.~ */
  IF ~~ THEN REPLY #24716 /* ~«Мне нужен этот ключ, труп... похоже, тебе уже недолго осталось прозябать в этом мире».~ */ EXIT
END
