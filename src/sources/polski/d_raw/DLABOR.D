// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLABOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLABOR~

IF ~  !Global("Craddock_Quest","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #9348 /* ~Widzisz chudego mężczyznę - wygląda na zmęczonego. Jego ubranie cuchnie brudem i potem. Wygląda jakby nie mógł złapać tchu. Kiedy podchodzisz, nie zwraca na ciebie uwagi... wygląda jak jeden z tych prostych robotników, którzy pracują na placu targowym.~ */
  IF ~~ THEN REPLY #9349 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~  Global("Craddock_Quest","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #22651 /* ~Kiedy podchodzisz, mężczyzna spogląda do góry... to jeden z tych, z którymi pracowałeś, kiedy zastępowałeś Jhelaia. "O, witaj... dobrze cie widzieć na powrót." Zniża głos. "Z dala trzym sie od kłopotów i na Kradoka miej oko... w gniew on wpada prędko, oj prędko."~ */
  IF ~~ THEN REPLY #22652 /* ~"Dziękuję za ostrzeżenie. Żegnaj."~ */ EXIT
END
