// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDORFIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDORFIN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57994 /* ~You see a muscular young man wearing dirty work clothes. He seems to be checking the contents of several crates and comparing them with a list.~ */
  IF ~~ THEN REPLY #57996 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #57998 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58000 /* ~He pauses for a moment before turning to face you. "Yes? May I help you?"~ */
  IF ~~ THEN REPLY #58001 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58007 /* ~"No, not really. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.0 8.0 9.1 10.0 11.0
  SAY #58009 /* ~He glances about quickly. "All right..."~ */
  IF ~~ THEN REPLY #58010 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #58012 /* ~"What are you doing?"~ */ GOTO 4
  IF ~~ THEN REPLY #58014 /* ~"What can you tell me about this place?"~ */ GOTO 8
  IF ~~ THEN REPLY #58016 /* ~"I'm looking for a deva. I've been told he's in Curst."~ */ GOTO 9
  IF ~~ THEN REPLY #58017 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58019 /* ~"I'm Dorfin, cutter. I'm one of the warehousemen here." He gives you a friendly smile.~ */
  IF ~~ THEN REPLY #58021 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58022 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58024 /* ~"Inventory." He frowns. "For the third time this month, I might add."~ */
  IF ~~ THEN REPLY #58025 /* ~"Is that unusual?"~ */ GOTO 5
  IF ~~ THEN REPLY #58027 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58029 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58030 /* ~He sighs. "No, the boss is a slave driver. He works us hard and rarely lets up on us." He shrugs. "It's a living."~ */
  IF ~~ THEN REPLY #58031 /* ~"If he's such a slave driver, why do you work for him?"~ */ GOTO 6
  IF ~~ THEN REPLY #58033 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58034 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58035 /* ~He leans in close to whisper to you. "We're allowed one day a week off... with pay no less. We don't complain because of that."~ */
  IF ~~ THEN REPLY #58037 /* ~"Interesting. Why does he do that?"~ */ GOTO 7
  IF ~~ THEN REPLY #58038 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58040 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58042 /* ~He shrugs. "I have no idea and I don't really care. It's a break from the grind."~ */
  IF ~~ THEN REPLY #58043 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58044 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58045 /* ~He gives you a confused look then shrugs. "It's just a warehouse. We store the usual stuff. You know, tools, weapons, foodstuffs, whatever..."~ */
  IF ~~ THEN REPLY #58046 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58048 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58049 /* ~"Really?" He looks surprised. "I can't even imagine that... I mean, why would a deva come here?" He pauses for a moment then barks out a laugh. "Ha! Unless it was to rain *holy justice* down upon us."~ */
  IF ~~ THEN REPLY #58051 /* ~"What do you mean?"~ */ GOTO 10
  IF ~~ THEN REPLY #58052 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58054 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58055 /* ~"The citizens of Curst are not known for their kindness and generosity. A deva actually is too good for this place. There is no reason for one to be here unless, of course, he or she was sent by some power. That would only be done in the name of some sort of *higher* justice."~ */
  IF ~~ THEN REPLY #58057 /* ~"I see. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58058 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #58059 /* ~You see Dorfin, the warehouseman. He nods at you. "Hello again, cutter."~ */
  IF ~~ THEN REPLY #58062 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58064 /* ~"Never mind. Farewell."~ */ EXIT
END
