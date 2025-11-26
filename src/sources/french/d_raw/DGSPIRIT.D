// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGSPIRIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGSPIRIT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #32434 /* ~Cette silhouette spectrale se matérialise dans l'obscurité du passage devant toi et se déplace rapidement pour te bloquer le passage. Elle flotte devant toi, et ses traits, jadis humains, sont tordus par la rage. "Impurs ! Quittez immédiatement ces lieux !"~ */
  IF ~~ THEN REPLY #32444 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #32445 /* ~Pars vite.~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #32435 /* ~Autour de toi, l'air devient subitement glacé, alors que l'esprit gardien se manifeste à nouveau. Une fois de plus, il flotte dans ta direction, sa robe spectrale voletant, comme secouée par une brise éthérée.~ */
  IF ~  Global("Spirit_Quest","GLOBAL",0)
~ THEN REPLY #32446 /* ~"Attends, esprit. J'ai des questions…"~ */ GOTO 4
  IF ~  Global("Spirit_Quest","GLOBAL",1)
~ THEN REPLY #32447 /* ~"Attends, esprit. Je voudrais t'aider à te débarrasser de cet intrus dont tu as parlé."~ */ GOTO 8
  IF ~~ THEN REPLY #32448 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #32436 /* ~"Pars immédiatement !" Sa voix tonnante fait écho sur les corridors. "Cet endroit est interdit aux vivants. Pars, pendant que tu le peux."~ */
  IF ~~ THEN REPLY #32449 /* ~"J'ai d'abord des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #32450 /* ~"Je vais où je veux… Laisse-moi tranquille, esprit."~ */ GOTO 3
  IF ~~ THEN REPLY #32451 /* ~"Comme tu veux. Au revoir."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 4.1
  SAY #32437 /* ~"Impudence !" Le grognement sonore de l'esprit te force à te boucher les oreilles. "Tu as été mis en garde… Je ne permettrai pas que ces lieux de repos sacrés soient perturbés davantage."~ */
  IF ~~ THEN REPLY #32452 /* ~"Davantage ? Quelqu'un d'autre est venu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #32453 /* ~"Ouais, c'est ça. Trouve-toi plutôt un gamin à effrayer."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32454 /* ~"Tout bien réfléchi… je crois que je vais partir. Au revoir."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0
  SAY #32438 /* ~"Cherche tes réponses ailleurs. Ces lieux sont un sanctuaire pour les morts. Je ne permettrai pas que leur sommeil soit troublé par l'intrusion d'un autre mortel insolent !"~ */
  IF ~~ THEN REPLY #32455 /* ~"Un autre ? Il y a quelqu'un d'autre ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #32456 /* ~"Je vais où je veux… Laisse-moi tranquille, esprit."~ */ GOTO 3
  IF ~~ THEN REPLY #32457 /* ~"Comme tu veux. Au revoir."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #32439 /* ~"Si tu veux le savoir… oui, il y a un autre intrus, qui continue toujours à violer le caractère saint de ces couloirs sacrés." La colère diminue dans la voix de l'esprit. Cet aveu semble l'attrister. "Les âmes de mes frères et sœurs réclament la paix."~ */
  IF ~~ THEN REPLY #32458 /* ~"Qui est cet autre intrus ?"~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #32459 /* ~"Pourquoi est-ce que tu ne chasses pas cet intrus ?"~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #32460 /* ~"Tout bien réfléchi… je crois que je vais partir. Au revoir."~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #32440 /* ~"C'est une créature lâche et malveillante qui exerce un grand pouvoir sur les morts. Il cherche quelque chose dans ces couloirs… et je ne sais ce que cela peut être, ou quel but il poursuit."~ */
  IF ~~ THEN REPLY #32461 /* ~"Pourquoi est-ce que tu ne chasses pas cet intrus ?"~ */ GOTO 7
  IF ~~ THEN REPLY #32462 /* ~"Tout bien réfléchi… je crois que je vais partir. Au revoir."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #32441 /* ~"Je ne peux pas. Ce lâche s'est enfermé dans l'une des salles intérieures du mausolée. Il a érigé de puissantes défenses pour m'empêcher d'entrer dans la salle. C'est de là qu'il en appelle à ses sombres arts pour réveiller mes frères et les plier à sa volonté malfaisante."~ */
  IF ~~ THEN REPLY #32463 /* ~"Je peux peut-être t'aider…"~ */ GOTO 8
  IF ~~ THEN REPLY #32464 /* ~"À mon avis, tu aurais besoin d'un second intrus pour te débarrasser du premier."~ */ GOTO 8
  IF ~~ THEN REPLY #32465 /* ~"Tout bien réfléchi… je crois que je vais partir. Au revoir."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1 7.0 7.1
  SAY #32442 /* ~L'esprit reste silencieux pendant un long moment. Tu peux presque sentir sur toi le poids de son regard dénué de vie. "Oui… il est possible que tu réussisses là où j'ai échoué. Si tu t'engages à me débarrasser de cet indésirable, je te laisserai passer. Qu'en dis-tu ?"~ */
  IF ~~ THEN REPLY #32466 /* ~"Je m'en charge."~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",2)
~ JOURNAL #31881 /* ~Je me suis engagé à aider l'Esprit qui garde le mausolée. Il semble qu'un intrus nécromancien doté de pouvoirs puissants qui le protègent contre l'Esprit s'est enfermé dans une chambre intérieure. Il doit être responsable des 'morts qui marchent' qui préoccupent tant Norochj.~ */ GOTO 9
  IF ~~ THEN REPLY #32467 /* ~"Tout bien réfléchi… je crois que je vais partir. Au revoir."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #32443 /* ~"Qu'il en soit ainsi." L'esprit disparaît graduellement, et seul l'écho de sa voix désincarnée subsiste. "Mais prends garde… marche avec précaution dans ces couloirs ou tu rejoindras les autres dans leur repos éternel."~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Dead("Strahan")
~ THEN BEGIN 10 // from:
  SAY #32468 /* ~Alors que tu t'engages dans le couloir, l'esprit gardien se matérialise devant toi. Cette apparition fantomatique te regarde avec bienveillance. "Je te remercie. Tu m'as rendu un grand service. Les esprits de mes protégés peuvent à nouveau reposer en paix. Va en paix… l'ami." L'apparition disparaît graduellement, te laissant seul dans les couloirs désertés du mausolée.~ */
  IF ~~ THEN REPLY #32469 /* ~Pars.~ */ DO ~AddexperienceParty(2000)
SetGlobal("Spirit_Quest","GLOBAL",4)
SetGlobal("Mausoleum_Quest","GLOBAL",2)
~ JOURNAL #37705 /* ~J'ai tué l'intrus nécromancien dont m'avait parlé l'Esprit gardien. Ses pouvoirs ayant été détruits, les morts n'erreront plus dans les salles du mausolée. Norochj sera content.~ */ EXIT
END
