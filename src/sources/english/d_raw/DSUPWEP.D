// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSUPWEP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSUPWEP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #55077 /* ~This weapon appears to be made of an unusual metal. Examining it reveals that it is constructed of one solid piece of metal rather than a blade inserted into a hilt. As you ponder this the blade begins to shift and change in your hand. It looks as if it is trying to break free of its current form.~ */
  IF ~~ THEN REPLY #55079 /* ~Will the blade to change.~ */ EXIT
END
