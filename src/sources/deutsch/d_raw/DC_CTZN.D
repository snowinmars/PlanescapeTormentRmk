// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_CTZN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_CTZN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67990 /* ~Diese Person sieht dich zornig an und ist sichtlich verärgert, daß du die Unterhaltung unterbrochen hast, dann wendet sie sich wieder der Gruppe zu.~ */
  IF ~~ THEN REPLY #67993 /* ~"Ich hätte nur ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #67994 /* ~"Dann leb wohl..."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67991 /* ~Die Antwort ist bissig. "Du störst. Natürlich nicht!"~ */
  IF ~~ THEN REPLY #67992 /* ~"Also gut. Leb wohl."~ */ EXIT
END
