// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9372 /* ~Ta kobieta przygląda ci się uważnie, kiedy podchodzisz, po czym kładzie rękę na biodrze i kpi. "Przystojny to ty nie jesteś, co? Może masz trochę brzdęku i chcesz kupić coś od wędrownej handlarki garnków, co?"~ */
  IF ~~ THEN REPLY #9373 /* ~"Nie jestem zainteresowany... ladacznico spod rynny."~ */ EXIT
END
