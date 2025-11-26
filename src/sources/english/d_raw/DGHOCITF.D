// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHOCITF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHOCITF~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19696 /* ~This female ghoul reeks of blood and carrion. Beetles and worms crawl through her long, stringy hair, which she sweeps from her yellow eyes with cruel-looking talons. Her flesh has turned a sickly green color, and is covered in rot and weeping sores.~ */
  IF ~~ THEN REPLY #19705 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #19706 /* ~Leave the ghoul be.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #19697 /* ~The ghoul narrows her eyes and snarls at you. Her tongue - no less than two hands long - curls out to lick at her scabby lips.~ */
  IF ~~ THEN REPLY #19707 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #19708 /* ~"I must be taking my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19698 /* ~The ghoul continues to eye you hungrily. She clenches and unclenches her clawed fists, as if fighting the urge to leap upon you and feed.~ */
  IF ~~ THEN REPLY #19709 /* ~"Calm yourself, and answer my questions."~ */ GOTO 3
  IF ~~ THEN REPLY #19710 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #19699 /* ~The ghoul screeches at you: "Silence, meat! No talk! I no lissen to meat-thing! I hear only your heart, blood in meat's veins, sweet, delicious blood... tasty, rich, heart-meat..." Drool pours from its mouth, spattering the dusty tiles. "NO TALK!"~ */
  IF ~~ THEN REPLY #19711 /* ~"Farewell, then."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #19700 /* ~The ghoul screeches at you as you approach: "Away! Go away! I no *talk* to meat thing, I no *listen,* meat! GO!"~ */
  IF ~~ THEN REPLY #19712 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",0)
~ THEN BEGIN 5 // from:
  SAY #19701 /* ~This female ghoul reeks of blood and carrion. Beetles and worms crawl through her long, stringy hair, which she sweeps from her yellow eyes with cruel-looking talons. Her flesh has turned a sickly green color, and is covered in rot and weeping sores.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Warn","AR1500",1)
~ EXTERN ~DMORTE~ 204
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",1)
~ THEN BEGIN 6 // from:
  SAY #50422 /* ~This female ghoul reeks of blood and carrion. Beetles and worms crawl through her long, stringy hair, which she sweeps from her yellow eyes with cruel-looking talons. Her flesh has turned a sickly green color, and is covered in rot and weeping sores.~ */
  IF ~~ THEN REPLY #50423 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #50425 /* ~Leave the ghoul be.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END
