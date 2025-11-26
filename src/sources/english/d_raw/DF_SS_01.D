// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_01~

IF ~  !Global("S_Stone","AR0603",1)
!Global("S_Stone","AR0603",8)
~ THEN BEGIN 0 // from:
  SAY #47094 /* ~This is an unusual, greenish-yellow stone. It is securely fastened to the pedestal that it rests upon.~ */
  IF ~~ THEN REPLY #47095 /* ~Leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",1)
~ THEN BEGIN 1 // from:
  SAY #47096 /* ~This greenish-yellow stone is the one that the clerk directed you towards. Within it lies the experience 'unavoidable pain.'~ */
  IF ~~ THEN REPLY #47097 /* ~Begin the sensation.~ */ GOTO 2
  IF ~~ THEN REPLY #47098 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47099 /* ~The experience is a short and violent one: struggling with another, slightly stronger man on the edge of a blazing-hot stream of molten lava, your weapon-hand is slowly, inexorably forced ever closer to the magma. Beads of sweat evaporate the instant they appear; the hair on the back of your hand blackens and smolders above the awesome heat. Finally, your howls of suffering echoing from the canyon walls around you, your hand and the axe it holds plunges into the lava and chars to ash in a few, agonizing seconds.~ */
  IF ~  Global("Sensation01","AR0603",0)
~ THEN REPLY #47100 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation01","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation01","AR0603",1)
~ THEN REPLY #47101 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",8)
~ THEN BEGIN 3 // from:
  SAY #47102 /* ~This greenish-yellow stone is the one that the clerk directed you towards. Within it lies the experience 'psychosis.'~ */
  IF ~~ THEN REPLY #47103 /* ~Begin the sensation.~ */ GOTO 4
  IF ~~ THEN REPLY #47104 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47105 /* ~The experience is a strange one, very disturbing... you've the point of a knife pressed to someone's throat, your hand clamped over their mouth and breath hot and heavy in their face. You begin to stab them... slowly. The knife dimples their skin, and eventually breaks it. There is the hot rush of blood over your forearm, the sound of strangled respiration, a horrible sense of perverted glee... and it is over.~ */
  IF ~  Global("Sensation08","AR0603",0)
~ THEN REPLY #47106 /* ~Stir yourself from the experience.~ */ DO ~SetGlobal("Sensation08","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation08","AR0603",1)
~ THEN REPLY #47107 /* ~Stir yourself from the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47108 /* ~The experience seems to have stirred some long forgotten, vaguely similar memory in your own mind... you feel as if you've gained something from using the sensory stone.~ */
  IF ~~ THEN REPLY #47109 /* ~Leave.~ */ EXIT
END
