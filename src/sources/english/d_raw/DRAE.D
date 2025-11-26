// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58663 /* ~You see an older woman. She frowns at your approach and shakes her head.~ */
  IF ~~ THEN REPLY #58664 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #58665 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58666 /* ~She snorts. "Bar that, berk. Keep your fancy *greetings* and tell me what you want?"~ */
  IF ~~ THEN REPLY #58667 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58668 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.0 7.1 8.1 9.1 10.0 11.0
  SAY #58669 /* ~"Then ask them." She stares at you.~ */
  IF ~~ THEN REPLY #58670 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #58671 /* ~"What can you tell me about this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #58672 /* ~"Do you know anything about a deva down here?"~ */ GOTO 7
  IF ~~ THEN REPLY #58673 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58674 /* ~"My... ain't you the social one. My name's Rae, not that it'll do you any good to know."~ */
  IF ~~ THEN REPLY #58675 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58676 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58677 /* ~She glances about then shrugs. "It's a prison. It's divided into three sections. The outer is where all the lightweights are. The center is for the up and coming types. Here, in the inner, are the true criminals." She smiles at you.~ */
  IF ~~ THEN REPLY #58678 /* ~"What kind of crimes are we talking about?"~ */ GOTO 5
  IF ~~ THEN REPLY #58679 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58680 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58681 /* ~"For the outer area, petty theft and such. For the central, assault mainly. It's filled with thugs, musclemen, and their ilk. Here in the inner area are the murderers, cutthroats, conspirators, and more dangerous types." She smiles.~ */
  IF ~~ THEN REPLY #58682 /* ~"Why are you here?"~ */ GOTO 6
  IF ~~ THEN REPLY #58683 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58684 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58685 /* ~She barks out a laugh. "Cause I did something wrong! Why else would I be here." She waves you off. "None of your business anyway."~ */
  IF ~~ THEN REPLY #58686 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58687 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #58688 /* ~She shakes her head. "He's not here, he's in his own special cell... or at least he was."~ */
  IF ~~ THEN REPLY #58689 /* ~"What do you mean?"~ */ GOTO 8
  IF ~~ THEN REPLY #58690 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58691 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58692 /* ~"The prisoners in the outer area are used to increase the size of the prison. It's them that digs out all the new rooms." She pauses. "One day they dug themselves into some sort of chamber and there was your deva. I suppose he's still there."~ */
  IF ~~ THEN REPLY #58693 /* ~"Where can I find him?"~ */ GOTO 9
  IF ~~ THEN REPLY #58694 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58695 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58696 /* ~She frowns. "I just told you, nidjit. He's in the outer area!"~ */
  IF ~~ THEN REPLY #58697 /* ~"What's a nidjit?"~ */ GOTO 10
  IF ~~ THEN REPLY #58698 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58699 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58700 /* ~She pokes you in the chest with a bony finger. "You are, berk. Most perfect example of an idjit I've ever seen."~ */
  IF ~~ THEN REPLY #58701 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58702 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #58703 /* ~You see Rae. She laughs at your approach. "What do you want this time, berk?"~ */
  IF ~~ THEN REPLY #58704 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58705 /* ~"Nothing, farewell."~ */ EXIT
END
