// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48979 /* ~Tu vois une femme à l'air agacé.~ */
  IF ~~ THEN REPLY #48980 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #48981 /* ~Laisse la femme tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48982 /* ~"Tu ne t'en souviens peut-être pas très bien. J'ai dit que je voulais qu'on me laisse tranquille."~ */
  IF ~~ THEN REPLY #48983 /* ~"Hmm, je vois que ton humeur n'a pas changé."~ */ GOTO 3
  IF ~~ THEN REPLY #48984 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48985 /* ~"Il n'y a pas moyen de trouver un endroit où je puisse être tranquille un moment dans cette cité ?"~ */
  IF ~~ THEN REPLY #48986 /* ~"Pourquoi tu veux être seule ?"~ */ GOTO 3
  IF ~~ THEN REPLY #48987 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48988 /* ~"Tranquille veut dire sans toi. Laisse-moi seule."~ */
  IF ~~ THEN REPLY #48989 /* ~"Au revoir."~ */ EXIT
END
