// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGAMLIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGAMLIN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
Global("Rauk","Global",0)
~ THEN BEGIN 0 // from:
  SAY #49877 /* ~"Hey! What are you doing in my tent?!"~ */
  IF ~~ THEN REPLY #49878 /* ~"Greetings..."~ */ GOTO 3
  IF ~  Global("Rings3","Global",1)
~ THEN REPLY #49879 /* ~"I'm searching for Rauk's tent. Do you know where it is?"~ */ GOTO 4
  IF ~~ THEN REPLY #49880 /* ~"My mistake. Farewell."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Rauk","Global",0)
~ THEN BEGIN 1 // from:
  SAY #49881 /* ~"The Lady curse you! What in all the planes do you want now?!"~ */
  IF ~~ THEN REPLY #49882 /* ~"Greetings..."~ */ GOTO 3
  IF ~  Global("Rings3","Global",1)
~ THEN REPLY #49883 /* ~"I'm searching for Rauk's tent. Do you know where it is?"~ */ GOTO 4
  IF ~~ THEN REPLY #49884 /* ~"I'm leaving. Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Rauk","Global",1)
~ THEN BEGIN 2 // from:
  SAY #49885 /* ~"Yeah, you're a friend of Rauk's and I'm a friend of Rauk's. So what? Doesn't mean I have to talk to you."~ */
  IF ~~ THEN REPLY #49886 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #49887 /* ~"You barge into my tent uninvited and all you have to say is 'Greetings'?! On your way, berk!"~ */
  IF ~~ THEN REPLY #49888 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #49889 /* ~"Blast! You another 'friend' of Rauk's? Yeah, this is one of the tents he calls home. As you can see, this one is full up. Go to one of his other tents."~ */
  IF ~~ THEN REPLY #49890 /* ~"Farewell."~ */ DO ~SetGlobal("Rauk","Global",1)
~ EXIT
END
