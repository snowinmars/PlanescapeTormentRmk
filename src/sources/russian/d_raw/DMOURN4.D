// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN4~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7084 /* ~«Я один из оплакивающих, которые болтаются у киоска тленных в AR0200 (Улей B). Мы 'оплакиваем живых' и игрок может попросить нас поплакать за тех, кто потерял своих любимых».~ */
  IF ~~ THEN REPLY #7085 /* ~«Спасибо за информацию».~ */ EXIT
END
