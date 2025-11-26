// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCONVSEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCONVSEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46332 /* ~Osoba se k tobě otočila a slušně pozdravila. "Omlouvám se, dobrý pane, ale právě mám něco rozdělaného. Pokud mě omluvíš... sbohem." Napůl se ti uklonil a věnuje se dál svému byznysu.~ */
  IF ~~ THEN REPLY #46333 /* ~Odejdi.~ */ EXIT
END
