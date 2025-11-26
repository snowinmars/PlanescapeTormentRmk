// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJANSEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJANSEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67910 /* ~L'homme est couvert de sang et d'ecchymoses. Son visage est tuméfié suite à la bastonnade que lui ont infligée les gardes de Maudith. Il ne dit rien, mais crache une dent et un peu de sang.~ */
  IF ~~ THEN REPLY #67911 /* ~"Dans ce cas, au revoir."~ */ EXIT
END
