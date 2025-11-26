// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUSHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUSHM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9350 /* ~Der Mann scheint völlig vertieft in die Betrachtung der Waren zu sein, die von den Händlern feilgeboten werden. Er schenkt dir keinerlei Aufmerksamkeit, als du näherkommst.~ */
  IF ~~ THEN REPLY #9351 /* ~"Äh... tut mir leid, wenn ich dich störe."~ */ EXIT
END
