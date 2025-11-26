// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ROBTEST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~ROBTEST~

IF ~  False()
~ THEN BEGIN 0 // from:
  SAY #166 /* ~Silver-Headed Hammer~ */
  IF ~~ THEN REPLY #167 /* ~Silver-Headed Hammer~ */ GOTO 1
  IF ~~ THEN REPLY #168 /* ~SILVER-HEADED HAMMER
Damage: 1-4 Crushing 
Speed: 6
Weight: 6
Proficiency: Hammers
Usable only by Fighters

This is a small war hammer. The head of the hammer is decorated with a thin layer of silver that is dented and scratched in many places. Perhaps the hammer was once used for ceremonial purposes.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #170 /* ~Battle Axe~ */
  IF ~~ THEN REPLY #172 /* ~EMBALMING FLUID
Special:
   +2-8 to Hit Points
   +1 to Armor Class
Weight: 1
Usable only by the Nameless One and Morte

This is a sealed jar of embalming fluid. It is used as a preservative for dead bodies. As an added benefit, the smell of the fluid is more than sufficient to mask the smell of any rotting bodies it is used on. Effects are temporary.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #171 /* ~LOCKPICKS
+5% to Open Locks
Weight: 0
Usable by Thieves only.

These metal instruments are used to open stubborn locks.~ */
  IF ~~ THEN REPLY #173 /* ~BATTLE AXE
Damage: 1-8 Slashing
Speed: 7
Weight: 7
Proficiency: Axes
Usable only by Fighters

This huge axe is a double-bladed weapon topped with a spike. The edges are razor-sharp, and the long handle allows the wielder to put considerable force into the swing.~ */ EXIT
END
