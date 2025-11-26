// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43013 /* ~Osobnik ten jest pochłonięty próbą wyjęcia portfela z kieszeni wypchanego manekina, zwisającego z ramy i obwieszonego rozmaitymi dzwonkami i kurantami. Ilekroć człowiek ten dotyka manekina zbyt gwałtownie, kukła donośnie dzwoni.~ */
  IF ~~ THEN REPLY #43014 /* ~Odejdź.~ */ EXIT
END
