// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYELAAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DYELAAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58377 /* ~You see a young woman. Her face is dirty, her hair is unkempt, and her clothes seem to be made from the remains of many garments. She frowns at your approach.~ */
  IF ~~ THEN REPLY #58378 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #58379 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58380 /* ~She glances about warily and steps away from you. "What you want, berk?"~ */
  IF ~~ THEN REPLY #58381 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58382 /* ~"Nothing, farewell."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58383 /* ~She stares at you for a moment then relaxes a bit. "That better be all you want from me." She eyes you suspiciously.~ */
  IF ~~ THEN REPLY #58384 /* ~"What else would I want?"~ */ GOTO 3
  IF ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN REPLY #58386 /* ~"All I want is some answers."~ */ GOTO 4
  IF ~  Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58387 /* ~"All I want is some answers."~ */ GOTO 7
  IF ~~ THEN REPLY #58388 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58389 /* ~She frowns and puts her hands on her hips. "Look, berk. I ain't all that ugly and there ain't that many women down here. You figure it out."~ */
  IF ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN REPLY #58390 /* ~"All I want is some answers."~ */ GOTO 4
  IF ~  Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58391 /* ~"All I want is some answers."~ */ GOTO 7
  IF ~~ THEN REPLY #58392 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #58393 /* ~"Sure, why n..." She suddenly stops and stares at you intently. A look of recognition crosses her face. "Wait a minute. Big, scarred berk, with a weird hairdo... you're the one who turned stag on Roberta!"~ */
  IF ~~ THEN REPLY #58394 /* ~"Roberta Parfidor... is she down here?"~ */ GOTO 5
  IF ~~ THEN REPLY #58395 /* ~"I don't know what you're talking about."~ */ GOTO 6
  IF ~~ THEN REPLY #58396 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58397 /* ~"Yes, she's here." She pauses and smiles. "You should pay her a visit. It'll make her day."~ */
  IF ~~ THEN REPLY #58398 /* ~"Yes, I'm sure it would, but first I have some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #58399 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #58401 /* ~She frowns at you. "Of course you don't. Now what is it you wanted?"~ */
  IF ~~ THEN REPLY #58404 /* ~"I have some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #58406 /* ~"Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2 3.1 5.0 6.0 8.1 9.2 10.1 11.1 12.0 13.1 14.1 15.1 16.0 17.0
  SAY #58408 /* ~"Ask what you will."~ */
  IF ~~ THEN REPLY #58409 /* ~"Who are you?"~ */ GOTO 8
  IF ~~ THEN REPLY #58410 /* ~"Can you tell me about this place?"~ */ GOTO 12
  IF ~~ THEN REPLY #58411 /* ~"I'm looking for a deva, I understand he's here."~ */ GOTO 13
  IF ~~ THEN REPLY #58413 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58415 /* ~"I'm Yelaan. Not much of a name, but that's my name."~ */
  IF ~~ THEN REPLY #58418 /* ~"Why are you here?"~ */ GOTO 9
  IF ~~ THEN REPLY #58420 /* ~"I have some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #58423 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58425 /* ~She thinks for a moment then shrugs. "I beat up some gutter snipe who was stealing business from me. I got caught, they tossed me in here."~ */
  IF ~~ THEN REPLY #58427 /* ~"Stealing business?"~ */ GOTO 10
  IF ~~ THEN REPLY #58429 /* ~"Who'd you beat up?"~ */ GOTO 11
  IF ~~ THEN REPLY #58431 /* ~"I have some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #58434 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #58436 /* ~"I was a harlot and doing pretty good... until she came along. So I figured if I worked on her looks a bit I could get my business back." She sighs.~ */
  IF ~~ THEN REPLY #58439 /* ~"Who'd you beat up?"~ */ GOTO 11
  IF ~~ THEN REPLY #58443 /* ~"I have some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #58445 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #58448 /* ~She thinks for a moment then shrugs. "Don't remember the name... or maybe I never knew it. She was competition, that's all that mattered."~ */
  IF ~~ THEN REPLY #58453 /* ~"You said she was stealing your business?"~ */ GOTO 10
  IF ~~ THEN REPLY #58455 /* ~"I have some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #58457 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #58459 /* ~She gazes at you for a moment and you see a tear begin to form in her eye. She quickly wipes it away and composes herself. "What's there to say... it's a prison and life here is bad. I hear there's worse prisons, but you'll never convince me of it..." Her voice begins to falter and drops to a whisper. "If I had it all to do over again..."~ */
  IF ~~ THEN REPLY #58461 /* ~"I have some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #58463 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY #58465 /* ~She nods. "There's a deva down here... somewhere. I've never seen him, but there's been lots of talk about him. Most people call him the *plaguebringer.*"~ */
  IF ~~ THEN REPLY #58469 /* ~"Plaguebringer?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #58472 /* ~"I have some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #58475 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58478 /* ~"Yes... right after he was found a plague broke out down here. Swept through the whole prison, wiped most of us out I'm told." She shrugs. "Most people say he's the cause, but I don't know."~ */
  IF ~~ THEN REPLY #58480 /* ~"Where can I find him?"~ */ GOTO 15
  IF ~~ THEN REPLY #58482 /* ~"I have some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #58486 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #58488 /* ~She shrugs. "I don't know. Somewhere near is all I can say."~ */
  IF ~~ THEN REPLY #58489 /* ~"You know he's near, but not where..."~ */ GOTO 16
  IF ~~ THEN REPLY #58491 /* ~"I have some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #58493 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58494 /* ~She nods. "Look, berk. The plague that swept through here was devastating and most folks say that deva was the cause. Why in Baator's name would I go looking for him?"~ */
  IF ~~ THEN REPLY #58495 /* ~"I see. I have some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #58496 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #58497 /* ~You see Yelaan. She waves at your approach. "You again, what's up?"~ */
  IF ~~ THEN REPLY #58498 /* ~"I have some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #58499 /* ~"Nothing, farewell."~ */ EXIT
END
