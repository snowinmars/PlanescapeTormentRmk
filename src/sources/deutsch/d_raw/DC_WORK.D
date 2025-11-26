// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_WORK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_WORK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67978 /* ~Diese Person sieht nur ganz kurz von ihrer Arbeit auf. "Paß auf... Meine Arbeit wir nicht fertig, wenn ich mit irgendeinem Dahergelaufenen ein Schwätzchen halte. Laß mich einfach in Ruhe weiterschuften, ja?" Sie wendet sich wieder der Arbeit zu.~ */
  IF ~~ THEN REPLY #67979 /* ~Geh weg.~ */ EXIT
END
