// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ569.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ569~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24575 /* ~This shambling corpse looks like it has been dead for several years. The skin along its forehead has peeled back, revealing its chalk-white skull. Someone has chiseled the number "569" into the exposed bone. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #24576 /* ~"I'm looking for a key... do you happen to have one?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #24579 /* ~"I'm looking for a key... do you happen to have one?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24580 /* ~"So... seen anything interesting going on?"~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24581 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 2
  IF ~~ THEN REPLY #24584 /* ~Use Stories-Bones-Tell on the corpse.~ */ EXIT
  IF ~~ THEN REPLY #24585 /* ~Examine the corpse, see if it's carrying a key.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #24577 /* ~The corpse stares at you in silence.~ */
  IF ~~ THEN REPLY #24578 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #24582 /* ~The corpse does not stir. It looks like it is too far gone to answer any of your questions.~ */
  IF ~~ THEN REPLY #24583 /* ~Leave the corpse in peace.~ */ EXIT
END
