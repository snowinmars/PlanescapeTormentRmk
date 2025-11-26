// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3164 /* ~You see a young man wearing ill-fitting clothes. He watches you approach with a bored look. ~ */
  IF ~~ THEN REPLY #3165 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #9926 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9927 /* ~He looks you up and down before answering your greeting. "Greetings to you as well, cutter. What can I do for you?"~ */
  IF ~~ THEN REPLY #9928 /* ~"I wanted to ask you a couple of questions."~ */ GOTO 2
  IF ~~ THEN REPLY #9929 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9930 /* ~He stares at you for some time before he begins to chuckle. "I know nothing, I see nothing, and I hear nothing. So, I can answer nothing. Now run along before I have to hurt you."~ */
  IF ~~ THEN REPLY #9931 /* ~"It won't hurt for you to try and answer a couple of simple questions. How bout it?"~ */ GOTO 3
  IF ~~ THEN REPLY #9932 /* ~"If I have to beat some answers out of you that's fine by me."~ */ GOTO 4
  IF ~~ THEN REPLY #9933 /* ~"Fine. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9934 /* ~He frowns at you. "I have nothing to say to you, berk. This is your last chance to leave in one piece."~ */
  IF ~~ THEN REPLY #9935 /* ~"If I have to beat some answers out of you that's fine by me."~ */ GOTO 4
  IF ~~ THEN REPLY #9936 /* ~"Fine, good day."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #9937 /* ~He looks you up and down, paying attention to your scars, then gives you a friendly smile. "All right, you don't scare easy. I can talk to someone like you. What do you want?"~ */
  IF ~~ THEN REPLY #9938 /* ~"Just some answers."~ */ GOTO 5
  IF ~~ THEN REPLY #9939 /* ~"Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0 7.1 8.0 9.1 10.1 11.0 12.1 13.0 14.0
  SAY #9940 /* ~He shrugs his shoulders. "Sure. Ask away."~ */
  IF ~~ THEN REPLY #9941 /* ~"I'm looking for a deva. I've been told he's in Curst."~ */ GOTO 6
  IF ~~ THEN REPLY #9942 /* ~"What can you tell me about Curst?"~ */ GOTO 9
  IF ~~ THEN REPLY #9943 /* ~"Who's in charge here?"~ */ GOTO 12
  IF ~~ THEN REPLY #9944 /* ~"What's going on in town lately?"~ */ GOTO 14
  IF ~~ THEN REPLY #9945 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9946 /* ~He chuckles. "Not very likely, cutter. I can't see a deva stepping one foot in this town unless he intends to wipe it from the mind of man. I think you're wasting your time."~ */
  IF ~~ THEN REPLY #9947 /* ~"I see. Another question."~ */ GOTO 5
  IF ~~ THEN REPLY #9948 /* ~"What do you mean?"~ */ GOTO 7
  IF ~~ THEN REPLY #9949 /* ~"I thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #9950 /* ~He shrugs his shoulders. "I hear tell some berks call devas angels. Curst ain't the kind of town an 'angel' would be caught dead in. Wrong side of the Ring."~ */
  IF ~~ THEN REPLY #9951 /* ~"What ring?"~ */ GOTO 8
  IF ~~ THEN REPLY #9952 /* ~"I see. Another question."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #9953 /* ~"The Ring of the Outer Planes. Law on one side, chaos on the other, good and evil between the two. You new here or something?" He looks at you quizzically.~ */
  IF ~~ THEN REPLY #9954 /* ~"You could say that. I need to ask you something else."~ */ GOTO 5
  IF ~~ THEN REPLY #9955 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #9956 /* ~He shrugs his shoulders and smiles slyly. "It's a nice place for the right kind of person. It all depends on you and who you know."~ */
  IF ~~ THEN REPLY #9957 /* ~"And who, in your opinion, should I get to know?"~ */ GOTO 10
  IF ~~ THEN REPLY #9958 /* ~"All right, another question."~ */ GOTO 5
  IF ~~ THEN REPLY #9959 /* ~"I see. Well, I must be leaving."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #9960 /* ~He thinks for a moment. "A cutter like you would be interested in the Traitor's Gate. It's a bar run by a man named Tainted Barse." He smiles at you. "Don't tell him I sent you."~ */
  IF ~~ THEN REPLY #9961 /* ~"How do I find this place?"~ */ GOTO 11
  IF ~~ THEN REPLY #9962 /* ~"I see. Another question."~ */ GOTO 5
  IF ~~ THEN REPLY #9963 /* ~"My thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #9964 /* ~He shrugs his shoulders. "I don't rightly know. I think it's over that away." He points off to your right. "Just look around, you'll find it."~ */
  IF ~~ THEN REPLY #9965 /* ~"All right. Another question."~ */ GOTO 5
  IF ~~ THEN REPLY #9966 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2
  SAY #9967 /* ~"Tovus Giljaf. You can find him at the administration office in the town square."~ */
  IF ~~ THEN REPLY #9968 /* ~"What can you tell me about Tovus?"~ */ GOTO 13
  IF ~~ THEN REPLY #9969 /* ~"Another question."~ */ GOTO 5
  IF ~~ THEN REPLY #9970 /* ~"I thank you, and good day."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #9971 /* ~"I've never had dealings with the man. If it weren't for the fact that he runs this burg, I wouldn't even know his name." He looks bored.~ */
  IF ~~ THEN REPLY #9972 /* ~"Very well. Answer me something."~ */ GOTO 5
  IF ~~ THEN REPLY #9973 /* ~"Good day to you then."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.3
  SAY #9974 /* ~He looks bored and glances around. "Nothing really. The place is pretty quiet right now."~ */
  IF ~~ THEN REPLY #9975 /* ~"I see. I have another question for you."~ */ GOTO 5
  IF ~~ THEN REPLY #9976 /* ~"I must take my leave. Good day."~ */ EXIT
END
