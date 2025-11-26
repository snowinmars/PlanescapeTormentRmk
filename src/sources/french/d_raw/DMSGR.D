// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSGR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #43384 /* ~Ce jeune homme mince s'approche de toi, l'air un peu soucieux. "Mille excuses, monsieur, mais je cherche un homme et je me disais que tu pourrais peut-être m'aider…"~ */
  IF ~~ THEN REPLY #43385 /* ~"Oh ? Comment ça ?"~ */ GOTO 2
  IF ~~ THEN REPLY #43817 /* ~"J'en doute. Au revoir."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #43818 /* ~"Accorde-moi juste un moment… Ce ne sera pas long…"~ */
  IF ~~ THEN REPLY #43819 /* ~"Très bien… Qu'est-ce que c'est ?"~ */ GOTO 2
  IF ~~ THEN REPLY #43820 /* ~"Laisse-moi tranquille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #43821 /* ~"Je suis un messager. Je cherche un homme qui, d'après ce qu'on dit, serait incapable de mourir… Un homme couvert de cicatrices pour qui la mort n'est rien d'autre que le plus insignifiant des désagréments. Comme tu corresponds à cette description (bien qu'elle soit un peu vague), je me demandais si tu n'étais pas cet homme."~ */
  IF ~~ THEN REPLY #43822 /* ~"Oui, c'est moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Msgr_1","GLOBALLaw",1)
SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43823 /* ~"Non, ce n'est pas moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Msgr_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #43824 /* ~"Qui demande après moi ?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.0 7.0
  SAY #43825 /* ~Il incline la tête, puis te salue profondément. "Alors, j'ai un message pour toi : c'est Maîtresse Jolmi de la maison Syrma, une dame de haut rang, qui m'envoie. Maîtresse Jolmi te donne rendez-vous à la Salle des Fêtes, où elle voudrait te faire une proposition - sur laquelle je ne sais rien. Si tu décides de te rendre à ce rendez-vous, sache qu'elle portera des soieries vertes, bordées d'or, et que sa chevelure est d'une teinte acier bleuté. Ainsi se termine mon message… Au revoir."~ */
  IF ~~ THEN REPLY #43826 /* ~"Attends… Où est la Salle des Fêtes ?"~ */ JOURNAL #39487 /* ~On m'a apporté un message disant que Jolmi, de la Maison Syrma, a une proposition à me faire. Je dois la rencontrer à la Salle des Fêtes. Ses cheveux sont bleu acier et elle porte une robe de soie verte, ornée d'un liseré d'or.~ */ GOTO 4
  IF ~~ THEN REPLY #43827 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ JOURNAL #39487 /* ~On m'a apporté un message disant que Jolmi, de la Maison Syrma, a une proposition à me faire. Je dois la rencontrer à la Salle des Fêtes. Ses cheveux sont bleu acier et elle porte une robe de soie verte, ornée d'un liseré d'or.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43828 /* ~"Au nord-est de cette partie du Quartier des Gratte-Papier, monsieur. Il s'agit d'un grand édifice facile à trouver. Maintenant, au revoir, monsieur."~ */
  IF ~~ THEN REPLY #43829 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 6.1
  SAY #43830 /* ~"Alors, tant pis. Au revoir. Désolé de t'avoir importuné. Au revoir."~ */
  IF ~~ THEN REPLY #43831 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #43832 /* ~"Je travaille pour une riche aristocrate, Jolmi Syrma, monsieur."~ */
  IF ~~ THEN REPLY #43833 /* ~"Je suis l'homme que tu cherches."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Msgr_1","GLOBALLaw",1)
SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43834 /* ~"Eh bien, je ne suis pas celui que tu cherches."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Msgr_1","GLOBALLaw",-1)
~ GOTO 5
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #43835 /* ~Le jeune messager te salue poliment. "Encore toi."~ */
  IF ~~ THEN REPLY #43836 /* ~"Je voulais te dire que je suis bien l'homme que tu cherches."~ */ DO ~SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43837 /* ~"Oui… Je ne faisais que passer. Au revoir."~ */ EXIT
END
