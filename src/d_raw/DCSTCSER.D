// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCSER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCSER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9998 /* ~Перед тобой устало выглядящий мужчина средних лет. Заметив твое внимание, он делает легкий поклон.~ */
  IF ~~ THEN REPLY #9999 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #10000 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10001 /* ~Он избегает твоего взгляда, вместо этого потупившись в землю у твоих ног. «Добрый день, рубака. Чем могу помочь?»~ */
  IF ~~ THEN REPLY #10002 /* ~«Для начала мог бы смотреть на меня, когда мы разговариваем».~ */ GOTO 2
  IF ~~ THEN REPLY #10003 /* ~«У меня к тебе пара вопросов».~ */ GOTO 3
  IF ~~ THEN REPLY #10004 /* ~«Неважно».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10005 /* ~Он бросает на тебя взгляд и тут же опускает его к твоим ногам. «Мне, как слуге, не положено смотреть тебе в глаза, рубака».~ */
  IF ~~ THEN REPLY #10006 /* ~«Хорошо. Знай свое место и не забывай его».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Servant_1","GLOBALLaw",1)
~ GOTO 3
  IF ~~ THEN REPLY #10007 /* ~«Ну, мне ты не слуга, так что я хочу, чтобы ты смотрел на меня, как на равного».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Servant_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #10008 /* ~«Как угодно. У меня к тебе вопросы».~ */ GOTO 3
  IF ~~ THEN REPLY #10009 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1 2.2 4.0 6.0 7.1 8.0 10.0
  SAY #10010 /* ~Он кивает, но не поднимает взгляд. «Да, рубака».~ */
  IF ~~ THEN REPLY #10011 /* ~«Я разыскиваю дэва. Мне сказали, что он в Проклятом. Ты его не видел?»~ */ GOTO 4
  IF ~~ THEN REPLY #10012 /* ~«Расскажи мне о Проклятом».~ */ GOTO 5
  IF ~~ THEN REPLY #10013 /* ~«Какие последние новости?»~ */ GOTO 7
  IF ~~ THEN REPLY #10014 /* ~«Кто здесь главный?»~ */ GOTO 9
  IF ~~ THEN REPLY #10015 /* ~«Неважно».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10016 /* ~«Я не знаю ни о каком дэва. Даже не могу представить, чтобы он и близко подошел к Проклятому, не говоря уже о том, чтобы зайти в город, — он прерывается, чтобы поразмыслить. — На твоем месте я бы спросил в здании администрации на городской площади. Они должны знать о подобных гостях».~ */
  IF ~~ THEN REPLY #10017 /* ~«Благодарю. Еще несколько вопросов».~ */ GOTO 3
  IF ~~ THEN REPLY #10018 /* ~«Ты мне очень помог. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #10019 /* ~«Тут почти не о чем рассказывать, рубака. Проклятый — привратный город на краю Внешних земель. В нем находятся врата в Карцери; они на городской площади... — он нахмуривает лоб, призадумавшись. — Однако не думаю, что врата все еще открыты. Это связано с предотвращением распространения чумы...»~ */
  IF ~~ THEN REPLY #10020 /* ~«Чумы?»~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #10021 /* ~Тон твоего голоса заставляет его поспешно объясниться. «Да, рубака, но тебе не стоит беспокоиться. Зараженные районы города запечатаны и все находится под контролем».~ */
  IF ~~ THEN REPLY #10022 /* ~«Э-э... Ладно. Позволь мне спросить кое о чем еще...»~ */ GOTO 3
  IF ~~ THEN REPLY #10023 /* ~«Ты мне очень помог. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #10024 /* ~«Новости... Ну, я слышал, что в скором времени будет проведена казнь... кроме этого, больше ничего не могу вспомнить, рубака».~ */
  IF ~~ THEN REPLY #10025 /* ~«Кого и за что будут казнить?»~ */ GOTO 8
  IF ~~ THEN REPLY #10026 /* ~«Хорошо. Мне нужно спросить тебя еще кое о чем».~ */ GOTO 3
  IF ~~ THEN REPLY #10027 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10028 /* ~Он пожимает плечами. «Не знаю, рубака. Не нас с тобой... так что какая разница?»~ */
  IF ~~ THEN REPLY #10029 /* ~«Пожалуй, никакой. Позволь мне спросить кое о чем еще...»~ */ GOTO 3
  IF ~~ THEN REPLY #10030 /* ~«Ясно. Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY #10031 /* ~«Бюргер Товус Гильяф. Его можно найти в здании администрации на городской площади».~ */
  IF ~~ THEN REPLY #10032 /* ~«Понятно. Что ты можешь рассказать мне про Товуса?»~ */ GOTO 10
  IF ~~ THEN REPLY #10033 /* ~«Большое спасибо. Я хочу спросить тебя кое о чем еще».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #10034 /* ~В первый раз он поднимает голову и встречается с тобой взглядом. «Ничего, рубака. Абсолютно ничего. Если у тебя есть вопросы насчет его правления, тебе нужно задать их ему самому». Он опускает взгляд.~ */
  IF ~~ THEN REPLY #10035 /* ~«Ладно, наверно, так и сделаю. Позволь задать тебе еще один вопрос».~ */ GOTO 3
  IF ~~ THEN REPLY #10036 /* ~«Понятно. Ладно, мне нужно идти. Прощай».~ */ EXIT
END
