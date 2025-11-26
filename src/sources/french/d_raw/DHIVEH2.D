// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEH2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1545 /* ~Tu vois un homme vêtu de vieilles hardes. Alors que tu t'approches de lui, il s'arrête et te fixe du regard.~ */
  IF ~~ THEN REPLY #1560 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #1561 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1546 /* ~"T'as un *problème,* bige ? Ou bien tu en *cherches* ? Il crache à tes pieds. "Casse-toi avant que je t'ajoute quelques cicatrices."~ */
  IF ~~ THEN REPLY #1562 /* ~"Du calme. J'ai juste quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #1563 /* ~Attaque-le.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1564 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1547 /* ~Il ricane. "Je n'en doute pas mais je n'ai aucune réponse à donner à ceux de ton espèce. Casse-toi !"~ */
  IF ~~ THEN REPLY #1565 /* ~Attaque-le.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1566 /* ~"Alors, au revoir."~ */ EXIT
END
