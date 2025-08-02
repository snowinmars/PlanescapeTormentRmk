// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSC_TRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSC_TRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50384 /* ~Это старый, поблеклый, безобидный с виду свиток пергамента, связанный красной лентой и слегка отдающий плесенью. Лента скреплена обычной восковой печатью.~ */
  IF ~~ THEN REPLY #50385 /* ~Сломать печать, вскрыть свиток и прочесть его.~ */ GOTO 1
  IF ~~ THEN REPLY #50386 /* ~Отложить свиток.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50387 /* ~В свитке несколько строк, написанных неровным почерком, и странная руна. В нем написано:

«это может и не УБИТЬ тебя но по крайней мере ЗАМЕДЛИТ я в этом УВЕРЕН»
«ХВАТИТ ПРЕСЛЕДОВАТЬ МЕНЯ УБЛЮДОЧНЫЕ ВОРЫ это МОЕ тело МОЕ МОЕ МОЕ»
«а теперь... СДОХНИ»~ */
  IF ~~ THEN REPLY #50388 /* ~«Что за?..»~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #50389 /* ~~ */
  IF ~~ THEN REPLY #50390 /* ~~ */ DO ~ApplySpell(Protagonist,WIZARD_BALL_LIGHTNING)
DestroyPartyItem("SCTrap",FALSE)
~ EXIT
END
