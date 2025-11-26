// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARTPTRN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DARTPTRN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50864 /* ~"Es tut mir leid, mein Herr, aber ich bin hier, um mir die Kunstwerke anzusehen - nicht, um mit Fremden Konversation zu betreiben. Wenn Ihr mich jetzt bitte entschuldigen würdet... Lebt wohl."~ */
  IF ~~ THEN REPLY #50865 /* ~Geh weg.~ */ EXIT
END
