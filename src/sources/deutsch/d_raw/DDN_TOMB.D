// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDN_TOMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDN_TOMB~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48901 /* ~In das riesige Grabmal ist eine kurze Inschrift eingraviert.~ */
  IF ~~ THEN REPLY #48902 /* ~Lies die Inschrift.~ */ DO ~SetGlobal("DN_Read_Tomb","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #58918 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58916 /* ~'Hier ruht die geliebte Mutter Bah'jins, A-'. Der letze Teil der Inschrift ist nicht zu entziffern.~ */
  IF ~~ THEN REPLY #58917 /* ~Geh weg.~ */ EXIT
END
