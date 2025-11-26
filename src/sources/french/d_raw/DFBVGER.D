// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFBVGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFBVGER~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20029 /* ~La femme exténuée jette un regard dans ta direction, la terreur se lisant sur son visage, et déguerpit avant que tu aies le temps de lui parler.~ */
  IF ~~ THEN REPLY #20030 /* ~"Alors, salut…"~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #20031 /* ~La femme te regarde avec crainte, ses yeux grands ouverts. "Ne t'approche pas, bige, et il ne te sera fait aucun mal !"~ */
  IF ~~ THEN REPLY #20032 /* ~"Calme-toi. Je voulais juste savoir qui tu étais."~ */ GOTO 2
  IF ~~ THEN REPLY #20033 /* ~"Hé, cool. Qu'est-ce que tu fais ?"~ */ GOTO 4
  IF ~~ THEN REPLY #20034 /* ~"De quoi tu as si peur ?"~ */ GOTO 5
  IF ~~ THEN REPLY #20035 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #20036 /* ~"Qui je suis ?" Elle rit amèrement. "C'est comme de d'mander le nom d'un grain de sable, matois, car c'est à peu près toute l'importance que j'ai ici."~ */
  IF ~~ THEN REPLY #20037 /* ~"C'est un point de vue intéressant. J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #20038 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 5.2 6.0 7.0 8.0
  SAY #20039 /* ~"Vas-y… qu'est-ce que tu voulais savoir ?"~ */
  IF ~~ THEN REPLY #20040 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #20041 /* ~"Que fais-tu ?"~ */ GOTO 4
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #20042 /* ~"De quoi tu as peur ?"~ */ GOTO 5
  IF ~~ THEN REPLY #20043 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 3.1
  SAY #20044 /* ~"Qu'est-ce que je fais ? Bof, j'tente juste de gratter quelques revenus supplémentaires sous le Square du Chiffonnier et de rester à l'écart de ceux qui m'ont mis ici. Voilà ce que je fais."~ */
  IF ~~ THEN REPLY #20045 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #20046 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 3.2
  SAY #20047 /* ~"J'veux juste être sûre que tu n'es pas une de ces créatures qui a mis Pharod en pièces."~ */
  IF ~~ THEN REPLY #20048 /* ~"Des créatures ? Quelles créatures ?"~ */ GOTO 6
  IF ~~ THEN REPLY #20049 /* ~"Pharod est mort ?"~ */ GOTO 6
  IF ~~ THEN REPLY #20050 /* ~"J'ai d'autres questions, alors…"~ */ GOTO 3
  IF ~~ THEN REPLY #20051 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #20052 /* ~"Ah, c'étaient des créatures de la nuit et de l'obscurité, des créatures de non-lumière, qui se sont froidement insinuées ici et ont disparu dans la cour de Pharod. Les échos des hurlements persistent encore, on dirait…"~ */
  IF ~~ THEN REPLY #20053 /* ~"Très bien. Alors, parle-moi d'autre chose…"~ */ GOTO 3
  IF ~~ THEN REPLY #20054 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #20055 /* ~Elle essuie son nez qui coule sur sa manche. "Qu'est-ce qu'tu veux cette fois ?"~ */
  IF ~~ THEN REPLY #20056 /* ~"Je voulais quelques réponses."~ */ GOTO 3
  IF ~~ THEN REPLY #20057 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #20058 /* ~Tu aperçois une femme exténuée, au visage rongé par les soucis et les cicatrices accumulées au cours des années. Ses yeux sont fatigués et elle renifle en parlant : "Qu'est-ce que tu veux de moi ?"~ */
  IF ~~ THEN REPLY #20059 /* ~"Réponds juste à quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #20060 /* ~"Rien. Au revoir."~ */ EXIT
END
