// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ396.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ396~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34931 /* ~This corpse is shuffling from slab to slab, bandaging the corpses lying there. The number "396" is carved into his left temple, and his lips are stitched closed. You notice the corpse is carrying a roll of bandages in its hand... the bandages look usable.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34932 /* ~"Mind if I borrow those bandages?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34935 /* ~"Mind if I borrow those bandages?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34936 /* ~Try and take the bandages from the zombie.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34937 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 2
  IF ~~ THEN REPLY #34940 /* ~Use Stories-Bones-Tell on the corpse.~ */ EXIT
  IF ~~ THEN REPLY #34941 /* ~"It was great talking to you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34933 /* ~The corpse continues to stare at you.~ */
  IF ~~ THEN REPLY #34934 /* ~Try and take the bandages from the zombie.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34938 /* ~The corpse does not stir. It looks like it is too far gone to answer any of your questions.~ */
  IF ~~ THEN REPLY #34939 /* ~Leave the corpse in peace.~ */ EXIT
END
