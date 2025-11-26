// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF679.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF679~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35178 /* ~This looks to be the corpse of a well-aged, even ancient woman. Aside from the embalming fluid stink, the stitches sealing her mouth, and the number "679" stitched onto her right cheek, it's likely she looks only slightly different now than she did in her final years.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35179 /* ~"So... doing anything later?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35196 /* ~"So... doing anything later?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35197 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35198 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35203 /* ~"It was great talking to you. Farewell."~ */ EXTERN ~DMORTE~ 354
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35204 /* ~Leave the corpse in peace.~ */ EXTERN ~DMORTE~ 354
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35205 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35206 /* ~Leave the corpse in peace.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35207 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35208 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35180 /* ~The corpse continues to stare at you.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35181 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 354
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35194 /* ~"Farewell then."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35195 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35199 /* ~This corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35200 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 354
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35201 /* ~"Farewell then."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35202 /* ~"Farewell then."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35209 /* ~This corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
END
