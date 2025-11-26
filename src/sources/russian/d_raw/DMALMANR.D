// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMALMANR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMALMANR~

IF ~  Global("Malmaner","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #27976 /* ~Этот худощавый мужчина с резкими чертами лица подбегает к тебе, пытаясь привлечь твое внимание. «О, сэр, сэр! Удели мне немного времени! Ты случайно не собираешься зайти к портному?»~ */
  IF ~~ THEN REPLY #28027 /* ~«Я как...»~ */ GOTO 1
  IF ~~ THEN REPLY #28028 /* ~Игнорировать его и продолжать идти.~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #27977 /* ~Мужчина перебивает тебя: «Я спрашиваю это, потому что я, кажется, э, обидел его. Я заказал у этого вспыльчивого идиота костюм, но он вышвырнул меня из своей мастерской и больше не разговаривает со мной».~ */
  IF ~~ THEN REPLY #28029 /* ~«И чт...»~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #27978 /* ~Человек внезапно сжимает кулаки и начинает трясти ими в воздухе. «Да что я такого сделал, чтобы заслужить такое обращение? Ничего! Я его *клиент*! Этот заносчивый клоун *обязан* обслужить меня!»~ */
  IF ~~ THEN REPLY #28030 /* ~«Чего ты от меня хочешь?»~ */ GOTO 4
  IF ~~ THEN REPLY #28031 /* ~«У меня нет на это времени. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 4.0 5.0
  SAY #27979 /* ~«Могу ли я уговорить тебя заглянуть туда и забрать мой костюм? Мне нужно на маскарад, и у меня нет времени заказывать его у другого портного».~ */
  IF ~~ THEN REPLY #28032 /* ~«Да. Я пойду и заберу его».~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Я согласился забрать у портного Гонсалвиса маскарадный костюм Малманера.~ */ GOTO 6
  IF ~~ THEN REPLY #28033 /* ~«Я сделаю это, но не за бесплатно».~ */ GOTO 8
  IF ~~ THEN REPLY #28034 /* ~«Почему ты просто не заберешь его сам?»~ */ GOTO 7
  IF ~~ THEN REPLY #28035 /* ~«Нет, у меня нет времени на это. Прощай».~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #27980 /* ~«Да? — он снова сосредотачивается на тебе. — Ах, да! Ты...»~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 0.1 2.1
  SAY #27981 /* ~«Постой, постой, прошу тебя!»~ */
  IF ~~ THEN REPLY #28050 /* ~Выслушать его.~ */ GOTO 3
  IF ~~ THEN REPLY #28051 /* ~Уйти.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 7.0 8.0 16.0
  SAY #27982 /* ~«О, это просто отлично! Вот оно, это здание, вон там... — он указывает на длинное низкое строение на север от него. — Спасибо тебе!»~ */
  IF ~~ THEN REPLY #28052 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #27983 /* ~Он презрительно усмехается, закатывая глаза. «Свиноподобный грубиян! Я каким-то образом 'обидел' этого жирного, набитого роскошью нахала! Он запретил мне входить в его мастерскую, и отказывается со мной разговаривать. Представляешь?!»~ */
  IF ~~ THEN REPLY #28053 /* ~«Я пойду и заберу его».~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Я согласился забрать у портного Гонсалвиса маскарадный костюм Малманера.~ */ GOTO 6
  IF ~~ THEN REPLY #28054 /* ~«Я достану тебе костюм, но не за бесплатно».~ */ GOTO 8
  IF ~~ THEN REPLY #28055 /* ~«У меня нет на это времени. Прощай».~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 7.1 16.1
  SAY #27984 /* ~«*Что*? Во имя сил, парень, ты просто забираешь *костюм*! Это не займет много времени! Я определенно не думаю, что такая незначительная услуга нуждается в оплате!»~ */
  IF ~~ THEN REPLY #28056 /* ~«Отлично. Пойду заберу его».~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Я согласился забрать у портного Гонсалвиса маскарадный костюм Малманера.~ */ GOTO 6
  IF ~~ THEN REPLY #28057 /* ~«Тогда это не стоит моего времени. Прощай».~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #27985 /* ~«Погоди... — он громко вздыхает. — Раз так, плачу десять медяков за минутное поручение. Этого достаточно... 'сэр'?»~ */
  IF ~~ THEN REPLY #28058 /* ~«Да. Давай мне деньги, и я заберу твой костюм».~ */ DO ~GivePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #28059 /* ~«Мне не нравится твой тон, 'сэр'. Я начинаю понимать, почему ты не понравился портному. Прощай».~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #28060 /* ~«Забудь. Прощай».~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27986 /* ~Он протягивает тебе монеты, что-то бормоча. «Длинное здание, вон там, — он указывает на длинное низкое строение, — на северо-востоке от ворот Нижнего района. Пожалуйста, поторопись».~ */
  IF ~~ THEN REPLY #28061 /* ~«Я пойду за ним. Прощай»~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Я согласился забрать у портного Гонсалвиса маскарадный костюм Малманера.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28062 /* ~«Поторопись? Куда? О, и спасибо за халявные монеты. Счастливо... 'сэр'».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28063 /* ~«Поторопись? Куда? О, и спасибо за халявные монеты. Счастливо... 'сэр'».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #27987 /* ~Он кричит тебе вдогонку: «Ты... покромсанный бесполезный кусок мяса! Сморщенный шелудивый мешок отбросов! Вернись, жалкий разносчик заразы! Никто не смеет так вести себя с Малманером! Немедленно вернись, пока я не позвал стражу!»~ */
  IF ~~ THEN REPLY #28064 /* ~«Ладно, вот... забирай свои деньги».~ */ DO ~TakePartyGold(10)
~ GOTO 13
  IF ~~ THEN REPLY #28065 /* ~Бросить ему десять медных монет.~ */ DO ~TakePartyGold(10)
~ GOTO 14
  IF ~~ THEN REPLY #28066 /* ~Игнорировать его и пройти мимо.~ */ GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #27988 /* ~Он кричит тебе вдогонку: «Ты... покромсанный бесполезный кусок мяса! Сморщенный шелудивый мешок отбросов! Вернись, жалкий разносчик заразы! Никто не смеет так вести себя с Малманером! Немедленно вернись, пока я не позвал стражу!»~ */
  IF ~~ THEN EXTERN ~DMORTE~ 273
END

IF ~~ THEN BEGIN 13 // from: 11.0 21.0 21.2 21.4 21.6
  SAY #27989 /* ~«Пф!» Он выхватывает монеты с твоей руки и, сунув их в кошелек, уходит прочь.~ */
  IF ~~ THEN REPLY #28067 /* ~Уйти.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1 21.1 21.3 21.5 21.7
  SAY #27990 /* ~Он потрясенно смотрит на тебя. «Ах ты... нахал...»~ */
  IF ~~ THEN REPLY #28068 /* ~«Умолкни, пока твой язык не погубил тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_2","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #28069 /* ~Игнорировать его и пройти мимо.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.2 14.0 21.8
  SAY #27991 /* ~«Я тебе покажу! Стража! Стража!»~ */
  IF ~~ THEN REPLY #28070 /* ~Атаковать его.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #28072 /* ~Попытаться уйти, пока никто не пришел.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~  Global("Malmaner","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #27992 /* ~«Так-так, добрейший житель Сигила... — его голос полон едкого сарказма. — Я *так* благодарен тебе за помощь. Ах... постой... ведь ты мне не помог, не так ли? Пф».~ */
  IF ~~ THEN REPLY #28073 /* ~«Я передумал. Я достану тебе костюм».~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Я согласился забрать у портного Гонсалвиса маскарадный костюм Малманера.~ */ GOTO 6
  IF ~~ THEN REPLY #28075 /* ~«Послушай... Я достану твой костюм, но не за бесплатно».~ */ GOTO 8
  IF ~~ THEN REPLY #28076 /* ~«Прощай».~ */ EXIT
END

IF ~  Global("Malmaner","GLOBAL",2)
~ THEN BEGIN 17 // from:
  SAY #27993 /* ~Человек выжидающе смотрит на тебя. «Ну? Ну? Ты забрал у Гонсалвиса костюм?»~ */
  IF ~~ THEN REPLY #28077 /* ~«Нет, еще нет».~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.4 32.2 33.2 38.0 39.2
  SAY #27994 /* ~«Ну так займись этим, парень! Мне нужно на маскарад!»~ */
  IF ~~ THEN REPLY #28078 /* ~«Я вернусь, как только достану его. Прощай».~ */ EXIT
END

IF ~  Global("Malmaner","GLOBAL",3)
!PartyHasItem("Costume1")
~ THEN BEGIN 19 // from:
  SAY #27995 /* ~Человек выжидающе смотрит на тебя. «Ну? Ну? Ты забрал у Гонсалвиса костюм?»~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28079 /* ~«Еще нет. Он говорит, что ты должен ему тридцать медяков за работу».~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28083 /* ~Ложь: «Еще нет. Он говорит, что ты должен ему пятьдесят медяков за работу».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  !PartyHasItem("Costume1")
PartyHasItem("DustRobe")
~ THEN REPLY #28084 /* ~«Еще нет... как насчет этого настоящей одежды тленного?»~ */ GOTO 32
  IF ~  !PartyHasItem("Costume1")
PartyHasItem("DustRobe")
~ THEN REPLY #28085 /* ~Ложь: «Э... да. Вот одежда тленного. То есть костюм».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_2","GLOBALLaw",-1)
~ GOTO 33
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28086 /* ~«Нет, еще нет».~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 19.0 23.2 27.0 32.0 33.0
  SAY #27996 /* ~«*ЧТО*?! Пф! Ладно, ладно... возьми деньги и принеси мне, наконец, этот чертов костюм!» Он бросает тебе тридцать медных монет.~ */
  IF ~~ THEN REPLY #28087 /* ~«Я вернусь, как только достану его. Прощай».~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28088 /* ~«Хм-м-м... какой еще костюм? О, и спасибо за медяки... Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28089 /* ~«Хм-м-м... какой еще костюм? О, и спасибо за медяки... Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1 24.1 40.1 42.1
  SAY #27997 /* ~Он кричит тебе вдогонку: «Ты... покромсанный бесполезный кусок мяса! Сморщенный шелудивый мешок отбросов! Иди сюда, грязный разносчик заразы! Никто не смеет вести себя так с Малманером! Немедленно вернись, пока я не позвал стражу!»~ */
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28090 /* ~«Ладно, вот... забирай свои деньги».~ */ DO ~TakePartyGold(30)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28091 /* ~Бросить ему тридцать медных монет.~ */ DO ~TakePartyGold(30)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28092 /* ~«Ладно, вот... забирай свои деньги».~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28093 /* ~Бросить ему пятьдесят медных монет.~ */ DO ~TakePartyGold(50)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28094 /* ~«Ладно, вот... забирай свои деньги».~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28095 /* ~Бросить ему пятьдесят медных монет.~ */ DO ~TakePartyGold(50)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28096 /* ~«Ладно, вот... забирай свои деньги».~ */ DO ~TakePartyGold(80)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28097 /* ~Бросить ему восемьдесят медных монет.~ */ DO ~TakePartyGold(80)
~ GOTO 14
  IF ~~ THEN REPLY #28098 /* ~Игнорировать его и пройти мимо.~ */ GOTO 15
END

IF ~~ THEN BEGIN 22 // from: 20.2 24.2 40.2 42.2
  SAY #27998 /* ~Он кричит тебе вдогонку: «Ты... покромсанный бесполезный кусок мяса! Сморщенный шелудивый мешок отбросов! Вернись, жалкий разносчик заразы! Никто не смеет так вести себя с Малманером! Немедленно вернись, пока я не позвал стражу!»~ */
  IF ~~ THEN EXTERN ~DMORTE~ 274
END

IF ~~ THEN BEGIN 23 // from: 19.1 32.1 33.1
  SAY #27999 /* ~Мужчина выглядит пораженным. «Немыслимо! Нелепо! Когда я заказывал его, мы договаривались о цене в тридцать медяков!»~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28099 /* ~Ложь: «Он был огорчен, Малманер. Ты его обидел, и потому он поднял цену».~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 24
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28100 /* ~Ложь: «Ну, э, он был огорчен, и поднял цену».~ */ GOTO 27
  IF ~~ THEN REPLY #28101 /* ~«Прошу прощения, я оговорился. Тридцать медяков».~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #28000 /* ~Он смотрит на тебя с подозрением, затем уступает: «Ладно! Вот, держи. Просто достань мне этот чертов костюм!» Он бросает тебе пятьдесят медных монет.~ */
  IF ~~ THEN REPLY #28102 /* ~«Я вернусь, как только достану его. Прощай».~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28103 /* ~«Хм-м-м... какой еще костюм? О, и спасибо за медяки... Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28104 /* ~«Хм-м-м... какой еще костюм? О, и спасибо за медяки... Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~  Global("Malmaner","GLOBAL",3)
PartyHasItem("Costume1")
~ THEN BEGIN 25 // from:
  SAY #28001 /* ~Человек выжидающе смотрит на тебя. «Ну? Ну? Ты забрал у Гонсалвиса костюм?»~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28105 /* ~«Да, вот он. Он обошелся мне в тридцать монет».~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Я забрал у портного Гонсалвиса маскарадный костюм и отдал его Малманеру.~ */ GOTO 26
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28106 /* ~Ложь: «Да, вот он. Он обошелся мне в пятьдесят монет».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28107 /* ~«Да, вот он».~ */ DO ~TakePartyItemNum("Costume1",1)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Я забрал у портного Гонсалвиса маскарадный костюм и отдал его Малманеру.~ */ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 25.0 28.2 30.0
  SAY #28002 /* ~«Ладно, ладно! Вот, держи, — он бросает тебе тридцать медных монет. — А теперь мне нужно идти...»~ */
  IF ~~ THEN REPLY #28108 /* ~«Погоди... Гонсалвис сказал, что уже многие собираются прийти на этот маскарад как тленные».~ */ GOTO 34
  IF ~~ THEN REPLY #28109 /* ~«Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.1
  SAY #28003 /* ~Он смотрит на тебя с подозрением, сжав губы.~ */
  IF ~~ THEN REPLY #28110 /* ~«Прошу прощения, я оговорился. Тридцать медяков».~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY #28004 /* ~Мужчина выглядит пораженным. «Немыслимо! Нелепо! Когда я заказывал его, мы договаривались о цене в тридцать медяков!»~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28111 /* ~Ложь: «Он был огорчен, Малманер. Ты его обидел, и потому он поднял цену».~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(50)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Я забрал у портного Гонсалвиса маскарадный костюм и отдал его Малманеру.~ */ GOTO 29
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28112 /* ~Ложь: «Ну, э, он был огорчен, и поднял цену».~ */ GOTO 30
  IF ~~ THEN REPLY #28113 /* ~«Прошу прощения, я оговорился. Тридцать медяков».~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Я забрал у портного Гонсалвиса маскарадный костюм и отдал его Малманеру.~ */ GOTO 26
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #28005 /* ~Он смотрит на тебя с подозрением, затем уступает: «Ладно! Вот, держи, — он бросает тебе пятьдесят медных монет. — А теперь мне нужно идти...»~ */
  IF ~~ THEN REPLY #28114 /* ~«Погоди... Гонсалвис сказал, что уже многие собираются прийти на этот маскарад как тленные».~ */ GOTO 34
  IF ~~ THEN REPLY #28115 /* ~«Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #28006 /* ~Он смотрит на тебя с подозрением, сжав губы.~ */
  IF ~~ THEN REPLY #28116 /* ~«Прошу прощения, я оговорился. Тридцать медяков».~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ GOTO 26
END

IF ~~ THEN BEGIN 31 // from: 25.2
  SAY #28008 /* ~«Наконец-то! — он выхватывает у тебя костюм. — А теперь мне нужно идти...»~ */
  IF ~~ THEN REPLY #28117 /* ~«Погоди... Гонсалвис сказал, что уже многие собираются прийти на этот маскарад как тленные».~ */ GOTO 34
  IF ~~ THEN REPLY #28118 /* ~«Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 19.2
  SAY #28009 /* ~Он с отвращением отступает. «Тьфу! Какая мерзость... погляди на них! Грязные, поеденные молью тряпки... и такая грубая ткань! Я не вынесу того, чтобы надеть эти лохмотья».~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28119 /* ~«Ну, он сказал, что ты ему должен тридцать медяков за костюм».~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28120 /* ~Ложь: «Ну, он сказал, что ты ему должен пятьдесят медяков за костюм».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28121 /* ~«Ну, у меня пока еще нет костюма».~ */ GOTO 18
END

IF ~~ THEN BEGIN 33 // from: 19.3
  SAY #28010 /* ~Он с отвращением отступает. «Тьфу! Какая мерзость... погляди на них! Грязные, поеденные молью тряпки... и такая грубая ткань! Я не вынесу того, чтобы надеть эти лохмотья, — он бросает на тебя подозрительный взгляд. — И что же *это* такое?»~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28122 /* ~«Ничего, неважно. Он говорит, что ты ему должен тридцать медяков за костюм».~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28123 /* ~Ложь: «Ничего, неважно. Он говорит, что ты ему должен, э, пятьдесят медяков за костюм».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28124 /* ~«Неважно. У меня еще нет костюма».~ */ GOTO 18
END

IF ~~ THEN BEGIN 34 // from: 26.0 29.0 31.0
  SAY #28007 /* ~«Разве? Проклятье! Я не хочу прийти в таком *обыкновенном* наряде... Хм-м-м...»~ */
  IF ~~ THEN REPLY #28125 /* ~«Я мог бы пойти посмотреть, нет ли у него другого готового костюма».~ */ GOTO 36
  IF ~~ THEN REPLY #28126 /* ~«Я мог бы попробовать достать тебе другой... но не за просто так».~ */ GOTO 37
  IF ~~ THEN REPLY #28127 /* ~«Очень жаль. Прощай».~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.2 36.2 37.1
  SAY #28011 /* ~«Пф!» Он отступает, что-то угрюмо бормоча.~ */
  IF ~~ THEN REPLY #28128 /* ~Уйти.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY #28012 /* ~«А что, неплохая идея! Скорее, посмотри, есть ли еще что-нибудь у этого пухлого простофили, ладно?»~ */
  IF ~~ THEN REPLY #28129 /* ~«Я вернусь с другим костюмом».~ */ DO ~SetGlobal("Malmaner","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALGood_Malmaner_1","GLOBALGood",1)
~ JOURNAL #27454 /* ~Я согласился достать у портного Гонсалвиса второй костюм для Малманера.~ */ EXIT
  IF ~~ THEN REPLY #28130 /* ~«Да... но не за просто так».~ */ GOTO 37
  IF ~~ THEN REPLY #28131 /* ~«Неважно, забудь мое предложение. Прощай».~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 34.1 36.1
  SAY #28013 /* ~Он закатывает глаза, презрительно усмехаясь тебе. «Я должен был догадаться! Держи, *корыстолюбец*. Надеюсь, этого хватит?» Он дает тебе двадцать медных монет.~ */
  IF ~~ THEN REPLY #28132 /* ~«Вполне. Я вернусь с другим костюмом».~ */ DO ~SetGlobal("Malmaner","GLOBAL",4)
GivePartyGold(20)
~ JOURNAL #27454 /* ~Я согласился достать у портного Гонсалвиса второй костюм для Малманера.~ */ EXIT
  IF ~~ THEN REPLY #28133 /* ~«Знаешь что, забудь мое предложение. Прощай».~ */ GOTO 35
END

IF ~  Global("Malmaner","GLOBAL",4)
~ THEN BEGIN 38 // from:
  SAY #28014 /* ~Мужчина смотрит на тебя в ожидании. «Ну? Ну? Ты достал у него еще один костюм?»~ */
  IF ~~ THEN REPLY #28134 /* ~«Нет, еще нет».~ */ GOTO 18
END

IF ~  Global("Malmaner","GLOBAL",5)
!PartyHasItem("Costume2")
~ THEN BEGIN 39 // from:
  SAY #28015 /* ~Мужчина смотрит на тебя в ожидании. «Ну? Ну? Ты достал у него еще один костюм?»~ */
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28135 /* ~«Еще нет. У него есть другой костюм, но он хочет за него пятьдесят медяков».~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28136 /* ~Ложь: «Еще нет. У него есть другой костюм, но он хочет за него, э, восемьдесят медяков».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_3","GLOBALLaw",-1)
~ GOTO 41
  IF ~  Global("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28137 /* ~«Нет, еще нет».~ */ GOTO 18
END

IF ~~ THEN BEGIN 40 // from: 39.0 41.2 43.0
  SAY #28016 /* ~Он рвет на себе волосы, крича: «О, как же силы все-таки любят унижать бедного благородного Малманера! Будь проклят этот маскарад, будь трижды проклят этот мерзкий портной! — он бросает тебе пятьдесят медных монет. — Иди!»~ */
  IF ~~ THEN REPLY #28138 /* ~«Я вернусь, как только достану его. Прощай».~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28139 /* ~«Хм-м-м... какой еще костюм? О, и спасибо за медяки... Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28140 /* ~«Хм-м-м... какой еще костюм? О, и спасибо за медяки... Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #28017 /* ~«Это... это... немыслимо! Полный абсурд! Кем он себя возомнил?! — внезапно он хмурится. — Если подумать, это звучит немного неправдоподобно, даже для Гонсалвиса». Он с подозрением смотрит на тебя.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28141 /* ~Ложь: «Ты ему не очень-то нравишься, Малманер. Ты платишь за свои поспешные слова, сказанные ему раньше».~ */ DO ~GivePartyGold(80)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 42
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28142 /* ~Ложь: «Ну, э, ты его очень расстроил».~ */ GOTO 43
  IF ~~ THEN REPLY #28143 /* ~«Прошу прощения, я оговорился. Пятьдесят медяков».~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #28018 /* ~Он смотрит на тебя с подозрением, затем уступает: «Хорошо! Держи. Только принеси мне тот другой костюм, и быстро!» Он бросает тебе восемьдесят медных монет.~ */
  IF ~~ THEN REPLY #28144 /* ~«Я вернусь, как только достану его. Прощай».~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28145 /* ~«Хм-м-м... какой еще костюм? О, и спасибо за медяки... Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28146 /* ~«Хм-м-м... какой еще костюм? О, и спасибо за медяки... Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #28019 /* ~Он смотрит на тебя с подозрением, сжав губы. Несомненно, он не верит ни единому твоему слову.~ */
  IF ~~ THEN REPLY #28147 /* ~«Прошу прощения, я оговорился. Пятьдесят медяков».~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 44 // from:
  SAY #28020 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("Malmaner","GLOBAL",5)
PartyHasItem("Costume2")
~ THEN BEGIN 45 // from:
  SAY #28021 /* ~Человек выжидающе смотрит на тебя. «Ну? Ну? Ты забрал у Гонсалвиса костюм?»~ */
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28148 /* ~«Да, вот он. Он обошелся мне в пятьдесят монет».~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Я взял у портного Гонсалвиса второй костюм и отдал его Малманеру.~ */ GOTO 46
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28149 /* ~Ложь: «Да, вот он. Он обошелся мне в восемьдесят монет».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 48
  IF ~  Global("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28150 /* ~«Да, вот он».~ */ DO ~TakePartyItemNum("Costume2",1)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Я взял у портного Гонсалвиса второй костюм и отдал его Малманеру.~ */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.2 49.0
  SAY #28022 /* ~Он издает звук отвращения, выхватывает у тебя костюм и сует тебе в руку пятьдесят монет. «А теперь я должен идти...»~ */
  IF ~~ THEN REPLY #28151 /* ~«Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY #28023 /* ~«Давно пора! — он выхватывает у тебя костюм. — А теперь я должен идти...»~ */
  IF ~~ THEN REPLY #28152 /* ~«Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY #28024 /* ~«Это... это... немыслимо! Полный абсурд! Кем он себя возомнил?! — внезапно он хмурится. — Если подумать, это звучит немного неправдоподобно, даже для Гонсалвиса». Он с подозрением смотрит на тебя.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28153 /* ~Ложь: «Ты ему не очень-то нравишься, Малманер. Ты платишь за свои поспешные слова, сказанные ему раньше».~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(80)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Я взял у портного Гонсалвиса второй костюм и отдал его Малманеру.~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28154 /* ~Ложь: «Ну, э, ты его очень расстроил».~ */ GOTO 49
  IF ~~ THEN REPLY #28155 /* ~«Прошу прощения, я оговорился. Пятьдесят медяков».~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Я взял у портного Гонсалвиса второй костюм и отдал его Малманеру.~ */ GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #28025 /* ~Он смотрит на тебя с подозрением, сжав губы.~ */
  IF ~~ THEN REPLY #28156 /* ~«Прошу прощения, я оговорился. Пятьдесят медяков».~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #28026 /* ~Он смотрит на тебя с подозрением, затем уступает. Он издает звук отвращения, выхватывает у тебя костюм и сует тебе в руку восемьдесят монет. «А теперь я должен идти...»~ */
  IF ~~ THEN REPLY #28157 /* ~«Прощай».~ */ DO ~EscapeArea()
~ EXIT
END
