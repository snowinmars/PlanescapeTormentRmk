// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFCLERK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~GFCLERK~

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5909 /* ~«Значит, ты тот, из-за кого они подняли весь этот шум, а? Не стал бы их винить за это... на вид-то ты опасен. Давай, вали отсюдова».~ */
  IF ~~ THEN REPLY #5910 /* ~Прикончить старика.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_GFClerk_1","GLOBALGood",-1)
Kill(Myself)
~ EXIT
  IF ~~ THEN REPLY #5911 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5912 /* ~«Я б и рад тебе помочь, сынок, но для меня от этого проблем будет больше, чем толку. Уходи и возвращайся попозже, когда стража не будет дышать тебе в затылок».~ */
  IF ~~ THEN REPLY #5913 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #5914 /* ~Ты видишь иссушенного старика с трясущимися пальцами и лукавым лицом. Он внимательно осматривает тебя и произносит: «Черт... э... а мы раньше не встречались? Ты мне кажешься чем-то знакомым».~ */
  IF ~~ THEN REPLY #5915 /* ~«Думаю, такое возможно».~ */ GOTO 4
  IF ~~ THEN REPLY #5916 /* ~«Вряд ли, старик».~ */ GOTO 5
  IF ~~ THEN REPLY #5917 /* ~«Откуда? Ты помнишь, где мы встречались?»~ */ GOTO 6
  IF ~~ THEN REPLY #5918 /* ~«Я здесь, чтобы забрать одну вещь».~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5919 /* ~«Мне нужно несколько лишних шмоток и кузнечный инструмент».~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5920 /* ~«Я ищу одежду для маскировки».~ */ GOTO 9
  IF ~~ THEN REPLY #5921 /* ~«Кто ты?»~ */ GOTO 10
  IF ~~ THEN REPLY #5922 /* ~«Я хотел бы получить кузнечный инструмент».~ */ GOTO 11
  IF ~~ THEN REPLY #5923 /* ~«Интересно. Прощай, старик».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from: 5.0 8.2 9.2 10.0 11.4 14.0 18.0 21.0 22.0 23.0 24.0 25.0
  SAY #5924 /* ~«Ты хотел еще чего-то?»~ */
  IF ~~ THEN REPLY #5925 /* ~«Ты упоминал, что видел меня раньше. Не припоминаешь, где?»~ */ GOTO 6
  IF ~~ THEN REPLY #5926 /* ~«Нет, просто хотел увидеть твою улыбающуюся рожу».~ */ GOTO 12
  IF ~~ THEN REPLY #5927 /* ~«Я здесь, чтобы забрать одну вещь».~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5928 /* ~«Мне нужно несколько лишних шмоток и кузнечный инструмент».~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5929 /* ~«Я ищу одежду для маскировки».~ */ GOTO 9
  IF ~~ THEN REPLY #5930 /* ~«Кто ты?»~ */ GOTO 10
  IF ~~ THEN REPLY #5931 /* ~«Я хотел бы получить кузнечный инструмент».~ */ GOTO 11
  IF ~~ THEN REPLY #5932 /* ~«Интересно. Прощай, старик».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #5933 /* ~«Я никогда не забываю лица... постой-ка... ой, ну и Баатор с ним».~ */
  IF ~~ THEN REPLY #5934 /* ~«Ты помнишь, где это было? Для меня это важно».~ */ GOTO 6
  IF ~~ THEN REPLY #5935 /* ~«Я здесь, чтобы забрать одну вещь».~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5936 /* ~«Мне нужно несколько лишних шмоток и кузнечный инструмент».~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5937 /* ~«Я ищу одежду для маскировки».~ */ GOTO 9
  IF ~~ THEN REPLY #5938 /* ~«Кто ты?»~ */ GOTO 10
  IF ~~ THEN REPLY #5939 /* ~«Я хотел бы получить кузнечный инструмент».~ */ GOTO 11
  IF ~~ THEN REPLY #5940 /* ~«Тогда забудь. Пока».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #5941 /* ~«Могу поклясться, что видал тебя раньше. Ты, случай, преступником не бывал? — старик тихонько хихикает. — О, забудь. Потом вспомню».~ */
  IF ~~ THEN REPLY #5942 /* ~«Ладно. Тогда ответь мне на пару вопросов».~ */ GOTO 3
  IF ~~ THEN REPLY #5943 /* ~«Надеюсь, что нет. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.0 4.0
  SAY #5944 /* ~«Не так быстро, малец. Мозгам требуется время, чтобы разогреться для таких задач. Я много прожил, и в то время видел намного больше лиц, так что вспомнить не так-то просто. Память — штука слишком скоротечная, чтоб на нее полагаться».

Перед ответом ты бормочешь: «Мне-то можешь не рассказывать, 'малец'».~ */
  IF ~~ THEN REPLY #5945 /* ~«Тогда забудь. Я здесь, чтобы забрать одну вещь».~ */ GOTO 7
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5946 /* ~«Тогда ладно. Мне нужно несколько лишних шмоток и кузнечный инструмент».~ */ GOTO 8
  IF ~  GlobalGT("Smuggle","GLOBAL",0)
GlobalLT("Smuggle","GLOBAL",5)
!Global("Smuggle","GLOBAL",3)
~ THEN REPLY #5947 /* ~«Ладно. Я ищу одежду для маскировки».~ */ GOTO 9
  IF ~~ THEN REPLY #5948 /* ~«Тогда скажи мне: кто ты?»~ */ GOTO 10
  IF ~~ THEN REPLY #5949 /* ~«Тогда мне нужно получить кузнечный инструмент».~ */ GOTO 11
  IF ~~ THEN REPLY #5950 /* ~«Отлично. Бывай, 'малец'».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.2 4.1 6.0
  SAY #5951 /* ~«Есть квитанция? Тебе понадобится квитанция, иначе я ничего не смогу тебе дать».~ */
  IF ~  !Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5952 /* ~«У меня здесь имеется парочка».~ */ DO ~TakePartyItemNum("Receipt",1)
TakePartyItemNum("Receipt2",1)
~ GOTO 13
  IF ~  !Global("Receipt","GLOBAL",2)
!PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5953 /* ~«Конечно. Держи».~ */ DO ~TakePartyItemNum("Receipt2",1)
~ GOTO 14
  IF ~  Global("Receipt","GLOBAL",2)
!PartyHasItem("Receipt")
PartyHasItem("Receipt2")
~ THEN REPLY #5954 /* ~«Конечно. Держи».~ */ DO ~TakePartyItemNum("Receipt2",1)
~ GOTO 14
  IF ~  !Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
!PartyHasItem("Receipt2")
~ THEN REPLY #5955 /* ~«Есть».~ */ DO ~TakePartyItemNum("Receipt",1)
~ GOTO 15
  IF ~  !PartyHasItem("Receipt")
!PartyHasItem("Receipt2")
~ THEN REPLY #5956 /* ~Ложь: «Да».~ */ DO ~IncrementGlobalOnceEx("GLOBALClerk1","GLOBALLaw",-1)
~ GOTO 16
  IF ~  Global("Receipt","GLOBAL",2)
PartyHasItem("Receipt")
~ THEN REPLY #5957 /* ~«Конечно. Держи».~ */ DO ~TakePartyItemNum("Receipt",1)
~ GOTO 19
  IF ~~ THEN REPLY #5958 /* ~«Нет».~ */ GOTO 16
  IF ~~ THEN REPLY #5959 /* ~«Забудь. Пока».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.4 3.3 4.2 6.1
  SAY #5960 /* ~«Во как? Ну, тогда ладно. Это обойдется тебе... давай прикинем... ну, скажем, в шестьдесят медяков».~ */
  IF ~  PartyGoldGT(59)
~ THEN REPLY #5961 /* ~«На, держи».~ */ DO ~TakePartyGold(60)
~ GOTO 17
  IF ~  PartyGoldLT(60)
~ THEN REPLY #5962 /* ~«У меня нет столько».~ */ GOTO 18
  IF ~~ THEN REPLY #5963 /* ~«Забудь об этом. У меня есть пару вопросов».~ */ GOTO 3
  IF ~~ THEN REPLY #5964 /* ~«Забудь. Пока».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5 3.4 4.3 6.2
  SAY #5965 /* ~«Значит, маскировка? Уже догадываюсь, для чего она тебе сдалась, и продам ее тебе за скромную цену в шестьдесят медяков».~ */
  IF ~  PartyGoldGT(59)
~ THEN REPLY #5966 /* ~«На, держи».~ */ DO ~TakePartyGold(60)
~ GOTO 17
  IF ~  PartyGoldLT(60)
~ THEN REPLY #5967 /* ~«У меня нет столько».~ */ GOTO 18
  IF ~~ THEN REPLY #5968 /* ~«Забудь об этом. У меня есть пару вопросов».~ */ GOTO 3
  IF ~~ THEN REPLY #5969 /* ~«Забудь. Пока».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.6 3.5 4.4 6.3
  SAY #5970 /* ~«Я-то? Я Надилин, величайший воин боголюдей! — он вздыхает. — По крайней мере, был когда-то. Теперь я клерк в Литейной, дышу этой копотью и приближаю день своей смерти».~ */
  IF ~~ THEN REPLY #5971 /* ~«Какая жалость. У меня есть другие вопросы».~ */ GOTO 3
  IF ~~ THEN REPLY #5972 /* ~«Ладно. Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.7 3.6 4.5 6.4
  SAY #5973 /* ~«О, теперь ты хочешь стать кузнецом, не так ли, малец? Хорошо. Тебе понадобится фартук — десять медяков, какие-нибудь щипцы — еще десять, и молот — он по двадцать. Итого выходит... дай-ка подумать... пятьдесят медяков».~ */
  IF ~~ THEN REPLY #5974 /* ~«Старик, вообще-то, это сорок медяков».~ */ GOTO 20
  IF ~  PartyGoldGT(49)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #5975 /* ~Заплатить пятьдесят медяков.~ */ DO ~TakePartyGold(50)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 21
  IF ~  PartyGoldGT(49)
GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5976 /* ~Заплатить пятьдесят медяков.~ */ DO ~TakePartyGold(50)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 22
  IF ~~ THEN REPLY #5977 /* ~«Извини, но это больше похоже сорок медяков».~ */ GOTO 20
  IF ~~ THEN REPLY #5978 /* ~«Забудь об этом. У меня есть пару вопросов».~ */ GOTO 3
  IF ~~ THEN REPLY #5979 /* ~«Не думаю, что сейчас мне это нужно. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY #5980 /* ~«Будь здоров, сынок. А теперь, если ты не против, мне есть чем заняться».~ */
  IF ~~ THEN REPLY #5981 /* ~«Ррр. Ладно».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.0
  SAY #5982 /* ~«Сейчас вернусь». Проходит несколько минут. Он в торопливо возвращается и дает тебе пару предметов: небольшую, почти невесомую металлическую штуковину и палицу превосходной работы. «Этой штуковине... ей же больше сотни лет! Долго же ты ждал, дружище. Как она к тебе попала?»~ */
  IF ~~ THEN REPLY #5983 /* ~«Оставил ее для себя, но потом был занят».~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
AddexperienceParty(40000)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #5984 /* ~«Досталась мне по наследству».~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 24
  IF ~~ THEN REPLY #5985 /* ~«Это было в завещании».~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
GiveItemCreate("Justfier",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 25
END

IF ~~ THEN BEGIN 14 // from: 7.1 7.2
  SAY #5986 /* ~Старик берет твою квитанцию и сверяет ее со своими записями. Он исчезает на одну-две минуты и возвращается с отличной палицей в руках. «Держи, малец».~ */
  IF ~~ THEN REPLY #5987 /* ~«Спасибо. У меня еще пару вопросов».~ */ DO ~GiveItemCreate("Justfier",Protagonist,1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #5988 /* ~«Спасибо. Пока».~ */ DO ~GiveItemCreate("Justfier",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY #5989 /* ~Старик берет у тебя квитанцию, тщательно ее изучает. «Этой вещи больше сотни лет! Как она к тебе попала?»~ */
  IF ~~ THEN REPLY #5990 /* ~«Оставил ее для себя, но потом был занят».~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 23
  IF ~~ THEN REPLY #5991 /* ~«Досталась мне по наследству».~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 24
  IF ~~ THEN REPLY #26874 /* ~«Это было в завещании».~ */ DO ~GiveItemCreate("UPortal",Protagonist,1,0,0)
SetGlobal("Receipt","GLOBAL",2)
SetGlobal("Uportal_Given","GLOBAL",1)
AddexperienceParty(40000)
~ GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 7.4 7.6
  SAY #5992 /* ~Он замолкает на миг. «Если у тебя имеется квитанция, давай ее сюда. За так я тебе ничего не дам. А теперь уходи. Уверен, что найду, чем заняться, кроме как отвлекаться на прохожих».~ */
  IF ~~ THEN REPLY #5993 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.0 9.0
  SAY #5994 /* ~«Тогда держи. Выведи эту сучку отсюда, чтоб нам больше не пришлось терпеть ее предательство».~ */
  IF ~~ THEN REPLY #5995 /* ~Ложь: «Чего? Оно мне не для того нужно!»~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
IncrementGlobalOnceEx("GLOBALClerk2","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #5996 /* ~«Откуда ты это знаешь?»~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
~ GOTO 27
  IF ~~ THEN REPLY #5997 /* ~«Спасибо большое, старик. Счастливо».~ */ DO ~SetGlobal("Smuggle","GLOBAL",4)
GiveItemCreate("Disguise",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.1 9.1 20.2
  SAY #5998 /* ~«Тогда я вообще не могу отдать тебе это. Извини».~ */
  IF ~~ THEN REPLY #5999 /* ~«Отлично. Тогда ответь мне на пару вопросов».~ */ GOTO 3
  IF ~~ THEN REPLY #6000 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 7.5
  SAY #6001 /* ~Он внимательно изучает квитанцию, потом снова смотрит на тебя. «Разве я тебе уже это не выдавал? Видишь ли, я не могу выдать тебе это дважды, — он кладет квитанцию в карман. — А теперь уходи. Вон!»~ */
  IF ~~ THEN REPLY #6002 /* ~Уйти.~ */ DO ~TakePartyItemNum("Receipt",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.0 11.3
  SAY #6003 /* ~«Что же это я? Конечно же, так оно и есть. Говорю тебе: память — вещь коварная».~ */
  IF ~  PartyGoldGT(39)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #6004 /* ~«Так-то. Давай мне мои вещи».~ */ DO ~TakePartyGold(40)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 21
  IF ~  PartyGoldGT(39)
GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6005 /* ~«Так-то. Давай мне мои вещи».~ */ DO ~TakePartyGold(40)
GiveItemCreate("Lapron",Protagonist,1,0,0)
GiveItemCreate("Fhammer",Protagonist,1,0,0)
GiveItemCreate("Tongs",Protagonist,1,0,0)
~ GOTO 22
  IF ~~ THEN REPLY #6006 /* ~«Ну, для меня это все еще дорого».~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 11.1 20.0
  SAY #6007 /* ~«Если хочешь поработать в кузнице, не забудь взять немного руды у Тильдона. Он скупой ублюдок, но только у него можно достать руду».~ */
  IF ~~ THEN REPLY #6008 /* ~«Спасибо. У меня есть другие вопросы к тебе».~ */ GOTO 3
  IF ~~ THEN REPLY #6009 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 11.2 20.1
  SAY #6010 /* ~«Если хочешь поработать в кузнице, тебе понадобится немного руды. Попробуй взять ее у заместителя Тильдона. Не помню, как ее звать, но она должна дать ее тебе без особых возражений».~ */
  IF ~~ THEN REPLY #6011 /* ~«Спасибо, старик. У меня есть другие вопросы к тебе».~ */ GOTO 3
  IF ~~ THEN REPLY #6012 /* ~«Спасибо и прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.0 15.0
  SAY #6013 /* ~«Хороша вещица, малец. Уверен, ты в самом деле был занят! — он смеется и передает ее тебе. — Держи. Поосторожней с ней, слышишь?»~ */
  IF ~~ THEN REPLY #6014 /* ~«Так и будет. Только у меня были еще вопросы».~ */ GOTO 3
  IF ~~ THEN REPLY #6015 /* ~«Конечно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.1 15.1
  SAY #6016 /* ~«Значит, это передавалось из поколения в поколение? Тебе повезло, что мы это не выкинули. Мы иногда так и делаем, а иногда продаем такие вещи, если можем доказать, что заказчик не вернется за ними. Что ж, держи. Обращайся с ним как следует, слышишь?»~ */
  IF ~~ THEN REPLY #6017 /* ~«Конечно. Ответь мне еще на пару вопросов, ладно?»~ */ GOTO 3
  IF ~~ THEN REPLY #6018 /* ~«Я так и сделаю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 13.2 15.2
  SAY #6019 /* ~«Понятно. Неплохой улов. Держи, малец. Обращайся с ним как следует, слышишь?»~ */
  IF ~~ THEN REPLY #6020 /* ~«Разумеется. Ответь еще на вопрос, ладно?»~ */ GOTO 3
  IF ~~ THEN REPLY #6021 /* ~«Конечно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.0
  SAY #6022 /* ~Он смотрит на тебя с отвращением. «Брось, малец. Ты же получил свои вещи. Теперь убирайся отсюда, или я передумаю на счет того, чтобы позвать стражу».~ */
  IF ~~ THEN REPLY #6023 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY #6024 /* ~«Я, быть может, стар и слегка не в себе, но это вовсе не значит, что я не вижу, что к чему. Последнее время Бедай-Линн было несладко, а она ведь никогда не любила работать на нечисть. А теперь уходи. Уверен, мне будет чем заняться».~ */
  IF ~~ THEN REPLY #6025 /* ~Уйти.~ */ EXIT
END
