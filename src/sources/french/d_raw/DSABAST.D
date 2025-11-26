// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSABAST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSABAST~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #6 /* Triggers after states #: 37 38 39 40 60 43 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37465 /* ~Tu aperçois un vieil homme vêtu d'une robe élégante. Il a un regard et un sourire chaleureux. Il fait une légère révérence en te voyant. "Bonjour, matois. Je suis Sébastion, que puis-je pour toi ?"~ */
  IF ~~ THEN REPLY #37466 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37467 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 60.0
  SAY #37468 /* ~"Bonjour à toi, matois…" Il s'arrête au milieu de sa phrase à la vue de tes cicatrices. Il les parcourt des yeux et lève les sourcils en signe d'étonnement, puis te dévisage. "J'allais te demander ce que je pouvais faire pour toi, mais pas besoin. Je crois savoir pourquoi tu viens à moi, matois."~ */
  IF ~~ THEN REPLY #37469 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37470 /* ~"En fait, je voudrais te parler d'Arbresombre."~ */ GOTO 20
  IF ~  Global("Snuff_Grosuk","GLOBAL",0)
~ THEN REPLY #37471 /* ~"Comment… Tu veux dire que tu peux t'occuper de mes cicatrices ?"~ */ GOTO 28
  IF ~~ THEN REPLY #37472 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.1 5.1 6.2 7.1 8.2 9.1 11.1 14.1 15.0 16.0 18.1 19.1 28.1 29.1 30.1 35.1 36.0 45.0 50.1 51.1 52.0 53.0 55.0 56.1 58.0
  SAY #37473 /* ~Son sourire s'élargit et il te fait une légère révérence. "Demande, matois."~ */
  IF ~~ THEN REPLY #37474 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #37475 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 6
  IF ~~ THEN REPLY #37476 /* ~"Qu'est-ce qui se passe dans le coin ?"~ */ GOTO 16
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37477 /* ~"J'avais un crâne parlant, mais il a été kidnappé. Tu peux m'aider ?"~ */ GOTO 17
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37478 /* ~"En fait, je voudrais te parler d'Arbresombre."~ */ GOTO 20
  IF ~  GlobalLT("Snuff_Grosuk","GLOBAL",1)
~ THEN REPLY #37479 /* ~"J'ai l'impression que tu peux t'occuper de mes cicatrices."~ */ GOTO 28
  IF ~~ THEN REPLY #37480 /* ~"Il faut que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37481 /* ~"Je suis Sébastion, un… mage en quelque sorte. Je travaille pour ceux qui peuvent se permettre mes services."~ */
  IF ~~ THEN REPLY #37482 /* ~"Quel genre de travail ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37483 /* ~"Tu hésites à employer le mot *mage*. Pourquoi ?"~ */ GOTO 5
  IF ~~ THEN REPLY #37484 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37485 /* ~"Il faut que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37486 /* ~Il te fait un léger sourire, puis hausse les épaules. "Travail confidentiel, matois. Je suis connu pour ma discrétion et le respect de ma parole. Les gens m'adressent des requêtes. Si je peux y répondre, je le fais. Sinon, je ne fais rien. Dans les deux cas, je garde le silence."~ */
  IF ~~ THEN REPLY #37487 /* ~"Tu hésites à employer le mot *mage*. Pourquoi ?"~ */ GOTO 5
  IF ~~ THEN REPLY #37488 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37489 /* ~"Il faut que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #37490 /* ~Il secoue la tête. "Oui… je ne suis pas un mage, matois, mais je peux utiliser l'Art à ma manière. J'ai renoncé à l'étude académique de la magie et suivi ma propre voie." Il s'interrompt et hausse les épaules. "Il est plus facile de m'appeler mage que de discuter du problème."~ */
  IF ~~ THEN REPLY #37491 /* ~"Quel genre de travail tu fais ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37492 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37493 /* ~"Il faut que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #37494 /* ~Il te jette un regard interrogateur. "Veux-tu parler de ce marché ou de ce quartier de Sigil ?"~ */
  IF ~~ THEN REPLY #37495 /* ~"Le marché."~ */ GOTO 7
  IF ~~ THEN REPLY #37496 /* ~"Ce quartier."~ */ GOTO 8
  IF ~~ THEN REPLY #37497 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37498 /* ~"Il faut que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #37499 /* ~"C'est un marché ordinaire, matois. Il y a beaucoup de choses à vendre, ici. Sorts, potions, informations, femmes, hommes… À peu près tout, si tu peux en payer le prix."~ */
  IF ~~ THEN REPLY #37500 /* ~"Parle-moi de ce quartier."~ */ GOTO 8
  IF ~~ THEN REPLY #37501 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37502 /* ~"Il faut que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #37503 /* ~"Voici le Bas Quartier, matois, zone industrielle de Sigil et domaine des gens ordinaires. Sans être le quartier pauvre de la Ruche, il n'a pas non plus la splendeur du quartier de La Dame."~ */
  IF ~~ THEN REPLY #37504 /* ~"Parle-moi du marché."~ */ GOTO 7
  IF ~~ THEN REPLY #37506 /* ~"Pourquoi ça s'appelle le Bas Quartier ?"~ */ GOTO 9
  IF ~~ THEN REPLY #37507 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37508 /* ~"Il faut que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #37509 /* ~Bref éclat de rire et il hausse les épaules. "Ça dépend de quel point de vue, matois. Les riches prétendent que c'est à cause de la faune qui vit là : les gens ordinaires ou les classes *inférieures*. Mais à en croire ceux qui vivent ici, c'est à cause des portails… et de l'incident."~ */
  IF ~~ THEN REPLY #37510 /* ~"L'incident ?"~ */ GOTO 10
  IF ~~ THEN REPLY #37511 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37512 /* ~"Il faut que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #37513 /* ~"Oui…" Il fronce les sourcils et réfléchit. "Il y a fort longtemps, on l'appelait le Quartier Primaire. C'est là qu'on plaçait les nouveaux arrivants à Sigil. Ils n'avaient pas le droit d'en sortir. Bien d'autres restrictions pesaient sur eux… Et puis un bige s'en est offensé et a décidé de fomenter une rébellion. Ça n'a rien donné, bien sûr, jusqu'au jour où il a fait une extraordinaire découverte…"~ */
  IF ~~ THEN REPLY #37514 /* ~"Continue."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #37515 /* ~"Tu vois, il y a beaucoup de portails dans cette zone de la cité et la plupart ouvrent sur les Plans Inférieurs. Eh bien, ce bige azimuté a trouvé le moyen de tous les ouvrir en même temps. Il a permis à *tout* ce qui le voulait de venir dans la cité à travers les portails. Ça a été assez sanglant. Une terrible guerre en a résulté. Quoi qu'il en soit, c'est pour ça qu'ici, ça s'appelle le *bas* quartier. À cause des portails."~ */
  IF ~~ THEN REPLY #37516 /* ~"Sébastion, comment cette personne a-t-elle ouvert toutes les portes ?"~ */ GOTO 12
  IF ~~ THEN REPLY #37517 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37518 /* ~"Il faut que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #37519 /* ~"Il a utilisé un objet qu'il avait soit commandé, soit fabriqué lui-même. Comment cela s'appelait…" Il s'interrompt pour réfléchir un instant. "Ah, je me souviens, la Clé Ensorcelée des Ombres…" À ces mots, ta tête se met à tourner, le monde autour de toi se fige et tout devient gris. Tu sens un souvenir essayant de s'imposer à ton conscient.~ */
  IF ~  Global("Shadow_Key_Mem","GLOBAL",0)
~ THEN REPLY #37520 /* ~Détends-toi et laisse-le venir.~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetGlobal("Shadow_Key_Mem","GLOBAL",1)
GiveExperience(Protagonist,500)
~ JOURNAL #37522 /* ~Je me souviens d'un détail sur une révolte qui a eu lieu dans le Bas Quartier. Mais je ne sais plus si c'est moi qui l'ai provoquée ou si j'y ai joué un rôle très important.~ */ GOTO 46
  IF ~  Global("Shadow_Key_Mem","GLOBAL",1)
~ THEN REPLY #37521 /* ~Détends-toi et laisse venir.~ */ GOTO 46
  IF ~~ THEN REPLY #65508 /* ~Concentre-toi et refoule le souvenir.~ */ GOTO 56
END

IF ~~ THEN BEGIN 13 // from: 50.0 56.0
  SAY #37523 /* ~Il hausse les épaules. "Personne ne le sait. La clé a été perdue depuis pas mal de temps, maintenant. Beaucoup pensent que la Dame des Douleurs l'a prise pour empêcher qu'elle soit à nouveau utilisée."~ */
  IF ~~ THEN REPLY #37524 /* ~"Et comment s'est terminée la rébellion ?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #37525 /* ~Il réfléchit un instant. "Et bien… Tout le monde, excepté le chef, s'est vu attribuer une page dans le livre des morts. Le chef et les créatures ont disparu un beau jour, sûrement à cause de la Dame. Les survivants ont fui le quartier. Les fumées des Plans Inférieurs avaient pollué l'air, vois-tu. Bref, le Quartier est resté désert jusqu'à ce que la Fonderie soit construite."~ */
  IF ~~ THEN REPLY #37526 /* ~"Qu'est-ce que tu peux me dire sur la Fonderie ?"~ */ GOTO 15
  IF ~~ THEN REPLY #37527 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37528 /* ~"Il faut que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #37529 /* ~Il fronce les sourcils. "C'est le domaine des Hommes-Dieux, matois. Si tu as des questions sur eux, je te suggère de t'adresser à la Fonderie."~ */
  IF ~~ THEN REPLY #37530 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37531 /* ~"Il faut que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.2
  SAY #37532 /* ~Il te regarde d'un air soupçonneux. "Que veux-tu dire matois ?" Il regarde alentour et étend les bras comme pour embrasser tout le quartier. "La vie, matois. La vie comme d'habitude, rien d'autre."~ */
  IF ~~ THEN REPLY #37533 /* ~"Très bien, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37534 /* ~"Il faut que je parte, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3
  SAY #37535 /* ~Il te fixe un certain temps avant de répondre. "Un crâne… eh bien, si je devais risquer une réponse, je dirais que ton crâne est à présent entre les mains du Maître des Os. En clair, tu ferais mieux de te chercher un autre crâne, matois."~ */
  IF ~~ THEN REPLY #37536 /* ~"Qu'est-ce que tu peux me dire sur le Maître des Os ?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #37537 /* ~"Où est-ce que je peux trouver ce Maître des Os ?"~ */ GOTO 19
  IF ~~ THEN REPLY #37538 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.0
  SAY #37539 /* ~Il fronce les sourcils et regarde autour de lui pendant un moment. "Son nom est Lothar, et il n'aime pas qu'on s'occupe de ses affaires. Je ne sais rien de lui et je ne peux rien dire à son sujet." Tu vois une lueur de crainte passer dans ses yeux. "Parlons d'autre chose, matois."~ */
  IF ~~ THEN REPLY #37540 /* ~"Où est-ce que je peux trouver ce Maître des Os ?"~ */ GOTO 19
  IF ~~ THEN REPLY #37541 /* ~"Très bien, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37542 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #37543 /* ~Il jette autour de lui des regards gênés. "Une maison délabrée dans ce quartier mène à son domaine. Je ne sais rien de plus." Tu vois une lueur de crainte passer dans ses yeux. "Parlons d'autre chose, matois."~ */
  IF ~~ THEN REPLY #37544 /* ~"Qu'est-ce que tu peux me dire sur le Maître des Os ?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #37545 /* ~"Très bien, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37546 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.1 2.4 37.0 38.0 39.0 43.0
  SAY #37547 /* ~Il te dévisage un instant, puis soupire. "Qu'est-ce qu'il a, Arbresombre, matois ?"~ */
  IF ~~ THEN REPLY #37548 /* ~"Il veut que le maléfice qui l'a frappé soit levé."~ */ GOTO 21
  IF ~~ THEN REPLY #37549 /* ~"Je voulais juste te complimenter pour ton travail."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_2","GLOBALLaw",-1)
~ GOTO 51
  IF ~~ THEN REPLY #37550 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #37551 /* ~Il te regarde avec étonnement, puis te fait signe de partir. "J'ai du mal à le croire, matois. Arbresombre n'a pas la volonté de désirer quoi que ce soit." Il fronce les sourcils un instant. "C'est ce sot de Hamrys qui t'a fourré dans cette histoire ?"~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #37552 /* ~"Non."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #37554 /* ~"Réfléchis, Sébastion. Hamrys ne sait pas qu'Arbresombre est un zombi, et encore moins qui l'a créé. On est d'accord ?"~ */ GOTO 23
  IF ~~ THEN REPLY #37555 /* ~"Quelle différence ça fait ?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #37556 /* ~Il te regarde en réfléchissant. "Hmmm. Hamrys est un sans cervelle, je doute qu'il ait pu comprendre qui a fait ça." Il soupire et hausse les épaules d'un air exaspéré. "Ce qui signifie que ce pauvre Arbresombre est plus conscient que je ne le pensais." Il détourne le regard et semble perdu dans ses pensées.~ */
  IF ~~ THEN REPLY #37557 /* ~"Alors, tu vas le délivrer ?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY #37558 /* ~Il soupire et semble perdu dans ses pensées. "Oui… tu as raison, bien sûr. Hamrys n'aurait pas pu t'envoyer. J'imagine que ce pauvre Arbresombre est plus conscient que je ne l'ai voulu. Maudite soit ma stupidité !"~ */
  IF ~~ THEN REPLY #37559 /* ~"Alors, tu vas le délivrer ?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.0 54.0
  SAY #37560 /* ~Il te regarde un instant, des émotions diverses parcourant son visage. Il soupire et lève les bras dans un geste d'impuissance. "Je ne peux pas, désolé." Il te regarde d'un air suppliant. "Je voudrais bien, mais je ne peux pas. J'ai rempli un contrat en créant Arbresombre et je ne peux pas le rompre, qu'il soit juste ou injuste. Je suis un homme de parole, ma réputation l'exige."~ */
  IF ~~ THEN REPLY #37561 /* ~Vérité : "Je comprends ton dilemme et je suis d'accord avec toi. Et si c'était moi qui le délivrais ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sebastion_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #37562 /* ~Vérité : "Je me fiche des contrats. Ce que tu as fait est mal et il doit être libéré."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #37563 /* ~"Avec qui tu as passé ce contrat ? Je peux peut-être aller les voir pour leur demander de le libérer."~ */ GOTO 27
  IF ~~ THEN REPLY #37564 /* ~"Ouais. Enfin, ça m'est égal. J'ai juste accepté d'essayer de l'aider. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 27.0 27.1
  SAY #37565 /* ~"Cela serait difficile…" Il se tourne et commence à regarder dans une boîte à ses côtés. Après un instant, il sort un livre qu'il pose devant toi. "Tout d'abord, il faut que tu aies certaines aptitudes à la magie. Ensuite, il faut que tu sois capable de prononcer correctement les mots qui sont inscrits sur la page vingt-trois de ce livre."~ */
  IF ~~ THEN REPLY #37566 /* ~"Continue."~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #37567 /* ~"Enfin, il faut que tu touches Arbresombre lorsque tu sens le pouvoir des mots culminer en toi." Il te tourne le dos et fouille dans une autre boîte. "Je ne peux toutefois pas te permettre de lire ce livre. Ça équivaudrait à me parjurer au travers des actions d'un autre." Il continue à fouiller dans la boîte en t'ignorant.~ */
  IF ~~ THEN REPLY #37569 /* ~Lis le livre et pars.~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",4)
AddexperienceParty(4000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #37571 /* ~J'ai appris l'incantation dont j'avais besoin pour libérer Arbresombre le zombi. Sébastion m'a permis de l'apprendre sur son livre, bien qu'il ait fait semblant de ne pas remarquer ce que je faisais.~ */ EXIT
  IF ~~ THEN REPLY #37570 /* ~Ignore le livre et pars.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY #37572 /* ~Il te sourit. "La magie m'interdit de révéler ce genre d'informations, matois. C'est pour cela que les gens viennent à moi. Ils savent que si j'accepte un contrat, il sera rempli avec discrétion."~ */
  IF ~~ THEN REPLY #37573 /* ~Vérité : "Je comprends, c'est comme ça qu'on fait des affaires. Et si c'était moi qui le délivrais ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sebastion_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #37574 /* ~Vérité : "Je me fiche des contrats. Ce que tu as fait est mal et il doit être libéré."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #37575 /* ~"Peu importe. Je ne veux pas vraiment m'occuper de ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 1.2 2.5
  SAY #37576 /* ~Il te sourit et hausse les épaules. "Peut-être, matois, peut-être." Il se penche et examine tes cicatrices avec attention. Il passe le doigt sur certaines, en marmonnant. Il lève finalement les yeux vers toi. "Oui, matois, je peux t'aider. Je ne peux pas te guérir, mais je peux en partie soulager ta… condition."~ */
  IF ~~ THEN REPLY #37577 /* ~"Et quel est ton prix ?"~ */ GOTO 29
  IF ~~ THEN REPLY #37578 /* ~"Ouais, c'est ça. J'ai quelques questions à te poser…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #37580 /* ~"Ah, oui… le prix." Il commence à tapoter son menton et te regarde fixement. Tu as l'impression qu'il est en train de t'évaluer. Il semble avoir pris une décision. "Il y a une tâche que j'aimerais que tu exécutes."~ */
  IF ~~ THEN REPLY #37581 /* ~"Continue."~ */ GOTO 30
  IF ~~ THEN REPLY #37582 /* ~"Laisse tomber. J'ai d'autres questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #37583 /* ~"Ça ne m'intéresse pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #37584 /* ~"J'ai signé un contrat avec une certaine créature. Je ne peux plus remplir ce contrat, car le faire signifierait ma mort, mais la créature ne veut pas m'en décharger. Elle m'a menacé de mort, à moins que je ne remplisse le contrat."~ */
  IF ~~ THEN REPLY #37585 /* ~"Laisse-moi deviner : tu veux que je règle ce problème pour toi."~ */ GOTO 31
  IF ~~ THEN REPLY #37587 /* ~"Ça ne m'intéresse pas. J'ai des questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #37589 /* ~"Je n'aime pas la tournure que prennent les choses. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #37591 /* ~Il soupire. "Oui. Je ne peux pas le faire moi-même. Ma réputation exige que je remplisse le contrat ou que je fasse face aux conséquences. Je suis à ta merci à cet égard. M'aideras-tu ?"~ */
  IF ~~ THEN REPLY #37593 /* ~"De quel genre de créature il s'agit ?"~ */ GOTO 32
  IF ~~ THEN REPLY #37595 /* ~"Quels sont les termes de ton contrat ?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.0 33.0
  SAY #37597 /* ~"Un abishaï nommé Grosuk, matois." Il s'arrête pour juger de ta réaction. "Une tâche difficile, je sais, mais je crois que tu es à la hauteur… Et la récompense que je t'offre est de taille." Il indique tes cicatrices.~ */
  IF ~~ THEN REPLY #37599 /* ~"Quels sont les termes de ton contrat ?"~ */ GOTO 33
  IF ~~ THEN REPLY #37600 /* ~"Je vois, c'est une proposition intéressante."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0
  SAY #37601 /* ~Il secoue la tête. "La magie m'interdit de révéler ce genre d'informations, matois. C'est pour cela que les gens viennent à moi. Ils savent que si j'accepte un contrat, il sera rempli avec discrétion."~ */
  IF ~~ THEN REPLY #37602 /* ~"De quel genre de créature il s'agit ?"~ */ GOTO 32
  IF ~~ THEN REPLY #37603 /* ~"Je vois, c'est une proposition intéressante."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 32.1 33.1
  SAY #37604 /* ~Il te regarde avec espoir. "Alors, matois, tu le feras ?"~ */
  IF ~  Global("Grosuk_DEAD_KAPUTZ","GLOBAL",1)
~ THEN REPLY #37605 /* ~"Je l'ai déjà tué."~ */ JOURNAL #37609 /* ~Un mage du nom de Sébastion voulait que je tue un abishaï. En échange, il était prêt à m'aider avec mes cicatrices. Heureusement, je l'avais déjà fait et pour me montrer sa gratitude, Sébastion m'a quand même aidé.~ */ GOTO 57
  IF ~~ THEN REPLY #37606 /* ~"Oui, explique-moi ça en détails."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ JOURNAL #37610 /* ~Un mage du nom de Sébastion veut que je tue un abishaï. En échange, il m'aidera avec mes cicatrices. J'ai accepté le marché.~ */ GOTO 35
  IF ~~ THEN REPLY #37607 /* ~"Non, je ne veux pas être mêlé à ça."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",2)
~ GOTO 36
  IF ~~ THEN REPLY #37608 /* ~"Je ne sais pas, je vais réfléchir."~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY #37611 /* ~Il te sourit et pousse un soupir de soulagement. "Merci, matois. Cette créature est un abishaï appelé Grosuk. Il te faudra une arme magique pour le blesser, va voir si les échoppes n'en ont pas à vendre. Un jeteur de sorts te serait utile, aussi. Grosuk se trouve à l'est, au-delà de la tour de siège. "~ */
  IF ~~ THEN REPLY #37612 /* ~"La tour de siège ?"~ */ GOTO 55
  IF ~~ THEN REPLY #37613 /* ~"D'accord, mais j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37614 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.2 34.3
  SAY #37615 /* ~Il essaie de te cacher sa déception par un sourire. "Je comprends, matois. Y a-t-il autre chose que je puisse faire pour toi ?"~ */
  IF ~~ THEN REPLY #37616 /* ~"Oui, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37617 /* ~"Non, au revoir."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 38 39 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",1)
~ THEN BEGIN 37 // from:
  SAY #37618 /* ~Sébastion sourit en te voyant arriver. "Bonjour, matois. Tu as étudié ma proposition et décidé d'accepter ?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37619 /* ~"En fait, je voudrais te parler d'Arbresombre."~ */ GOTO 20
  IF ~~ THEN REPLY #37620 /* ~"Oui, explique-moi ça en détails."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #37621 /* ~"J'y réfléchis toujours. Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 39 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #37622 /* ~Sébastion sourit en te voyant arriver. "Bonjour, matois. Je t'en prie, dis-moi que tu as changé d'avis et que tu vas m'aider à résoudre mon problème."~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37623 /* ~"En fait, je voudrais te parler d'Arbresombre."~ */ GOTO 20
  IF ~~ THEN REPLY #37624 /* ~"Oui, explique-moi ça en détails."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #37625 /* ~"Non. Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN BEGIN 39 // from:
  SAY #37626 /* ~Sébastion sourit en te voyant arriver. "Bonjour, matois. Tu as accompli ta quête ?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37627 /* ~"En fait, je voudrais te parler d'Arbresombre."~ */ GOTO 20
  IF ~~ THEN REPLY #37628 /* ~"Non, pas encore."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 60 43 even though they appear after this state */
~  Global("Grosuk_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 40 // from:
  SAY #37629 /* ~Sébastion sourit en te voyant arriver. "Bonjour, matois. Tu as accompli ta quête ?"~ */
  IF ~~ THEN REPLY #37630 /* ~"Oui, et je suis là pour récupérer ce que tu me dois."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #37631 /* ~"Une minute, matois." Sébastion fouille dans sa robe et en retire une petite boule de cristal. Il la scrute un moment, puis revient à toi. "Je ne te remercierai jamais assez, matois. Je saurai respecter ma part du marché. Tu es prêt ?"~ */
  IF ~~ THEN REPLY #37632 /* ~"Oui."~ */ DO ~AddexperienceParty(4000)
PermanentStatChange(Protagonist,CHR,RAISE,2)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #37633 /* ~"C'est fait, matois. Encore une fois, merci." Sébastion te fait une profonde révérence.~ */
  IF ~~ THEN REPLY #37634 /* ~"Merci et au revoir, Sébastion."~ */ DO ~SetGlobal("Kill_Grosuk","GLOBAL",4)
SetGlobal("Snuff_Grosuk","GLOBAL",4)
~ JOURNAL #66544 /* ~J'ai tué Grosuk l'abishaï pour Sébastion. En vertu des termes de notre accord, il a fait disparaître bon nombre de mes cicatrices. Je suis désormais bien plus beau.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Snuff_Grosuk","GLOBAL",4)
~ THEN BEGIN 43 // from:
  SAY #37635 /* ~Sébastion te sourit. "Bonjour, matois. Que puis-je faire pour toi ?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37636 /* ~"En fait, je voudrais te parler d'Arbresombre."~ */ GOTO 20
  IF ~  
!Class(Protagonist,MAGE)
~ THEN REPLY #64548 /* ~"Peux-tu m'enseigner l'Art, Sébastion ?"~ */ GOTO 59
  IF ~~ THEN REPLY #64549 /* ~"Aucune importance, Sébastion. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 37.1 38.1
  SAY #37638 /* ~Il te sourit et pousse un soupir de soulagement. "Merci, matois. Cette créature est un abishaï, un certain Grosuk. Il se trouve à l'est, au-delà de la tour de siège."~ */
  IF ~~ THEN REPLY #37639 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 60 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 45 // from:
  SAY #37640 /* ~Sébastion sourit en te voyant arriver. "Bonjour, matois. Ça fait plaisir de te revoir."~ */
  IF ~~ THEN REPLY #37641 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~  
!Class(Protagonist,MAGE)
~ THEN REPLY #37642 /* ~"Tu peux m'apprendre l'Art, Sébastion ?"~ */ GOTO 59
  IF ~~ THEN REPLY #37643 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 12.0 12.1
  SAY #37644 /* ~Le monde autour de toi s'efface et tu te retrouves dans les rues sombres de Sigil. Ton cœur bat la chamade, comme pour se libérer de ta poitrine, et ta respiration se fait haletante. Tu as l'impression de courir depuis des heures et tu ne peux pas encore t'arrêter…~ */
  IF ~~ THEN REPLY #37645 /* ~Continue.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #37646 /* ~Tu tournes au coin d'une rue et t'engouffres dans une ruelle, puis tu ralentis enfin. Tu sens que tu es à bout de forces alors que tu t'appuies contre un mur pour reprendre ta respiration. Tu sens quelque chose d'enfoncé dans la paume de ta main. Tu ouvres ton poing serré et tu observes le joyau incrusté dans ta chair.~ */
  IF ~~ THEN REPLY #37647 /* ~Continue.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #37648 /* ~Ton corps s'affaisse contre le mur et ton front touche sa surface froide et humide. Tes yeux se ferment et tu t'efforces de respirer lentement et profondément. Alors que tu reprends peu à peu des forces, tu entends un petit bruit et reprends totalement conscience. Tu te retournes pour regarder vers l'entrée de la ruelle.~ */
  IF ~~ THEN REPLY #37649 /* ~Continue.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #37650 /* ~Tu ne remarques d'abord rien, sauf les visions fantomatiques provoquées par les ombres de la nuit. Tu es sur le point de te retourner lorsqu'un léger mouvement retient ton attention. Lentement, une silhouette féminine glisse non loin, s'arrête avant de se retourner vers toi. Tes yeux voyagent de sa taille fine jusqu'à sa poitrine opulente, puis sur son visage dur comme du métal. Même dans l'obscurité, tu distingues ses yeux froids et sans émotion…~ */
  IF ~~ THEN REPLY #37651 /* ~Continue.~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #37652 /* ~Le souvenir s'estompe et tu retrouves ta vision normale. Tu es face à Sébastion au marché. Il te regarde avec un air inquiet, qui se dissipe lorsqu'il voit que tu vas bien. "Pendant un moment, j'ai cru que je t'avais perdu, matois."~ */
  IF ~~ THEN REPLY #37653 /* ~"Qu'est devenue cette Clé Ensorcelée des Ombres ?"~ */ GOTO 13
  IF ~~ THEN REPLY #37654 /* ~"Intéressant, j'ai d'autres questions à te poser…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 51 // from: 20.1
  SAY #37655 /* ~Il t'adresse un large sourire. "Merci, matois. Ça fait toujours plaisir de trouver quelqu'un qui apprécie l'humour d'une telle situation."~ */
  IF ~~ THEN REPLY #37656 /* ~"Dis-moi, pourquoi est-ce que tu l'as fait ?"~ */ GOTO 52
  IF ~~ THEN REPLY #37657 /* ~"Oui… J'ai des questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #37658 /* ~"Et bien, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 21.2 51.0
  SAY #37659 /* ~"Oh, m'sieur…" Il rit, secoue la tête et essaie de prendre un air plus sérieux. "Hamrys adore le son de sa propre voix, m'sieur. Il arpente le marché pendant des heures, rebattant les oreilles de tout le monde avec ses bavardages interminables. Ses affaires allaient de mal en pis. Arbresombre est pour lui le compagnon idéal, il écoute ses nombreuses histoires et surtout, il le retient dans sa boutique."~ */
  IF ~~ THEN REPLY #37660 /* ~"Je vois. J'ai quelques questions à te poser…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 53 // from:
  SAY #37661 /* ~"Oh, m'sieur…" Il rit, secoue la tête et essaie de prendre un air plus sérieux. "Hamrys adore le son de sa propre voix, m'sieur. Il arpente le marché pendant des heures, rebattant les oreilles de tout le monde avec ses bavardages interminables. Ses affaires allaient de mal en pis, car les clients le fuyaient ! Arbresombre est pour lui le compagnon idéal, il écoute ses nombreuses histoires et surtout, il le retient dans sa boutique."~ */
  IF ~~ THEN REPLY #37662 /* ~"Je vois. Et bien, peu importe, alors. J'ai quelques questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #37663 /* ~"Quoi qu'il en soit, ce que tu as fait est mal. Il faut que tu libères Arbresombre."~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #37664 /* ~Il soupire et semble perdu dans ses pensées. "Oui… Tu as raison, bien sûr. Que je sois maudit pour mon idiotie !"~ */
  IF ~~ THEN REPLY #37665 /* ~"Alors, tu vas le libérer ?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 55 // from: 35.0
  SAY #37666 /* ~"Oui, de l'autre côté du marché. Cette maudite chose est apparue un jour, il y a des années. Personne ne sait pourquoi, ni n'ose y entrer pour en savoir plus."~ */
  IF ~~ THEN REPLY #37667 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37668 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 12.2
  SAY #37669 /* ~Tu rassembles tes pensées et tu te concentres. Peu à peu, le monde retrouve ses couleurs et se ranime. Le souvenir s'estompe…~ */
  IF ~~ THEN REPLY #37670 /* ~"Qu'est devenue cette Clé Ensorcelée des Ombres ?"~ */ GOTO 13
  IF ~~ THEN REPLY #37671 /* ~"Intéressant, j'ai d'autres questions à te poser…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 57 // from: 34.0
  SAY #37672 /* ~"Une minute, matois." Sébastion fouille dans sa robe et en retire une petite boule de cristal. Il la scrute un moment, puis revient à toi. "Je ne te remercierai jamais assez, matois. Même si nous n'avons pas conclu de pacte, je t'aiderai pour tes cicatrices. Tu es prêt ?"~ */
  IF ~~ THEN REPLY #37673 /* ~"Oui. Merci."~ */ DO ~SetGlobal("Kill_Grosuk","GLOBAL",4)
PermanentStatChange(Protagonist,CHR,RAISE,2)
SetGlobal("Snuff_Grosuk","GLOBAL",4)
~ JOURNAL #66545 /* ~J'ai tué un abishaï du nom de Grosuk. Apparemment, Sébastion le voulait mort, pour une raison que j'ignore. Il m'a récompensé en faisant disparaître bon nombre de mes cicatrices. Je suis désormais bien plus beau.~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #37674 /* ~Il te sourit. "C'est fait, matois. Encore une fois, merci."~ */
  IF ~~ THEN REPLY #37676 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37677 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 43.1 45.1
  SAY #37678 /* ~"Es-tu sûr de vouloir laisser tomber ta profession actuelle pour pratiquer l'Art et devenir mage ?"~ */
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #52386 /* ~"Oui…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",3)
~ GOTO 61
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #52387 /* ~"Oui…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 63
  IF ~~ THEN REPLY #58936 /* ~"Non, je vais y réfléchir. Au revoir."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Grosuk_Dead_KAPUTZ","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 60 // from:
  SAY #50446 /* ~Tu aperçois un vieil homme vêtu d'une robe élégante. Il a un regard et un sourire chaleureux. Il fait une légère révérence en te voyant. "Bonjour, matois. Je suis Sébastion, que puis-je pour toi ?"~ */
  IF ~~ THEN REPLY #50447 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #50448 /* ~Ignore l'homme.~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #52388 /* ~"Ce n'est pas quelque chose que je fais habituellement. Mais montre-moi ce que tu sais faire et je te donnerai des tuyaux." Il te regarde attentivement tandis que tu lui montres ce que tu sais faire. Il t'arrête à plusieurs reprises pour t'expliquer comment améliorer tes talents. Au bout de quelques heures, tu te sens à l'aise avec tes talents de mage.~ */
  IF ~~ THEN REPLY #62180 /* ~"Merci, Sébastion."~ */ DO ~GiveExperience(Protagonist,5000)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #62174 /* ~"Je t'en prie, l'ami. Prends aussi ces deux sorts ; ils te seront peut-être utiles. À présent, je te prie de m'excuser, mais j'ai du travail."~ */
  IF ~~ THEN REPLY #62177 /* ~"Au revoir."~ */ DO ~GiveItemCreate("Spwi101",Protagonist,1,1,0)
GiveItemCreate("Spwi102",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.1
  SAY #64650 /* ~"Ce n'est pas quelque chose que je fais habituellement. Mais montre-moi ce que tu sais faire et je te donnerai des tuyaux." Il te regarde attentivement tandis que tu lui montres ce que tu sais faire. Il t'arrête à plusieurs reprises pour t'expliquer comment améliorer tes talents. Au bout de quelques heures, tu te sens à l'aise avec tes talents de mage.~ */
  IF ~~ THEN REPLY #64651 /* ~"Merci, Sébastion."~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #64652 /* ~"Tu es le bienvenu, mon ami. Maintenant, si tu veux bien m'excuser, j'ai du travail."~ */
  IF ~~ THEN REPLY #64653 /* ~"Au revoir."~ */ EXIT
END
