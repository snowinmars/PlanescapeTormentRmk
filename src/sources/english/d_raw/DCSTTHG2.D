// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9902 /* ~You see a man dressed in armor with a sword slung at his side. He watches you warily as you approach.~ */
  IF ~~ THEN REPLY #9903 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #9904 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9905 /* ~He nods to you, then quickly glances about. "And to you. What do you want?"~ */
  IF ~~ THEN REPLY #9906 /* ~"I wanted to ask you some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #9907 /* ~"Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9908 /* ~"I'm new to Curst, so I doubt I can answer your questions. I'll try though."~ */
  IF ~~ THEN REPLY #9909 /* ~"Have you heard of a deva who may be in town?"~ */ GOTO 3
  IF ~~ THEN REPLY #9910 /* ~"If I may ask, why are you in Curst?"~ */ GOTO 5
  IF ~~ THEN REPLY #9911 /* ~"Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9912 /* ~He looks at you in surprise. "A deva. No, I can't say that I have. Why would a deva be here? That makes little sense, if any."~ */
  IF ~~ THEN REPLY #9913 /* ~"Yes, well... Why are you in Curst?"~ */ GOTO 5
  IF ~~ THEN REPLY #9914 /* ~"I have no idea. I must be going."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 5.2 6.1 7.0
  SAY #9915 /* ~"Well, good luck to you. Farewell."~ */
  IF ~~ THEN REPLY #9916 /* ~"And to you."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.0
  SAY #9917 /* ~"I'm a mercenary by trade. I was told there was work to be had in Curst, so I came to sign up. Most of the damn city's sealed off because of the plague, though. I can't get to where I need to go."~ */
  IF ~~ THEN REPLY #9918 /* ~"What do you know of this plague?"~ */ GOTO 6
  IF ~~ THEN REPLY #9919 /* ~"Where do you need to go?"~ */ GOTO 7
  IF ~~ THEN REPLY #9920 /* ~"I see. I must bid you farewell."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9921 /* ~He shrugs his shoulders. "Nothing, really. I've been told it hit suddenly but was quickly controlled by sealing off the infected areas of the city." He sighs. "Damned inconvenient. I can't meet my contact now."~ */
  IF ~~ THEN REPLY #9922 /* ~"Where do you need to go?"~ */ GOTO 7
  IF ~~ THEN REPLY #9923 /* ~"I thank you. I must go now."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #9924 /* ~"The Quartered Man. It's a gathering spot for mercenaries, but you can't get to that part of the city now."~ */
  IF ~~ THEN REPLY #9925 /* ~"I see. I must take my leave now."~ */ GOTO 4
END
