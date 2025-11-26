// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMONJUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMONJUG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #50429 /* ~Toto je těžký, prostě vyhlížející kovový džbán se sklápějící pokličkou. I přes jeho obyčejný vzhled cítíš vnitřní nechuť dotknout se té věci, jako by tě měla kousnout. Bylo ti řečeno, že je uvnitř polapen nějaký druh nestvůry - ale pohled do ústí džbánu neodhaluje nic kromě inkoustové černoty.~ */
  IF ~~ THEN REPLY #50432 /* ~Převrať džbán, jestli z něj něco vyleze.~ */ GOTO 1
  IF ~~ THEN REPLY #50433 /* ~Odlož džbán.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50434 /* ~Zpočátku se nic nedělo... ale potom začala z ústí džbánu vybublávat černá lepkavá tekutina a vytvářela na zemi slizovitou kaluž vřícího asfaltovitého kalu. Džbán se začal ve tvých rukou tavit a kaluž se započala svíjet, bušit a růst ve vysokou příšernou stvůru...~ */
  IF ~~ THEN REPLY #50435 /* ~"Co to...?"~ */ DO ~CreateCreatureAtFeet("Geherl")
DestroyPartyItem("MonJug",FALSE)
~ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 2 // from:
  SAY #64980 /* ~Tohle je těžký, hladce vypadající, kovový džbán s odklápějícím víkem. Navzdory obyčejnému vzhledu, cítíš odpor k téhle věci, jako by tě mohla kousnout. Bylo ti řečeno, že je uvnitř chycen nějaký druh příšery - ale pohled do hrdla džbánu neodhalil nic než černočernou tmu.~ */
  IF ~~ THEN REPLY #64981 /* ~Převrhni džbán a pozoruj jestli z něho něco nevyleze.~ */ GOTO 3
  IF ~~ THEN REPLY #64982 /* ~Odlož džbán pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64983 /* ~Černá hustá kapalina vytéká z hrdla džbánu a vytváří na zemi slizkou loužičku bláta. Kromě tohoto nepořádku se nic jiného nestalo.~ */
  IF ~~ THEN REPLY #64984 /* ~Odhoď prázdný džbán.~ */ DO ~DestroyPartyItem("MonJug",FALSE)
~ EXIT
END
