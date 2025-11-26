// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJANSEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DJANSEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67910 /* ~Dieser Mann ist grün und blau geschlagen und blutüberströmt. Sein Gesicht ist übel zugerichtet und geschwollen von den brutalen Schlägen der Wächter von Verdammnis. Er spricht nicht, sondern spuckt einen Zahn und einen Blutschwall aus. ~ */
  IF ~~ THEN REPLY #67911 /* ~"Dann leb wohl."~ */ EXIT
END
