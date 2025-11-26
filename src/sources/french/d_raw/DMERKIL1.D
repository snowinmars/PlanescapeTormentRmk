// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL1~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10418 /* ~Ce jeune homme robuste, au visage frais, te jette un long regard, puis lance : "Toi ! Mais je te connais ! Oh ! Tu es en état d'arrestation ! Non, attends… tu as été condamné à mort !" Il tire son arme, paré à t'attaquer.~ */
  IF ~~ THEN REPLY #10419 /* ~Attaque-le.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10420 /* ~Fuis.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10421 /* ~Tu vois un jeune gars qui a sans doute à peine dix-huit ans. Son visage trahit une vague tension. "Je peux t'aider, matois ?"~ */
  IF ~~ THEN REPLY #10422 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10423 /* ~"Je cherche un journal. En aurais-tu vu un récemment ?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10424 /* ~"Je cherche un Récupérateur appelé Pharod. Tu ne saurais pas où je pourrais le trouver par hasard ?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10425 /* ~"Que peux-tu me dire sur Vhailor ?"~ */ GOTO 12
  IF ~~ THEN REPLY #10427 /* ~"Qui sont tes amis ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #10428 /* ~"Que peux-tu me dire sur cet endroit ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10429 /* ~"Qu'est-ce que tu fais ?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10430 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10431 /* ~"Encore toi ? Que veux-tu ?" Il a l'air nerveux et impatient.~ */
  IF ~  Global("Know_Killer","GLOBAL",1)
~ THEN REPLY #10432 /* ~"Ton tueur ne s'est pas encore montré ?"~ */ GOTO 8
  IF ~~ THEN REPLY #10433 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10434 /* ~"Je cherche un journal. En aurais-tu vu un récemment ?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10435 /* ~"Je cherche un Récupérateur appelé Pharod. Tu ne saurais pas où je pourrais le trouver par hasard ?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10436 /* ~"Que peux-tu me dire sur Vhailor ?"~ */ GOTO 12
  IF ~~ THEN REPLY #10437 /* ~"Qui sont tes amis ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #10438 /* ~"Que peux-tu me dire sur cet endroit ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10439 /* ~"Qu'est-ce que tu fais ?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10440 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1 10.1
  SAY #10441 /* ~"Je suis Caleb. Un Rectifieur. Je suis ici avec Tarner et Ilsidon pour capturer mon premier criminel."~ */
  IF ~~ THEN REPLY #10442 /* ~"Que peux-tu me dire sur les Rectifieurs ?"~ */ GOTO 9
  IF ~~ THEN REPLY #10443 /* ~"Je vois. J'aimerais te poser une autre question."~ */ GOTO 10
  IF ~~ THEN REPLY #10444 /* ~"Bonne chance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.2 10.2
  SAY #10445 /* ~"Un journal ? Désolé, je suis nouveau, et je n'ai pas tous les bons contacts. Si j'en vois un, je te le fais savoir." Il promène son regard sur la salle.~ */
  IF ~~ THEN REPLY #10446 /* ~"Qu'est-ce que tu fais ?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10447 /* ~"Merci. En attendant, tu peux répondre à quelques questions pour moi."~ */ GOTO 10
  IF ~~ THEN REPLY #10448 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.4 2.5 10.5
  SAY #10449 /* ~"Ils veillent à ce que je réussisse ma première mission. Tarner, c'est l'aîné. Ilsidon doit veiller à ce que je fasse bien mon boulot et m'appuyer si nécessaire." Il déglutit. "J'espère que je n'aurai pas besoin de lui."~ */
  IF ~~ THEN REPLY #10450 /* ~"Tout ira bien, tu verras. Réponds à une ou deux questions pour moi, d'accord ?"~ */ GOTO 10
  IF ~~ THEN REPLY #10451 /* ~"Bonne chance à toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5 2.6 10.6
  SAY #10452 /* ~"Ici ? Ça s'appelle le Cadavre fumant, à cause du type à l'entrée, je crois. Un endroit fréquenté par les criminels et autres crapules. Il y a aussi des matois qui en savent un rayon sur un peu tout, par contre. Mais certains sont des fiélons, comme ces deux là-bas, et je n'aime pas avoir affaire à eux. Il me semble qu'ils scrutent mon âme."~ */
  IF ~~ THEN REPLY #10453 /* ~"Je comprends. Peux-tu répondre à d'autres questions pour moi ?"~ */ GOTO 10
  IF ~~ THEN REPLY #10454 /* ~"C'est le cas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.7 4.0 10.7
  SAY #10455 /* ~"Et bien, en tant que nouveau Rectifieur, je suis censé arrêter un criminel pour prouver que je peux travailler sur le terrain. J'ai décidé de capturer un tueur, on s'est renseigné, et on a su qu'il se trouverait ici. Je ne l'ai pas encore vu. À vrai dire, je suis un peu nerveux. Si tu veux bien m'excuser, je dois examiner les autres clients." Il tend le cou et promène son regard sur la salle.~ */
  IF ~~ THEN REPLY #10456 /* ~"Encore quelques questions et je te laisserai partir."~ */ GOTO 10
  IF ~~ THEN REPLY #10457 /* ~"Très bien. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0 10.0
  SAY #10458 /* ~"Non. Pas encore. Mais Tarner dit que notre criminel finira par venir ici. Pour l'instant, donc, on attend."~ */
  IF ~~ THEN REPLY #10459 /* ~"Bien. Réponds à d'autres questions pour moi."~ */ GOTO 10
  IF ~~ THEN REPLY #10460 /* ~"Bonne chance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0
  SAY #10461 /* ~"Et bien, ils… pardon, *je*… il faut que je m'y habitue !… je crois que la Justice est la chose la plus importante au monde. Je crois que, sans elle, rien n'aurait de sens et qu'il ne nous resterait plus qu'à nous tuer. Je ne veux pas me tuer, j'ai donc décidé de placer la justice au-dessus de tout. Si tu veux en savoir plus, tu devrais voir l'un de mes deux compagnons ou bien l'un de nos recruteurs. Ils en ont, des trucs à dire!"~ */
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10462 /* ~"Que peux-tu me dire sur Vhailor ?"~ */ GOTO 12
  IF ~~ THEN REPLY #10463 /* ~"C'est peut-être ce que je vais faire. Réponds d'abord à quelques questions, d'accord ?"~ */ GOTO 10
  IF ~~ THEN REPLY #10464 /* ~"D'accord. Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.1 4.1 5.0 6.0 7.0 8.0 9.1 11.0 12.0
  SAY #10465 /* ~"Qu'est-ce que tu veux savoir ?"~ */
  IF ~  Global("Know_Killer","GLOBAL",1)
~ THEN REPLY #10466 /* ~"Ton tueur ne s'est pas encore montré ?"~ */ GOTO 8
  IF ~~ THEN REPLY #10467 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10468 /* ~"Je cherche un journal. En aurais-tu vu un récemment ?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10469 /* ~"Je cherche un Récupérateur appelé Pharod. Tu ne saurais pas où je pourrais le trouver par hasard ?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10470 /* ~"Que peux-tu me dire sur Vhailor ?"~ */ GOTO 12
  IF ~~ THEN REPLY #10471 /* ~"Qui sont tes amis ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #10472 /* ~"Que peux-tu me dire sur cet endroit ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10473 /* ~"Qu'est-ce que tu fais ?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10474 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.2 2.3 10.3
  SAY #10475 /* ~"J'peux pas dire qu'j'ai d'jà entendu parler d'lui. C'est un malfrat ? On l'ramassera p'être plus tard… merci du tuyau, citoyen."~ */
  IF ~~ THEN REPLY #10476 /* ~"Je veux juste le trouver, pas le faire tuer. Peux-tu répondre à d'autres questions pour moi ?"~ */ GOTO 10
  IF ~~ THEN REPLY #10477 /* ~"Il n'y a pas de quoi. Si tu le trouves, préviens-moi avant de le tuer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.3 2.4 9.0 10.4
  SAY #10478 /* ~"Vhailor ? Un Rectifieur de l'ancien temps, je crois. Je veux lui ressembler, si possible. J'ai entendu dire que cet affranchi-là était presque un dieu !"~ */
  IF ~~ THEN REPLY #10479 /* ~"Un vrai modèle pour toi, sûrement. Peux-tu répondre à d'autres questions ?"~ */ GOTO 10
  IF ~~ THEN REPLY #10480 /* ~"Je vois. Merci."~ */ EXIT
END
