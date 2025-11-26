// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOVERW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DOVERW~

IF ~~ THEN BEGIN 0 // from:
  SAY #42765 /* ~Toto klenuté podloubí vede jen palce do malé stavby předtím, než ji zablokuje pevná zeď z odpadu. Smetí je nahuštěné tak pevně na sobě, jako by to byly kameny spojené maltou.~ */
  IF ~~ THEN REPLY #42766 /* ~
~ */ EXIT
  IF ~~ THEN REPLY #42768 /* ~
~ */ EXIT
  IF ~~ THEN REPLY #42769 /* ~
~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #42772 /* ~
~ */
  IF ~~ THEN EXIT
END
