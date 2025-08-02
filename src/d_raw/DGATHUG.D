// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2825 /* ~«Эй, путник! Теперь ты на территории Бритвенных Ангелов... поговори с Кристалл, нашим главарем. У нее найдется что тебе сказать».~ */
  IF ~~ THEN REPLY #3365 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3565 /* ~«Запоминай, что я скажу: не разговаривай со мной. Поговори с Кристалл. Поговори с Кристалл. Поговори с Кристалл. Уяснил картину?»~ */
  IF ~~ THEN REPLY #3566 /* ~Уйти.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #3567 /* ~«Эй, приятель... Спасибо за этого правдоборца. Все наши, с кем я говорил, только рады этому. А уж Кристалл будет особенно рада».~ */
  IF ~~ THEN REPLY #3568 /* ~Уйти.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #3569 /* ~«Мы высоко ценим помощь в борьбе с этим правдоборцем. Удачи с ним!»~ */
  IF ~~ THEN REPLY #3570 /* ~Уйти.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY #3571 /* ~«Заточек с Темного переулка больше нет! Переулок теперь наш!»~ */
  IF ~~ THEN REPLY #3572 /* ~Уйти.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY #3573 /* ~«Преподай урок этим Заточкам с Темного переулка!»~ */
  IF ~~ THEN REPLY #3574 /* ~Уйти.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 6 // from:
  SAY #3575 /* ~«Как ты посмел показать свою морду здесь? Умри мерзавец!»~ */
  IF ~~ THEN REPLY #3576 /* ~Уйти.~ */ DO ~Enemy()
SetGlobal("0301_Good_Angry","AR0301",1)
~ EXIT
END
