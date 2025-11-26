// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGP2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGP2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #25998 /* ~This small, wiry thug is swathed in rags, dyed red and black. He glances at you as you approach. ~ */
  IF ~~ THEN REPLY #26001 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #26002 /* ~Leave the thug alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25999 /* ~The man does not speak; he only glares at you. It doesn't look like he is the leader of this small band.~ */
  IF ~~ THEN REPLY #26000 /* ~"Farewell, then."~ */ EXIT
END
