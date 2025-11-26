// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR8.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR8~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38111 /* ~Boj se jmen. Jména mají sílu v identitě. Ale jiní mohou jména používat jako zbraně. Jména použijí, aby tě sledovali přes všechny sféry. Zůstaň bezejmenným a budeš v bezpečí. ~ */
  IF ~~ THEN REPLY #53764 /* ~Pokračuj.~ */ GOTO 1
  IF ~~ THEN REPLY #53765 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53766 /* ~Jsem Bezejmenný.~ */
  IF ~  Global("Inscr_8","GLOBAL",0)
~ THEN REPLY #53767 /* ~Prozkoumej panel.~ */ GOTO 2
  IF ~~ THEN REPLY #53768 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53769 /* ~Panel je kvalitně udělaný, rozhodně práce mistra. Máš pocit, že by se dal zatlačit do zdi.~ */
  IF ~~ THEN REPLY #53770 /* ~Zatlač na panel.~ */ DO ~SetGlobal("Inscr_8","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #53771 /* ~Nechej panel být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53772 /* ~Bez jakéhokoli zvuku panel hladce zajel do zdi. Za sebou slyšíš cvaknutí, pocházející zřejmě ze sarkofágu.~ */
  IF ~~ THEN REPLY #53773 /* ~Odvrať se od nápisu.~ */ EXIT
END
