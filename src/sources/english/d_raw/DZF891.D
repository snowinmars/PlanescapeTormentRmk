// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF891.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF891~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35274 /* ~The especially ghastly-looking female corpse is missing its ears, nose and lips. In order to sew her jaw closed, whoever prepared her had to draw the skin especially tight around her mouth; you can still see a line of crooked, yellowed teeth through the open slit that remains. The number "891" has been carved into the flesh of her brow.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35275 /* ~"So... doing anything later?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35292 /* ~"So... doing anything later?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35293 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35294 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35299 /* ~"It was great talking to you. Farewell."~ */ EXTERN ~DMORTE~ 366
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35300 /* ~Leave the corpse in peace.~ */ EXTERN ~DMORTE~ 366
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35301 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35302 /* ~Leave the corpse in peace.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35303 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35304 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35276 /* ~The corpse continues to stare at you.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35277 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 366
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35290 /* ~"Farewell then."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35291 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35295 /* ~This corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35296 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 366
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35297 /* ~"Farewell then."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35298 /* ~"Farewell then."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35305 /* ~This corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
END
