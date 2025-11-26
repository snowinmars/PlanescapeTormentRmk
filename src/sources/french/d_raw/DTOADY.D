// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOADY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOADY~

IF ~  GlobalLT("Sarhava","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #32066 /* ~Le jeune noble sourit avec dédain à ton approche, mais ne dit rien.~ */
  IF ~~ THEN REPLY #32067 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #32073 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #32069 /* ~Il t'ignore visiblement.~ */
  IF ~~ THEN REPLY #32074 /* ~Pars.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #32070 /* ~Le jeune noble évite de rencontrer ton regard alors que tu t'approches de lui, mais ricane, la main devant la bouche et secouant la tête.~ */
  IF ~~ THEN REPLY #32075 /* ~"Bonjour…"~ */ GOTO 3
  IF ~~ THEN REPLY #32076 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32071 /* ~Il fait les yeux ronds et te fait signe de partir, refusant de te rendre ton salut même d'un simple mot.~ */
  IF ~~ THEN REPLY #32077 /* ~Pars.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",6)
~ THEN BEGIN 4 // from:
  SAY #32072 /* ~Le jeune noble te fait un signe de tête poli pour te rendre ton salut, mais se refuse à engager la conversation.~ */
  IF ~~ THEN REPLY #32078 /* ~Pars.~ */ EXIT
END
