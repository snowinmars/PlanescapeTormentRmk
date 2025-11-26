// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDALLNGF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDALLNGF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49445 /* ~Cette jeune femme te fait un joli sourire et se dandine aux côtés de l'homme qui l'accompagne. Elle ne dit rien et lorsque tu essaies de lui parler, elle s'éloigne un peu plus.~ */
  IF ~~ THEN REPLY #49446 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49448 /* ~En te voyant arriver, elle se dérobe et regarde partout sauf dans ta direction. Elle semble très jeune.~ */
  IF ~~ THEN REPLY #49449 /* ~"Au revoir."~ */ EXIT
END
