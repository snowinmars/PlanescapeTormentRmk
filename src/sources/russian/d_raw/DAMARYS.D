// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAMARYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DAMARYS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 9 13 11 even though they appear after this state */
~  GlobalLT("Nodd_Quest","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #20721 /* ~Перед тобой девушка, одетая в обтягивающий кожаный жилет и гетры. От нее исходит едва уловимый запах дешевых духов, а на лице, хоть и милом, слишком яркий макияж. Увидев тебя, она стыдливо улыбается. «Хочешь поразвлечься, милый?»~ */
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22779 /* ~«А ты, случайно, не Амарисса?»~ */ GOTO 2
  IF ~~ THEN REPLY #22780 /* ~«Нет, у меня есть несколько вопросов...»~ */ GOTO 1
  IF ~~ THEN REPLY #22781 /* ~«Нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #20722 /* ~«Прости, милый, но я здесь не для того стою, чтоб меня расспрашивал каждый встречный. Точно не хош поразвлечься, м-м-м?»~ */
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22782 /* ~«Нет, а ты, случайно, не Амарисса?»~ */ GOTO 2
  IF ~~ THEN REPLY #22783 /* ~«Нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #22784 /* ~Некоторое время она молча глядит на тебя, потом отвечает: «Когда-то давно меня так звали. Кто ты?»~ */
  IF ~~ THEN REPLY #22785 /* ~«Твой брат Нодд послал меня разыскать тебя. Он беспокоился о тебе, надеялся, что я смогу выяснить, как у тебя дела».~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #22786 /* ~«Н... Нодд? Он жив? Где? Почему он сам не пошел меня искать?»~ */
  IF ~~ THEN REPLY #22787 /* ~«Думаю, ему просто стыдно. Теперь он сборщик, прозябает на площади Старьевщиков. Похоже, с ним... не все в порядке. То есть, с его головой».~ */ JOURNAL #22632 /* ~Амарисса сказала мне, что в детстве Нодда звали Тодусом.~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #22788 /* ~«Ага, он был слегка того еще в детстве, когда его звали Тодус. О, я так по нему соскучилась! Ему стыдно? Ха! Моя работенка не краше! А, ладно, по крайней мере, я живу не так уж плохо, как для жителя Улья, да? Надо бы его навестить поскорее». Впервые с того момента, когда вы заговорили, она внимательно к тебе присмотрелась. «А ты друг Нодда, или?..»~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22789 /* ~«Типа того, да. А что?»~ */ GOTO 5
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #61490 /* ~«Вообще-то, нет».~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ GOTO 8
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22790 /* ~«Не совсем. За работу мне заплатят».~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ GOTO 8
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22791 /* ~Ложь: «Да, я его друг. А что?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Amarysse_1","GLOBALLaw",-1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.3
  SAY #22792 /* ~«Можешь...» Она хмурится, закусывая губу, будто размышляя о чем-то. «Можешь передать ему это?» Она делает шаг вперед и протягивает мешочек, в котором на вид около ста медяков.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22794 /* ~«Да, я клянусь, что передам ему».~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",6)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Я поклялся Амариссе, что доставлю медяки ее брату, Нодду, на площадь Старьевщиков.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22793 /* ~«Да, я клянусь, что передам ему».~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",7)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Я поклялся Амариссе, что доставлю медяки ее брату, Нодду, на площадь Старьевщиков.~ */ GOTO 6
  IF ~~ THEN REPLY #22795 /* ~«Да, я ему передам».~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22796 /* ~«Нет, лучше не надо. Хотя я передам ему, что ты его скоро навестишь. Прощай».~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22797 /* ~«Нет, лучше не надо. Хотя я передам ему, что ты его скоро навестишь. Прощай».~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1 7.0 7.1
  SAY #22798 /* ~Она отдает тебе мешочек. «Спасиб. Иди поговори с Ноддом, расскажи ему, как я за него волнуюсь!»~ */
  IF ~~ THEN REPLY #22799 /* ~«Хорошо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #22800 /* ~«Прости, рубака, но можно попросить тебя поклясться? Это куча медяков... для меня, по крайне мере».~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22801 /* ~«Да, я клянусь, что передам ему».~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",6)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Я поклялся Амариссе, что доставлю медяки ее брату, Нодду, на площадь Старьевщиков.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22802 /* ~«Да, я клянусь, что передам ему».~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",7)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Я поклялся Амариссе, что доставлю медяки ее брату, Нодду, на площадь Старьевщиков.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22803 /* ~«Нет, лучше не надо. Хотя я передам ему, что ты его скоро навестишь. Прощай».~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22804 /* ~«Нет, лучше не надо. Хотя я передам ему, что ты его скоро навестишь. Прощай».~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 4.2
  SAY #22805 /* ~«Хм-м. Ну, все равно спасибо. Поговори с Ноддом, расскажи ему, как я за него волнуюсь!»~ */
  IF ~~ THEN REPLY #22806 /* ~«Хорошо. Прощай».~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 11 even though they appear after this state */
~  GlobalGT("Nodd_Quest","GLOBAL",3)
!Global("Nodd_Quest","GLOBAL",8)
!Global("Nodd_Quest","GLOBAL",9)
~ THEN BEGIN 9 // from:
  SAY #22807 /* ~Амарисса смотрит на тебя с надеждой. «Ты еще не поговорил с Ноддом?»~ */
  IF ~~ THEN REPLY #22808 /* ~«Еще нет».~ */ GOTO 10
  IF ~~ THEN REPLY #22809 /* ~«Еще нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #22810 /* ~«Пожалуйста, пойди поговори с Ноддом, расскажи ему, как я за него волнуюсь!»~ */
  IF ~~ THEN REPLY #22811 /* ~«Хорошо. Прощай».~ */ EXIT
END

IF WEIGHT #0 ~  Global("Nodd_Quest","GLOBAL",8)
!Global("Chaotic_Nodd_4","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #22812 /* ~«Слыхала, ты говорил с Ноддом... Спасибо, рубака».~ */
  IF ~~ THEN REPLY #22813 /* ~«Конечно... а как ты узнала?»~ */ GOTO 12
  IF ~~ THEN REPLY #22814 /* ~«Конечно. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22815 /* ~«У меня тут куча друзей в Улье, — она подмигивает. — Еще раз спасибо».~ */
  IF ~~ THEN REPLY #22816 /* ~«Конечно. Счастливо».~ */ EXIT
END

IF WEIGHT #1 ~  GlobalGT("Nodd_Quest","GLOBAL",7)
~ THEN BEGIN 13 // from:
  SAY #22817 /* ~Ты видишь Амариссу. Она тебя еще не заметила.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",9)
~ THEN REPLY #22818 /* ~Поговорить с ней.~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",8)
~ THEN REPLY #22819 /* ~Поговорить с ней.~ */ GOTO 15
  IF ~~ THEN REPLY #22820 /* ~Оставить ее в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22821 /* ~Как только она замечает тебя, ее глаза загораются яростью. Не успеваешь ты и слова вымолвить, как она набрасывается на тебя с клинком в руке. «Сволочь! Думаешь, я не слыхала, как ты обошелся с моим бедным братом... Сдохни!»~ */
  IF ~~ THEN REPLY #22822 /* ~Принять бой.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #22823 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #22824 /* ~Как только она замечает тебя, ее глаза загораются яростью. Не успеваешь ты и слова вымолвить, как она набрасывается на тебя с клинком в руке. «Подлый ублюдок! Я знаю, че ты сделал! Забрал у бедной девушки честно заработанные звенелки, обобрал ее брата... Да я тя порешу!»~ */
  IF ~~ THEN REPLY #22825 /* ~Принять бой.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #22826 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
