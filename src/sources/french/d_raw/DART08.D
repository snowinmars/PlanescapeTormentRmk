// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART08~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34200 /* ~Le tableau représente de hautes falaises sombres se détachant sur un ciel rouge sang. Des silhouettes semblent se cacher entre les rochers, mais dès que tu plisses les yeux pour essayer de les voir, les images s'évanouissent. Une pancarte annonce : 'Pillards de l'Outreterre'.~ */
  IF ~~ THEN REPLY #42672 /* ~Pars.~ */ DO ~SetGlobal("View_Art_08","AR0608",1)
~ EXIT
END
