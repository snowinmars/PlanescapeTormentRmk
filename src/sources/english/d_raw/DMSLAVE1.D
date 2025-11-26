// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37758 /* ~You see a man with a sad face. He gives you a hopeless look as you approach.~ */
  IF ~~ THEN REPLY #37770 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37771 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37759 /* ~He glances at his surroundings then looks at you. "Want something, berk?"~ */
  IF ~~ THEN REPLY #37772 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37773 /* ~"Never mind. Farewell."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37760 /* ~He shakes his head. "Look, berk, I ain't exactly in a position to be answering your stupid questions. Pike off!"~ */
  IF ~~ THEN REPLY #37774 /* ~"Why, what's going on here?"~ */ GOTO 3
  IF ~~ THEN REPLY #37775 /* ~"Fine, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37761 /* ~He glares at you. "This is the auction block, Clueless. I'm being sold as a slave! Now go get yourself hipped."~ */
  IF ~~ THEN REPLY #37776 /* ~"Why are you being sold?"~ */ GOTO 4
  IF ~~ THEN REPLY #37777 /* ~"What does get hipped mean?"~ */ GOTO 9
  IF ~~ THEN REPLY #37778 /* ~"Fine, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 9.0
  SAY #37762 /* ~He gives you a frustrated look. "I've got such a wonderful personality that I figured I could make some jink by selling myself. Now, how about making that your last question you barmy sod!"~ */
  IF ~~ THEN REPLY #37779 /* ~"I want to know the real reason you're being sold."~ */ GOTO 5
  IF ~~ THEN REPLY #37780 /* ~"Fine by me. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37763 /* ~He starts to look angry then seems to give up. "I bled some sod, all right? I got drunk, we had a fight, and I put a shiv into him." He sighs. "I thank the powers he didn't die. It'd be the prison for me if he had."~ */
  IF ~~ THEN REPLY #37781 /* ~"What's a shiv?"~ */ GOTO 6
  IF ~~ THEN REPLY #37782 /* ~"The prison?"~ */ GOTO 7
  IF ~~ THEN REPLY #37783 /* ~"I see. So you're being sold into slavery because of a fight?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37764 /* ~He frowns at you. "You are one clueless sod, aren't you? A shiv is a knife, you idiot." He looks away from you. "I ain't answering any more of your questions. Go away."~ */
  IF ~~ THEN REPLY #37784 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #37765 /* ~He frowns at you. "Yes, the prison. If you get sent there, it's for a good portion of your life and it's not pleasant. As a slave I won't have it so bad and it won't be that long a sentence." He looks away from you. "I ain't answering any more of your questions. Go away."~ */
  IF ~~ THEN REPLY #37785 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #37766 /* ~He frowns at you. "Yes... The sod I bled was a friend so he didn't press charges. I still had to deal with the courts though and they sentenced me to the block." He looks away from you. "I ain't answering any more of your questions. Go away."~ */
  IF ~~ THEN REPLY #37786 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY #37767 /* ~He smiles at you. "It means, go take a long walk through a one-way portal and don't come back!"~ */
  IF ~~ THEN REPLY #37787 /* ~"I see. So why are you being sold?"~ */ GOTO 4
  IF ~~ THEN REPLY #37788 /* ~"Fine, farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37768 /* ~You see a man with a sad face. He gives you a hopeless look as you approach. "Not you again. What does it take for you to leave me be?"~ */
  IF ~~ THEN REPLY #37789 /* ~"I have some questions..."~ */ GOTO 11
  IF ~~ THEN REPLY #37790 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #37769 /* ~He gives you an angry look. "Well, I don't have any answers for you. Pike it, bubber!"~ */
  IF ~~ THEN REPLY #37791 /* ~"Fine, farewell."~ */ EXIT
END
