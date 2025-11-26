// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWSICK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWSICK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3030 /* ~Jestem chorym mieszkańcem Niższej Dzielnicy. Mam ci do opowiedzenia fascynującą historię życia, ale zbytnio cherlam i kaszlę, by móc to zrobić.~ */
  IF ~~ THEN REPLY #3031 /* ~Może więc i dobrze.~ */ EXIT
END
