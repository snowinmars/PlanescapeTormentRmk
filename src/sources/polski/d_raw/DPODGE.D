// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPODGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPODGE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2891 /* ~Jestem gruby złodziejem kieszonkowym z dzielnicy zamożnych. Możliwe, że spotkałeś już ludzi mojego pokroju w dzielnicy niższych klas.~ */
  IF ~~ THEN REPLY #2892 /* ~Tak. Może pójdę i ich odszukam. Żegnaj.~ */ EXIT
END
