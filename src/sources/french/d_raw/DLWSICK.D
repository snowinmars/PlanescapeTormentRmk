// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWSICK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWSICK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3030 /* ~Je suis un habitant malade du Bas Quartier. J'ai une histoire fascinante à te raconter, mais je suis trop occupé à tousser pour te la dire maintenant.~ */
  IF ~~ THEN REPLY #3031 /* ~Alors, c'est peut-être mieux comme ça.~ */ EXIT
END
