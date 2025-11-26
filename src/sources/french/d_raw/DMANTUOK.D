// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMANTUOK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMANTUOK~

IF ~  Global("Current_Area","GLOBAL",1600)
Global("AR0508_Visited","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25632 /* ~Tu vois un hybride mi-homme, mi-rat. Ses yeux rouges brillent d'une lueur maligne. Sa voix est mielleuse et chargée de sous-entendus. "Ainsi un bipède s'aventure d'un pas volontaire dans les salles de Tant-en-Un. Que veux-tu, homme, et où comptes-tu aller ? Avance doucement, étranger, et parle vrai à Mantuok."~ */
  IF ~~ THEN REPLY #25665 /* ~"J'étais sur le point de partir."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #25666 /* ~"Je viens du Village Enseveli et j'explorais la contrée."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #25667 /* ~"Je suis venu te voir."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #25668 /* ~"D'où je viens et où je vais, cela ne regarde que moi."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #25669 /* ~"Qu'est-ce que tu *es* ?"~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25634 /* ~"Non, bipède, non. Maintenant réponds à ma question. Qu'est-ce que tu veux, bipède et où vas-tu ?"~ */
  IF ~~ THEN REPLY #25670 /* ~"Je viens du Village Enseveli et j'explorais la contrée."~ */ GOTO 2
  IF ~~ THEN REPLY #25671 /* ~"D'où je viens et où je vais, cela ne regarde que moi."~ */ GOTO 8
  IF ~~ THEN REPLY #25672 /* ~"Qu'est-ce que tu *es* ?"~ */ GOTO 9
  IF ~~ THEN REPLY #25673 /* ~"J'ai dit que je partais. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #25637 /* ~"Ah, le village. Rafraîchis ma mémoire… les charognards, hein ? Tu es venu faire les ordures ?"~ */
  IF ~~ THEN REPLY #25674 /* ~"Oui, mais il n'y a rien de bon à piller dans ce pot de chambre."~ */ GOTO 3
  IF ~~ THEN REPLY #25675 /* ~"Non."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25638 /* ~"Rien d'intéressant, bipède ? Le seul excrément que je vois dans notre jolie maison, c'est TOI. Pourtant j'ai peur qu'on soit obligé d'apprendre à vivre avec la puanteur - tu ne reverras plus jamais la lumière du jour."~ */
  IF ~~ THEN REPLY #25676 /* ~"Qu'est-ce que tu entends par là ?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25677 /* ~"Tu me menaces ?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25678 /* ~"Je crois bien que si."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #25639 /* ~"Ta réponse oblige Mantuok à te questionner : pourquoi es-tu ici ? Un mauvais tournant, une mauvaise étape, une succession d'erreurs, hein ? Es-tu venu me chercher ou chercher Tant-en-Un ? Ou peut-être que tu ne sais tout simplement pas pourquoi t'es là ? Tu vas me l'expliquer maintenant."~ */
  IF ~~ THEN REPLY #25679 /* ~"C'était une succession d'erreurs."~ */ GOTO 5
  IF ~~ THEN REPLY #25680 /* ~"Je cherche Tant-en-Un."~ */ GOTO 6
  IF ~~ THEN REPLY #25681 /* ~"Qui est Tant-en-Un ?"~ */ GOTO 9
  IF ~~ THEN REPLY #25682 /* ~"Je suis venu te voir."~ */ GOTO 14
  IF ~~ THEN REPLY #25683 /* ~"Je crois que je n'ai rien à faire ici."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0 17.0
  SAY #25640 /* ~"Une succession d'erreurs, hein ? Il aurait mieux fallu pour toi que tu fasses une erreur de moins et que tu ne te sois jamais aventuré jusqu'ici."~ */
  IF ~~ THEN REPLY #25684 /* ~"Qu'est-ce que tu veux dire ?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25685 /* ~"J'arrangerai ça en partant…"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 17.1
  SAY #25642 /* ~"Parle-moi, bipède, et je transmettrai ton message au Tant."~ */
  IF ~~ THEN REPLY #25686 /* ~"Très bien."~ */ GOTO 7
  IF ~~ THEN REPLY #25687 /* ~"Je ne veux pas."~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #25645 /* ~Mantuok se penche en avant, tendant l'oreille vers toi.~ */
  IF ~~ THEN REPLY #25688 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25689 /* ~"Je n'ai rien de spécial à dire."~ */ GOTO 8
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25690 /* ~"Le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25691 /* ~"Le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25692 /* ~"Le Roi Silencieux est trop fort pour attaquer. Tiens-toi à l'écart des Nations Mortes ou les cadavres te détruiront."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 0.3 1.1 1.3 4.4 7.1 17.3 18.2 20.1
  SAY #25646 /* ~Il ricane. "C'est ce que tu crois. Tu vas avoir le temps de méditer sur ta réponse - beaucoup de temps." Il lève les mains et de la fumée se dégage de ses doigts.~ */
  IF ~~ THEN REPLY #25693 /* ~"Qu'est-ce qu'… ?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.4 1.2 4.2 14.1 15.4 17.2
  SAY #25647 /* ~"Tu es vraiment ignare, hein ? On voit tout de suite que tu es venu ici dans l'erreur. Tu n'en partiras pas." Il lève les mains et de la fumée se dégage de ses doigts.~ */
  IF ~~ THEN REPLY #25695 /* ~"On peut en discuter…"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25696 /* ~"Qu'est-ce que tu fais ?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2 7.3 15.0 15.1 20.2 20.3
  SAY #25650 /* ~Il s'interrompt. Sa queue bat ses flancs. Il te regarde un moment. "Mes oreilles t'ont-elles entendu dire que le Roi Silencieux n'est qu'un bluff des morts ? Oui, je crois." Il regarde ailleurs un moment et se retourne, ses yeux enflammés par la victoire. "Les cadavres vont bientôt reposer en paix et nous rongerons leur chair pour nous nourrir…" Il te regarde soudain l'air soupçonneux, "… si ce n'est pas une ruse. Tu vas parler à Tant-en-Un, n'est-ce pas ?"~ */
  IF ~~ THEN REPLY #25697 /* ~"Oh, maintenant je peux parler à Tant-en-Un ?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #25652 /* ~"Oui. Souviens-toi : ils connaissent déjà tes paroles. Au revoir. Nous nous reverrons."~ */
  IF ~~ THEN REPLY #25698 /* ~"Alors, au revoir."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.4 15.2 20.4
  SAY #25654 /* ~Mantuok siffle. "Trop fort, hein ? T'as vu une démonstration de sa puissance ? Bah ! Tant-en-Un en entendra parler - puisque tu préviens le Tant. Tu annonceras toi-même ces mauvaises nouvelles ! Viens avec moi."~ */
  IF ~~ THEN REPLY #25699 /* ~"Je ne veux pas."~ */ GOTO 13
  IF ~~ THEN REPLY #25700 /* ~"Allons-y."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #25655 /* ~"Ce n'était pas une demande." Il lève les mains et de la fumée se dégage de ses doigts. Tout devient noir pendant un instant.~ */
  IF ~~ THEN REPLY #25701 /* ~"Qu'est-ce qu'… ?"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2 4.3
  SAY #25656 /* ~"Venu *me* voir ? Et qui t'a envoyé faire cette commission idiote ?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #25702 /* ~"Soego."~ */ DO ~SetGlobal("Know_Soego_Rats","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25703 /* ~"Personne."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25704 /* ~"Personne. Je supposais simplement que c'est à toi qu'il fallait parler."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #25657 /* ~Il s'interrompt comme s'il t'évaluait. "Pourquoi le prêtre de la poussière et de la cendre n'a-t-il pas employé les méthodes habituelles ? Pourquoi Soego n'a pas utilisé de messagers ? Bah. Peu importe. Lis le message et finissons-en."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25705 /* ~"Le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25706 /* ~"Le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25707 /* ~"Le Roi Silencieux est trop fort pour attaquer. Tiens-toi à l'écart des Nations Mortes ou les cadavres te détruiront."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
  IF ~~ THEN REPLY #25708 /* ~"Il m'a dit que je ne devrais en parler qu'à Tant-en-Un."~ */ GOTO 16
  IF ~~ THEN REPLY #25709 /* ~"Je n'avais aucun message en fait."~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.3
  SAY #25658 /* ~La queue du rat-garou remue furieusement. "Très bien. Parle donc à Tant-en-Un. Pas de mensonge, bipède, car le Tant peut lire dans tes pensées aussi facilement qu'il entend ta voix."~ */
  IF ~~ THEN REPLY #25710 /* ~"Je m'en souviendrai."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY #25659 /* ~"Ta langue mélange mensonges et éloges, le signe d'un fourbe. Parle simplement ou souffre. Qu'es-tu venu faire ici et que cherches-tu ? C'est peut-être une succession d'erreurs qui t'a conduit à ma porte ? Qu'est-ce que tu viens faire ici ?"~ */
  IF ~~ THEN REPLY #25711 /* ~"C'était une succession d'erreurs."~ */ GOTO 5
  IF ~~ THEN REPLY #25712 /* ~"Je cherche Tant-en-Un."~ */ GOTO 6
  IF ~~ THEN REPLY #25713 /* ~"Qui est Tant-en-Un ?"~ */ GOTO 9
  IF ~~ THEN REPLY #25714 /* ~"Je crois que je n'ai rien à faire ici."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 6.1
  SAY #25660 /* ~"Et pourquoi ? Quelle est la nature de tes affaires avec Tant-en-Un ?"~ */
  IF ~~ THEN REPLY #25715 /* ~"J'ai des nouvelles."~ */ GOTO 19
  IF ~~ THEN REPLY #25716 /* ~"Mes affaires ne te regardent pas."~ */ GOTO 20
  IF ~~ THEN REPLY #25717 /* ~"Rien en particulier."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #25661 /* ~Il ouvre la bouche pour prononcer une série d'injures, mais son regard devient distant et sa tête s'incline, comme s'il écoutait un message. Lorsque ses yeux te regardent à nouveau, il crache : "Mieux vaut pour toi que tes nouvelles soient importantes, bipède, ou tes tourments vont être légendaires."~ */
  IF ~~ THEN REPLY #25718 /* ~"Epargne-moi les menaces. Allons-y."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #25662 /* ~"Je suis la voix du Tant-en-Un ! Tu vas me dire quelles sont tes intentions ! Sa voix change, devient grasse. "Tu dois me le dire ou tu rencontreras des… difficultés, d'accooord ?""~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #25719 /* ~"Tant-en-Un se chargera de toi si tu essaies de me blesser, Mantuok."~ */ GOTO 21
  IF ~~ THEN REPLY #25720 /* ~"Je n'ai aucune affaire en fait."~ */ GOTO 8
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25721 /* ~"Le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25722 /* ~"Le Roi Silencieux n'est qu'un squelette mort. Il n'a aucun pouvoir."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25723 /* ~"Le Roi Silencieux est trop fort pour attaquer. Tiens-toi à l'écart des Nations Mortes ou les cadavres te détruiront."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #25663 /* ~Mantuok sursaute, puis siffle. "Vilain, vilain humain. Il menace Mantuok. Il insulte Mantuok. Il crache sur son devoir. Il prononce des menaces acerbes aux oreilles de Mantuok. Tu t'es pas fait d'amis aujourd'hui, humain. Va voir Tant-en-Un et dis-lui ce que tu as à dire."~ */
  IF ~~ THEN REPLY #25724 /* ~"Merci. Tu m'as été d'un grand secours."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~  Global("Current_Area","GLOBAL",508)
NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #29320 /* ~Tu aperçois un hybride, moitié rat, moitié homme. Ses yeux rouges ont un reflet rusé et la voix qui sort de sa bouche est mielleuse et insidieuse. "Alors… un bipède vient fureter dans le nid des domestiques de Lothar. Que veux-tu, homme, et où veux-tu aller de ce pas ? Avance un peu, intrus, et dis la vérité à Mantuok."~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN REPLY #29351 /* ~"Je suis à la recherche de quelque chose pour Lothar. Je cherche un crâne."~ */ GOTO 23
  IF ~~ THEN REPLY #29352 /* ~"Qui es-tu ?"~ */ GOTO 27
  IF ~~ THEN REPLY #29353 /* ~"Je cherche le responsable des lieux."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29354 /* ~"Je cherche mon ami Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29355 /* ~"Je faisais un petit tour, c'est tout."~ */ GOTO 33
END

IF ~~ THEN BEGIN 23 // from: 22.0 52.0
  SAY #29321 /* ~L'homme-rat baisse la tête lorsque tu mentionnes Lothar, et siffle à ton adresse. "Envoyer un glabre faire le travail des rats ? Impossible !"~ */
  IF ~~ THEN REPLY #29356 /* ~"Il a dit que tu ne valais rien et qu'il avait besoin de quelqu'un sur qui compter. Et c'est moi."~ */ GOTO 24
  IF ~~ THEN REPLY #29357 /* ~"C'est pourtant le cas."~ */ GOTO 24
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29358 /* ~"Tu veux du fromage, Mantuok ?" Donne-lui le fromage empoisonné.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29363 /* ~"Tu veux du fromage, Mantuok ?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #29322 /* ~Mantuok te siffle encore au visage. "Alors pars, et reviens quand tu auras le crâne." Il s'arrête et te regarde avec suspicion. "As-tu déjà le crâne ?"~ */
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29364 /* ~Donne-lui le fromage empoisonné. "Tu veux du fromage, Mantuok ?"~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29365 /* ~Donne-lui le fromage. "Tu veux du fromage, Mantuok ?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 26
  IF ~~ THEN REPLY #29366 /* ~"Oui, tout à fait."~ */ GOTO 36
  IF ~~ THEN REPLY #29367 /* ~"Pas encore. Mais je reviendrai quand je l'aurai."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2 24.0 36.8 38.8 41.1 42.3
  SAY #29323 /* ~L'homme-rat arrache le fromage empoisonné de tes mains tendues et le renifle en te regardant avec suspicion. Il le dévore, et des spasmes le secouent. Il tombe à terre, se contracte, et un filet de bave sanglante s'échappe de sa bouche. "Ack…"~ */
  IF ~  NumTimesTalkedTo(0)
~ THEN REPLY #29368 /* ~"Au revoir, homme-rat."~ */ DO ~AddexperienceParty(2000)
SetGlobal("0508_Wererat_Alert","AR0508",1)
Kill(Myself)
~ EXIT
  IF ~  NumTimesTalkedToGT(0)
~ THEN REPLY #29369 /* ~"Va au diable, Mantuok."~ */ DO ~AddexperienceParty(5000)
SetGlobal("0508_Wererat_Alert","AR0508",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3 24.1
  SAY #29324 /* ~Mantuok arrache le fromage empoisonné de tes mains tendues et le renifle d'un air suspicieux. Il se penche dessus et dit : "Va, étranger. Nous parlerons davantage à ton retour." Il commence à grignoter le fromage.~ */
  IF ~~ THEN REPLY #29370 /* ~"Bon appétit, Mantuok."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.1
  SAY #29325 /* ~"Je suis Mantuok. Je suis la voix de Tant-en-Un et l'émissaire de Lothar, Maître des Os. Je parle et tu réponds. Qu'est-ce qui t'amène ici ?"~ */
  IF ~~ THEN REPLY #29371 /* ~"Qui est Tant-en-Un ?"~ */ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29372 /* ~"Qui est Lothar ?"~ */ GOTO 30
  IF ~~ THEN REPLY #29373 /* ~"Tu travailles pour les deux ? Ça ne met pas ta loyauté à rude épreuve ?"~ */ GOTO 37
  IF ~~ THEN REPLY #29374 /* ~"Je faisais un petit tour, c'est tout."~ */ GOTO 33
  IF ~~ THEN REPLY #29375 /* ~"Je cherche le maître des lieux."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29376 /* ~"Je cherche mon ami Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29377 /* ~"Ça ne te regarde pas."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.6 30.3 37.3
  SAY #29326 /* ~"Tout ce qui se passe ici ne regarde que moi. Parle, ou les miens se régaleront de ta chair pour l'éternité."~ */
  IF ~~ THEN REPLY #29378 /* ~"Je faisais un petit tour, c'est tout."~ */ GOTO 33
  IF ~~ THEN REPLY #29379 /* ~"Je cherche le maître des lieux."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29380 /* ~"Je cherche mon ami Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29381 /* ~"Je t'ai déjà dit que ça ne te regardait pas."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.3
  SAY #29327 /* ~Le visage de Mantuok se durcit et il murmure : "Bien, dans ce cas, je vais goûter ton sang et apprendre les secrets de ta chair. À moi, mes rats !" Et il frappe.~ */
  IF ~~ THEN REPLY #29382 /* ~"Dansons, Mantuok."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.0 27.1
  SAY #29328 /* ~"En cet endroit, chair, c'est moi qui pose les questions. Je n'y réponds pas. Que… veux… tu ?"~ */
  IF ~~ THEN REPLY #29383 /* ~"Je faisais un petit tour, c'est tout."~ */ GOTO 33
  IF ~~ THEN REPLY #29385 /* ~"Je cherche le maître des lieux."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29386 /* ~"Je cherche mon ami Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29387 /* ~"Ça ne te regarde pas."~ */ GOTO 28
END

IF ~~ THEN BEGIN 31 // from: 22.2 27.4 28.1 30.1 37.1 52.1
  SAY #29329 /* ~"Tu cherches Lothar ? Pourtant tu viens de son repaire. Pars, et j'oublierai que je t'ai vu."~ */
  IF ~~ THEN REPLY #29388 /* ~"Très bien."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 22.3 27.5 28.2 30.2 37.2 52.2
  SAY #29330 /* ~"Le crâne bavard ? Bah. Une perte de temps. J'espère que tu t'es mis d'accord avec le maître pour récupérer ton ami, car il n'y a aucun autre moyen de le faire."~ */
  IF ~~ THEN REPLY #29389 /* ~"Je n'oublierai pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 22.4 27.3 28.0 30.0 37.0 52.3
  SAY #29331 /* ~"C'est inacceptable. Tu dois avoir un but en venant dans le nid de ceux de ma Race."~ */
  IF ~~ THEN REPLY #29390 /* ~"Alors, m'en vais."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #29332 /* ~"Oui. Tu le dois. Ne reviens pas, ou tu en souffriras."~ */
  IF ~~ THEN REPLY #29391 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #29333 /* ~Mantuok te dévisage d'un air pensif. "Ne crois pas que j'oublierai tes propos, humain. Entre et visite le maître si tu le veux, et souviens-toi que tu seras surveillé jusqu'à ton dernier jour." Il s'écarte.~ */
  IF ~~ THEN REPLY #29392 /* ~"Je m'en souviendrai."~ */ EXIT
END

IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN BEGIN 36 // from: 24.2
  SAY #29334 /* ~"Et as-tu récupéré le crâne que le maître désire ?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29393 /* ~"J'ai un crâne."~ */ GOTO 39
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29394 /* ~"Oui, sur un squelette."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29395 /* ~"Oui, sur un zombi."~ */ GOTO 41
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29396 /* ~"Oui, sur une goule."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29397 /* ~"Oui, sur un rat-garou."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29398 /* ~"Oui, sur un squelette mort depuis longtemps."~ */ GOTO 41
  IF ~~ THEN REPLY #29399 /* ~"Pas encore."~ */ GOTO 43
  IF ~~ THEN REPLY #29400 /* ~"Hors de ma vue, Mantuok, ou je te tue sur place."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29401 /* ~"Tu veux du fromage, Mantuok ?" Donne-lui le fromage empoisonné.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29402 /* ~"Tu veux du fromage, Mantuok ?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 27.2
  SAY #29335 /* ~"Et pourquoi cela, hmm ? Le maître connaît les secrets du pouvoir, et Tant-en-Un connaît les secrets de la cité. Peut-être qu'un jour je les tournerai l'un contre l'autre à mon profit. Tant-en-Un voit de nombreux avantages dans cet accord… et la conversion des habitants du Village Enseveli peut étendre l'influence de Lothar et de Tant-en-un. Tout bénéfice, hein ? Bon… qu'as-tu en tête en venant ici ?"~ */
  IF ~~ THEN REPLY #29403 /* ~"Je faisais un petit tour, c'est tout."~ */ GOTO 33
  IF ~~ THEN REPLY #29404 /* ~"Je cherche le maître des lieux."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29405 /* ~"Je cherche mon ami Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29406 /* ~"Ça ne te regarde pas."~ */ GOTO 28
END

IF ~~ THEN BEGIN 38 // from: 36.9 41.2 42.4
  SAY #29336 /* ~Mantuok t'arrache des mains le fromage empoisonné et le dévore d'une seule bouchée. "À propos de ce crâne, humain, est-ce que tu l'as ?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29407 /* ~"J'ai un crâne."~ */ GOTO 39
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29408 /* ~"Oui, sur un squelette."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29409 /* ~"Oui, sur un zombi."~ */ GOTO 41
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29410 /* ~"Oui, sur une goule."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29411 /* ~"Oui, sur un rat-garou."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29412 /* ~"Oui, sur un squelette mort depuis longtemps."~ */ GOTO 41
  IF ~~ THEN REPLY #29413 /* ~"Pas encore."~ */ GOTO 43
  IF ~~ THEN REPLY #29414 /* ~"Hors de ma vue, Mantuok, ou je te tue sur place."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29415 /* ~"Tu veux du fromage, Mantuok ?" Donne-lui le fromage empoisonné.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
END

IF ~~ THEN BEGIN 39 // from: 36.0 38.0
  SAY #29337 /* ~"Est-ce celui que le maître t'a demandé ?"~ */
  IF ~~ THEN REPLY #29416 /* ~"Oui."~ */ GOTO 41
  IF ~~ THEN REPLY #29417 /* ~"Non."~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #29338 /* ~La bouche de Mantuok s'arrondit. "Alors présente-le immédiatement au maître. Il sera ravi de te voir de retour."~ */
  IF ~~ THEN REPLY #29418 /* ~"Merci, Mantuok."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.1 36.2 36.3 36.4 36.5 38.1 38.2 38.3 38.4 38.5 39.0
  SAY #29339 /* ~"Donne-le-moi, et je l'apporterai au maître. Tes services ne sont plus nécessaires."~ */
  IF ~~ THEN REPLY #29419 /* ~"Non, je pense que je vais le lui apporter moi-même."~ */ GOTO 42
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29420 /* ~"Tu veux du fromage, Mantuok ?" Donne-lui le fromage empoisonné.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29421 /* ~"Tu veux du fromage, Mantuok ?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29422 /* ~Donne-lui le crâne sans nom : "Voilà. Prends ce crâne."~ */ DO ~TakePartyItemNum("Skull",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29423 /* ~Donne-lui le crâne de Hargrimm : "Voilà. Prends ce crâne."~ */ DO ~TakePartyItemNum("SkullHa",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29424 /* ~Donne-lui le crâne de Salie Marie : "Voilà. Prends ce crâne."~ */ DO ~TakePartyItemNum("SkullSM",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29425 /* ~Donne-lui le crâne d'Acaste : "Voilà. Prends ce crâne."~ */ DO ~TakePartyItemNum("SkullAc",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29426 /* ~Donne-lui le crâne de Soego : "Voilà. Prends ce crâne."~ */ DO ~TakePartyItemNum("SkullSo",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29427 /* ~Donne-lui le crâne du Roi Silencieux : "Voilà. Prends ce crâne."~ */ DO ~TakePartyItemNum("SkullSK",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #29340 /* ~"Tu te méprends…" Les griffes de Mantuok se serrent et se desserrent, et il commence à remuer la queue. "Ce n'était pas une requête. Donne-moi le crâne. Nous ne voulons pas causer de problèmes… ici plus qu'ailleurs, bipède. Des problèmes que même toi, tu surmonterais difficilement."~ */
  IF ~~ THEN REPLY #29428 /* ~"Ta pitoyable maladie a peut-être affecté ton ouïe. Je disais que j'allais donner le crâne à Lothar."~ */ GOTO 48
  IF ~~ THEN REPLY #29429 /* ~"J'ai dit que je donnerais le crâne à Lothar."~ */ GOTO 47
  IF ~~ THEN REPLY #29430 /* ~"Laisse-moi passer ou je te tue sur place."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29431 /* ~"Tu veux du fromage, Mantuok ?" Donne-lui le fromage empoisonné.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29432 /* ~"Tu veux du fromage, Mantuok ?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #29433 /* ~"Lothar m'a promis de me laisser passer. Si tu m'en empêches, il en entendra parler - par moi, ou par mon crâne, à moins que tu réussisses à me tuer."~ */ GOTO 45
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29434 /* ~Donne-lui le crâne sans nom : "Voilà. Prends ce crâne."~ */ DO ~TakePartyItemNum("Skull",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29435 /* ~Donne-lui le crâne de Hargrimm : "Voilà. Prends ce crâne."~ */ DO ~TakePartyItemNum("SkullHa",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29436 /* ~Donne-lui le crâne de Salie Marie : "Voilà. Prends ce crâne."~ */ DO ~TakePartyItemNum("SkullSM",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29437 /* ~Donne-lui le crâne d'Acaste : "Voilà. Prends ce crâne."~ */ DO ~TakePartyItemNum("SkullAc",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29438 /* ~Donne-lui le crâne de Soego : "Voilà. Prends ce crâne."~ */ DO ~TakePartyItemNum("SkullSo",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29439 /* ~Donne-lui le crâne du Roi Silencieux : "Voilà. Prends ce crâne."~ */ DO ~TakePartyItemNum("SkullSK",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 43 // from: 36.6 38.6
  SAY #29341 /* ~"Alors *va le chercher*, bipède, et ne reviens pas sans lui. Ne fais pas attendre le maître."~ */
  IF ~~ THEN REPLY #29440 /* ~"Je ne vais pas le faire attendre beaucoup plus longtemps. Il faut que je lui parle."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.7 38.7 42.2
  SAY #29342 /* ~"Non, chose humaine, je ne crois pas que c'est moi qui mourrai aujourd'hui. J'arracherai le crâne que le maître désire de tes doigts froids et morts."~ */
  IF ~~ THEN REPLY #29441 /* ~"Essaie un peu."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.5
  SAY #29343 /* ~"Je devrai alors te tuer et enterrer ton cadavre et ton crâne à un endroit où on ne les retrouvera jamais."~ */
  IF ~~ THEN REPLY #29442 /* ~"Essaie un peu, Mantuok."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 41.3 41.4 41.5 41.6 41.7 41.8 42.6 42.7 42.8 42.9 42.10 42.11
  SAY #29344 /* ~Mantuok prend le crâne et le renifle d'un air critique. "Beaucoup d'endroits dans les catacombes, hein, bipède ? Beaucoup d'endroits où l'on pourrait être emmuré pour l'éternité sans espoir de faire entendre ses cris. Tu seras amené à l'un de ces endroits et laissé à tes souffrances." Il se retourne vers les autres rats-garous. "Poignardez le bipède jusqu'à ce qu'il s'écroule. Emportez son cadavre dans les catacombes et enterrez-le vivant."~ */
  IF ~~ THEN REPLY #29443 /* ~"Tu es un enfoi…"~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.1
  SAY #29345 /* ~"Tu ne me laisses pas de choix." Il se retourne vers les autres rats-garous. "Poignardez-le jusqu'à ce qu'il s'écroule. Emportez son corps dans les catacombes et emmurez-le. Qu'il vive éternellement dans sa tombe."~ */
  IF ~~ THEN REPLY #29444 /* ~"Tu es un enfoi…"~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 42.0
  SAY #29346 /* ~"Ce n'est pas une maladie ! C'est une bénédiction ! Je te suis grandement supérieur, à toi qui es plus cadavre qu'humain."~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #29445 /* ~"Je suppose que c'est un privilège de vivre dans les égouts, de te nourrir d'ordures pour survivre et de t'habiller de resplendissants haillons avec tes queues nues et écailleuses qui traînent derrière toi ? Tu es une vermine, une ombre, qui cherche désespérément à être humain… C'est pitoyable."~ */ GOTO 49
  IF ~~ THEN REPLY #29446 /* ~"Tu n'es pas mon égal."~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #29347 /* ~À tes mots, les yeux de Mantuok lancent des éclairs. Sans un mot, il se jette sur toi.~ */
  IF ~~ THEN REPLY #29447 /* ~"Je préfère te voir seul qu'avec tes amis…"~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #29348 /* ~"Non, nous vous sommes supérieurs. Nous sommes des prédateurs. Nous chassons les bipèdes. Vous êtes notre gibier."~ */
  IF ~~ THEN REPLY #29448 /* ~"Tu es une cible d'entraînement pour moi."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #29349 /* ~Il se retourne vers les autres rats-garous. "Poignardez-le jusqu'à ce qu'il s'écroule. Emportez son corps dans les catacombes et emmurez-le. Qu'il vive éternellement dans sa tombe."~ */
  IF ~~ THEN REPLY #29449 /* ~"Essaie toujours…"~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~  Global("Current_Area","GLOBAL",508)
NumTimesTalkedToGT(0)
~ THEN BEGIN 52 // from:
  SAY #29350 /* ~"Tu es de retour, chose humaine. Que veux-tu ?"~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN REPLY #29450 /* ~"Je suis à la recherche de quelque chose pour Lothar. Je cherche un crâne."~ */ GOTO 23
  IF ~~ THEN REPLY #29451 /* ~"Je cherche le responsable des lieux."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29452 /* ~"Je cherche mon ami Morte."~ */ GOTO 32
  IF ~~ THEN REPLY #29453 /* ~"Je faisais un petit tour, c'est tout."~ */ GOTO 33
END
