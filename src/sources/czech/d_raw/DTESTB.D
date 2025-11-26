// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTESTB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTESTB~

IF ~~ THEN BEGIN 0 // from:
  SAY #106498 /* ~[This is a placeholder to prevent a string with a sound file from becoming strref 106498, which causes problems.]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #54305 /* ~Batteries not included.  Not available in stores.  Some assembly required.  Use as directed.  Offer void where prohibited by law.~ */
  IF ~~ THEN EXTERN ~DTEST~ 24
END
