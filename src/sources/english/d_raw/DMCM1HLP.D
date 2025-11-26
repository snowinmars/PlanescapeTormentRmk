// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM1HLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM1HLP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37212 /* ~You see a young man with pale, yellow skin. He seems to be busy examining some wares in a crate.~ */
  IF ~~ THEN REPLY #37226 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37227 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37213 /* ~He glances over his shoulder at you, then turns to face you. "Aye, and to ye. What ye be wantin'?"~ */
  IF ~~ THEN REPLY #37225 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37228 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 5.1 6.0 7.0 8.0 10.0
  SAY #37214 /* ~He looks irritated but gives you a friendly smile. "I'll help ye if I can. What ye be needin' to know?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37229 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37230 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ GOTO 5
  IF ~~ THEN REPLY #37231 /* ~"Where can I buy some weapons?"~ */ GOTO 7
  IF ~~ THEN REPLY #37232 /* ~"Where can I buy some magic?"~ */ GOTO 8
  IF ~~ THEN REPLY #37233 /* ~"What can you tell me about this ward?"~ */ GOTO 9
  IF ~~ THEN REPLY #37234 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37215 /* ~His eyes grow wide and he quickly draws a half circle over his heart. "I canna' help ye. The chant is tha' he's in the ward, but I know not where."~ */
  IF ~~ THEN REPLY #37235 /* ~"Do you know who would know?"~ */ GOTO 4
  IF ~~ THEN REPLY #37236 /* ~"All right. I have some more questions..."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37216 /* ~He looks worried. "Nay, cutter. Most people avoid trouble, not go lookin' for it."~ */
  IF ~~ THEN REPLY #37237 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37238 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37217 /* ~He frowns for a moment, then gives you a concerned look. "Aye, I've heard there are those who like such, but I canna' help ye."~ */
  IF ~~ THEN REPLY #37239 /* ~"Do you know anyone who could?"~ */ GOTO 6
  IF ~~ THEN REPLY #37240 /* ~"I have some other questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37218 /* ~He thinks for a moment then shrugs. "Ask the lad Lazlo, by the furnace. He likes to talk to most people. Mayhap he's heard somethin'."~ */
  IF ~~ THEN REPLY #37241 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37242 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #37219 /* ~He gestures toward the stalls. "Anze sells em. He'll be the one ye want to talk to."~ */
  IF ~~ THEN REPLY #37244 /* ~"I have some other questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY #37220 /* ~He gestures toward the stalls. "Aalek deals in the art. Ye should talk to 'em."~ */
  IF ~~ THEN REPLY #37245 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37246 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY #37221 /* ~He frowns. "Look, cutter, I don't mean to be rude, but I dunna have time for such talk. Ask the lad Lazlo, by the furnace. Always talkin' to strangers, he is."~ */
  IF ~~ THEN REPLY #37247 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37222 /* ~He turns to look at you and smiles. "G'day again, cutter. What ye be needin'?"~ */
  IF ~~ THEN REPLY #37223 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37248 /* ~"Farewell."~ */ EXIT
END
