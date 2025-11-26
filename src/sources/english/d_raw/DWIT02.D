// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DWIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43025 /* ~This person is breathing heavily and is covered in a fine sheen of sweat, as if they had just finished some strenuous exercise. They turn to you as you approach. "Yes?"~ */
  IF ~~ THEN REPLY #43026 /* ~"What is this place?"~ */ GOTO 1
  IF ~~ THEN REPLY #43027 /* ~"Nothing... just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43028 /* ~They nod towards the training dummies. "The warrior's training chamber."~ */
  IF ~  Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #43029 /* ~"Where's the trainer?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",1)
~ JOURNAL #66874 /* ~I wandered into the warrior training chamber of the Civic Festhall, but there was no tutor to be found. One of the trainees there told me that Qui-Sai - the warriors' tutor - should be somewhere in the Festhall, and that he shouldn't be hard to miss, as his skin is like gray stone.~ */ GOTO 2
  IF ~  GlobalGT("Qui_Sai","GLOBAL",0)
GlobalLT("Qui_Sai","GLOBAL",4)
~ THEN REPLY #66875 /* ~"Where's the trainer?"~ */ GOTO 2
  IF ~~ THEN REPLY #43030 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43031 /* ~"Qui-Sai?" They shrug, wiping sweat from their brow. "Somewhere in the Festhall, most likely. He's hard to miss... his skin is like gray stone."~ */
  IF ~~ THEN REPLY #43032 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
