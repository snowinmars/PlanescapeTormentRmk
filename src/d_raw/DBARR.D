// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2835 /* ~Стражник смотрит на тебя со смешанным чувством страха и ненависти, однако все же торопиться открыть ворота. Когда ты проходишь мимо, он отводит от тебя глаза.~ */
  IF ~~ THEN REPLY #2836 /* ~«Доброго утречка, старина!»~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",1)
Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #19865 /* ~Стражник выпрямляется. «Нашел, что Фарод хотел, пень?»~ */
  IF ~~ THEN REPLY #19866 /* ~«Да».~ */ GOTO 2
  IF ~~ THEN REPLY #19867 /* ~«Пока нет».~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19868 /* ~«Покажи мне, пень, и тогда я открою ворота. Но не раньше, понятно?»~ */
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #19869 /* ~Показать ему.~ */ GOTO 4
  IF ~~ THEN REPLY #19870 /* ~«Ну хорошо, у меня его нет. Но у меня есть кое-что, что может заинтересовать тебя».~ */ GOTO 5
  IF ~~ THEN REPLY #19871 /* ~«Нет. Я вернусь позже».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #19872 /* ~«Если нет, так чего же ты тратишь мое время?» — фыркает он.~ */
  IF ~~ THEN REPLY #19873 /* ~«Пока что нет, но у меня есть кое-что, что может заинтересовать тебя...»~ */ GOTO 5
  IF ~~ THEN REPLY #19874 /* ~«Ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #19875 /* ~«Хорошо. Давай, заходи».~ */
  IF ~~ THEN REPLY #19876 /* ~«Спасибо».~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.0
  SAY #19877 /* ~«Да? И что же это может быть?»~ */
  IF ~~ THEN REPLY #19878 /* ~«Звенелки. Как насчет одной монеты?»~ */ GOTO 7
  IF ~~ THEN REPLY #19879 /* ~«Звенелки. Как тебе сумма в десять монет?»~ */ GOTO 8
  IF ~~ THEN REPLY #19880 /* ~«Звенелки. Как насчет двадцати пяти монет?»~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19881 /* ~«Звенелки. Как насчет пятидесяти монет?»~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19882 /* ~«Звенелки. Как насчет пятидесяти монет?»~ */ GOTO 11
  IF ~~ THEN REPLY #19883 /* ~«Звенелки. Как насчет сотни монет?»~ */ GOTO 12
  IF ~~ THEN REPLY #19884 /* ~«Если подумать — ничего».~ */ GOTO 6
  IF ~~ THEN REPLY #19885 /* ~«Забудь».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.6
  SAY #19886 /* ~«Тогда и взамен ты ничего не получишь, пень». Он сплевывает тебе под ноги.~ */
  IF ~~ THEN REPLY #19887 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #19888 /* ~Он криво улыбается. «Да ты просто оскорбляешь меня, пень. Попробуй еще раз».~ */
  IF ~~ THEN REPLY #19889 /* ~«Хорошо. Как насчет десяти монет?»~ */ GOTO 8
  IF ~~ THEN REPLY #19890 /* ~«Хорошо. Как насчет двадцати пяти монет?»~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19892 /* ~«Хорошо. Как насчет пятидесяти?»~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19893 /* ~«Хорошо. Как насчет пятидесяти?»~ */ GOTO 11
  IF ~~ THEN REPLY #19895 /* ~«Хорошо. Как насчет сотни?»~ */ GOTO 12
  IF ~~ THEN REPLY #19896 /* ~«Забудь».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0
  SAY #19899 /* ~«Я так не думаю...»~ */
  IF ~~ THEN REPLY #19900 /* ~«Хорошо. Как насчет двадцати пяти монет?»~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19901 /* ~«Хорошо. Как насчет пятидесяти?»~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19902 /* ~«Хорошо. Как насчет пятидесяти?»~ */ GOTO 11
  IF ~~ THEN REPLY #19903 /* ~«Хорошо. Как насчет сотни?»~ */ GOTO 12
  IF ~~ THEN REPLY #19904 /* ~«Забудь».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2 7.1 8.0
  SAY #19905 /* ~«Уже теплее, пень, но все еще холодно».~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19906 /* ~«Хорошо. Как насчет пятидесяти?»~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19907 /* ~«Хорошо. Как насчет пятидесяти?»~ */ GOTO 11
  IF ~~ THEN REPLY #19908 /* ~«Хорошо. Как насчет сотни?»~ */ GOTO 12
  IF ~~ THEN REPLY #19909 /* ~«Забудь».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.3 7.2 8.1 9.0 25.1
  SAY #19910 /* ~Его ужасное лицо расплывается в улыбке. «Этого хватит. Давай их сюда, и я открою ворота».~ */
  IF ~  PartyGoldLT(50)
~ THEN REPLY #19911 /* ~«Кажется, у меня недостаточно монет».~ */ GOTO 14
  IF ~  PartyGoldGT(49)
~ THEN REPLY #19912 /* ~Дать пятьдесят монет: «На, держи. Тут все».~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  PartyGoldGT(39)
~ THEN REPLY #19913 /* ~Дать сорок монет: «На, держи. Тут все».~ */ DO ~TakePartyGold(40)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19914 /* ~Протянуть ему монеты: «Бери их — они твои».~ */ GOTO 15
  IF ~~ THEN REPLY #19915 /* ~«Забудь. Я возвращаюсь в катакомбы».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.4 7.3 8.2 9.1
  SAY #19916 /* ~Обдумав это, он отвечает: «Нет. Если хочешь войти, тебе нужно дать больше».~ */
  IF ~~ THEN REPLY #19917 /* ~«Хорошо. Как насчет сотни?»~ */ GOTO 12
  IF ~~ THEN REPLY #19918 /* ~«Забудь».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.5 7.4 8.3 9.2 11.0 26.1
  SAY #19919 /* ~«Это хорошо. Это замечательно. Давай их сюда, и я открою ворота».~ */
  IF ~  PartyGoldLT(100)
~ THEN REPLY #19920 /* ~«Кажется, у меня недостаточно монет».~ */ GOTO 14
  IF ~  PartyGoldGT(99)
~ THEN REPLY #19921 /* ~Дать сто монет: «На, держи. Тут все».~ */ DO ~TakePartyGold(100)
~ GOTO 13
  IF ~  PartyGoldGT(89)
~ THEN REPLY #19922 /* ~Дать девяносто монет: «На, держи. Тут все». ~ */ DO ~TakePartyGold(90)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19923 /* ~Протянуть ему монеты: «Бери их — они твои».~ */ GOTO 16
  IF ~~ THEN REPLY #19924 /* ~«Забудь. Я возвращаюсь в катакомбы».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 10.2 12.1 12.2 15.4 15.5 16.5 16.6
  SAY #19925 /* ~Он взвешивает монеты в руке, просыпая их между пальцами, и говорит: «Кажется, тут все». Он открывает ворота.~ */
  IF ~~ THEN REPLY #19926 /* ~«Увидимся».~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0 12.0 15.6 16.4 21.0 25.0 26.0
  SAY #19927 /* ~«Очень жаль. Приходи, когда наберется. А пока и не пытайся пройти». Он отворачивается от тебя.~ */
  IF ~~ THEN REPLY #19928 /* ~«Ну хорошо...»~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY #19929 /* ~Он тянется за твоими монетами сквозь ворота.~ */
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19930 /* ~Схватить его за руку.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19931 /* ~Схватить его за руку.~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19932 /* ~Схватить его за руку.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19933 /* ~Схватить его за руку.~ */ DO ~SetGlobal("No_Pin","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldGT(49)
~ THEN REPLY #19934 /* ~Дать пятьдесят монет: «На, держи. Тут все».~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  PartyGoldGT(39)
~ THEN REPLY #19935 /* ~Дать сорок монет: «На, держи. Тут все».~ */ DO ~TakePartyGold(40)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~  PartyGoldLT(50)
~ THEN REPLY #19936 /* ~«Кажется, у меня недостаточно монет».~ */ GOTO 14
  IF ~~ THEN REPLY #19937 /* ~«Забудь. Я собираюсь назад вниз».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #19938 /* ~Он тянется за твоими монетами сквозь ворота.~ */
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19939 /* ~Схватить его за руку.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19940 /* ~Схватить его за руку.~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19941 /* ~Схватить его за руку.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19942 /* ~Схватить его за руку.~ */ DO ~SetGlobal("No_Pin","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldLT(100)
~ THEN REPLY #19943 /* ~«Кажется, у меня недостаточно монет».~ */ GOTO 14
  IF ~  PartyGoldGT(99)
~ THEN REPLY #19944 /* ~Дать сто монет: «На, держи. Тут все».~ */ DO ~TakePartyGold(100)
~ GOTO 13
  IF ~  PartyGoldGT(89)
~ THEN REPLY #19945 /* ~Дать девяносто монет: «На, держи. Тут все». ~ */ DO ~TakePartyGold(90)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19946 /* ~«Забудь. Я возвращаюсь в катакомбы».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 16.0
  SAY #19947 /* ~Ты ловко прижимаешь его руку к воротам и с хрустом выворачиваешь ее из сустава. Стражник кричит от мучительной боли.~ */
  IF ~~ THEN REPLY #19948 /* ~«Впусти меня или я ее вырву с корнем!»~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #19949 /* ~Отпустить его. «А теперь впусти меня, или я порву тебя на части. Мне надоело играть в твои игры».~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 15.1 15.2 16.1 16.2
  SAY #19950 /* ~Когда он тянется за монетами, ты хватаешь его за руку. Он пытается высвободиться из твоей хватки, но тебе в конце концов удается прижать руку к воротами и вывернуть ее. Он стонет от боли.~ */
  IF ~~ THEN REPLY #19951 /* ~«Впусти меня или я ее вырву с корнем!»~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #19952 /* ~Отпустить его. «А теперь впусти меня, или я порву тебя на части. Мне надоело играть в твои игры».~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 15.3 16.3
  SAY #6783 /* ~Когда он тянется за монетами, ты пытаешься схватить его за руку. Он быстро одергивает руку назад, торжественно хохоча: «За это ты заплатишь в два раза больше, мерзавец! Вон с глаз моих!» Он отворачивается от тебя.~ */
  IF ~~ THEN REPLY #6844 /* ~«Тогда прощай...» ~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 17.1 18.0 18.1
  SAY #19953 /* ~Он поспешно, пока ты не выполнил свою угрозу, открывает ворота. Пока ты проходишь, он старается держаться от тебя подальше.~ */
  IF ~~ THEN REPLY #19954 /* ~«Еще раз мне попадешься — и твои части найдут в трех разных склепах. Уяснил? Хорошо».~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
  IF ~~ THEN REPLY #19955 /* ~«Ну как, усвоил урок? Посмотрим на твое поведение в следующий раз. Прощай».~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 39 even though they appear after this state */
~  Global("No_Pin","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #19956 /* ~Стражник грозно смотрит на тебя. «Чтобы попасть сюда, нужно заплатить двести. И не жульничать!»~ */
  IF ~~ THEN REPLY #19957 /* ~«У меня нет столько».~ */ GOTO 14
  IF ~  PartyGoldGT(199)
~ THEN REPLY #19958 /* ~«Хорошо. Держи».~ */ DO ~TakePartyGold(200)
~ GOTO 22
  IF ~~ THEN REPLY #19959 /* ~«Тогда забудь об этом».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #19960 /* ~«Он забирает монеты и внимательно их пересчитывает. Окончательно убедившись в том, что ты его не обманул ни на одну монету, он открывает ворота. «Запомни, пень... Выход стоит столько же!»~ */
  IF ~~ THEN REPLY #19961 /* ~«Да-да, как скажешь».~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
  IF ~~ THEN REPLY #19962 /* ~«У меня будет более чем достаточно».~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",1)
!Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #19963 /* ~Стражник слегка выпрямляется. «Нашел деньги, чтоб заплатить за проход?»~ */
  IF ~~ THEN REPLY #19965 /* ~«Заплатить? Сколько?»~ */ GOTO 25
  IF ~~ THEN REPLY #19966 /* ~«Не знал, что тут нужно платить за проход».~ */ GOTO 24
  IF ~~ THEN REPLY #19967 /* ~«Нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #19964 /* ~«Много народу не знает. Но это так».~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19968 /* ~«И сколько?»~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19969 /* ~«И сколько?»~ */ GOTO 26
  IF ~~ THEN REPLY #19970 /* ~«Тогда забудь об этом. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #19971 /* ~«Для тебя? Пятьдесят монет».~ */
  IF ~~ THEN REPLY #19972 /* ~«Пятьдесят? Не думаю, что смогу заплатить столько».~ */ GOTO 14
  IF ~~ THEN REPLY #19973 /* ~«Думаю, я смогу себе это позволить».~ */ GOTO 10
  IF ~~ THEN REPLY #19974 /* ~«Тогда забудь об этом».~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #19975 /* ~«Для тебя? Сто монет».~ */
  IF ~~ THEN REPLY #19976 /* ~«Сто? Не думаю, что смогу заплатить столько».~ */ GOTO 14
  IF ~~ THEN REPLY #19977 /* ~«Думаю, я смогу себе это позволить».~ */ GOTO 12
  IF ~~ THEN REPLY #19978 /* ~«Тогда забудь об этом».~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 39 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 27 // from: 30.2 31.0 32.1 33.0 34.0 35.0 37.0 38.0
  SAY #19979 /* ~«Чего тебе на этот раз?»~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19980 /* ~«Фарод разрешил мне спуститься в катакомбы. Открой мне ворота».~ */ GOTO 29
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19981 /* ~«Что находится за воротами?»~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19982 /* ~«Что находится за воротами?»~ */ GOTO 34
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19983 /* ~«Откроешь мне ворота еще раз?»~ */ GOTO 36
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",0)
~ THEN REPLY #19984 /* ~«Что ты можешь рассказать про место за воротами?»~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19985 /* ~«Я хотел бы спуститься туда».~ */ GOTO 35
  IF ~~ THEN REPLY #19986 /* ~«Кто ты?»~ */ GOTO 37
  IF ~~ THEN REPLY #19987 /* ~«Что ты делаешь?»~ */ GOTO 38
  IF ~~ THEN REPLY #19988 /* ~«Ничего. Прощай».~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 39 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 28 // from:
  SAY #19989 /* ~Ты видишь крупного человека, одетого в залатанные лохмотья и воняющего старым элем. Он очень большой — очевидно, его поставили на эту работу благодаря туше, но никак не мозгам. «Чего надо?»~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19990 /* ~«Фарод разрешил мне спуститься в катакомбы. Открой мне ворота».~ */ GOTO 29
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19991 /* ~«Что находится за воротами?»~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19992 /* ~«Что находится за воротами?»~ */ GOTO 34
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",0)
~ THEN REPLY #19993 /* ~«Что ты можешь рассказать про место за воротами?»~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19994 /* ~«Я хотел бы спуститься туда».~ */ GOTO 35
  IF ~~ THEN REPLY #19995 /* ~«Кто ты?»~ */ GOTO 37
  IF ~~ THEN REPLY #19996 /* ~«Что ты делаешь?»~ */ GOTO 38
  IF ~~ THEN REPLY #19997 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #19998 /* ~Он открывает ворота. «Тогда пошевеливайся, пень, хватит тратить наше время попусту».~ */
  IF ~~ THEN REPLY #19999 /* ~«Прощай».~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 27.4 28.1 28.3
  SAY #20000 /* ~«Катакомбы плачущих камней. Груды трупов, куча склепов для наживы».~ */
  IF ~~ THEN REPLY #20001 /* ~«Почему их называют Катакомбами плачущих камней?»~ */ GOTO 31
  IF ~~ THEN REPLY #20002 /* ~«А что-нибудь определенное ты можешь сказать?»~ */ GOTO 32
  IF ~~ THEN REPLY #20003 /* ~«Спасибо. У меня есть другие вопросы...»~ */ GOTO 27
  IF ~~ THEN REPLY #20004 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #20005 /* ~«Там с потолка вода стекает, из-за чего кажется, что стены плачут. От этого имя и пошло».~ */
  IF ~~ THEN REPLY #20006 /* ~«Понятно. Ответишь еще на пару вопросов?»~ */ GOTO 27
  IF ~~ THEN REPLY #20007 /* ~«Спасибо».~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #20008 /* ~«Нет. Я там был всего пару раз... Туда за телами другие спускаются. Грис вот добра приносил больше всех. Похоже, он нарвался там на что-то, и теперь его вписали в книгу мертвых».~ */
  IF ~~ THEN REPLY #20009 /* ~«Грис?»~ */ GOTO 33
  IF ~~ THEN REPLY #20010 /* ~«Понятно. У меня есть другие вопросы...» ~ */ GOTO 27
  IF ~~ THEN REPLY #20011 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #20012 /* ~«Ага, Грис-Стервятник. Он с парой своих ребят пошел туда пару пиков назад, и с тех пор от них ни слуху ни духу. Если найдешь его тело, принеси его сюда, — он плотоядно улыбается. — За него мы сможем выручить у трухлявых немного звенелок».~ */
  IF ~~ THEN REPLY #20013 /* ~«Ха. У меня есть несколько вопросов...»~ */ GOTO 27
  IF ~~ THEN REPLY #20014 /* ~«Ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.2 28.2
  SAY #20015 /* ~Посмотрев на тебя, стражник ухмыляется. «Спальня твоей мамочки. Пришлось ограничить движение, а то, понимаешь ли, слишком много охотников туда, — хохочет он. — Отвали, пока не присоединился к трупам внизу».~ */
  IF ~~ THEN REPLY #20016 /* ~«Просто ответь мне на другие вопросы...»~ */ GOTO 27
  IF ~~ THEN REPLY #20017 /* ~«Хорошо». ~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.5 28.4
  SAY #20018 /* ~Взглянув на тебя, стражник качает головой. «Да-да, нам всем не терпится туда попасть. Слушай. Ты определенно не отсюда. Так что задвинься».~ */
  IF ~~ THEN REPLY #20019 /* ~«Тогда ответь мне на несколько вопросов».~ */ GOTO 27
  IF ~~ THEN REPLY #20020 /* ~«Отлично».~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 27.3
  SAY #20021 /* ~Взглянув на тебя, он молча открывает ворота.~ */
  IF ~~ THEN REPLY #20022 /* ~«Прощай».~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 27.6 28.5
  SAY #20023 /* ~«Не твое собачье дело. Отвали».~ */
  IF ~~ THEN REPLY #20024 /* ~«Сначала ответь мне на пару вопросов...»~ */ GOTO 27
  IF ~~ THEN REPLY #20025 /* ~«Спасибо... Приятель».~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 27.7 28.6
  SAY #20026 /* ~«А на что это, по-твоему, похоже? Стираю твое исподнее? Вали отсюда, тупой пень!»~ */
  IF ~~ THEN REPLY #20027 /* ~«Еще один вопрос...»~ */ GOTO 27
  IF ~~ THEN REPLY #20028 /* ~«Как хочешь».~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Open_Door","AR0109",0)
~ THEN BEGIN 39 // from:
  SAY #56027 /* ~«Ворота не заперты, так что не нужно мне больше надоедать».~ */
  IF ~~ THEN REPLY #56028 /* ~Уйти.~ */ EXIT
END
