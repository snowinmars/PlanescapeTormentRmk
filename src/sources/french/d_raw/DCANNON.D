// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCANNON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCANNON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #66183 /* ~Cet objet énorme bourdonne, tant est grand le pouvoir qui l'anime. On dirait une fleur colossale, métallique et créée de toutes pièces. Elle possède tant de leviers, de jauges et de tuyaux que tu ne sais lesquels regarder.~ */
  IF ~  Global("Sabotage","GLOBAL",4)
~ THEN REPLY #66188 /* ~Sabote le mécanisme de tir situé à la base de la machine.~ */ DO ~SetGlobal("Sabotage","GLOBAL",5)
~ GOTO 1
  IF ~~ THEN REPLY #66189 /* ~Joue avec les commandes.~ */ GOTO 2
  IF ~~ THEN REPLY #66190 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66185 /* ~Le mécanisme de tir a l'air instable. Tu l'arraches d'un coup sec. Les vibrations ne changent que très peu, mais tu perçois aussitôt qu'elles sont beaucoup moins stables qu'avant. Tu as sans doute intérêt à t'en aller.~ */
  IF ~~ THEN REPLY #66191 /* ~Pars.~ */ DO ~TeleportParty("AR0502",[963.1377],14)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #66186 /* ~Pour le moment, tu n'arrives à rien changer.~ */
  IF ~~ THEN REPLY #66192 /* ~Pars.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sabotage","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #66187 /* ~Le bourdonnement de la machine ne cesse de s'accentuer. Tu as tout intérêt à t'en aller avant de te faire volatiliser par l'explosion.~ */
  IF ~~ THEN REPLY #66193 /* ~Pars.~ */ DO ~TeleportParty("AR0502",[963.1377],14)
~ EXIT
END
