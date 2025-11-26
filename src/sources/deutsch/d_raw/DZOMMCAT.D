// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMMCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMMCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3343 /* ~Ich gehöre zu diesen "halbverfaulten" Zombies, die sich in den Katakomben herumtreiben. Ich schlurfe zur Arbeit hin und zurück, genau wie Chris Avellone. Blabla. Bla?~ */
  IF ~~ THEN REPLY #3344 /* ~Stinkst auch wie er.~ */ EXIT
END
