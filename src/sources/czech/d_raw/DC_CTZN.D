// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_CTZN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_CTZN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67990 /* ~Osoba na tebe zlostně zírá, rozhodně ji naštvalo, že jsi ji vyrušil. Otočila se zpět k davu.~ */
  IF ~~ THEN REPLY #67993 /* ~"Mám jenom pár otázek..."~ */ GOTO 1
  IF ~~ THEN REPLY #67994 /* ~"Tak tedy sbohem..."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67991 /* ~Odsekl: "Neotravuj mě!"~ */
  IF ~~ THEN REPLY #67992 /* ~"Tak fajn. Sbohem."~ */ EXIT
END
