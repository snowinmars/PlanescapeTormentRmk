// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60952 /* ~Tu vois un homme mécanique à la peau vert pâle. Bien qu'il s'agisse d'une construction, il a un visage animé et te regarde d'un air menaçant.~ */
  IF ~~ THEN REPLY #60953 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #60954 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60955 /* ~"Grrrr." La créature te regarde d'un air menaçant, puis s'arrête pour voir ta réaction.~ */
  IF ~~ THEN REPLY #60956 /* ~"Et c'est censé me faire peur ?"~ */ GOTO 2
  IF ~~ THEN REPLY #60957 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #60958 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 6
  IF ~~ THEN REPLY #60959 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 7
  IF ~~ THEN REPLY #60960 /* ~"Je n'ai pas le temps. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60961 /* ~Il semble troublé. "Grrrr ?" Il fait un petit geste menaçant dans ta direction.~ */
  IF ~~ THEN REPLY #60962 /* ~"Je t'ai demandé si c'était censé me faire peur."~ */ GOTO 3
  IF ~~ THEN REPLY #60963 /* ~"Je n'ai pas le temps. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #60965 /* ~Il te fixe un moment tout en réfléchissant à ta question. "Oui. *Grrrr* est un son synonyme de menace. J'y ai ajouté le geste qui convient pour appuyer la menace. La peur est la réponse attendue qui me donnera l'avantage au cours du combat qui va suivre." Il attaque.~ */
  IF ~~ THEN REPLY #60966 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY #60967 /* ~Ta question semble totalement décontenancer la créature. Elle te fixe et penche la tête sur le côté sans savoir vraiment que faire. "Je suis un monstre. Bon, maintenant, on se bat ?"~ */
  IF ~~ THEN REPLY #60968 /* ~"Je suppose que tu plaisantes…"~ */ GOTO 5
  IF ~~ THEN REPLY #60969 /* ~Attaque la créature.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #60970 /* ~Il continue à te fixer un moment. "Non… Grrrr." Il attaque.~ */
  IF ~~ THEN REPLY #60971 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY #60972 /* ~"Je suis une construction de combat légère. Mes caractéristiques sont les suivantes : piètre capacité de combat, piètre intelligence et piètre maniement de mon arme." Il attaque.~ */
  IF ~~ THEN REPLY #60973 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #60975 /* ~Il te fixe et penche la tête d'un côté sans vraiment savoir que faire. "J'habite dans un donjon. Tu as pénétré dans mon espace personnel et tu vas le payer. Je vais donc initialiser ma propre séquence d'attaque : son *Grrrr*, geste menaçant et combat." Il attaque.~ */
  IF ~~ THEN REPLY #60976 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 2.1
  SAY #60977 /* ~La créature lève les bras et brandit son arme. "Vois mon ennemi traîné devant moi. Entends les lamentations des femmes. Je suis le vainqueur." Il attaque.~ */
  IF ~~ THEN REPLY #60978 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 9 // from:
  SAY #60979 /* ~Tu vois un homme mécanique à la peau vert pâle. Bien qu'il s'agisse d'une construction, il a un visage animé et te regarde d'un air menaçant.~ */
  IF ~~ THEN REPLY #60980 /* ~"Bonjour."~ */ GOTO 10
  IF ~~ THEN REPLY #60981 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60982 /* ~"Meurs au nom du Magicien du diable !" La créature brandit une arme vers toi.~ */
  IF ~~ THEN REPLY #60983 /* ~"Qu'est-ce que c'est que ce magicien du diable dont tu parles ?"~ */ GOTO 11
  IF ~~ THEN REPLY #60984 /* ~"Qui es-tu ?"~ */ GOTO 12
  IF ~~ THEN REPLY #60985 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 14
  IF ~~ THEN REPLY #60986 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 15
  IF ~~ THEN REPLY #60987 /* ~"Et tout ça est censé me faire peur ?"~ */ GOTO 16
  IF ~~ THEN REPLY #60988 /* ~"Je n'ai pas le temps. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #60989 /* ~La créature cesse d'agiter son arme et marque une pause pour réfléchir un moment. "Euh… Celui qui n'existe pas tant que tu n'as pas défini la Construction de donjon Rubikon sur le niveau de difficulté *difficile*. Là, tu auras des problèmes. En attendant, tu vas mourir au nom du Magicien du diable !" Il attaque.~ */
  IF ~~ THEN REPLY #60990 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #60991 /* ~"Je ne suis qu'un serviteur sans visage du mal chargé d'anéantir ou d'être anéanti !"~ */
  IF ~~ THEN REPLY #60992 /* ~"C'est une blague, non ?"~ */ GOTO 13
  IF ~~ THEN REPLY #60993 /* ~Attaque la créature.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #60994 /* ~Le visage de la créature affiche diverses émotions jusqu'à ce que celle qui convient se fige. "Tu te moques de moi ! Meurs, sale progéniture d'un humanoïde femelle !" Il attaque.~ */
  IF ~~ THEN REPLY #60995 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY #60996 /* ~"Je suis une construction de combat légère programmée pour tuer les intrus qui osent défier Rubikon !" Il attaque.~ */
  IF ~~ THEN REPLY #60997 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY #60998 /* ~"Je joue le script lié à mon type de modèle par le scripteur. Je vais à présent me montrer hostile et te tuer ou me faire tuer par toi !" Il attaque.~ */
  IF ~~ THEN REPLY #60999 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.4
  SAY #61000 /* ~La créature arrête d'agiter son arme et réfléchit un moment. "Oui… L'évocation du mal suscite systématiquement la peur dans le cœur des masses, ce qui donne au héros un prétexte pour aller affronter d'innombrables dangers jusqu'à ce qu'il finisse par anéantir le mal né d'un acte de totale stupidité." Il attaque.~ */
  IF ~~ THEN REPLY #61001 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.5
  SAY #61002 /* ~La créature lève les bras et brandit son arme. "Vois le ver de terre tapi devant ma puissance et ma splendeur. Ne demande pas grâce, ver de terre. Car je ne te l'accorderai pas !" Il attaque.~ */
  IF ~~ THEN REPLY #61003 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 18 // from:
  SAY #61004 /* ~Tu vois un homme mécanique à la peau vert pâle. Bien qu'il s'agisse d'une construction, il a un visage animé et te regarde d'un air menaçant.~ */
  IF ~~ THEN REPLY #61005 /* ~"Bonjour."~ */ GOTO 19
  IF ~~ THEN REPLY #61006 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61007 /* ~La créature s'arrête soudain et te regarde d'un air d'abord menaçant, puis de fausse terreur. "Eeeek ! C'est certainement le héros envoyé ici pour anéantir le mal. Pauvre de moi, malheureuse construction en fonction au moment de son arrivée !"~ */
  IF ~~ THEN REPLY #61008 /* ~"Qu'est-ce que tu racontes ?"~ */ GOTO 20
  IF ~~ THEN REPLY #61009 /* ~"Qui es-tu ?"~ */ GOTO 21
  IF ~~ THEN REPLY #61010 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 23
  IF ~~ THEN REPLY #61011 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 24
  IF ~~ THEN REPLY #61012 /* ~"Je n'ai pas le temps. Au revoir."~ */ GOTO 25
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61013 /* ~La créature met les mains sur les hanches et fronce les sourcils. "De l'action, nigaud, de l'action. Comment veux-tu que je m'en sorte si tu ne coopères pas ? On en était où…" Il marque une pause pour réfléchir. "Oh, je me souviens, j'étais sur le point de t'écraser." Il attaque.~ */
  IF ~~ THEN REPLY #61014 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #61015 /* ~La créature s'arrête un moment pour réfléchir, puis hausse exagérément les épaules. "Ta malheureuse victime ?" Il se prépare à l'attaque.~ */
  IF ~~ THEN REPLY #61016 /* ~"C'est pas possible, hein ?"~ */ GOTO 22
  IF ~~ THEN REPLY #61017 /* ~Attaque la créature.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61018 /* ~"Ah ! Mais si ! En garde, fripon !" Il attaque.~ */
  IF ~~ THEN REPLY #61019 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY #61020 /* ~"J'habite dans le donjon et je vais essayer de te botter le cul !" Il attaque.~ */
  IF ~~ THEN REPLY #61021 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.3
  SAY #61022 /* ~La créature se penche et se met à te chuchoter quelque chose à l'oreille. "Je joue actuellement le serviteur effrayé qui rencontre le héros pour la première fois." Elle se redresse alors et se met à pousser des cris effrayés. "Aux armes, constructions amies, nous devons anéantir le héros !" Il attaque.~ */
  IF ~~ THEN REPLY #61023 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.4
  SAY #61024 /* ~La créature te lance un regard à la fois noir et satisfait. "Non, serpent. Tu ne peux pas échapper à la terreur qui te menace. Lorsque l'on pèche comme tu l'as fait, on doit payer." Il attaque.~ */
  IF ~~ THEN REPLY #61025 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
