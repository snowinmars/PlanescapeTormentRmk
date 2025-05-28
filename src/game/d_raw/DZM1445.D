// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1445.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1445~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46756 /* ~Тело этого трупа сплошь покрыто пятнами, его уши, кончик носа и некоторые пальцы сгнили напрочь... скорее всего, мужчина стал жертвой какой-то ужасной болезни. На лбу у него вытатуирован номер «1445», а его губы крепко сшиты.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #46757 /* ~«Итак... что тут у нас интересного?»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #46760 /* ~«Итак... что тут у нас интересного?»~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #46761 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46762 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 2
  IF ~~ THEN REPLY #46765 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #46766 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #46758 /* ~Труп продолжает пялиться на тебя.~ */
  IF ~~ THEN REPLY #46759 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #46763 /* ~Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
  IF ~~ THEN REPLY #46764 /* ~Оставить труп в покое.~ */ EXIT
END
