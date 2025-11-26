// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTWIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTWIST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2794 /* ~Zkroucený-Ret nemůže mluvit. Už jeho samotné jméno vysvětluje proč.~ */
  IF ~~ THEN REPLY #2795 /* ~Fajn. No jo.~ */ EXIT
END
