// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR8.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR8~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38111 /* ~Бойся имен. Имена имеют власть над личностью. Имена могут использоваться другими как оружие. Имена — это приманки, по которым тебя могут выследить в планах. Оставайся безымянным — и ты будешь в безопасности.~ */
  IF ~~ THEN REPLY #53764 /* ~Продолжить.~ */ GOTO 1
  IF ~~ THEN REPLY #53765 /* ~Отойти от описания.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53766 /* ~Я — Безымянный.~ */
  IF ~  Global("Inscr_8","GLOBAL",0)
~ THEN REPLY #53767 /* ~Осмотреть панель.~ */ GOTO 2
  IF ~~ THEN REPLY #53768 /* ~Отойти от описания.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53769 /* ~Панель красиво сделана. Кажется, ты можешь вдавить ее в стену.~ */
  IF ~~ THEN REPLY #53770 /* ~Надавить на панель.~ */ DO ~SetGlobal("Inscr_8","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #53771 /* ~Оставить панель в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53772 /* ~Панель беззвучно уходит в стену. Ты слышишь щелчок от саркофага позади тебя.~ */
  IF ~~ THEN REPLY #53773 /* ~Отойти от описания.~ */ EXIT
END
