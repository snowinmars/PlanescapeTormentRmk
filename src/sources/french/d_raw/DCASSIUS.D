// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCASSIUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCASSIUS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50718 /* ~Tu vois un homme corpulent, débordant de graisse. Son regard se tourne lentement vers toi et ce faisant, une indescriptible impression de danger s'empare de toi. "Je possède la véritable essence de l'épée. Ce que tu vois là n'est qu'une enveloppe. La lame est en moi. Tu dois me vaincre pour l'atteindre."~ */
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #50719 /* ~"Qui es-tu ?"~ */ GOTO 1
  IF ~  Global("Trias_Sword","GLOBAL",1)
HasItem("Bandage",Myself)
~ THEN REPLY #59402 /* ~"Je suis ici pour l'épée."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #59407 /* ~"Laisse tomber. Au revoir."~ */ GOTO 19
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #67172 /* ~"Laisse tomber. Au revoir."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #67172 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #59635 /* ~Sa voix grave roule. "Je m'appelle Cassius. J'étais autrefois la meilleure arme du défunt Seigneur des Abysses et ses héritiers sont déjà à ma recherche. Je suis un terrible secret au cœur des plans chaotiques et je suis le gardien de cette épée."~ */
  IF ~~ THEN REPLY #59670 /* ~"Tu étais une *arme* ?"~ */ GOTO 3
  IF ~~ THEN REPLY #59671 /* ~"Tu n'as pas l'air si dangereux…"~ */ GOTO 3
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59673 /* ~"Je suis ici pour l'épée."~ */ GOTO 2
  IF ~~ THEN REPLY #59674 /* ~"Je vois. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.3 1.2 1.3 3.1 3.2 4.0 4.2 5.0 5.2 6.0 6.1 7.1
  SAY #59637 /* ~Sa voix est grave, caverneuse. "Cette épée garde la Prison de Maudith. Son retrait libérera tous les prisonniers condamnés à l'oubli. Je suis chargé de veiller à ce qu'une telle chose n'arrive pas. Tu veux l'épée ?"~ */
  IF ~~ THEN REPLY #59705 /* ~"Oui."~ */ GOTO 9
  IF ~~ THEN REPLY #59706 /* ~"Non."~ */ GOTO 8
  IF ~~ THEN REPLY #59707 /* ~"Je voulais juste partir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1
  SAY #59639 /* ~"J'étais autrefois l'arme la plus efficace de tous les Abysses, façonnée selon la volonté de mon maître. Je pouvais prendre la forme de toutes les créatures de l'ombre. J'ai tué un nombre incalculable d'ennemis de mon maître défunt. Mon frère, mon ombre pâle, mon Xekiel, tue toujours dans les profondeurs des Abysses."~ */
  IF ~~ THEN REPLY #59710 /* ~"Pourquoi est-ce que tu es parti ?"~ */ GOTO 4
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59711 /* ~"Bon. Et bien, je suis venu pour l'épée."~ */ GOTO 2
  IF ~~ THEN REPLY #59712 /* ~"Très bien. Je m'en allais."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #59641 /* ~"Mon maître a sombré au cœur des Abysses alors que j'étais en train de tuer. À mon retour, il n'était plus là et ses héritiers se querellaient pour me récupérer. Aucun d'entre eux n'a réussi à m'apprivoiser, alors j'ai décidé de m'en aller. Ce travail est plaisant - je tue ceux qui m'approchent. Ce n'est pas une lourde tâche."~ */
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59715 /* ~"Je suis ici pour l'épée."~ */ GOTO 2
  IF ~~ THEN REPLY #59717 /* ~"Tu peux me tuer ?"~ */ GOTO 5
  IF ~~ THEN REPLY #59719 /* ~"Je vois. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #59643 /* ~Il t'étudie minutieusement. Après un moment, il déclare, "Je le pourrais, mais ce serait un dur combat. Tu veux que je te tue ?"~ */
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59722 /* ~"Je suis juste venu pour l'épée."~ */ GOTO 2
  IF ~~ THEN REPLY #59724 /* ~"J'aimerais que tu essaies."~ */ GOTO 6
  IF ~~ THEN REPLY #59726 /* ~"Non. En fait, je m'en allais."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #59644 /* ~"Dis-moi que tu es ici pour l'épée et je te tuerai."~ */
  IF ~~ THEN REPLY #59729 /* ~"Je suis venu pour l'épée."~ */ GOTO 2
  IF ~~ THEN REPLY #59730 /* ~"Laisse tomber. Je m'en vais."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #59645 /* ~La voix de Cassius résonne dans sa corpulente poitrine. "Tu cherches l'épée ?"~ */
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #59733 /* ~"Parle-moi de toi d'abord."~ */ GOTO 1
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #59734 /* ~"Oui."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #59735 /* ~"Pas encore."~ */ GOTO 19
  IF ~~ THEN REPLY #12012 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1 2.2 9.3 10.3 11.3 12.3
  SAY #59646 /* ~"Si tu désires la véritable essence de l'épée, tu dois revenir me voir, et tu dois te battre pour elle. D'une manière ou d'une autre, nous devrons nous affronter."~ */
  IF ~~ THEN REPLY #59736 /* ~"Très bien. Au revoir."~ */ JOURNAL #59745 /* ~Un homme gras et écœurant m'a défié pour la possession de l'épée au centre de la prison. Il m'a dit que l'essence de l'arme était en lui et qu'il me fallait l'affronter si je souhaitais l'obtenir,.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #59648 /* ~"Alors, ce sont les règles. Tu dois choisir entre trois possibilités : la force, l'esprit ou la vitesse. Si tu échoues à l'une d'entre elles, je t'anéantirai."~ */
  IF ~~ THEN REPLY #59746 /* ~"Je choisis la force."~ */ GOTO 10
  IF ~~ THEN REPLY #59747 /* ~"Je choisis l'esprit."~ */ GOTO 11
  IF ~~ THEN REPLY #59748 /* ~"Je choisis la vitesse."~ */ GOTO 12
  IF ~~ THEN REPLY #59749 /* ~"Laisse tomber. Je reviendrai plus tard."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.1 12.1
  SAY #59649 /* ~"Alors nous nous battrons. Si tu l'emportes, tu prendras mon épée sur mon cadavre. Si tu perds, je me régalerai de tes os."~ */
  IF ~~ THEN REPLY #59751 /* ~"Très bien."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ JOURNAL #59737 /* ~J'ai choisi que Cassius et moi déciderions par la force à qui reviendrait l'épée. Mais Cassius est fort, et il m'a dit qu'il se délecterait de la moelle de mes os s'il l'emportait.~ */ EXIT
  IF ~~ THEN REPLY #59752 /* ~"Dans ce cas, je choisis l'esprit."~ */ GOTO 11
  IF ~~ THEN REPLY #59753 /* ~"Dans ce cas, je choisis la vitesse."~ */ GOTO 12
  IF ~~ THEN REPLY #59754 /* ~"Dans ce cas, laisse tomber."~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1 12.2
  SAY #59651 /* ~"Alors, je vais te poser trois devinettes. Si tu échoues, je t'anéantirai, je confectionnerai des pipes avec ton crâne et j'entonnerai une chanson de tourment qui hantera ton esprit pour l'éternité."~ */
  IF ~~ THEN REPLY #59757 /* ~"Très bien. Pose tes devinettes."~ */ JOURNAL #59738 /* ~Je débute avec Cassius un duel mental, une série de trois énigmes. Si je l'emporte, l'épée sera à moi. Par contre, si je devais être battu, il m'a menacé de s'amuser avec mon squelette et mon esprit.~ */ GOTO 14
  IF ~~ THEN REPLY #59761 /* ~"Dans ce cas, je choisis la force."~ */ GOTO 10
  IF ~~ THEN REPLY #59762 /* ~"Dans ce cas, je choisis la vitesse."~ */ GOTO 12
  IF ~~ THEN REPLY #59764 /* ~"Dans ce cas, laisse tomber."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 9.2 10.2 11.2
  SAY #59653 /* ~"Alors tu dois voler un rouleau de pansement dissimulé sur mon corps. Si tu y parviens, reparle-moi ; je tirerai la lame de sa cachette. Si tu échoues, les feux de la Fosse te paraîtront doux comparés aux tortures que je t'infligerai. Tu veux commencer ?"~ */
  IF ~~ THEN REPLY #59765 /* ~"Très bien."~ */ JOURNAL #59739 /* ~Je commence un test de rapidité avec Cassius, le gardien de l'épée. Si je parviens à lui arracher son rouleau de pansement, je n'aurai qu'à lui parler de nouveau et il me donnera l'épée. Si j'échoue, il a fait le serment de me détruire.~ */ GOTO 13
  IF ~~ THEN REPLY #59766 /* ~"Dans ce cas, je choisis la force."~ */ GOTO 10
  IF ~~ THEN REPLY #59767 /* ~"Dans ce cas, je choisis l'esprit."~ */ GOTO 11
  IF ~~ THEN REPLY #59768 /* ~"Dans ce cas, laisse tomber."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #59655 /* ~"Alors, vas-y. Autre chose, à partir de maintenant, je considère que tu cherches la lame d'une autre façon."~ */
  IF ~~ THEN REPLY #59769 /* ~"Bien. On va voir ça."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0
  SAY #59657 /* ~"Nous commençons par une devinette classique : qu'est-ce qui marche sur quatre pattes à l'aube, sur deux pattes l'après-midi et sur trois pattes au crépuscule ?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #59770 /* ~Tu connais la réponse : "Un humain marche à quatre pattes à la naissance, sur deux pattes dans sa jeunesse et s'appuie sur une canne en vieillissant."~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #59771 /* ~"Un homme ?"~ */ GOTO 16
  IF ~~ THEN REPLY #59772 /* ~"Un bousier blessé ?"~ */ GOTO 15
  IF ~~ THEN REPLY #59773 /* ~"Un ours ?"~ */ GOTO 15
  IF ~~ THEN REPLY #59774 /* ~"Un tanar'ri polymorphe ?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.2 14.3 14.4 16.1 16.2 16.4 17.2 17.3 17.4
  SAY #59659 /* ~"C'est faux. Tu vas périr au terme d'une terrible agonie."~ */
  IF ~~ THEN REPLY #59775 /* ~"Attends !"~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59776 /* ~Bats-toi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 14.1
  SAY #59661 /* ~"C'est exact. Et voici la deuxième devinette : je grogne, mais aucun mot ne s'échappe jamais de mes lèvres. Je peux être vide, mais jamais pleine. Qui suis-je ?"~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #59777 /* ~Tu connais la réponse : "Tu es la faim ?"~ */ GOTO 17
  IF ~~ THEN REPLY #59778 /* ~"Un fantôme ?"~ */ GOTO 15
  IF ~~ THEN REPLY #59779 /* ~"Un prisonnier sans langue ?"~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #59780 /* ~"La faim ?"~ */ GOTO 17
  IF ~~ THEN REPLY #59781 /* ~"La lune ?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.3
  SAY #59662 /* ~"Oui. Et enfin la troisième devinette : qu'est-ce qui s'envole et qui est incapable de rester immobile ? Qu'est-ce qui dévore tout ce qu'il touche, mais ne mange rien ? Qu'est-ce qui ne peut jamais être prêté, mais qui est toujours gaspillé ? Qu'est-ce qu'on ne veut pas perdre mais qu'on ne peut pas conserver ?"~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #59782 /* ~Tu connais la réponse : "La réponse, c'est le temps."~ */ JOURNAL #59740 /* ~J'ai vaincu Cassius, le gardien de l'épée de la prison de Maudith, au cours d'un duel d'astuce. Ses énigmes étaient étonnamment faciles à résoudre.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #59783 /* ~"C'est le temps ?"~ */ JOURNAL #59740 /* ~J'ai vaincu Cassius, le gardien de l'épée de la prison de Maudith, au cours d'un duel d'astuce. Ses énigmes étaient étonnamment faciles à résoudre.~ */ GOTO 18
  IF ~~ THEN REPLY #59784 /* ~"C'est le feu ?"~ */ GOTO 15
  IF ~~ THEN REPLY #59785 /* ~"C'est la puissance ?"~ */ GOTO 15
  IF ~~ THEN REPLY #59786 /* ~"C'est la magie ?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #59663 /* ~"Tu as gagné. Ton apparence m'a fait croire que ton esprit était à la hauteur de ton aspect balafré. J'ai échoué dans ma tâche et je te remets l'épée. Je dois quitter cet endroit."~ */
  IF ~~ THEN REPLY #59787 /* ~"Merci."~ */ DO ~SetGlobal("Cassius","GLOBAL",10)
AddexperienceParty(5000)
GiveItemCreate("Celestia",Protagonist,1,0,0)
StickySinisterPoof("S113SMOK",Myself,1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 0.2 7.2
  SAY #59665 /* ~"L'habit ne fait pas le moine. Tu es un voleur trop doué pour moi. Voici la clé. Je m'en vais d'ici pour cacher ma honte."~ */
  IF ~~ THEN REPLY #59788 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Cassius","GLOBAL",10)
AddexperienceParty(5000)
GiveItemCreate("Celestia",Protagonist,1,0,0)
StickySinisterPoof("S113SMOK",Myself,1)
DestroySelf()
~ JOURNAL #59741 /* ~J'ai vaincu Cassius, le gardien de l'épée de la prison de Maudith, au cours d'un duel de rapidité. Il s'est montré étonnamment lent.~ */ EXIT
END
