// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR6~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49016 /* ~You see woman with a worried look about her face.~ */
  IF ~~ THEN REPLY #49017 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #49018 /* ~Leave the woman alone.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49019 /* ~The woman sighs. "My husband is gone again."~ */
  IF ~~ THEN REPLY #49020 /* ~"Sounds like he's a busy man."~ */ GOTO 4
  IF ~~ THEN REPLY #49021 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #49022 /* ~"I am waiting for my husband to get back. He's been gone for a while now, and I am getting worried."~ */
  IF ~~ THEN REPLY #49023 /* ~"I am sure he will be back soon."~ */ GOTO 3
  IF ~~ THEN REPLY #49024 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49025 /* ~"I'm sure you're right. Oh my... look at the time; if you will excuse me, I have some work to finish up."~ */
  IF ~~ THEN REPLY #49026 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49027 /* ~"Yes he is, and I am busy as well... so if you can, please leave."~ */
  IF ~~ THEN REPLY #49028 /* ~"Farewell."~ */ EXIT
END
