// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWGF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWGF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #65087 /* ~You see a young woman with pale yellow skin. As you approach her you notice that she has small pustules scattered along the exposed areas of her skin. ~ */
  IF ~~ THEN REPLY #65088 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #65089 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65090 /* ~She quickly glances at you and then frowns. "Greetings, cutter. What do you want?"~ */
  IF ~~ THEN REPLY #65091 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #65092 /* ~"Nothing, never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #65093 /* ~Her frown deepens. "I'm sorry, but I'm pretty busy right now. I don't have the time to talk to you..." She starts to turn away. ~ */
  IF ~~ THEN REPLY #65094 /* ~"It will take just a moment of your time..."~ */ GOTO 3
  IF ~~ THEN REPLY #65095 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #65096 /* ~"I don't have a moment to give you. Please ask someone else..." She starts to turn away.~ */
  IF ~~ THEN REPLY #65097 /* ~Leave.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #65098 /* ~You see a woman with pale yellow skin and a persistent cough. She glances at you as you approach.~ */
  IF ~~ THEN REPLY #65099 /* ~"Greetings."~ */ GOTO 5
  IF ~~ THEN REPLY #65100 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #65101 /* ~She smiles at you and tries to answer you but her cough is interfering. "Yes..." She has a coughing fit. "Hello, cutter... You want something?"~ */
  IF ~~ THEN REPLY #65102 /* ~"I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #65103 /* ~"No, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #65104 /* ~"Glad to help, but please be quick."~ */
  IF ~~ THEN REPLY #65105 /* ~"Are you alright?"~ */ GOTO 7
  IF ~~ THEN REPLY #65106 /* ~"Why do you have yellow skin?"~ */ GOTO 8
  IF ~~ THEN REPLY #65107 /* ~"Can you tell me about this ward?"~ */ GOTO 9
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #65108 /* ~"I'm missing a skull. I'm trying to find who took him."~ */ GOTO 11
  IF ~~ THEN REPLY #65109 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65110 /* ~She smiles. "Yes. Thank you for asking. It'll pass."~ */
  IF ~~ THEN REPLY #65111 /* ~"Very well. I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #65112 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #65113 /* ~"Well..." She looks embarrassed. "It's the air in this ward. It's not of the best quality and it causes some problems for most folks. It's all the smoke and what not from the Foundry..." She begins to cough again and motions for you to hurry with your questions.~ */
  IF ~~ THEN REPLY #65114 /* ~"Very well. I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #65115 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #65116 /* ~"Oh, well..." She coughs. "There are lots of shops, markets, peddlers, and..." Another coughing fit hits her. "...things of that nature..." She grows silent and clutches her chest.~ */
  IF ~~ THEN REPLY #65117 /* ~"Are you sure you're alright?"~ */ GOTO 10
  IF ~~ THEN REPLY #65118 /* ~"I see. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #65119 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #65120 /* ~She smiles. "Absolutely..." She begins patting herself on the chest.~ */
  IF ~~ THEN REPLY #65121 /* ~"I see. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #65122 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #65123 /* ~She frowns as she thinks. "No... I can't imagine who would want such a thing..." She looks like she is about to have another coughing fit but it passes. "I really can't think of who you should ask about it either."~ */
  IF ~~ THEN REPLY #65124 /* ~"I see. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #65125 /* ~"Thank you, farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #65126 /* ~You see a middle-aged woman with yellow skin. She glances at you as you approach and tries to wave you away.~ */
  IF ~~ THEN REPLY #65127 /* ~"Greetings."~ */ GOTO 13
  IF ~~ THEN REPLY #65128 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65129 /* ~She looks at you apprehensively. "Uh... Hello... Cutter." She begins to look about, searching the shadows for anyone that may be hidden there. "You want something?"~ */
  IF ~~ THEN REPLY #65130 /* ~"I have some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #65131 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #65132 /* ~"Like what?"~ */
  IF ~~ THEN REPLY #65133 /* ~"Can you tell me about this ward?"~ */ GOTO 15
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65134 /* ~"Someone stole a skull that I had. I'm trying to find it."~ */ GOTO 16
  IF ~~ THEN REPLY #65135 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #65136 /* ~"This here's the Lower Ward, home of the common folk like myself. Not much else to know about, just look around and discover it for yourself."~ */
  IF ~~ THEN REPLY #65137 /* ~"I have some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #65138 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #65139 /* ~She frowns at you then makes a curious gesture over her heart. "I've heard stories..." She pauses. "Some folks say there's a necromancer, or a priest of the dead, or some such thing in this ward. He collects skulls for some reason I can't fathom..."~ */
  IF ~~ THEN REPLY #65140 /* ~"Do you know where I can find him?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #65141 /* ~She shakes her head slowly. "Stories, cutter. That's all it is... No such thing exists in this ward. It's just stories..."~ */
  IF ~~ THEN REPLY #65142 /* ~"Thank you, farewell."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #65143 /* ~As you approach this woman you realize that you have spoken with her once before. "Hello again, cutter. You want something?"~ */
  IF ~~ THEN REPLY #65144 /* ~"No, farewell."~ */ EXIT
END
