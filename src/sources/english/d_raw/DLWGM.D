// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWGM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWGM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #65029 /* ~You see a young man with pale yellow skin. As you approach him you notice that he has a rash that covers the exposed areas of his skin. ~ */
  IF ~~ THEN REPLY #65030 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #65031 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65032 /* ~He turns tired looking eyes toward you and then frowns. "What do you want, berk?"~ */
  IF ~~ THEN REPLY #65033 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #65034 /* ~"Nothing, never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #65035 /* ~His expression changes to one of exhaustion. "I'm sorry, but I'm pretty beat right now. I don't have the time to talk to you..." He starts to turn away. ~ */
  IF ~~ THEN REPLY #65036 /* ~"It will take just a moment of your time..."~ */ GOTO 3
  IF ~~ THEN REPLY #65037 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #65038 /* ~"I don't have a moment to give you. Please ask someone else..." He turns away.~ */
  IF ~~ THEN REPLY #65039 /* ~Leave.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #65040 /* ~You see a man with pale yellow skin and a persistent cough. He glances at you as you approach.~ */
  IF ~~ THEN REPLY #65041 /* ~"Greetings."~ */ GOTO 5
  IF ~~ THEN REPLY #65042 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #65043 /* ~He smiles at you. "Yes..." He coughs a bit but it soon passes. "You want something from me, I can tell."~ */
  IF ~~ THEN REPLY #65044 /* ~"I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #65045 /* ~"No, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #65046 /* ~"Oh... Alright, ask away."~ */
  IF ~~ THEN REPLY #65047 /* ~"Are you alright?"~ */ GOTO 7
  IF ~~ THEN REPLY #65048 /* ~"Why do you have yellow skin and the cough?"~ */ GOTO 8
  IF ~~ THEN REPLY #65049 /* ~"Can you tell me about this ward?"~ */ GOTO 9
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #65050 /* ~"I'm missing a skull. I'm trying to find who took him."~ */ GOTO 11
  IF ~~ THEN REPLY #65051 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65052 /* ~He smiles. "Not really, but I'm healthier than most of the sods in this ward... Thank you for the courtesy of asking, but I'm sure you want something else."~ */
  IF ~~ THEN REPLY #65053 /* ~"Yes. I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #65054 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #65055 /* ~"This ward is filled with smoke and fumes from factories and what not. It makes the air bad and gives you the cough. Most sods here have their skin turn color on them and get a rash as well." He pauses and then shrugs. "Nothing anyone can do about it, it's a fact of life here."~ */
  IF ~~ THEN REPLY #65056 /* ~"I see. I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #65057 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #65058 /* ~He shrugs and gestures about him. "Seeing tells it all, cutter. It isn't heaven and it isn't hell. There's better places to aspire to and worse ones to avoid."~ */
  IF ~~ THEN REPLY #65059 /* ~"I've been to the Hive. That must be the place to avoid."~ */ GOTO 10
  IF ~~ THEN REPLY #65060 /* ~"I see. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #65061 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #65062 /* ~He laughs but stops when another coughing fit threatens to start. "Yeah... The Hive isn't hell but it's just a stone's throw away. Was there something else you needed, cutter?"~ */
  IF ~~ THEN REPLY #65063 /* ~"I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #65064 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #65065 /* ~"Not a clue in the world. If you were in the Hive I'd be partial to blaming the Dusties... Here, I don't know who would want such a thing."~ */
  IF ~~ THEN REPLY #65066 /* ~"I see. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #65067 /* ~"Thank you, farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #65068 /* ~You see a middle-aged man with yellow skin. He glances at you as you approach and sighs. He gives you a bored look.~ */
  IF ~~ THEN REPLY #65069 /* ~"Greetings."~ */ GOTO 13
  IF ~~ THEN REPLY #65070 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65071 /* ~"I don't know what you want, but I don't want to give it. Go away." ~ */
  IF ~~ THEN REPLY #65072 /* ~"I have some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #65073 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #65074 /* ~"Really? Well if that's all you want..."~ */
  IF ~~ THEN REPLY #65075 /* ~"Can you tell me about this ward?"~ */ GOTO 15
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65076 /* ~"Someone stole a skull that I had. I'm trying to find him."~ */ GOTO 16
  IF ~~ THEN REPLY #65077 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #65078 /* ~"Yeah, this is the Lower Ward. Common folk live here. Not much else to say about it."~ */
  IF ~~ THEN REPLY #65079 /* ~"I see. I have some more questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #65080 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #65081 /* ~He snorts and frowns at you. "A skull? What in the name of all Baator would anyone, including yourself, want with a skull..." He stares at you for a moment and then shrugs. "Never mind, none of my business."~ */
  IF ~~ THEN REPLY #65082 /* ~"So, do you know who might have taken him?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #65083 /* ~He shakes his head slowly. "No, I don't. And the more I think about it the more certain I am that I don't want to know..."~ */
  IF ~~ THEN REPLY #65084 /* ~"Thank you, farewell."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #65085 /* ~As you approach this man you realize that you have spoken with him once before. "Hello again, cutter. You want something?"~ */
  IF ~~ THEN REPLY #65086 /* ~"No, farewell."~ */ EXIT
END
