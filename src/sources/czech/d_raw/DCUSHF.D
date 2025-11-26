// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUSHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUSHF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9352 /* ~Tato žena si nevšímá tvé přítomnosti. Nejspíš se hodně zajímá o zboží na prodej.~ */
  IF ~~ THEN REPLY #9353 /* ~Nechej ji, ať si nakupuje.~ */ EXIT
END
