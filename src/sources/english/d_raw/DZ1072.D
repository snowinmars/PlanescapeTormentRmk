// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1072.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1072~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35114 /* ~The smell of formaldehyde emanating from this corpse is particularly strong... it smells like it was applied recently, and with good reason: this corpse appears to be in an advanced stage of decay. Her jaw is missing, and some of the flesh has slid off her skull, revealing the number "1072" chiseled into the bone.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35115 /* ~"I think this one's seen better days..."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35132 /* ~"I think this one's seen better days..."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35133 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35134 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35139 /* ~"It was great talking to you. Farewell."~ */ EXTERN ~DMORTE~ 346
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35140 /* ~Leave the corpse in peace.~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35141 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35142 /* ~Leave the corpse in peace.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35143 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35144 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35116 /* ~The corpse does not respond to your voice - the fact it has no jaw may have something to do with it. Either that, or it simply has nothing to say.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35117 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35130 /* ~"Farewell then."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35131 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35135 /* ~The corpse does not stir. It looks like it is too far gone to answer any of your questions.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35136 /* ~"Farewell then."~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35137 /* ~"Farewell then."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35138 /* ~"Farewell then."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35145 /* ~The corpse does not stir. It looks like it is too far gone to answer any of your questions.~ */
END
