// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMFCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMFCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3341 /* ~Ich gehöre zu diesen "halbverfaulten" Zombies, die sich in den Katakomben herumtreiben. Ich schlurfe zur Arbeit und zurück, genau wie Chris Avellone.~ */
  IF ~~ THEN REPLY #3342 /* ~Was hast'n nachher vor?~ */ EXIT
END
