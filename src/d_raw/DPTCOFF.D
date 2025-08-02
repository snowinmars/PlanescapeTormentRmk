// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPTCOFF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPTCOFF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51470 /* ~Ты изо всех сил пытаешься поднять крышку саркофага, но все твои усилия уходят впустую. Похоже, она крепко держится на месте.~ */
  IF ~~ THEN REPLY #51471 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Inscr_1","GLOBAL",1)
Global("Inscr_2","GLOBAL",1)
Global("Inscr_3","GLOBAL",1)
Global("Inscr_4","GLOBAL",1)
Global("Inscr_5","GLOBAL",1)
Global("Inscr_6","GLOBAL",1)
Global("Inscr_7","GLOBAL",1)
Global("Inscr_8","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #51473 /* ~Крышка саркофага с легкостью отодвигается. Запирающий ее механизм дезактивирован.~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",2)
~ THEN REPLY #53782 /* ~Открыть саркофаг.~ */ GOTO 5
  IF ~  Global("Lo_Quest","GLOBAL",2)
~ THEN REPLY #53783 /* ~Открыть саркофаг.~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",3)
~ GOTO 2
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #53784 /* ~Открыть саркофаг.~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",3)
~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #53785 /* ~Ты открываешь саркофаг... внутри лежит один-единственный ключ. Нет ни тела, ни, что более важно, черепа.~ */
  IF ~~ THEN REPLY #53786 /* ~«Не думаю, что Лотар будет рад узнать об этом...»~ */ JOURNAL #51472 /* ~Я нашел гробницу, откуда Лотар хотел, чтобы я достал ему череп. К несчастью, саркофаг в гробнице оказался пуст. Мне следует рассказать об этом Лотару.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53787 /* ~Несколько мгновений ты молча стоишь, разглядывая содержимое саркофага.~ */
  IF ~~ THEN REPLY #53788 /* ~Взять ключ и уйти.~ */ DO ~SetGlobal("Journal","GLOBAL",1)
AddexperienceParty(2000)
GiveItemCreate("PTKey4",Player1,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #53789 /* ~Ты открываешь саркофаг... внутри лежит один-единственный ключ. Нет ни тела, ни чего-либо ценного.~ */
  IF ~~ THEN REPLY #53790 /* ~Взять ключ и уйти.~ */ DO ~SetGlobal("Journal","GLOBAL",1)
AddexperienceParty(2000)
GiveItemCreate("PTKey4",Protagonist,1,0,0)
~ JOURNAL #51475 /* ~Я нашел в катакомбах гробницу. В ее центре был пустой саркофаг.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0
  SAY #53791 /* ~Саркофаг пуст. Ничего не изменилось с тех пор, как ты проверял его в последний раз.~ */
  IF ~~ THEN REPLY #53792 /* ~Уйти.~ */ EXIT
END
