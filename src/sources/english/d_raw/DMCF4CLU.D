// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF4CLU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF4CLU~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37185 /* ~You see an unremarkable woman. She appears to be nothing more than another customer at the market.~ */
  IF ~~ THEN REPLY #37193 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37194 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37186 /* ~She turns at your greeting. "Yes..." ~ */
  IF ~~ THEN REPLY #37195 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37196 /* ~"Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0
  SAY #37187 /* ~She gives you a bored look. "All right..."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37197 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37198 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ GOTO 4
  IF ~~ THEN REPLY #37199 /* ~"Where can I buy some weapons?"~ */ GOTO 5
  IF ~~ THEN REPLY #37200 /* ~"Where can I buy some magic?"~ */ GOTO 5
  IF ~~ THEN REPLY #37201 /* ~"What can you tell me about this ward?"~ */ GOTO 6
  IF ~~ THEN REPLY #37202 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37188 /* ~"Never heard of him. I'd remember that *Master of the Bones* title. You can't miss something like that." She continues to look bored.~ */
  IF ~~ THEN REPLY #37203 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37204 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #37189 /* ~She stares at you for a few moments. "Missing a skull... well now, you don't hear that one everyday. I wouldn't know what to tell you." She shrugs.~ */
  IF ~~ THEN REPLY #37205 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37206 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 2.3
  SAY #37190 /* ~She gives you a bored look, then glances about the market. "Right here, cutter. Just take the time to ask the merchants. I'm sure you'll find what you need."~ */
  IF ~~ THEN REPLY #37207 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37208 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY #37191 /* ~She sighs. "It ain't much... but it's the only home I, or any of us here, will ever know. Learn to love it, cause you ain't leaving."~ */
  IF ~~ THEN REPLY #37209 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37210 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #37192 /* ~She turns at your approach and frowns. "I've given you some of my time already. I've got no more to give, cutter." She turns away from you.~ */
  IF ~~ THEN REPLY #37211 /* ~Leave.~ */ EXIT
END
