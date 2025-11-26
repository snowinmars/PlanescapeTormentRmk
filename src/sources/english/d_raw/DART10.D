// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DART10~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34202 /* ~This painting depicts a shore-scene, with a wide, reddish-orange sun setting behind a peninsula or large jetty. The scene, though unoriginal, is breathtaking - the play of the fading daylight across the water is captured perfectly - but staring at the painted sun for any length of time makes your eyes ache. A placard reads 'Surface of Thalasia.'~ */
  IF ~~ THEN REPLY #42674 /* ~Touch the painting.~ */ DO ~SetGlobal("View_Art_10","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42675 /* ~Leave.~ */ DO ~SetGlobal("View_Art_10","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42676 /* ~Oddly enough, there is nothing unusual about the surface of the painting.~ */
  IF ~~ THEN REPLY #42677 /* ~Leave.~ */ EXIT
END
