// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~GFGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5826 /* ~«Опять ты? Стража! Стража!»~ */
  IF ~~ THEN REPLY #5827 /* ~Сражаться.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #5828 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #1 ~  Allegiance(Myself,ENEMY)
~ THEN BEGIN 1 // from:
  SAY #5829 /* ~«Опять ты? Стража! Стража!»~ */
  IF ~~ THEN REPLY #5830 /* ~Сражаться.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #5831 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #5832 /* ~«Ладно, пень... проваливай, и никто не пострадает».~ */
  IF ~~ THEN REPLY #5833 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #3 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 3 // from:
  SAY #5834 /* ~«Добро пожаловать обратно в Литейную, сэр».~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5835 /* ~«Спасибо. Мне нужно забрать одну вещь».~ */ GOTO 22
  IF ~~ THEN REPLY #5836 /* ~«Спасибо».~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 even though they appear after this state */
~  False()
~ THEN BEGIN 4 // from:
  SAY #5837 /* ~«Добро пожаловать обратно в Литейную, сэр».~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5838 /* ~«Спасибо. Мне нужно забрать одну вещь».~ */ GOTO 22
  IF ~~ THEN REPLY #5839 /* ~«Спасибо».~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 25 even though they appear after this state */
~  True()
~ THEN BEGIN 5 // from:
  SAY #5840 /* ~Ты видишь крепкого стражника, который выглядит скучающим. «Прошу сообщить, по какому ты делу».~ */
  IF ~~ THEN REPLY #5841 /* ~«Просто осматриваюсь».~ */ GOTO 6
  IF ~~ THEN REPLY #5842 /* ~«Я здесь, чтобы забрать заказ».~ */ GOTO 7
  IF ~~ THEN REPLY #5843 /* ~«Я здесь, чтобы оставить заказ».~ */ GOTO 8
  IF ~~ THEN REPLY #5844 /* ~«Кто ты?»~ */ GOTO 9
  IF ~~ THEN REPLY #5845 /* ~«Чем ты занимаешься?»~ */ GOTO 10
  IF ~  GlobalGT("Dream","GLOBAL",0)
GlobalLT("Dream","GLOBAL",5)
~ THEN REPLY #5846 /* ~«Я помогаю Зандеру с Построителем снов».~ */ GOTO 23
  IF ~  Global("Dream","GLOBAL",5)
PartyHasItem("DrmKey")
~ THEN REPLY #5847 /* ~«Я здесь, чтобы воспользоваться Построителем снов».~ */ GOTO 24
  IF ~~ THEN REPLY #6478 /* ~«Что это за место?»~ */ GOTO 11
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #6479 /* ~«У меня сообщение для Кельдора от аукционера Гилтспура».~ */ GOTO 26
  IF ~~ THEN REPLY #67933 /* ~«Извини, я здесь не по делу. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0
  SAY #5848 /* ~«Тогда уверен, ты не будешь против отойти подальше».~ */
  IF ~~ THEN REPLY #5849 /* ~«Можно войти?»~ */ GOTO 13
  IF ~~ THEN REPLY #5850 /* ~«Вовсе нет».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 12.1 19.1
  SAY #5851 /* ~«Да, сэр. Могу ли я увидеть твою квитанцию?»~ */
  IF ~  PartyHasItem("Receipt")
~ THEN REPLY #5852 /* ~«Да».~ */ GOTO 14
  IF ~~ THEN REPLY #5853 /* ~Ложь: «Да».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Guards_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #5854 /* ~«Нет».~ */ GOTO 16
  IF ~~ THEN REPLY #5855 /* ~«Уверен, она у меня где-то была...»~ */ GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 5.2 12.2
  SAY #5856 /* ~«Прошу прощения, сэр, но в данный момент мы не принимаем новых заказов в связи с крупным проектом, которым мы заняты. Возвращайся примерно через год. Спасибо за твою заинтересованность».~ */
  IF ~~ THEN REPLY #5857 /* ~«Ладно. У меня есть еще вопросы...»~ */ GOTO 12
  IF ~~ THEN REPLY #5858 /* ~«Спасибо».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.3 12.3
  SAY #5859 /* ~«Я стражник верящих в Первопричину, сэр».~ */
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #5860 /* ~«Верящих в Первопричину?»~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #5861 /* ~«О, понятно. У меня есть другие вопросы...»~ */ GOTO 12
  IF ~~ THEN REPLY #5862 /* ~«Спасибо».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.4 12.4
  SAY #5863 /* ~«Охраняю ворота, сэр».~ */
  IF ~~ THEN REPLY #5864 /* ~«П-нятно. У меня есть другие вопросы».~ */ GOTO 12
  IF ~~ THEN REPLY #5865 /* ~«Спасибо за уделенное время».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.7 12.5
  SAY #5866 /* ~«Ты находишься перед Великой Литейной, домом верящих в Первопричину».~ */
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #5867 /* ~«Кого?»~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #5868 /* ~«Что такое Великая Литейная?»~ */ GOTO 19
  IF ~~ THEN REPLY #5869 /* ~«О, спасибо. У меня есть другие вопросы».~ */ GOTO 12
  IF ~~ THEN REPLY #5870 /* ~Уйти: «Ах».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.1 10.0 11.2 13.0 15.1 17.0 19.0 20.1 21.0
  SAY #5871 /* ~«Укажи суть твоего требования».~ */
  IF ~~ THEN REPLY #5872 /* ~«Просто осматриваюсь».~ */ GOTO 6
  IF ~~ THEN REPLY #5873 /* ~«Я здесь, чтобы забрать заказ».~ */ GOTO 7
  IF ~~ THEN REPLY #5874 /* ~«Я здесь, чтобы оставить заказ».~ */ GOTO 8
  IF ~~ THEN REPLY #5875 /* ~«Кто ты?»~ */ GOTO 9
  IF ~~ THEN REPLY #5876 /* ~«Чем ты занимаешься?»~ */ GOTO 10
  IF ~~ THEN REPLY #5877 /* ~«Что это за место?»~ */ GOTO 11
  IF ~~ THEN REPLY #5878 /* ~«Извини, я здесь не по делу».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0
  SAY #5879 /* ~«Только если ты покажешь, что ты здесь по делу».~ */
  IF ~~ THEN REPLY #5880 /* ~«Понятно. Тогда у меня еще вопросы».~ */ GOTO 12
  IF ~~ THEN REPLY #5881 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0
  SAY #5882 /* ~«Спасибо, сэр. У клерка, которого ты ищешь, есть контора в южной стене Литейной. Благодарю за поддержку». Он открывает тебе ворота.~ */
  IF ~~ THEN REPLY #5883 /* ~Уйти.~ */ DO ~SetDoorLocked("AR0500d1",FALSE)
OpenDoor("AR0500d1")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY #5884 /* ~«Похоже, у тебя нет квитанции».~ */
  IF ~~ THEN REPLY #5885 /* ~«Уверен, она у меня где-то была...»~ */ GOTO 17
  IF ~~ THEN REPLY #5886 /* ~«Хм, нет. Только у меня есть другие вопросы».~ */ GOTO 12
  IF ~~ THEN REPLY #5887 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY #5888 /* ~«Тогда боюсь, что ты должен уйти».~ */
  IF ~~ THEN REPLY #5889 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.3 15.0
  SAY #5890 /* ~«Да, сэр, я уверен, что так оно и есть. Однако, пока ты не предоставишь доказательство, что ты здесь по делу, боюсь, что мы не можем разрешить тебе войти».~ */
  IF ~~ THEN REPLY #5891 /* ~«Тогда у меня есть другие вопросы».~ */ GOTO 12
  IF ~~ THEN REPLY #5892 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.0 11.0
  SAY #5893 /* ~«Да, сэр. Нас называют боголюдьми».~ */
  IF ~~ THEN REPLY #5894 /* ~«Почему?»~ */ GOTO 20
  IF ~~ THEN REPLY #5895 /* ~«Рад за тебя. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY #5896 /* ~«Кроме того, что это дом верящих в Первопричину, это еще и одна из самых больших литейных, известных смертным. Через эти ворота много чего проходит; мы принимаем заказы со всех планов. В данный момент мы больше не принимаем заказов, поскольку большинство наших ремесленников либо работают над новым проектом, либо им поручены более мелкие заказы на ближайшие несколько месяцев. На деле это означает, что тебя впустят, только если при тебе есть квитанция на получение заказа, либо у тебя здесь срочное дело».~ */
  IF ~~ THEN REPLY #5897 /* ~«У меня срочное дело!»~ */ GOTO 12
  IF ~~ THEN REPLY #5898 /* ~«У меня есть квитанция!»~ */ GOTO 7
  IF ~~ THEN REPLY #5899 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #5900 /* ~«Мы — одна из пятнадцати признанных фракций Сигила, сэр. Мы верим, что в каждом существе есть искра божественности — не обязательно добро или зло, а лишь возможность быть подобным богу. Мы полагаем, что за божественностью есть нечто большее. Мы верим, что у каждой жизни есть предназначение и цель, и мы призваны осознать эти цели. С каждым шагом в нашей жизни мы стремимся к величию».~ */
  IF ~~ THEN REPLY #5901 /* ~«Звучит важно».~ */ GOTO 21
  IF ~~ THEN REPLY #5902 /* ~«Рад за тебя. Ты собираешься меня впускать?»~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #5903 /* ~«Мы верим, что это так, сэр. Могу ли я еще чем-то помочь?»~ */
  IF ~~ THEN REPLY #5904 /* ~«Да. У меня есть еще вопросы».~ */ GOTO 12
  IF ~~ THEN REPLY #5905 /* ~«Нет».~ */ EXIT
  IF ~~ THEN REPLY #5906 /* ~«Спасибо, не стоит».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.0 4.0
  SAY #5907 /* ~«Да. Входи».~ */
  IF ~~ THEN REPLY #5908 /* ~«Спасибо».~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5
  SAY #6480 /* ~«Да. Нам о тебе сообщили. Входи».~ */
  IF ~~ THEN REPLY #6481 /* ~«Спасибо».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.6
  SAY #6482 /* ~Некоторое время стражник смотрит на тебя со скучным выражением. «Желаю удачи. Входи».~ */
  IF ~~ THEN REPLY #6483 /* ~«Спасибо».~ */ EXIT
END

IF WEIGHT #4 ~  Global("Foundry_Open","AR0500",1)
~ THEN BEGIN 25 // from:
  SAY #66285 /* ~«Добро пожаловать обратно, сэр! Полагаю, у тебя тут еще дела. Пожалуйста, проходи и не загораживай проход».~ */
  IF ~~ THEN REPLY #66286 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.8
  SAY #67931 /* ~«Спасибо, сэр. Ты найдешь его в Великом зале боголюдей». Он открывает для тебя ворота.~ */
  IF ~~ THEN REPLY #67932 /* ~«Спасибо».~ */ DO ~SetGlobal("Foundry_Open","AR0500",1)
SetDoorLocked("AR0500d1",FALSE)
OpenDoor("AR0500d1")
~ EXIT
END
