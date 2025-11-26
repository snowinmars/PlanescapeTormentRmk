// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWSECRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWSECRE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3036 /* ~"Jestem tajemniczym mieszkańcem Niższej Dzielnicy. Niech opatrzność ma w opiece tego, kto skradnie me tajemnice! Wydychaj się!"~ */
  IF ~~ THEN REPLY #3037 /* ~Szpicowany mędrek...~ */ EXIT
END
