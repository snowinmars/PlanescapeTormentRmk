// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR5~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38105 /* ~Ztratil jsem mnoho životů, kvůli mému vrahovi. Nemůžu jej zmást, musím ho zabít. Zkoušel jsem ho svést ze stopy. Zanechával jsem falešná těla, upravená tak, aby si myslel, že uspěl. Procházel jsem vnější sféry, a doufal, že vzdálenost bude mým štítem. Postavil jsem tuto hrobku plnou pastí, abych se alespoň pokusil zavraždit vraha. Schoval jsem se.~ */
  IF ~~ THEN REPLY #53727 /* ~Pokračuj.~ */ GOTO 1
  IF ~~ THEN REPLY #53728 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53729 /* ~Vše, co jsem získal, je čas. Útoky nakonec zase začaly, teď ještě s větší zuřivostí. Klam je zbytečný. Vrah se nějak vždy dozví, že žiju. A ať už se schovám kdekoli na Sférách, najde mě... nakonec.~ */
  IF ~  Global("Inscr_5","GLOBAL",0)
~ THEN REPLY #53730 /* ~Prozkoumej panel.~ */ DO ~SetGlobal("Know_Player_Killer","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53731 /* ~Odvrať se od nápisu.~ */ DO ~SetGlobal("Know_Player_Killer","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53732 /* ~Máš pocit, že by se panel dal zatlačit do zdi...~ */
  IF ~~ THEN REPLY #53733 /* ~Zatlač na panel.~ */ DO ~SetGlobal("Inscr_5","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #53734 /* ~Nechej panel být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53735 /* ~Panel hladce zajel do zdi. Ze sarkofágu za tebou slyšíš cvaknutí.~ */
  IF ~~ THEN REPLY #53736 /* ~Odvrať se od nápisu.~ */ EXIT
END
