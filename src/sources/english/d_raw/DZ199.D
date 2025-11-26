// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ199.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ199~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34975 /* ~This reanimated corpse carries with it the stench of charred meat and burning textiles. Fairly fresh scorch marks run the length of its right side; perhaps it stood too close to a fire and began to smolder. The number "199" has been etched onto its forehead and its lips are stitched together.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34976 /* ~"So... seen anything interesting going on?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34979 /* ~"So... seen anything interesting going on?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34980 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34981 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #34984 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #34985 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34977 /* ~The corpse continues to stare at you.~ */
  IF ~~ THEN REPLY #34978 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34982 /* ~The corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~~ THEN REPLY #34983 /* ~Leave the corpse in peace.~ */ EXIT
END
