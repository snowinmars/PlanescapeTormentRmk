// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47907 /* ~You see a sturdy young man. He seems to be moving the contents of crates to various stalls in the market. He nods at your approach. "Good day, cutter."~ */
  IF ~~ THEN REPLY #47908 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #47909 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47910 /* ~He nods again. "What can I help you with?"~ */
  IF ~~ THEN REPLY #47911 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #47912 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 6.1 8.0 9.0 10.0 11.0
  SAY #47913 /* ~"Very well." He awaits your questions.~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #47914 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #47916 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ GOTO 5
  IF ~~ THEN REPLY #47917 /* ~"Where can I buy some weapons?"~ */ GOTO 8
  IF ~~ THEN REPLY #47918 /* ~"Where can I buy some magic?"~ */ GOTO 9
  IF ~~ THEN REPLY #47919 /* ~"What can you tell me about this ward?"~ */ GOTO 10
  IF ~~ THEN REPLY #47920 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 7.0
  SAY #47915 /* ~He shakes his head. "The Master of the Bones... does not like visitors, cutter. You may be looking for him, but you *don't* want to find him."~ */
  IF ~~ THEN REPLY #47931 /* ~"Yes, I do..."~ */ GOTO 4
  IF ~~ THEN REPLY #47932 /* ~"All right. Let me as you something else..."~ */ GOTO 2
  IF ~~ THEN REPLY #47933 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47921 /* ~He stares at you for a moment then drops his gaze to your many scars. He shrugs his shoulders as he looks you in the eyes. "Leave the market, head south, then a little east. The ruined house. May the powers protect you, cutter." He turns away and returns to his work.~ */
  IF ~~ THEN REPLY #47922 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #47927 /* ~He frowns and looks you up and down. "Well... was there anything special about this skull?"~ */
  IF ~~ THEN REPLY #47928 /* ~"No."~ */ GOTO 6
  IF ~~ THEN REPLY #47929 /* ~"Yes. It talked."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47930 /* ~He shrugs. "Can't see why anyone would want it then."~ */
  IF ~~ THEN REPLY #47941 /* ~"What if it could talk?"~ */ GOTO 7
  IF ~~ THEN REPLY #47942 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #47943 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #47934 /* ~He looks at you for a moment. "I would say that qualifies as being special. Which means it could have attracted the attention of Lothar, the Master of the Bones."~ */
  IF ~~ THEN REPLY #47935 /* ~"Where do I find this Lothar?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #47937 /* ~"You should talk to Anze; he's usually at the counter over by the furnace."~ */
  IF ~~ THEN REPLY #47938 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #47939 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #47944 /* ~"You need to talk to Aalek, he's usually at the far counter over by the furnace."~ */
  IF ~~ THEN REPLY #47945 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #47946 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY #47947 /* ~He sighs. "It's home... I can think of better places to be, and I can think of worse as well." He shrugs again. "As for details, go talk to Anze's boy, Lazlo. He's usually over by the furnace. Lad loves to talk."~ */
  IF ~~ THEN REPLY #47948 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #47949 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #47950 /* ~The workman looks up at you and smiles. "Hello again. What can I do for you?"~ */
  IF ~~ THEN REPLY #47951 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #47952 /* ~"Nothing, farewell."~ */ EXIT
END
