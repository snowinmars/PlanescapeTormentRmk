// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ732.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ732~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6529 /* ~This doddering corpse has had its eyes sewn shut as well as its mouth, and the number "732" is carved into its brow. The threadwork that keeps its ocular cavities sealed looks extremely old... you wonder if the eyes were sewn shut before or after the man's death.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6533 /* ~"Sorry about taking that book from you... it just looked too interesting to pass up."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6532 /* ~"Sorry about taking that book from you... it just looked too interesting to pass up."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6534 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6535 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6536 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #6537 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6530 /* ~The corpse continues to stare at you.~ */
  IF ~~ THEN REPLY #6538 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6531 /* ~The corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~~ THEN REPLY #6539 /* ~Leave the corpse in peace.~ */ EXIT
END
