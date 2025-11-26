// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ613.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ613~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6540 /* ~The numbers "613" are cut deeply into this plodding corpse's forehead, but an inch of shredded, leathery skin separates the "1" and the "3." Looking closely, you can barely make out a "2" carved there.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6543 /* ~"So... seen anything interesting going on?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6544 /* ~"So... seen anything interesting going on?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6545 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6546 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6547 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #6548 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6541 /* ~The corpse continues to stare at you.~ */
  IF ~~ THEN REPLY #6549 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6542 /* ~The corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~~ THEN REPLY #6550 /* ~Leave the corpse in peace.~ */ EXIT
END
