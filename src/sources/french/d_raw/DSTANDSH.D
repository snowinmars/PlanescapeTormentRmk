// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTANDSH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTANDSH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46108 /* ~Le petit homme à l'air opprimé va d'un bout à l'autre de la brocante. Il ne cesse de faire la poussière, de cataloguer les objets et de les déplacer au gré de sa patronne. Il sent légèrement l'oignon. Il te regarde nerveusement lorsque tu t'approches de lui. "Je… je vous en prie, monsieur… je ne peux vous parler. J'ai du travail et ma maîtresse ne me permet pas de…"~ */
  IF ~~ THEN REPLY #46109 /* ~"J'avais juste quelques questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #46110 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46111 /* ~"Je suis désolé, monsieur, mais c'est impossible. Je vous en prie, partez avant que ma maîtresse ne nous voie discuter…"~ */
  IF ~~ THEN REPLY #46112 /* ~"Ta maîtresse ?"~ */ GOTO 2
  IF ~~ THEN REPLY #46113 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46114 /* ~"Maîtresse Vrischika, oui", fait-il d'un hochement de tête. "Je suis Standish, son serviteur… ou plutôt son esclave. J'ai commis un crime et j'ai été vendu dans le Bas Quartier. C'est là qu'elle m'a acheté, comme la plupart de ses autres esclaves, qui restent à son manoir. Je vous en supplie ! Partez, ou elle se mettra en colère et me battra sans pitié !"~ */
  IF ~~ THEN REPLY #46115 /* ~"D'accord. Au revoir, Standish."~ */ EXIT
END
