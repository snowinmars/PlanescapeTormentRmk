// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHKSLAV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHKSLAV~

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #50969 /* ~Du siehst einen kräftigen ehemaligen Sklavenhändler der Thokola. Er ist mit dem Blut der Monster von Carzeri bedeckt. "Wir töten Monster, eh? Nicht übel... Töten statt zu versklaven. Gefällt uns, eh?"~ */
  IF ~~ THEN REPLY #50970 /* ~"Gute Arbeit, weiter so."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #50971 /* ~"Ha! Wir töten gerne, eh?"~ */
  IF ~~ THEN REPLY #50972 /* ~"Weiter so... Fast geschafft..."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #50973 /* ~Du siehst einen kräftigen Sklavenhändler der Thokola. Die Augen, mit denen er dich anstarrt, sind tot und haßerfüllt. Er reagiert auf fast alles, was du sagt, mit einem Knurren, antwortet aber nicht.~ */
  IF ~~ THEN REPLY #50974 /* ~"Also dann, leb wohl..."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #50975 /* ~Der Thokola knurrt dich nur an.~ */
  IF ~~ THEN REPLY #50976 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",701)
~ THEN BEGIN 4 // from:
  SAY #50977 /* ~Du siehst einen kräftigen Sklavenhändler der Thokola. Die Augen, mit denen er dich anstarrt, sind tot und haßerfüllt. Er reagiert auf fast alles, was du sagt, mit einem Knurren, antwortet aber nicht.~ */
  IF ~~ THEN REPLY #50978 /* ~"Also dann, leb wohl..."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",701)
~ THEN BEGIN 5 // from:
  SAY #50979 /* ~Der Thokola knurrt dich nur an.~ */
  IF ~~ THEN REPLY #50980 /* ~"Dann leb wohl."~ */ EXIT
END
