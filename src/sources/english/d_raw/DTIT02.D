// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43015 /* ~This person is casually examining the bell-laden practice dummies strewn about the chamber. They look to you as you draw near. "Hmm?"~ */
  IF ~~ THEN REPLY #43016 /* ~"What is this place?"~ */ GOTO 1
  IF ~~ THEN REPLY #43017 /* ~"Nothing... just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43018 /* ~"It's the thieves' training chamber. The dummies, over there, are for practicing purse-cutting and pick-pocketing on."~ */
  IF ~  Global("Eli","GLOBAL",0)
~ THEN REPLY #43019 /* ~"Where's the trainer?"~ */ DO ~SetGlobal("Eli","GLOBAL",1)
~ JOURNAL #66872 /* ~I found the thief training chamber of the Civic Festhall, but there was no tutor present. One of the practicing footpads there told me that Eli Havelock, the tutor, had recently stormed out of the Festhall and was most likely out in the Clerk's Ward. He was described to me as thin, of medium height, with dark hair, swarthy skin, and sharp features.~ */ GOTO 2
  IF ~  GlobalGT("Eli","GLOBAL",0)
GlobalLT("Eli","GLOBAL",3)
~ THEN REPLY #66873 /* ~"Where's the trainer?"~ */ GOTO 2
  IF ~~ THEN REPLY #43020 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43021 /* ~"He's probably wandering the Ward, right now... someone upset him, and he stormed out of the Festhall swearing like nobody's business. His name's Havelock - Eli Havelock. He's thin, of medium height, with dark hair, swarthy skin, and sharp features."~ */
  IF ~~ THEN REPLY #43022 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
