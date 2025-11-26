// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFWRK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~GFWRK~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5503 /* ~L'ouvrier tourne les talons et s'éloigne.~ */
  IF ~~ THEN REPLY #5504 /* ~Terminé.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5505 /* ~Cette personne t'ignore effrontément tandis que les gardes t'escortent vers la sortie.~ */
  IF ~~ THEN REPLY #5506 /* ~Terminé.~ */ EXIT
END

IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #5507 /* ~"J'ai entendu dire qu'on a retrouvé un poinçon d'orfèvre près du corps. Mais on en trouve partout, je suppose. Thildon est le coupable, j'en mettrais ma main à couper. Je ne connais pas de type plus mauvais à la Grande Fonderie."~ */
  IF ~~ THEN REPLY #5508 /* ~"Merci de ton aide. Mais je dois trouver des réponses à certaines questions."~ */ GOTO 3
  IF ~~ THEN REPLY #5509 /* ~"Bon. C'est tout ce que je voulais savoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.2 5.1 8.0 11.0 16.0 17.0 18.0
  SAY #5510 /* ~"Vas-y, pose tes questions."~ */
  IF ~~ THEN REPLY #5511 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #5512 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 5
  IF ~~ THEN REPLY #5513 /* ~"Qui est ton chef ?"~ */ GOTO 6
  IF ~~ THEN REPLY #5514 /* ~"Oublie ça. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #5515 /* ~"Pourquoi ? T'es avec les Preneurs ? J'ai déjà payé mes impôts."~ */
  IF ~~ THEN REPLY #5516 /* ~"Les Preneurs ? Qui ça ?"~ */ GOTO 7
  IF ~~ THEN REPLY #5517 /* ~"Non, simple curiosité. J'essayais d'être sympa."~ */ GOTO 8
  IF ~~ THEN REPLY #5518 /* ~"Laisse tomber. De toute façon, ce n'est pas ça que je voulais savoir."~ */ GOTO 3
  IF ~~ THEN REPLY #5519 /* ~"Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #5520 /* ~"Je gagne mon pain quotidien. J'essaie de m'améliorer. J'entretiens cet endroit. Je m'assure que le matériel arrive aux ouvriers quand ils en ont besoin. Je m'assure que le produit fini est livré où il doit l'être… Bref, je fais mon travail."~ */
  IF ~~ THEN REPLY #5521 /* ~"Donc, ton travail, c'est surtout le nettoyage et les corvées de bidasse ?"~ */ GOTO 9
  IF ~~ THEN REPLY #5522 /* ~"Je vois. J'ai une autre question à te poser."~ */ GOTO 3
  IF ~~ THEN REPLY #5523 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #5524 /* ~"Pourquoi ? Tu travailles pour lui ?~ */
  IF ~~ THEN REPLY #5525 /* ~"Hum… oui."~ */ GOTO 10
  IF ~~ THEN REPLY #5526 /* ~"Tu plaisantes ?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 4.0
  SAY #5527 /* ~"Tu sais… les percepteurs de la cité ? Alors, béjaune ? Je dois retourner travailler."~ */
  IF ~~ THEN REPLY #5528 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #5529 /* ~"J'ai pas vraiment le temps de me montrer amical, surtout avec le chef toujours derrière mon dos. On est occupé, en ce moment. Pourquoi ne reviendrais-tu pas une fois ce projet terminé ?"~ */
  IF ~~ THEN REPLY #5530 /* ~"Très bien. Tu peux peut-être répondre à une autre question."~ */ GOTO 3
  IF ~~ THEN REPLY #5531 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #5532 /* ~"Dans ce cas… Maintenant que j'en sais plus sur les Hommes-Dieux, je pense que c'est une question d'opiniâtreté. Ma vie entière est une question d'opiniâtreté."~ */
  IF ~~ THEN REPLY #5533 /* ~"Pourquoi ne pas considérer ça comme un test d'intelligence et partir ?"~ */ GOTO 12
  IF ~~ THEN REPLY #5534 /* ~"Est-ce que ça t'avance vraiment ?"~ */ GOTO 13
  IF ~~ THEN REPLY #5535 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #5536 /* ~"Dans ce cas, il est le sel de cette terre. Un vrai gentleman. Je n'arrive pas à trouver les mots, si ce n'est que je dois me remettre au travail. Au revoir." L'ouvrier s'en va en ignorant tes appels.~ */
  IF ~~ THEN REPLY #5537 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY #5538 /* ~"C'est l'un des pires enfoirés que j'aie jamais rencontrés… et j'ai grandi dans la Ruche où c'est pas ce qui manquait. J'espère qu'il va se faire tuer… de manière horrible et douloureuse. Ceci dit, c'est le souhait de la plupart des ouvriers."~ */
  IF ~~ THEN REPLY #5539 /* ~"Je vois. Réponds à d'autres questions pour moi."~ */ GOTO 3
  IF ~~ THEN REPLY #5540 /* ~"Compris. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #5541 /* ~"Partir pour aller où ? Qui va m'embaucher ? Le système a fait en sorte que je ne puisse faire qu'un boulot de subalterne parce que je suis né dans la Ruche. Eh bien, j'suis pas mécontent d'être arrivé jusqu'ici. À moins qu'tu puisses m'offrir une meilleure place, j'me contente de c'que j'ai. C'est mieux que d'crever d'faim."~ */
  IF ~~ THEN REPLY #5542 /* ~"Oh, tu ne crois pas que tu peux arriver à tout si tu t'en donnes la peine ?"~ */ GOTO 14
  IF ~~ THEN REPLY #5543 /* ~"C'est convaincant. Mais tu ne crois pas que tu pourrais faire mieux ?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY #5544 /* ~"Bizarrement, oui. Ça me donne l'espoir d'améliorer ma condition, dans cette vie ou la suivante. Peut-être que je nie l'évidence, mais laisse-moi t'dire que, quand t'as mordu la poussière comme je l'ai fait, tu apprécies la moindre fleur que te fait la vie. C'est pas toujours rose pour les petites gens, bige." L'ouvrier s'écarte. "J'dois retourner travailler. Au revoir."~ */
  IF ~~ THEN REPLY #5545 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #5546 /* ~"Quoi, pour finir avec ta tête de zombi ? Non merci. J'sais pas c'que t'as fait, mais j'suis bien où j'suis. Je crois plus à une progression lente dans la vie. Maintenant, si tu veux bien m'excuser, faut que j'retourne travailler." L'ouvrier s'éloigne en t'ignorant.~ */
  IF ~~ THEN REPLY #5547 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY #5548 /* ~"Tu sais quoi… tu vis ta vie et moi la mienne. D'accord ? Il faut que je retourne travailler." L'ouvrier s'en va en t'ignorant.~ */
  IF ~~ THEN REPLY #5549 /* ~Pars.~ */ EXIT
END

IF ~  GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 16 // from:
  SAY #5550 /* ~"Je vais te dire, avec tout ce qui se passe par ici ces temps-ci, je sais plus où j'en suis. C'est comme si j'avais jamais quitté la Ruche… comment est-ce que je peux t'aider ?"~ */
  IF ~~ THEN REPLY #5551 /* ~"Tu peux répondre à quelques questions pour moi."~ */ GOTO 3
  IF ~~ THEN REPLY #5552 /* ~"Tu ne peux pas. Laisse tomber."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #5553 /* ~Tu aperçois un pauvre habitant de la Ruche qui transporte des caisses. On ne peut même pas déterminer le sexe de ce pauvre bougre. "Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #5554 /* ~"Juste quelques réponses."~ */ GOTO 3
  IF ~~ THEN REPLY #5555 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #5556 /* ~"Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #5557 /* ~"Juste quelques réponses."~ */ GOTO 3
  IF ~~ THEN REPLY #5558 /* ~"Rien."~ */ EXIT
END
