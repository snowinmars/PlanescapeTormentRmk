// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM2NUE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM2NUE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37249 /* ~You see an older man dressed in simple clothes. His pale, yellow skin is weathered with age. He gives you a bored look as you approach. ~ */
  IF ~~ THEN REPLY #37260 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37261 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37250 /* ~"Hello to you as well, youngster. What you be needing from me?"~ */
  IF ~~ THEN REPLY #37262 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37263 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37251 /* ~He frowns and his face almost disappears into the many wrinkles. "I got time for a couple, but make it quick."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37264 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37265 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ GOTO 5
  IF ~~ THEN REPLY #37266 /* ~"Can you tell me about this ward?"~ */ GOTO 6
  IF ~~ THEN REPLY #37267 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37252 /* ~"Lothar... Don't reckon with that name. Can't help you. Ask around though, someone's bound to know."~ */
  IF ~~ THEN REPLY #37268 /* ~"I see. Do you know who can help me?"~ */ GOTO 4
  IF ~~ THEN REPLY #37269 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37253 /* ~He shakes his head. "Nay. We be simple folk who don't go pokin' our noses into things." He gives you a bored expression.~ */
  IF ~~ THEN REPLY #37270 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37271 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37254 /* ~"Missing a skull..." He barks out a laugh. "Well now, can't say I've heard that one before. Don't know what to tell you."~ */
  IF ~~ THEN REPLY #37273 /* ~"I see. Do you know who can help me?"~ */ GOTO 4
  IF ~~ THEN REPLY #37272 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #37255 /* ~He sighs and gives you a tired look. "Listen, youngster. I'm here to shop, and you ain't a merchant. Get my drift? If not, go away!"~ */
  IF ~~ THEN REPLY #37274 /* ~"I have some other questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #37275 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37256 /* ~"Well, I ain't got any answers. G'day to you." He turns away.~ */
  IF ~~ THEN REPLY #37276 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #37257 /* ~You see an older man dressed in simple clothes. His pale, yellow skin is weathered with age. He gives you a bored look as you approach. "You again? Go away!" He turns away.~ */
  IF ~~ THEN REPLY #37258 /* ~Leave.~ */ EXIT
END
