// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : MONJUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~MONJUG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #50429 /* ~Это обыкновенный тяжелый металлический кувшин с пробкой на шарнире. Несмотря на вполне обычный внешний вид, тебе совершенно не хочется прикасаться к этой вещи, как будто она может тебя укусить. Тебе сказали, что внутри кувшина заточен какой-то монстр, однако в горлышке кувшина видна только чернильная темнота.~ */
  IF ~~ THEN REPLY #50432 /* ~Перевернуть кувшин: вдруг что-нибудь выпадет.~ */ GOTO 1
  IF ~~ THEN REPLY #50433 /* ~Спрятать кувшин.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50434 /* ~Сперва ничего не происходит... затем ужасная черная жидкость начинает пузыриться, вытекая из горлышка кувшина и образуя на земле лужу дымящейся маслянистой мерзости. Кувшин начинает растворяться у тебя в руках, а лужа — волноваться и вздыматься, образуя высокое отвратительное существо...~ */
  IF ~~ THEN REPLY #50435 /* ~«Что за?..»~ */ DO ~CreateCreatureAtFeet("Geherl")
DestroyPartyItem("MonJug",FALSE)
~ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 2 // from:
  SAY #64980 /* ~Это обыкновенный тяжелый металлический кувшин с пробкой на шарнире. Несмотря на вполне обычный внешний вид, тебе совершенно не хочется прикасаться к этой вещи, как будто она может тебя укусить. Тебе сказали, что внутри кувшина заточен какой-то монстр, однако в горлышке кувшина видна только чернильная темнота.~ */
  IF ~~ THEN REPLY #64981 /* ~Перевернуть кувшин: вдруг что-нибудь выпадет.~ */ GOTO 3
  IF ~~ THEN REPLY #64982 /* ~Спрятать кувшин.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64983 /* ~Из горлышка кувшина вытекает ужасная черная жидкость и образует на земле вязкую лужу дерьма. Не считая этого, ничего другого не происходит.~ */
  IF ~~ THEN REPLY #64984 /* ~Выкинуть пустой кувшин.~ */ DO ~DestroyPartyItem("MonJug",FALSE)
~ EXIT
END
