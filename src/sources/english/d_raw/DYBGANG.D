// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYBGANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DYBGANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46105 /* ~This angry-looking young man appears less the thug and more like someone who's trying to look like one. He smirks as you approach him. "'Pike off,' you 'berk!' You can speak to the 'high-up blood,' but I'm not 'chanting' with you."~ */
  IF ~~ THEN REPLY #46106 /* ~"Eh... all right. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #46107 /* ~Leave.~ */ EXIT
END
