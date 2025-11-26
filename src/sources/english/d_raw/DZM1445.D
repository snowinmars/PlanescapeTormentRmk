// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1445.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1445~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46756 /* ~The flesh of this corpse is heavily pocked, its ears, the tip of its nose and some of its fingers rotted away to nothing... the man was most likely the victim of some horrid disease. The number "1445" has been tattooed upon his forehead, and his lips are tightly sewn together.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #46757 /* ~"So... seen anything interesting going on?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #46760 /* ~"So... seen anything interesting going on?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #46761 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46762 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #46765 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #46766 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #46758 /* ~The corpse continues to stare at you.~ */
  IF ~~ THEN REPLY #46759 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #46763 /* ~The corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~~ THEN REPLY #46764 /* ~Leave the corpse in peace.~ */ EXIT
END
