// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF2NUE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF2NUE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37137 /* ~You see an older woman dressed in simple clothes. Her pale, yellow skin is weathered with age. She gives you a bored look as you approach. ~ */
  IF ~~ THEN REPLY #37146 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37147 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37138 /* ~"Hello to you as well, youngster. What you be needing from old Belle?"~ */
  IF ~~ THEN REPLY #37148 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37149 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37139 /* ~She frowns and her face almost disappears into her wrinkles. "I got time for a couple, but make it quick."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37150 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37151 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ GOTO 5
  IF ~~ THEN REPLY #37152 /* ~"Can you tell me about this ward?"~ */ GOTO 6
  IF ~~ THEN REPLY #37153 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37140 /* ~"Lothar... don't reckon with that name. Can't help you."~ */
  IF ~~ THEN REPLY #37154 /* ~"I see. Do you know who can help me?"~ */ GOTO 4
  IF ~~ THEN REPLY #37155 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37141 /* ~She shakes her head. "Nay." She gives you a bored expression.~ */
  IF ~~ THEN REPLY #37156 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37157 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37142 /* ~"Missing skull..." She barks out a laugh. "Well now, can't say I've heard that one before. Don't know what to tell you."~ */
  IF ~~ THEN REPLY #37158 /* ~"I see. Do you know who can help me?"~ */ GOTO 4
  IF ~~ THEN REPLY #37159 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #37143 /* ~She sighs. "Listen, youngster. I'm here to shop, and you ain't a merchant. Get my drift?"~ */
  IF ~~ THEN REPLY #37160 /* ~"I have some other questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #37161 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37144 /* ~"Well, I ain't got any answers. G'day to you." She turns away.~ */
  IF ~~ THEN REPLY #37162 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #37145 /* ~You see an older woman dressed in simple clothes. Her pale, yellow skin is weathered with age. She gives you a bored look as you approach. "Why d'ye insist on botherin' me? Go away!" She turns away.~ */
  IF ~~ THEN REPLY #37163 /* ~Leave.~ */ EXIT
END
