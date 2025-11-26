// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #44482 /* ~Tu vois un mastodonte au visage sombre et à la mâchoire pendante. Mais il faut voir ses muscles ! Ses yeux sans vie te fixent. "Hein ?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44485 /* ~"On m'a dit que je trouverais une cellule d'Anarchistes ici. Le mot de passe est 'éclipse'."~ */ GOTO 2
  IF ~~ THEN REPLY #44486 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #44487 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 2
  IF ~~ THEN REPLY #44489 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #44547 /* ~"Han ?"~ */
  IF ~~ THEN REPLY #44548 /* ~"Qui es-tu déjà ?"~ */ GOTO 2
  IF ~~ THEN REPLY #44549 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 2
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44550 /* ~"On m'a dit que je trouverais une cellule d'Anarchistes ici. Le mot de passe est 'éclipse'."~ */ GOTO 2
  IF ~~ THEN REPLY #44551 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.1 0.2 1.0 1.1 1.2
  SAY #44552 /* ~"Ne me parle pas. Parle à Leena." Il fait signe à la directrice.~ */
  IF ~~ THEN REPLY #44553 /* ~"Juste quelques questions ?"~ */ GOTO 3
  IF ~~ THEN REPLY #44554 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44555 /* ~"NE ME PARLE PAS !" Il semble agité.~ */
  IF ~~ THEN REPLY #44557 /* ~"D'accord, d'accord. Au revoir."~ */ EXIT
END
