// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWSICK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWSICK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3030 /* ~Я больной житель с Нижнего района. У меня есть потрясающая жизненная история, но я так занят кашлем, что не могу ничего сказать.~ */
  IF ~~ THEN REPLY #3031 /* ~Может быть, это и к лучшему.~ */ EXIT
END
