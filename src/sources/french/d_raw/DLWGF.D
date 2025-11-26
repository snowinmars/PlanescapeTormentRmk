// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWGF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWGF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #65087 /* ~Tu vois une jeune femme au teint jaunâtre. Comme tu t'approches, tu remarques de petites pustules ça et là sur les parties exposées de sa peau. ~ */
  IF ~~ THEN REPLY #65088 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #65089 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65090 /* ~Elle te jette un regard, puis fronce les sourcils. "Bonjour, matois. Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #65091 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #65092 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #65093 /* ~Elle plisse le front encore plus. "Je suis désolée, mais je suis plutôt occupée en ce moment. Je n'ai pas le temps de te parler…" Elle commence à partir. ~ */
  IF ~~ THEN REPLY #65094 /* ~"Cela ne prendra que quelques instants de ton temps…"~ */ GOTO 3
  IF ~~ THEN REPLY #65095 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #65096 /* ~"Je n'ai pas une minute à t'accorder. S'il te plaît, demande à quelqu'un d'autre…" Elle commence à s'en aller.~ */
  IF ~~ THEN REPLY #65097 /* ~Pars.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #65098 /* ~Tu vois une femme au teint jaunâtre ; elle n'arrête pas de tousser. Elle te regarde approcher. ~ */
  IF ~~ THEN REPLY #65099 /* ~"Bonjour."~ */ GOTO 5
  IF ~~ THEN REPLY #65100 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #65101 /* ~Elle te sourit et essaie de répondre, mais sa toux l'interrompt. "Oui…" Elle a une quinte de toux. "Bonjour, matois… Tu veux quelque chose ?"~ */
  IF ~~ THEN REPLY #65102 /* ~"J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #65103 /* ~"Non, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #65104 /* ~"Je t'aiderai avec plaisir, mais s'il te plaît, sois bref."~ */
  IF ~~ THEN REPLY #65105 /* ~"Tu ne te sens pas bien ?"~ */ GOTO 7
  IF ~~ THEN REPLY #65106 /* ~"Pourquoi as-tu la peau jaune ?"~ */ GOTO 8
  IF ~~ THEN REPLY #65107 /* ~"Peux-tu me parler de ce quartier ?"~ */ GOTO 9
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #65108 /* ~"J'ai perdu un crâne. J'essaie de trouver qui me l'a pris." ~ */ GOTO 11
  IF ~~ THEN REPLY #65109 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65110 /* ~Elle sourit. "Oui, merci. Ça va passer." ~ */
  IF ~~ THEN REPLY #65111 /* ~"Très bien. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #65112 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #65113 /* ~"Et bien…" Elle semble embarrassée. "C'est l'air de ce quartier. Il n'est pas de la meilleure qualité et cause des problèmes de santé à la plupart des gens. C'est toute cette fumée rejetée par la fonderie et tout…" Elle recommence à tousser et te fait signe de te dépêcher de poser tes questions.~ */
  IF ~~ THEN REPLY #65114 /* ~"Très bien. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #65115 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #65116 /* ~"Oh, et bien…" Elle tousse. "Il y a beaucoup de boutiques, de marchés, de camelots, et…" Une autre quinte de toux la saisit "…de choses de ce genre…" Elle se tait et serre les bras contre sa poitrine. ~ */
  IF ~~ THEN REPLY #65117 /* ~"Tu es sûre que ça va ?"~ */ GOTO 10
  IF ~~ THEN REPLY #65118 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #65119 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #65120 /* ~Elle sourit. "Absolument…" Elle commence à se tapoter la poitrine. ~ */
  IF ~~ THEN REPLY #65121 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #65122 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #65123 /* ~Elle réfléchit en plissant le front. "Non… Je ne vois pas qui voudrait une chose pareille…" On dirait qu'elle va être saisie d'une autre quinte de toux, mais cela passe. "Je ne vois vraiment pas à qui d'autre tu pourrais demander." ~ */
  IF ~~ THEN REPLY #65124 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #65125 /* ~"Merci, au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #65126 /* ~Tu vois une jeune femme au teint jaunâtre. Elle te regarde approcher et essaie de t'en dissuader d'un signe de la main. ~ */
  IF ~~ THEN REPLY #65127 /* ~"Bonjour."~ */ GOTO 13
  IF ~~ THEN REPLY #65128 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65129 /* ~Elle te regarde avec appréhension. "Euh… bonjour… matois." Elle commence à regarder autour d'elle, pour repérer d'éventuelles oreilles indiscrètes. "Tu veux quelque chose ?"~ */
  IF ~~ THEN REPLY #65130 /* ~"J'ai quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #65131 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #65132 /* ~"Comme quoi ?"~ */
  IF ~~ THEN REPLY #65133 /* ~"Peux-tu me parler de ce quartier ?"~ */ GOTO 15
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65134 /* ~"Quelqu'un m'a volé un crâne. J'essaie de le retrouver." ~ */ GOTO 16
  IF ~~ THEN REPLY #65135 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #65136 /* ~"Ici, c'est le Bas Quartier ; c'est ici qu'habitent les gens ordinaires comme moi. Il n'y a pas grand-chose d'autre à savoir. Regarde autour de toi et découvre l'endroit par toi-même."~ */
  IF ~~ THEN REPLY #65137 /* ~"J'ai quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #65138 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #65139 /* ~Elle te regarde en plissant le front, puis place curieusement sa main sur son cœur. "J'ai entendu de drôles d'histoires…" Elle fait une pause. "D'après certains, il y aurait dans ce quartier un nécromancien, ou un prêtre des morts, ou quelque chose de ce genre. Il collectionne les crânes pour une raison qui m'échappe…"~ */
  IF ~~ THEN REPLY #65140 /* ~"Sais-tu où je peux le trouver ?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #65141 /* ~Elle secoue lentement la tête. "Des histoires, matois… il n'y a rien de tel dans ce quartier. Ce ne sont que des histoires…"~ */
  IF ~~ THEN REPLY #65142 /* ~"Merci, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #65143 /* ~En t'approchant de cette femme, tu te rappelles lui avoir déjà parlé une fois. "Re-bonjour, matois. Tu veux quelque chose ?"~ */
  IF ~~ THEN REPLY #65144 /* ~"Non, au revoir."~ */ EXIT
END
