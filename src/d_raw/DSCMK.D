// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCMK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCMK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3072 /* ~Ты видишь неряшливого лохматого мужчину. От него сильно несет алкоголем. «Да? Чего тебе? — он пододвигает поближе и осматривает тебя сверху донизу. — Похоже, тебе нужен ЛЕКАРЬ!» Он громко хохочет над своей несмешной шуткой, обдавая тебя тошнотворной смесью запахов дешевого пойла и плохо пережеванной пищи.~ */
  IF ~~ THEN REPLY #3372 /* ~«Кто ты?»~ */ EXIT
END
