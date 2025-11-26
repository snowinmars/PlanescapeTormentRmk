// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFWEAPS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~GFWEAPS~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5559 /* ~"GARDES ! GARDES ! L'intrus est ici !"~ */
  IF ~~ THEN REPLY #5560 /* ~Terminé.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5561 /* ~"Désolé. Je ne peux pas te parler pour le moment. Reviens plus tard."~ */
  IF ~~ THEN REPLY #5562 /* ~Pars.~ */ EXIT
END

IF ~  Global("Sabotage","GLOBAL",6)
~ THEN BEGIN 2 // from:
  SAY #5563 /* ~"Je ne te remercierai jamais assez d'avoir tordu le cou à cette femme ingénieur de malheur. Qui se serait douté que c'était une Anarchiste ? On aurait pu tous y passer ! Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #5564 /* ~"Tu peux me dire à qui ce projet est destiné."~ */ GOTO 3
  IF ~~ THEN REPLY #5565 /* ~"Tout à l'heure, tu as parlé d'une phase critique ?"~ */ GOTO 24
  IF ~~ THEN REPLY #5566 /* ~"Quel est ce projet ?"~ */ GOTO 17
  IF ~~ THEN REPLY #5567 /* ~"À quoi ça sert ?"~ */ GOTO 18
  IF ~~ THEN REPLY #5568 /* ~"Pourquoi toute cette confidentialité ?"~ */ GOTO 19
  IF ~~ THEN REPLY #5569 /* ~"Dans combien de temps sera-t-il terminé ?"~ */ GOTO 20
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5570 /* ~"Je voudrais savoir si tu sais quelque chose sur le meurtre qui a été commis dans la zone principale de la fonderie."~ */ GOTO 4
  IF ~  !Dead("Kellera")
~ THEN REPLY #5571 /* ~"Qu'est-ce que tu peux me dire sur ta chef ?"~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5572 /* ~"Qu'est-ce que tu peux me dire sur ta chef ?"~ */ GOTO 13
  IF ~  !Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5573 /* ~"Parle-moi des ingénieurs qui travaillent sur ce projet."~ */ GOTO 6
  IF ~~ THEN REPLY #5574 /* ~"Peux-tu me dire où se trouve le bureau du gratte-papier ?"~ */ GOTO 7
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5576 /* ~"Parle-moi des Hommes-Dieux."~ */ GOTO 8
  IF ~  False()
!Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5577 /* ~"Parle-moi des ingénieurs qui travaillent sur ce projet."~ */ GOTO 9
  IF ~  Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5578 /* ~"Parle-moi des ingénieurs qui travaillent sur ce projet."~ */ GOTO 10
  IF ~  !Global("Sabotage","GLOBAL",6)
Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5579 /* ~"Parle-moi des ingénieurs qui travaillent sur ce projet."~ */ GOTO 11
  IF ~~ THEN REPLY #5580 /* ~"Rien pour l'instant, merci."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 14.6
  SAY #5575 /* ~"Non, je ne peux pas te le dire. D'abord, je n'en sais rien. Ensuite, j'ai signé un contrat de confidentialité. Si le projet échoue, je risque ma vie, et celle de tous mes amis. Je ne compte pas prendre ce risque."~ */
  IF ~~ THEN REPLY #5581 /* ~"Je comprends. Alors, parle-moi d'autre chose."~ */ GOTO 14
  IF ~~ THEN REPLY #5582 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.6 14.7
  SAY #5583 /* ~"Une histoire terrible. J'ai entendu dire que la victime était une espèce de bige, mais c'était pas une raison pour le pousser dans les machines comme ça. Comme la Grande Fonderie est fermée depuis près d'un an pour terminer ce projet, ça doit être quelqu'un d'ici. Tout ce que je peux dire, c'est que je réponds de tous les ouvriers : nous ne nous sommes pas quittés d'une semelle."~ */
  IF ~~ THEN REPLY #5584 /* ~"Je vois. Alors, peux-tu répondre à d'autres questions pour moi ?"~ */ GOTO 14
  IF ~~ THEN REPLY #5585 /* ~"Ça me suffit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.7 14.8 16.0
  SAY #5586 /* ~"Elle devrait se trouver dans les parages.
C'est une githzeraï qui s'est retrouvée exilée des siens. Elle travaille ici, parce que c'est un endroit discret qui atténue sa honte. Elle est douée et expérimentée."~ */
  IF ~  Global("Kellera_Met_Dakkon","AR0512",0)
NearbyDialog("DDakkon")
~ THEN REPLY #5587 /* ~"Je me demande si elle parlerait à mon ami Dak'kon."~ */ EXTERN ~DDAKKON~ 6
  IF ~~ THEN REPLY #5588 /* ~"Alors peut-être que je pourrai lui parler plus tard. J'ai d'autres questions à te poser."~ */ GOTO 14
  IF ~~ THEN REPLY #5589 /* ~"Merci de m'avoir accordé un peu de ton temps. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.9 14.10
  SAY #5590 /* ~"Notre ingénieur en chef, Nihl Xander, est un vrai génie. Il a mis au point des machines incroyables. On dit même qu'il a inventé un portail pliable et qu'il travaille à l'élaboration d'un faiseur de rêves à ses moments perdus. On dit que, il y a longtemps, sa famille a signé un contrat pour la mise au point de cette machine pour un homme qui ne pouvait pas rêver.

Notre autre ingénieur, Bedai-Lihn, est une nouvelle recrue, mais tout aussi douée. Elle est un peu fantasque, mais son travail est très prometteur."

"Tu devrais les trouver dans la salle de réunion principale."~ */
  IF ~~ THEN REPLY #5591 /* ~"Génial. En attendant, j'aurais d'autres questions à te poser."~ */ GOTO 14
  IF ~~ THEN REPLY #5592 /* ~"Une machine à rêver, hein ? Je devrais peut-être lui parler."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.10 14.11
  SAY #5593 /* ~"Tu trouveras le bureau du gratte-papier juste en sortant de la fonderie principale."~ */
  IF ~~ THEN REPLY #5594 /* ~"Merci. J'ai une autre question."~ */ GOTO 14
  IF ~~ THEN REPLY #5595 /* ~"Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.11 14.12
  SAY #5596 /* ~"Les Hommes-Dieux ? Ce qu'il y a de bien dans cette faction, c'est qu'on s'intéresse vraiment aux gens, et pas uniquement aux membres de la faction. Chacun d'entre nous peut être un dieu, voire mieux encore. C'est pour ça qu'on aide tout le monde. Sinon, c'est qu'on est égoïste, et même plus qu'égoïste… stupide même. Et nous, on n'est pas stupides."~ */
  IF ~~ THEN REPLY #5597 /* ~"L'avenir nous le dira. J'ai une autre question."~ */ GOTO 14
  IF ~~ THEN REPLY #5598 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.12 14.13
  SAY #5599 /* ~"Tu sais déjà que Bedai-Lihn a été arrêtée pour meurtre. Elle était douée, mais on ne pouvait pas lui faire confiance. Comment est-ce qu'on pouvait savoir que c'était une meurtrière ?

Notre ingénieur en chef s'appelle Nihl Xander. C'est un vrai génie. On dit qu'il a inventé un portail pliable et qu'il travaille à l'élaboration d'un faiseur de rêves à ses moments perdus. On dit que, il y a longtemps, sa famille a signé un contrat pour la mise au point de cette machine pour un homme qui ne pouvait pas rêver tout seul. Tu devrais le trouver dans la salle de réunion principale."~ */
  IF ~~ THEN REPLY #5600 /* ~"Génial. J'ai une autre question."~ */ GOTO 14
  IF ~~ THEN REPLY #5601 /* ~"Un faiseur de rêve ? J'irai le rencontrer."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.13 14.14
  SAY #5602 /* ~"Remercie les puissances de t'avoir permis d'empêcher Bedai-Lihn de saboter notre matériel. Nous y aurions laissé notre peau."

"Quant à notre autre ingénieur, Nihl Xander, tu devrais le trouver dans la salle de réunion principale. Il a fait ses preuves en son temps et il a l'air d'avoir encore de la ressource."~ */
  IF ~~ THEN REPLY #5603 /* ~"Merci. J'ai une autre question."~ */ GOTO 14
  IF ~~ THEN REPLY #5604 /* ~"Il y a fort à parier, hein ? Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.14 14.15
  SAY #5605 /* ~"Qui aurait pu deviner que Bedai-Lihn tenterait de démanteler la structure même des Hommes-Dieux ? Nous connaissions sa valeur en tant qu'ingénieur, mais nous ne savions pas qu'elle était une Anarchiste."

"Quant à Nihl Xander, tu devrais le trouver dans la salle de réunion principale. Il a fait ses preuves en son temps et il a l'air d'avoir encore de la ressource."~ */
  IF ~~ THEN REPLY #5606 /* ~"En effet. Qui l'aurait deviné ? J'ai d'autres questions."~ */ GOTO 14
  IF ~~ THEN REPLY #5607 /* ~"Alors, je vais peut-être aller le voir. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 15.0 15.3
  SAY #5608 /* ~Il te scrute des pieds à la tête, puis semble décider de te faire confiance. "Eh… bon, quels sont les points qui ne sont pas faibles ? La coque extérieure n'est pas encore très solide, on ne l'a pas encore renforcée. Les ports de tir ont leurs armes, mais elles sont pour l'instant instables et dangereuses. Et le brûleur qui se trouve à l'intérieur risque d'exploser avec toute cette pression. L'ensemble est sur le point de s'écrouler. Je dirais que le principal point faible vient du mécanisme de mise à feu. Et s'il cède, il nous emportera avec lui."~ */
  IF ~~ THEN REPLY #5609 /* ~"Merci. J'ai d'autres questions."~ */ GOTO 14
  IF ~~ THEN REPLY #5610 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.8 14.9 16.1
  SAY #5611 /* ~"Tu veux savoir ce qui est arrivé à Kel'lera ? Une espèce de salaud l'a tuée, et c'est tout ce que je peux dire sur elle. Cette conversation est terminée. Du balai. Gardes ! Ôtez ce bige de ma vue !"~ */
  IF ~~ THEN REPLY #5612 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.0 4.0 5.1 6.0 7.0 8.0 9.0 10.0 11.0 12.0 15.6 17.3 18.3 19.4 20.4 21.0 22.1 23.1 24.1 25.0
  SAY #5613 /* ~"Oui ? Qu'est-ce que tu veux savoir ?"~ */
  IF ~  GlobalLT("Sabotage","GLOBAL",4)
GlobalGT("Sabotage","GLOBAL",1)
~ THEN REPLY #5614 /* ~"Dis-moi, quels sont les points faibles de cette machine ?"~ */ GOTO 15
  IF ~~ THEN REPLY #5615 /* ~"Tout à l'heure, tu as parlé d'une phase critique ?"~ */ GOTO 24
  IF ~~ THEN REPLY #5616 /* ~"Quel est ce projet ?"~ */ GOTO 17
  IF ~~ THEN REPLY #5617 /* ~"À quoi ça sert ?"~ */ GOTO 18
  IF ~~ THEN REPLY #5618 /* ~"Pourquoi toute cette confidentialité ?"~ */ GOTO 19
  IF ~~ THEN REPLY #5619 /* ~"Dans combien de temps sera-t-il terminé ?"~ */ GOTO 20
  IF ~~ THEN REPLY #5620 /* ~"Tu peux me dire à qui ce projet est destiné."~ */ GOTO 3
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5621 /* ~"Je voudrais savoir si tu sais quelque chose sur le meurtre qui a été commis dans la zone principale de la fonderie."~ */ GOTO 4
  IF ~  !Dead("Kellera")
~ THEN REPLY #5622 /* ~"Qu'est-ce que tu peux me dire sur ta chef ?"~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5623 /* ~"Qu'est-ce que tu peux me dire sur ta chef ?"~ */ GOTO 13
  IF ~  !Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5624 /* ~"Parle-moi des ingénieurs qui travaillent sur ce projet."~ */ GOTO 6
  IF ~~ THEN REPLY #5626 /* ~"Peux-tu me dire où se trouve le bureau du gratte-papier ?"~ */ GOTO 7
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5627 /* ~"Parle-moi des Hommes-Dieux."~ */ GOTO 8
  IF ~  False()
!Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5628 /* ~"Parle-moi des ingénieurs qui travaillent sur ce projet."~ */ GOTO 9
  IF ~  Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5629 /* ~"Parle-moi des ingénieurs qui travaillent sur ce projet."~ */ GOTO 10
  IF ~  !Global("Sabotage","GLOBAL",6)
Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5630 /* ~"Parle-moi des ingénieurs qui travaillent sur ce projet."~ */ GOTO 11
  IF ~  False()
~ THEN REPLY #16224 /* ~"C'est quoi ce projet ?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #5631 /* ~"Rien pour le moment, merci."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #5625 /* ~Il te regarde d'un air suspicieux. "Pourquoi veux-tu savoir ça ?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #5632 /* ~"Parce que je pratique un peu la science de la magie, moi aussi, et je pensais qu'on pourrait peut-être optimiser l'ouvrage. Si tu me montrais les points faibles, je pourrais éventuellement te proposer des solutions."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5633 /* ~"Parce que je pratique un peu la science de la magie, moi aussi, et je pensais qu'on pourrait peut-être optimiser l'ouvrage. Si tu me montrais les points faibles, je pourrais éventuellement te proposer des solutions."~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #5634 /* ~"Parce que ça m'a l'air bien fragile."~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #5635 /* ~"Parce qu'on m'a conféré l'autorité d'examiner ce projet, et je voudrais en connaître les imperfections."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 12
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #5636 /* ~"Parce qu'on m'a conféré l'autorité d'examiner ce projet, et je voudrais en connaître les imperfections."~ */ GOTO 16
  IF ~~ THEN REPLY #5637 /* ~"Simple curiosité, c'est tout."~ */ GOTO 16
  IF ~~ THEN REPLY #5638 /* ~"Laisse tomber. J'ai d'autres questions."~ */ GOTO 14
  IF ~~ THEN REPLY #5639 /* ~"Fais comme si je n'avais rien demandé. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.2 15.4 15.5
  SAY #5640 /* ~Il te regarde d'un air encore plus suspicieux. "Je ne répondrai pas. Si tu veux le savoir, demande-le à Kel'lera, pas à moi."~ */
  IF ~  !Dead("Kellera")
~ THEN REPLY #5641 /* ~"Où est Kel'lera ?"~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5642 /* ~"Où est Kel'lera ?"~ */ GOTO 13
  IF ~~ THEN REPLY #5643 /* ~"Non, oublie ce que je t'ai demandé. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.2 14.2 14.16 18.0 19.1 20.1
  SAY #5644 /* ~"C'est une arme, je crois. On ne sait pas si elle sert à la guerre ou à la chasse. Et par les puissances d'en haut, si c'est pour la chasse, je voudrais pas être à la place de l'animal qui lui sert de cible. En tout cas, quand nous aurons terminé, cette arme égalera le Navire du Chaos construit par la Garde Fatale il y a quelques années avec les tanar'ris. En théorie, du moins."~ */
  IF ~~ THEN REPLY #5645 /* ~"À quoi sert-elle ?"~ */ GOTO 18
  IF ~~ THEN REPLY #5646 /* ~"Pourquoi toute cette confidentialité ?"~ */ GOTO 19
  IF ~~ THEN REPLY #5647 /* ~"Dans combien de temps sera-t-il terminé ?"~ */ GOTO 20
  IF ~~ THEN REPLY #5648 /* ~"J'ai d'autres questions."~ */ GOTO 14
  IF ~~ THEN REPLY #5649 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.3 14.3 17.0 19.2 20.2
  SAY #5650 /* ~"Tu sais, je n'en suis pas sûr. Tu devrais en parler à l'un des ingénieurs. Je sais que cet engin comporte un faisceau de chaleur intense. Nous avons perfectionné cette partie. Nous en avons même fait une partie intégrante de l'appareil. Quant aux autres aspects, nous n'avons même pas commencé à travailler dessus. On n'a pas le droit de les voir avant d'avoir terminé une portion."~ */
  IF ~~ THEN REPLY #5651 /* ~"Qu'est-ce que c'est, déjà ?"~ */ GOTO 17
  IF ~~ THEN REPLY #5652 /* ~"Pourquoi toute cette confidentialité ?"~ */ GOTO 19
  IF ~~ THEN REPLY #5653 /* ~"Dans combien de temps sera-t-il terminé ?"~ */ GOTO 20
  IF ~~ THEN REPLY #5654 /* ~"Réponds à d'autres questions, s'il te plaît."~ */ GOTO 14
  IF ~~ THEN REPLY #5655 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.4 14.4 17.1 18.1 20.3
  SAY #5656 /* ~"Si tu savais qu'un ennemi était en train de mettre au point une arme qu'il utiliserait contre toi, est-ce que tu ne ferais pas tout ce qui est en ton pouvoir pour la détruire ? On n'a même aucune idée de la cible désignée. D'après les grossiums, l'utilisation de cette arme devrait nous satisfaire. Comme personne ne sait pour qui nous la construisons, on ne risque pas de lâcher le soltif à quelqu'un qui voudrait la détruire… surtout que notre vie dépend de notre silence."~ */
  IF ~~ THEN REPLY #5657 /* ~"Que veux-tu dire par là ?"~ */ GOTO 21
  IF ~~ THEN REPLY #5658 /* ~"Qu'est-ce que c'est, déjà ?"~ */ GOTO 17
  IF ~~ THEN REPLY #5659 /* ~"Et quelle est sa fonction ?"~ */ GOTO 18
  IF ~~ THEN REPLY #5660 /* ~"Dans combien de temps sera-t-il terminé ?"~ */ GOTO 20
  IF ~~ THEN REPLY #5661 /* ~"Réponds à d'autres questions, s'il te plaît."~ */ GOTO 14
  IF ~~ THEN REPLY #5662 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.5 14.5 17.2 18.2 19.3
  SAY #5663 /* ~"Ce travail devrait prendre encore dix ans, mais nous devrions en achever la partie la plus délicate cette année. Certains rites magiques doivent avoir lieu, et ils prennent du temps. On respirerait tous mieux si notre sort n'était pas scellé à un projet qui risque d'exploser parce qu'il est instable."~ */
  IF ~~ THEN REPLY #5664 /* ~"Scellé ? Que veux-tu dire par là ?"~ */ GOTO 21
  IF ~~ THEN REPLY #5665 /* ~"Qu'est-ce que c'est, déjà ?"~ */ GOTO 17
  IF ~~ THEN REPLY #5666 /* ~"Et quelle est sa fonction ?"~ */ GOTO 18
  IF ~~ THEN REPLY #5667 /* ~"Pourquoi toute cette confidentialité ?"~ */ GOTO 19
  IF ~~ THEN REPLY #5668 /* ~"J'ai d'autres questions à te poser."~ */ GOTO 14
  IF ~~ THEN REPLY #5669 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #5670 /* ~"Étant donné la nature secrète de ce projet, sans parler du miracle qui nous permet de travailler sur cette machine, nous avons dû sceller une partie de nos vies à la machine. Nous récupérerons nos vies une fois le projet terminé mais, si ça se passe mal, ou - que les puissances nous en préserve - si le projet est saboté, nous mourrons au moment où l'engin explosera."~ */
  IF ~~ THEN REPLY #5671 /* ~"Ça ne me plaît pas. Mais, j'ai d'autres questions à te poser."~ */ GOTO 14
  IF ~~ THEN REPLY #5672 /* ~"Pas très réjouissant. Bonne chance. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #5673 /* ~Tu aperçois un tieffelin en habits d'Homme-Dieu qui examine avec attention la chose qui se trouve au milieu de la pièce. "J'peux pas parler pour le moment. Nous sommes dans une phase critique."~ */
  IF ~~ THEN REPLY #5674 /* ~"Une phase critique ? Comment ça ?"~ */ GOTO 24
  IF ~~ THEN REPLY #5675 /* ~"J'espérais que tu pourrais répondre à quelques questions."~ */ GOTO 14
  IF ~~ THEN REPLY #5676 /* ~"Bon. Désolé de t'avoir dérangé. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #5677 /* ~"Encore toi ? De quoi t'as besoin cette fois ?"~ */
  IF ~~ THEN REPLY #5678 /* ~"Tout à l'heure, tu as parlé d'une phase critique ?"~ */ GOTO 24
  IF ~~ THEN REPLY #5679 /* ~"J'ai des questions à te poser."~ */ GOTO 14
  IF ~~ THEN REPLY #5680 /* ~"Dans ce cas, je te laisse tranquille. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.1 14.1 22.0 23.0
  SAY #5681 /* ~"Oui. Nous travaillons à la mise au point d'une arme qui pourrait jouer un rôle considérable en temps de paix aussi. Le projet est loin d'être terminé, mais nous sommes dans une phase délicate, si délicate qu'elle pourrait tous nous envoyer dans le livre des morts si un bige quelconque venait à faire une erreur."~ */
  IF ~~ THEN REPLY #5682 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 25
  IF ~~ THEN REPLY #5683 /* ~"Oh. J'ai d'autres questions."~ */ GOTO 14
  IF ~~ THEN REPLY #5684 /* ~"Je vois. Bonne chance."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #5685 /* ~"Nous ajustons les variables des résonances magiques inférieures de l'appareil. Une seule erreur, et l'ensemble du projet serait compromis. Et, si c'est le cas, l'onde magique nous fera tous disparaître."~ */
  IF ~~ THEN REPLY #5686 /* ~"Je vois. Peux-tu répondre à d'autres questions ?"~ */ GOTO 14
  IF ~~ THEN REPLY #5687 /* ~"Je vois. Au revoir."~ */ EXIT
END
