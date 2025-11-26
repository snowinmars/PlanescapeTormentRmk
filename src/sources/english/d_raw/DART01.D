// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DART01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34187 /* ~The hundreds of chips of translucent green glass which make up this stained-glass window don't appear to be held together by anything, but rather remain free-floating and mysteriously suspended within the iron frame's boundaries. The shards ripple and move in slow waves, causing bizarre patterns to fluctuate across the window's surface as various portions of it refract the galleria's light in different directions. A small placard beside the window reads 'Arcadian Stained-Glass Window.'~ */
  IF ~~ THEN REPLY #42709 /* ~Touch the glass.~ */ DO ~SetGlobal("View_Art_01","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42710 /* ~Leave.~ */ DO ~SetGlobal("View_Art_01","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42706 /* ~You reach out to touch the undulating glass shards, but find you cannot do so... your hand stops just short of the surface of the glass.~ */
  IF ~~ THEN REPLY #42714 /* ~Punch the glass.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sglass_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~~ THEN REPLY #42717 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42708 /* ~You succeed only in bruising your knuckles; the glass may as well be sheet-iron.~ */
  IF ~~ THEN REPLY #42718 /* ~Leave.~ */ EXIT
END
