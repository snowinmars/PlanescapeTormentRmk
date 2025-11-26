// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL3~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10504 /* ~Le Rectifieur grisonnant tourne la tête vers toi, te dévisage et tu vois soudain, comme par magie, apparaître dans ses mains une arme à l'aspect particulièrement vicieux. "Les gars ! On tient un assassin !" Il t'attaque.~ */
  IF ~~ THEN REPLY #10505 /* ~Attaque-le.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10506 /* ~Fuis.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10507 /* ~Tu vois un homme robuste et grisonnant, en armure clouté. Il te toise lentement d'un regard froid, s'attarde un petit moment sur ton visage, comme s'il lui rappelait quelque chose, puis il soupire et dit : "Je peux faire quelque chose pour toi, l'ami ?"~ */
  IF ~~ THEN REPLY #10508 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #10509 /* ~"Tu me reconnais ?"~ */ GOTO 4
  IF ~~ THEN REPLY #10510 /* ~"Qui sont tes amis ici ?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10511 /* ~"Je cherche un journal. En as-tu vu un ?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10512 /* ~"Je cherche un Récupérateur appelé Pharod. Tu ne saurais pas où je pourrais le trouver par hasard ?"~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10514 /* ~"Que peux-tu me dire sur Vhailor ?"~ */ GOTO 13
  IF ~~ THEN REPLY #10515 /* ~"Parle-moi de cet endroit, s'il te plaît."~ */ GOTO 7
  IF ~~ THEN REPLY #10516 /* ~"Non, pas maintenant. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10513 /* ~"Que veux-tu de moi ?"~ */
  IF ~~ THEN REPLY #10517 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #10518 /* ~"Tu me reconnais ?"~ */ GOTO 4
  IF ~~ THEN REPLY #10519 /* ~"Qui sont tes amis ici ?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10520 /* ~"Je cherche un journal. En as-tu vu un ?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10521 /* ~"Connais-tu un Récupérateur appelé Pharod ? Je le cherche."~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10522 /* ~"Que peux-tu me dire sur Vhailor ?"~ */ GOTO 13
  IF ~~ THEN REPLY #10523 /* ~"Parle-moi de cet endroit, s'il te plaît."~ */ GOTO 7
  IF ~~ THEN REPLY #10524 /* ~"Non, pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 8.0
  SAY #10525 /* ~"Moi ? Je m'appelle Tarner."~ */
  IF ~~ THEN REPLY #10526 /* ~"Et ton costume ?"~ */ GOTO 9
  IF ~~ THEN REPLY #10527 /* ~"Qui sont tes amis ?"~ */ GOTO 5
  IF ~~ THEN REPLY #10528 /* ~"Réponds à d'autres questions, d'accord ?"~ */ GOTO 8
  IF ~~ THEN REPLY #10529 /* ~"Merci. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 8.1
  SAY #10530 /* ~"C'est ce que je croyais, mais le portrait en question remonte à des siècles et le suspect doit être mort. Bon, on est sur les plans, et il s'est déjà passé des trucs plus bizarres. Et si tu es le type auquel je pensais, on dirait bien que tu as déjà été suffisamment puni."~ */
  IF ~~ THEN REPLY #10531 /* ~"Que peux-tu me dire sur la personne dont tu parles ?"~ */ GOTO 10
  IF ~~ THEN REPLY #10532 /* ~"Ha. Qui sait ? Réponds encore à quelques questions pour moi, d'accord ?"~ */ GOTO 8
  IF ~~ THEN REPLY #10533 /* ~"Plus que tu ne pourrais savoir. Plus que *je* ne sais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 3.1 8.2
  SAY #10534 /* ~"Caleb et Ilsidon. Caleb, c'est un bleu - une nouvelle recrue ; Ilsidon, les muscles ; et moi, le cerveau."~ */
  IF ~~ THEN REPLY #10535 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 11
  IF ~~ THEN REPLY #10536 /* ~"Une recrue ? C'est pour ça que vous êtes tous habillés pareil ?"~ */ GOTO 9
  IF ~~ THEN REPLY #10537 /* ~"J'y suis. Réponds à quelques questions pour moi."~ */ GOTO 8
  IF ~~ THEN REPLY #10538 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3 8.3
  SAY #10539 /* ~"Je vois beaucoup trop de trucs par ces saletés de rues de Sigil. À moins que ce journal ne soit vraiment spécial, il y a toutes les chances pour qu'il m'ait échappé."~ */
  IF ~~ THEN REPLY #10540 /* ~"Bon, très bien. As-tu les réponses à d'autres questions ?"~ */ GOTO 8
  IF ~~ THEN REPLY #10541 /* ~"Je suppose que ce serait difficile de s'en souvenir. Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.6 8.6
  SAY #10542 /* ~"Ici ? C'est le Cadavre fumant. La chanson dit que cette auberge regorge de portails, mais c'est le cas plus ou moins partout dans Sigil. De bonnes boissons pas trop chères, et, si on supporte les fiélons et les bibards, c'est plutôt un bon endroit. Si tu veux en savoir plus, adresse-toi plutôt au tenancier."~ */
  IF ~~ THEN REPLY #10543 /* ~"Je comprends. Il y a autre chose que je voudrais savoir."~ */ GOTO 8
  IF ~~ THEN REPLY #10544 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.1 5.2 6.0 7.0 9.0 10.0 11.1 12.0 13.0
  SAY #10545 /* ~"Qu'est-ce que tu veux savoir ?"~ */
  IF ~~ THEN REPLY #10546 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #10547 /* ~"Tu me reconnais ?"~ */ GOTO 4
  IF ~~ THEN REPLY #10548 /* ~"Qui sont tes amis ici ?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10549 /* ~"Je cherche un journal. En as-tu vu un ?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10550 /* ~"As-tu déjà entendu parler d'un Récupérateur appelé Pharod ? Je le cherche."~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10551 /* ~"Que peux-tu me dire sur Vhailor ?"~ */ GOTO 13
  IF ~~ THEN REPLY #10552 /* ~"Parle-moi de cet endroit, s'il te plaît."~ */ GOTO 7
  IF ~~ THEN REPLY #10553 /* ~"Rien pour l'instant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0 5.1 11.0
  SAY #10554 /* ~"Notre uniforme. On est la Mort Rouge… les Rectifieurs, le bras armé de la justice. Si quelqu'un commet un crime, on le traîne au tribunal. On est aussi des redresseurs de torts. Si tu veux en savoir plus, va voir l'un de nos recruteurs."~ */
  IF ~~ THEN REPLY #10555 /* ~"D'accord. Peux-tu répondre à quelques questions pour moi ?"~ */ GOTO 8
  IF ~~ THEN REPLY #10556 /* ~"Alors, bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.0
  SAY #10557 /* ~"Un criminel particulièrement vicieux, à ce que je sais. C'était il y a des siècles de ça, hein… Incroyablement fort, et assez colérique pour arracher la tête d'un bariaure. Pas le genre de bougre à asticoter. À ce qu'on dit, il s'est retrouvé encerclé par une patrouille de la Mort Rouge, il a fui par un portail et on ne l'a jamais revu. Ils en ont des portraits. Avec quelques cicatrices en moins, tu pourrais passer pour un parent à lui. Mais pas pour lui, je pense."~ */
  IF ~~ THEN REPLY #10558 /* ~"Ça a l'air d'être un sale type. J'ai des questions sur autre chose."~ */ GOTO 8
  IF ~~ THEN REPLY #10559 /* ~"Quelle histoire ! Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #10560 /* ~"On guette un criminel. Ce sera la première arrestation du jeune Caleb - si le bige qu'on attend se montre."~ */
  IF ~~ THEN REPLY #10561 /* ~"Comment ça ? Vous êtes une sorte de force de police ? Cette armure serait donc… un uniforme ?"~ */ GOTO 9
  IF ~~ THEN REPLY #10562 /* ~"Je vois. Réponds à d'autres questions pour moi."~ */ GOTO 8
  IF ~~ THEN REPLY #10563 /* ~"Bonne chance. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.4 2.4 8.4
  SAY #10564 /* ~"Tu le cherches, hein ? Et, à en juger par le ton de ta voix, je parie que ce n'est pas pour boire un verre à la taverne avec lui. Tu vois, je connais Pharod depuis des lustres. C'est une anguille et il nous faudra encore du temps avant de le coincer. Le hic, c'est que seul un fanatique comme Vhailor le cravaterait sans preuve. Tout ça pour te dire que je ne sais pas où est Pharod, mais qu'on le suspecte et qu'il vaudrait mieux pour toi qu'on ne te voie pas en sa compagnie."~ */
  IF ~~ THEN REPLY #10565 /* ~"Merci du conseil. Peux-tu répondre à autre chose pour moi ?"~ */ GOTO 8
  IF ~~ THEN REPLY #10566 /* ~"Merci pour le soltif, l'ami. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5 2.5 8.5
  SAY #10567 /* ~"Vhailor ? Un fanatique pur et simple. S'il s'estimait dans son droit, il ne reculait pas, même si cela pouvait lui coûter la vie. Il se vouait au concept même de justice, au point qu'il aurait tué la Mort si cela lui avait permis de récupérer un informateur qui le mènerait jusqu'à un criminel. Aucune notion des limites à ne pas franchir. Et un modèle pour nous tous."~ */
  IF ~~ THEN REPLY #10568 /* ~"Ça, c'est du dévouement ! Bon. Réponds à une autre question pour moi, d'accord ?"~ */ GOTO 8
  IF ~~ THEN REPLY #10569 /* ~"Je l'aurais parié. Au revoir."~ */ EXIT
END
