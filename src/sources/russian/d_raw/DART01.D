// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DART01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34187 /* ~Сотни кусочков прозрачного зеленого стекла, из которых состоит это витражное окно, как будто ничем не скреплены, и скорее свободно висят в воздухе, чудесным образом удерживаемые в железной раме. Осколки медленно колышутся и создают замысловатые узоры за окном, на все лады преломляя освещение галереи в разных направлениях. Небольшая табличка возле окна гласит: «Аркадийские витражи».~ */
  IF ~~ THEN REPLY #42709 /* ~Прикоснуться к стеклу.~ */ DO ~SetGlobal("View_Art_01","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42710 /* ~Уйти.~ */ DO ~SetGlobal("View_Art_01","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42706 /* ~Ты пытаешься прикоснуться к колышущимся осколкам стекла, но обнаруживаешь, что не можешь этого сделать... твоя рука останавливается у самой поверхности окна.~ */
  IF ~~ THEN REPLY #42714 /* ~Стукнуть по стеклу.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sglass_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~~ THEN REPLY #42717 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42708 /* ~Тебе удается лишь расшибить себе костяшки пальцев: это стекло — все равно что лист железа.~ */
  IF ~~ THEN REPLY #42718 /* ~Уйти.~ */ EXIT
END
