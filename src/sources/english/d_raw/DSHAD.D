// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHAD~

IF ~  Global("Zap","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #23915 /* ~"Don't talk to me. Talk to Raimon." The wererat avoids your gaze.~ */
  IF ~~ THEN REPLY #23931 /* ~"Very well."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #23309 /* ~"I said don't talk to me." The wererat still won't look at you.~ */
  IF ~~ THEN REPLY #23933 /* ~"Fine."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #23310 /* ~"Don't you have someplace else to go? Like, not here?" The wererat's voice is languid and unworried.~ */
  IF ~~ THEN REPLY #23934 /* ~"I suppose I do. Farewell."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #23916 /* ~"Big man, eh? Get goin' before Raimon gets up his courage and calls for reinforcements." This wererat seems strangely unconcerned.~ */
  IF ~~ THEN REPLY #23935 /* ~"What if I threatened YOU?"~ */ GOTO 4
  IF ~~ THEN REPLY #23936 /* ~"I'm gone, then."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #23917 /* ~He shrugs.~ */
  IF ~~ THEN REPLY #23937 /* ~Attack him.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23938 /* ~"Farewell, then."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #23918 /* ~"Aw, for the love of... I guess you gotta die, berk..."~ */
  IF ~~ THEN REPLY #23939 /* ~"I guess you can try."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NearbyDialog("DAnnah")
~ THEN BEGIN 6 // from:
  SAY #23919 /* ~After having slain his fellow wererat, this fellow looks square at Annah. "Annah, it's Shaddeus. I'm lettin' you out. I can't stand to see you caged like this. Put in a kind word for me should you make it back to the Village, and let 'em know that somethin' bad's coming that way. Can't say what, yet, but... just so you know."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 160
END

IF ~~ THEN BEGIN 7 // from:
  SAY #23920 /* ~"Aye, then." He takes the keys from Raimon's body, unlocks the door, and opens it for you. "Get going, now." He gives a quick bow and scampers away.~ */
  IF ~~ THEN REPLY #23434 /* ~"We will. Thanks."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
EscapeArea()
~ EXIT
END

IF ~  !NearbyDialog("DAnnah")
~ THEN BEGIN 8 // from:
  SAY #23921 /* ~"You're wondering why I did that, aren't you? I used to be a Buried Villager. Shaddeus was my name. I don't want to be a wererat, and I don't figure that it makes me any less loyal to humanity to have this disease. Get out. Now." He unlocks the door, opens it for you, and scampers away.~ */
  IF ~~ THEN REPLY #23940 /* ~"Thanks, Shaddeus. Farewell."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
EscapeArea()
~ EXIT
END
