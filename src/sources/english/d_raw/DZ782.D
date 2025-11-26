// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ782.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ782~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24708 /* ~This corpse stops and stares blankly at you as you approach. The number "782" is carved into his forehead, and his lips have been stitched closed. The faint smell of formaldehyde emanates from the body.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #24709 /* ~"I'm looking for a key... do you happen to have one?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #24712 /* ~"I'm looking for a key... do you happen to have one?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24713 /* ~Examine the corpse, see if it's carrying a key.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24714 /* ~"It was great talking to you. Farewell."~ */ GOTO 2
  IF ~~ THEN REPLY #24717 /* ~Leave the corpse in peace.~ */ EXIT
  IF ~~ THEN REPLY #24718 /* ~"I wanted to talk to you about the merchant Zac."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #24710 /* ~The corpse makes no response.~ */
  IF ~~ THEN REPLY #24711 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #24715 /* ~This corpse looks like the one with the key. It is holding it tightly in its left hand, its thumb and forefinger locked around it in a death grip. It looks like you'll need to hack the corpse's hand off to free the key.~ */
  IF ~~ THEN REPLY #24716 /* ~"I need that key, corpse... looks like you're not long for this world."~ */ EXIT
END
