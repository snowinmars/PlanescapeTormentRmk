// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ626.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ626~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35050 /* ~The left side of this woman's face looks as if it was caved in with a club, and her flesh sags in bruised, swollen clumps over her ruined skull. The number "626" has been stitched onto the corpse's right cheek, just below the eye.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35051 /* ~"Uh... nasty wound you've got there."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35068 /* ~"Uh... nasty wound you've got there."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35069 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35070 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35075 /* ~"It was great talking to you. Farewell."~ */ EXTERN ~DMORTE~ 338
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35076 /* ~Leave the corpse in peace.~ */ EXTERN ~DMORTE~ 338
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35077 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35078 /* ~Leave the corpse in peace.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35079 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35080 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35052 /* ~The corpse continues to stare at you with its one good eye.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35053 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 338
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35066 /* ~"Farewell then."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35067 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35071 /* ~This corpse does not stir. It looks like it is too far gone to answer any of your questions.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35072 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 338
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35073 /* ~"Farewell then."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35074 /* ~"Farewell then."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35081 /* ~This corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
END
