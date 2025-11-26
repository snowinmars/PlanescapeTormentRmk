// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRKCHSR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRKCHSR~

IF ~  Global("RChaser","AR0400",0)
!Dead("Adyzoel")
~ THEN BEGIN 0 // from:
  SAY #15496 /* ~Cet homme vêtu de robes très sales erre et regarde autour de lui avec méfiance. Tu remarques qu'il ne semble jamais s'éloigner d'un jeune homme noble qui se trouve près de lui. Il remarque que tu le regardes et commence à s'éloigner précipitamment.~ */
  IF ~~ THEN REPLY #15520 /* ~"Bonjour…"~ */ DO ~SetGlobal("Rchaser","AR0400",1)
~ GOTO 1
  IF ~~ THEN REPLY #15521 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #15497 /* ~Il se tourne pour te faire face, les yeux agrandis par la peur. Tu remarques que son visage est couvert de plaies suintantes ; de grosses mouches noires zigzaguent au-dessus de sa tête. "Ne me fais pas de mal… je ne sais rien, je n'ai rien !"~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15522 /* ~"Arrête ton petit manège. Je sais qui tu es, fiélon."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15523 /* ~"On m'a dit que tu étais plus que ce que tu voulais bien paraître."~ */ GOTO 20
  IF ~~ THEN REPLY #15524 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #15525 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #15498 /* ~Il recule en trébuchant et bredouille : "Mais… mais j'te l'ai dit… je ne sais rien ! Rien !"~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15526 /* ~"Arrête ton petit manège. Je sais qui tu es, fiélon."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15527 /* ~"On m'a dit que tu étais plus que ce que tu voulais bien paraître."~ */ GOTO 20
  IF ~~ THEN REPLY #15528 /* ~"On va voir ça. Tu vas parler ?"~ */ GOTO 3
  IF ~~ THEN REPLY #15529 /* ~"Bon, alors, va-t'en. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY #15499 /* ~"Oui… je… je vais te parler…" Il se tord nerveusement les mains, s'arrêtant uniquement pour éloigner les mouches qui atterrissent sur les plaies de son visage.~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15530 /* ~"Arrête ton petit manège. Je sais qui tu es, fiélon."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15531 /* ~"On m'a dit que tu étais plus que ce que tu voulais bien paraître."~ */ GOTO 20
  IF ~~ THEN REPLY #15532 /* ~"Qui es-tu ?"~ */ GOTO 8
  IF ~~ THEN REPLY #15533 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 9
  IF ~~ THEN REPLY #15534 /* ~"Parle-moi de cette région."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15535 /* ~"Je cherche un certain Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15536 /* ~"Je cherche un journal que j'ai perdu. Tu en as vu un ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 5.0 6.1 7.0 8.1 9.2 10.1 11.2 12.2 13.1 14.1 15.0 16.2 20.2 21.0
  SAY #15500 /* ~Il acquiesce craintivement. "Tout… t'as qu'à demander…"~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15537 /* ~"Arrête ton petit manège. Je sais qui tu es, fiélon."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15538 /* ~"On m'a dit que tu étais plus que ce que tu voulais bien paraître."~ */ GOTO 20
  IF ~~ THEN REPLY #15539 /* ~"Qui es-tu ?"~ */ GOTO 8
  IF ~~ THEN REPLY #15540 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 9
  IF ~~ THEN REPLY #15541 /* ~"Parle-moi de cette région."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15542 /* ~"Je cherche un certain Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15543 /* ~"Je cherche un journal que j'ai perdu. Tu en as vu un ?"~ */ GOTO 5
  IF ~~ THEN REPLY #15544 /* ~"Rien, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.6 4.6
  SAY #15501 /* ~"J'sais rien là-dessus, rien. Je le jure !" Il présente ses mains vides pour inspection.~ */
  IF ~~ THEN REPLY #15545 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #15546 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.5 4.5
  SAY #15502 /* ~Il secoue la tête. "Non, j'le connais pas."~ */
  IF ~~ THEN REPLY #15547 /* ~"Tu es sûr ? Je crois que c'est un Récupérateur."~ */ GOTO 7
  IF ~~ THEN REPLY #15548 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #15549 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #15503 /* ~"Eh ? Oh ! Je suis tout seul, ouais. Pas d'potes, pas d'associés…"~ */
  IF ~~ THEN REPLY #15550 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #15551 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.2
  SAY #15504 /* ~"Moi ? Malric. Mais, euh… on m'appelle Chasseur-de-roués."~ */
  IF ~~ THEN REPLY #15552 /* ~"Quoi ?"~ */ GOTO 9
  IF ~~ THEN REPLY #15553 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #15554 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3 4.3 8.0
  SAY #15505 /* ~"Euh ? Oh… Je suis l'affranchi là-bas." Il désigne le jeune noble tout proche qui le repère et fronce les sourcils d'un air dédaigneux avant de détourner son regard. "Je nettoie sa pagaille, si tu vois c'que je veux dire. Les corps."~ */
  IF ~~ THEN REPLY #15555 /* ~"Pourquoi tu fais ça ?"~ */ GOTO 10
  IF ~~ THEN REPLY #15556 /* ~"Qui est-il ?"~ */ GOTO 11
  IF ~~ THEN REPLY #15557 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #15558 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.1
  SAY #15506 /* ~"Je, euh, vends les morts à la Morgue, aux Hommes-Poussière. Pour du jonc, tu sais. Je vends ce qu'ils ont sur eux, aussi, s'ils sont morts seuls. Sans amis."~ */
  IF ~~ THEN REPLY #15559 /* ~"Qui est le noble ?"~ */ GOTO 11
  IF ~~ THEN REPLY #15560 /* ~"J'ai d'autres questions."~ */ GOTO 4
  IF ~~ THEN REPLY #15561 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #15507 /* ~"Qui, lui ? J'sais pas. Il est arrivé un jour, il a commencé à se battre… des 'duels', comme y dit. J'lui parle pas, tu vois… j'retire juste les morts. Tu pourrais peut-être, euh, lui demander…"~ */
  IF ~~ THEN REPLY #15562 /* ~"Alors, c'est un bon combattant ?"~ */ GOTO 12
  IF ~~ THEN REPLY #15563 /* ~"Pourquoi tu retires les morts ?"~ */ GOTO 10
  IF ~~ THEN REPLY #15564 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #15565 /* ~"Peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #15566 /* ~Il acquiesce. "Oh, oui… j'suis pas bon juge, tu vois, mais il a l'air redoutable. Je ne m'y frotterais pas, si c'est ce que tu penses…"~ */
  IF ~~ THEN REPLY #15567 /* ~"Tu crois qu'il est meilleur que moi ?"~ */ GOTO 14
  IF ~~ THEN REPLY #15568 /* ~"Avec quoi il se bat ? Une épée ? De la magie ?"~ */ GOTO 13
  IF ~~ THEN REPLY #15569 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #15570 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 14.0
  SAY #15509 /* ~"Eh… avec une épée cintrée, une épée. Une chose assez capricieuse et il a les mouvements qui vont avec. Il est rapide, se déplace comme s'il dansait." L'homme bondit dans une pâle imitation de la posture d'un escrimeur, faisant virevolter un nuage de mouches contrariées. "Bing ! Bang ! Boum ! Et voilà, t'es mort !" Il fait un signe de la tête.~ */
  IF ~~ THEN REPLY #15571 /* ~"Tu crois qu'il est meilleur que moi ?"~ */ GOTO 14
  IF ~~ THEN REPLY #15572 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #15573 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0
  SAY #15510 /* ~Il a l'air soudain préoccupé. "Eh, non ! C'est pas ce que je voulais dire ! Mais je ne t'ai pas vu te battre. Tu pourrais peut-être le provoquer. Faut voir. Mais il te tuera si t'es pas assez bon, tu sais. Si tu veux, je peux transmettre aux Hommes-Poussière tes dernières volontés. Au cas où tu…. perdrais."~ */
  IF ~~ THEN REPLY #15574 /* ~"Avec quoi il se bat ? Une épée ? De la magie ?"~ */ GOTO 13
  IF ~~ THEN REPLY #15575 /* ~"Ne t'inquiète pas pour ça. J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #15576 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.4 4.4
  SAY #15511 /* ~"La Ruche ?" Il se gratte la tête au travers de son bonnet, en haussant les épaules. "Voilà ce que c'est…. des taudis lugubres d'un bout à l'autre. J'pourrais pas t'en dire plus, vraiment."~ */
  IF ~~ THEN REPLY #15577 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #15578 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",1)
!Dead("Adyzoel")
~ THEN BEGIN 16 // from:
  SAY #15512 /* ~L'homme semble effrayé à ton approche, mais ses traits infestés de plaies montrent qu'il se souvient. "Salut."~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15579 /* ~"Arrête ton petit manège. Je sais qui tu es, fiélon."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15580 /* ~"Bonjour, 'Chasseur-de-roués'. On m'a dit que tu étais plus que ce que tu voulais bien paraître."~ */ GOTO 20
  IF ~~ THEN REPLY #15581 /* ~"Bonjour, Chasseur-de-roués. J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #15582 /* ~"Bonjour et au revoir."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",0)
Dead("Adyzoel")
~ THEN BEGIN 17 // from:
  SAY #15513 /* ~L'homme aux robes très sales erre en regardant autour de lui avec méfiance. Il te voit le regarder et commence à s'éloigner précipitamment.~ */
  IF ~~ THEN REPLY #15583 /* ~"Bonjour…"~ */ GOTO 18
  IF ~~ THEN REPLY #15584 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.2
  SAY #15514 /* ~L'homme fuit soudain dans un essaim de mouches et de robes marron très sales !~ */
  IF ~~ THEN REPLY #15585 /* ~"La vache…"~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  Global("RChaser","AR0400",1)
Dead("Adyzoel")
~ THEN BEGIN 19 // from:
  SAY #15515 /* ~L'homme te voit t'approcher et son visage infesté de plaies semble inquiet. Il commence à reculer.~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15586 /* ~"Arrête ton petit manège. Je sais qui tu es, fiélon."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15589 /* ~"On m'a dit que tu étais plus que ce que tu voulais bien paraître."~ */ GOTO 20
  IF ~~ THEN REPLY #15590 /* ~"J'ai d'autres questions…"~ */ GOTO 18
  IF ~~ THEN REPLY #15591 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.1 2.1 3.1 4.1 16.1 19.1
  SAY #15516 /* ~"Eh ? Qu'est-ce que tu veux dire ?" Il semble vraiment troublé.~ */
  IF ~~ THEN REPLY #15592 /* ~"Dis-le-moi toi-même, 'Chasseur-de-roués'"~ */ DO ~SetGlobal("RC_expln","AR0400",1)
~ GOTO 21
  IF ~~ THEN REPLY #15593 /* ~"Tu sais très bien ce que je veux dire. Qui es-tu en réalité ?"~ */ DO ~SetGlobal("RC_expln","AR0400",1)
~ GOTO 21
  IF ~~ THEN REPLY #15594 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #15595 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #15517 /* ~"Je… j'sais pas ce que tu mijotes… sûrement pas ! Tu me confondrais pas avec un autre ?"~ */
  IF ~~ THEN REPLY #15596 /* ~"Bon. Alors, j'aurais d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #15597 /* ~Vérité : "Parle ou je t'arrache la réponse de force, misérable !"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rchasr_1","GLOBALGood",-1)
SetGlobal("Adyzoel","AR0400",3)
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15598 /* ~Bluff : "Parle ou je t'arrache la réponse de force, misérable !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rchasr_1","GLOBALLaw",-1)
SetGlobal("Adyzoel","AR0400",3)
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15599 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",3)
~ THEN BEGIN 22 // from:
  SAY #15518 /* ~L'horreur envahit les traits infestés de plaies de l'homme lorsque tu t'approches ; il crie et commence à reculer.~ */
  IF ~~ THEN REPLY #15600 /* ~"Attends, j'ai des questions…"~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15601 /* ~Laisse-le partir.~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.0 2.0 3.0 4.0 16.0 19.0
  SAY #15519 /* ~Il te regarde muet d'horreur.~ */
  IF ~~ THEN REPLY #15602 /* ~"Et bien ?"~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
SetGlobal("RChaser","AR0400",3)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15603 /* ~"N'aie pas peur, je ne te ferai pas de mal."~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
SetGlobal("Rchaser","AR0400",3)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15604 /* ~"C'est bien ce que je pensais. Au revoir."~ */ DO ~SetGlobal("RChaser","AR0400",3)
~ EXIT
END
