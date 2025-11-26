// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZERB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZERB~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51192 /* ~Cette immense créature mesure plus de 2,70 mètres. Des muscles saillants soutiennent son énorme charpente. Elle semble en conversation avec deux créatures similaires.~ */
  IF ~~ THEN REPLY #51193 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #51194 /* ~Ignore la créature.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51195 /* ~En entendant ton bonjour, il se retourne et regarde autour de lui. Au bout d'un moment, il baisse les yeux et te voit. Une certaine confusion se lit sur son visage. "Quoi toi vouloir à Zerb ?"~ */
  IF ~~ THEN REPLY #51196 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51197 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #51198 /* ~Tout en ayant l'air de s'excuser, il secoue la tête. "Zerb pas parler très bien ta langue. Désolé, toi parler à Thorp." Il fait signe à l'une des créatures qui se trouvent près de lui.~ */
  IF ~~ THEN REPLY #51199 /* ~"D'accord, merci."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #51200 /* ~Tu vois Zerb. Il baisse les yeux vers toi et te sourit. "Zerb saluer toi encore."~ */
  IF ~~ THEN REPLY #51201 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51202 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #51203 /* ~Tu vois Zerb. Il baisse les yeux vers toi et s'incline. "Zerb saluer toi, ami. Zerb remercier toi pour avoir sauvé sa vie." Il se détourne.~ */
  IF ~~ THEN REPLY #51204 /* ~Pars.~ */ EXIT
END
