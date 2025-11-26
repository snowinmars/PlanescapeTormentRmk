// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART12.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DART12~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34204 /* ~Dieses Bild stellt eine dunkle Stadtszenerie dar, einen entfernten Blick auf ein riesiges Zivilisationszentrum, das in Flammen aufgeht. Die Straßen des Ortes sind allerdings leer, es gibt weder Soldaten noch Flüchtlinge, ja, nicht einmal Leichen. Auf einer Plakette steht: 'Die Torheit Udos'.~ */
  IF ~~ THEN REPLY #42679 /* ~Geh weg.~ */ DO ~SetGlobal("View_Art_12","AR0608",1)
~ EXIT
END
