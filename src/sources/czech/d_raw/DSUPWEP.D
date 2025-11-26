// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSUPWEP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSUPWEP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #55077 /* ~Zbraň je vytvořena z nezvyklého kovu. Je vyrobená z jediného kusu kovu, namísto klasického ostří vloženého do jílce. Když nad tím přemýšlíš, zbraň se ti v ruce začíná kroutit a měnit. Jakoby se snažila osvobodit ze své momentální formy.~ */
  IF ~~ THEN REPLY #55079 /* ~Přej si, ať se zbraň změní.~ */ EXIT
END
