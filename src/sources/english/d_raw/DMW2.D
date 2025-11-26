// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47953 /* ~You see a sturdy-looking young man. He seems to be engrossed in checking the contents of crates. He does not notice your approach.~ */
  IF ~~ THEN REPLY #47954 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #47955 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47956 /* ~He glances over his shoulder at you then returns to his work. "Sorry, cutter. I can't stop to chat with you. Too much work to do." He returns to his work.~ */
  IF ~~ THEN REPLY #47957 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #47958 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47959 /* ~He continues with his work as he speaks to you. "I'm sorry, but you'll have to get someone else to answer your questions, I just don't have the time. Try the boy Lazlo, he's usually over by the furnace."~ */
  IF ~~ THEN REPLY #47960 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #47961 /* ~You see the market workman. He notices your approach and frowns. "Hello again, cutter."~ */
  IF ~~ THEN REPLY #47962 /* ~"I have some questions..."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47963 /* ~He sighs. "I would help you, but I don't have the time. Try that boy Lazlo, he's usually over by the furnace."~ */
  IF ~~ THEN REPLY #47964 /* ~"All right. Farewell."~ */ EXIT
END
