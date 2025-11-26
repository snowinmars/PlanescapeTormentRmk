// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ444.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ444~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35210 /* ~This female corpse is in terrible shape. What seem to be hundreds of tiny bites - from rats, perhaps - pock the tough, preservative-treated skin of the body. Judging from the puckered flesh around the wounds, they were most likely inflicted before the corpse was prepared. Her lips are sewn together, and the number "444" has been stained onto her face with dark blue ink.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35211 /* ~"So... doing anything later?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35228 /* ~"So... doing anything later?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35229 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35230 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35235 /* ~"It was great talking to you. Farewell."~ */ EXTERN ~DMORTE~ 358
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35236 /* ~Leave the corpse in peace.~ */ EXTERN ~DMORTE~ 358
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35237 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35238 /* ~Leave the corpse in peace.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35239 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35240 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35212 /* ~The corpse continues to stare at you.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35213 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 358
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35226 /* ~"Farewell then."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35227 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35231 /* ~This corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35232 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 358
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35233 /* ~"Farewell then."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35234 /* ~"Farewell then."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35241 /* ~This corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
END
