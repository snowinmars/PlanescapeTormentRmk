// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DART10~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34202 /* ~Dieses Bild stellt eine Küstenszene mit einem breiten orangerötlichen Sonnenuntergang hinter einer Halbinsel oder einer großen Mole dar. Die Szene ist zwar nicht originell, aber atemberaubend - das Spiel des verblassenden Tageslichts auf dem Wasser ist perfekt eingefangen - aber wenn du länger auf die gemalte Sonne starrst, tun dir die Augen weh. Auf einer Plakette steht: 'Oberfläche von Thalasia'.~ */
  IF ~~ THEN REPLY #42674 /* ~Berühre das Bild.~ */ DO ~SetGlobal("View_Art_10","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42675 /* ~Geh weg.~ */ DO ~SetGlobal("View_Art_10","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42676 /* ~Merkwürdigerweise gibt es an der Bildoberfläche nichts Außergewöhnliches zu entdecken.~ */
  IF ~~ THEN REPLY #42677 /* ~Geh weg.~ */ EXIT
END
