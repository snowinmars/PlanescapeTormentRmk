// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGISCORL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGISCORL~

IF ~  Global("Giscorl","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #20655 /* ~Перед тобой болезненного вида торговец с серо-красной щетиной на подбородке. Он одет в несколько слоев ярко раскрашенных одежд, из-за чего он становится похожим на флаг с ручками и ножками. Он коротко кивает при общении с тобой.~ */
  IF ~~ THEN REPLY #20656 /* ~«Приветствую».~ */ DO ~SetGlobal("Giscorl","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21068 /* ~«Ты Гискорл?»~ */ DO ~SetGlobal("Giscorl","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #21069 /* ~Не обращать внимания на торговца, пройтись по рынку.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #21056 /* ~«Я, Гискорл». Он кивает и разводит свои дрожащие руки. На запястьях и ладонях ты замечаешь сетку черных шрамов... словно чем-то выжженных.~ */
  IF ~~ THEN REPLY #21070 /* ~«Э-э-э, что ты продаешь?»~ */ DO ~SetGlobal("Giscorl","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #21071 /* ~«Э-э-э, как ты поранил свои руки?»~ */ DO ~SetGlobal("Giscorl","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21072 /* ~«Мне нужно забрать кое-чье белье... Меббет... повитухи... с площади Старьевщиков?»~ */ GOTO 6
  IF ~~ THEN REPLY #21073 /* ~«Извини за беспокойство. Прощай».~ */ EXIT
END

IF ~  GlobalGT("Giscorl","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #21057 /* ~Гискорл поворачивается к тебе. «Я, Гискорл». Он кивает и разводит свои шрамные руки. «Я, Гискорл».~ */
  IF ~  Global("Giscorl","GLOBAL",2)
~ THEN REPLY #21074 /* ~«Можно посмотреть, что у тебя есть?»~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~  Global("Giscorl","GLOBAL",1)
~ THEN REPLY #21075 /* ~«Э-э-э, а чем ты занимаешься?»~ */ GOTO 3
  IF ~~ THEN REPLY #21076 /* ~«Э-э-э, как ты поранил свои руки?»~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21077 /* ~«Мне нужно забрать кое-чье белье... Меббет... повитухи... с площади Старьевщиков?»~ */ GOTO 6
  IF ~~ THEN REPLY #21078 /* ~«На сегодня ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1
  SAY #21058 /* ~«Гискорл покупает одежду». Голос Гискорла звучит размеренно и монотонно, словно тиканье часов. «Гискорл продает одежду, стирает одежду, штопает одежду и, — он указывает трясущимися руками на свои бесчисленные слои одежды, — носит одежду».~ */
  IF ~~ THEN REPLY #21079 /* ~«Можно посмотреть, что у тебя есть?»~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #21080 /* ~«Э-э-э, как ты поранил свои руки?»~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21081 /* ~«Понятно. Послушай, мне нужно забрать кое-чье белье... Меббет... повитухи... с площади Старьевщиков?»~ */ GOTO 6
  IF ~~ THEN REPLY #21082 /* ~«На сегодня ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.2 3.1 12.1
  SAY #21059 /* ~Похоже, Гискорл не слышит тебя. Он продолжает, все так же монотонно и размеренно: «Гискорл покупает одежду, продает одежду, стирает одежду, штопает одежду и, — он указывает трясущимися руками на свои бесчисленные слои одежды, — носит одежду».~ */
  IF ~~ THEN REPLY #21083 /* ~«Можно посмотреть, что у тебя есть?»~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #21084 /* ~«Я спросил, как ты поранил свои руки?»~ */ GOTO 5
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21085 /* ~«Понятно. Послушай, мне нужно забрать кое-чье белье... Меббет... повитухи... с площади Старьевщиков?»~ */ GOTO 6
  IF ~~ THEN REPLY #21086 /* ~«На сегодня ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #21060 /* ~Голос Гискорла начинает дрожать. «Гискорл п-покупает одежду, п-продает одежду, с-стирает одежду, ш-штопает одежду и...» — он снова указывает на себя, но его руки настолько сильно трясутся, что он не может закончить фразу.~ */
  IF ~~ THEN REPLY #21087 /* ~«Неважно. Можно посмотреть, что у тебя есть?»~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21088 /* ~«Э-э-э... неважно. Послушай, мне нужно забрать кое-чье белье... Меббет... повитухи... с площади Старьевщиков?»~ */ GOTO 6
  IF ~~ THEN REPLY #21089 /* ~«Извини за беспокойство. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.3 3.2 4.2 5.1 12.2
  SAY #21061 /* ~Гискорл моргает. «Постиранную одежду?»~ */
  IF ~~ THEN REPLY #21090 /* ~«Да, Меббет... с площади Старьевщиков?»~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #21062 /* ~«Э-э-э? Площадь? Старьевщиков? — он пересчитывает свои пальцы, словно что-то считая. — Я знаю. Я помню». Он поднимает дрожащий палец, словно прося тебя подождать.~ */
  IF ~~ THEN REPLY #21091 /* ~Подождать, пока он не принесет белье.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
AddexperienceParty(500)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #21063 /* ~Он возвращается с бесформенной массой обветшалого зеленого тряпья, тонкого как бумага, и все же настолько жесткого, что его можно использовать вместо фанеры. Тряпье настолько сильно напитано зеленым крахмалом, что, похоже, понадобились бы годы, чтобы размочить его.~ */
  IF ~~ THEN REPLY #21092 /* ~«Э-э-э... сколько раз ты стирал их?»~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #21064 /* ~«Гискорл стирает одежду, крахмалит одежду каждые пять дней, стирает одежду, крахмалит одежду каждые пять дней, — в его глазах виден блеск. — Гискорл стирает много лет. Всегда крахмалит одежду каждые пять дней. Ритуал Гискорла».~ */
  IF ~~ THEN REPLY #21093 /* ~«Но они же совершенно загублены».~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #21065 /* ~«Стирает одежду. Ритуал Гискорла, — его голос безжизненный, прямо как у зомби. — *Должен* крахмалить одежду каждые пять дней».~ */
  IF ~~ THEN REPLY #3014 /* ~«Зачем делать это каждые пять дней, в чем смысл?.. А, неважно, давай их сюда».~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #21066 /* ~«Дает одежду». Он кивает, протягивая тебе тряпки. Они очень тяжелые... словно охапка кирпичей.~ */
  IF ~~ THEN REPLY #21095 /* ~«Я возьму их и отнесу Меббет. Прощай».~ */ DO ~GiveItemCreate("MebRags",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 12.0
  SAY #21067 /* ~Ты заканчиваешь разглядывать вещи Гискорла, и он кивает. «Я, Гискорл».~ */
  IF ~~ THEN REPLY #21097 /* ~«Вообще-то, я бы хотел еще раз взглянуть на твои товары...»~ */ DO ~StartStore("Giscorl",Protagonist)
~ GOTO 12
  IF ~~ THEN REPLY #21098 /* ~«Э-э-э, как ты поранил свои руки?»~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21099 /* ~«Понятно. Послушай, мне нужно забрать кое-чье белье... Меббет... повитухи... с площади Старьевщиков?»~ */ GOTO 6
  IF ~~ THEN REPLY #21100 /* ~«Больше ничего, спасибо. Прощай».~ */ EXIT
END
