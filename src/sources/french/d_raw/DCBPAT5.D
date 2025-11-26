// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT5~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3194 /* ~Je vais peut-être te parler de tunnels. C'est bon ?~ */
  IF ~~ THEN REPLY #3195 /* ~Oui. C'est bien. À moins que ça ne soit mal.~ */ EXIT
END
