// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_CRTKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_CRTKR~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dgrace")
~ THEN BEGIN 0 // from:
  SAY #66521 /* ~The man, looking slightly puzzled, nods as you approach. "Greetings, sir. Might I ask how you came to be here?" ~ */
  IF ~~ THEN REPLY #66522 /* ~"I just came down those stairs... through that strange door I found."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66660 /* ~"I'd best work on concealing it a bit better, then." He shrugs, then smiles at you. "I'm the Brothel's caretaker, by the way. You're not supposed to be down here, really, but it's all right if you look about for a bit."~ */
  IF ~~ THEN REPLY #66665 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #66666 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("Dgrace")
~ THEN BEGIN 2 // from:
  SAY #66661 /* ~"Greetings, again. Listen... you shouldn't really be down here. Please don't tarry around too long before heading back upstairs, if you don't mind. I wouldn't want either of us to get into trouble."~ */
  IF ~~ THEN REPLY #66667 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #66668 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #66662 /* ~He smiles nervously. "I really shouldn't even allow you down here, let alone be chatting with you. Please, no questions for now."~ */
  IF ~~ THEN REPLY #66669 /* ~"Tell me what this place is, at least."~ */ GOTO 4
  IF ~~ THEN REPLY #66670 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #66663 /* ~"It's where the ladies' sensory stones are kept... they use them as diaries of a sort. You won't be able to use them, if that's what you're thinking... each of them is attuned to one particular student of the Brothel, so that only she may access that stone."~ */
  IF ~~ THEN REPLY #66671 /* ~"That's all I wished to know. Farewell."~ */ JOURNAL #66672 /* ~I met the Brothel's Caretaker in a large chamber below the place. The chamber held a sensory stone for each of the prostitutes, above, who used them as diaries. He said I wouldn't be able to use them, however, as they've all been attuned to one particular woman or another.~ */ EXIT
END

IF ~  NearbyDialog("Dgrace")
~ THEN BEGIN 5 // from:
  SAY #66664 /* ~"Greetings, sir." The man turns to Fall-from-Grace. "And greetings, Mistress Grace... rest assured I'll keep the ladies' sensory stones in order while you're away." The man turns back to you. "If you'll excuse me, I've several things to tend to. Farewell, sir."~ */
  IF ~~ THEN REPLY #66673 /* ~Leave.~ */ EXIT
END
