// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMACH3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMACH3~

IF ~  Global("Machine_3","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64340 /* ~Cette ancienne machine ressemble à une relique de guerre oubliée. Elle est en partie recouverte de poussière, à l'exception d'un petit panneau avec des leviers, devant elle. Étrangement, quelqu'un a laissé des empreintes 'récentes' sur le sol tout autour - peut-être au cours de ces quelques dernières années…~ */
  IF ~  Global("Machine","GLOBAL",3)
~ THEN REPLY #64341 /* ~Cherche le panneau et le levier marqué d'un 'X'.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 1
  IF ~  GlobalGT("Machine","GLOBAL",0)
GlobalLT("Machine","GLOBAL",3)
~ THEN REPLY #64347 /* ~Cherche le panneau et le levier marqué d'un 'X'.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Machine","GLOBAL",0)
~ THEN REPLY #64352 /* ~Examine le panneau.~ */ GOTO 4
  IF ~~ THEN REPLY #64361 /* ~Ignore la machine.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64342 /* ~Tu trouves rapidement le levier marqué d'un 'X' - et tu le tires sans effort. Il se transforme en une brume légère - tu prends une profonde inspiration mais, contrairement aux autres fois… rien ne se passe.~ */
  IF ~~ THEN JOURNAL #64260 /* ~Quand j'ai tiré le levier de la quatrième relique, j'ai eu l'impression qu'un passage s'ouvrait dans l'un des murs de la forteresse. S'agit-il de la sortie ? Si tel est le cas, il ne me reste plus qu'à la trouver pour pouvoir m'en aller…~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64343 /* ~Au loin, tu entends un mugissement comme si quelque chose venait d'être ouvert et qu'un vent violent s'engouffrait dans la voûte. Tandis que tu essaies de comprendre d'où vient ce bruit, tu te rends compte soudainement que tu te désagrèges et que tu te mêles au vent…~ */
  IF ~  !Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64344 /* ~"Qu'est-ce qui se passe *maintenant*… ?!"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_3","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csN0",FALSE)
~ EXIT
  IF ~  Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64345 /* ~"Qu'est-ce qui se passe *maintenant*… ?!"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #64346 /* ~"Qu'est-ce qui se passe *maintenant*… ?!"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64348 /* ~Tu trouves rapidement le levier marqué d'un 'X' - et tu le tires sans effort. Il se transforme en une brume légère - tu prends une profonde inspiration et tu sens de nouveau la nausée t'envahir tandis que les murs disparaissent autour de toi…~ */
  IF ~  !Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64349 /* ~"Où vais-je *m-*"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_3","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csN0",FALSE)
~ EXIT
  IF ~  Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64350 /* ~"Où vais-je *m-*"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #64351 /* ~"Où vais-je *m-*"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #64353 /* ~Il y a plusieurs leviers et manettes sur le panneau - sous certains, plusieurs marques ont été rapidement gravées avec la pointe d'une dague. D'autres n'ont aucune marque, d'autres encore n'en ont qu'une et, sous l'un d'eux, est gravé un 'X'. Inconsciemment, tu sais que le levier marqué d'un 'X' peut t'aider à quitter cet endroit.~ */
  IF ~  Global("Clock_1","GLOBAL",1)
~ THEN REPLY #64354 /* ~Tire le levier marqué d'un 'X'.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64238 /* ~J'ai découvert une étrange machine à l'intérieur de la forteresse. On dirait une sorte de canon, mais j'ai la sensation qu'il s'agit plutôt d'un mécanisme de fermeture de la citadelle. Quand je l'ai utilisé, je me suis retrouvé dans un autre coin isolé de la forteresse, un balcon surplombant la galerie principale. Je sais qu'il va me falloir trouver et activer les autres machines. Peut-être la mémoire est-elle en train de me revenir. S'il faut en juger par le message inscrit sur l'horloge, une de mes incarnations a déjà subi cette épreuve.~ */ GOTO 5
  IF ~  Global("Clock_1","GLOBAL",0)
~ THEN REPLY #64359 /* ~Tire le levier marqué d'un 'X'.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64239 /* ~J'ai découvert une étrange machine à l'intérieur de la forteresse. On dirait une sorte de canon, mais j'ai la sensation qu'il s'agit plutôt d'un mécanisme de fermeture de la citadelle. Quand je l'ai utilisé, je me suis retrouvé dans un autre coin isolé de la forteresse, un balcon surplombant la galerie principale. Je sais qu'il va me falloir trouver et activer les autres machines. Je ne sais pas pourquoi, mais j'ai l'impression d'avoir déjà fait cela auparavant.~ */ GOTO 5
  IF ~~ THEN REPLY #64360 /* ~Ignore la machine.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #64355 /* ~Tu le tires facilement et, à ta grande surprise, il se transforme en une brume légère… qui se répand sur ta main qui commence à disparaître. Puis la brume recouvre ton bras et tu es pris de vertiges. Les murs disparaissent autour de toi…~ */
  IF ~  !Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64356 /* ~"Qu-"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_3","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csN0",FALSE)
~ EXIT
  IF ~  Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64357 /* ~"Qu-"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #64358 /* ~"Qu-"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~  Global("Machine_3","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #64362 /* ~Cette ancienne machine ressemble à une relique de guerre oubliée. Elle est en partie recouverte de poussière, à l'exception d'un petit panneau avec des leviers devant elle. Il n'y a aucune trace du levier que tu as tiré - il a disparu comme s'il n'avait jamais existé.~ */
  IF ~~ THEN REPLY #64363 /* ~Ignore la machine.~ */ EXIT
END
