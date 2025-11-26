// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2887 /* ~Ce vieil homme à l'air aimable se retourne à ton approche et te salue poliment. "Bonjour… je peux t'aider ?"~ */
  IF ~~ THEN REPLY #2888 /* ~"Oui, j'avais des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #39381 /* ~"Non, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #39382 /* ~Le vieil homme se tourne et sourit. "Rebonjour. Je peux faire quelque chose pour toi ?"~ */
  IF ~~ THEN REPLY #39383 /* ~"Oui, j'avais des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #39384 /* ~"Non, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.1 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0
  SAY #39385 /* ~"Bien sûr ; je t'écoute, jeune homme."~ */
  IF ~~ THEN REPLY #39386 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 3
  IF ~~ THEN REPLY #39387 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 5
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39388 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68124 /* ~"Que peux-tu m'apprendre sur la prostituée silencieuse ?"~ */ GOTO 6
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39389 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ GOTO 7
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #39390 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ GOTO 8
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39391 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ GOTO 9
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39392 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ GOTO 10
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39393 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 11
  IF ~~ THEN REPLY #39394 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #39395 /* ~Le vieil homme glousse doucement. "Ce que font la plupart des hommes, mon jeune ami… je bavarde avec les belles dames de la Maison de tolérance."~ */
  IF ~~ THEN REPLY #39396 /* ~"Tu m'en conseilles une en particulier ?"~ */ GOTO 4
  IF ~~ THEN REPLY #39397 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #39398 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #39399 /* ~Il caresse sa barbe, tout en réfléchissant. "Je dirais… non. Tu comprends, jeune homme, je ne suis pas sûr de ce que tu recherches. Si je savais quel type de conversation te plaît, je serais peut-être plus à même de te faire une suggestion."~ */
  IF ~~ THEN REPLY #39400 /* ~"C'est pas grave. J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #39401 /* ~"Je suppose qu'il vaut mieux que j'aille leur parler moi-même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #39402 /* ~Le vieil homme sourit ; ses yeux brillent. "Je peux te dire que c'est un établissement tout ce qu'il y a de plus *merveilleux* ! Ici, les dames sont tellement enchanteresses… même cette Kimasxi, qui est pourtant mauvaise langue, à sa façon. Mais, jeune homme, je te conseille de parler à Tombée-en-Disgrâce de la Maison de tolérance… en tant que tenancière de l'établissement, elle pourra t'en dire plus que moi sur le lieu."~ */
  IF ~~ THEN REPLY #39403 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #39404 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 2.3
  SAY #39405 /* ~"Ah, oui… cette délicieuse créature doit être Ecco. Une adorable jeune fille… tellement facile à aborder. Pas seulement parce qu'elle est silencieuse, mais aussi parce qu'elle a ce petit *je-ne-sais-quoi*." Il soupire de contentement. "En tout cas, je ne sais pas *pourquoi* elle ne parle pas."~ */
  IF ~~ THEN REPLY #39406 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #39407 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY #39408 /* ~"Ravel ?" Le vieil homme lève un sourcil. "Ravel Puits-de-Rébus, la guenaude noire ? Que c'est inquiétant ! Non, je ne suis pas au courant. En tout cas, c'est une sacrée rumeur, qu'elle soit vraie ou fausse."~ */
  IF ~~ THEN REPLY #39409 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #39410 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #39411 /* ~"Non. Et je crois que même s'il était juste sous mon nez, je ne m'en rendrais pas compte… tu comprends, j'ai pratiquement perdu tout mon odorat." Il se donne une tape sur le nez. "C'est triste, je sais, mais on vieillit tous. J'ai entendu dire que Viviane dégageait toujours le plus merveilleux des parfums…"~ */
  IF ~~ THEN REPLY #39412 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #39413 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY #39414 /* ~Il secoue la tête. "Je connais le voile dont tu parles… j'ai aperçu Marissa avec une ou deux fois à l'extérieur de la Maison de tolérance… mais je ne sais pas où il est passé."~ */
  IF ~~ THEN REPLY #39415 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #39416 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.7
  SAY #39417 /* ~"Je ne sais pas grand-chose, hormis ce qu'en disent les légendes qu'on raconte aux enfants - que c'est une guenaude noire, mais de type tout particulièrement diabolique, et qu'elle a été bannie de Sigil il y a très, très longtemps."~ */
  IF ~~ THEN REPLY #39418 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #39419 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.8
  SAY #39420 /* ~Le vieil homme fronce les sourcils et se gratte la barbe. "S'il y a une dixième étudiante, mon jeune ami, je serais ravi de la rencontrer ! Mais autant que je sache, il n'y en a pas."~ */
  IF ~~ THEN REPLY #39421 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #39422 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
