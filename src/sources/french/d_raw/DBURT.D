// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBURT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBURT~

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_Burt","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2881 /* ~Le cadavre de Burt s'agite quand tu t'adresses à lui : "Que… qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #2882 /* ~"Je voulais te poser d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #20787 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1 3.1 4.0 5.0 6.1 7.0 8.0
  SAY #20788 /* ~"Qu'est-ce… qu'est-ce que tu voulais sa-… savoir ?"~ */
  IF ~  Global("Know_Burt","GLOBAL",0)
~ THEN REPLY #20789 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Know_BLDead","GLOBAL",1)
SetGlobal("Know_Burt","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Know_Burt","GLOBAL",1)
~ THEN REPLY #20790 /* ~"Parle-moi encore de toi."~ */ GOTO 2
  IF ~  Global("Know_BLG_Grouped","GLOBAL",1)
Global("Know_Burt","GLOBAL",1)
~ THEN REPLY #20791 /* ~"Qu'est-ce qui est arrivé à Gris ?"~ */ GOTO 5
  IF ~~ THEN REPLY #20792 /* ~"Comment est-ce que tu es mort ?"~ */ GOTO 6
  IF ~~ THEN REPLY #20793 /* ~"Parle-moi des catacombes."~ */ GOTO 7
  IF ~~ THEN REPLY #20794 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #20795 /* ~"J'… J'étais Burt. Moi et Lowden, mon meilleur pote, on est mort maint'nant."~ */
  IF ~~ THEN REPLY #20796 /* ~"Où est Lowden maintenant ?"~ */ DO ~SetGlobal("Know_BLG_Grouped","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #20797 /* ~"Réponds à d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #20798 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.0
  SAY #20799 /* ~"Prisonniers dans une crypte piégée. On détalait de l'endroit où s'trouvaient Gris et la *chose* qui l'a eu. Lowden courait vers une… une crypte qu'on savait mauvaise, mais… mais l'était tell'ment mort de peur qu'il a pas fait attention. Je l'ai entendu mourir." Sa voix semble triste pendant un instant. "Il avait tout le butin de cette tournée… et c'était une bonne tournée…"~ */
  IF ~~ THEN REPLY #20800 /* ~"Une crypte piégée ?"~ */ GOTO 4
  IF ~~ THEN REPLY #20801 /* ~"Sûrement. J'ai d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #20802 /* ~"Vraiment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #20803 /* ~"Ouais. Des pointes, des lames, du sang, des crissements dans le sol. Si Lowden est toujours en un morceau, il sera là-bas. Si tu l'cherches, fais attention… attention à toi…"~ */
  IF ~~ THEN REPLY #20804 /* ~"Sûrement. J'ai d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #20805 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY #20806 /* ~"Quelque chose d'horrible… a ouvert la crypte, et *elle* était là. Lowden et moi, on a poussé Gris à l'intérieur et détalé. On l'a entendu crier… crier."~ */
  IF ~~ THEN REPLY #20807 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #20808 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY #20809 /* ~"Je… J'suis mort ? Sans doute… fuit la reine de la crypte et couru dans les catacombes. Lowden, l'est allé au mauvais endroit… moi… moi, j'ai continué à courir. Couru direct dans le mur… saigné pendant un moment… m'suis réveillé à cause des rats qui m'mastiquaient… m'ont dévoré jusqu'à la mort…"~ */
  IF ~~ THEN REPLY #20810 /* ~"Où est Lowden ?"~ */ DO ~SetGlobal("Know_BLG_Grouped","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #20811 /* ~"J'ai d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #20812 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY #20813 /* ~"On… On… pillait les sous-sols… riches sous-sols… j'allais me tirer d'ici sur mes os… trop dangereux… Gris ? Gris ?" Le cadavre redevient silencieux.~ */
  IF ~~ THEN REPLY #20814 /* ~"Réponds à quelques questions pour moi."~ */ GOTO 1
  IF ~~ THEN REPLY #20815 /* ~Laisse tomber.~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #20816 /* ~Le cadavre est assez frais - dans les deux semaines environ - et de gros morceaux ont été grignotés par des dents de rats. Le front du cadavre donne l'impression que quelqu'un a trépané ce pauvre bougre. Alors que tu le questionnes, il bouge. "Qu… Qui me dérange ?"~ */
  IF ~~ THEN REPLY #20817 /* ~"J'ai des questions à te poser, cadavre…"~ */ GOTO 1
  IF ~~ THEN REPLY #20818 /* ~"Personne. Au revoir."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #20819 /* ~Le cadavre est assez frais - il date probablement de deux semaines environ - et de gros morceaux ont été grignotés par des rats. Le front du cadavre donne l'impression que quelqu'un a trépané ce pauvre bougre. Tu le bouges du bout du pied et il s'affale, désossé.~ */
  IF ~~ THEN REPLY #20820 /* ~"Rien d'utile ici…"~ */ EXIT
END
