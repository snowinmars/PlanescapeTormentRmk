// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : MONJUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~MONJUG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #50429 /* ~Dies ist eine schwere, schlicht aussehende Metallkanne mit einem Stöpsel, der mit einem Scharnier versehen ist. Trotz seines gewöhnlichen Aussehens willst du das Ding nur ungern berühren - aus Angst, daß es dich beißen könnte. Du hast gehört, daß in der Kanne eine Art Monster gefangen ist. Doch als du in die Öffnung der Kanne hineinsiehst, erkennst du nichts als tiefe Schwärze.~ */
  IF ~~ THEN REPLY #50432 /* ~Stell die Kanne hochkant und beobachte, ob etwas herauskommt.~ */ GOTO 1
  IF ~~ THEN REPLY #50433 /* ~Stell die Kanne weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50434 /* ~Zunächst ist nichts zu sehen... aber dann quillt eine zähflüssige, schwarze Flüssigkeit aus der Kannenöffnung hervor und bildet eine schleimige Pfütze dampfenden und teerigen Drecks auf dem Boden. Als die Kanne anfängt, sich in deinen Händen aufzulösen, gerät die Pfütze in Wallung, blubbert, und die Masse steigt auf und bildet eine große, scheußliche Kreatur...~ */
  IF ~~ THEN REPLY #50435 /* ~"Was zum...?"~ */ DO ~CreateCreatureAtFeet("Geherl")
DestroyPartyItem("MonJug",FALSE)
~ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 2 // from:
  SAY #64980 /* ~Es ist ein schwerer, unscheinbarer Krug aus Metall mit einem Deckel, der hinten über ein Scharnier befestigt ist. Trotz seines gewöhnlichen Aussehens scheust du dich, das Ding zu berühren, so als könnte es dich beißen. Man hat dir gesagt, daß eine Art Monster darin eingeschlossen ist, doch als du in den Krug hineinschaust, siehst du nichts als tiefschwarze Leere.~ */
  IF ~~ THEN REPLY #64981 /* ~Stell den Krug auf den Kopf, um zu sehen, ob etwas herauskommt.~ */ GOTO 3
  IF ~~ THEN REPLY #64982 /* ~Stell den Krug weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64983 /* ~Eine schwarze, dicke Flüssigkeit läuft aus und bildet eine schleimige Pfütze auf dem Boden. Außer dieser Sauerei geschieht nichts weiter.~ */
  IF ~~ THEN REPLY #64984 /* ~Wirf die leere Urne weg.~ */ DO ~DestroyPartyItem("MonJug",FALSE)
~ EXIT
END
