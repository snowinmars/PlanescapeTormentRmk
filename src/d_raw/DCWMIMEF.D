// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMIMEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMIMEF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49739 /* ~Эта девушка, наблюдающая за каким-то актером, выглядит немного озадаченной. Когда ты подходишь, она поворачивается в твою сторону.~ */
  IF ~~ THEN REPLY #49740 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #49741 /* ~Оставить ее в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49742 /* ~«Я никогда не видела ничего подобного. Его игра раздражает, и в то же время как-то странно затягивает».~ */
  IF ~~ THEN REPLY #49743 /* ~«Что происходит?»~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49744 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #49745 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #49746 /* ~Она продолжает наблюдать за человеком, который как будто попал в какой-то невидимый ящик или клетку. «В другой раз, сэр. Прошу, оставьте меня в покое».~ */
  IF ~~ THEN REPLY #49747 /* ~«Погоди... скажи мне, по крайней мере, что здесь происходит».~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49748 /* ~«Всего лишь несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #49749 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #49750 /* ~Девушка бросает на тебя раздраженный взгляд. «Что бы *вы* там ни подумали, сэр, я не хочу, чтобы всякие прохожие донимали меня расспросами. А теперь оставьте меня!»~ */
  IF ~~ THEN REPLY #49751 /* ~«Погоди... скажи мне, по крайней мере, что здесь происходит».~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49752 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #49753 /* ~«Я и сама не уверена, что понимаю. В игре этого человека есть все элементы пародии и фарса, но он не произносит ни слова. Недавно здесь проходил маг, и актер передразнил его необычную походку. Маг разозлился и проклял его... Мне кажется, что он больше не может говорить, и попал в тот же невидимый ящик, пребывание в котором он раньше изображал. Сперва он очень испугался, но вроде как успокоился и продолжает выступление».~ */
  IF ~~ THEN REPLY #49754 /* ~«У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #49755 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END
