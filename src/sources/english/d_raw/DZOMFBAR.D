// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMFBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMFBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2574 /* ~This female corpse is dressed in a heavy burlap shirt covered with food and wine stains. Her lips have been stitched closed, and her arms and legs are wrapped in several layers of bandages. The bandages seem to have been soaked in preservatives to keep the corpse fresh... as a result, the corpse's rotting odor has been replaced with an equally repulsive vinegar smell.~ */
  IF ~~ THEN REPLY #2575 /* ~"So... doing anything later?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zombie_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2576 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2577 /* ~"It was great talking to you. Farewell."~ */ EXTERN ~DMORTE~ 120
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2578 /* ~Leave the corpse in peace.~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7047 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7048 /* ~Leave the corpse in peace.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7049 /* ~"It was great talking with you. Farewell."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7050 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2579 /* ~The zombie continues to stare at you.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2580 /* ~"All right then. Great talking to you. Farewell."~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7051 /* ~"All right then. Great talking to you. Farewell."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7052 /* ~"All right then. Great talking to you. Farewell."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2581 /* ~This zombie makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2582 /* ~Leave the corpse in peace.~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7053 /* ~Leave the corpse in peace.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7054 /* ~Leave the corpse in peace.~ */ EXIT
END
