// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAJORD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAJORD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #44696 /* ~Tu vois un cube à deux bras, deux jambes et deux petites ailes sur les côtés. La face avant du cube s'orne d'un visage capable d'expression. Alors que tu t'approches, la créature tourne les yeux vers toi.~ */
  IF ~~ THEN REPLY #44697 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #44698 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #44699 /* ~La créature concentre son regard impassible sur toi. "Bonjour, aventurier. Bienvenue à Rubikon, la construction de donjon. Merci d'avoir choisi Rubikon pour ton expérience sur les donjons. Tu accéderas à Rubikon par cette porte."~ */
  IF ~~ THEN REPLY #44700 /* ~"C'est quoi, Rubikon ?"~ */ GOTO 2
  IF ~~ THEN REPLY #44701 /* ~"C'est quoi une construction de donjon ?"~ */ GOTO 3
  IF ~~ THEN REPLY #44702 /* ~"Peu importe, il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #44703 /* ~La créature te fixe sans répondre.~ */
  IF ~~ THEN REPLY #44704 /* ~"C'est quoi une construction de donjon ?"~ */ GOTO 3
  IF ~~ THEN REPLY #44705 /* ~"Peu importe, il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #44706 /* ~La créature te regarde en clignant des yeux, mais ne laisse rien paraître qui puisse te faire penser qu'elle a entendu ta question.~ */
  IF ~~ THEN REPLY #44708 /* ~"C'est quoi, Rubikon ?"~ */ GOTO 2
  IF ~~ THEN REPLY #44709 /* ~"Peu importe, il faut que je m'en aille. Au revoir."~ */ EXIT
END
