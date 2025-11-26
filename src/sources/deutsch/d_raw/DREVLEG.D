// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DREVLEG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DREVLEG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2978 /* ~Ich bin ein "generisches" Mitglied der Revolutionsliga, obwohl wir im Grunde alle Individuen sind.~ */
  IF ~~ THEN REPLY #2979 /* ~Ja, da hast du recht. Leb wohl.~ */ EXIT
END
