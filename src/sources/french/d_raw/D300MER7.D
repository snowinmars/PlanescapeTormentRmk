// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER7.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER7~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17734 /* ~Ce jeune homme mince - marchand d'étoffes de son état - apostrophe les passants, avec un sourire nerveux. Il ne semble pas remarquer ta présence.~ */
  IF ~~ THEN REPLY #17744 /* ~"Bonjour…"~ */ GOTO 2
  IF ~~ THEN REPLY #17745 /* ~Laisse le marchand.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17736 /* ~"Bienvenue de nouveau. Puis-je, euh, t'présenter que'que chose ?"~ */
  IF ~~ THEN REPLY #17746 /* ~"Non, je n'ai pas besoin d'étoffes. Mais j'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #17747 /* ~"Non, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #17737 /* ~"Bonjour, euh… bienvenue ! Qu'est-ce j'te montre aujourd'hui ? De la fourrure ? De la soie ? Du coton ?"~ */
  IF ~~ THEN REPLY #17748 /* ~"Rien. Je n'ai pas besoin d'étoffes. J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #17749 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #17738 /* ~"Bien sûr, vas-y. Tout ce que tu veux." Il sourit craintivement, dans une tentative maladroite de faire bonne impression.~ */
  IF ~~ THEN REPLY #17750 /* ~"Parle-moi de cette région."~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17751 /* ~"Je cherche un certain Pharod."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17752 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 4
  IF ~~ THEN REPLY #17753 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #17739 /* ~"Oh !" Il a l'air soudain déçu. "Je… euh… je pensais que tu voulais m'interroger sur les… étoffes."~ */
  IF ~~ THEN REPLY #17754 /* ~"Les étoffes ?"~ */ GOTO 5
  IF ~~ THEN REPLY #17755 /* ~"Non. Tu peux répondre à ma question ?"~ */ GOTO 6
  IF ~~ THEN REPLY #17756 /* ~"Alors, oublie ce que je t'ai demandé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #17741 /* ~Les yeux du marchand s'éclairent. "Oui, les étoffes ! J'en ai de toutes les sortes, mon ami… tout ce que t'veux ! Aimerais-tu voir quelque chose de spécial ?"~ */
  IF ~~ THEN REPLY #17757 /* ~"Non, mais tu peux répondre à ma question ?"~ */ GOTO 6
  IF ~~ THEN REPLY #17758 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0
  SAY #17742 /* ~Il fronce les sourcils, en secouant la tête. "Euh… non."  Soudain, il semble frappé d'une idée lumineuse et montre ses rouleaux de textiles. "Des étoffes ?"~ */
  IF ~~ THEN REPLY #17759 /* ~"Non. Au revoir."~ */ EXIT
END
