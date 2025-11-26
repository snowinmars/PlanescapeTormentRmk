// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEH1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1542 /* ~Tu vois un homme vêtu de vieilles hardes. Alors que tu t'approches de lui, il fait un détour pour t'éviter et continue à marcher.~ */
  IF ~~ THEN REPLY #1549 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #1548 /* ~"Hé ! Attends une seconde !"~ */ GOTO 1
  IF ~~ THEN REPLY #1550 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1543 /* ~L'homme t'ignore et accélère le pas.~ */
  IF ~~ THEN REPLY #1551 /* ~"Monsieur ?"~ */ GOTO 2
  IF ~~ THEN REPLY #1552 /* ~"Hé ! Attends une seconde !"~ */ GOTO 2
  IF ~~ THEN REPLY #1553 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #1544 /* ~Il se retourne et lance un regard furtif de gauche à droite comme pour vérifier que tu n'es pas accompagné. Il tire un poignard. "Tu ferais mieux de me laisser tranquille ou je te plante cette lame entre les côtes."~ */
  IF ~~ THEN REPLY #1554 /* ~"Du calme. J'ai juste quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #1555 /* ~Attaque-le.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1556 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1557 /* ~Il ricane. "Je n'en doute pas mais je n'ai aucune réponse à donner à ceux de ton espèce. Casse-toi !"~ */
  IF ~~ THEN REPLY #1558 /* ~Attaque-le.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1559 /* ~"Alors, au revoir."~ */ EXIT
END
