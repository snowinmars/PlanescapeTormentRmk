// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60814 /* ~Tu vois un homme mécanique avec un bras d'une peau rouge volcanique. Il te regarde approcher d'un air méfiant.~ */
  IF ~~ THEN REPLY #60815 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #60816 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60817 /* ~Il penche la tête d'un côté et te regarde d'un air interrogateur. "Bonjour, intrus."~ */
  IF ~~ THEN REPLY #60818 /* ~"Qu'est-ce qui te fait croire que je suis un intrus ?"~ */ GOTO 2
  IF ~~ THEN REPLY #60819 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #60820 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 4
  IF ~~ THEN REPLY #60821 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 5
  IF ~~ THEN REPLY #60822 /* ~"Je dois m'en aller. Au revoir."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60823 /* ~Il te sourit méchamment. "Parce que tu n'es pas l'un des nôtres. Tu es un intrus et en tant que tel, tu dois mourir." Il attaque.~ */
  IF ~~ THEN REPLY #60824 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #60825 /* ~"Je n'ai pas d'identité, je n'ai qu'un but ; et ce but, c'est de te tuer." Il attaque.~ */
  IF ~~ THEN REPLY #60826 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #60827 /* ~"Je suis un drone de combat lourd. Et mes caractéristiques sont les suivantes : capacités de combat au-dessus de la moyenne, intelligence supérieure et armes redoutables. En prime, j'ai mauvais caractère." Il attaque.~ */
  IF ~~ THEN REPLY #60828 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY #60829 /* ~"J'enregistre l'emplacement de tes organes vitaux. Maintenant que j'ai compilé ces informations, je vais les utiliser pour t'infliger de terribles souffrances." Il attaque.~ */
  IF ~~ THEN REPLY #60830 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY #60831 /* ~Il te sourit méchamment. "Oui, tu vas t'en aller, mais ce sera les pieds devant, intrus, parce que je vais te massacrer !" Il attaque.~ */
  IF ~~ THEN REPLY #60832 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 7 // from:
  SAY #60833 /* ~Tu vois un homme mécanique avec un bras d'une peau rouge volcanique. Il te regarde approcher d'un air méfiant.~ */
  IF ~~ THEN REPLY #60834 /* ~"Bonjour."~ */ GOTO 8
  IF ~~ THEN REPLY #60835 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60836 /* ~Il penche la tête d'un côté d'un air interrogateur. "Pourquoi est-ce que tu persistes à nous poser des questions ? Je ne comprends pas."~ */
  IF ~~ THEN REPLY #60837 /* ~"Dans l'espoir d'apprendre quelque chose de nouveau."~ */ GOTO 9
  IF ~~ THEN REPLY #60838 /* ~"Qui es-tu ?"~ */ GOTO 10
  IF ~~ THEN REPLY #60839 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 11
  IF ~~ THEN REPLY #60840 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 12
  IF ~~ THEN REPLY #60841 /* ~"Je dois m'en aller. Au revoir."~ */ GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #60842 /* ~Il détourne le regard un moment pour réfléchir. Puis il te regarde de nouveau et acquiesce. "Oui… je suppose que c'est vrai… Laisse-moi t'apprendre la souffrance." Il attaque.~ */
  IF ~~ THEN REPLY #60843 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #60845 /* ~"Je suis au service du Magicien du diable et IL a ordonné ta mort." Il attaque.~ */
  IF ~~ THEN REPLY #60846 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY #60847 /* ~"Je suis celui qui va te mettre à genoux, intrus !" Il attaque.~ */
  IF ~~ THEN REPLY #60848 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY #60849 /* ~"J'avertis le Magicien du diable de ta position dans le dédale avant de te massacrer…" Il s'arrête un moment. "Voilà, maintenant à nous deux." Il attaque.~ */
  IF ~~ THEN REPLY #60850 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.4
  SAY #60851 /* ~"T'en aller ? Si vite ? Laisse-moi t'aider !" Il attaque.~ */
  IF ~~ THEN REPLY #60852 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 14 // from:
  SAY #60853 /* ~Tu vois un homme mécanique avec un bras d'une peau rouge volcanique. Il te regarde approcher d'un air méfiant.~ */
  IF ~~ THEN REPLY #60854 /* ~"Bonjour."~ */ GOTO 15
  IF ~~ THEN REPLY #60855 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #60856 /* ~Il penche la tête d'un côté et te regarde d'un air interrogateur. "Ta ténacité est impressionnante, intrus, mais néanmoins stupide."~ */
  IF ~~ THEN REPLY #60857 /* ~"Pourquoi est-ce qu'on doit se battre ? Ça ne rime à rien."~ */ GOTO 16
  IF ~~ THEN REPLY #60858 /* ~"Qui es-tu ?"~ */ GOTO 17
  IF ~~ THEN REPLY #60859 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 18
  IF ~~ THEN REPLY #60860 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 19
  IF ~~ THEN REPLY #60861 /* ~"Je dois m'en aller. Au revoir."~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #60862 /* ~Il te fixe un moment avant de te répondre. "Ça ne rime à rien, intrus. Il y a un sens à notre folie…" Il attaque.~ */
  IF ~~ THEN REPLY #60863 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #60864 /* ~"En tant qu'individu, personne. En tant que partie de l'ensemble, tout le monde." Il attaque.~ */
  IF ~~ THEN REPLY #60865 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.2
  SAY #60866 /* ~"Un moyen d'arriver au but, intrus." Il attaque.~ */
  IF ~~ THEN REPLY #60867 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.3
  SAY #60868 /* ~"J'informe le Magicien du diable de toutes tes victoires, de tous tes échecs et de tous tes mouvements. Nous tirons des enseignements de toi et grâce à toi, nous allons nous améliorer." Il attaque.~ */
  IF ~~ THEN REPLY #60869 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY #60870 /* ~"Oui… Jusqu'à la prochaine fois, intrus." Il attaque.~ */
  IF ~~ THEN REPLY #60871 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
