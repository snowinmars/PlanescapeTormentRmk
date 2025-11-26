// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBPORTAL~

IF ~  Global("Chaotic_Adyzoel_1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #52724 /* ~Il y a ici une fente dans la roche. Tu devrais pouvoir t'y faufiler - tout juste - mais elle ne semble mener nulle part. Tu remarques qu'à cet endroit, le sol est couvert d'éclats d'obsidienne, ce qui semble être le fait des occasionnelles boules de feu que tu as vu traverser le ciel, explosant sur les roches qui bordent cette vallée.~ */
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #52725 /* ~Ramasse un éclat d'obsidienne, place-le dans ta bouche et mords-le pour qu'il te coupe la langue…~ */ DO ~SetGlobal("BD1000_Port_Active","GLOBAL",1)
SetPortalCursor("Baator_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Baator_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("Portal_Open","GLOBAL",0)
~ GOTO 1
  IF ~~ THEN REPLY #52778 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #52779 /* ~Tandis que le morceau de verre volcanique mord ta langue, un étrange picotement se fait sentir dans ta bouche. La zone autour de la fente miroite, et un portail apparaît soudain…~ */
  IF ~~ THEN REPLY #52780 /* ~Pars.~ */ EXIT
END

IF ~  Global("Chaotic_Adyzoel_1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #68118 /* ~Il y a ici une fente dans la roche. Tu devrais pouvoir t'y faufiler - tout juste - mais elle ne semble mener nulle part. Tu remarques qu'à cet endroit, le sol est couvert d'éclats d'obsidienne, ce qui semble être le fait des occasionnelles boules de feu que tu as vu traverser le ciel, explosant sur les roches qui bordent cette vallée.~ */
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #68119 /* ~Ramasse un éclat d'obsidienne, glisse-le dans ta bouche et mords-le de manière à te couper la langue.~ */ GOTO 3
  IF ~~ THEN REPLY #68121 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #68120 /* ~Tandis que tu te prépares à franchir le portail, tu te rends compte que tu ignores totalement où se trouve celui de la Forteresse des Regrets, de même que la clé permettant de l'ouvrir. Il vaut mieux que tu ne quittes pas Baator tant que tu n'auras pas arraché ces informations au Pilier.~ */
  IF ~~ THEN REPLY #68122 /* ~Pars.~ */ EXIT
END
