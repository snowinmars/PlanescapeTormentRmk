// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDN_TOMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDN_TOMB~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48901 /* ~This large tomb has a short inscription carved into it.~ */
  IF ~~ THEN REPLY #48902 /* ~Read the inscription.~ */ DO ~SetGlobal("DN_Read_Tomb","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #58918 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58916 /* ~'Here lies the beloved mother of Bah'jin, A-'. The last part of the inscription is illegible.~ */
  IF ~~ THEN REPLY #58917 /* ~Leave.~ */ EXIT
END
