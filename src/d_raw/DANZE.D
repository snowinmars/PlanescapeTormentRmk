// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANZE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DANZE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33883 /* ~Перед тобой угрюмый старик. Его лицо — сплетение складок и морщин.~ */
  IF ~~ THEN REPLY #33884 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #33885 /* ~Не обращать на него внимания.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33886 /* ~Он отвешивает тебе короткий сдержанный поклон. «Ага, привет тебе. Зовут Анце. Чего надо?»~ */
  IF ~~ THEN REPLY #33887 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #33888 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.1 5.1 6.1 8.0 9.0 10.0 12.1
  SAY #33889 /* ~Он одаривает тебя беззубой ухмылкой. «Думаю, потрепаться с тобой время найдется. Чего хочешь знать?»~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #33890 /* ~«Я ищу кое-кого по имени Лотар, он же Повелитель Костей...»~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #33891 /* ~«У меня украли череп. Ты не знаешь кого-нибудь, кто бы мог это сделать?»~ */ GOTO 6
  IF ~~ THEN REPLY #33892 /* ~«А для чего эта печь?»~ */ GOTO 10
  IF ~~ THEN REPLY #33893 /* ~«Я хочу купить кое-какое оружие».~ */ DO ~StartStore("Anzestr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33894 /* ~«Я хочу купить кое-какие магические вещи».~ */ GOTO 9
  IF ~~ THEN REPLY #33895 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #33896 /* ~«Не скажу, что когда-либо слышал о Лотаре... — он щурит глаза, размышляя. — Но этот *костяшка*, да, слыхал о нем. Трепаться с ним даже и не думай. Сильный рубака, с мертвяками якшается, и все такое».~ */
  IF ~~ THEN REPLY #33897 /* ~«Где мне найти его?»~ */ GOTO 4
  IF ~~ THEN REPLY #33898 /* ~«Что ты можешь о нем рассказать?»~ */ GOTO 5
  IF ~~ THEN REPLY #33899 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #33900 /* ~Он пожимает плечами. «А хрен его знает. Такой рубака селится, где захочет. Ни один пень с ним спорить не станет, это уж точно».~ */
  IF ~~ THEN REPLY #33901 /* ~«Что ты можешь о нем рассказать?»~ */ GOTO 5
  IF ~~ THEN REPLY #33902 /* ~«Понятно. У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #33903 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #33904 /* ~Он издает резкий смешок. «Ты все услышал, рубака. А больше я ничего не знаю».~ */
  IF ~~ THEN REPLY #33905 /* ~«Где мне найти его?»~ */ GOTO 4
  IF ~~ THEN REPLY #33906 /* ~«Понятно. У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #33907 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #33908 /* ~Он пытается изобразить интерес, но проваливается с треском. «Печально это слышать, рубака. Раз думаешь, что украли — жалуйся в Гармониум».~ */
  IF ~~ THEN REPLY #33909 /* ~«Гармониум?»~ */ GOTO 7
  IF ~~ THEN REPLY #33910 /* ~«Спасибо тебе, у меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #33911 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #33912 /* ~Он улыбается. «Закон, рубака. Громилы Гармониума — закон в Сигиле. Раз шмотки пропали, им и жалуйся».~ */
  IF ~~ THEN REPLY #33913 /* ~«Ты считаешь, что Гармониум может вернуть мне череп?»~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #33915 /* ~Он начинает было говорить, но задумывается. Мгновение спустя, он начинает тихо посмеиваться. «Не, рубака. Не думаю. Забудь».~ */
  IF ~~ THEN REPLY #33914 /* ~«Понятно. У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #33916 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY #33917 /* ~«Можешь с Аалеком перетереть, он рядом. Может, у него есть, что нужно». Он показывает на прилавок слева.~ */
  IF ~~ THEN REPLY #33918 /* ~«У меня есть еще вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #33919 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #33920 /* ~Он смотрит на печь и переходит на шепот. «Печь ни для чего, кроме как учить моего лентяя ответственности. Он вечно болтает и треплется, и все такое. Думает, он ученый, а настоящей работы даже и не нюхал. Если вопросы серьезные... ну, спроси лучше его, а не меня».~ */
  IF ~~ THEN REPLY #33921 /* ~«У меня есть еще вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #33922 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #33923 /* ~Null node~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #34244 /* ~Анце дарит тебе свою неизменную беззубую усмешку. «И снова добро пожаловать, рубака. Чего надобно сегодня?»~ */
  IF ~~ THEN REPLY #34245 /* ~«Хотелось бы глянуть на твои товары».~ */ DO ~StartStore("Anzestr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34246 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #34247 /* ~«Ничего. Прощай».~ */ EXIT
END

IF WEIGHT #0 ~  Global("Lazlo_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #34248 /* ~«Я грущу по своему пацану, по Лазло. Магазин не открою до... не знаю когда...»~ */
  IF ~~ THEN REPLY #34249 /* ~Уйти.~ */ EXIT
END
