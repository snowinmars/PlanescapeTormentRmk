// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF1HLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF1HLP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37100 /* ~You see a young woman with pale, yellow skin. She seems to be busy examining some wares in a crate.~ */
  IF ~~ THEN REPLY #37111 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37112 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37101 /* ~She glances over her shoulder at you, then turns to face you. "Aye, and to ye. What ye be wantin'?"~ */
  IF ~~ THEN REPLY #37113 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37114 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.0 7.0 8.0 10.0
  SAY #37102 /* ~She looks somewhat irritated but gives you a friendly smile. "I'll help ye if I can. What ye be needin' to know?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37115 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37116 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ GOTO 5
  IF ~~ THEN REPLY #37117 /* ~"Where can I buy some weapons?"~ */ GOTO 7
  IF ~~ THEN REPLY #37118 /* ~"Where can I buy some magic?"~ */ GOTO 8
  IF ~~ THEN REPLY #37119 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37103 /* ~Her eyes grow wide and she quickly draws a half circle over her heart. "I canna' help ye. The chant is tha' he's in the ward, but I know not where."~ */
  IF ~~ THEN REPLY #37120 /* ~"Do you know who would know?"~ */ GOTO 4
  IF ~~ THEN REPLY #37121 /* ~"All right. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37122 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37104 /* ~She looks worried. "Nay, cutter. Most people avoid trouble, not go lookin' for it."~ */
  IF ~~ THEN REPLY #37123 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37124 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37105 /* ~She frowns for a moment, then gives you a concerned look. "Aye, I've heard there are those who like such, but I canna' help ye."~ */
  IF ~~ THEN REPLY #37125 /* ~"Do you know anyone who could?"~ */ GOTO 6
  IF ~~ THEN REPLY #37126 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37127 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37106 /* ~She thinks for a moment then shrugs. "Ask the lad by the furnace. He likes to talk to most people. Mayhap he's heard somethin'."~ */
  IF ~~ THEN REPLY #37128 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37129 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #37107 /* ~She gestures toward the stalls. "Anze sells em. He'll be the one ye want to talk to."~ */
  IF ~~ THEN REPLY #37130 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37131 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY #37108 /* ~She gestures toward the stalls. "Aalek deals in the Art. Ye should talk to em."~ */
  IF ~~ THEN REPLY #37132 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37133 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #37109 /* ~She frowns. "I don't mean to be rude, but I dunna have time for such talk. Ask the lad by the furnace. Always talkin to strangers he is."~ */
  IF ~~ THEN REPLY #37134 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37110 /* ~She turns to look at you and smiles. "G'day again, cutter. What ye be needin'?"~ */
  IF ~~ THEN REPLY #37135 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37136 /* ~"Farewell."~ */ EXIT
END
