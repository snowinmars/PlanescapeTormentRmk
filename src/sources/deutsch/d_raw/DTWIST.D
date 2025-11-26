// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTWIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTWIST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2794 /* ~Krumme Lippe kann noch nicht sprechen. Sein Name verrät ja bereits, weshalb.~ */
  IF ~~ THEN REPLY #2795 /* ~Schön. Was auch immer.~ */ EXIT
END
