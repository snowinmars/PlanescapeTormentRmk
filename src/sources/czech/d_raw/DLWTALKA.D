// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWTALKA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWTALKA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3038 /* ~I'm perphaps one of the only people in the Lower Ward who actually doesn't mind talking to a stranger. I, of all, am a rare exception.~ */
  IF ~~ THEN REPLY #3039 /* ~No jo. Maybe we'll talk again when you're implemented so I can if you're actually an exception or not.~ */ EXIT
END
