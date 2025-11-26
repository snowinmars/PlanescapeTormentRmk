// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR5~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38105 /* ~У меня больше не осталось времени из-за моего убийцы. Я не могу обмануть его, поэтому я должен его убить. Я пытался оторваться от него. Я оставлял фальшивые тела, сделанные таким образом, чтобы они успокоили его. Я бродил по всем внешним планам, надеясь, что расстояние меня защитит. Я построил эту могилу, полную ловушек, в надежде убить убийцу. Я спрятался.~ */
  IF ~~ THEN REPLY #53727 /* ~Продолжить.~ */ GOTO 1
  IF ~~ THEN REPLY #53728 /* ~Отойти от описания.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53729 /* ~Все, что я смог получить — это время. Атаки неизбежно начнутся снова, еще яростнее, чем прежде. Бесполезно обманывать. Каким-то образом убийца всегда знает, что я жив. И неважно, на каком плане я скрываюсь, он найдет меня... в конечном счете.~ */
  IF ~  Global("Inscr_5","GLOBAL",0)
~ THEN REPLY #53730 /* ~Осмотреть панель.~ */ DO ~SetGlobal("Know_Player_Killer","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53731 /* ~Отойти от описания.~ */ DO ~SetGlobal("Know_Player_Killer","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53732 /* ~Похоже, панель можно вдавить в стену.~ */
  IF ~~ THEN REPLY #53733 /* ~Надавить на панель.~ */ DO ~SetGlobal("Inscr_5","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #53734 /* ~Оставить панель в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53735 /* ~Панель плавно уходит в стену. Ты слышишь щелчок от саркофага позади тебя.~ */
  IF ~~ THEN REPLY #53736 /* ~Отойти от описания.~ */ EXIT
END
