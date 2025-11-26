// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43013 /* ~Diese Person versucht, irgendwelche Gegenstände aus den Taschen einer ausgestopften Puppe zu klauen, die an einem Gestell hängt und mit mehreren Glocken und Klimperkram versehen ist. Jedesmal, wenn sie die Puppe zu fest berührt, klingelt es laut.~ */
  IF ~~ THEN REPLY #43014 /* ~Geh weg.~ */ EXIT
END
