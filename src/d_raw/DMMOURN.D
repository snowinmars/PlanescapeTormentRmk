// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMMOURN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMMOURN~

IF ~  Global("Widow_Pissed","AR0200",0)
~ THEN BEGIN 0 // from:
  SAY #34081 /* ~Чувство великих потерь, как темный капюшон, покрывает эту старушку. Взглянув на нее, ты слышишь долгий горестный вздох, вылетевший из ее губ.~ */
  IF ~~ THEN REPLY #34082 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #34083 /* ~Оставить женщину в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34084 /* ~Она смотрит на твое лицо, косящие мрачные глаза уставились на тебя ясным взглядом. «Прости меня, молодой рубака, но я уже пожилая женщина и не очень хорошо вижу... я тебя знаю?»~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #34085 /* ~«Нет».~ */ GOTO 2
  IF ~~ THEN REPLY #34086 /* ~«Может быть, но я не знаю».~ */ GOTO 2
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #34087 /* ~«Один раз наши пути пересеклись, вот и все».~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #34088 /* ~Твой ответ немного напугал ее. «И что тогда тебе надо?»~ */
  IF ~~ THEN REPLY #34089 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #34090 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #34091 /* ~«Вопросы?» Она застывает в ужасе. «О нет... ты ведь 'приключенец', не так ли? Имя, работа и прочее гнилье, да? Нафига мне это надо? Пошел прочь!»~ */
  IF ~~ THEN REPLY #34092 /* ~«Я не приключенец».~ */ DO ~SetGlobal("Widow_Pissed","AR0200",1)
~ GOTO 4
  IF ~~ THEN REPLY #34093 /* ~«Нет, я не... на самом деле, по крайней мере...»~ */ DO ~SetGlobal("Widow_Pissed","AR0200",1)
~ GOTO 4
  IF ~~ THEN REPLY #34094 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #34095 /* ~«Задвинься!» Женщина тычет в тебя пальцем. «Я следила за тленными, когда те записали имя моего мужа, проклятая его душонка, моих сына и обеих дочек, 'прилюченцы' до мозга костей, теперь все они в Мемориале! Когда-то я *тоже* неплохо махала мечом, так что я знаю, как они выглядят!» Кажется, женщина приходит в форму; ее щеки зарумянились, она прямо-таки брызжет слюной, крича на тебя.~ */
  IF ~~ THEN REPLY #34096 /* ~Слушать ее тираду дальше.~ */ GOTO 5
  IF ~~ THEN REPLY #34097 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34098 /* ~«Могу поспорить, что у тебя припасено *куча*» всяких тупых вопросов!» Она пародирует твою героическую позу: «Привет, у меня есть вопросы к тебе... ты не можешь рассказать об этом месте? Кто такая Леди Боли? Я ищу магический Железный Пояс Хвастуна, не видел такого? Не знаешь, где может находиться портал на 2817-й План Бездны? Не знаешь, где Святой Увечащий и Возвращающийся Огненный Разящий Холодом Гронков Молот, Стреляющий-Молниями-Из-Твоей-Задницы?» Она сплевывает. «Довольно этого дерьма! Чтоб ты в книге мертвых оказался! Я должна пнуть тебя в зад уже только за то, что ты осмелился спросить бедную женщину об этом всем! А теперь проваливай и оставь меня в покое!»~ */
  IF ~~ THEN REPLY #34099 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Widow_Pissed","AR0200",1)
~ THEN BEGIN 6 // from:
  SAY #34100 /* ~Как только женщина смотрит на тебя, ее выражение лица становится кислым. «Нет, нет, нет! Только не ты опять! Я не хочу с тобой разговаривать, так что исчезни! *ИСЧЕЗНИ*!»~ */
  IF ~~ THEN REPLY #34101 /* ~Уйти.~ */ EXIT
END
