// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART11.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DART11~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34203 /* ~Dieses Bild zeigt einen riesigen Bergfried aus Granit - ein schrecklich häßliches Ding, lang und niedrig, mit anzüglich grinsenden Wasserspeiern bedeckt - der in etwas hängt, was wie der Nachthimmel aussieht. Eine Wolke aus purpurrotem und violettem Dunst wirbelt im Hintergrund an der rechten Seite des Bildes entlang. Auf einer Plakette steht einfach nur: 'Die Bibliothek'.~ */
  IF ~~ THEN REPLY #42678 /* ~Geh weg.~ */ DO ~SetGlobal("View_Art_11","AR0608",1)
~ EXIT
END
