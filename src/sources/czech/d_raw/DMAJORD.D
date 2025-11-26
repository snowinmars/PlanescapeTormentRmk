// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAJORD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAJORD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #44696 /* ~Vidíš kostku s dvěma rukama, dvěma nohama a dvěma malými křídly. Na přední části kostky je namalovaný pohyblivý obličej. Když ses přiblížil, stvoření na tebe zaměřilo oči.~ */
  IF ~~ THEN REPLY #44697 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #44698 /* ~Ignoruj stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #44699 /* ~Stvoření si tě bez výrazu prohlíží. "Zdravím, dobrodruhu. Vítej do Rubikonu, konstruktu dungeonu. Děkujeme ti, že jsi zvolil pro své zážitky dungeon Rubikonu. Do Rubikonu se dostaneš těmito dveřmi."~ */
  IF ~~ THEN REPLY #44700 /* ~"Co je to Rubikon?"~ */ GOTO 2
  IF ~~ THEN REPLY #44701 /* ~"Co je to konstrukt dungeonu?"~ */ GOTO 3
  IF ~~ THEN REPLY #44702 /* ~"No nic, já musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #44703 /* ~Stvoření na tebe jenom zírá. Odpovědi se asi nedočkáš.~ */
  IF ~~ THEN REPLY #44704 /* ~"Co je to konstrukt dungeonu?"~ */ GOTO 3
  IF ~~ THEN REPLY #44705 /* ~"No nic, já musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #44706 /* ~Stvoření zamrkalo, ale jinak nedalo nijak najevo, že slyšelo tvou otázku.~ */
  IF ~~ THEN REPLY #44708 /* ~"Co je to Rubikon?"~ */ GOTO 2
  IF ~~ THEN REPLY #44709 /* ~"No nic, já musím jít. Sbohem."~ */ EXIT
END
