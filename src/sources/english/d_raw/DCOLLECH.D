// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLLECH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLLECH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #25492 /* ~This man is draped in filthy, tattered brown robes, a long hood concealing most of his face from view.~ */
  IF ~~ THEN REPLY #25493 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #25596 /* ~Leave him be.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25494 /* ~You see his eyes narrow beneath his hood, and he takes a step back. "What do ye want?"~ */
  IF ~~ THEN REPLY #25495 /* ~"What are you doing?"~ */ GOTO 2
  IF ~~ THEN REPLY #25593 /* ~"What is this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #25594 /* ~"I had some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #25595 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 20.0
  SAY #25496 /* ~"I'm lookin' for some damned bodies is what I'm tryin' ta do, but ye'd think the dead powers had packed up their kip an' left the planes, the way people are stayin' healthy an' all." There is a sudden gleam in his eye: "We had a pox last month, an' it was a glorious time, it was... bodies stinkin' ta the high heavens, an' plenty of jink ta be had, too."~ */
  IF ~~ THEN REPLY #25497 /* ~"Why are you looking for bodies?"~ */ GOTO 3
  IF ~~ THEN REPLY #25590 /* ~"What is this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #25591 /* ~"I had some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #25592 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #25498 /* ~He looks surprised. "Well, y'haul the blighters ta the Mortuary. There, ya talk ta the Dusties, haggle a little, an' get a few bits of jink."~ */
  IF ~~ THEN REPLY #25499 /* ~"Why do the Dustmen buy the bodies?"~ */ GOTO 4
  IF ~~ THEN REPLY #25587 /* ~"What is this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #25588 /* ~"I had some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #25589 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25500 /* ~"They gather the dead... it's their job. They pay us ta cover more area an' bring any bodies we find ta 'em. Then they make sure that the blighter's body goes ta its proper place or gets cremated. They're all serious about it, their barmy philosophy, but it just means more jink for me." He winks.~ */
  IF ~~ THEN REPLY #25501 /* ~"What is this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #25585 /* ~"I had some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #25586 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 20.1
  SAY #25502 /* ~He frowns at you. "Ye're in the Hive, a' course. Dirtiest bit in all a' Sigil. Where ye from, cutter? Ye from the Prime, or somethin'?"~ */
  IF ~~ THEN REPLY #25503 /* ~"No. Why are you looking for bodies?"~ */ GOTO 3
  IF ~~ THEN REPLY #25504 /* ~"No. I had some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #25584 /* ~"No. That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 3.2 4.1 5.1 20.2
  SAY #25505 /* ~He raises an eyebrow. "I've some for ye, then, like what did ye want ta know, an' how badly did ye want ta know it?"~ */
  IF ~~ THEN REPLY #25506 /* ~"What do you mean?"~ */ GOTO 7
  IF ~~ THEN REPLY #25579 /* ~"Tell me about Collectors."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25580 /* ~"I'm looking for a man named Pharod."~ */ GOTO 7
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25581 /* ~"I'm looking for a journal I've lost."~ */ GOTO 7
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25582 /* ~"What do you know of Mebbeth?"~ */ GOTO 7
  IF ~~ THEN REPLY #25583 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2 6.3 6.4
  SAY #25507 /* ~"Look around ye, cutter... I don't make enough jink ta go lightin' up the dark for nothin'. It'll take a bit a' coin, it will, if ya wants the chant."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #25508 /* ~Hand him a couple coins.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25575 /* ~Throw him five coppers.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25576 /* ~Dump ten coppers into his palms.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25577 /* ~"You'll get nothing, and you'll answer my questions."~ */ GOTO 19
  IF ~~ THEN REPLY #25578 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 19.1
  SAY #25509 /* ~He scoffs. "Even Dusties'd pay more than that, cutter. Ye must not need ta know much a' anythin'."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25510 /* ~Throw him five coppers.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25560 /* ~Dump ten coppers into his palms.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25567 /* ~"You'll get nothing, and you'll answer my questions."~ */ GOTO 19
  IF ~~ THEN REPLY #25574 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 19.2
  SAY #25511 /* ~He studies the coins for a moment as they lay in his hands. "Eh." He pockets them swiftly. "Ask."~ */
  IF ~~ THEN REPLY #25512 /* ~"Tell me about Collectors."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25556 /* ~"I'm looking for a man named Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25557 /* ~"I'm looking for a journal I've lost."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25558 /* ~"What do you know of Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25559 /* ~"Never mind. Farewell."~ */ GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.2 12.2 13.1 14.1 15.0 16.0 18.0
  SAY #25513 /* ~"I... we... make our livin' by draggin' deaders off Sigil's fair streets an' haulin' their lead-bottomed arses ta the Mortuary. Not the best way ta earn a livin', but it's a start. Is that all ye wanted ta know, cutter?" He looks at you oddly.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25514 /* ~"I'm looking for a man named Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25553 /* ~"I'm looking for a journal I've lost."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25554 /* ~"What do you know of Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25555 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 15.1 16.1 18.1
  SAY #25515 /* ~He narrows his eyes suddenly. "Pharod... what about 'im?"~ */
  IF ~~ THEN REPLY #25516 /* ~"You seem suddenly wary... why?"~ */ GOTO 12
  IF ~~ THEN REPLY #25548 /* ~"Do you know where he is?"~ */ GOTO 14
  IF ~~ THEN REPLY #25549 /* ~"Tell me about Collectors."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25550 /* ~"I'm also looking for a journal I've lost."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25551 /* ~"What do you know of Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25552 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
END

IF ~~ THEN BEGIN 12 // from: 11.0 14.0
  SAY #25517 /* ~"Pharod, hmph!" He spits, sneering contemptuously. "Ragpicker's Square is Sharegrave's - me boss' - territory, ye see. Pharod an' his dogs came in a whiles back an' tried ta oust us. We fought 'em off, we did, so's they're all in hidin' somewhere, now. We still catch one a' his lads now an' then 'round the Square. Usually we turn 'em inta a quick spot a' jink at the Mortuary, the pikin' sods."~ */
  IF ~~ THEN REPLY #25518 /* ~"Tell me about Sharegrave."~ */ GOTO 13
  IF ~~ THEN REPLY #25543 /* ~"Do you know where Pharod is?"~ */ GOTO 14
  IF ~~ THEN REPLY #25544 /* ~"Tell me about Collectors."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25545 /* ~"I'm also looking for a journal I've lost."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25546 /* ~"What do you know of Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25547 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #25519 /* ~"He's me boss... casts his shadow o'er a whole mess a' Collectors, he does. I'd stay away from him unless ye gots *right* good cause ta talk ta the man... I've never spoken with him personally, meself."~ */
  IF ~~ THEN REPLY #25520 /* ~"Do you know where Pharod is?"~ */ GOTO 14
  IF ~~ THEN REPLY #25539 /* ~"Tell me about Collectors."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25540 /* ~"I'm also looking for a journal I've lost."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25541 /* ~"What do you know of Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25542 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 11.1 12.1 13.0
  SAY #25521 /* ~"I know where the rat-bastard isn't... he ain't where most a' the Collectors call kip, in Ragpicker's Square, but that he's close by there somewhere's the chant."~ */
  IF ~~ THEN REPLY #25522 /* ~"Do all Collectors share your opinion of Pharod?"~ */ GOTO 12
  IF ~~ THEN REPLY #25523 /* ~"Tell me about Collectors."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25524 /* ~"I'm also looking for a journal I've lost."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25537 /* ~"What do you know of Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25538 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 9.2 10.1 11.3 12.3 13.2 14.2 16.2 18.2
  SAY #25525 /* ~He just shakes his head, puzzled.~ */
  IF ~~ THEN REPLY #25526 /* ~"Tell me about Collectors."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25527 /* ~"I'm also looking for a man named Pharod."~ */ GOTO 11
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25528 /* ~"What do you know of Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25536 /* ~"Farewell, then."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 9.3 10.2 11.4 12.4 13.3 14.3 15.2 18.3
  SAY #25529 /* ~"The midwife? A kind enough woman ta be sure, helps out when ye're sick an' such. She lives in a hut up along the platforms in Ragpicker's Square, if ye need ta see her."~ */
  IF ~~ THEN REPLY #25530 /* ~"Tell me about Collectors."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25531 /* ~"I'm looking for a man named Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25532 /* ~"I'm looking for a journal I've lost."~ */ GOTO 15
  IF ~~ THEN REPLY #25533 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 9.4 10.3 11.5 12.5 13.4 14.4 15.3 16.3 18.4
  SAY #25534 /* ~"Well, keep yerself safe, cutter. If I find ye on the streets, I'll be kind ta yer corpse."~ */
  IF ~~ THEN REPLY #25535 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 7.2 8.1 19.3
  SAY #25561 /* ~"Ask yer questions. I can't says I can help, but I might."~ */
  IF ~~ THEN REPLY #25562 /* ~"Tell me about Collectors."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25563 /* ~"I'm looking for a man named Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25564 /* ~"I'm looking for a journal I've lost."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25565 /* ~"What do you know of Mebbeth?"~ */ GOTO 16
  IF ~~ THEN REPLY #25566 /* ~"Never mind. Farewell."~ */ GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 7.3 8.2
  SAY #25568 /* ~"I don't know nothin', basher, an' I suggest ye look for answers somewhere else."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #25569 /* ~Grab him, shake him up a bit.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #25570 /* ~Hand him a couple coins.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25571 /* ~Throw him five coppers.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25572 /* ~Dump ten coppers into his palms.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25573 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #25597 /* ~The man takes a step back, peering suspiciously at you from beneath his hood. "Again, eh? What do ye want?"~ */
  IF ~~ THEN REPLY #25598 /* ~"What are you doing?"~ */ GOTO 2
  IF ~~ THEN REPLY #25599 /* ~"What is this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #25600 /* ~"I had some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #25601 /* ~"Nothing. Farewell."~ */ EXIT
END
