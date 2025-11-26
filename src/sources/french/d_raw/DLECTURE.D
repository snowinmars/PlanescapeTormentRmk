// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLECTURE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLECTURE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50862 /* ~La personne se tourne vers toi et te lance un regard quelque peu contrarié. "J'écoute la conférence, si tu permets. Et j'aimerais que tu aies la gentillesse de me le laisser faire tranquillement. Au revoir."~ */
  IF ~~ THEN REPLY #50863 /* ~Pars.~ */ EXIT
END
