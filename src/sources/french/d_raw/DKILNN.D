// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKILNN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKILNN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42075 /* ~Le visage de cet homme ressemble beaucoup à celui de Pilon Dufour, mais sans la peau mouvante et sans mutations constantes. "Rebonjour… Mon nom est Dufour. Tu as besoin de quelque chose ?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42076 /* ~"Tu m'avais promis des potions curatives."~ */ GOTO 2
  IF ~~ THEN REPLY #42077 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #42078 /* ~"Je voudrais acheter quelque chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #42079 /* ~"En fait, je ne faisais que passer. Au revoir, Dufour."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #42080 /* ~Tu vois Dufour, l'assistant de l'alchimiste. "Rebonjour… Tu as besoin de quelque chose ?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42081 /* ~"Tu m'avais promis des potions curatives."~ */ GOTO 2
  IF ~~ THEN REPLY #42082 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #42083 /* ~"Je voudrais acheter quelque chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #42084 /* ~"En fait, je ne faisais que passer. Au revoir, Dufour."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #42085 /* ~"Tu n'es pas encore allé voir Pilon ? C'est lui qui s'occupe de ça."~ */
  IF ~~ THEN REPLY #42086 /* ~"Alors, je vais aller lui parler. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1
  SAY #42087 /* ~"Je travaille toute la journée dans la réserve… Je ne vois pas comment je pourrais répondre à tes questions."~ */
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42088 /* ~"Le vieil ingénieur de la Grande Fonderie m'a dit qu'il lui fallait un échantillon de mon sang et de ma peau pour faire fonctionner sa machine. Voilà pourquoi j'ai besoin de toi."~ */ GOTO 4
  IF ~~ THEN REPLY #42089 /* ~"Je pourrais acheter quelque chose, alors ?"~ */ GOTO 4
  IF ~~ THEN REPLY #42090 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 3.0 3.1
  SAY #42091 /* ~"Va voir Pilon. C'est lui qui s'occupe de ce genre de choses."~ */
  IF ~~ THEN REPLY #42092 /* ~"Alors, je vais aller lui parler. Au revoir."~ */ EXIT
END
