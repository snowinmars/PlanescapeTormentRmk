// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJARCK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJARCK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3071 /* ~Je suis Jarckel à Trois Têtes. Théoriquement, tu en auras trois comme moi et tu recevras des énigmes en fonction des boissons que tu me donnes. Je te donnerai peut-être quelque chose de bien en échange.~ */
  IF ~~ THEN REPLY #3368 /* ~Peut-être ? Et moi je peux peut-être allonger un coup de poing dans ta sale tronche d'humain miteux et zombifié.~ */ EXIT
  IF ~~ THEN EXIT
END
