// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSUPWEP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSUPWEP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #55077 /* ~Diese Waffe scheint aus einem besonderen Metall geschmiedet zu sein. Bei genauerem Hinsehen entdeckst du, daß sie nicht aus einer Klinge und einem Griff besteht, sondern aus einem Stück gefertigt zu sein scheint. Während du sie betrachtest, beginnt die Waffe in deiner Hand, ihre Form zu verändern. Es sieht aus, als wolle sie aus ihrer momentanen Form ausbrechen.~ */
  IF ~~ THEN REPLY #55079 /* ~Bring die Klinge durch Willenskraft dazu, sich zu verändern.~ */ EXIT
END
