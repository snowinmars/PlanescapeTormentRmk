// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLECTURE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLECTURE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50862 /* ~Člověk se k tobě otočil s poněkud otráveným výrazem. "Poslouchal jsem přednášku, pane. Věřím, že budeš natolik laskav a necháš mě to dělat dál. Sbohem."~ */
  IF ~~ THEN REPLY #50863 /* ~Odejdi.~ */ EXIT
END
