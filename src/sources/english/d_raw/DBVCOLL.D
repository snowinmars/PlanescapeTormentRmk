// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVCOLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVCOLL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #54788 /* ~This man is draped in filthy, tattered brown robes, a long hood concealing most of his face from view.~ */
  IF ~~ THEN REPLY #54789 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #54790 /* ~Leave him be.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #54791 /* ~You see his eyes narrow beneath his hood, and he takes a step back. "What do ye want?"~ */
  IF ~~ THEN REPLY #54792 /* ~"What are you doing?"~ */ GOTO 2
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54793 /* ~"What is this place?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54794 /* ~"What is this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #54795 /* ~"I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #54796 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 9.0
  SAY #54797 /* ~"I like ta mind me own business, cutter, an' I'll ask ye ta do the same."~ */
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54799 /* ~"What is this place?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54798 /* ~"What is this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #54800 /* ~"I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #54801 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 9.1
  SAY #54802 /* ~He looks around himself. "No proper name for it, really. The Trash Warrens, I s'pose ye could say."~ */
  IF ~~ THEN REPLY #54803 /* ~"What are you doing here?"~ */ GOTO 2
  IF ~~ THEN REPLY #54804 /* ~"I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #54805 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 9.2
  SAY #54806 /* ~"Pharod's village, cutter." He points up to the ceiling bricks and garbage, high above you in the stinking darkness. "The Buried Village."~ */
  IF ~~ THEN REPLY #54807 /* ~"What are you doing here?"~ */ GOTO 2
  IF ~~ THEN REPLY #54808 /* ~"I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #54809 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 2.2 3.1 4.1 9.3
  SAY #54810 /* ~"Eh?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0108")
~ THEN REPLY #54811 /* ~"I'm looking for a man named Pharod."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0109")
~ THEN REPLY #54812 /* ~"I'm looking for a man named Pharod."~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54813 /* ~"I'm looking for a journal I've lost."~ */ GOTO 6
  IF ~~ THEN REPLY #54814 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 7.0 8.0
  SAY #54815 /* ~He just shakes his head, puzzled.~ */
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0108")
~ THEN REPLY #54816 /* ~"How about Pharod? Know where he is?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0109")
~ THEN REPLY #54817 /* ~"How about Pharod? Know where he is?"~ */ GOTO 8
  IF ~~ THEN REPLY #54818 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #54819 /* ~The man nods. "Ye'll want ta make yer way ta the southwestern part a' maze a' trash. There's a trap door there, leadin' down ta where Pharod's at."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54820 /* ~"I'm also looking for a journal I've lost."~ */ GOTO 6
  IF ~~ THEN REPLY #54821 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.1
  SAY #54822 /* ~The man nods. "There's an arch leadin' northwest out a' this big chamber... ye'll find ol' Pharod through there."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54823 /* ~"I'm also looking for a journal I've lost."~ */ GOTO 6
  IF ~~ THEN REPLY #54824 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #54825 /* ~The man takes a step back, peering suspiciously at you from beneath his hood. "Again, eh? What do ye want?"~ */
  IF ~~ THEN REPLY #54826 /* ~"What are you doing?"~ */ GOTO 2
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54827 /* ~"What is this place?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54828 /* ~"What is this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #54829 /* ~"I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #54830 /* ~"Nothing. Farewell."~ */ EXIT
END
