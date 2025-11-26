// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ79.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ79~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34942 /* ~The corpse's meaty head was clearly severed at some point and hastily sewn back on. Several different sets of stitching - all in various states of unraveling - seem to indicate that the head is constantly being knocked back off and reattached during the course of its work. A number - "79" - has been cut into its temple, circumscribed by a fanged circle that appears to have been branded on its forehead.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34943 /* ~"So... seen anything interesting going on?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34946 /* ~Examine the fanged circle.~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34947 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34948 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #34951 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #34952 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34944 /* ~The corpse continues to stare at you.~ */
  IF ~~ THEN REPLY #34945 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34949 /* ~The corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~~ THEN REPLY #34950 /* ~Leave the corpse in peace.~ */ EXIT
END
