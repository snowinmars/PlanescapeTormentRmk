// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBOSS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBOSS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2899 /* ~I am the evil, cliche-ridden construct boss that rules the modron cube. Bow down before me and weep, fleshy one.~ */
  IF ~~ THEN REPLY #2900 /* ~Blow me, evil drone. Dobrý den... and good riddance.~ */ EXIT
END
