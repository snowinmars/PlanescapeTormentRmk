// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMFEM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #241 /* ~The female corpse stares at you with vacant eyes. A number is carved into her forehead, and her lips have been stitched closed. The faint smell of formaldehyde emanates from her body.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #242 /* ~"So... doing anything later?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #243 /* ~"So... doing anything later?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #1158 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1342 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #1343 /* ~"It was great talking to you. Farewell."~ */ EXTERN ~DMORTE~ 46
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #1344 /* ~Leave the corpse in peace.~ */ EXTERN ~DMORTE~ 46
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2598 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2599 /* ~Leave the corpse in peace.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3923 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3924 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #244 /* ~The corpse continues to stare at you.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #245 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 46
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2597 /* ~"Farewell then."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3925 /* ~"Farewell then."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.3
  SAY #283 /* ~This corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #1157 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 46
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2600 /* ~"Farewell then."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3926 /* ~"Farewell then."~ */ EXIT
END
