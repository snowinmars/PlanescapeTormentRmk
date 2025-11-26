// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFSUPE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~GFSUPE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5336 /* ~"Guards! Guards! Stop this man! STOP HIM!"~ */
  IF ~~ THEN REPLY #5337 /* ~Done.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5338 /* ~"Leave, berk. Come back some other time and maybe we'll talk."~ */
  IF ~~ THEN REPLY #5339 /* ~"I just had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #5502 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #5340 /* ~"I... said... LEAVE. Come back some other time when you've had a chance to think about following directions better."~ */
  IF ~~ THEN REPLY #5341 /* ~Leave.~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 21 20 9 even though they appear after this state */
~  Global("GearRepair","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #5342 /* ~She smiles sarcastically at you. "Thank you ever so much for consenting to fix our machinery. Your concern for the Foundry's welfare is heartening and uplifting. Berk." She spits on the ground at your feet and turns away.~ */
  IF ~~ THEN REPLY #5343 /* ~Attack her.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #5344 /* ~"I had some questions for you."~ */ GOTO 4
  IF ~~ THEN REPLY #5345 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #5346 /* ~"What? Make it quick, sod... I've got a short temper for the likes of you, and I've got a lot of work to do, thanks to you."~ */
  IF ~~ THEN REPLY #5347 /* ~"I've reconsidered. I'll help fix the gears."~ */ GOTO 5
  IF ~~ THEN REPLY #5348 /* ~"Where's the clerk's office again?"~ */ GOTO 6
  IF ~~ THEN REPLY #5349 /* ~"How do I join the Godsmen?"~ */ GOTO 7
  IF ~~ THEN REPLY #5350 /* ~"How do I make this up to you?"~ */ GOTO 8
  IF ~~ THEN REPLY #5351 /* ~"Forget it. I was leaving anyway."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #5352 /* ~"Oh, so when you need something, suddenly you'll help? Your tests may be all about selfish behavior, berk, but it doesn't mean I have to like them. I don't. And I don't like you. We've already got someone else working on getting them working again. So pike it." She turns and walks away.~ */
  IF ~~ THEN REPLY #5353 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 7.0
  SAY #5354 /* ~"Ask just about anyone else, berk, or figure it out yourself." She turns and walks away.~ */
  IF ~~ THEN REPLY #5355 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY #5356 /* ~She looks torn for a moment, as if weighing the benefits between telling you to pike it and gaining a member for her faction. Grudgingly, she says, "Go through the door on the rightmost wall of the Foundry and in the meeting hall. Look for Keldor of Durian there. He can help you."~ */
  IF ~~ THEN REPLY #5357 /* ~"Thanks. I had another question."~ */ GOTO 6
  IF ~~ THEN REPLY #5358 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY #5359 /* ~"Is there any way you can make it up to me? Ha! I think not, sod. Get mazed." She turns and walks away.~ */
  IF ~~ THEN REPLY #5360 /* ~Leave.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #5361 /* ~"Greetings, seeker. What can I help you with? Please keep it short... we do have a schedule to maintain."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5362 /* ~"I need to pick up something from the clerk. Where is he?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",1)
HasItem("GToken",Myself)
~ THEN REPLY #5363 /* ~"I need to get in to that guarded room back there."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5364 /* ~"I need to get in to that guarded room back there."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
~ THEN REPLY #5366 /* ~"I need to get in to that guarded room back there."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
HasItem("GToken",Myself)
~ THEN REPLY #5367 /* ~"I need to get in to that guarded room back there, and I lost my token."~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
!HasItem("GToken",Myself)
~ THEN REPLY #5368 /* ~"I need to get in to that guarded room back there, and I lost my token."~ */ GOTO 18
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #5372 /* ~"I need to use the forge."~ */ GOTO 13
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #5373 /* ~"I need to use the forge."~ */ GOTO 14
  IF ~~ THEN REPLY #5374 /* ~"Where can I get those items to work the forge?"~ */ GOTO 19
  IF ~~ THEN REPLY #5375 /* ~"I guess I don't need anything. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 16.0
  SAY #5376 /* ~"You see that room down there with the desk in it? He sits behind that desk. You should be able to get your item there."~ */
  IF ~~ THEN REPLY #5377 /* ~"Thanks. I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5379 /* ~"Thanks. Bye."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 16.1
  SAY #5378 /* ~She looks around for a moment to make sure no one is watching her, and then slips a golden medallion from around her neck and passes it furtively to you. "Don't tell anyone where you got this," she hisses.~ */
  IF ~~ THEN REPLY #5380 /* ~"Thanks. I had other questions."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ GOTO 16
  IF ~~ THEN REPLY #5381 /* ~"Thanks. Farewell."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2 16.2 16.3 16.7 16.8
  SAY #5382 /* ~"I'd love to help you, but only the real high-ups can authorize that. You'd have to speak to Keldor about that."~ */
  IF ~~ THEN REPLY #5383 /* ~"Fine. I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5384 /* ~"Thanks for nothing. Bye."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.6 16.10
  SAY #5385 /* ~"Certainly. Just make sure you have the proper items for it: Protection from the flames, tongs, hammer, and, of course, your iron ore."~ */
  IF ~~ THEN REPLY #5386 /* ~"Right. I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5387 /* ~"Where would I get those items?"~ */ GOTO 19
  IF ~~ THEN REPLY #5388 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.7 16.11
  SAY #5389 /* ~"I'm afraid we need to allow our other members a chance at the forge. You've already monopolized it long enough, friend."~ */
  IF ~~ THEN REPLY #5390 /* ~"Fine. I had other questions, then."~ */ GOTO 16
  IF ~~ THEN REPLY #5391 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3 16.4
  SAY #5392 /* ~"I would love to help you, but I seem to have mislaid the token that would enable my entrance there. My apologies, seeker."~ */
  IF ~~ THEN REPLY #5393 /* ~"That's all right. I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5394 /* ~"Oh well. So long."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.0 11.0 12.0 13.0 14.0 15.0 17.0 18.0 19.0 20.0 21.1 22.3 23.5 23.6 24.0 25.2 26.2 27.2 28.0 29.0 32.0 33.1 34.0 35.0 36.0 37.0
  SAY #5395 /* ~"More questions? What are they?"~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5396 /* ~"I need to pick up something from the clerk. Where is he?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalLT("Token_A","GLOBAL",1)
HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5397 /* ~"I need to get in to that guarded room back there."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5398 /* ~"I need to get in to that guarded room back there."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalLT("Token_A","GLOBAL",1)
HasItem("Gtoken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5399 /* ~"I need to get in to that guarded room back there."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5400 /* ~"I need to get in to that guarded room back there."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_K","GLOBAL",2)
HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5401 /* ~"I need to get in to that guarded room back there, and I lost my token."~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_K","GLOBAL",2)
!HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5402 /* ~"I need to get in to that guarded room back there, and I lost my token."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5403 /* ~"I need to get in to that guarded room back there."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5404 /* ~"I need to get in to that guarded room back there, and I lost my token."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",1)
!HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5405 /* ~"I need to get in to that guarded room back there, and I lost my token."~ */ GOTO 18
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #5406 /* ~"I need to use the forge."~ */ GOTO 13
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #5407 /* ~"I need to use the forge."~ */ GOTO 14
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5408 /* ~"Under Keldor's authority, I'm investigating the murder that occurred here. What can you tell me about it?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5409 /* ~"I'm looking for the way out."~ */ GOTO 31
  IF ~~ THEN REPLY #5410 /* ~"I'm looking for the pickup office. I have an item waiting for me."~ */ GOTO 32
  IF ~~ THEN REPLY #5411 /* ~"I'd like a tour."~ */ GOTO 33
  IF ~~ THEN REPLY #5412 /* ~"Who are you?"~ */ GOTO 34
  IF ~~ THEN REPLY #5413 /* ~"What's going on here?"~ */ GOTO 35
  IF ~~ THEN REPLY #5414 /* ~"What exactly do the Godsmen stand for?"~ */ GOTO 36
  IF ~~ THEN REPLY #5415 /* ~"Where can I get those items to work the forge?"~ */ GOTO 19
  IF ~~ THEN REPLY #5416 /* ~"I guess I don't need anything. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.4 16.5
  SAY #5417 /* ~"Then it's a good thing I still have mine. Take it, but don't tell anyone I gave it to you, all right? Good luck."~ */
  IF ~~ THEN REPLY #5418 /* ~"Thanks. I had other questions."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ GOTO 16
  IF ~~ THEN REPLY #5419 /* ~"Thank you. Farewell."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.5 16.6 16.9
  SAY #5420 /* ~"I don't have one either, anymore. I'm sorry. You'll have to find another way in."~ */
  IF ~~ THEN REPLY #5421 /* ~"Thanks. I had other questions."~ */ DO ~SetGlobal("Token_A","GLOBAL",2)
~ GOTO 16
  IF ~~ THEN REPLY #5422 /* ~"Thank you. Farewell."~ */ DO ~SetGlobal("Token_A","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 9.8 13.1 16.19 20.1
  SAY #5423 /* ~"If you can't find them lying around somewhere, then you'll have to buy them from the clerk... for a nominal price, of course."~ */
  IF ~~ THEN REPLY #5424 /* ~"I see. I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5425 /* ~"Thank you. Farewell."~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("G_Test1","GLOBAL",1)
GlobalLT("G_Test1","GLOBAL",6)
~ THEN BEGIN 20 // from:
  SAY #5426 /* ~"Well? What are you waiting for? Get to forging! We can't keep leaving forges stoked up while you dilly-dally."~ */
  IF ~~ THEN REPLY #5427 /* ~"Well, I had some questions first..."~ */ GOTO 16
  IF ~~ THEN REPLY #5428 /* ~"Where can I find those items for the forge again?"~ */ GOTO 19
  IF ~~ THEN REPLY #5429 /* ~"All right, all right. I'm going."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("G_Test2","GLOBAL",1)
GlobalLT("G_Test2","GLOBAL",11)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 21 // from:
  SAY #5430 /* ~"I've already told you everything I know! What more do you want from me?"~ */
  IF ~~ THEN REPLY #5431 /* ~"I want you to go over your story again... slowly."~ */ GOTO 22
  IF ~~ THEN REPLY #5432 /* ~"I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5433 /* ~"Nothing. So long."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.12 21.0 29.1 30.0
  SAY #5434 /* ~"You want to know what I saw the night of the murder? Well... I was working late, when I heard the sound of a scuffle. When I came out, I saw a shadowy figure slip out the door into the meeting hall, and I raised the alarm."~ */
  IF ~~ THEN REPLY #5435 /* ~"Do you have any other details?"~ */ GOTO 23
  IF ~~ THEN REPLY #5436 /* ~"That's it?"~ */ GOTO 23
  IF ~~ THEN REPLY #5437 /* ~"How do I know you didn't do it?"~ */ GOTO 24
  IF ~~ THEN REPLY #5438 /* ~"Thanks. I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5439 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #5440 /* ~"I only know three people who had access to the building that night. They were Thildon, Saros, and Bedai-Lihn. The three of them have dramatically different builds, but in the haze of the foundry, I couldn't see clearly."~ */
  IF ~~ THEN REPLY #5441 /* ~"How do I know you didn't do it?"~ */ GOTO 24
  IF ~~ THEN REPLY #5442 /* ~"So they're the only three suspects? It seems too pat."~ */ GOTO 24
  IF ~~ THEN REPLY #5443 /* ~"All right. Where can I find Thildon?"~ */ GOTO 25
  IF ~~ THEN REPLY #5445 /* ~"Fine. Where can I find Saros?"~ */ GOTO 26
  IF ~~ THEN REPLY #5446 /* ~"How convenient. Where can I find Bedai-Lihn?"~ */ GOTO 27
  IF ~~ THEN REPLY #5447 /* ~"Fine. I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5448 /* ~"I had other questions."~ */ GOTO 16
END

IF ~~ THEN BEGIN 24 // from: 22.2 23.0 23.1
  SAY #5444 /* ~"I have an alibi. Not to mention that Keldor already ascertained the truth from me. I have nothing to hide. Apparently Thildon, Saros, and Bedai-Lihn do, though, because they wouldn't go under Keldor's spell." ~ */
  IF ~~ THEN REPLY #5449 /* ~"All right. I have other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5450 /* ~"Where can I find Thildon?"~ */ GOTO 25
  IF ~~ THEN REPLY #5451 /* ~"Where can I find Saros?"~ */ GOTO 26
  IF ~~ THEN REPLY #5452 /* ~"Where can I find Bedai-Lihn?"~ */ GOTO 27
  IF ~~ THEN REPLY #5453 /* ~"Thanks. That should help. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2 24.1 26.0 27.0
  SAY #5454 /* ~"He's usually in between the main foundry here and the experimental chamber in back. You shouldn't have trouble finding him."~ */
  IF ~~ THEN REPLY #5455 /* ~"Where can I find Saros?"~ */ GOTO 26
  IF ~~ THEN REPLY #5456 /* ~"Where can I find Bedai-Lihn?"~ */ GOTO 27
  IF ~~ THEN REPLY #64145 /* ~"I had other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #64146 /* ~"I'll check with him. You haven't heard the last from me. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3 24.2 25.0 27.1
  SAY #5457 /* ~"He usually remains in the main meeting hall. You shouldn't be able to miss him."~ */
  IF ~~ THEN REPLY #5458 /* ~"Where can I find Thildon?"~ */ GOTO 25
  IF ~~ THEN REPLY #5459 /* ~"Where can I find Bedai-Lihn?"~ */ GOTO 27
  IF ~~ THEN REPLY #64147 /* ~"I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #64148 /* ~"I'll make sure of that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.4 24.3 25.1 26.1
  SAY #5460 /* ~"She can be found in any of the Foundry areas. She's one of our chief engineers, and so she has the run of the place. You'll know her when you see her."~ */
  IF ~~ THEN REPLY #5461 /* ~"Where can I find Thildon?"~ */ GOTO 25
  IF ~~ THEN REPLY #5462 /* ~"Where can I find Saros?"~ */ GOTO 26
  IF ~~ THEN REPLY #64149 /* ~"I'd better. I have other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #64150 /* ~"I'd better. Farewell."~ */ EXIT
END

IF WEIGHT #6 ~  Global("GearRepair","GLOBAL",5)
~ THEN BEGIN 28 // from:
  SAY #5463 /* ~"Thank you for your work on the gears. We might have been able to fix it without you, but it would have taken far longer. You have our gratitude. What else can I do for you?"~ */
  IF ~~ THEN REPLY #5464 /* ~"I had some questions."~ */ DO ~SetGlobal("GearRepair","GLOBAL",6)
~ GOTO 16
  IF ~~ THEN REPLY #5465 /* ~"Well, not much, actually. Farewell."~ */ DO ~SetGlobal("GearRepair","GLOBAL",6)
~ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 29 // from:
  SAY #5466 /* ~"You again? What do you want now? My apologies for my impatience, but we are on a schedule here."~ */
  IF ~~ THEN REPLY #5467 /* ~"I had some questions for you."~ */ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5468 /* ~"Under Keldor's authority, I'm investigating the murder that occurred here. What can you tell me about it?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5469 /* ~"Nothing, right now. I'll be back."~ */ EXIT
END

IF WEIGHT #8 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 30 // from:
  SAY #5470 /* ~You see a short woman with slight horns in her forehead and ears that curve sharply back on her skull. She smells faintly of sulfur, even over the reek of the Foundry's fires. "Greetings. What can I do for you?"~ */
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5471 /* ~"Under Keldor's authority, I'm investigating the murder that occurred here. What can you tell me about it?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5472 /* ~"I'm looking for the way out."~ */ GOTO 31
  IF ~~ THEN REPLY #5473 /* ~"I'm looking for the pickup office. I have an item waiting for me."~ */ GOTO 32
  IF ~~ THEN REPLY #5474 /* ~"I'd like a tour."~ */ GOTO 33
  IF ~~ THEN REPLY #5475 /* ~"Who are you?"~ */ GOTO 34
  IF ~~ THEN REPLY #5476 /* ~"What's going on here?"~ */ GOTO 35
  IF ~~ THEN REPLY #5477 /* ~"What exactly do the Godsmen stand for?"~ */ GOTO 36
  IF ~~ THEN REPLY #5478 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 16.13 30.1
  SAY #5479 /* ~"Look back that way. You see the long tunnel there? Simply walk through it and you'll find yourself at the main gate."~ */
  IF ~~ THEN REPLY #5480 /* ~"Thank you."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 16.14 30.2
  SAY #5481 /* ~"It's that office with the desk. He should be sitting right behind it."~ */
  IF ~~ THEN REPLY #5482 /* ~"Thanks. I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5483 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 16.15 30.3
  SAY #5484 /* ~"Ordinarily, there's nothing I'd like better. Sadly, right now we're a little busy. Come back in a year or so, and I'll be happy to provide one."~ */
  IF ~~ THEN REPLY #5485 /* ~"What's going on?"~ */ GOTO 35
  IF ~~ THEN REPLY #5486 /* ~"All right. I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5487 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 16.16 30.4
  SAY #5488 /* ~"I am Alissa Tield, supervisor for this area - this area being the main foundry area of the Great Foundry, where much of our current, public work takes place. The Foundry is larger than this, of course, but we have a large contract we're working on, and we've been sworn to secrecy, so most of the work area is off-limits. My apologies."~ */
  IF ~~ THEN REPLY #5489 /* ~"I understand. I had some other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5490 /* ~"Off-limits? Ridiculous! Farewell!"~ */ EXIT
  IF ~~ THEN REPLY #5491 /* ~"I see. Thanks for your time."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 16.17 30.5 33.0
  SAY #5492 /* ~"We've taken a huge - and very, very secret - contract, one that is taking up practically all our resources. We maintain a smaller operation for the day-to-day items for our other orders, but right now the Foundry is devoted to fulfilling our contract. Don't bother asking about it, because I won't tell you."~ */
  IF ~~ THEN REPLY #5493 /* ~"You seem very firm about this. Very well. I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5494 /* ~"You seem firm about this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 16.18 30.6
  SAY #5495 /* ~"This is both a communal and individual faction, and there are variations on the theme depending on whom one speaks with, but the basic gist of it is that life - nay, all existence itself - is a test of sorts. All things that arise test us, and how we react determines how we move closer to the true understanding of everything. We seek the truth behind the multiverse, and it's apparent to us that ours is the right way."~ */
  IF ~~ THEN REPLY #5496 /* ~"I... see. I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5497 /* ~"How do I join?"~ */ GOTO 37
  IF ~~ THEN REPLY #5498 /* ~"Hm. Thank you for your time."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #5499 /* ~"Go speak to Keldor of Durian, in the meeting hall, through the door on the right wall."~ */
  IF ~~ THEN REPLY #5500 /* ~"Thanks. I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5501 /* ~"Thanks. Farewell."~ */ EXIT
END
