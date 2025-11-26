// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUSHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUSHF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9352 /* ~Diese Frau ignoriert dich, als du näherkommst. Sie scheint an den Waren, die die Händler feilbieten, sehr interessiert zu sein.~ */
  IF ~~ THEN REPLY #9353 /* ~Laß sie ihren Einkauf machen.~ */ EXIT
END
