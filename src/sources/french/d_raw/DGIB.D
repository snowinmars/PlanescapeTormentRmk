// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGIB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGIB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58400 /* ~Tu aperçois un vieil homme vêtu pauvrement. Il te regarde approcher d'un air las.~ */
  IF ~~ THEN REPLY #58402 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #58403 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58405 /* ~Il continue à t'observer d'un regard las. Il hoche finalement la tête. "Salut, matois. Pourquoi tu viens branler ton râtelier devant moi ?"~ */
  IF ~~ THEN REPLY #58407 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58412 /* ~"Sans raison particulière. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58414 /* ~Il hoche doucement la tête et détourne le regard. "Eh bien… j'suis dans c'trou paumé parce que j'ai volé ce qui m'appartenait pas, pas parce que j'ai répondu à des questions stupides…" Il te regarde, l'air furieux. "Fiche le camp."~ */
  IF ~~ THEN REPLY #58416 /* ~"La vie doit être difficile, ici. Elle serait encore plus dure si tu étais estropié."~ */ GOTO 3
  IF ~~ THEN REPLY #58417 /* ~"Dans ce cas, je crois que je vais partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58419 /* ~Il fronce les sourcils et réfléchit à tes propos. Il suit tes cicatrices du regard puis te fixe droit dans les yeux. "C'est une menace, bige ?"~ */
  IF ~~ THEN REPLY #58421 /* ~"Oui. Réponds à quelques questions ou je commencerai à te découper en plusieurs morceaux, un par un."~ */ GOTO 4
  IF ~~ THEN REPLY #58422 /* ~"Non, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1 6.1 7.0 8.0 9.2 10.1 11.0 12.1 13.1 14.0
  SAY #58424 /* ~Il acquiesce lentement. "Quelles questions ?"~ */
  IF ~~ THEN REPLY #58426 /* ~"Qui es-tu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #58428 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 8
  IF ~~ THEN REPLY #58430 /* ~"Je cherche un deva, et j'ai cru comprendre qu'il était ici."~ */ GOTO 9
  IF ~~ THEN REPLY #58432 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58433 /* ~Il hésite. "Gib… j'm'appelle Gib."~ */
  IF ~~ THEN REPLY #58435 /* ~"Pourquoi es-tu ici ?"~ */ GOTO 6
  IF ~~ THEN REPLY #58437 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58438 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58440 /* ~"Tu m'écoutes, oui ou non ? J'ai dit que j'étais un voleur. J'suis ici parce que j'me suis fait attraper." Il sourit. "Si tu veux m'forcer à répondre à tes questions, fais au moins en sorte qu'elles soient pas complètement idiotes."~ */
  IF ~~ THEN REPLY #58441 /* ~"Ça n'est pas non plus très intelligent de faire le malin avec moi…"~ */ GOTO 7
  IF ~~ THEN REPLY #58442 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58444 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58446 /* ~Il hausse les épaules.~ */
  IF ~~ THEN REPLY #58447 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58449 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #58450 /* ~"La prison est divisée en trois anneaux, l'anneau extérieur, le central et l'intérieur. Ça c'est l'anneau extérieur, pour les criminels de droit commun, comme les voleurs. L'anneau central est pour les criminels plus endurcis, les brutes et autres. L'anneau intérieur est pour les criminels les plus dangereux, les meurtriers, les conspirateurs, les ennemis du gouvernement et les autres."~ */
  IF ~~ THEN REPLY #58451 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58452 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #58454 /* ~Il te jette un regard inquiet. "Ton deva… il est ici. Mais tu devrais peut-être réfléchir avant de le chercher."~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #58456 /* ~"À cause de la peste ?"~ */ GOTO 10
  IF ~  Global("Know_Plague","GLOBAL",0)
~ THEN REPLY #58458 /* ~"Pourquoi ça ?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #58460 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58462 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58464 /* ~Il hoche la tête. "T'es au courant, alors… oui, la peste. Elle nous a frappés brusquement et durement, et la plupart d'entre nous se sont retrouvés dans le livre des morts." Il fronce les sourcils. "Si les gens savent que tu es allé le voir, ils t'éviteront…"~ */
  IF ~~ THEN REPLY #58466 /* ~"Où est-il ?"~ */ GOTO 11
  IF ~~ THEN REPLY #58467 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58468 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 13.0
  SAY #58470 /* ~"De ce côté…" Elle indique vaguement une direction. "Tu finiras par le rencontrer."~ */
  IF ~~ THEN REPLY #58471 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58473 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #58474 /* ~"La chanson veut qu'il soit porteur de la peste." Il observe ta réaction, puis hausse les épaules. "Je sais pas si c'est le cas, mais la peste s'est déclarée quand il s'est pointé."~ */
  IF ~~ THEN REPLY #58476 /* ~"Dis-m'en un peu plus sur cette peste."~ */ GOTO 13
  IF ~~ THEN REPLY #58477 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58479 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #58481 /* ~"Elle nous a frappés brusquement et durement, et la plupart d'entre nous se sont retrouvés dans le livre des morts." Il fronce les sourcils. "Si les gens savent que tu es allé voir le deva, ils t'éviteront…"~ */
  IF ~~ THEN REPLY #58483 /* ~"Où est-ce que je peux le trouver ?"~ */ GOTO 11
  IF ~~ THEN REPLY #58484 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58485 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #58487 /* ~Tu aperçois Gib, le voleur. Il fronce les sourcils à ton approche. "De retour… super."~ */
  IF ~~ THEN REPLY #58490 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58492 /* ~"Au revoir."~ */ EXIT
END
