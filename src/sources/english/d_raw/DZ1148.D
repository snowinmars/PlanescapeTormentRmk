// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1148.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1148~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35242 /* ~The skin of this female corpse is heavily tattooed with intricate patterns. The skin of her brow has been peeled back so that the number "1148" could be chiseled into the skull beneath. Her mouth has been sealed shut with thick, rough stitching.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35243 /* ~"So... doing anything later?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35260 /* ~"So... doing anything later?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35261 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35262 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35267 /* ~"It was great talking to you. Farewell."~ */ EXTERN ~DMORTE~ 362
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35268 /* ~Leave the corpse in peace.~ */ EXTERN ~DMORTE~ 362
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35269 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35270 /* ~Leave the corpse in peace.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35271 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35272 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35244 /* ~The corpse continues to stare at you.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35245 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 362
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35258 /* ~"Farewell then."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35259 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35263 /* ~This corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35264 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 362
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35265 /* ~"Farewell then."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35266 /* ~"Farewell then."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35273 /* ~This corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
END
