// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMACH4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMACH4~

IF ~  Global("Machine_4","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64364 /* ~This ancient machine looks like a forgotten war relic. Most of the machine is covered in dust, except for the strange panel with levers at the front of it. Oddly enough, the ground around the panel is disturbed, as if someone walked there 'recently' - perhaps in the last few years. ~ */
  IF ~  Global("Machine","GLOBAL",3)
~ THEN REPLY #64365 /* ~Hunt for the panel, then the lever marked with an 'X.'~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 1
  IF ~  GlobalGT("Machine","GLOBAL",0)
GlobalLT("Machine","GLOBAL",3)
~ THEN REPLY #64371 /* ~Hunt for the panel, then the lever marked with an 'X.'~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Machine","GLOBAL",0)
~ THEN REPLY #64376 /* ~Examine the panel.~ */ GOTO 4
  IF ~~ THEN REPLY #64385 /* ~Leave the machine alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64366 /* ~You quickly find the 'X'-marked lever and pull it. It gives way easily beneath your touch, then disintegrates into mist - you take a deep breath, but unlike the other times... nothing happens.~ */
  IF ~~ THEN JOURNAL #64260 /* ~When I pulled the lever on the fourth relic, it seemed to open something within the Fortress vaults... perhaps the way out? I'll have to hunt for it and try to get the hell out of here... ~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64367 /* ~In the distance, you hear a roaring sound, as if *something* just opened, and a howling wind is rushing through the vaults. As you try and figure out where the sound is coming from, you suddenly realize you are disintegrating and becoming part of the wind...~ */
  IF ~  !Dead("Annah")
Global("Fortress_Annah","GLOBAL",1)
~ THEN REPLY #64368 /* ~"*Now* what's happening...?!"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_4","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csA0",FALSE)
~ EXIT
  IF ~  Dead("Annah")
Global("Fortress_Annah","GLOBAL",1)
~ THEN REPLY #64369 /* ~"*Now* what's happening...?!"~ */ DO ~SetGlobal("Machine_4","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[950.2088],1)
TeleportParty("AR1201",[950.2088],10)
MoveViewPoint([950.2088],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #64370 /* ~"*Now* what's happening...?!"~ */ DO ~SetGlobal("Machine_4","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[950.2088],1)
TeleportParty("AR1201",[950.2088],10)
MoveViewPoint([950.2088],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64372 /* ~You quickly find the 'X'-marked lever and pull it. It gives way easily beneath your touch, then disintegrates into mist - you take a deep breath, and the wave of dizziness overtakes you again as the walls fade out around you...~ */
  IF ~  !Dead("Annah")
Global("Fortress_Annah","GLOBAL",1)
~ THEN REPLY #64373 /* ~"Where am I going *n-*"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_4","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csA0",FALSE)
~ EXIT
  IF ~  Dead("Annah")
Global("Fortress_Annah","GLOBAL",1)
~ THEN REPLY #64374 /* ~"Where am I going *n-*"~ */ DO ~SetGlobal("Machine_4","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[950.2088],1)
TeleportParty("AR1201",[950.2088],10)
MoveViewPoint([950.2088],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #64375 /* ~"Where am I going *n-*"~ */ DO ~SetGlobal("Machine_4","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[950.2088],1)
TeleportParty("AR1201",[950.2088],10)
MoveViewPoint([950.2088],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #64377 /* ~The panel has a series of gears and levers - beneath each one are a series of scratch marks that look like they were hastily carved there with a dagger. Some bear no marks, other bear a single slash beneath them, and one has an 'X.' Without knowing why, you know the 'X' lever will somehow help you leave this place.~ */
  IF ~  Global("Clock_1","GLOBAL",1)
~ THEN REPLY #64378 /* ~Pull the lever marked with an 'X.'~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64238 /* ~I found a strange machine in the Fortress - it looked like some sort of cannon, but I have a suspicion it's some sort of 'gatehouse' or locking mechanism for the Fortress. When I pulled it, I was transported to another isolated section of the Fortress - a balcony overlooking the main gallery. I know I'll need to find the other machines and activate them somehow. It must be my memory returning - if the message carved on the clock was any indication, one of my incarnations already had to go through this gauntlet before.~ */ GOTO 5
  IF ~  Global("Clock_1","GLOBAL",0)
~ THEN REPLY #64383 /* ~Pull the lever marked with an 'X.'~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64239 /* ~I found a strange machine in the Fortress - it looked like some sort of cannon, but I have a suspicion it's some sort of 'gatehouse' or locking mechanism for the Fortress. When I pulled it, I was transported to another isolated section of the Fortress - a balcony overlooking the main gallery. I know I'll need to find the other machines and activate them somehow. I don't know why, but I have a strange feeling I've done this before. ~ */ GOTO 5
  IF ~~ THEN REPLY #64384 /* ~Leave the machine alone.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #64379 /* ~It gives way easily beneath your touch, and to your surprise, disintegrates into mist... then spreads to your hand, which also begins to fade, then your arm, then you are overcome with dizziness, and the walls are fading out around you...~ */
  IF ~  !Dead("Annah")
Global("Fortress_Annah","GLOBAL",1)
~ THEN REPLY #64380 /* ~"Wh-"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_4","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csA0",FALSE)
~ EXIT
  IF ~  Dead("Annah")
Global("Fortress_Annah","GLOBAL",1)
~ THEN REPLY #64381 /* ~"Wh-"~ */ DO ~SetGlobal("Machine_4","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[950.2088],1)
TeleportParty("AR1201",[950.2088],10)
MoveViewPoint([950.2088],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #64382 /* ~"Wh-"~ */ DO ~SetGlobal("Machine_4","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[950.2088],1)
TeleportParty("AR1201",[950.2088],10)
MoveViewPoint([950.2088],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~  Global("Machine_1","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #64386 /* ~This ancient machine looks like a forgotten war relic. Most of the machine is covered in dust, except for the strange panel with levers at the front of it. There is no trace of the lever you first pulled - it's gone, as if it never existed.~ */
  IF ~~ THEN REPLY #64387 /* ~Leave the machine alone.~ */ EXIT
END
