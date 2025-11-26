// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3186 /* ~Je suis un client du Bar de Maudith. Plus tard, il changera de nom.~ */
  IF ~~ THEN REPLY #3187 /* ~Bien, bien.~ */ EXIT
END
