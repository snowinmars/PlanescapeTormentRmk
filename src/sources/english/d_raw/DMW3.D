// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47965 /* ~You see a wiry older man who appears to be watching all the market workmen. Occasionally he barks out an order to the workers, who hastily comply. He frowns at your approach.~ */
  IF ~~ THEN REPLY #47966 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #47967 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47968 /* ~His frown turns into a scowl. "I know you, you're that berk who's been runnin' round asking all the questions." He stares at you, daring you to deny it.~ */
  IF ~~ THEN REPLY #47970 /* ~"Yes, and I have some questions for you as well..."~ */ GOTO 2
  IF ~~ THEN REPLY #47971 /* ~Attitude: "What if I am?"~ */ GOTO 4
  IF ~~ THEN REPLY #47972 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #47973 /* ~He gives you a self-satisfied nod. "Yeah, well I don't have time or answers for you. I suggest you leave before I call the guard... and don't be botherin' my men, you hear?"~ */
  IF ~~ THEN REPLY #47974 /* ~"So call the guard, I can handle them."~ */ GOTO 3
  IF ~~ THEN REPLY #47975 /* ~"I'll be leaving then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47976 /* ~He nods. "As you wish you barmy berk. Guards! I've got a situation over here!"~ */
  IF ~~ THEN REPLY #47978 /* ~Leave before they arrive.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY #47979 /* ~He narrows his eyes at you. "Well, if you are, then you should know that you're a pest and I don't have time for pests. And my men don't as well, so leave them alone."~ */
  IF ~~ THEN REPLY #47980 /* ~"I just need to have a few questions answered..."~ */ GOTO 2
  IF ~~ THEN REPLY #47981 /* ~"I don't like you or your attitude. How about I teach you some manners?"~ */ GOTO 5
  IF ~~ THEN REPLY #47982 /* ~"Pike it, berk! Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #47983 /* ~He starts to say something then stops to consider your physical size and the scars that cover your body. He turns to look at a nearby guard and opens his mouth...~ */
  IF ~~ THEN REPLY #47984 /* ~Truth: "I can break that skinny little neck of yours before you get the words out of your mouth..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marketman_1","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #47985 /* ~Bluff: "I can break that skinny little neck of yours before you get the words out of your mouth..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marketman_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #47986 /* ~Leave before the situation gets out of hand.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #47987 /* ~He looks at you carefully and you feel as if you are being weighed in the balance. "I... have work to do and I don't have time for this. Good day to you." He turns and walks away.~ */
  IF ~~ THEN REPLY #47988 /* ~Leave.~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #47989 /* ~You see a wiry older man who appears to be watching all the market workmen. Occasionally he barks out an order to the workers, who hastily comply. He frowns at your approach. "Well... it's the pest again. I have nothing to say to you, berk. Be gone!"~ */
  IF ~~ THEN REPLY #47990 /* ~Leave.~ */ EXIT
END
