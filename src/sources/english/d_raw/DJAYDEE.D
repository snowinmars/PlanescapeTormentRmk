// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJAYDEE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DJAYDEE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58535 /* ~You see a warehouse worker. He seems quite intent on his work and doesn't notice your approach.~ */
  IF ~~ THEN REPLY #58537 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #58540 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58542 /* ~He pauses at what he is doing and turns to face you. "May I help you?"~ */
  IF ~~ THEN REPLY #58543 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58547 /* ~"No, not really. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58549 /* ~He frowns. "I have a lot of work to do and I don't have time for questions. Sorry." He starts to turn away.~ */
  IF ~~ THEN REPLY #58551 /* ~"Just a quick question..."~ */ GOTO 3
  IF ~~ THEN REPLY #58553 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58554 /* ~He sighs as he turns to face you. "A quick question... do you know how many times a day I hear that?" He glares at you.~ */
  IF ~~ THEN REPLY #58556 /* ~"Uh... no."~ */ GOTO 4
  IF ~~ THEN REPLY #58557 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58559 /* ~"Well let me tell you... too many! Every time some sodding berk knows he's going to be annoying as all Baator because he can see you're busy but can't wait to ask his damn fool question another time it's always just a *quick* question!" He glares at you angrily. "And you know what?"~ */
  IF ~~ THEN REPLY #58560 /* ~"Uh... no. What?"~ */ GOTO 5
  IF ~~ THEN REPLY #58562 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58563 /* ~He raises his voice and starts waving his arms around. "He's lying! He knows it's not going to be a *quick* question! He knows it's going to take a sodding essay in order to get a proper answer. But! He tells you it's going to be quick! You know why?"~ */
  IF ~~ THEN REPLY #58564 /* ~"Uh... no. Why?"~ */ GOTO 6
  IF ~~ THEN REPLY #58566 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58567 /* ~"Because he thinks you're STUPID! He thinks you're not going to notice the inordinate amount of time it takes to answer his question. Oh no! He said it was a quick question so it doesn't matter that it takes half an hour out of your time to answer! You're STUPID and won't notice!"~ */
  IF ~~ THEN REPLY #58568 /* ~"Maybe I should come back later..."~ */ GOTO 7
  IF ~~ THEN REPLY #58569 /* ~"I'm sorry for the interruption, I can see you're busy..."~ */ GOTO 9
  IF ~~ THEN REPLY #58571 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0
  SAY #58572 /* ~"Why? You've already interrupted me and broken my train of thought! Ask your sodding question, take an hour out of my busy day, and be done with it." He glares at you.~ */
  IF ~~ THEN REPLY #58573 /* ~"I'm looking for a deva. I've been told he's in Curst."~ */ GOTO 8
  IF ~~ THEN REPLY #58574 /* ~"I think I'll be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58575 /* ~"Yeah, I've heard that as well. The rumor mill says he's in the prison. If that's the case, you need to go to the administration building in the town square and ask about him. Now leave me be..." He turns away from you.~ */
  IF ~~ THEN REPLY #58576 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #58577 /* ~He pauses to glare at you. "Busy? Have you seen my work schedule? You have no concept of busy, berk." He snorts. "Damn thing keeps changing too, that's the best part of having the sodding schedule! Every day something's added to it or taken off so that something else can be added."~ */
  IF ~~ THEN REPLY #58578 /* ~"I see. I think I should go now..."~ */ GOTO 7
  IF ~~ THEN REPLY #58579 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #58580 /* ~You see an angry warehouse worker. He seems quite intent on his work until he notices you approach. "Oh, it's you again. Let me guess, you have a *quick* question for me."~ */
  IF ~~ THEN REPLY #58581 /* ~"No, I think I'll be leaving. Farewell."~ */ EXIT
END
