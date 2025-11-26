// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYBGANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DYBGANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46105 /* ~Dieser wütend wirkende Mann sieht nicht gerade aus wie ein Schläger, sondern wie jemand, der einen imitiert. Er grinst höhnisch, als du näherkommst. "'Pack ein', du 'Dussel'! Sprich ruhig mit dem 'hohen Tier', aber ich 'plausch' nicht mit dir."~ */
  IF ~~ THEN REPLY #46106 /* ~"Schon gut, schon gut. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #46107 /* ~Geh weg.~ */ EXIT
END
