// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38097 /* ~Všechen život ve světě vychází z té prázdnoty v mém těle. Svět ať shoří, sféry ať shoří, jen mi dejte život! Zničím tento život, zlomím jej, rozbiju a utopím v krvi, aby jej už nikdo nemohl žít. Nechat vše shořet, neboť já nemohu zemřít.~ */
  IF ~  Global("Inscr_1","GLOBAL",0)
~ THEN REPLY #53654 /* ~Prozkoumej panel.~ */ GOTO 1
  IF ~~ THEN REPLY #53652 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53656 /* ~Panel je vytvořený tak, že se dá zatlačit do zdi. Alespoň máš takový pocit.~ */
  IF ~~ THEN REPLY #53657 /* ~Zatlač na panel.~ */ DO ~SetGlobal("Inscr_1","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53658 /* ~Nechej panel být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53659 /* ~Zatlačil jsi na panel, který hladce zajel do zdi. Ze sarkofágu za tebou se ozvalo cvaknutí.~ */
  IF ~~ THEN REPLY #53660 /* ~Odvrať se od nápisu.~ */ EXIT
END
