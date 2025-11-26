// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMACH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMACH1~

IF ~  Global("Machine_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64241 /* ~Cette ancienne machine ressemble à une relique de guerre oubliée. Elle est en partie recouverte de poussière, à l'exception d'un petit panneau avec des leviers, devant elle. Étrangement, quelqu'un a laissé des empreintes 'récentes' sur le sol tout autour - peut-être au cours de ces quelques dernières années…~ */
  IF ~  Global("Machine","GLOBAL",3)
~ THEN REPLY #64261 /* ~Cherche le panneau et le levier marqué d'un 'X'.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 5
  IF ~  GlobalGT("Machine","GLOBAL",0)
GlobalLT("Machine","GLOBAL",3)
~ THEN REPLY #64246 /* ~Cherche le panneau et le levier marqué d'un 'X'.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Machine","GLOBAL",0)
~ THEN REPLY #64247 /* ~Examine le panneau.~ */ GOTO 1
  IF ~~ THEN REPLY #64248 /* ~Ignore la machine.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #64242 /* ~Il y a plusieurs leviers et manettes sur le panneau - sous certains, plusieurs marques ont été rapidement gravées avec la pointe d'une dague. D'autres n'ont aucune marque, d'autres encore n'en ont qu'une et, sous l'un d'eux, est gravé un 'X'. Inconsciemment, tu sais que le levier marqué d'un 'X' peut t'aider à quitter cet endroit.~ */
  IF ~  Global("Clock_1","GLOBAL",1)
~ THEN REPLY #64249 /* ~Tire le levier marqué d'un 'X'.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64238 /* ~J'ai découvert une étrange machine à l'intérieur de la forteresse. On dirait une sorte de canon, mais j'ai la sensation qu'il s'agit plutôt d'un mécanisme de fermeture de la citadelle. Quand je l'ai utilisé, je me suis retrouvé dans un autre coin isolé de la forteresse, un balcon surplombant la galerie principale. Je sais qu'il va me falloir trouver et activer les autres machines. Peut-être la mémoire est-elle en train de me revenir. S'il faut en juger par le message inscrit sur l'horloge, une de mes incarnations a déjà subi cette épreuve.~ */ GOTO 2
  IF ~  Global("Clock_1","GLOBAL",0)
~ THEN REPLY #64250 /* ~Tire le levier marqué d'un 'X'.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64239 /* ~J'ai découvert une étrange machine à l'intérieur de la forteresse. On dirait une sorte de canon, mais j'ai la sensation qu'il s'agit plutôt d'un mécanisme de fermeture de la citadelle. Quand je l'ai utilisé, je me suis retrouvé dans un autre coin isolé de la forteresse, un balcon surplombant la galerie principale. Je sais qu'il va me falloir trouver et activer les autres machines. Je ne sais pas pourquoi, mais j'ai l'impression d'avoir déjà fait cela auparavant.~ */ GOTO 2
  IF ~~ THEN REPLY #64251 /* ~Ignore la machine.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #64243 /* ~Tu le tires facilement et, à ta grande surprise, il se transforme en une brume légère… qui se répand sur ta main qui commence à disparaître. Puis la brume recouvre ton bras et tu es pris de vertiges. Les murs disparaissent autour de toi…~ */
  IF ~  !Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64252 /* ~"Qu-"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_1","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG0",FALSE)
~ EXIT
  IF ~  Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64310 /* ~"Qu-"~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64311 /* ~"Qu-"~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~  Global("Machine_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #64244 /* ~Cette ancienne machine ressemble à une relique de guerre oubliée. Elle est en partie recouverte de poussière, à l'exception d'un petit panneau avec des leviers devant elle. Il n'y a aucune trace du levier que tu as tiré - il a disparu comme s'il n'avait jamais existé.~ */
  IF ~~ THEN REPLY #64253 /* ~Ignore la machine.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY #64245 /* ~Tu trouves rapidement le levier marqué d'un 'X' - et tu le tires sans effort. Il se transforme en une brume légère - tu prends une profonde inspiration et tu sens de nouveau la nausée t'envahir tandis que les murs disparaissent autour de toi…~ */
  IF ~  !Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64254 /* ~"Où vais-je *m-*"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_1","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG0",FALSE)
~ EXIT
  IF ~  Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64314 /* ~"Où vais-je *m-*"~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64315 /* ~"Où vais-je *m-*"~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #64255 /* ~Tu trouves rapidement le levier marqué d'un 'X' - et tu le tires sans effort. Il se transforme en une brume légère - tu prends une profonde inspiration mais, contrairement aux autres fois… rien ne se passe.~ */
  IF ~~ THEN JOURNAL #64260 /* ~Quand j'ai tiré le levier de la quatrième relique, j'ai eu l'impression qu'un passage s'ouvrait dans l'un des murs de la forteresse. S'agit-il de la sortie ? Si tel est le cas, il ne me reste plus qu'à la trouver pour pouvoir m'en aller…~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64256 /* ~Au loin, tu entends un mugissement comme si quelque chose venait d'être ouvert et qu'un vent violent s'engouffrait dans la voûte. Tandis que tu essaies de comprendre d'où vient ce bruit, tu te rends compte soudainement que tu te désagrèges et que tu te mêles au vent…~ */
  IF ~  !Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64257 /* ~"Qu'est-ce qui se passe *maintenant*… ?!"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_1","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG0",FALSE)
~ EXIT
  IF ~  Dead("Grace")
Global("Fortress_Grace","GLOBAL",1)
~ THEN REPLY #64312 /* ~"Qu'est-ce qui se passe *maintenant*… ?!"~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64313 /* ~"Qu'est-ce qui se passe *maintenant*… ?!"~ */ DO ~SetGlobal("Machine_1","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[849.1008],1)
TeleportParty("AR1201",[849.1008],14)
MoveViewPoint([849.1008],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END
