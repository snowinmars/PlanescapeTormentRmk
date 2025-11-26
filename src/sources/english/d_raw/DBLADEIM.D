// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBLADEIM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBLADEIM~

IF ~  !Global("Current_Area","GLOBAL",1200)
!Global("Current_Area","GLOBAL",1201)
!Global("Current_Area","GLOBAL",1202)
!Global("Current_Area","GLOBAL",1204)
!Global("Current_Area","GLOBAL",1203)
~ THEN BEGIN 0 // from:
  SAY #55069 /* ~This strange blade is an ugly looking weapon, shaped so that it resembles one of the symbols on your left arm. Black veins worm their way across the surface of the metal, and the edge looks so dull that it couldn't even cut warm butter. It feels slightly warm to the touch.~ */
  IF ~~ THEN REPLY #55071 /* ~Leave the blade alone.~ */ EXIT
END

IF ~  GlobalLT("Current_Area","GLOBAL",1205)
GlobalGT("Current_Area","GLOBAL",1199)
~ THEN BEGIN 1 // from:
  SAY #63968 /* ~This strange blade is an ugly looking weapon, shaped so that it resembles one of the symbols on your left arm. When you first held it, it was inert, but now black veins flow across the surface of the metal in tiny streams, and the edge has become razor-sharp. The blade is pulsing heavily in your grip, like some kind of diseased heart.~ */
  IF ~~ THEN REPLY #63969 /* ~Cut your throat with the weapon.~ */ GOTO 2
  IF ~~ THEN REPLY #63970 /* ~Sheathe the weapon.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63971 /* ~You drag the edge of the blade across your throat, and its edge bites into your neck...~ */
  IF ~  Exists("Trans")
~ THEN REPLY #63972 /* ~Fall into darkness...~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
StartMovie("T1Death")
SetGlobal("Immortal_Blade_Death","GLOBAL",1)
SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
  IF ~  !Exists("Trans")
~ THEN REPLY #63973 /* ~Fall into darkness...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
SetAnimState(Protagonist,ANIM_MIMEDIE)
~ EXIT
END
