// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSSKULL~

IF ~  Global("SSkull_Talk","AR0508",0)
~ THEN BEGIN 0 // from:
  SAY #31579 /* ~Le crâne exhale un soupir langoureux et, d'une voix sensuelle, dit : "Pourquoi troubles-tu mon repos ? Tant de choses se sont passées récemment, et bien que j'apprécie la sensation, je n'aspire qu'au calme."~ */
  IF ~~ THEN REPLY #31581 /* ~"Parle-moi de toi."~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 1
  IF ~~ THEN REPLY #31582 /* ~"Qu'est-ce que tu fais ici ?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 2
  IF ~~ THEN REPLY #31583 /* ~"Qu'est-ce que tu peux me dire sur Lothar ?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31584 /* ~"C'est quoi tous ces autres crânes sur l'étagère ?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #31585 /* ~"Retournes-y, alors. Au revoir."~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.3 3.1 6.0 10.2 12.0 17.0
  SAY #31586 /* ~"Je suis… J'étais… Océan-avant-la-Tempête, une Sensat. Maintenant, hélas, je ne suis qu'un ornement."~ */
  IF ~  Global("Know_Sensates","GLOBAL",0)
~ THEN REPLY #31587 /* ~"Un Sensat ? Qu'est-ce que c'est ?"~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Know_Sensates","GLOBAL",1)
~ THEN REPLY #31588 /* ~"Ça doit être dur… On ne peut pas dire qu'il y ait beaucoup de sensations ici, hein ?"~ */ GOTO 9
  IF ~~ THEN REPLY #31589 /* ~"Qu'est-ce que tu peux me dire sur Lothar ?"~ */ GOTO 3
  IF ~~ THEN REPLY #31590 /* ~"Qu'est-ce qui t'a amené ici ?"~ */ GOTO 2
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31591 /* ~"Qu'est-ce que tu sais sur les autres crânes ?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31592 /* ~"Qu'est-ce que tu peux me dire sur tous ces autres crânes posés sur l'étagère ?"~ */ GOTO 12
  IF ~~ THEN REPLY #31593 /* ~"Je vois. Je te laisse. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.3 3.2 6.1 7.1 8.0 17.1
  SAY #31594 /* ~"Eh bien, je reste sur l'étagère à prendre la poussière jusqu'à ce qu'un des larbins de Lothar décide que j'ai besoin d'un bon époussetage. Je réponds aux questions de Lothar, et… ça résume à peu près ma misérable existence."~ */
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #31595 /* ~"Non, je voulais dire : 'comment est-ce que tu as atterri ici' ?"~ */ GOTO 10
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #31596 /* ~"Non, je voulais dire : 'comment est-ce que tu as atterri ici' ?"~ */ GOTO 11
  IF ~~ THEN REPLY #31597 /* ~"Quel genre de questions ?"~ */ GOTO 14
  IF ~~ THEN REPLY #31598 /* ~"Parle-moi de toi."~ */ GOTO 1
  IF ~~ THEN REPLY #31599 /* ~"Qu'est-ce que tu peux me dire sur Lothar ?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31600 /* ~"C'est quoi tous ces autres crânes sur l'étagère ?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31601 /* ~"Qu'est-ce que tu peux me dire sur tous ces autres crânes posés sur l'étagère ?"~ */ GOTO 12
  IF ~~ THEN REPLY #31602 /* ~"Alors, je ne te dérangerai pas plus longtemps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 2.4 6.2 7.2 8.1 10.3 12.1 17.2
  SAY #31603 /* ~"Rien qu'il ne veuille te dire lui-même. Puisque je ne fais pas confiance aux autres crânes, qui risqueraient de ne pas m'avertir si je disais quelque chose d'erroné, je ne dis tout simplement rien. Avant que tu ne poses la question, oui, il me fait tant peur que ça."~ */
  IF ~~ THEN REPLY #31604 /* ~"Qu'est-ce qu'il pourrait te faire ?"~ */ GOTO 13
  IF ~~ THEN REPLY #31605 /* ~"Parle-moi de toi."~ */ GOTO 1
  IF ~~ THEN REPLY #31606 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 2
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31607 /* ~"C'est quoi tous ces autres crânes sur l'étagère ?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31608 /* ~"Qu'est-ce que tu peux me dire sur tous ces autres crânes posés sur l'étagère ?"~ */ GOTO 12
  IF ~~ THEN REPLY #31609 /* ~"Retournes-y, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.4 2.5 3.3 7.3 8.2 10.4 17.3
  SAY #31610 /* ~"Oh, ils ne font rien pour briser l'ennui. Il y a Peignebouc le rat-garou, Sinistrescalp l'anarchiste et Stricto le vieux mage assassin. Je ne sais pas ce que fait Stricto, mais il est tout simplement maléfique."~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 0
END

IF ~~ THEN BEGIN 5 // from:
  SAY #31611 /* ~"Pragmatique ? Est-ce pour cela que ta solution aux problèmes consiste souvent en un coup de poignard dans le dos ?"~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 1
END

IF ~~ THEN BEGIN 6 // from:
  SAY #31612 /* ~Océan-avant-la-Tempête te prête de nouveau attention. "Tu vois ? Un mauvais pur jus."~ */
  IF ~~ THEN REPLY #31613 /* ~"Parle-moi de toi."~ */ GOTO 1
  IF ~~ THEN REPLY #31614 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 2
  IF ~~ THEN REPLY #31615 /* ~"Qu'est-ce que tu peux me dire sur Lothar ?"~ */ GOTO 3
  IF ~~ THEN REPLY #31616 /* ~"Oui, je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY #31617 /* ~"Un Sensat est un membre de la Société des Sensations - l'une des factions de Sigil, dont le siège est à la Salle des Fêtes dans le Quartier des Gratte-Papier - qui pense que l'univers ne peut être compris et manipulé que par les sens, et que par conséquent nous devons accumuler autant d'expériences variées que possible. Je pense que j'ai atteint le quota en ce qui concerne le séjour sur une étagère poussiéreuse - mon ennui est grand."~ */
  IF ~~ THEN REPLY #31618 /* ~"Je peux faire quelque chose pour toi ?"~ */ GOTO 8
  IF ~~ THEN REPLY #31619 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 2
  IF ~~ THEN REPLY #31620 /* ~"Qu'est-ce que tu peux me dire sur Lothar ?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31621 /* ~"C'est quoi tous ces autres crânes sur l'étagère ?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31622 /* ~"Qu'est-ce que tu peux me dire sur tous ces autres crânes posés sur l'étagère ?"~ */ GOTO 12
  IF ~~ THEN REPLY #31623 /* ~"Ça me désole pour toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31624 /* ~"Non, mais merci de demander. Un jour, je me suis jetée de l'étagère et brisée. Tout ce que je sais, c'est que je me suis retrouvée sur l'étagère et que nous étions tous collés. Quand Lothar en aura assez, il se débarrassera de moi."~ */
  IF ~~ THEN REPLY #31625 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 2
  IF ~~ THEN REPLY #31626 /* ~"Qu'est-ce que tu peux me dire sur Lothar ?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31627 /* ~"C'est quoi tous ces autres crânes sur l'étagère ?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31628 /* ~"Qu'est-ce que tu peux me dire sur tous ces autres crânes posés sur l'étagère ?"~ */ GOTO 12
  IF ~~ THEN REPLY #31629 /* ~"Alors, bonne chance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1
  SAY #31630 /* ~Le crâne te regarde fixement. "C'est ça. Remue le couteau dans la plaie." Elle s'interrompt un peu plus longuement. "Va-t'en."~ */
  IF ~~ THEN REPLY #31631 /* ~"Hé, attends. Je plaisantais…"~ */ GOTO 15
  IF ~~ THEN REPLY #31632 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.0
  SAY #31633 /* ~"C'est une longue histoire, et je ne suis pas censée te dire quoi que ce soit avant que tu aies effectué une tâche pour Lothar."~ */
  IF ~~ THEN REPLY #31634 /* ~"Qu'est-ce qu'il pourrait te faire ?"~ */ GOTO 13
  IF ~~ THEN REPLY #31635 /* ~"Tu peux me le dire."~ */ GOTO 13
  IF ~~ THEN REPLY #31636 /* ~"Alors, parle-moi de toi."~ */ GOTO 1
  IF ~~ THEN REPLY #31637 /* ~"Qu'est-ce que tu peux me dire sur Lothar ?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31638 /* ~"Bon, très bien. Qu'est-ce que tu peux me dire sur tous ces autres crânes posés sur l'étagère ?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31639 /* ~"Bon, très bien. Qu'est-ce que tu peux me dire sur tous ces autres crânes posés sur l'étagère ?"~ */ GOTO 12
  IF ~~ THEN REPLY #31640 /* ~"Alors, je ne te dérangerai pas plus longtemps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #31641 /* ~"C'est une longue histoire, en rapport avec Ravel Puits-de-Rébus, la guenaude noire. Veux-tu entendre l'histoire complète ?"~ */
  IF ~~ THEN REPLY #31642 /* ~"Oui."~ */ GOTO 18
  IF ~~ THEN REPLY #31643 /* ~"Pas particulièrement."~ */ GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 1.5 2.6 3.4 7.4 8.3 10.5 17.4
  SAY #31644 /* ~Si les crânes pouvaient hausser les épaules, celui-ci le ferait : "Rien que je ne t'aie déjà dit."~ */
  IF ~~ THEN REPLY #31645 /* ~"Alors, parle-moi de toi."~ */ GOTO 1
  IF ~~ THEN REPLY #31646 /* ~"Qu'est-ce que tu peux me dire sur Lothar ?"~ */ GOTO 3
  IF ~~ THEN REPLY #31647 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.0 10.0 10.1
  SAY #31649 /* ~Le crâne te regarde fixement, et tu as l'impression qu'il tremble. "Il y a un nombre considérable de sensations que l'on peut ressentir sans terminaisons nerveuses. Toutes les douleurs ne sont pas physiques, et toutes les émotions ne sont pas psychiques. Ce sont là des sensations que je ne désire pas reproduire." Il s'arrête. "Cet entretien est terminé. Adieu."~ */
  IF ~~ THEN REPLY #31650 /* ~"Réponds encore à quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #31660 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2
  SAY #31661 /* ~"Oh, toutes sortes de choses… les expériences que j'ai vécues, la politique des Sensats - hélas maintenant dépassée ! - les impressions des gens qui passent par ici, et des mots, des mots, des mots. Les questions varient, ce que j'apprécie plus que tu ne peux l'imaginer. Si tu n'as rien d'autre à me demander, je vais reprendre mon repos. Adieu."~ */
  IF ~~ THEN REPLY #31662 /* ~"Non, attends, encore quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #31663 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.0 13.0 14.0 16.0 21.1 22.0
  SAY #31664 /* ~Le crâne regarde dans le vide sans un mot.~ */
  IF ~~ THEN REPLY #31665 /* ~"Bon, très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1
  SAY #31666 /* ~"Alors, je vais reprendre mon repos. Adieu"~ */
  IF ~~ THEN REPLY #31667 /* ~"Non, attends, réponds encore à quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #31668 /* ~"Au revoir."~ */ EXIT
END

IF ~  Global("SSkull_Talk","AR0508",1)
~ THEN BEGIN 17 // from:
  SAY #31669 /* ~"Ne me laisseras-tu donc jamais en paix ?"~ */
  IF ~~ THEN REPLY #31670 /* ~"Parle-moi de toi."~ */ GOTO 1
  IF ~~ THEN REPLY #31671 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 2
  IF ~~ THEN REPLY #31672 /* ~"Qu'est-ce que tu peux me dire sur Lothar ?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31673 /* ~"C'est quoi tous ces autres crânes sur l'étagère ?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31674 /* ~"Qu'est-ce que tu peux me dire sur tous ces autres crânes posés sur l'étagère ?"~ */ GOTO 12
  IF ~~ THEN REPLY #31675 /* ~"Si, d'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.0
  SAY #31676 /* ~"Très bien. Je travaillais à la Salle des Fêtes - le quartier général des Sensats - dans les Sensoriums. Ravel Puits-de-Rébus, que les puissances maudissent son âme noire, allait là-bas pour trouver les solutions aux énigmes qu'elle avait rencontrées. Elle était maître dans l'art de résoudre les énigmes - celles qui laissaient nos esprits les plus brillants confondus n'étaient que pacotille pour la force de sa logique - mais elle a pourtant rencontré des difficultés nécessitant des réponses externes. J'ai entendu dire qu'elle était là pour déchiffrer les secrets de Sigil."~ */
  IF ~~ THEN REPLY #31677 /* ~"Continue."~ */ GOTO 19
  IF ~~ THEN REPLY #31678 /* ~"J'en ai déjà marre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #31679 /* ~"Elle était horrible, ne prenant pas la peine d'utiliser sa magie pour cacher son apparence - comme j'ai entendu dire qu'elle fait, ou plutôt FAISAIT de temps en temps - et son apparence de fiélon a refroidi plus d'un adepte potentiel de la faction. Mais je lui ai quand même demandé ce qu'elle préparait, et si elle pouvait m'apprendre ce qu'elle savait."~ */
  IF ~~ THEN REPLY #31680 /* ~"On dirait que c'était une erreur."~ */ GOTO 20
  IF ~~ THEN REPLY #31681 /* ~"Je crois comprendre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #31682 /* ~"En effet. Elle m'a fait une offre, car elle passait son temps dans les énigmes. Pour qu'elle réponde à ma question, il fallait que je réponde à l'une des siennes. Si je ne donnais pas la réponse appropriée, ma vie lui appartenait. J'ai accepté. Elle m'a dit qu'elle avait l'intention de déchiffrer l'énigme de la Cage, pour l'ouvrir à tous ceux qui voulaient y pénétrer - puissances, fiélons, célestes, modrones et slaadi, sans parler des êtres des Plans Intérieurs qui choisiraient de suivre. Pour elle, le plus important était que tous sachent qu'elle avait résolu le mystère qui les avait confondus pendant tout ce temps."~ */
  IF ~~ THEN REPLY #31683 /* ~"Qu'est-ce qui s'est passé ensuite ?"~ */ GOTO 21
  IF ~~ THEN REPLY #31684 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #31685 /* ~"Elle a posé sa question. Je n'ai pas pu y répondre, bien qu'elle m'ait assuré que la réponse était aussi évidente que le nez au milieu de sa figure. D'autres Sensats m'ont retrouvée hurlante dans le Sensorium lorsqu'ils sont arrivés le matin suivant. Je les ai suppliés de me tuer, et ils se sont exécutés. Aucun n'a suggéré que je partage cette expérience, tellement elle était horrible. Et… me voici. Je dois maintenant me reposer."~ */
  IF ~  Global("Sensate_Skull_Memory","GLOBAL",0)
~ THEN REPLY #31686 /* ~"C'était quoi la question ?"~ */ DO ~SetGlobal("Sensate_Skull_Memory","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #31348 /* ~Océan-avant-la-Tempête, le crâne sensat de la bibliothèque des crânes de Lothar, m'a raconté une histoire sur Ravel Puits-de-Rébus et le plan diabolique de la guenaude noire.~ */ GOTO 22
  IF ~~ THEN REPLY #31687 /* ~"Tu peux encore répondre à quelques questions ?"~ */ JOURNAL #31348 /* ~Océan-avant-la-Tempête, le crâne sensat de la bibliothèque des crânes de Lothar, m'a raconté une histoire sur Ravel Puits-de-Rébus et le plan diabolique de la guenaude noire.~ */ GOTO 15
  IF ~~ THEN REPLY #31688 /* ~"Très bien. Merci beaucoup pour l'histoire. Au revoir."~ */ JOURNAL #31348 /* ~Océan-avant-la-Tempête, le crâne sensat de la bibliothèque des crânes de Lothar, m'a raconté une histoire sur Ravel Puits-de-Rébus et le plan diabolique de la guenaude noire.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #31689 /* ~"C'était : qu'est-ce qui peut changer la nature d'un homme ? J'ai longuement réfléchi et j'ai dit : 'l'amour'. Elle a répondu que les gens s'aimaient trop eux-mêmes pour qu'une chose aussi simple que l'amour puisse les changer. Et puis elle… elle… Il faut que je me repose."
Tu sembles voir en esprit une face au nez crochu et à la peau noircie te posant une question similaire… mais tu ne te souviens pas de ta réponse.~ */
  IF ~~ THEN REPLY #31690 /* ~"Tu peux encore répondre à quelques questions ?"~ */ GOTO 15
  IF ~~ THEN REPLY #31691 /* ~"Je compatis. Au revoir."~ */ EXIT
END
