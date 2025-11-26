// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9852 /* ~You see a rough-looking man with weathered skin. He looks rather sullen and does not notice your approach.~ */
  IF ~~ THEN REPLY #9853 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #9854 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9857 /* ~He jumps at the sound of your voice and quickly turns to face you. His face is flushed and his breath comes quickly.~ */
  IF ~~ THEN REPLY #9861 /* ~"My apologies for surprising you. I wanted to ask you some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #9859 /* ~"We're a bit on the nervous side aren't we?"~ */ GOTO 5
  IF ~~ THEN REPLY #9862 /* ~"Sorry to have bothered you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9863 /* ~He gives you an angry scowl and draws a dagger from behind his back. "Pike it, berk! Take a walk or it's the dead-book for ya."~ */
  IF ~~ THEN REPLY #9865 /* ~"Calm down. I just need to ask you something."~ */ GOTO 3
  IF ~~ THEN REPLY #9868 /* ~"Put the blade away or I'll take it from you and kill you with it."~ */ GOTO 4
  IF ~~ THEN REPLY #9870 /* ~"As you wish. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9872 /* ~He adopts a defensive stance and threatens you with his blade. "I've no answers for ya. I've nothing to say to ya. Back off!"~ */
  IF ~~ THEN REPLY #9873 /* ~"Put the blade away or I'll take it from you and kill you with it."~ */ GOTO 4
  IF ~~ THEN REPLY #9874 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #9875 /* ~He laughs at you and gestures with his blade. "Come to me then. I'll gut ya and laugh at ya the whole time it takes ya to die!"~ */
  IF ~~ THEN REPLY #9876 /* ~Attack him.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #9878 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #9880 /* ~You get the impression that he doesn't know what to say to you. Your comment seems to have taken him by surprise. "My, uh... My mind was elsewhere, cutter. What ya want?" He eyes you warily.~ */
  IF ~~ THEN REPLY #9883 /* ~"Just some questions answered. All right?"~ */ GOTO 6
  IF ~~ THEN REPLY #9884 /* ~"Nothing actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9885 /* ~He stares at you for a moment then glances nervously about. "One question, then ye're outta here. I ain't got the time or the desire."~ */
  IF ~~ THEN REPLY #9886 /* ~"I'm looking for a deva. I understand he's in Curst."~ */ GOTO 7
  IF ~~ THEN REPLY #9887 /* ~"Who's in charge around here?"~ */ GOTO 8
  IF ~~ THEN REPLY #9888 /* ~"What's the local news?"~ */ GOTO 9
  IF ~~ THEN REPLY #9889 /* ~"What are you doing?"~ */ GOTO 10
  IF ~~ THEN REPLY #9890 /* ~"If you needed some questions answered reliably who would you go to?"~ */ GOTO 11
  IF ~~ THEN REPLY #9891 /* ~"Never mind. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9892 /* ~He gives you a quizzical look. "Yeah, sure. One of them 'holier than thou' sods is walking the streets of Curst. Ye're barmy, cutter. I gave ya yer answer, now git." He turns and walks away.~ */
  IF ~~ THEN REPLY #9893 /* ~Leave.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #9894 /* ~"Tovus Giljaf. He's in the admin office in the town square. I gave ya yer answer, now git." He turns and walks away.~ */
  IF ~~ THEN REPLY #9895 /* ~Leave.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #9896 /* ~He thinks for a moment. "I dunno... I'm not one fer gossip, cutter. Go to the Traitor's Gate. It's a local swill hole down that away." He gestures vaguely. "I gave ya yer answer, now git." He turns and walks away.~ */
  IF ~~ THEN REPLY #9897 /* ~Leave.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY #9898 /* ~He laughs at you. "That ain't something that you need to know, berk. I gave ya yer answer, now git." He turns and walks away.~ */
  IF ~~ THEN REPLY #9899 /* ~Leave.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.4
  SAY #9900 /* ~He laughs and smiles at you. "That's a good question. Ye're a smart cutter after all." He pauses to think then looks at you carefully. "If I were you, I'd talk to Shar. She walks the streets around here and shouldn't be too hard to find. If ye're nice to her she'll help ya. I gave ya yer answer, now git." He turns and walks away.~ */
  IF ~~ THEN REPLY #9901 /* ~Leave.~ */ DO ~EscapeArea()
~ EXIT
END
