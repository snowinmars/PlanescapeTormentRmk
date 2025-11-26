// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTRAHAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTRAHAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #32470 /* ~You see a mid-sized man in long robes of deep black. His hair is neatly coifed and an impeccably trimmed goatee compliments his handsome features. Noticing your arrival, he puts down the book he was writing in and strides confidently over to you, smiling. "Impressive... I must admit, I never thought you would make it this far."~ */
  IF ~~ THEN REPLY #32476 /* ~"I'm glad to have disappointed you... are you the one responsible for all the walking dead?"~ */ GOTO 1
  IF ~~ THEN REPLY #32477 /* ~"Foul Necromancer! I've come to put an end to your desecration of this place."~ */ GOTO 4
  IF ~~ THEN REPLY #32478 /* ~"Sorry to have to disturbed you. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #32471 /* ~"Who I am is of no consequence to you. What I want is the question that should concern you most." As he speaks, he looks you up and down, as if somehow fascinated by you.~ */
  IF ~~ THEN REPLY #32479 /* ~"Very well... what do you want?"~ */ GOTO 2
  IF ~~ THEN REPLY #32480 /* ~"You're wrong. What you want *doesn't* interest me... I'm here to kill you."~ */ GOTO 4
  IF ~~ THEN REPLY #32481 /* ~"Never mind. I must be going."~ */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #32472 /* ~He takes a step back and cocks an eyebrow. "I want... your blood."~ */
  IF ~~ THEN REPLY #32482 /* ~"Is that some kind of threat?"~ */ GOTO 3
  IF ~~ THEN REPLY #32483 /* ~"What a coincidence... I've come for your blood as well. Prepare to die!"~ */ GOTO 4
  IF ~~ THEN REPLY #32484 /* ~"Uh... I'm not interested. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32473 /* ~The man starts to answer, but stops himself abruptly. An evil smile spreads across his face and he begins to laugh. "Yes... I suppose it is." He continues to laugh even harder at his own, private joke. You notice that his hands have begun to move at his sides. Slowly, they flit back and forth, tracing intricate patterns in the air.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.1
  SAY #32474 /* ~"Really? Well, by all means, give it your best effort." He smiles smugly and raises his hands before him. Slowly, they flit back and forth, tracing intricate patterns in the air.~ */
  IF ~~ THEN REPLY #32485 /* ~Attack.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.2 2.2
  SAY #32475 /* ~"I'm afraid you won't be going anywhere." He smiles smugly and raises his hands before him. Slowly, they flit back and forth, tracing intricate patterns in the air.~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
