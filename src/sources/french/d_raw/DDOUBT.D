// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOUBT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOUBT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #20725 /* ~Il ne reste plus de chair sur les os du vieux cadavre qui bouge… seules quelques loques colorées, qui semblent décorer plus que vêtir. Il regarde fixement le sol, secouant la tête et tapotant son menton pensivement.~ */
  IF ~~ THEN REPLY #21891 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #21892 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #21883 /* ~Il ne répond pas, apparemment perdu dans ses pensées.~ */
  IF ~~ THEN REPLY #21893 /* ~"J'ai dit, 'bonjour'."~ */ GOTO 2
  IF ~~ THEN REPLY #21894 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #21884 /* ~Il lève les yeux, et, t'apercevant, soupire en laissant échapper un petit nuage de poussière. "J'ai beaucoup à penser et préférerais être seul."~ */
  IF ~~ THEN REPLY #21895 /* ~"Est-ce que je peux faire quelque chose pour toi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Doubtful_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #21896 /* ~"Ça m'est égal, il me faut des réponses à certaines questions."~ */ GOTO 3
  IF ~~ THEN REPLY #21897 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #21885 /* ~"Pas de chance pour toi dans ce cas, car je n'ai pas de réponse pour toi. Laisse-moi en paix."~ */
  IF ~~ THEN REPLY #21898 /* ~"Attends.. est-ce que je peux faire quelque chose pour toi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Doubtful_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #21899 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #21886 /* ~"Non. J'ai une décision difficile à prendre, c'est tout."~ */
  IF ~~ THEN REPLY #21900 /* ~"De quelle décision s'agit-il ?"~ */ DO ~SetGlobal("Doubtful_Skel","GLOBAL",1)
~ JOURNAL #21902 /* ~J'ai parlé avec un squelette qui envisage d'abandonner son état de mort-vivant pour mourir à jamais. Je suppose que ça intéresserait Soego.~ */ GOTO 5
  IF ~~ THEN REPLY #21901 /* ~"Je vois. Je te laisse à tes pensées, alors… au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21887 /* ~"Continuer ma… 'vie'… ici, ou mourir. Aller vers la Vraie Mort dont on m'a parlé."~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21927 /* ~"La Vraie Mort ?"~ */ GOTO 6
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21928 /* ~"C'est peut-être mieux ainsi, tu sais. Toutes les créatures devraient rechercher la Vraie Mort."~ */ GOTO 7
  IF ~~ THEN REPLY #21929 /* ~"Je ne vois pas pourquoi tu devrais renoncer à vivre."~ */ GOTO 7
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21930 /* ~"Je pense qu'il est peut-être temps pour toi de lâcher prise sur ta vie."~ */ GOTO 7
  IF ~~ THEN REPLY #21931 /* ~"Je te laisse à tes pensées. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #21888 /* ~"Une absence complète de passion, la Vraie Mort est la véritable vie au-delà de cette piètre existence. Il est écrit que nous devons l'atteindre pour nous libérer."~ */
  IF ~~ THEN REPLY #21932 /* ~"Je ne vois pas pourquoi tu devrais renoncer à vivre."~ */ GOTO 7
  IF ~~ THEN REPLY #21933 /* ~"Je pense qu'il est peut-être temps pour toi de lâcher prise sur ta vie."~ */ GOTO 7
  IF ~~ THEN REPLY #21934 /* ~"Je te laisse à tes pensées. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2 5.3 6.0 6.1
  SAY #21889 /* ~"Je réfléchirai à tes propos. Maintenant, je te demande de me laisser seul avec mes pensées. Au revoir."~ */
  IF ~~ THEN REPLY #21935 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #21890 /* ~Ce squelette semble troublé, il secoue la tête et murmure pour lui-même.~ */
  IF ~~ THEN REPLY #21936 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #21937 /* ~Laisse le squelette tranquille.~ */ EXIT
END
