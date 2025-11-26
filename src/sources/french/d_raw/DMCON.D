// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60874 /* ~Tu vois un homme mécanique avec un bras d'une peau jaunâtre. Bien qu'il s'agisse de toute évidence d'une construction, son visage est animé et il te regarde d'un air menaçant.~ */
  IF ~~ THEN REPLY #60875 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #60876 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60877 /* ~Dans un ronronnement mécanique, il fronce les yeux et continue à te fixer. Soudain, il se frappe la poitrine des deux bras, faisant bruyamment résonner le cube, et sautille plusieurs fois. Il finit par se calmer et t'observe. "Oook !"~ */
  IF ~~ THEN REPLY #60878 /* ~"À quoi ça rime tout ça ?"~ */ GOTO 2
  IF ~~ THEN REPLY #60879 /* ~"Qui es-tu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #60880 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 6
  IF ~~ THEN REPLY #60881 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 7
  IF ~~ THEN REPLY #60882 /* ~"Je n'ai pas de temps à perdre. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60883 /* ~Il te regarde d'un air troublé tout en se redressant et en se grattant la tête. "Ça devait déclencher une réaction de peur. Ça a marché ?"~ */
  IF ~~ THEN REPLY #60884 /* ~"Pas vraiment."~ */ GOTO 3
  IF ~~ THEN REPLY #60885 /* ~"Et bien, bravo."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #60886 /* ~Il soupire et détourne le regard un moment. "Je suis désolé d'entendre ça. J'espérais augmenter mon espérance de vie suffisamment longtemps pour te donner encore quelques coups. Oh, bon…" Il attaque.~ */
  IF ~~ THEN REPLY #60887 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #60888 /* ~Il sourit et hoche la tête. "Parfait. Je noterai ça comme une technique viable pour une utilisation future." Il attaque.~ */
  IF ~~ THEN REPLY #60889 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #60890 /* ~"Je suis ton pire ennemi." Il attaque.~ */
  IF ~~ THEN REPLY #60891 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY #60892 /* ~"Je suis une construction de combat moyenne. Mes caractéristiques sont les suivantes : capacités de combat moyennes, intelligence moyenne et aptitude moyenne à utiliser mon arme de choix." Il attaque.~ */
  IF ~~ THEN REPLY #60893 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #60894 /* ~"Je t'évalue pour déterminer tes faiblesses." La construction marque une pause. "J'ai terminé mon évaluation et je vais maintenant t'attaquer sans pitié." Elle attaque.~ */
  IF ~~ THEN REPLY #60895 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY #60896 /* ~"Tu oses attirer mon attention pour finalement m'éconduire comme ça ? Tu vas voir !" Il attaque.~ */
  IF ~~ THEN REPLY #60897 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 9 // from:
  SAY #60898 /* ~Tu vois un homme mécanique avec un bras d'une peau jaunâtre. Bien qu'il s'agisse de toute évidence d'une construction, son visage est animé et il te regarde d'un air menaçant.~ */
  IF ~~ THEN REPLY #60899 /* ~"Bonjour."~ */ GOTO 10
  IF ~~ THEN REPLY #60900 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60901 /* ~Il te regarde avec un sourire exagéré tout en t'examinant. Puis il rit d'un ton monotone. "C'est ce qu'ils envoient de mieux ? Ha ! Les imbéciles." Il continue à te toiser.~ */
  IF ~~ THEN REPLY #60903 /* ~"Ce que qui envoie de mieux ?"~ */ GOTO 11
  IF ~~ THEN REPLY #60904 /* ~"Qui es-tu ?"~ */ GOTO 12
  IF ~~ THEN REPLY #60905 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 13
  IF ~~ THEN REPLY #60906 /* ~"Qu'est-ce que tu fais ?~ */ GOTO 14
  IF ~~ THEN REPLY #60907 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #60908 /* ~Il rejette la tête en arrière et rit. "Ha ! Ha ! Tu fais semblant de ne pas comprendre, mais ça ne te sauvera pas. Sache que tu es condamné, imbécile !" Il attaque.~ */
  IF ~~ THEN REPLY #60909 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #60910 /* ~"Je n'ai pas d'identité, je suis juste une autre pièce de canon sans nom placée sur ton chemin alors que tu explores ces salles." Il attaque.~ */
  IF ~~ THEN REPLY #60911 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #60912 /* ~Il s'arrête un moment pour se gratter la tête. "Je suis le monstre qui va te rouer de coups jusqu'à ce que tu meures… sauf si, bien sûr, tu me tues le premier." Il attaque.~ */
  IF ~~ THEN REPLY #60915 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #60916 /* ~"Je prends un air confiant et supérieur pour susciter chez toi un sentiment d'incompétence. Si ça marche, je remporterai le combat dans lequel je vais maintenant me lancer." Il attaque.~ */
  IF ~~ THEN REPLY #60917 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #60918 /* ~"Ha ! Tu crois qu'il te suffit de jouer la nonchalance et de dire au revoir pour échapper à ma colère ? Non, imbécile !" Il attaque.~ */
  IF ~~ THEN REPLY #60919 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 16 // from:
  SAY #60920 /* ~Tu vois un homme mécanique avec un bras d'une peau jaunâtre. Bien qu'il s'agisse de toute évidence d'une construction, son visage est animé et il te regarde d'un air menaçant.~ */
  IF ~~ THEN REPLY #60921 /* ~"Bonjour."~ */ GOTO 17
  IF ~~ THEN REPLY #60922 /* ~Ignore la créature.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #60923 /* ~"Bonjour." Il te regarde, le visage sans expression.~ */
  IF ~~ THEN REPLY #60924 /* ~"Qui es-tu ?"~ */ GOTO 18
  IF ~~ THEN REPLY #60926 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 19
  IF ~~ THEN REPLY #60927 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 20
  IF ~~ THEN REPLY #60928 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #60929 /* ~Il s'arrête pour réfléchir, puis hausse les épaules. "Je n'en ai aucune idée. " Il fronce les sourcils. "Je ne suis pas certain d'avoir un jour su qui j'étais. J'ai l'impression que mon identité, mon but dans la vie, importent peu. Je me sens perdu… J'ai envie… de transférer mes frustrations sur quelqu'un ou quelque chose d'autre…" Il attaque.~ */
  IF ~~ THEN REPLY #60930 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #60931 /* ~Il fronce les sourcils. "Je ne suis rien d'autre que le pion d'un jeu cruel. Je n'ai pas d'identité, pas de vie, et toi tu viens m'agacer avec tes questions stupides. Je déteste la vie et je te déteste." Il attaque.~ */
  IF ~~ THEN REPLY #60932 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY #60933 /* ~Il te regarde avec mépris. "J'attends qu'on mette fin à ce badinage insensé pour pouvoir te rouer de coups." Il te fixe.~ */
  IF ~~ THEN REPLY #60934 /* ~"Pourquoi tu veux faire ça ?~ */ GOTO 21
  IF ~~ THEN REPLY #60935 /* ~Attaque la créature.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #60937 /* ~Il hausse les épaules. "Le texte qui m'est associé n'offre pas d'autres alternatives. Une fois cette phrase terminée, je commencerai à te combattre." Il attaque.~ */
  IF ~~ THEN REPLY #60938 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.3
  SAY #60939 /* ~"Au revoir. Mais, avant de partir, permets-moi de laisser libre cours à certaines frustrations liées à ta présence ici."~ */
  IF ~~ THEN REPLY #60941 /* ~Défends-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
