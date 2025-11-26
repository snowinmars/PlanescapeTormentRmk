// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGORT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGORT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51179 /* ~Cette immense créature mesure plus de 2,70 mètres. Des muscles saillants soutiennent son énorme charpente. Elle semble en conversation avec deux créatures similaires.~ */
  IF ~~ THEN REPLY #51180 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #51181 /* ~Ignore la créature.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51182 /* ~En entendant ton bonjour, il se tourne vers toi et te détaille des pieds à la tête. Une certaine confusion se lit sur son visage. "Gort saluer petite chose."~ */
  IF ~~ THEN REPLY #51183 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51184 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #51185 /* ~Tout en ayant l'air de s'excuser, il secoue la tête. "Gort pas bien parler ta langue. Désolé, toi demander à Thorp." Il fait signe à l'une des créatures qui se trouvent près de lui.~ */
  IF ~~ THEN REPLY #51186 /* ~"D'accord, merci."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #51187 /* ~Tu vois Gort. Il baisse les yeux vers toi et te sourit. "Gort saluer toi encore."~ */
  IF ~~ THEN REPLY #51188 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51189 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #51190 /* ~Tu vois Gort. Il se penche vers toi. "Gort saluer toi, ami. Gort remercier toi pour avoir sauvé sa vie." Il se détourne.~ */
  IF ~~ THEN REPLY #51191 /* ~Pars.~ */ EXIT
END
