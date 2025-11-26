// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DART08~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34200 /* ~Ein Bild von hohen, schwarzen Felsen vor einem blutroten Himmel. In den Felsspalten scheinen sich Figuren zu verstecken, aber immer, wenn du die Augen zusammenkneifst, um das Bild näher zu betrachten, lösen die Bilder sich in Nichts auf. Auf einer Plakette steht: 'Räuber aus den Außenländern'.~ */
  IF ~~ THEN REPLY #42672 /* ~Geh weg.~ */ DO ~SetGlobal("View_Art_08","AR0608",1)
~ EXIT
END
