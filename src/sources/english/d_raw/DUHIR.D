// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUHIR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DUHIR~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #23329 /* ~You have just enough time to see a look of panic cross the ragged Collector's face before he turns and flees.~ */
  IF ~  Global("Uhir","GLOBAL",0)
~ THEN REPLY #22957 /* ~"Maybe next time..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
  IF ~  GlobalGT("Uhir","GLOBAL",0)
~ THEN REPLY #23331 /* ~"Uhir, wait... damn."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.2
  SAY #23335 /* ~"Eh... well, I got bit up a bit by a ghoul, down below, while I was lookin' about for stuff to sell off."~ */
  IF ~~ THEN REPLY #23337 /* ~"Down below?"~ */ GOTO 5
  IF ~~ THEN REPLY #23340 /* ~"I had some other questions for you."~ */ GOTO 3
  IF ~~ THEN REPLY #23342 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.0
  SAY #23344 /* ~"Name's Uhir, so it is." He spits. "As if it mattered down here."~ */
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23345 /* ~"Is this your knife, here, with 'UHIR' carved on it?"~ */ GOTO 16
  IF ~~ THEN REPLY #23347 /* ~"All right. I had some other questions for you."~ */ GOTO 3
  IF ~~ THEN REPLY #23348 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 4.1 5.1 7.0 8.0 9.1 10.2 10.3 11.0 12.0
  SAY #23349 /* ~He nods, but says nothing.~ */
  IF ~~ THEN REPLY #23350 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #23351 /* ~"What are you doing?"~ */ GOTO 4
  IF ~~ THEN REPLY #23352 /* ~"You're covered in bandages. What happened to you?"~ */ GOTO 1
  IF ~~ THEN REPLY #23353 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #23354 /* ~"Waitin' for my wounds to heal up, so's I can make another run down below. I sells the stuff I find down there."~ */
  IF ~~ THEN REPLY #23355 /* ~"Down below?"~ */ GOTO 5
  IF ~~ THEN REPLY #23357 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #23359 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0
  SAY #23366 /* ~He nods his head. "Down in the catacombs, where all the deaders is. Say... you goin' down there, anytime?"~ */
  IF ~~ THEN REPLY #23368 /* ~"Perhaps. Why?"~ */ GOTO 9
  IF ~~ THEN REPLY #23370 /* ~"Never mind that. I had another question..."~ */ GOTO 3
  IF ~~ THEN REPLY #23371 /* ~"I might. Farewell."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",3)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY #23372 /* ~Uhir nods at you. "Thanks again for helpin' get me lucky knife back, cutter."~ */
  IF ~~ THEN REPLY #23373 /* ~"Of course. Farewell."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",1)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #23374 /* ~Uhir eyes you warily, like a dog who fears you might steal his food. "Eh? Again? Whatcha want?"~ */
  IF ~~ THEN REPLY #23375 /* ~"I wanted some answers."~ */ GOTO 3
  IF ~~ THEN REPLY #23376 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",0)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #23377 /* ~This sour-faced, middle-aged man starts when you approach him, and reaches for his belt... finding no weapon there, he simply backs away from you. You can see that, beneath his Collector's robes, his lower legs and forearms are swathed in filth-encrusted bandages. "Whatcha want?"~ */
  IF ~~ THEN REPLY #23378 /* ~"Just the answers to some questions..."~ */ DO ~SetGlobal("Uhir","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #23379 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #23380 /* ~"'Cause I lost my lucky knife!" He grunts angrily, stomping his foot. "He's been with me for years, right here..." He points to an empty sheath on his belt. ~ */
  IF ~~ THEN REPLY #23381 /* ~"So what happened to it?"~ */ GOTO 10
  IF ~~ THEN REPLY #23382 /* ~"That's too bad. I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #23383 /* ~"Hope you find it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.3
  SAY #23384 /* ~"I was pokin' about in the catacombs below and ran smack into a ghoul! Must a' been a straggler, 'cause there's usually more than one. He bit at me face, so's I covered up with my arms an' stabbed it in the eyes. It dropped and bit at me leg for a while afore I shaked the piker off and made it back up here."~ */
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23385 /* ~"Is it this knife, here, with 'UHIR' carved on it?"~ */ GOTO 16
  IF ~  !Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23386 /* ~"Quite a story. I'll bring back your knife if I see it down there."~ */ DO ~SetGlobal("Uhir","GLOBAL",2)
~ JOURNAL #21912 /* ~Uhir lost his 'lucky knife' down in the catacombs, below - he stabbed a ghoul in the eyes with it and fled. If I happen across it I just might bring it back to him.~ */ GOTO 11
  IF ~  !Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23387 /* ~"I hope you find the knife. I had other questions."~ */ GOTO 3
  IF ~  Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23388 /* ~"Like I said, I'll bring it back if I see it. I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #23389 /* ~"I'll wager the ghoul's as upset as you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #23390 /* ~"Would ya? I'd be grateful, so I would. It's got me name carved into the handle..."~ */
  IF ~~ THEN REPLY #23391 /* ~"I'm glad to help. Before I go, let me ask some questions..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
~ GOTO 3
  IF ~~ THEN REPLY #23392 /* ~"I'll expect payment, you realize."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #23393 /* ~"I'll take my leave, now. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #23394 /* ~Uhir frowns. "I'll give ya what I can, but it won't be much. Look around, cutter... I won't be showerin' ya with wealth, now."~ */
  IF ~~ THEN REPLY #23395 /* ~"That'll have to do, then. I had questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #23396 /* ~"We'll talk more when I've got your knife. Farewell."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",2)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY #23397 /* ~Uhir squints at you. "Find me knife, perchance?"~ */
  IF ~  PartyHasItem("UhrKnf")
Global("Good_Uhir_1","GLOBAL",1)
~ THEN REPLY #23398 /* ~"Yes, I have... here it is."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~  PartyHasItem("UhrKnf")
Global("Evil_Uhir_1","GLOBAL",1)
~ THEN REPLY #23399 /* ~"Yes, I have."~ */ GOTO 15
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23400 /* ~Lie: "No... I haven't. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Uhir_1","GLOBALLaw",-1)
~ EXIT
  IF ~  !PartyHasItem("UhrKnf")
~ THEN REPLY #23401 /* ~"No, not yet. Where'd you lose it, again?"~ */ GOTO 10
  IF ~  !PartyHasItem("UhrKnf")
~ THEN REPLY #23402 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0 15.1 16.0
  SAY #23403 /* ~Uhir takes the knife and holds it lovingly. "Ah, you're back! Me lucky knife... thanks, cutter. And *you!*" He lectures his knife, shaking it: "Don't you go runnin' off again!" He slides the blade into its sheath with a smile.~ */
  IF ~~ THEN REPLY #23404 /* ~"Farewell, Uhir."~ */ JOURNAL #22025 /* ~I returned Uhir's 'lucky' knife to him. Perhaps it'll work a bit better for him in the future... though it *did* keep him from getting eaten by a ghoul, once.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 16.1
  SAY #23405 /* ~"Alls I got is this handful of copper, cutter..." He offers you the dozen or so coins. "That enough?"~ */
  IF ~~ THEN REPLY #23406 /* ~"Yes, that'll do. Here's your knife."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
GivePartyGold(13)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #23407 /* ~"Keep your money, Uhir... here's your knife."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #23408 /* ~"Hmm. I'll just keep this, then. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_2","GLOBALGood",-1)
Enemy()
~ JOURNAL #23255 /* ~I decided to keep Uhir's 'lucky' knife for myself. He didn't seem too happy about it.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0 10.0
  SAY #23409 /* ~Uhir's eyes widen in surprise. "It's me lucky knife!"~ */
  IF ~~ THEN REPLY #23410 /* ~"Here, take it. It's rightfully yours."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Uhir_1","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #23411 /* ~"If you'd like it back, I'd consider selling it."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #23412 /* ~"It's a nice knife... I'll be keeping it, Uhir. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_2","GLOBALGood",-1)
Enemy()
~ JOURNAL #23255 /* ~I decided to keep Uhir's 'lucky' knife for myself. He didn't seem too happy about it.~ */ EXIT
END
