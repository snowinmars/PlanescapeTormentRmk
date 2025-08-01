// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRIST~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #37971 /* ~~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #37972 /* ~Ты видишь девушку, старающуюся привлечь твое внимание. На ней дешевая одежда, однако, у нее утонченные манеры, в отличие от окружающих ее людей. Присмотревшись повнимательнее, ты замечаешь, что кожа у нее чистая и гладкая, без того желтого оттенка, что у обитателей этого района. Заметив твое приближение, она улыбается тебе.~ */
  IF ~~ THEN REPLY #37973 /* ~«Приветствую».~ */ GOTO 2
  IF ~~ THEN REPLY #37974 /* ~Игнорировать ее.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37975 /* ~«Хвала силам, ты заметил меня. Мне нужны услуги наемника... — она умолкает и тщательно тебя рассматривает. — Если судить по внешности, что ты как раз им и являешься».~ */
  IF ~~ THEN REPLY #37976 /* ~«Внешность может быть обманчива».~ */ GOTO 3
  IF ~~ THEN REPLY #37977 /* ~«Что конкретно тебе от меня нужно?»~ */ GOTO 4
  IF ~~ THEN REPLY #37978 /* ~«Не нравится мне все это. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37979 /* ~На ее лице появляется тревога. «Конечно, рубака. Прости, я не хотела обидеть тебя. У меня... ну, отчаянное положение. Я исчерпала все доступные ресурсы, чтобы исправить ситуацию, но...»~ */
  IF ~~ THEN REPLY #37980 /* ~«Что конкретно тебе от меня нужно?»~ */ GOTO 4
  IF ~~ THEN REPLY #37981 /* ~«Не нравится мне все это. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #37982 /* ~Она кивает. «Суть проблемы в том, что меня собираются продать в рабство за преступление, которого я не совершала. Мне нужен защитник, который поможет доказать мою невиновность и избавить меня от такой судьбы...» Она умолкает и выжидающе смотрит на тебя.~ */
  IF ~~ THEN REPLY #37983 /* ~«Расскажи мне, что именно происходит».~ */ GOTO 5
  IF ~~ THEN REPLY #37984 /* ~«Не нравится мне все это. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37985 /* ~Она на миг задумывается. «Тут долго рассказывать, рубака. Прошу, наберись терпения».~ */
  IF ~~ THEN REPLY #37986 /* ~«Продолжай».~ */ GOTO 6
  IF ~~ THEN REPLY #37987 /* ~«У меня нет времени на это. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 24.0 25.1 26.1
  SAY #37988 /* ~Она вздыхает, начиная свой рассказ. «Мой муж недавно скончался и оставил мне свое дело. Я не умею вести дела, так что решила его продать. Вскоре после этого со мной связался ростовщик, который заявил, что за мной есть невыплаченный долг мужа...» Она умолкает, чтобы собраться с мыслями.~ */
  IF ~~ THEN REPLY #37989 /* ~«Продолжай».~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37990 /* ~«Я пересмотрела все документы мужа и выяснила, что он действительно брал заем, но недавно полностью выплатил его. Я объяснила это ростовщику, и через несколько дней он потребовал копию расписки... Я не смогла нигде ее найти». Она выглядит встревоженной. Она делает паузу, чтобы подумать.~ */
  IF ~~ THEN REPLY #37991 /* ~«Продолжай».~ */ GOTO 8
  IF ~~ THEN REPLY #51297 /* ~«Думаю, я выслушал достаточно. Перейдем к делу».~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37992 /* ~«Так вот, поскольку я не смогла доказать, что долг выплачен, ростовщик вызвал меня в суд. Мои деньги забрали и перечислили в счет долга. Поскольку они не покрыли долг, меня должны продать на аукционе, чтобы попытаться выплатить оставшуюся сумму». Она бросает на тебя жалобный взгляд.~ */
  IF ~~ THEN REPLY #37993 /* ~«Не пойму, зачем продавать тебя в рабство?»~ */ GOTO 9
  IF ~~ THEN REPLY #37994 /* ~«Думаю, я выслушал достаточно. Перейдем к делу».~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #37995 /* ~Она пожимает плечами. «Это служит многим целям. Во-первых, это позволяет сохранять тюрьмы сравнительно незаполненными: туда попадают только самые опасные преступники. Во-вторых, выручка от продажи осужденного используется для покрытия любых убытков, затрат и гонораров, связанных с делом. И наконец, осужденный все равно отбывает наказание, от которого его фактически освободили... как предположительно лучшего гражданина».~ */
  IF ~~ THEN REPLY #37996 /* ~«Все это замечательно, но я не понимаю, чем я могу тебе помочь».~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 7.1 8.1 9.0
  SAY #37998 /* ~«Мне... мне нужно, чтобы кто-нибудь нашел пропавшую расписку, которая доказывает, что долг выплачен. Или если бы ты выкупил мой договор, я могла бы вернуть тебе деньги... — она смотрит на тебя умоляюще. — Я не могу провести следующие пять лет своей жизни в этом районе, рубака. Это убьет меня! Конечно же, ты заметил болезнь, которой подвержены все живущие здесь?»~ */
  IF ~~ THEN REPLY #37999 /* ~«Нет, о какой болезни ты говоришь?»~ */ GOTO 11
  IF ~~ THEN REPLY #38000 /* ~«Да, желтая кожа и кашель...»~ */ GOTO 12
  IF ~~ THEN REPLY #38001 /* ~«Это не мое дело. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #38002 /* ~Она показывает на окружающих ее людей. «Погляди на них, рубака. Видишь эту желтую кожу? Постоянный кашель? Теперь посмотри вверх, на клубящиеся облака дыма, которые служат здесь воздухом... — она указывает вверх. — Это убивает тебя, если ты не можешь позволит себе лекаря. Будучи рабыней, я вряд ли смогу себе это позволить».~ */
  IF ~~ THEN REPLY #38003 /* ~«Так вот почему у всех здесь желтая кожа...»~ */ GOTO 12
  IF ~~ THEN REPLY #38004 /* ~«Это не мое дело. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0 25.0 26.0
  SAY #38005 /* ~Она кивает. «Да, рубака. Прошу, найди в своем сердце сочувствие, помоги мне... — она нервно смотрит на тебя. — Пожалуйста...»~ */
  IF ~~ THEN REPLY #38006 /* ~«Что мне будет за то, что я помогу тебе?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trist_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~~ THEN REPLY #38007 /* ~Правда: «Суд признал тебя виновной, и только закон может тебе помочь».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trist_1","GLOBALLaw",1)
~ GOTO 37
  IF ~~ THEN REPLY #38008 /* ~«Да, я помогу тебе. Но у меня есть несколько вопросов...»~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ JOURNAL #37704 /* ~Женщину по имени Трист продадут в рабство, если не будет найдена пропавшая долговая расписка. Я согласился помочь ей.~ */ GOTO 13
  IF ~~ THEN REPLY #38009 /* ~«Нет, я не хочу в это ввязываться».~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38010 /* ~«Мне нужно время, что обдумать это. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.2 15.1 16.0 17.0 18.4 19.1 20.0 21.0 22.0 23.0 27.1 35.1 36.1 37.0
  SAY #38011 /* ~Она энергично кивает. «Спрашивай что угодно, рубака».~ */
  IF ~~ THEN REPLY #38012 /* ~«Как зовут ростовщика?»~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #38013 /* ~«С кем мне поговорить о твоем договоре?»~ */ GOTO 16
  IF ~~ THEN REPLY #38014 /* ~«Ты не могла потерять долговую расписку?»~ */ GOTO 17
  IF ~~ THEN REPLY #38015 /* ~«Ты не думала, что долговую расписку могли украсть?»~ */ GOTO 18
  IF ~~ THEN REPLY #38016 /* ~«Ты рассказывала что-нибудь из этого в суде?»~ */ GOTO 21
  IF ~~ THEN REPLY #38017 /* ~«Думаю, мне уже пора. Прощай»~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #38018 /* ~«Я хорошо помню его имя, рубака. После всего, через что я прошла, я не смогу его забыть... — ее взгляд удаляется, и она внезапно вздрагивает. — Его зовут Байрон Пикит, — она умолкает на миг. — И его сообщником может быть некто Ленни».~ */
  IF ~~ THEN REPLY #38019 /* ~«Кто этот Ленни?»~ */ DO ~SetGlobal("Know_Lenny","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #38020 /* ~«Где мне найти Байрона?»~ */ GOTO 15
  IF ~~ THEN REPLY #38021 /* ~«У меня есть еще вопросы...»~ */ GOTO 13
  IF ~~ THEN REPLY #38022 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1 36.0
  SAY #38023 /* ~Она ненадолго задумывается. «Думаю, его можно найти либо на открытом рынке, либо неподалеку от него. Прости, но я не вполне уверена».~ */
  IF ~~ THEN REPLY #38024 /* ~«Ты упоминала Ленни. Кто он?»~ */ DO ~SetGlobal("Know_Lenny","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #38025 /* ~«У меня есть еще вопросы...»~ */ GOTO 13
  IF ~~ THEN REPLY #38026 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #38027 /* ~«Должно быть, с аукционистом Дераном. Обычно он вон там, у помоста». Она указывает на переднюю часть платформы.~ */
  IF ~~ THEN REPLY #38028 /* ~«У меня есть еще вопросы...»~ */ GOTO 13
  IF ~~ THEN REPLY #38029 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY #38030 /* ~Она качает головой. «Нет, рубака. Я очень щепетильный человек. Я хранила расписку в сейфе в кабинете мужа. Она никогда не покидала его пределы...»~ */
  IF ~~ THEN REPLY #38031 /* ~«У меня есть еще вопросы...»~ */ GOTO 13
  IF ~~ THEN REPLY #38032 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.3
  SAY #38033 /* ~Она пожимает плечами. «Не знаю. Зачем кому-то красть ее, не тронув другие ценные вещи? Мне это кажется бессмысленным».~ */
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #38034 /* ~«Ну... может, ростовщик украл расписку, чтобы ты выплатила долг еще раз...»~ */ GOTO 19
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #38035 /* ~«Ну... это была всего лишь мысль...»~ */ GOTO 22
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #38034 /* ~«Ну... может, ростовщик украл расписку, чтобы ты выплатила долг еще раз...»~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #38035 /* ~«Ну... это была всего лишь мысль...»~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #38036 /* ~«У меня есть еще вопросы...»~ */ GOTO 13
  IF ~~ THEN REPLY #38037 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.2
  SAY #38038 /* ~Она ошеломленно смотрит на тебя. «Что... что за ужасная мысль! — она колеблется и стучит пальцем по подбородку, раздумывая. — И еще это довольно находчиво, рубака. Сдается мне, этот Байрон Пикит — рыцарь легкой наживы».~ */
  IF ~~ THEN REPLY #38039 /* ~«Кто?»~ */ GOTO 20
  IF ~~ THEN REPLY #38040 /* ~«У меня есть еще вопросы...»~ */ GOTO 13
  IF ~~ THEN REPLY #38041 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #38042 /* ~Она смотрит на тебя недоуменно. «Вор или жулик. Таких называют рыцарями кинжала или рыцарями легкой наживы».~ */
  IF ~~ THEN REPLY #38043 /* ~«У меня есть еще вопросы...»~ */ GOTO 13
  IF ~~ THEN REPLY #38044 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.4
  SAY #38045 /* ~Она кивает. «О да, рубака. Я многим объясняла свою ситуацию. Ты первый, кто захотел мне помочь». Она дарит тебе теплую улыбку.~ */
  IF ~~ THEN REPLY #38046 /* ~«У меня есть еще вопросы...»~ */ GOTO 13
  IF ~~ THEN REPLY #38047 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.1 18.3
  SAY #38048 /* ~Она пожимает плечами. «Стоящая мысль, рубака. В этом что-то есть».~ */
  IF ~~ THEN REPLY #38050 /* ~«У меня есть еще вопросы...»~ */ GOTO 13
  IF ~~ THEN REPLY #38113 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.0
  SAY #38051 /* ~Она некоторое время смотрит на тебя беспомощно, потом ее на лице появляется тревога. «Мне... мне нечего тебе дать, рубака. Я потеряла все, — теперь она, кажется, в отчаянии. — Прошу, не бросай меня на произвол судьбы...»~ */
  IF ~~ THEN REPLY #38052 /* ~«Да, я помогу тебе. Но у меня есть несколько вопросов...»~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ JOURNAL #37704 /* ~Женщину по имени Трист продадут в рабство, если не будет найдена пропавшая долговая расписка. Я согласился помочь ей.~ */ GOTO 13
  IF ~~ THEN REPLY #38053 /* ~«Нет, я не хочу в это ввязываться».~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38054 /* ~«Мне нужно время, что обдумать это. Прощай».~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #38055 /* ~Ты видишь Трист. Она смотрит на тебя с отчаянием в глазах. «Привет, рубака. Можно обсудить с тобой один важный вопрос?»~ */
  IF ~~ THEN REPLY #38056 /* ~«Хорошо». ~ */ GOTO 6
  IF ~~ THEN REPLY #38057 /* ~«Сейчас у меня нет времени на это. Прощай».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 27 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #38058 /* ~Ты видишь Трист. Она смотрит на тебя с отчаяньем в глазах. «Привет, рубака. Может, ты пришел мне помочь?»~ */
  IF ~~ THEN REPLY #38059 /* ~«Ты все еще ищешь кого-нибудь, кто мог бы помочь тебе с твоей проблемой?»~ */ GOTO 12
  IF ~~ THEN REPLY #38060 /* ~«Расскажи мне свою историю еще раз».~ */ GOTO 6
  IF ~~ THEN REPLY #38061 /* ~«Мне это неинтересно. Прощай».~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 27 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #38062 /* ~Ты видишь Трист. Она смотрит на тебя с отчаяньем в глазах. «Привет, рубака. Может, ты пришел мне помочь? Ты передумал?»~ */
  IF ~~ THEN REPLY #38063 /* ~«Ты все еще ищешь кого-нибудь, кто мог бы помочь тебе с твоей проблемой?»~ */ GOTO 12
  IF ~~ THEN REPLY #38064 /* ~«Расскажи мне свою историю еще раз».~ */ GOTO 6
  IF ~~ THEN REPLY #38065 /* ~«Нет, мне неинтересно. Прощай».~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #38066 /* ~Ты видишь Трист. Когда ты подходишь, она улыбается и выглядит обнадеженной. «Ты нашел расписку, рубака? Ты можешь меня освободить?»~ */
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #38067 /* ~«Да, я передам ее Дерану, и он тебя освободит».~ */ GOTO 28
  IF ~~ THEN REPLY #38068 /* ~«Мне снова нужно задать тебе пару вопросов...»~ */ GOTO 13
  IF ~~ THEN REPLY #67814 /* ~«Нет, я все еще работаю над этим. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #38069 /* ~Ее лицо светится от облегчения. Тебе кажется, что она вот-вот упадет в обморок, но она быстро приходит в себя. «Благодарю тебя, рубака. Пожалуйста, возвращайся ко мне после того, как поговоришь с Дераном».~ */
  IF ~~ THEN REPLY #38070 /* ~«Хорошо. Прощай».~ */ EXIT
END

IF WEIGHT #0 ~  Global("Trist_Quest","GLOBAL",4)
~ THEN BEGIN 29 // from:
  SAY #38071 /* ~Трист дарит тебе теплую улыбку. «Ты мой спаситель, рубака. Я у тебя в вечном долгу».~ */
  IF ~~ THEN REPLY #38072 /* ~«Был рад помочь тебе, Трист».~ */ GOTO 30
  IF ~~ THEN REPLY #38073 /* ~«Больше не обращайся ко мне со своими проблемами. Это было как заноза в заднице».~ */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #38074 /* ~«Спасибо тебе, рубака, — она оглядывается по сторонам и на секунду задумывается. — Ты спас меня от верной смерти. Медленной, мучительной смерти... — она хмурится, раздумывая. — Пожалуйста, подожди здесь, я скоро вернусь». Она отворачивается и уходит.~ */
  IF ~~ THEN REPLY #38075 /* ~«Хорошо, Трист».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #38077 /* ~Ты видишь приближающуюся к тебе Трист. Она улыбается и машет тебе рукой. «Привет, рубака. Спасибо, что подождал, — она оглядывается по сторонам, потом вынимает кошелек из складок платья. — Благодаря предоставленной тобой расписке, суд восстановит мое положение и имущество. Тут немного, но это более чем заслуженная награда за все то, что ты сделал». Она дает тебе кошелек.~ */
  IF ~~ THEN REPLY #38078 /* ~«Спасибо, Трист».~ */ DO ~AddexperienceParty(4000)
GiveGoldForce(1000)
~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #38079 /* ~Она улыбается. «Нет, это тебе спасибо. Прощай, рубака».~ */
  IF ~~ THEN REPLY #38080 /* ~«Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #38081 /* ~Она хмуро смотрит на тебя и кивает. «Да, рубака, могу себе представить. Еще раз спасибо тебе и прощай».~ */
  IF ~~ THEN REPLY #38082 /* ~«Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 14.0 15.0
  SAY #38083 /* ~Она задумывается на мгновение. «В суде пару раз появлялся маленький человечек с диковатой внешностью. Он сидел за Пикитом и временами перешептывался с ним». Она умолкает; похоже, она углубилась в мысли.~ */
  IF ~~ THEN REPLY #38084 /* ~«Продолжай».~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #38085 /* ~Она хмурится. «Я запомнила его, потому что ему как будто постоянно мешала его одежда. Он теребил ее, как будто она была совсем новой, и он ее никогда раньше не одевал, — она снова делает паузу. — Однажды Пикит даже сказал ему сидеть смирно и не суетиться. Он назвал его Ленни».~ */
  IF ~~ THEN REPLY #38086 /* ~«Где мне найти Ленни?»~ */ GOTO 36
  IF ~~ THEN REPLY #38087 /* ~«У меня есть еще вопросы...»~ */ GOTO 13
  IF ~~ THEN REPLY #38088 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #38089 /* ~Она на секунду задумывается и пожимает плечами. «Вообще-то я не уверена... Мой муж говорил мне, что на северо-востоке, кажется, у осадной башни, околачиваются какие-то бандиты».~ */
  IF ~~ THEN REPLY #38090 /* ~«Где мне найти Байрона?»~ */ GOTO 15
  IF ~~ THEN REPLY #38091 /* ~«У меня есть еще вопросы...»~ */ GOTO 13
  IF ~~ THEN REPLY #38092 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 12.1
  SAY #38093 /* ~На ее лице появляется тревога. «Конечно, ты понимаешь, рубака, что иногда даже закон может ошибаться? Если из-за такой ошибки пострадают невинные... Это будет ужасным промахом со стороны правосудия, — похоже, теперь она в отчаянии. — Прошу, не бросай меня на произвол судьбы...»~ */
  IF ~~ THEN REPLY #38094 /* ~«Да, я помогу тебе. Но у меня есть несколько вопросов...»~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ GOTO 13
  IF ~~ THEN REPLY #38095 /* ~«Нет, я не хочу в это ввязываться».~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38096 /* ~«Мне нужно время, что обдумать это. Прощай».~ */ EXIT
END
