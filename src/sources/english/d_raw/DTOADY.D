// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOADY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOADY~

IF ~  GlobalLT("Sarhava","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #32066 /* ~The young nobleman sneers as you approach him, but says nothing.~ */
  IF ~~ THEN REPLY #32067 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #32073 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #32069 /* ~He makes a point of ignoring you.~ */
  IF ~~ THEN REPLY #32074 /* ~Leave.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #32070 /* ~The young nobleman avoids making eye contact as you approach him, but snickers into his hand, shaking his head.~ */
  IF ~~ THEN REPLY #32075 /* ~"Greetings..."~ */ GOTO 3
  IF ~~ THEN REPLY #32076 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32071 /* ~He rolls his eyes and waves you away, unwilling to acknowledge your greeting with even a single word.~ */
  IF ~~ THEN REPLY #32077 /* ~Leave.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",6)
~ THEN BEGIN 4 // from:
  SAY #32072 /* ~The young nobleman nods politely in greetings, but refuses to engage you in conversation.~ */
  IF ~~ THEN REPLY #32078 /* ~Leave.~ */ EXIT
END
