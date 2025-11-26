// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7082 /* ~«Я один из оплакивающих, которые болтаются у киоска тленных в AR0200 (Улей B). Мы 'оплакиваем живых' и игрок может попросить нас поплакать за тех, кто потерял своих любимых».~ */
  IF ~~ THEN REPLY #7083 /* ~ «Спасибо за информацию».~ */ EXIT
END
