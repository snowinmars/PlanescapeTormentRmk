// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DART02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34188 /* ~Masivní roh z pomačkaného olova, omotaný mosaznými řetězy. Je děsivě pomačkaný, jako by na něj šlápnul dinosaurus. Po celé jeho délce s něj vyčnívají zubaté čepele a roh vypadá jako zbraň pro nějakou gigantickou příšeru. Pod rohem je destička s textem 'Úklidový roh Acheronu.'~ */
  IF ~~ THEN REPLY #34189 /* ~Dej hlavu ke zdi a pokus se do rohu fouknout.~ */ DO ~SetGlobal("View_Art_02","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42670 /* ~Odejít.~ */ DO ~SetGlobal("View_Art_02","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42669 /* ~Zkoušíš to jak nejvíc můžeš, ale nedaří se ti z masivního rohu dostat ani zvuk. Tvé rty se vzdalují od náustku chutnajícího po krvi, kouři a kovu.~ */
  IF ~~ THEN REPLY #42671 /* ~Odejít.~ */ EXIT
END
