// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART13.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DART13~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34205 /* ~This looks to be a subterranean landscape... a massive cavern interior filled with colorful, faintly luminescent, gigantic fungi. A placard reads 'Vale Beneath Clangeddin.'~ */
  IF ~~ THEN REPLY #42680 /* ~Leave.~ */ DO ~SetGlobal("View_Art_13","AR0608",1)
~ EXIT
END
