// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSDSTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSDSTL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3170 /* ~This gate is held in place by massive locks and barbs. It looks like it would be impossible to open by any means you have at your disposal.~ */
  IF ~  Global("Curst_key","GLOBAL",7)
~ THEN REPLY #3171 /* ~Speak the syllables Trias gave you.~ */ GOTO 1
  IF ~~ THEN REPLY #68141 /* ~Leave the door alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #68142 /* ~As you intone the first syllable, the gate creaks and groans. The metal barbs twist and pull on the second, and on the third, the gate springs open.~ */
  IF ~~ THEN REPLY #68143 /* ~"That's that, then."~ */ DO ~SetDoorLocked("ar702d03",FALSE)
OpenDoor("AR702d03")
~ EXIT
END
