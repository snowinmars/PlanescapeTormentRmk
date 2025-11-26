// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3327 /* ~Ich bin ein ROTER Abishai, der mit der schwarze Sorte nur wenig zu tun hat. Wirklich. Ach ja, außerdem werde ich dich auch töten wollen.~ */
  IF ~~ THEN REPLY #3328 /* ~Bin begeistert.~ */ EXIT
END
