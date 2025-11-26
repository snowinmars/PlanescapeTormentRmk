// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCSUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCSUS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9977 /* ~You see an older man dressed in shoddy clothes. He notices you looking at him and tries to steer away from you. You deftly alter your course to intercept him.~ */
  IF ~~ THEN REPLY #9978 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #9979 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9980 /* ~It looks as though he is going to try to run and then thinks better of the idea. His eyes dart about the area and never really focus on you. However, you get the impression that he is ready to flee at the drop of a hat. "I got nothin' ya want! I ain't done nothin' to ya neither! Leave me be... please!"~ */
  IF ~~ THEN REPLY #9981 /* ~"Calm down. I just want to ask you some questions. All right?"~ */ GOTO 2
  IF ~~ THEN REPLY #9982 /* ~"Sorry to have bothered you. Go on your way."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9983 /* ~His eyes focus on you for the first time. As he looks you up and down his look of worry deepens. "I... I'd help you if I could. I swear it, but I know nothin'... nothin' I swear! Please leave me be."~ */
  IF ~~ THEN REPLY #9984 /* ~"How do you know you can't help me if you won't even listen to the question first?"~ */ GOTO 3
  IF ~~ THEN REPLY #9985 /* ~"Fine. Go."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9986 /* ~His eyes begin to dart about again, as if he expects to be attacked from all sides. He begins to wring his hands together and glances at you nervously before returning his attention to the streets around him. "Uh... I don't want trouble, see? So I make it a point to know nothin', ok? That's how I know I can't help ya. Please! Leave me be!" You think he may begin to cry at any moment, he looks so distressed.~ */
  IF ~~ THEN REPLY #9987 /* ~"Fine. Sorry to have bothered you."~ */ GOTO 4
  IF ~~ THEN REPLY #9988 /* ~"Hmph. Know nothing my arse. I need some answers and you're elected to give them. Your other option is that I bust your face."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Suspicious_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #9989 /* ~"Look, I'm sorry to have caused you such distress. Is there something I could help you with? You seem troubled."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Suspicious_1","GLOBALGood",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0
  SAY #9990 /* ~A look of relief momentarily flashes across his face as he backs away from you. His eyes dart warily about until finally he turns and flees.~ */
  IF ~~ THEN REPLY #9991 /* ~"I think I'm beginning to understand the meaning of 'barmy.'"~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #9992 /* ~His eyes dart about the area and a whimper escapes his lips. He puts his face in his hands and sinks to the ground sobbing. You don't think you're going to learn anything from him.~ */
  IF ~~ THEN REPLY #9993 /* ~"I think I'm beginning to understand the meaning of 'barmy.'"~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #9994 /* ~A look of relief momentarily flashes across his face as he backs away from you. His eyes dart warily about and then focus on you. "You... you'd be willing to help me out? Me, a stranger? What's the catch, berk!"~ */
  IF ~~ THEN REPLY #9995 /* ~"Yes, I'd help you. No strings attached. Just tell me what you need."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9996 /* ~He looks you up and down warily and then glances about. The look of being hunted leaves his eyes for a moment as he faces you once again. "I thank ya. No other here would offer help to the likes of me. I... I don't think there is any help for me. Not ever... I thank ya... I must go."~ */
  IF ~~ THEN REPLY #9997 /* ~"I understand. Farewell."~ */ GOTO 4
END
