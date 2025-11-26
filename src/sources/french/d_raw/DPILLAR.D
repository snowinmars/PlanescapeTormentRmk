// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPILLAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPILLAR~

IF ~  Global("Pillar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #51733 /* ~En voyant cette chose, cette horrible *chose* immense et vibrante, tu ressens de la nausée et un dégoût sans fondement mêlés d'une vague impression de familiarité. Les innombrables têtes en putréfaction qui composent ce vaste amas semblent sans cesse en mouvement, se querellant, pleurant, parlant, criant et murmurant tour à tour les unes avec les autres. Des bulles surgies du centre de cet immonde amas se forment sans cesse à la surface, plusieurs têtes apparaissant tandis que d'autres replongent dans le macabre pilier.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",0)
~ THEN REPLY #51734 /* ~Attire l'attention du Pilier.~ */ EXTERN ~DMORTE~ 512
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53326 /* ~Attire l'attention du Pilier.~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #53327 /* ~Quitte le Pilier avant qu'on te remarque.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 53.1 53.2
  SAY #53328 /* ~Tu fais un pas supplémentaire en direction du pilier et leur conversation *s'arrête* brusquement. Les dizaines de têtes qui bordent le pilier se retournent lentement pour te faire simultanément face. Elles te regardent en silence, leur haleine humide et fétide sur toi.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53329 /* ~"J'ai quelques questions, Pilier…"~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53330 /* ~"J'ai quelques questions, Pilier…"~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53331 /* ~"J'ai quelques questions, Pilier…"~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53332 /* ~"J'ai quelques questions, Pilier…"~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53333 /* ~"J'ai quelques questions, Pilier…"~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53334 /* ~"Je ne fais que passer. Au revoir."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #68082 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 56.0 56.1 61.0 61.1 63.0 63.1
  SAY #53335 /* ~Toutes les têtes à la surface du pilier se mettent à parler en même temps pour former la voix de la chose - un son terrible qui se lamente tandis que des vapeurs puantes et fétides, corrompues et putrides s'échappent de leurs bouches. "L'ODEUR EST FORTE. ELLE TRAVERSERA BIENTÔT LES PLANS, ET BEL VIENDRA."~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53336 /* ~"La… l'odeur ? Que veux-tu dire ?"~ */ GOTO 3
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #53337 /* ~"La… l'odeur ? Que veux-tu dire ?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53338 /* ~Les yeux des têtes tournent dans leurs orbites pour regarder Tombée-en-Disgrâce. "L'ODEUR… SON MUSC… LE *MUSC* DU TANAR'RI. L'ODEUR DOUCE-AMÈRE *PORTE* ET ATTIRERA LES BAATEZUS, BIENTÔT LEUR SEIGNEUR, BEL, SERA EN COLÈRE."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53339 /* ~"Je vois…"~ */ EXTERN ~DMORTE~ 511
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53340 /* ~"Je vois…"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #53341 /* ~Les yeux humides des têtes tournent dans leurs orbites pour regarder Annah. "L'ODEUR… SON MUSC… LE *MUSC* DES FIÉLONS TANAR'RIS. L'ODEUR DOUCE-AMÈRE *PORTE* ET ATTIRERA LES BAATEZUS, BIENTÔT LEUR SEIGNEUR, BEL, SERA EN *COLÈRE*."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53342 /* ~"Je vois…"~ */ EXTERN ~DMORTE~ 511
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53343 /* ~"Je vois…"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #53344 /* ~Les têtes tournent leur regard vers toi, bien que certaines d'entre elles reniflent toujours à grand bruit. "SI TU AS DES *QUESTIONS* POUR NOUS, TU FERAIS BIEN D'ÊTRE *RAPIDE*." Quelques têtes louchent et gazouillent doucement. Tu penses qu'elles sont peut-être en train de se moquer de toi.~ */
  IF ~  NearbyDialog("Dannah")
Global("Pillar_Pharod","AR1001",0)
~ THEN REPLY #53345 /* ~"Bien. Comme je l'ai déjà dit, j'ai -"~ */ DO ~SetGlobal("Pillar_Pharod","AR1001",1)
~ GOTO 6
  IF ~  NearbyDialog("Dannah")
Global("Pillar_Pharod","AR1001",1)
~ THEN REPLY #53346 /* ~" Bien. Comme je l'ai déjà dit, j'ai quelques questions…"~ */ GOTO 12
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #68075 /* ~"Comme je te l'ai dit plus tôt, j'aurais quelques questions à te poser…"~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #53347 /* ~Avant que tu ne puisses finir, une portion du pilier tremble tandis qu'une autre tête suinte à sa surface. Une fois la substance visqueuse écoulée, tu reconnais le visage de Pharod. Il crache une poignée de kystes sanglants et croasse : "Annah, mon enfant chérie ! C'est bien toi ?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 263
END

IF ~~ THEN BEGIN 7 // from:
  SAY #53348 /* ~Les autres têtes demeurent silencieuses pendant que Pharod parle… Seules quelques-unes murmurent tranquillement pour elles-mêmes en observant Annah et son père adoptif. "J'avais tort, ma chère fille, à propos de la sphère. Ça ne suffisait pas, non, et regarde maintenant où j'en suis… Je t'en supplie, tendre Annah ! Sauve ton pauvre père ! Sauve-moi ! Oh, s'il te plaît, sauve-moi ! Sauve m-" Mais, alors même qu'il parle, la tête de Pharod commence à se refondre dans la masse du pilier…~ */
  IF ~~ THEN EXTERN ~DANNAH~ 264
END

IF ~~ THEN BEGIN 8 // from:
  SAY #53352 /* ~"ASSEZ", hurlent les têtes puantes du pilier. "ON EN A MARRE DE TES BABILLAGES ; ON VEUT SAVOIR CE QUE TU VEUX."~ */
  IF ~~ THEN REPLY #53353 /* ~"Des questions. J'ai quelques questions…"~ */ GOTO 12
  IF ~~ THEN REPLY #53354 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #53355 /* ~Tu fais un pas supplémentaire en direction du pilier et leur conversation *s'arrête* brusquement. Les dizaines de têtes qui bordent le pilier se retournent lentement pour te faire simultanément face. Elles te regardent en silence, leur haleine humide et fétide sur toi… jusqu'à ce qu'elles remarquent Morte, derrière toi.~ */
  IF ~~ THEN DO ~SetGlobal("Pillar","GLOBAL",1)
SetGlobal("Pillar_Morte","AR1001",1)
~ EXTERN ~DMORTE~ 525
END

IF ~~ THEN BEGIN 10 // from:
  SAY #53356 /* ~Toutes les têtes à la surface du pilier se mettent à parler en même temps pour former la voix de la chose - un son terrible qui se lamente tandis que des vapeurs puantes et fétides, corrompues et putrides s'échappent de leurs bouches. "ENCORE *TOI*… IL Y AVAIT LONGTEMPS." Plusieurs têtes commencent à baver, bredouiller et chanter joyeusement "… crâne, crâne, crâne…" en se léchant les lèvres, les yeux fixés sur Morte.~ */
  IF ~~ THEN REPLY #53357 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #53358 /* ~"SILENCE ! NOUS NE NOUS ADRESSONS PAS À TOI, MAIS AU CRÂNE. BIENVENUE, PETIT. AS-TU ENFIN DECIDÉ DE REVENIR, POUR ACCEPTER TON DESTIN FINAL ET FAIRE UN PAS DE PLUS VERS TON DEVOIR SACRÉ ?" Plusieurs têtes sortent du pilier en faisant grincer leurs dents cassées et en gémissant : "Oui, reviens ! Reviens vers nous, crâne ! Crâne…"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 526
END

IF ~~ THEN BEGIN 12 // from: 1.2 1.3 1.4 5.1 5.2 8.0 14.0 30.0 37.3 38.2 39.1 40.1 43.1 44.1 45.1 46.1 47.0 48.0 49.0 56.2 56.3 56.4 61.2 61.3 61.4 63.2 63.3 63.4
  SAY #53359 /* ~Les têtes se tournent lentement avant de parler de cette voix effroyable : "POSE-NOUS UNE QUESTION DANS CE CAS ET PRÉPARE-TOI À ENTENDRE NOS EXIGENCES - TU DEVRAS NOUS RENDRE UN SERVICE EN ÉCHANGE DE TA RÉPONSE."~ */
  IF ~~ THEN REPLY #53360 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 13
  IF ~~ THEN REPLY #53361 /* ~"Tu sais comment atteindre la Forteresse des Regrets ?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",2)
~ GOTO 15
  IF ~~ THEN REPLY #53362 /* ~"Qui suis-je ?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",3)
~ GOTO 15
  IF ~~ THEN REPLY #53363 /* ~"Qui m'a tué ?"~ */ GOTO 49
  IF ~  Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #53364 /* ~"Comment quitter cet endroit ?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",4)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53365 /* ~"Peu importe. Au revoir."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53366 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #53367 /* ~Les têtes glougloutent et croassent leur réponse de leurs lèvres pourries : "NOUS RÉPONDRONS À CETTE QUESTION EN ÉCHANGE D'UN SERVICE…"~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53368 /* ~"Très bien. Quelle est ta demande ?"~ */ EXTERN ~DMORTE~ 527
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #53369 /* ~"Très bien. Quelle est ta demande ?"~ */ EXTERN ~DGRACE~ 172
  IF ~  NearbyDialog("Dnordom")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
~ THEN REPLY #53370 /* ~"Très bien. Quelle est ta demande ?"~ */ EXTERN ~DNORDOM~ 131
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
~ THEN REPLY #53371 /* ~"Très bien. Quelle est ta demande ?"~ */ EXTERN ~DANNAH~ 270
  IF ~  NearbyDialog("Ddakkon")
!NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
~ THEN REPLY #53372 /* ~"Très bien. Quelle est ta demande ?"~ */ EXTERN ~DDAKKON~ 184
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53373 /* ~"Très bien. Quelle est ta demande ?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 19
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53374 /* ~"Très bien. Quelle est ta demande ?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 20
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dgrace")
!NearbyDialog("Dnordom")
!NearbyDialog("Dannah")
!NearbyDialog("Ddakkon")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
~ THEN REPLY #53375 /* ~"Très bien. Quelle est ta demande ?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",1)
~ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53376 /* ~"Peu importe. Au revoir."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53377 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #53378 /* ~Les têtes t'interrompent à l'unisson : "SILENCE ! TU NOUS DESHONORES AVEC TES PROPOS BANALS !" Une tête particulièrement hideuse s'écrie : "Et de *tous* nous traiter de menteurs, ça c'est -" avant d'être absorbée dans le pilier.~ */
  IF ~~ THEN REPLY #53379 /* ~"J'ai une autre question…"~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53380 /* ~"Bon, j'y vais. Au revoir."~ */ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53381 /* ~"Bon, j'y vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1 12.2 12.4
  SAY #53382 /* ~Les têtes glougloutent et croassent leur réponse de leurs lèvres pourries : "NOUS RÉPONDRONS À CETTE QUESTION EN ÉCHANGE D'UN SERVICE…"~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53383 /* ~"Quelle est ta demande, Pilier ?"~ */ GOTO 16
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53384 /* ~"Quelle est ta demande, Pilier ?"~ */ GOTO 19
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53385 /* ~"Quelle est ta demande, Pilier ?"~ */ GOTO 20
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53386 /* ~"Quelle est ta demande, Pilier ?"~ */ GOTO 21
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53387 /* ~"Quelle est ta demande, Pilier ?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dmorte")
Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53388 /* ~"Quelle est ta demande, Pilier ?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53389 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53390 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #53391 /* ~Les têtes du pilier se tournent toutes pour lorgner Morte. "LE CRÂNE… NOUS VOULONS LE CRÂNE COMME RÉTRIBUTION. RENDS-LE NOUS ET TU AURAS TA RÉPONSE."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 528
END

IF ~~ THEN BEGIN 17 // from:
  SAY #53392 /* ~"CESSE TES FAIBLES PROTESTATIONS, CRÂNE ! LA DÉCISION NE T'APPARTIENT PAS !" Les têtes du pilier pivotent lentement pour te faire face, les yeux plissés. "IL ESSAYE D'ÉCHAPPER À SON DESTIN DEPUIS TROP LONGTEMPS ; IL EST À *NOUS*. RENDS-LE-NOUS ET NOUS SERONS GÉNÉREUX… NOUS SOUHAITONS SAVOURER SES CRIS…"~ */
  IF ~  Global("Where_Fhjull","AR1001",1)
~ THEN REPLY #53393 /* ~"Très bien… il est à toi."~ */ GOTO 18
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53394 /* ~"Très bien… il est à toi."~ */ EXTERN ~DMORTE~ 532
  IF ~  Global("Where_Fhjull","AR1001",0)
~ THEN REPLY #53395 /* ~"Un cadeau ? Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 19
  IF ~  Global("Where_Fhjull","AR1001",1)
PartyHasItem("Cube")
~ THEN REPLY #53396 /* ~"Un cadeau ? Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 20
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53397 /* ~"Un cadeau ? Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 21
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53398 /* ~"Un cadeau ? Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 22
  IF ~  Global("Where_Fhjull","AR1001",1)
!PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53399 /* ~"Un cadeau ? Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53400 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53401 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #53402 /* ~"OUIIII…" Le tas de crânes commence à se tordre et bouillir, des têtes surgissant à la surface pour être aussitôt ravalées. Elles bavent et jacassent : "Je suis impatient d'entendre ses cris !" Une autre s'écrie : "Au diable les cris ! Le *tourment*, c'est ce qui convient le mieux à ce fléau ! Je vais lui arracher les dents, les lui recracher dans la cervelle et le secouer comme un hochet !" Une autre s'écrie encore : "Oh ! Oh ! Je vais lui manger les yeux !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 529
END

IF ~~ THEN BEGIN 19 // from: 13.5 15.1 17.2
  SAY #53403 /* ~Le pilier se penche vers toi, les yeux des têtes plissées. "IL Y A UN *SAVOIR* QUE TU POSSÈDES, ET QUE NOUS SOUHAITONS OBTENIR. OÙ SE TROUVE LE FIÉLON FHJULL LANGUE-FOURCHUE ? DIS-LE-NOUS ET NOUS RÉPONDRONS À TA QUESTION." La puanteur de la chaude haleine du pilier t'encercle tandis qu'il attend ta réponse…~ */
  IF ~  Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53404 /* ~"Dans l'Outreterre, là où Ul-Goris, père de tous les goristros a été tué, dans la Guerre du Cratère. Fhjull vit à l'intérieur de son squelette."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  !Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53405 /* ~"Dans l'Outreterre, là où Ul-Goris, père de tous les goristros a été tué, dans la Guerre du Cratère. Fhjull vit à l'intérieur de son squelette."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  CheckStatLT(Protagonist,18,CHR)
~ THEN REPLY #53406 /* ~Mens : "Il est… caché quelque part, dans l'Outreterre. Sous une énorme montagne."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pillar_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,17,CHR)
~ THEN REPLY #53407 /* ~Mens : "Fhjull est bien caché dans un demi-plan conçu par une sorcière depuis longtemps morte. Il apparaît quelquefois à Sigil, et c'est là que je l'ai rencontré."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pillar_1","GLOBALLaw",-1)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #53408 /* ~"Ça, je ne te le dirai pas. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 20
  IF ~  !PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53409 /* ~"Ça, je ne te le dirai pas. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 21
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53410 /* ~"Ça, je ne te le dirai pas. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 22
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53411 /* ~"Ça, je ne te le dirai pas. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53412 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53413 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.6 15.2 17.3 19.4 24.2
  SAY #53414 /* ~Les têtes du pilier - mis à part le sifflement des vapeurs puantes provenant de la surface rance - demeurent silencieuses pendant quelques instants. Il répond enfin : "TU AS EN TA POSSESSION UN OBJET QUE NOUS DÉSIRONS. LE CUBE MODRONE : DONNE-LE-NOUS ET NOUS RÉPONDRONS À TA QUESTION."~ */
  IF ~~ THEN REPLY #53415 /* ~"Tiens… prends-le."~ */ DO ~DestroyPartyItem("cube",FALSE)
~ GOTO 25
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53416 /* ~"Je ne peux pas faire ça. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 21
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53417 /* ~"Je ne peux pas faire ça. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53418 /* ~"Je ne peux pas faire ça. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53419 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53420 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.3 17.4 19.5 20.1 24.3
  SAY #53421 /* ~Les têtes du pilier se renfrognent et leurs yeux clignent. Elles s'arrêtent soudain sur Tombée-en-Disgrâce. "ELLE SUFFIRA… OUI. LA TANAR'RI. DONNE-LA-NOUS… NOUS LA CONSOMMERONS VIVANTE, NOUS NOUS BAIGNERONS DANS SON DOUX SANG… ENSUITE, NOUS RÉPONDRONS À TA QUESTION." Plusieurs têtes commencent à gémir de désir en appelant Grâce : "Oui, tanar'ri, douce succube, chose malicieuse, abandonne-toi à nous…"~ */
  IF ~~ THEN REPLY #53422 /* ~"Très bien. Elle est à toi."~ */ EXTERN ~DGRACE~ 173
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #53423 /* ~"Je ne peux pas faire ça. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #53424 /* ~"Je ne peux pas faire ça. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53425 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53426 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.4 17.5 19.6 20.2 21.1 24.4
  SAY #53427 /* ~Un gargouillis profond s'échappe de l'intérieur du pilier. De nouvelles têtes se fraient un chemin jusqu'à sa surface en te disséquant de leurs yeux écarlates. Leur regard s'arrête enfin sur Annah. "LA FIÉLONNE ! DONNE-NOUS LA TIEFFELINE, OUI… NOUS ALLONS LA DÉCHIQUETER, NOUS NOUS DÉLECTERONS DE SON DOUX SANG CHAUD… ALORS SEULEMENT NOUS RÉPONDRONS À TA QUESTION."~ */
  IF ~~ THEN REPLY #53428 /* ~"Très bien. Elle est à toi."~ */ EXTERN ~DANNAH~ 271
  IF ~~ THEN REPLY #53429 /* ~"Je ne peux pas faire ça. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53430 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53431 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.7 15.5 17.6 19.7 20.3 21.2 22.1 24.5
  SAY #53432 /* ~Les bouches de toutes les têtes à la surface du pilier se tordent en un sourire dépravé. Elles gloussent et se moquent de toi. "TU N'AS *RIEN* POUR NOUS… À PART TOI. VIENS, IMMORTEL… FAIS-NOUS GOÛTER TON SANG D'IMMORTEL ET NOUS RÉPONDRONS À TA QUESTION." Les têtes claquent des dents, bavant et mâchouillant impatiemment leurs lèvres couvertes de pus…~ */
  IF ~~ THEN REPLY #53433 /* ~"Très bien. J'accepte tes demandes."~ */ GOTO 26
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53434 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53435 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.2
  SAY #53436 /* ~Le Pilier des Crânes recule et toutes ses têtes te regardent avec dédain. Elles te crachent leurs mots : N'ESSAIE PAS DE NOUS MENTIR, IDIOT. OÙ - EST - *FHJULL* ? DIS-LE-NOUS ET NOUS PARDONNERONS TA FOURBERIE ET RÉPONDRONS À TA QUESTION."~ */
  IF ~  Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53437 /* ~"Dans l'Outreterre, là où Ul-Goris, père de tous les goristros a été tué, dans la Guerre du Cratère. Fhjull vit à l'intérieur de son squelette."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  !Global("Lawful_Fhjull_1","GLOBAL",1)
~ THEN REPLY #53438 /* ~"Dans l'Outreterre, là où Ul-Goris, père de tous les goristros a été tué, dans la Guerre du Cratère. Fhjull vit à l'intérieur de son squelette."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_1","GLOBALGood",-3)
SetGlobal("Where_Fhjull","AR1001",1)
~ GOTO 29
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #53439 /* ~"Ça, je ne te le dirai pas. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 20
  IF ~  !PartyHasItem("Cube")
NearbyDialog("Dgrace")
~ THEN REPLY #53440 /* ~"Ça, je ne te le dirai pas. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 21
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #53441 /* ~"Ça, je ne te le dirai pas. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 22
  IF ~  !PartyHasItem("Cube")
!NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53442 /* ~"Ça, je ne te le dirai pas. Quel *autre* cadeau es-tu prêt à accepter ?"~ */ GOTO 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53443 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53444 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.0
  SAY #53445 /* ~Tu jettes le cube en direction du Pilier des Crânes, et une grande entaille puante s'ouvre sur le côté pour le recevoir. L'ouverture est rapidement scellée et le cube n'est plus là. Sans trop comprendre pourquoi, tu sais qu'il a disparu à jamais. Les têtes gloussent joyeusement, ondulant le long de la surface du pilier.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #53446 /* ~"ALORS, APPROCHE-TOI… OUI, VIENS PLUS PRES…" Les têtes semblent s'enfoncer dans le pilier tandis que tu t'approches de lui…~ */
  IF ~~ THEN REPLY #53447 /* ~Avance-toi.~ */ GOTO 27
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53448 /* ~"En fait j'ai changé d'avis. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53449 /* ~"En fait j'ai changé d'avis. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #53450 /* ~Bien que tu ne fasses qu'un seul pas en direction du pilier, tu te retrouves plus près que tu n'aurais pensé de sa surface tordue. Avant que tu ne puisses réagir, il s'avance brusquement vers toi telle une vague d'os pourris et cassés et de viande infestée de vers. Tandis que l'obscurité rance t'enveloppe, la tête de pilier commence à te consommer vivant…~ */
  IF ~~ THEN REPLY #53451 /* ~Tu sombres dans l'obscurité…~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,15)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #53452 /* ~Tu te retrouves debout devant le Pilier des Crânes, tu as mal et tu ne sais pas vraiment ce qui s'est passé. Ce dont tu es certain, c'est que ton corps est *plus faible* suite à ce qu'il vient de subir. Les têtes grotesques te lorgnent en grimaçant et en se léchant les lèvres…~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 19.0 19.1 19.3 24.0 24.1 25.0 28.0
  SAY #53453 /* ~Le pilier savoure ton cadeau quelques instants, puis ses têtes roucoulent et murmurent entre elles.~ */
  IF ~  Global("Pillar_Question","AR1001",1)
~ THEN REPLY #53454 /* ~"Et ma réponse… ?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ JOURNAL #53458 /* ~Le Pilier des Crânes m'a appris qu'il avait été constitué à partir des crânes de ceux dont les mensonges ont causé la mort d'autres hommes. Il peut répondre à de nombreuses questions mais s'attend à recevoir une importante récompense en échange.~ */ GOTO 30
  IF ~  Global("Pillar_Question","AR1001",2)
~ THEN REPLY #53455 /* ~"Et ma réponse… ?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 31
  IF ~  Global("Pillar_Question","AR1001",3)
~ THEN REPLY #53456 /* ~"Et ma réponse… ?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Know_Shadow_Player_Connection","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Pillar_Question","AR1001",4)
~ THEN REPLY #53457 /* ~"Et ma réponse… ?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Leave_Baator","GLOBAL",1)
~ GOTO 48
END

IF ~~ THEN BEGIN 30 // from: 29.0 52.0
  SAY #53460 /* ~"NOUS SOMMES CEUX QUI, DURANT DES VIES MORTELLES DEPUIS LONGTEMPS OUBLIÉES, AVONS FAIT DES SUGGESTIONS AYANT PROVOQUÉ LA MORT D'AUTRES PERSONNES. ON NOUS APPELLE PARFOIS 'MENTEURS' - MAIS QU'EST-CE QUE LA VÉRITÉ, SINON UN AUTRE NOM DU MENSONGE ? LA VÉRITÉ CACHE SI SOUVENT LA TROMPERIE…" Les têtes marmonnent et se font mutuellement signe de la tête d'un air convaincu, puis se tournent vers toi. "NOTRE SAVOIR EST GRAND… MAIS NOUS DEMANDONS BEAUCOUP DE LA PART DE CEUX QUI NOUS QUESTIONNENT."~ */
  IF ~~ THEN REPLY #53461 /* ~"J'ai une autre question…"~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53462 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53463 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 52.1
  SAY #53464 /* ~"TU POSSÈDES DÉJÀ LA CLÉ ET IL NE TE RESTE PLUS QU'À CONNAÎTRE L'EMPLACEMENT DU PORTAIL QUI TE MÈNERA LÀ-BAS. NOUS NE SAVONS PAS OÙ SE TROUVE LE PORTAIL, MAIS NOUS POUVONS TE DONNER SA CLÉ : 'REGRET'." Plusieurs têtes commencent à pleurer et à geindre : "Oui, le regret ! Le regret !"~ */
  IF ~~ THEN REPLY #53465 /* ~"Le regret ?"~ */ DO ~SetGlobal("Chaotic_Adyzoel_1","GLOBAL",1)
~ JOURNAL #53459 /* ~Le Pilier des Crânes m'a dit que le 'regret' était la clé du portail menant à la Forteresse des Regrets. Logique. En revanche, il ignorait où trouver le portail en question.~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #53469 /* ~"OUI… TU DOIS CONNAÎTRE LE REGRET POUR PÉNÉTRER LA FORTERESSE. ÉCRIS-LE SUR UN BOUT DE TA CHAIR ET TON PASSAGE DANS LE PORTAIL SERA ASSURÉ."~ */
  IF ~~ THEN REPLY #53470 /* ~"Quant au portail… tu dis que tu ne sais *pas* où il se trouve ?"~ */ DO ~SetGlobal("Know_Fortress_Location_Forgot","GLOBAL",1)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #53473 /* ~"OUI… SEULS TROIS ONT DÉCOUVERT LE CHEMIN. LE PREMIER, C'ÉTAIT TOI… MAIS TU L'AS OUBLIÉ. LE DEUXIÈME SE TROUVE DERRIÈRE LE PORTAIL ET N'EN RESSORTIRA PAS. LE TROISIÈME…"~ */
  IF ~~ THEN REPLY #53474 /* ~"Le troisième… ?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #53478 /* ~"… TU AS DÉJÀ RENCONTRÉ LE TROISIÈME. ILS SONT TOUS AU COURANT DE TA CONDITION, DE LA FORTERESSE ET DE LA NÉCESSITÉ POUR TOI DE T'Y RENDRE… MAIS ILS NE T'AIDERONT PAS. LEUR PROTECTION A ÉTÉ FORGÉE DANS LES ALLIAGES DE MENSONGES ET DE TROMPERIE, ET TU NE BRISERAS PAS CELA AVEC DE SIMPLES MOTS. TU DEVRAS LES COMBATTRE."~ */
  IF ~~ THEN REPLY #53479 /* ~"Qui est le troisième ?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #53483 /* ~Les têtes demeurent silencieuses pendant un instant et te font des sourires grivois et pleins de suffisance. Elles parlent enfin : "TU AS *RENCONTRÉ* CELUI QUI MENT - ET PLUS D'UNE FOIS. LE MENTEUR SAIT… MAIS NE T'A RIEN DIT. UNE TRAHISON *MESQUINE* ENTRE IMMORTELS…" Certaines têtes en décomposition roulent des yeux et se moquent de toi.~ */
  IF ~~ THEN REPLY #53484 /* ~"Fhjull Langue-fourchue ?"~ */ GOTO 36
  IF ~~ THEN REPLY #53485 /* ~"Lothar ?"~ */ GOTO 36
  IF ~~ THEN REPLY #53486 /* ~"Ravel ?"~ */ GOTO 36
  IF ~~ THEN REPLY #53487 /* ~"Trias ?"~ */ DO ~SetGlobal("Talk_To_Betrayer","GLOBAL",1)
~ JOURNAL #53491 /* ~Le Pilier des Crânes m'a dit que Trias - que l'on surnomme 'le Traître' - saurait où trouver le portail menant à la Forteresse des Regrets.~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 35.2 36.0 36.1 36.2
  SAY #53492 /* ~Les têtes gloussent en jubilant. "NON, PAS ÇA. ESSAIE ENCORE…"~ */
  IF ~~ THEN REPLY #53493 /* ~"Fhjull Langue-fourchue ?"~ */ GOTO 36
  IF ~~ THEN REPLY #53494 /* ~"Lothar ?"~ */ GOTO 36
  IF ~~ THEN REPLY #53495 /* ~"Ravel ?"~ */ GOTO 36
  IF ~~ THEN REPLY #53496 /* ~"Trias ?"~ */ DO ~SetGlobal("Talk_To_Betrayer","GLOBAL",1)
~ JOURNAL #53500 /* ~Le Pilier des Crânes m'a dit que Trias - que l'on surnomme 'le Traître' - saurait où trouver le portail menant à la Forteresse des Regrets.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.3 36.3
  SAY #53501 /* ~"OH, OUI… BIEN QUE NOUS LE CONNAISSIONS SOUS SON NOM *COMPLET* : TRIAS, LE TRAÎTRE !" Le pilier remue dans la gaieté, le tas de têtes pourries chancellent d'avant en arrière tandis qu'il rit de ta détresse. Quelques têtes chantent d'un air moqueur : "Traître… Traître… Trias, le Traître…"~ */
  IF ~~ THEN REPLY #53502 /* ~"Mais… il a dit qu'il ne savait pas…"~ */ GOTO 38
  IF ~~ THEN REPLY #53503 /* ~"Pourquoi me mentirait-il ?"~ */ GOTO 39
  IF ~~ THEN REPLY #53504 /* ~"Comment a-t-il fait pour savoir ça ?"~ */ GOTO 40
  IF ~~ THEN REPLY #53505 /* ~"J'ai une autre question…"~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53506 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53507 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #53508 /* ~"IL T'A *MENTI*." Quelques têtes louchent, glougloutant et gloussant doucement - en se moquant de toi. "MÉFIE-TOI DES MOTS BAIGNÉS DE MIEL ; ILS ATTIRENT TOUTES SORTES DE GUÊPES."~ */
  IF ~~ THEN REPLY #53509 /* ~"Pourquoi me mentirait-il ?"~ */ GOTO 39
  IF ~~ THEN REPLY #53510 /* ~"Comment a-t-il fait pour savoir ça ?"~ */ GOTO 40
  IF ~~ THEN REPLY #53511 /* ~"J'avais une autre question…"~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53512 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53513 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1 38.0 40.0
  SAY #53514 /* ~"CE N'EST PAS À NOUS DE RÉPONDRE À CETTE QUESTION. TU DOIS LE CHERCHER TOI-MÊME ET LE LUI DEMANDER."~ */
  IF ~~ THEN REPLY #53515 /* ~"Comment a-t-il fait pour savoir ça ?"~ */ GOTO 40
  IF ~~ THEN REPLY #53516 /* ~"J'ai une autre question…"~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53517 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53518 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.2 38.1 39.0
  SAY #53519 /* ~"TRIAS A AUTREFOIS ÉCHANGÉ DES PROPOS AVEC TOI, IL Y A LONGTEMPS, LORSQUE TU CONNAISSAIS LE CHEMIN. TU T'ES CONFESSÉ ET TRIAS - COMME LE GRAND TRAÎTRE QU'IL EST - A ÉCOUTÉ AVEC ATTENTION POUR GAGNER TA CONFIANCE. LA CONVERSATION A ÉTÉ COURTE, BIEN QUE PLEINE DE *SENS*. LE SENS ET LA MORT SONT CE QUE TU CHERCHES… CE SONT DEUX CHOSES SÉPARÉES POUR UN HOMME NORMAL. MAIS POUR TOI… ELLES NE FONT QU'UN."~ */
  IF ~~ THEN REPLY #53520 /* ~"Pourquoi me mentirait-il ?"~ */ GOTO 39
  IF ~~ THEN REPLY #53521 /* ~"J'avais une autre question…"~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53522 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53523 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 29.2 52.2
  SAY #53524 /* ~"PAS *QUI* - QUOI. TU AS ÉTÉ DIVISÉ. TU ES L'UN DE TANT D'HOMMES - UN PARMI TANT D'HOMMES. CHACUN D'ENTRE EUX - QU'IL SOIT BON OU MAUVAIS - EST UN MONSTRE, QUI PROJETTE UNE OMBRE SUR L'EXISTENCE."~ */
  IF ~  NearbyDialog("Dvhail")
~ THEN REPLY #53525 /* ~"Une… ombre sur l'existence ?"~ */ JOURNAL #53527 /* ~Le Pilier des Crânes m'a dit que je projetais des 'ombres sur l'existence' ; chaque fois que je décède, un autre meurt à ma place. Ceux qui meurent de cette façon deviennent des créatures d'ombre, qui se réunissent pour m'attendre à la Forteresse des Regrets.~ */ GOTO 42
  IF ~  !NearbyDialog("Dvhail")
~ THEN REPLY #53526 /* ~"Une… ombre sur l'existence ?"~ */ JOURNAL #53527 /* ~Le Pilier des Crânes m'a dit que je projetais des 'ombres sur l'existence' ; chaque fois que je décède, un autre meurt à ma place. Ceux qui meurent de cette façon deviennent des créatures d'ombre, qui se réunissent pour m'attendre à la Forteresse des Regrets.~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #53528 /* ~"OH, OUI." Les têtes du pilier plissent des yeux et sourient de manière grotesque. "CHAQUE FOIS QUE TU MEURS, 'IMMORTEL', TU PROJETTES UNE OMBRE… CHAQUE FOIS QUE TU MEURS, *UN AUTRE* MEURT À TA PLACE. CES OMBRES… ELLES SE REGROUPENT, ONT FAIM DE TOI, DANS LA FORTERESSE DES REGRETS. COMBIEN DE FOIS *AS-TU* PÉRI, SANS-NOM ? COMBIEN DE CENTAINES… DE MILLIERS… SONT MORTS, À CAUSE DE *TOI* ?" Le pilier tremble d'une jubilation malicieuse. Ses têtes grimacent et gloussent en se moquant de toi. Soudain, les poils de ton cou se hérissent… tu te retournes et tu vois Vhailor te regarder fixement. Et ses yeux brûlent plus intensément que jamais…~ */
  IF ~~ THEN REPLY #53529 /* ~"Vhailor… ?"~ */ EXTERN ~DVHAIL~ 11
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #53530 /* ~"OH, OUI." Les têtes du pilier plissent des yeux et sourient de manière grotesque. "CHAQUE FOIS QUE TU MEURS, 'IMMORTEL', TU PROJETTES UNE OMBRE… CHAQUE FOIS QUE TU MEURS, *UN AUTRE* MEURT À TA PLACE. CES OMBRES… ELLES SE REGROUPENT, ONT FAIM DE TOI, DANS LA FORTERESSE DES REGRETS. COMBIEN DE FOIS *AS-TU* PÉRI, SANS-NOM ? COMBIEN DE CENTAINES… DE MILLIERS… SONT MORTS, À CAUSE DE *TOI* ?" Le pilier tremble d'une jubilation malicieuse. Ses têtes grimacent et gloussent en se moquant de toi.~ */
  IF ~~ THEN REPLY #53531 /* ~"C'est tout ce que tu as à dire, Pilier ?"~ */ GOTO 44
  IF ~~ THEN REPLY #53532 /* ~"J'ai une autre question…"~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53533 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53534 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #53535 /* ~Les têtes cessent brusquement de rire. "NON. TU PORTES DE NOMBREUX NOMS. CHACUN D'ENTRE EUX A LAISSÉ DES CICATRICES SUR TA PEAU :"~ */
  IF ~~ THEN REPLY #53536 /* ~"Continue…"~ */ GOTO 45
  IF ~~ THEN REPLY #53537 /* ~"Attends… J'ai une autre question…"~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53538 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53539 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #53540 /* ~"L'ÉGARÉ… L'IMMORTEL… LA FIN D'INCARNATION… L'HOMME AUX MILLE MORTS… LE CONDAMNÉ À VIVRE… LE SANS REPOS… L'UN DE TANT… LE PRISONNIER DE L'EXISTENCE… CELUI PAR QUI LES OMBRES ARRIVENT… LE BLESSÉ… LE TRAÎNE-MISÈRE… YEMETH…"~ */
  IF ~~ THEN REPLY #53541 /* ~Continue à écouter.~ */ GOTO 46
  IF ~~ THEN REPLY #53542 /* ~"Attends… J'ai une autre question…"~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53543 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53544 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #53545 /* ~"TU ES LE VERRE ARGENTÉ QUI S'EST BRISÉ… FRACASSÉ ET DONT LES MORCEAUX ONT ÉTÉ DISPERSÉS AU COURS DE L'HISTOIRE. SEULE UNE PARTIE EST IMPORTANTE. REPRENDS-LÀ ET TA VIE SERA À NOUVEAU TIENNE. IL Y A UN PRIX À PAYER. ET CE PRIX TE DONNERA UNE CHANCE. SANS CETTE CHANCE, TU ES CONDAMNÉ…"~ */
  IF ~~ THEN REPLY #53546 /* ~"Continue…"~ */ GOTO 47
  IF ~~ THEN REPLY #53547 /* ~"Attends… J'ai une autre question…"~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53548 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53549 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #53550 /* ~"TU AS PERDU CE QUI NE DOIT JAMAIS ÊTRE ENLEVÉ À UN HOMME. TA MORTALITÉ T'A ÉTÉ ARRACHÉE… ELLE EST PERDUE. ELLE EXISTE, MAIS TU DOIS LA RETROUVER AVANT DE PERDRE AUSSI TON ESPRIT."~ */
  IF ~~ THEN REPLY #53551 /* ~"J'avais une autre question…"~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53552 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53553 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 29.3 52.3
  SAY #53554 /* ~"QUITTE CET ENDROIT ET PARS IMMÉDIATEMENT EN DIRECTION DE L'OUEST, LE LONG DES ROCHERS QUI BORDENT LA VALLÉE DÉSOLÉE. TU FINIRAS PAR ATTEINDRE L'EXTRÉMITÉ DE LA VALLÉE. LÀ-BAS, CHERCHE UN ENDROIT QUI MASQUE LE PORTAIL ENTRE LES PIERRES. SA CLÉ EST L'OBSIDIENNE, RÉCEMMENT BRÛLÉE PAR LES FEUX DE L'AVERNE - TU EN TROUVERAS BEAUCOUP AUTOUR DU PORTAIL. PLACE UN TESSON DANS TA BOUCHE ET MORDS-LE POUR QU'IL TE COUPE LA LANGUE. CE SERA TA CLÉ."~ */
  IF ~~ THEN REPLY #53555 /* ~"J'ai une autre question…"~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53556 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53557 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 12.3
  SAY #53558 /* ~Le pilier demeure étrangement silencieux. Certaines de ses têtes regardent simplement au loin, tandis que d'autres frissonnent avec une expression de douleur. Elles se rassemblent finalement pour parler une fois de plus : "NOUS… NE SAVONS PAS. CES TÊTES QUI ONT AUTREFOIS CONTENU TANT DE SAVOIR ONT ÉTÉ DÉTRUITES - NOUS ONT ÉTÉ ENLEVÉES. NOUS NE POUVONS PAS RÉPONDRE À TA QUESTION."~ */
  IF ~~ THEN REPLY #53559 /* ~"Dans ce cas, j'ai une autre question…"~ */ GOTO 12
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #53560 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ GOTO 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53561 /* ~"Alors, au revoir."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 1.5 12.5 13.8 14.1 15.6 17.7 19.8 20.4 21.3 22.2 23.1 24.6 26.1 30.1 37.4 38.3 39.2 40.2 43.2 44.2 45.2 46.2 47.1 48.1 49.1
  SAY #53562 /* ~Le pilier t'arrête avec une requête subite : "ARRÊTE - DONNE-NOUS LE CRÂNE. NOUS NE LE LAISSERONS *PAS* PARTIR. IL EST À *NOUS*. IL NE DOIT *PAS* QUITTER L'AVERNE." Les têtes commencent à roucouler et à se moquer de Morte : "Oui, crâne, ne sois pas timide… reviens, crâne… c'est confortable ici, crâne… viens, reviens… ça ne fait pas mal, crâne… c'est amusant d'être sans corps, en vivant avec un millier d'autres têtes qui mentent…"~ */
  IF ~~ THEN REPLY #53563 /* ~Attrape Morte, jette-le dans le Pilier des Crânes.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_2","GLOBALGood",-1)
SetGlobal("Pillar ","GLOBAL",2)
StartCutSceneMode()
StartCutSceneEx("1001Cut1",FALSE)
~ EXIT
  IF ~~ THEN REPLY #53564 /* ~"Jamais de la vie, Pilier. Au revoir."~ */ DO ~SetGlobal("Pillar_Warning","GLOBAL",1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #53566 /* ~Les têtes en fureur du pilier commencent à hurler et à brailler à travers les plans. Le sol sous tes pieds commence à remuer tandis que la cacophonie menace de te rendre sourd…~ */
  IF ~~ THEN REPLY #53567 /* ~Pars… rapidement.~ */ EXIT
END

IF ~  Global("Pillar","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #53568 /* ~Les têtes du pilier gloussent et trépignent d'une joie malsaine tandis que Morte est aspiré au cœur de la chose, pour souffrir un tourment éternel aux 'mains' des autres têtes. Tandis que le bruit diminue, les têtes commencent à roucouler et murmurer entre elles. Soudain, Morte surgit à la surface : "Aïïeeee ! Sortez-moi d'là ! Pitié ! Pitié ! Je jure que j'mentirai plus j- !" … et il est ravalé par le pilier aussi rapidement qu'il est apparu.~ */
  IF ~  Global("Pillar_Question","AR1001",1)
~ THEN REPLY #53569 /* ~"Et ma réponse… ?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~J'ai remis Morte dans le Pilier des Crânes. Inutile de préciser que cela ne lui a pas fait plaisir.~ */ GOTO 30
  IF ~  Global("Pillar_Question","AR1001",2)
~ THEN REPLY #53570 /* ~"Et ma réponse… ?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~J'ai remis Morte dans le Pilier des Crânes. Inutile de préciser que cela ne lui a pas fait plaisir.~ */ GOTO 31
  IF ~  Global("Pillar_Question","AR1001",3)
~ THEN REPLY #53571 /* ~"Et ma réponse… ?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Know_Shadow_Player_Connection","GLOBAL",1)
SetGlobal("Pillar","GLOBAL",3)
~ JOURNAL #53574 /* ~J'ai remis Morte dans le Pilier des Crânes. Inutile de préciser que cela ne lui a pas fait plaisir.~ */ GOTO 41
  IF ~  Global("Pillar_Question","AR1001",4)
~ THEN REPLY #53572 /* ~"Et ma réponse… ?"~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
SetGlobal("Pillar","GLOBAL",3)
SetGlobal("Leave_Baator","GLOBAL",1)
~ JOURNAL #53574 /* ~J'ai remis Morte dans le Pilier des Crânes. Inutile de préciser que cela ne lui a pas fait plaisir.~ */ GOTO 48
  IF ~  Global("Pillar_Question","AR1001",0)
~ THEN REPLY #53573 /* ~"Au revoir, Pilier."~ */ DO ~SetGlobal("Pillar","GLOBAL",3)
~ EXIT
END

IF ~  Global("Pillar","GLOBAL",1)
~ THEN BEGIN 53 // from:
  SAY #53575 /* ~Tu te retrouves une fois de plus devant le Pilier des Crânes. La quantité incroyable de têtes pourries qui forme le tas semble se déplacer et palpiter en continu, se chamaillant, pleurant, discutant, criant et murmurant entre elles. Des têtes surgissent constamment du centre puant vers la surface de la pile, tandis que d'autres s'enfoncent dans le pilier macabre.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",0)
~ THEN REPLY #53576 /* ~Attire l'attention du Pilier.~ */ EXTERN ~DMORTE~ 512
  IF ~  NearbyDialog("Dmorte")
Global("Pillar_Morte","AR1001",1)
~ THEN REPLY #53577 /* ~Attire l'attention du Pilier.~ */ GOTO 1
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53578 /* ~Attire l'attention du Pilier.~ */ GOTO 1
  IF ~~ THEN REPLY #53579 /* ~Quitte le Pilier avant qu'on te remarque.~ */ EXIT
END

IF ~  Global("Pillar","GLOBAL",3)
~ THEN BEGIN 54 // from:
  SAY #53580 /* ~Tu te retrouves une fois de plus devant le Pilier des Crânes. La quantité incroyable de têtes pourries qui forme le tas semble se déplacer et palpiter en continu, se chamaillant, pleurant, discutant, criant et murmurant entre elles. Des têtes surgissent constamment du centre puant vers la surface de la pile, tandis que d'autres s'enfoncent dans le pilier macabre.~ */
  IF ~~ THEN REPLY #53581 /* ~Attire l'attention du Pilier.~ */ GOTO 55
  IF ~~ THEN REPLY #53582 /* ~Quitte le Pilier avant qu'on te remarque.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #53583 /* ~Tu fais un pas supplémentaire en direction du pilier et toutes leurs conversations *s'arrêtent* brusquement. Les dizaines de têtes qui bordent le pilier se retournent lentement pour te faire simultanément face. Elles te regardent en silence, et avec un cri horrible, Morte surgit en hurlant à la surface : "Gaaaah ! Chef ! Sors-moi d'là ! Pitié ! Pitié !"~ */
  IF ~~ THEN REPLY #53584 /* ~Ignore Morte, attends qu'il s'enfonce à nouveau.~ */ GOTO 56
  IF ~~ THEN REPLY #53585 /* ~Essaie de tirer Morte.~ */ GOTO 57
  IF ~~ THEN REPLY #53586 /* ~Détourne-toi et pars.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0 57.5
  SAY #53587 /* ~Des larmes ruissellent sur le sang et la bave puante qui recouvrent Morte et il supplie pour qu'on le libère. "Chef, pitié, je t'en supplie ! Il faut que tu m'sortes de là, s'il te plaît, je jure que je mentirai plus j- !" … et il est ravalé par le pilier aussi rapidement qu'il en était sorti.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53588 /* ~"J'ai quelques questions, Pilier…"~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53589 /* ~"J'ai quelques questions, Pilier…"~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53590 /* ~"J'ai quelques questions, Pilier…"~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53591 /* ~"J'ai quelques questions, Pilier…"~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53592 /* ~"J'ai quelques questions, Pilier…"~ */ GOTO 12
  IF ~~ THEN REPLY #53593 /* ~"Je ne fais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.1
  SAY #53594 /* ~Tes mains fusent et attrapent Morte avant qu'il ne soit ravalé dans la masse du pilier. Les têtes hurlent de rage: "NON ! NON ! ARRÊTE ! TU NE PEUX PAS LE REPRENDRE !" Les têtes commencent à se jeter sur toi en te mordant les mains et les poignets de leurs dents acérées…~ */
  IF ~  Global("Specialist","GLOBAL",4)
~ THEN REPLY #53595 /* ~Continue à combattre, libère Morte du Pilier.~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 58
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #53596 /* ~Utilise ta maîtrise de l'Art pour canaliser de la puissance brute pour libérer Morte. ~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 59
  IF ~  Global("Specialist","GLOBAL",5)
~ THEN REPLY #53597 /* ~Recule comme si tu abandonnais, fais semblant d'aller dans une direction, puis arrache Morte avant que le Pilier ne découvre ce qui l'a frappé.~ */ DO ~SetGlobal("Pillar","GLOBAL",4)
~ GOTO 60
  IF ~  !Global("Specialist","GLOBAL",4)
!Global("Specialist","GLOBAL",5)
!Global("Specialist","GLOBAL",6)
HPGT(Protagonist,10)
~ THEN REPLY #53598 /* ~Continue à combattre, libère Morte du Pilier.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 61
  IF ~  !Global("Specialist","GLOBAL",4)
!Global("Specialist","GLOBAL",5)
!Global("Specialist","GLOBAL",6)
HPLT(Protagonist,11)
~ THEN REPLY #53599 /* ~Continue à combattre, libère Morte du Pilier.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 62
  IF ~~ THEN REPLY #53600 /* ~Abandonne, laisse Morte s'enfoncer.~ */ GOTO 56
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #53601 /* ~Le Pilier des Crânes combat avec ardeur, mais tu es trop bon guerrier pour qu'il te batte. Tu frappes en continu les têtes, des pieds, des mains, de la tête et tu les mords jusqu'à ce que tu réussisses à libérer Morte, dans un bruit de chair qui se déchire. La bataille te laisse toutefois vidé, exténué… Tu sais qu'elle t'a affaibli.~ */
  IF ~~ THEN REPLY #53602 /* ~"Tu vois, Morte ? Rien… à… craindre…"~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.1
  SAY #53603 /* ~Le Pilier des Crânes combat avec ardeur, mais tes pouvoirs magiques sont trop puissants pour qu'il te batte. Tu canalises de l'énergie pure à travers tes mains et en direction du pilier, combattant jusqu'à ce que tu réussisses à libérer Morte. La bataille te laisse vidé, exténué… tu sais qu'elle t'a affaibli.~ */
  IF ~~ THEN REPLY #53604 /* ~"Tu vois, Morte ? Rien… à… craindre…"~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 57.2
  SAY #53605 /* ~Voyant que le pilier se prépare à combattre ardemment, tu fais semblant de renoncer. Tandis que Morte commence à s'enfoncer et que le pilier se met à parler, tu t'avances et tu attrapes Morte. Une seule tête réussit à frapper avant que tu ne retires Morte, te mordant à l'avant-bras… Tu la frappes à l'œil de ton pouce et libères enfin ton compagnon. La morsure de la tête puante te laisse toutefois vidé, épuisé… tu sais qu'elle t'a affaibli.~ */
  IF ~~ THEN REPLY #53606 /* ~"Tu vois, Morte ? Rien… à… craindre…"~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,5)
StartCutSceneMode()
StartCutSceneEx("1001Cut3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.3
  SAY #53607 /* ~Le Pilier des Crânes, ne voulant pas libérer Morte, combat ardemment. Tu t'inclines finalement. Tandis que Morte s'enfonce à nouveau, tu recules, les avant-bras couverts de blessures sanglantes à l'endroit où les têtes du pilier t'ont arraché des morceaux de chair. Elles continuent de te toiser et à se moquer de toi, en léchant le sang sur leurs lèvres pourries.~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53608 /* ~"J'ai quelques questions, Pilier…"~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53609 /* ~"J'ai quelques questions, Pilier…"~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53610 /* ~"J'ai quelques questions, Pilier…"~ */ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53611 /* ~"J'ai quelques questions, Pilier…"~ */ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53612 /* ~"J'ai quelques questions, Pilier…"~ */ GOTO 12
  IF ~~ THEN REPLY #53613 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 57.4
  SAY #53614 /* ~Le Pilier des Crânes, ne voulant pas libérer Morte, combat ardemment. Tu t'inclines finalement. Tandis que Morte s'enfonce à nouveau, tu recules, les avant-bras couverts de blessures sanglantes à l'endroit où les têtes du pilier t'ont arraché des morceaux de chair. Tandis que tu t'effondres et que tu meurs, elles continuent de te toiser et de se moquer de toi, en léchant le sang sur leurs lèvres pourries…~ */
  IF ~~ THEN REPLY #53615 /* ~Meure.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~  Global("Pillar","GLOBAL",4)
~ THEN BEGIN 63 // from:
  SAY #53616 /* ~Les têtes du pilier grincent des dents et te crachent leur bile, en hurlant de rage. "IL EST À NOUS ! À NOUS ! À NOUS !" Elles se calment brusquement. "TRÈS BIEN. DÉLECTE-TOI DE TA VICTOIRE, 'IMMORTEL'. NOUS LE RÉCUPÉRERONS, D'UNE MANIÈRE OU D'UNE AUTRE."~ */
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53617 /* ~"C'est ça. J'ai quelques questions, Pilier…"~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
SetGlobal("Pillar","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",0)
~ THEN REPLY #53618 /* ~"C'est ça. J'ai quelques questions, Pilier…"~ */ DO ~SetGlobal("Pillar_Musk","AR1001",1)
SetGlobal("Pillar","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53619 /* ~"C'est ça. J'ai quelques questions, Pilier…"~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
Global("Pillar_Musk","AR1001",1)
~ THEN REPLY #53620 /* ~"C'est ça. J'ai quelques questions, Pilier…"~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #53621 /* ~"C'est ça. J'ai quelques questions, Pilier…"~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #53622 /* ~"Bien sûr, bien sûr. Au revoir."~ */ DO ~SetGlobal("Pillar","GLOBAL",1)
~ EXIT
END
