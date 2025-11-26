// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCONVSEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCONVSEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46332 /* ~Cette personne se tourne vers toi quand tu les interrompt et te salue d'un hochement de tête poli. "Mes excuses, monsieur, mais je suis occupé. Ne vous en déplaise… au revoir." Ils te gratifient d'une inclinaison du buste avant de reprendre leurs tractations.~ */
  IF ~~ THEN REPLY #46333 /* ~Pars.~ */ EXIT
END
