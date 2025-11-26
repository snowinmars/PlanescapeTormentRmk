// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPEATO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPEATO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58706 /* ~You see a young man wearing dirty, unkempt clothes. He looks at you warily as you approach. ~ */
  IF ~~ THEN REPLY #58707 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #58708 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58709 /* ~"What do you want?" He glances about nervously.~ */
  IF ~~ THEN REPLY #58710 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58711 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.0 5.0 6.1 7.0 8.1 9.1 10.3 11.2 12.2 13.2 15.2 16.1 17.0 19.0
  SAY #58712 /* ~"What do you want to know?"~ */
  IF ~~ THEN REPLY #58713 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #58714 /* ~"Why are you here?"~ */ GOTO 6
  IF ~~ THEN REPLY #58715 /* ~"What can you tell me about this place?"~ */ GOTO 8
  IF ~~ THEN REPLY #58716 /* ~"I'm looking for a deva, I've been told he's here."~ */ GOTO 14
  IF ~~ THEN REPLY #58717 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58718 /* ~He hesitates before answering. "What's it to you?"~ */
  IF ~~ THEN REPLY #58719 /* ~"I like to know who I'm talking to."~ */ GOTO 4
  IF ~~ THEN REPLY #58720 /* ~"Lose the attitude or I'll beat it out of you."~ */ GOTO 5
  IF ~~ THEN REPLY #58721 /* ~"Never mind, I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58722 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58723 /* ~"I'm Peato." He gives you a bored look.~ */
  IF ~~ THEN REPLY #58724 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58725 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #58726 /* ~An angry look crosses his face and he starts to say something to you. He then notices your scars and quickly backs down. "Sorry, the name's Peato."~ */
  IF ~~ THEN REPLY #58727 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58728 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #58729 /* ~He smirks. "I was caught *borrowing* a few things from a local merchant. He didn't take kindly to it and had me tossed in here."~ */
  IF ~~ THEN REPLY #58730 /* ~"So you're a thief."~ */ GOTO 7
  IF ~~ THEN REPLY #58731 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58732 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58733 /* ~He glares at you. "I guess you could say that."~ */
  IF ~~ THEN REPLY #58734 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58735 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58736 /* ~"Pike it, berk. I've had enough of you." He snorts and looks himself up and down comically. "Do I look like a tout?"~ */
  IF ~~ THEN REPLY #58737 /* ~"No, you look like someone with serious health problems."~ */ GOTO 9
  IF ~~ THEN REPLY #58738 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58739 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58740 /* ~He gives you a confused look. "What are you talking about? I don't have any health problems."~ */
  IF ~~ THEN REPLY #58741 /* ~"You will if you don't answer my question."~ */ GOTO 10
  IF ~~ THEN REPLY #58742 /* ~"Never mind, I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58743 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58744 /* ~He starts to rise to your challenge then pauses and changes his mind. "This is the prison. It's set up as a series of three rings; the outer ring, the center ring, and the inner ring."~ */
  IF ~~ THEN REPLY #58745 /* ~"Tell me about the outer ring."~ */ GOTO 11
  IF ~~ THEN REPLY #58746 /* ~"Tell me about the center ring."~ */ GOTO 12
  IF ~~ THEN REPLY #58747 /* ~"Tell me about the inner ring."~ */ GOTO 13
  IF ~~ THEN REPLY #58748 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58749 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 13.0
  SAY #58750 /* ~"The outer ring is where you are now. The berks you find here are in for petty offenses. Mainly minor theft, assaults, and so forth."~ */
  IF ~~ THEN REPLY #58751 /* ~"Tell me about the center ring."~ */ GOTO 12
  IF ~~ THEN REPLY #58752 /* ~"Tell me about the inner ring."~ */ GOTO 13
  IF ~~ THEN REPLY #58753 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58754 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0 13.1
  SAY #58755 /* ~"The center ring is for those who're considered to be a bit on the dangerous side. Musclemen, thugs, berks who've killed accidentally or in the heat of passion can be found there."~ */
  IF ~~ THEN REPLY #58756 /* ~"Tell me about the outer ring."~ */ GOTO 11
  IF ~~ THEN REPLY #58757 /* ~"Tell me about the inner ring."~ */ GOTO 13
  IF ~~ THEN REPLY #58758 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58759 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.1
  SAY #58760 /* ~"The inner ring is for those who are considered to be dangerous or a threat. Rapists, murderers, and enemies of the government can be found there."~ */
  IF ~~ THEN REPLY #58761 /* ~"Tell me about the outer ring."~ */ GOTO 11
  IF ~~ THEN REPLY #58762 /* ~"Tell me about the center ring."~ */ GOTO 12
  IF ~~ THEN REPLY #58763 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58764 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.3
  SAY #58765 /* ~"You mean Trias." He frowns and looks away for a moment. "Yes, he's down here. Much to our misfortune."~ */
  IF ~~ THEN REPLY #58766 /* ~"Why do you say that?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #58767 /* ~"The guards use us as labor to help expand the prison. We dig out all the new rooms anytime they're needed. During one of these sessions the diggers broke into a new area and there was Trias." He pauses and frowns. "Soon afterward the plague broke out down here."~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #58768 /* ~"Yes. I remember hearing about that. How bad has it been?"~ */ GOTO 16
  IF ~~ THEN REPLY #58769 /* ~"Plague?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #58770 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58771 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 18.0
  SAY #58772 /* ~"Bad... a hundred or so dead, a lot of others infected." He pauses. "It seems to be under control now, though. There haven't been any new cases of it recently."~ */
  IF ~~ THEN REPLY #58773 /* ~"I see. So where can I find Trias?"~ */ GOTO 17
  IF ~~ THEN REPLY #58774 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58775 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58776 /* ~He shakes his head. "I don't know, I've never been to the new excavation site. Just keep looking around here, you'll find it."~ */
  IF ~~ THEN REPLY #58777 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58778 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY #58779 /* ~He nods his head. "Yes, a bad one. It hit us hard right after his chamber was opened. Spread like wildfire."~ */
  IF ~~ THEN REPLY #58780 /* ~"How bad has it been?"~ */ GOTO 16
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #58781 /* ~You see Peato, the thief. "Hello again. What can I do for you?"~ */
  IF ~~ THEN REPLY #58782 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58783 /* ~"Nothing, farewell."~ */ EXIT
END
