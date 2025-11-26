// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D202POR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~D202POR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51460 /* ~Als du an diesen Bogen herantrittst, beginnen die schwarzen Säulen zu beiden Seiten sanft zu leuchten, neblig weißes Licht bildet dabei einen schimmernden Vorhang zwischen ihnen. Hinter dem Vorhang kannst du gerade eben einen mit verwitterten Steinen gepflasterten Weg erkennen, der in die Dunkelheit führt.~ */
  IF ~  PartyHasItem("SkRegret")
~ THEN REPLY #51461 /* ~Halte den Hautfetzen mit deinem Bedauern drauf fest, geh dann durch den Vorhang.~ */ EXIT
  IF ~~ THEN REPLY #51462 /* ~Laß das Portal in Ruhe.~ */ EXIT
END
