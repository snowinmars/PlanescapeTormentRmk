// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTANDSH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTANDSH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46108 /* ~This downtrodden little man scurries about the Curiosity Shop, dusting, cataloguing, and moving things about for the place's proprietress. You notice he smells faintly of onions. He glances up at you nervously as you approach him. "Please, sir... I cannot speak with you. I've work to do, and my mistress simply won't allow it..."~ */
  IF ~~ THEN REPLY #46109 /* ~"I just had a few questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #46110 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46111 /* ~"I'm sorry sir, but I can't. Please, leave me be, before my mistress notices me talking to you..."~ */
  IF ~~ THEN REPLY #46112 /* ~"Your mistress?"~ */ GOTO 2
  IF ~~ THEN REPLY #46113 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46114 /* ~The little man nods. "Yes... Mistress Vrischika. I am Standish, her servant... her slave. I committed a crime and was sentenced to slavery, then purchased in the Lower Ward, like many of her slaves... most of whom she keeps at her manor. Now please - I beg of you! Leave me be, or she'll become angered and beat me unmercifully!"~ */
  IF ~~ THEN REPLY #46115 /* ~"All right... farewell, Standish."~ */ EXIT
END
