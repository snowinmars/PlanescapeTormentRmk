// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTESTES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTESTES~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #61602 /* ~You see a short, balding man standing in what serves as the foyer to this ramshackle flophouse. His bushy brows are furrowed in concentration as he picks at what appear to be scabs on his large, bulbous nose.~ */
  IF ~~ THEN REPLY #61604 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #61605 /* ~Leave the man to his hygiene. Explore the room.~ */ JOURNAL #61617 /* ~This is a test. Had this been a real journal entry... it would have been a good one I'm sure.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61603 /* ~The man doesn't bother to look up. Instead, he continues to stare cross-eyed down at his nose. "Yeah? What da yeh want?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #61606 /* ~"Could I rest here?"~ */ EXIT
END
