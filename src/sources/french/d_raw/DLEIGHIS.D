// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLEIGHIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLEIGHIS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58803 /* ~Tu aperçois un vieil homme vêtu de vêtements de travail sales. Il fronce les sourcils en te voyant approcher.~ */
  IF ~~ THEN REPLY #58804 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #58805 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58806 /* ~Il fronce encore plus les sourcils. "Eh bien… bonjour à toi, bige. Qu'est-ce que t'as à branler ton râtelier comme ça ? J'ai du boulot."~ */
  IF ~~ THEN REPLY #58807 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58808 /* ~"Peu importe, au revoir."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0 7.0
  SAY #58809 /* ~Il soupire. "Sois bref, pigé ?"~ */
  IF ~~ THEN REPLY #58810 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #58811 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 4
  IF ~~ THEN REPLY #58812 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #58813 /* ~"Je cherche un deva. On m'a dit qu'il est à Maudith."~ */ GOTO 6
  IF ~~ THEN REPLY #58814 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58815 /* ~"C'est pas tes oignons, mais j'm'appelle Leighis."~ */
  IF ~~ THEN REPLY #58816 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58817 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58818 /* ~Il grogne. "Quand j'pense que j'cause avec un crétin congénital alors qu'je devrais travailler…"~ */
  IF ~~ THEN REPLY #58819 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58820 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #58821 /* ~Il regarde aux alentours. "C'est un entrepôt, espèce de bige azimuté. Qu'est-ce qu'tu veux savoir de plus ?"~ */
  IF ~~ THEN REPLY #58822 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58823 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #58824 /* ~Il te jette un regard sévère et secoue la tête. "Tu cherches un deva à Maudith…" Il te rit au nez. "Tu f'rais mieux d'chercher une vierge dans un bordel. T'aurais plus de chances, bige."~ */
  IF ~~ THEN REPLY #58825 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58826 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #58827 /* ~Tu aperçois Leighis, l'ouvrier de l'entrepôt. Il fronce les sourcils en te voyant approcher. "Te rev'là. Qu'est-ce que tu m'veux ?"~ */
  IF ~~ THEN REPLY #58828 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58829 /* ~"Rien, au revoir."~ */ EXIT
END
