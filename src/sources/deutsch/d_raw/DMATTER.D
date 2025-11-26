// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMATTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMATTER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2893 /* ~Dieser riesenhafte Mensch trägt einen ebenso riesenhaften roten Harnisch mit reichen Verzierungen. Er betrachtet dich vorsichtig aber furchtlos, als du näherkommst.~ */
  IF ~~ THEN REPLY #2894 /* ~Eine dröhnende Stimme hallt aus seinem großen Helm: "Sei gegrüßt, Bürger. Ich bin Selbstverständliche-Sache... Leibwächter von Eifer, der Vierten Friedensrichterin des Bezirks. Du mußt mich entschuldigen, denn meine Pflichten sind an ihrer Seite. Leb wohl."~ */ EXIT
END
