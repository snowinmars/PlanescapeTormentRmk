// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ965.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ965~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34920 /* ~This corpse is lumbering along a triangular path. Once it reaches one of the corners of the triangle, it pauses, then turns and staggers towards the next corner. It has "965" tattooed on the side of its skull. As you approach, it halts and stares at you.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34921 /* ~~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34924 /* ~~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34925 /* ~~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34926 /* ~~ */ GOTO 2
  IF ~~ THEN REPLY #34929 /* ~~ */ EXIT
  IF ~~ THEN REPLY #34930 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34922 /* ~This corpse is lumbering along a triangular path. Once it reaches one of the corners of the triangle, it pauses, then turns and staggers towards the next corner. It has "965" tattooed on the side of its skull. As you approach, it halts and stares at you.~ */
  IF ~~ THEN REPLY #34923 /* ~"So... why are you walking in a triangle?"~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34927 /* ~The corpse stares at you blankly.~ */
  IF ~~ THEN REPLY #34928 /* ~Leave the corpse in peace.~ */ EXIT
END
