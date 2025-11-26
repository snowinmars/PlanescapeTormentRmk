// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47953 /* ~Tu vois un jeune homme à l'air robuste. Il est occupé à vérifier le contenu de caisses. Il ne semble pas avoir remarqué ta présence.~ */
  IF ~~ THEN REPLY #47954 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #47955 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47956 /* ~Il te regarde par-dessus son épaule, puis se remet au travail. "Désolé, matois. Impossible de m'arrêter pour te parler. J'ai trop de travail." Il se remet au travail.~ */
  IF ~~ THEN REPLY #47957 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #47958 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47959 /* ~Il se remet au travail tout en te parlant. "Je suis désolé, mais tu vas devoir trouver quelqu'un d'autre pour répondre à tes questions parce que moi, j'ai pas le temps. Essaie Lazlo, il se trouve généralement près du fourneau."~ */
  IF ~~ THEN REPLY #47960 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #47961 /* ~Tu vois l'ouvrier du marché. En te voyant approcher, il fronce les sourcils. "Rebonjour, matois."~ */
  IF ~~ THEN REPLY #47962 /* ~"J'ai des questions…"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47963 /* ~Il soupire. "J'aimerais pouvoir t'aider, mais je n'ai pas le temps. Essaie Lazlo, il se trouve généralement près du fourneau."~ */
  IF ~~ THEN REPLY #47964 /* ~"Très bien. Au revoir."~ */ EXIT
END
