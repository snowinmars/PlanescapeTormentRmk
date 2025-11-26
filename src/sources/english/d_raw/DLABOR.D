// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLABOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLABOR~

IF ~  !Global("Craddock_Quest","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #9348 /* ~You see a lean, tired-looking man. His clothes reek of dirt and sweat, and he looks out of breath. He ignores you as you approach... he looks like one of the common laborers in the marketplace.~ */
  IF ~~ THEN REPLY #9349 /* ~Leave him alone.~ */ EXIT
END

IF ~  Global("Craddock_Quest","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #22651 /* ~This man looks up as you approach... it's one of the men you worked with when you were filling in for Jhelai. "Aye, welcome... good t'see ye' 'gin." He lowers his voice. "Stay outta trouble n' watch Craddock... 'ee's quick t'anger, so he is."~ */
  IF ~~ THEN REPLY #22652 /* ~"Thanks for the warning. Farewell."~ */ EXIT
END
