// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLLECT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLLECT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1805 /* ~This man is draped in filthy, tattered brown robes, a long hood concealing most of his face from view.~ */
  IF ~~ THEN REPLY #21697 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #21698 /* ~Leave him be.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #21677 /* ~You see his eyes narrow beneath his hood, and he takes a step back. "What do ye want?"~ */
  IF ~~ THEN REPLY #21699 /* ~"What are you doing?"~ */ GOTO 2
  IF ~~ THEN REPLY #21700 /* ~"What is this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #21701 /* ~"I had some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #21702 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 18.0
  SAY #21678 /* ~"I'm lookin' for some damned bodies is what I'm tryin' ta do, but ye'd think the dead powers had packed up their kip an' left the planes, the way people are stayin' healthy an' all." There is a sudden gleam in his eye: "We had a pox last month, an' it was a glorious time, it was... bodies stinkin' ta the high heavens, an' plenty of jink ta be had, too."~ */
  IF ~~ THEN REPLY #21703 /* ~"Why are you looking for bodies?"~ */ GOTO 3
  IF ~~ THEN REPLY #21704 /* ~"What is this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #21705 /* ~"I had some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #21706 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #21679 /* ~He looks surprised. "Well, y'haul the blighters ta the Mortuary. There, ya talk ta the Dusties, haggle a little, an' get a few bits of jink."~ */
  IF ~~ THEN REPLY #21707 /* ~"Why do the Dustmen buy the bodies?"~ */ GOTO 4
  IF ~~ THEN REPLY #21708 /* ~"What is this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #21709 /* ~"I had some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #21710 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #21680 /* ~"They gather the dead... it's their job. They pay us ta cover more area an' bring any bodies we find ta 'em. Then they make sure that the blighter's body goes ta its proper place or gets cremated. They're all serious about it, their barmy philosophy, but it just means more jink for me." He winks.~ */
  IF ~~ THEN REPLY #21711 /* ~"What is this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #21712 /* ~"I had some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #21713 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 18.1
  SAY #21681 /* ~He frowns at you. "Ye're in Ragpicker's Square, a' course. Where ye from, cutter? Ye from the Prime, or somethin'?"~ */
  IF ~~ THEN REPLY #21714 /* ~"No. Why are you looking for bodies?"~ */ GOTO 3
  IF ~~ THEN REPLY #21715 /* ~"No. I had some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #21826 /* ~"No. That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 3.2 4.1 5.1 18.2
  SAY #21682 /* ~He raises an eyebrow. "I've some for ye, then, like what did ye want ta know, an' how badly did ye want ta know it?"~ */
  IF ~~ THEN REPLY #21717 /* ~"What do you mean?"~ */ GOTO 7
  IF ~~ THEN REPLY #21718 /* ~"Tell me about Collectors."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21719 /* ~"I'm looking for a man named Pharod."~ */ GOTO 7
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21720 /* ~"I'm looking for a journal I've lost."~ */ GOTO 7
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21721 /* ~"What do you know of Mebbeth?"~ */ GOTO 7
  IF ~~ THEN REPLY #21722 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2 6.3 6.4
  SAY #21683 /* ~"Look around ye, cutter... I don't make enough jink ta go lightin' up the dark for nothin'. It'll take a bit a' coin, it will, if ya wants the chant."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #21723 /* ~Hand him a couple coins.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21724 /* ~Throw him five coppers.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21725 /* ~Dump ten coppers into his palms.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21726 /* ~"You'll get nothing, and you'll answer my questions."~ */ GOTO 17
  IF ~~ THEN REPLY #21727 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 17.1
  SAY #21684 /* ~He scoffs. "Even Dusties'd pay more than that, cutter. Ye must not need ta know much a' anythin'."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21728 /* ~Throw him five coppers.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21729 /* ~Dump ten coppers into his palms.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21730 /* ~"You'll get nothing, and you'll answer my questions."~ */ GOTO 17
  IF ~~ THEN REPLY #21731 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 17.2
  SAY #21685 /* ~He studies the coins for a moment as they lay in his hands. "Eh." He pockets then swiftly. "Ask."~ */
  IF ~~ THEN REPLY #21732 /* ~"Tell me about Collectors."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21733 /* ~"I'm looking for a man named Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21734 /* ~"I'm looking for a journal I've lost."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21735 /* ~"What do you know of Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21736 /* ~"Never mind. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.1 17.3
  SAY #21686 /* ~"Ask yer questions. I can't says I can help, but I might."~ */
  IF ~~ THEN REPLY #21737 /* ~"Tell me about Collectors."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21738 /* ~"I'm looking for a man named Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21739 /* ~"I'm looking for a journal I've lost."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21740 /* ~"What do you know of Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21741 /* ~"Never mind. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 9.4 10.4 12.3 13.5 14.4 15.3 16.3 19.5 20.4
  SAY #21687 /* ~"Well, keep yerself safe, cutter. If I find ye on the streets, I'll be kind ta yer corpse."~ */
  IF ~~ THEN REPLY #21742 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 10.0 13.2 14.1 15.0 16.0 19.2 20.1
  SAY #21688 /* ~"I... we... make our livin' by draggin' deaders off Sigil's fair streets an' haulin' their lead-bottomed arses ta the Mortuary. Not the best way ta earn a livin', but it's a start. Is that all ye wanted ta know, cutter?" He looks at you oddly.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21743 /* ~"I'm looking for a man named Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21744 /* ~"I'm looking for a journal I've lost."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21745 /* ~"What do you know of Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21746 /* ~"That's all I wished to know. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.1 12.0 15.1 16.1
  SAY #21689 /* ~He narrows his eyes suddenly. "Pharod... what about 'im?"~ */
  IF ~~ THEN REPLY #21747 /* ~"You seem suddenly wary... why?"~ */ GOTO 19
  IF ~~ THEN REPLY #21748 /* ~"Do you know where he is?"~ */ GOTO 14
  IF ~~ THEN REPLY #21749 /* ~"Tell me about Collectors."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21750 /* ~"I'm also looking for a journal I've lost."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21751 /* ~"What do you know of Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21752 /* ~"That's all I wished to know. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.1 19.1 20.0
  SAY #21690 /* ~"I know where the rat-bastard isn't... he ain't in any case here *in* the Square, but that he's close by somewhere's the chant."~ */
  IF ~~ THEN REPLY #21753 /* ~"Do all Collectors share your opinion of Pharod?"~ */ GOTO 19
  IF ~~ THEN REPLY #21754 /* ~"Tell me about Collectors."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21755 /* ~"I'm also looking for a journal I've lost."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21756 /* ~"What do you know of Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21757 /* ~"That's all I wished to know. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 15 // from: 9.3 10.3 12.2 13.4 14.3 16.2 19.4 20.3
  SAY #21691 /* ~"The midwife? A kind enough woman ta be sure, helps out when ye're sick an' such. She lives in a hut up along the platforms, if ye need ta see her."~ */
  IF ~~ THEN REPLY #21758 /* ~"Tell me about Collectors."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21759 /* ~"I'm looking for a man named Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21760 /* ~"I'm looking for a journal I've lost."~ */ GOTO 16
  IF ~~ THEN REPLY #21761 /* ~"That's all I wished to know. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 9.2 10.2 12.1 13.3 14.2 15.2 19.3 20.2
  SAY #21692 /* ~He just shakes his head, puzzled.~ */
  IF ~~ THEN REPLY #21762 /* ~"Tell me about Collectors."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21763 /* ~"I'm also looking for a man named Pharod."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21764 /* ~"What do you know of Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21765 /* ~"Farewell, then."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 7.3 8.2
  SAY #21693 /* ~"I don't know nothin', basher, an' I suggest ye look for answers somewhere else... you lay a finger on me, an' you'll be messin' with half the bloods in the Square, ye will."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #21766 /* ~Grab him, shake him up a bit.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #21768 /* ~Hand him a couple coins.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21773 /* ~Throw him five coppers.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21778 /* ~Dump ten coppers into his palms.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21781 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #21694 /* ~The man takes a step back, peering suspiciously at you from beneath his hood. "Again, eh? What do ye want?"~ */
  IF ~~ THEN REPLY #21783 /* ~"What are you doing?"~ */ GOTO 2
  IF ~~ THEN REPLY #21785 /* ~"What is this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #21787 /* ~"I had some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #21789 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0 14.0
  SAY #21695 /* ~"Pharod, hmph!" He spits, sneering contemptuously. "Ragpicker's Square is Sharegrave's - me boss' - territory, ye see. Pharod an' his dogs came in a whiles back an' tried ta oust us. We fought 'em off, we did, so's they're all in hidin' somewhere, now. We still catch one a' his lads now an' then 'round here. Usually we turn 'em inta a quick spot a' jink at the Mortuary, the pikin' sods."~ */
  IF ~~ THEN REPLY #21791 /* ~"Tell me about Sharegrave."~ */ GOTO 20
  IF ~~ THEN REPLY #21793 /* ~"Do you know where Pharod is?"~ */ GOTO 14
  IF ~~ THEN REPLY #21795 /* ~"Tell me about Collectors."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21796 /* ~"I'm also looking for a journal I've lost."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21797 /* ~"What do you know of Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21798 /* ~"That's all I wished to know. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #21696 /* ~"He's me boss... casts his shadow o'er a whole mess a' Collectors, he does. I'd stay away from him unless ye gots *right* good cause ta talk ta the man... I've never spoken with him personally, meself."~ */
  IF ~~ THEN REPLY #21802 /* ~"Do you know where Pharod is?"~ */ GOTO 14
  IF ~~ THEN REPLY #21803 /* ~"Tell me about Collectors."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21804 /* ~"I'm also looking for a journal I've lost."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21807 /* ~"What do you know of Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21810 /* ~"That's all I wished to know. Farewell."~ */ GOTO 11
END
