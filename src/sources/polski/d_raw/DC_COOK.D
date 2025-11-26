// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_COOK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_COOK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67945 /* ~Twarz kucharza nabrzmiewa czerwienią i wściekłością. "Nie słyszałeś, co powiedziałem? Wynocha! Wynocha z mojej kuchni!"~ */
  IF ~~ THEN REPLY #67946 /* ~Odejdź.~ */ EXIT
END
