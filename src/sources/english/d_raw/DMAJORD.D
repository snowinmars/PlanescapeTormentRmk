// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAJORD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAJORD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #44696 /* ~You see a cube with two arms, two legs, and two small wings sprouting from its sides. On the front of the cube is an animated face. As you approach, the creature focuses its eyes upon you.~ */
  IF ~~ THEN REPLY #44697 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #44698 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #44699 /* ~The creature focuses emotionless eyes on you. "Greetings, adventurer. Welcome to Rubikon, the dungeon construct. Thank you for choosing Rubikon for your dungeoning experience. You may access Rubikon through this door."~ */
  IF ~~ THEN REPLY #44700 /* ~"What is Rubikon?"~ */ GOTO 2
  IF ~~ THEN REPLY #44701 /* ~"What is a dungeon construct?"~ */ GOTO 3
  IF ~~ THEN REPLY #44702 /* ~"Never mind, I've got to go. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #44703 /* ~The creature stares at you without answering.~ */
  IF ~~ THEN REPLY #44704 /* ~"What is a dungeon construct?"~ */ GOTO 3
  IF ~~ THEN REPLY #44705 /* ~"Never mind, I've got to go. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #44706 /* ~The creature blinks at you but gives no indication it has heard your question.~ */
  IF ~~ THEN REPLY #44708 /* ~"What is Rubikon?"~ */ GOTO 2
  IF ~~ THEN REPLY #44709 /* ~"Never mind, I've got to go. Farewell."~ */ EXIT
END
