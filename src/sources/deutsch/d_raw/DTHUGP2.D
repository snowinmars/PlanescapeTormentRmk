// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGP2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGP2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #25998 /* ~Der kleine, drahtige Schläger ist in rot- und schwarzgefärbte Lumpen gehüllt. Er sieht dich an, als du dich ihm näherst.~ */
  IF ~~ THEN REPLY #26001 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #26002 /* ~Laß den Schläger in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25999 /* ~Der Mann spricht nicht, er starrt dich nur an. Es sieht nicht so aus, als ob er der Anführer der kleinen Bande ist.~ */
  IF ~~ THEN REPLY #26000 /* ~"Na dann leb wohl."~ */ EXIT
END
