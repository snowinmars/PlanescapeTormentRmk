// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCANNON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCANNON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #66183 /* ~This enormous device thrums with power. It looks like a gigantic flower, created, not grown, and adorned with metal bulbs and flanges. A bewildering array of knobs, gauges, and vents baffle your eye.~ */
  IF ~  Global("Sabotage","GLOBAL",4)
~ THEN REPLY #66188 /* ~Sabotage the firing mechanism at the base of the machine.~ */ DO ~SetGlobal("Sabotage","GLOBAL",5)
~ GOTO 1
  IF ~~ THEN REPLY #66189 /* ~Play with the controls.~ */ GOTO 2
  IF ~~ THEN REPLY #66190 /* ~Leave it alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66185 /* ~The firing mechanism feels dangerously unsteady. With a quick yank, you tear it loose from its moorings. The change in the vibration cycle of the roaring machine is subtle, but you can hear it starting to vary from its previous stable hum. You had better leave.~ */
  IF ~~ THEN REPLY #66191 /* ~Leave.~ */ DO ~TeleportParty("AR0502",[963.1377],14)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #66186 /* ~You don't seem to have any success in changing anything right now.~ */
  IF ~~ THEN REPLY #66192 /* ~Leave.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sabotage","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #66187 /* ~The powerful hum of the machine is rapidly building toward a crescendo. You had best leave before the explosion of the machine tears you apart.~ */
  IF ~~ THEN REPLY #66193 /* ~Leave.~ */ DO ~TeleportParty("AR0502",[963.1377],14)
~ EXIT
END
