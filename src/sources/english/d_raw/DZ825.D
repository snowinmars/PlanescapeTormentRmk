// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ825.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ825~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24564 /* ~This corpse's head lolls back and forth on its shoulders... judging from the angle of the neck, it looks like this man may have been hanged. The number "825" has been painted on the side of his head. ~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #24565 /* ~"I'm looking for a key... do you happen to have one?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #24568 /* ~"I'm looking for a key... do you happen to have one?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24569 /* ~"So... seen anything interesting going on?"~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24570 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 2
  IF ~~ THEN REPLY #24573 /* ~Use Stories-Bones-Tell on the corpse.~ */ EXIT
  IF ~~ THEN REPLY #24574 /* ~Examine the corpse, see if it's carrying a key.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #24566 /* ~The corpse stares at the ground and does not answer.~ */
  IF ~~ THEN REPLY #24567 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #24571 /* ~The corpse does not stir. It looks like it is too far gone to answer any of your questions.~ */
  IF ~~ THEN REPLY #24572 /* ~Leave the corpse in peace.~ */ EXIT
END
