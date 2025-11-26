// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1096.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1096~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35082 /* ~This female corpse is making the rounds from slab to slab in the room. Her hair is knotted into a long braid and looped around her neck like a noose. Someone has stenciled the number "1096" onto her forehead, and her lips have been stitched closed.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35083 /* ~"Uh... nice braid."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35100 /* ~"Uh... nice braid."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35101 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35102 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35107 /* ~"It was great talking to you. Farewell."~ */ EXTERN ~DMORTE~ 342
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35108 /* ~Leave the corpse in peace.~ */ EXTERN ~DMORTE~ 342
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35109 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35110 /* ~Leave the corpse in peace.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35111 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35112 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35084 /* ~The corpse does not respond. You doubt it even knows you're there.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35085 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 342
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35098 /* ~"Farewell then."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35099 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35103 /* ~The corpse does not stir. It looks like it is too far gone to answer any of your questions.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35104 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 342
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35105 /* ~"Farewell then."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35106 /* ~"Farewell then."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35113 /* ~The corpse does not stir. It looks like it is too far gone to answer any of your questions.~ */
END
