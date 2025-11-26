// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_WORK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_WORK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67978 /* ~Robotnik ten tylko na moment odrywa oczy od swojej pracy. "Słuchaj... To, czym się tutaj zajmuję, wymaga, abym nie tracił czasu na śpiewki z przechodniami. Dlatego proszę, zostaw mnie sam na sam z moją robotą. Dobrze?" Znowu zatapia się w swojej pracy.~ */
  IF ~~ THEN REPLY #67979 /* ~Odejdź.~ */ EXIT
END
