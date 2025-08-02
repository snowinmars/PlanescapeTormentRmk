// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRACE~

IF ~~ THEN BEGIN 0 // from:
  SAY #2850 /* ~«Привет. Я — местная пуританка-суккуб. Также я могу стать твоей спутницей... ЕСЛИ ты поимеешь меня».~ */
  IF ~~ THEN REPLY #2851 /* ~«О, я обязательно ПОИМЕЮ тебя. Ха-ха. До встречи, танарри».~ */ EXIT
  IF ~~ THEN REPLY #24998 /* ~«Хватит, Грация. У меня нет времени на болтовню с тобой, так что давай в ритме вальса».~ */ DO ~ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.0 4.0 5.2
  SAY #6858 /* ~Падшая Грация кивает. «Да, конечно».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7013 /* ~«Спроси его, кто он».~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7014 /* ~«Спроси его, кто он».~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7015 /* ~«Спроси его, кто он».~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7016 /* ~«Спроси его, что он делает».~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7017 /* ~«Спроси его, что он делает».~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7018 /* ~«Спроси его, что он делает».~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #7019 /* ~«Спроси его про Леди Боли».~ */ EXTERN ~DDABUS~ 19
  IF ~~ THEN REPLY #7020 /* ~«Спроси его про Фелла».~ */ GOTO 5
  IF ~~ THEN REPLY #7021 /* ~«Неважно. Идем отсюда».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #6859 /* ~«Он говорит, что он — 'дабус', — Грация замолкает. — Я редко встречала дабусов, у которых вообще было имя... по крайней мере, хоть что-либо, что можно принять за имя. Похоже, они предпочитают использовать символы».~ */
  IF ~~ THEN REPLY #7022 /* ~«Ты можешь задать ему другой вопрос?»~ */ GOTO 1
  IF ~~ THEN REPLY #7023 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #6860 /* ~«Он говорит, что выполняет свои обязанности, — она поворачивается к тебе. — Они тратят большую часть времени на ремонт и снос частей города. В каком-то смысле они являются хранителями города».~ */
  IF ~~ THEN REPLY #7024 /* ~«Ты можешь задать ему другой вопрос?»~ */ GOTO 1
  IF ~~ THEN REPLY #7025 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #6861 /* ~«Думаю, что не стоит надеяться на более точный ответ».~ */
  IF ~~ THEN REPLY #7026 /* ~«Ты можешь задать ему другой вопрос?»~ */ GOTO 1
  IF ~~ THEN REPLY #7027 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 5 // from: 1.7
  SAY #6862 /* ~Грация хмурится. «Не уверена, что будет благоразумно задавать этот вопрос. Он может оскорбить дабуса, ведь Фелл больше не является членом их сообщества...»~ */
  IF ~~ THEN REPLY #7028 /* ~«И все же, ты можешь спросить его?»~ */ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7029 /* ~«Хватит нотаций, просто спроси его».~ */ DO ~MoraleDec("Grace",1)
~ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7030 /* ~«Ты можешь задать ему другой вопрос?»~ */ GOTO 1
  IF ~~ THEN REPLY #7031 /* ~«Тогда неважно. Идем».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY #7186 /* ~Грация кивает, как бы предоставляя тебе уединение. «Я скоро вернусь». Она поворачивается и уходит.~ */
  IF ~~ THEN REPLY #7482 /* ~Пойти за проституткой...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DHARLOTN~ 32
END

IF ~~ THEN BEGIN 7 // from:
  SAY #6474 /* ~«Она не может говорить об этом в присутствии нечисти. Раз она связана контрактом, то можно предположить, что это проект Законопослушного порядка. А раз связана еще и магически, то, скорее всего, в этом замешаны баатезу».~ */
  IF ~~ THEN REPLY #8000 /* ~«Довольно изящная цепь умозаключений. Это так, Келлера?»~ */ EXTERN ~DKELLERA~ 14
  IF ~~ THEN REPLY #8001 /* ~«Очень интересно. Я запомню это. А пока, Келлера, ответь на другие вопросы».~ */ EXTERN ~DKELLERA~ 21
END

IF ~~ THEN BEGIN 8 // from:
  SAY #6476 /* ~«Она не может говорить об этом в присутствии нечисти. Раз она связана контрактом, то можно предположить, что это проект Законопослушного порядка. А раз связана еще и магически, то, скорее всего, в этом замешаны баатезу».~ */
  IF ~~ THEN REPLY #8002 /* ~«Довольно изящная цепь умозаключений. Это так, Келлера?»~ */ EXTERN ~DKELLERA~ 31
  IF ~~ THEN REPLY #8003 /* ~«Очень интересно. Я запомню это. А пока, Келлера, ответь на другие вопросы».~ */ EXTERN ~DKELLERA~ 23
END

IF ~~ THEN BEGIN 9 // from:
  SAY #6477 /* ~«Я понимаю».~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 36
END

IF ~~ THEN BEGIN 10 // from:
  SAY #7997 /* ~«Я понимаю».~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 37
END

IF ~~ THEN BEGIN 11 // from:
  SAY #11273 /* ~Падшая Грация невозмутимо говорит. «Илквикс, я согласна, что моя мать была бы рада услышать, что я все еще добром здравии, что я все еще продолжаю двигаться в выбранном направлении и что я едина с моими спутниками. Когда вернешься назад в Бездну, будь любезен, доставь это сообщение ради меня? Я уверена, что она щедро наградит того, кто принесет ей столь великолепную новость обо мне». Она кротко улыбается.~ */
  IF ~~ THEN REPLY #11274 /* ~«Это все воистину очаровательно, но у меня есть другие вопросы...»~ */ EXTERN ~DILQUIXT~ 5
  IF ~~ THEN REPLY #11275 /* ~«Довольно. Прощай, Илквикс».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #11404 /* ~Сделав небольшой реверанс, Грация отвечает: «Уверена, что твои любезные слова растопят любое сердце, Илквикс. И все же мы должны помнить, что многие люди одновременно больше и меньше, чем они кажутся. Было бы весьма досадно, если бы все мы так быстро разоблачались... пожалуй, даже слишком досадно».~ */
  IF ~~ THEN REPLY #11405 /* ~«Что ты имеешь в виду, Грация?»~ */ GOTO 13
  IF ~~ THEN REPLY #11406 /* ~«Довольно. Мне нужны ответы на несколько вопросов, Илквикс».~ */ EXTERN ~DILQUIXN~ 2
  IF ~~ THEN REPLY #11410 /* ~«Закончим эту беседу. Прощай, Илквикс».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11407 /* ~«Я лишь хотела сказать, что об опрометчивых словах потом часто жалеют, и что многие обладают чертами и даже достоинствами, о которых никто даже и не подозревает. Слишком многие делают скоропалительные выводы и даже не осознают, что эти выводы обрушатся потом на них самих. Поэтому нам лучше обдумывать свои слова до того, как они раскроют о нас больше, чем мы того хотели».~ */
  IF ~~ THEN REPLY #11408 /* ~«Понятно... Илквикс, у меня были еще вопросы...»~ */ EXTERN ~DILQUIXN~ 2
  IF ~~ THEN REPLY #11409 /* ~«Хорошо сказано, Грация. Прощай, Илквикс».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #16627 /* ~Грация кивает. «Несомненно. Я считаю, что это великолепная идея».~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16927 /* ~«Спасибо. Что думаешь, Морт?»~ */ DO ~SetGlobal("Tree_M","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16928 /* ~«Спасибо. Анна? А ты?»~ */ DO ~SetGlobal("Tree_A","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16929 /* ~«Спасибо. Игнус?»~ */ DO ~SetGlobal("Tree_I","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16930 /* ~«Спасибо. Даккон, ты поможешь этому человеку?»~ */ DO ~SetGlobal("Tree_D","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16931 /* ~«Спасибо. Даккон, помоги этому человеку».~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16932 /* ~«Спасибо. Нордом, как ты думаешь, ты сможешь помочь?»~ */ DO ~SetGlobal("Tree_N","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16933 /* ~«Спасибо. Вейлор, ты сможешь помочь?»~ */ DO ~SetGlobal("Tree_V","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16934 /* ~«Спасибо. У меня есть вопросы, Скорбящий...»~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16935 /* ~«Спасибо, Грация. Прощай, Скорбящий-по-деревьям».~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 16.0 17.1 18.3 19.3 20.0 21.12 22.12 23.13 24.13 25.13 26.12 27.9 28.9 29.0 30.3 31.3 32.0 32.2 33.1 34.3 35.1 36.3 37.0 38.3 39.3 40.3 41.3 42.3 43.12 44.5 45.0 46.0 46.2
  SAY #22578 /* ~Падшая Грация кивает. «Да, конечно».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25256 /* ~«Спроси его, кто он».~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25257 /* ~«Спроси его, кто он».~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25258 /* ~«Спроси его, кто он».~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25259 /* ~«Спроси его, что это за место».~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25260 /* ~«Спроси его, что это за место».~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25261 /* ~«Спроси его, что это за место».~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25262 /* ~«Мне кажется, я знаю тебя, Фелл».~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25263 /* ~«Мне кажется, я знаю тебя, Фелл».~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25264 /* ~«Мне кажется, я знаю тебя, Фелл».~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25265 /* ~«Мне кажется, я знаю тебя, Фелл».~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25266 /* ~«Мне кажется, я знаю тебя, Фелл».~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25267 /* ~«Мне кажется, я знаю тебя, Фелл».~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64406 /* ~«Что находится за занавесом, Фелл?»~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64407 /* ~«Что находится за занавесом, Фелл?»~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64408 /* ~«Что находится за занавесом, Фелл?»~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64409 /* ~«Что это за рамы в задней комнате, Фелл?»~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64410 /* ~«Что это за рамы в задней комнате, Фелл?»~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64411 /* ~«Что это за рамы в задней комнате, Фелл?»~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25268 /* ~«Он сказал, что уже встречал меня раньше... он знает, как я умер?»~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25269 /* ~«Он сказал, что уже встречал меня раньше... он знает, как я умер?»~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25270 /* ~«Он сказал, что уже встречал меня раньше... он знает, как я умер?»~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #25271 /* ~«Спроси его, слышал ли он что-нибудь о Равель».~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25272 /* ~«Спроси его, слышал ли он что-нибудь о Равель».~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25273 /* ~«Спроси его, слышал ли он что-нибудь о Равель».~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #25274 /* ~«Спроси его, он ли сделал татуировки на оторванной руке, которую я нашел».~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25275 /* ~«Спроси его, он ли сделал татуировки на оторванной руке, которую я нашел».~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25276 /* ~«Спроси его, он ли сделал татуировки на оторванной руке, которую я нашел».~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25277 /* ~«Он может сообщить мне что-нибудь о татуировках на моем теле?»~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25278 /* ~«Он может сообщить мне что-нибудь о татуировках на моем теле?»~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25279 /* ~«Он может сообщить мне что-нибудь о татуировках на моем теле?»~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25280 /* ~«Можно посмотреть на татуировки, которые у него есть?»~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25281 /* ~«Можно посмотреть на татуировки, которые у него есть?»~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25282 /* ~«Можно посмотреть на татуировки, которые у него есть?»~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25283 /* ~«Неважно. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #22580 /* ~«Его зовут Фелл». Перед тем как повернутся к тебе, Грация бросает мимолетный взгляд на символ. «Этот символ... белый овал, разделенный черной молнией... такой же нарисован снаружи этого заведения. Думаю, белый овал символизирует Сигил, а черная молния... — Грация умолкает. — Я точно не знаю».~ */
  IF ~~ THEN REPLY #25284 /* ~«Хм-м. Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25285 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #22583 /* ~Грация терпеливо ждет появления символов. «Это его студия. Здесь он выводит татуировки на коже других». Грация с улыбкой поворачивается к тебе; кажется, присутствие Фелла подпитывает ее. «Фелл известен во всем Сигиле как одаренный художник. Холстом ему служит кожа других».~ */
  IF ~~ THEN REPLY #25286 /* ~«Можно посмотреть на татуировки, которые у него есть?»~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25287 /* ~«Хм-м. Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25288 /* ~«Что ж, я запомню это. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #22585 /* ~Грация внимательно изучает символы, затем поворачивается к тебе, одарив тебя странным взглядом. «Фелл говорит, что ты пришел к нему впервые, но на самом деле это не в первый раз, — Грация оценивающе осматривает тебя. — Возможно, он помнит тебя таким, каким ты был до того, как стал тобой...» Неожиданно она понимает сказанное и тихонько смеется. «Прошу прощения... Никогда не думала, что смогу использовать так много 'ты' в обращении к кому-либо».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25289 /* ~«Он знает, кто я такой?»~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25290 /* ~«Он знает, кто я такой?»~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25291 /* ~«Он знает, кто я такой?»~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #25292 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25293 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #22587 /* ~Грация хмурится, поглаживая подбородок в раздумьях. «Фелл говорит, что он знает тебя... но затем он говорит... Это странно... Ему *не дозволено* рассказывать твою историю».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25294 /* ~«Не дозволено? Почему?»~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25295 /* ~«Не дозволено? Почему?»~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25296 /* ~«Не дозволено? Почему?»~ */ JOURNAL #24270 /* ~Фелл сказал, что знал меня, однако не может рассказать всю мою «историю». Самое странное в этом — причина. Он сказал, что не может рассказать, потому что «он не может изменить сущность человека».~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #25297 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25298 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #22591 /* ~«Он просит прощения, но он не может сказать». Грация поворачивается к тебе, встречая твой взгляд. «Дальше он говорит странные вещи. Он говорит, что *'не может изменить сущность человека'*». При этих словах Грации ты чувствуешь ужасное давление внутри своего черепа... оно похоже на удары молотов... тебе кажется, что твой череп вот-вот взорвется... но на последнем слове оно рассеивается в эхо.~ */
  IF ~~ THEN REPLY #25299 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25300 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #23011 /* ~«Фелл говорит, что она — не миф».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25301 /* ~«Он знает, где она сейчас находится?»~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25302 /* ~«Он знает, где она сейчас находится?»~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25303 /* ~«Он знает, где она сейчас находится?»~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25304 /* ~«Он может нам что-нибудь о ней рассказать?»~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25305 /* ~«Он может нам что-нибудь о ней рассказать?»~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25306 /* ~«Он может нам что-нибудь о ней рассказать?»~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25307 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25308 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25309 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25310 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25311 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25312 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25313 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25314 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #23012 /* ~Голос Грации становится мрачнее по мере того, как она читает символы. «Фелл говорит, что Равель находится в одном из лабиринтов Леди».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25315 /* ~«Лабиринтов?»~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25316 /* ~«Лабиринтов?»~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25317 /* ~«Лабиринтов?»~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25318 /* ~«Он может нам что-нибудь о ней рассказать?»~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25319 /* ~«Он может нам что-нибудь о ней рассказать?»~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25320 /* ~«Он может нам что-нибудь о ней рассказать?»~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25321 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25322 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25323 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25324 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25325 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25326 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25327 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25328 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #23013 /* ~Голос Грации становится мрачнее по мере того, как она читает символы. «Фелл говорит, что желания Равель не совпали с желаниями Леди, за что она была наказана. Равель была помещена в один из лабиринтов Леди, — она поворачивается к тебе. — Ты знаком с понятием лабиринтов?»~ */
  IF ~~ THEN REPLY #25329 /* ~«Не очень. Если ты можешь объяснить...»~ */ GOTO 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25330 /* ~«Да. Почему Равель попала в лабиринт?»~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25331 /* ~«Да. Почему Равель попала в лабиринт?»~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25332 /* ~«Да. Почему Равель попала в лабиринт?»~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25333 /* ~«Я знаком с ними. Он знает, как попасть в лабиринт Равель?»~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25334 /* ~«Я знаком с ними. Он знает, как попасть в лабиринт Равель?»~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25335 /* ~«Я знаком с ними. Он знает, как попасть в лабиринт Равель?»~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25336 /* ~«Да. Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25337 /* ~«Да. Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25338 /* ~«Да. Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25339 /* ~«Да. Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25340 /* ~«Да. Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25341 /* ~«Да. Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25342 /* ~«Да. Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25343 /* ~«Да. Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #23014 /* ~Грация соединяет пальцы так, чтобы ладони образовали подобие круга. «Говорят, что Леди обладает способностью брать части Сигила...» Ты с удивлением видишь, как призрачный образ мизинца Грации отделяется от руки и сам по себе парит в воздухе, вращаясь вдоль небольшого круга. «...и делать из них лабиринт».~ */
  IF ~~ THEN REPLY #25344 /* ~«Продолжай...»~ */ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25345 /* ~«Кажется, я понял. Почему Равель попала в лабиринт?»~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25346 /* ~«Кажется, я понял. Почему Равель попала в лабиринт?»~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25347 /* ~«Кажется, я понял. Почему Равель попала в лабиринт?»~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25348 /* ~«Достаточно. Он знает, как попасть в лабиринт Равель?»~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25349 /* ~«Достаточно. Он знает, как попасть в лабиринт Равель?»~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25350 /* ~«Достаточно. Он знает, как попасть в лабиринт Равель?»~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25351 /* ~«Я понял. У меня есть к нему другой вопрос...»~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25352 /* ~«Я понял. У меня есть к нему другой вопрос...»~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25353 /* ~«Я понял. У меня есть к нему другой вопрос...»~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25354 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25355 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25356 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25357 /* ~«Я понял. У меня есть к нему другой вопрос...»~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25358 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23015 /* ~Небольшой призрачный круг парит в воздухе, затем начинает медленно вращаться. «В эту часть Сигила она помещает узника. Попав в лабиринт, выбраться из него уже нельзя. Это может случиться в любое время, когда ты гуляешь по улице, входишь через дверь, — она резко хлопает в ладони, — и вдруг оказываешься в другом месте». Внутри призрачного круга ты неожиданно видишь мерцающее движение, как будто внутри кто-то бродит.~ */
  IF ~~ THEN REPLY #25359 /* ~«Продолжай...»~ */ GOTO 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25360 /* ~«Кажется, я понял. Почему Равель попала в лабиринт?»~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25361 /* ~«Кажется, я понял. Почему Равель попала в лабиринт?»~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25362 /* ~«Кажется, я понял. Почему Равель попала в лабиринт?»~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25363 /* ~«Достаточно. Он знает, как попасть в лабиринт Равель?»~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25364 /* ~«Достаточно. Он знает, как попасть в лабиринт Равель?»~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25365 /* ~«Достаточно. Он знает, как попасть в лабиринт Равель?»~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25366 /* ~«Я понял. У меня есть к нему другой вопрос...»~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25367 /* ~«Я понял. У меня есть к нему другой вопрос...»~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25368 /* ~«Я понял. У меня есть к нему другой вопрос...»~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25369 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25370 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25371 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25372 /* ~«Я понял. У меня есть к нему другой вопрос...»~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25373 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #23016 /* ~Грация продолжает; крошечный призрачный лабиринт отражается в ее глазах. «Говорят, что в каждом лабиринте есть портал наружу, но найти его нелегко. Возможно, их оставили для того, чтобы дать узнику надежду. А, может, для того, чтобы помучить его». Призрачный лабиринт меркнет. «Наверно, и для того, и для другого».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25374 /* ~«Почему Равель попала в лабиринт?»~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25375 /* ~«Почему Равель попала в лабиринт?»~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25376 /* ~«Почему Равель попала в лабиринт?»~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25377 /* ~«Он знает, как попасть в лабиринт Равель?»~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25378 /* ~«Он знает, как попасть в лабиринт Равель?»~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25379 /* ~«Он знает, как попасть в лабиринт Равель?»~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25380 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25381 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25382 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25383 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25384 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25385 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25386 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25387 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #23017 /* ~Грация внимательно изучает символы. «Фелл говорит, что Равель попыталась 'открыть Клетку', — Грация поворачивается к тебе. — 'Клетка' — это одно из названий Сигила, — она задумчиво хмурится. — Не могу себе представить, зачем ей это понадобилось... выходит, что Равель попыталась разрушить стены Сигила».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25388 /* ~«Он знает, как до нее добраться?»~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25389 /* ~«Он знает, как до нее добраться?»~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25390 /* ~«Он знает, как до нее добраться?»~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25391 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25392 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25393 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25394 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25395 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25396 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25397 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25398 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #23018 /* ~«Фелл не знает, где ее найти. Он предостерегает нас от ее поисков, потому что... — Грация изучает последнюю часть символов. — Фелл говорит, что Равель находится 'под присмотром Леди'».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25399 /* ~«Что еще он знает о Равель?»~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25400 /* ~«Что еще он знает о Равель?»~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25401 /* ~«Что еще он знает о Равель?»~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25402 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25403 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25404 /* ~«Я хочу задать ему другой вопрос...»~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25405 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25406 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25407 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25408 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25409 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #23019 /* ~Грация изучает символы. Она обеспокоенно хмурится. «Фелл предостерегает нас от поисков Равель. Он говорит, что у нее черное сердце, и если она жива, она будет искать способ навредить тебе... и нам».~ */
  IF ~~ THEN REPLY #25410 /* ~«Буду иметь в виду. Я хочу задать ему другой вопрос...»~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25411 /* ~«Думаю, нашим путям суждено пересечься. Прощай».~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #23020 /* ~Грация читает символы по мере их появления. «Фелл говорит, что эта рука действительно твоя. Татуировки — его работа». Прервавшись, она изучает последнюю часть. «Он говорит, что одна из татуировок рассказывает о времени, когда ты разделял свой путь с четырьмя другими».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25412 /* ~«Четырьмя другими?»~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25413 /* ~«Четырьмя другими?»~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25414 /* ~«Четырьмя другими?»~ */ JOURNAL #24274 /* ~Фелл перевел мне руну на моей старой руке... он сказал, что в ней говорится о четырех, кто раньше шли вместе со мной. Эти четверо — «нелюбимый, любящий того, кто не любит», «невидящий то, что видят другие, и видящий то, чего другие не видят», «фамильяр, связанный обязательствами», «раб, чьи цепи — слова». Он сказал, что все они страдали от мучений, как и я, и что мои муки притягивают притягивают таких же мучеников.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25415 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25416 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #23021 /* ~Грация читает кружащиеся символы, ее лицо мрачнеет. «В татуировке записаны разумы четырех... один, безответно любящий другого; другой слеп, но все еще видит; еще один... фамильяр, кажется; а последний... раб, чьи цепи — слова...» Грация умолкает, когда четыре символа начинают превращаться в звенья, а потом образуют цепь...~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25417 /* ~«Что это за символ...»~ */ EXTERN ~DFELL~ 60
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25418 /* ~«Что это за символ...»~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25419 /* ~«Что это за символ...»~ */ EXTERN ~DFELL~ 61
  IF ~  False()
~ THEN REPLY #25420 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~  False()
~ THEN REPLY #25421 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #23022 /* ~Грация тихо произносит: «Мучение». Она изучает его, затем отворачивается, будто он причиняет ей боль. «Фелл говорит... — она делает глубокий вздох. — Плоть знает, что перенесла, даже когда разум забывает». Она поднимает голову, ваши взгляды пересекаются. В ее глазах видна какая-то странная синева, полная грусти и слез. «Фелл говорит, что руна, как магнит, притягивает к тебе другие измученные души».~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25422 /* ~«Я хочу задать ему другой вопрос...»~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",1)
~ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25423 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",1)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52609 /* ~«Я хочу задать ему другой вопрос...»~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",2)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52610 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #23023 /* ~«На руке есть старые татуировки, которые Фелл забыл. Он сказал, что может вернуть их тебе, если хочешь».~ */
  IF ~~ THEN REPLY #25424 /* ~«Хорошо... Я хотел бы посмотреть на все татуировки, которые у него есть».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25425 /* ~«Я хочу задать ему другой вопрос...»~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25426 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #23024 /* ~«Фелл говорит, что не делал эти татуировки, — Грация на секунду задумывается. — Если хочешь, он может рассказать тебе о некоторых из них».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25427 /* ~«Хорошо. Что он может о них рассказать?»~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25428 /* ~«Хорошо. Что он может о них рассказать?»~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25429 /* ~«Хорошо. Что он может о них рассказать?»~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #25430 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25431 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #23025 /* ~«Фелл говорит, что та, что на твоей спине, является указаниями для того, кто забыл себя, написанными заботливой рукой. Символ на твоем плече — это...» Неожиданно все, кроме одного, символы вокруг Фелла исчезают.~ */
  IF ~~ THEN REPLY #25432 /* ~«Что означает этот символ?»~ */ GOTO 46
  IF ~~ THEN REPLY #25433 /* ~«Неважно. Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25434 /* ~«Неважно. Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #23026 /* ~Грация хмурится. «Фелл говорит 'тени'».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25435 /* ~«Тени?»~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25436 /* ~«Тени?»~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25437 /* ~«Тени?»~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #25438 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25439 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #23027 /* ~Грация хмурится. «Фелл говорит, что за тобой пришло много теней. Они напали на тебя и оставили после себя твое тело, — она снова смотрит на символы. — Он не знает, почему они напали на тебя».~ */
  IF ~~ THEN REPLY #25440 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25441 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #23028 /* ~Похоже, Грация зачарована рамами с кожей вокруг, но затем ей удается взять себя в руки и перевести символы. «Это его галерея, — говорит она почтительно. — Он говорит, что ты его холст, и что он одновременно восхищается тобой и скорбит по тебе». ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25442 /* ~«Скорбит по мне? Почему?»~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25443 /* ~«Скорбит по мне? Почему?»~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25444 /* ~«Скорбит по мне? Почему?»~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #25445 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25446 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #23029 /* ~«Он говорит, что на твоей коже лежит знак мучения, — Грация переходит на шепот. — Над ним, словно камни над фундаментом, возведены несчастья и потери. Он говорит, что ты вынес много боли».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25447 /* ~«Что он имеет в виду?»~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25448 /* ~«Что он имеет в виду?»~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25449 /* ~«Что он имеет в виду?»~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #25450 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25451 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #23030 /* ~Грация непроизвольно кивает, переводя символы. «Фелл говорит, что восхищается тобой, потому что ты не сдаешься перед потерями, несмотря на тот факт, что цепи потерь сковывают тебя, — Грация поворачивается к тебе. — Он восхищается твоей силой».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25452 /* ~«Попроси его продолжить».~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25453 /* ~«Попроси его продолжить».~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25454 /* ~«Попроси его продолжить».~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #25455 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25456 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #23031 /* ~«Фелл говорит, что перенесенные тобой потери покрывают эту и все прошлые жизни». Голос Грации затихает, ее глаза зачарованно блестят. «Он говорит, что ты сбрасываешь кожу, как линяющая змея, и что ты пережил все возможные человеческие жизни».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25457 /* ~«Может, он еще что-то сказал?»~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25458 /* ~«Может, он еще что-то сказал?»~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25459 /* ~«Может, он еще что-то сказал?»~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #25460 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25461 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #23032 /* ~«Фелл желает предупредить тебя... — Грация изучает следующую серию символов. — Он желает предупредить тебя о том, что каждая из твоих жизней 'бросает тень на мироздание'». Она обдумывает это, затем продолжает: «Он говорит, что ты попадешь в место, где эти тени сходят с ума, а сожаления рубцами покрывают землю».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25462 /* ~«Понятно... Может, он еще что-то сказал?»~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25463 /* ~«Понятно... Может, он еще что-то сказал?»~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25464 /* ~«Понятно... Может, он еще что-то сказал?»~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #25465 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25466 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #23033 /* ~«Фелл говорит, чтобы ты 'ничего не подписывал', — Грация вскидывает бровь. — Он не говорит почему».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25467 /* ~«Хорошо».~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25468 /* ~«Хорошо. То есть, я... э... Я постараюсь больше ничего не подписывать».~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25469 /* ~«Хорошо. То есть, я... э... Я постараюсь больше ничего не подписывать».~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25470 /* ~«Хорошо. То есть, я... э... Я постараюсь больше ничего не подписывать».~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25471 /* ~«Хорошо».~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25472 /* ~«Хорошо. То есть, я... э... Я постараюсь больше ничего не подписывать».~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25473 /* ~«Хорошо. То есть, я... э... Я постараюсь больше ничего не подписывать».~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25474 /* ~«Хорошо. То есть, я... э... Я постараюсь больше ничего не подписывать».~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25475 /* ~«Хорошо».~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25476 /* ~«Хорошо. То есть, я... э... Я постараюсь больше ничего не подписывать».~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25477 /* ~«Хорошо. То есть, я... э... Я постараюсь больше ничего не подписывать».~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25478 /* ~«Хорошо. То есть, я... э... Я постараюсь больше ничего не подписывать».~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #25479 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25480 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #23034 /* ~«Фелл спрашивает, чувствуешь ли ты целостность. Чувствуешь ли ты себя... каким-то неполным».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25481 /* ~Правда: «Нет... На самом деле, с тех пор как я очнулся в Морге, я чувствую, что чего-то... не хватает. Чего-то внутри».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25482 /* ~Правда: «Нет... На самом деле, с тех пор как я очнулся в Морге, я чувствую, что чего-то... не хватает. Чего-то внутри».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25483 /* ~Правда: «Нет... На самом деле, с тех пор как я очнулся в Морге, я чувствую, что чего-то... не хватает. Чего-то внутри».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #25484 /* ~«Это тебя не касается».~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25485 /* ~Ложь: «Да, я чувствую себя целостным. А что?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25486 /* ~«Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25487 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #23035 /* ~«Фелл говорит, что ты достаточно силен, чтобы перенести это, — Грация поворачивается к тебе. — Его следующие слова относятся и ко мне: 'Верь; в вере ты вновь обретешь целостность'».~ */
  IF ~~ THEN REPLY #25488 /* ~«Постараюсь. Я хочу задать ему другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #25489 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 35.0
  SAY #23036 /* ~Грация тихо произносит: «Мучение». Она изучает символ, затем отворачивается, будто он причиняет ей боль. «Фелл говорит... — она делает глубокий вздох. — Плоть знает, что перенесла, даже когда разум забывает». Она поднимает голову, и ваши взгляды встречаются. В ее глазах видна какая-то странная синева, полная грусти и слез. «Фелл говорит, что руна, как магнит, притягивает к тебе другие измученные души».~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25490 /* ~«Я хочу задать ему другой вопрос...»~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",1)
~ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25491 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",1)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52611 /* ~«Я хочу задать ему другой вопрос...»~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",2)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52612 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",2)
~ EXIT
END

IF ~  Global("Grace","GLOBAL",0)
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 47 // from:
  SAY #28229 /* ~Перед тобой сногсшибательная женщина с золотистыми кудрями, одетая в лазурно-фиолетовое платье, с двумя длинными элегантными крыльями, ниспадающими с ее плеч. Она обводит взглядом комнату с легкой улыбкой на губах... Пожалуй, она самая красивая женщина из всех, что ты когда-либо встречал. ~ */
  IF ~~ THEN REPLY #28230 /* ~«Приветствую...»~ */ GOTO 50
  IF ~~ THEN REPLY #28231 /* ~Не обращать внимания на женщину с крыльям, обследовать здание.~ */ EXIT
END

IF ~  Global("Grace","GLOBAL",1)
!InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 48 // from:
  SAY #28233 /* ~Когда ты подходишь, Падшая Грация поворачивается к тебе и слегка улыбается. «Чем я могу тебе помочь?»~ [FFG002] */
  IF ~~ THEN REPLY #28234 /* ~«Я хотел бы задать тебе несколько вопросов...»~ */ GOTO 49
  IF ~~ THEN REPLY #28235 /* ~«Извини за беспокойство. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 52.4 53.0 54.1 58.2 60.2 61.2 62.1 63.3 64.2 65.1 66.2 67.2 68.1 69.1 70.0 72.1 73.1 74.0 75.1 76.1 77.0 78.5 79.4 81.1 82.3 83.1 85.1 86.1 87.2 88.2 89.1 90.4 91.3 92.2 93.0 94.4 95.3 96.3 97.3 98.4 99.5 100.5 101.5 102.4 103.4 104.2 105.1 106.1 107.2 108.1 109.3 110.3 111.2 112.2 114.1 115.1 116.0 117.4 118.5 119.4 120.5 122.4 123.3 124.3 125.2
  SAY #28236 /* ~«Да?»~ */
  IF ~~ THEN REPLY #28237 /* ~«Еще раз, кто ты?»~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,15,CHR)
!InParty("Annah")
!NearbyDialog("DMorte")
~ THEN REPLY #28238 /* ~«Те крылья на твоей спине... Кто ты такая?»~ */ GOTO 73
  IF ~  CheckStatLT(Protagonist,15,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28239 /* ~«Те крылья на твоей спине... Кто ты такая?»~ */ EXTERN ~DANNAH~ 163
  IF ~  CheckStatLT(Protagonist,15,CHR)
!NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28240 /* ~«Те крылья на твоей спине... Кто ты такая?»~ */ EXTERN ~DMORTE~ 276
  IF ~  CheckStatGT(Protagonist,14,CHR)
!InParty("Annah")
!NearbyDialog("DMorte")
~ THEN REPLY #28241 /* ~«Могу ли я спросить, госпожа Грация: крылья на твоей спине... ты ведь не человек, верно?»~ */ GOTO 73
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28242 /* ~«Могу ли я спросить, госпожа Грация: крылья на твоей спине... ты ведь не человек, верно?»~ */ EXTERN ~DANNAH~ 163
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28243 /* ~«Могу ли я спросить, госпожа Грация: крылья на твоей спине... ты ведь не человек, верно?»~ */ EXTERN ~DMORTE~ 276
  IF ~~ THEN REPLY #28244 /* ~«Что это за место?»~ */ GOTO 58
  IF ~~ THEN REPLY #28245 /* ~«Я пришел за помощью. Возможно, ты сможешь мне помочь».~ */ GOTO 85
  IF ~  GlobalGT("Grace_Quest","GLOBAL",0)
~ THEN REPLY #28246 /* ~«Что ты можешь рассказать о здешних девушках?»~ */ GOTO 67
  IF ~  GlobalGT("Know_Grace_Sensates","GLOBAL",0)
~ THEN REPLY #28247 /* ~«Что ты можешь рассказать о чувствующих?»~ */ GOTO 75
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",0)
~ THEN REPLY #28248 /* ~«Доводилось ли тебе слышать о ночной ведьме по имени Равель?»~ */ GOTO 104
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #28249 /* ~«Можешь еще раз сказать, что ты знаешь о Равель?»~ */ GOTO 109
  IF ~  Global("Know_Blood_War","GLOBAL",1)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28250 /* ~«Что ты знаешь о Кровавой войне?»~ */ GOTO 94
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28251 /* ~«Я поговорил с девятью учениками, как ты и попросила... но десятого я так и не нашел».~ */ GOTO 120
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28252 /* ~«Не желаешь присоединиться ко мне в моих странствиях?»~ */ EXTERN ~DANNAH~ 165
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28253 /* ~«Не желаешь присоединиться ко мне в моих странствиях?»~ */ EXTERN ~DMORTE~ 280
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #28254 /* ~«Не желаешь присоединиться ко мне в моих странствиях?»~ */ EXTERN ~DANNAH~ 164
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #28255 /* ~«Не желаешь присоединиться ко мне в моих странствиях?»~ */ GOTO 78
  IF ~~ THEN REPLY #61965 /* ~«На сегодня вопросов больше нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.0
  SAY #28256 /* ~В ответ на твой голос женщина поворачивается к тебе. Окинув тебя взглядом, она легонько кивает... Ты замечаешь, что глаза у нее лазурные, в тон ее платью. «Рада встрече, путник, — она откидывает назад непослушную прядь золотистых волос. — Чем я могу тебе помочь?»~ [FFG004] */
  IF ~~ THEN REPLY #28257 /* ~«Кто ты?»~ */ DO ~SetGlobal("Grace","GLOBAL",1)
~ JOURNAL #27467 /* ~В Чиновничьем районе я встретил женщину по имени Падшая Грация. Она, пожалуй, самая красивая из женщин, которых я когда-либо встречал... однако она не человек: у нее есть пара крыльев, сложенных за спиной.~ */ GOTO 51
  IF ~~ THEN REPLY #28258 /* ~«Пока ничем, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #28259 /* ~«Меня зовут Падшей Грацией, — секунду она рассматривает тебя. — Ты в Сигиле недавно, не так ли?»~ */
  IF ~~ THEN REPLY #28260 /* ~«Да. Это так заметно?»~ */ GOTO 55
  IF ~~ THEN REPLY #28261 /* ~«Нет, на самом деле, у меня есть подозрение, что я здесь уже довольно давно».~ */ GOTO 113
  IF ~~ THEN REPLY #28262 /* ~«Падшая Грация... какое интересное имя».~ */ GOTO 56
  IF ~~ THEN REPLY #28263 /* ~«Я не хотел бы сейчас это обсуждать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 49.0
  SAY #28264 /* ~«Мне зовут Падшая Грация, — она еле заметно улыбается. — Разве ты меня уже забыл?»~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28265 /* ~«Госпожа Грация, могу уверить, что тебе не стоит опасаться того, что я тебя забуду. Ты *совершенно* незабываемая».~ */ EXTERN ~DANNAH~ 161
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #28266 /* ~«Госпожа Грация, могу уверить, что тебе не стоит опасаться того, что я тебя забуду. Ты *совершенно* незабываемая».~ */ GOTO 54
  IF ~~ THEN REPLY #28267 /* ~«Вовсе нет».~ */ GOTO 54
  IF ~~ THEN REPLY #28268 /* ~«Падшая Грация... какое интересное имя».~ */ GOTO 114
  IF ~~ THEN REPLY #28269 /* ~«Нет. Могу ли я задать тебе еще пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28270 /* ~«Может и так. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #28271 /* ~Падшая Грация мрачнеет, поглядывая на вас двоих. «Я никого не хотела обидеть. Простите меня за колкость».~ */
  IF ~~ THEN REPLY #28272 /* ~«Ничего страшного, не нужно извинений, моя госпожа. Могу ли я задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28273 /* ~«Как бы то ни было, лучше уж нам уйти. Прощай, госпожа Грация».~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 52.1 52.2
  SAY #28274 /* ~Она тихонько смеется. Улыбаясь, она говорит: «Хорошо, я прощаю тебя».~ */
  IF ~~ THEN REPLY #28275 /* ~«Падшая Грация... какое интересное имя».~ */ GOTO 56
  IF ~~ THEN REPLY #28276 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28277 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.0
  SAY #28278 /* ~Она слегка улыбается. «Не так сильно, как это можно подумать. Ты держишься очень достойно».~ */
  IF ~~ THEN REPLY #28279 /* ~«Что это за место?»~ */ GOTO 57
  IF ~~ THEN REPLY #28280 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 51.2 54.0
  SAY #28281 /* ~Она кивает. «Я рада, что оно тебе понравилось. Однако я уверена, что ты проделал весь этот путь не за тем, чтобы польстить мне. Чем я могу тебе помочь?»~ */
  IF ~~ THEN REPLY #28282 /* ~«Что это за место?»~ */ GOTO 57
  IF ~~ THEN REPLY #28283 /* ~«На этот раз — ничем. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.0 56.0 113.0
  SAY #28284 /* ~«Это *Бордель утоления интеллектуальной страсти*, — она внимательно смотрит на тебя. — Судя по твоему вопросу, ты не собирался пользовался услугами этого заведения?»~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28285 /* ~«Бордель утоления интеллектуальной страсти? Что это за бордель такой?»~ */ GOTO 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28286 /* ~«Бордель утоления интеллектуальной страсти? Что это за бордель такой?»~ */ GOTO 61
  IF ~~ THEN REPLY #28287 /* ~«Нет, не думаю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 49.7
  SAY #28288 /* ~«Это Бордель утоления интеллектуальной страсти».~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28289 /* ~«Бордель утоления интеллектуальной страсти? Что это за бордель такой?»~ */ GOTO 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28290 /* ~«Бордель утоления интеллектуальной страсти? Что это за бордель такой?»~ */ GOTO 61
  IF ~~ THEN REPLY #28292 /* ~«О, понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28293 /* ~«Просто было любопытно. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.0 58.0
  SAY #28294 /* ~«Я основала этот бордель не для плотских утех, а скорее чтобы дать выход тому сладострастному волнению, которое охватывает умы. Можно получить немало удовольствия, общаясь или соревнуясь с другими в искусстве говорить».~ */
  IF ~~ THEN EXTERN ~DMORTE~ 275
END

IF ~~ THEN BEGIN 60 // from:
  SAY #28295 /* ~«Могу уверить тебя, это не так. Пройдись по борделю, убедись в этом сам».~ */
  IF ~~ THEN REPLY #28296 /* ~«Так это бордель... где нет сношений?»~ */ GOTO 62
  IF ~~ THEN REPLY #28297 /* ~«Не могу не спросить: зачем ты основала подобное заведение?»~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28298 /* ~«Пожалуй, так и сделаю. Можно сперва задать тебе пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28299 /* ~«Хорошо, я так и сделаю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.1 58.1
  SAY #28300 /* ~«Я основала этот бордель не для плотских утех, а скорее чтобы дать выход тому сладострастному волнению, которое охватывает умы. Можно получить немало удовольствия, общаясь или соревнуясь с другими в искусстве говорить».~ */
  IF ~~ THEN REPLY #28301 /* ~«Так это бордель... где нет сношений?»~ */ GOTO 62
  IF ~~ THEN REPLY #28302 /* ~«Не могу не спросить: зачем ты основала подобное заведение?»~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28303 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28304 /* ~«Спасибо за объяснение... Мне нужно идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.0 61.0
  SAY #28305 /* ~«Есть, но только психологической природы. Могу уверить — это очень возбуждает».~ */
  IF ~~ THEN REPLY #28306 /* ~«Не могу не спросить: зачем ты основала подобное заведение?»~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28307 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28308 /* ~«Тогда я, пожалуй, пройдусь по борделю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 60.1 61.1 62.0
  SAY #28309 /* ~Падшая Грация поднимает бровь. «Очень странный вопрос, — хмурится она. — Даже не знаю, задавал ли мне его кто-нибудь. По крайней мере, прямо».~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28310 /* ~«Прошу прощения, госпожа Грация. Я не хотел быть настолько прямолинейным. Мне было просто любопытно».~ */ GOTO 64
  IF ~~ THEN REPLY #28311 /* ~«Так... почему же?»~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #28312 /* ~«Просто довольно странно, чтобы суккуб основал подобное заведение... Предназначение этого места противоречит твоему естеству».~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #28313 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28314 /* ~«Тогда я, пожалуй, пройдусь по борделю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #28315 /* ~«О, не нужно извинений. Я с большим удовольствием сообщу тебе причины, если хочешь».~ */
  IF ~~ THEN REPLY #28316 /* ~«Да, я бы хотел их услышать».~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #28317 /* ~«Просто довольно странно, чтобы суккуб основал подобное заведение... Предназначение этого места противоречит твоему естеству».~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #28318 /* ~«Не сейчас. Могу ли я задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28319 /* ~«Может быть, в следующий раз. Мне нужно идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.1 63.2 64.0 64.1
  SAY #28320 /* ~«Чтобы частично ответить на твой вопрос, тебе следует знать, что я состою в Обществе Восприятия. Наша фракция верит, что каждому необходимо пережить как можно больше всего в мультивселенной».~ */
  IF ~~ THEN REPLY #28321 /* ~«И именно поэтому ты основала это заведение?»~ */ GOTO 66
  IF ~~ THEN REPLY #28322 /* ~«Понятно. Нет нужды объяснять остальное. Можно задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28323 /* ~«Тогда я, пожалуй, пройдусь по борделю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #28324 /* ~«Этот бордель призван утолять страсть даже самых заядлых интеллектуалов. Он предназначен для стимуляции разума, повышения знания о себе и других, создания новых способов *познания* другого. Он для тех, кто ищет нечто большее, нежели низменные телесные удовольствия, которых и так достаточно в Улье и Нижнем районе».~ */
  IF ~  GlobalGT("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #28325 /* ~«Ну, я бы не стал называть их низ... э-э-э, то есть, я могу это понять. Должно быть, девушки здесь действительно особенные».~ */ GOTO 67
  IF ~  Global("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #28326 /* ~«Понятно. Значит, это заведение поощряет интеллектуальные дуэли, а не, эм, ну, *другие* виды дуэлей. Должно быть, девушки здесь действительно особенные».~ */ GOTO 67
  IF ~~ THEN REPLY #28327 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28328 /* ~«Тогда я, пожалуй, пройдусь по борделю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 49.9 66.0 66.1
  SAY #28329 /* ~«Здешние девушки стремятся стать чувствующими. Они пришли ко мне за наставлениями, чтобы подготовиться к вступлению во фракцию. Кроме того, у большинства из них врожденный талант к разговорам, способный разбить скорлупу даже самых загрубевших личностей».~ */
  IF ~~ THEN REPLY #28330 /* ~«Чувствующие?»~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 68
  IF ~~ THEN REPLY #28332 /* ~«Понятно. Значит, здешние дамы, иначе говоря, являются практикантками?»~ */ GOTO 70
  IF ~~ THEN REPLY #28333 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28334 /* ~«Тогда я, пожалуй, пройдусь по борделю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #28335 /* ~Она слегка кивает. «Да, я состою в Обществе Восприятия. Наша фракция верит, что каждому необходимо пережить как можно больше всего в мультивселенной».~ */
  IF ~~ THEN REPLY #28336 /* ~«И здешние девушки готовятся стать чувствующими?»~ */ GOTO 70
  IF ~~ THEN REPLY #28337 /* ~«Понятно. Нет нужды объяснять остальное. Можно задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28338 /* ~«Тогда я, пожалуй, пройдусь по борделю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #28339 /* ~«Скорее всего, не все из них пройдут. Тем не менее, их попытки приветствуются, и я не откажу им в возможности присоединится к фракции, если таково их желание. В ходе они могут чему-нибудь научиться».~ */
  IF ~~ THEN REPLY #28340 /* ~«Понятно. Так это нечто вроде подготовительной школы?»~ */ GOTO 70
  IF ~~ THEN REPLY #28341 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28342 /* ~«Пожалуй, я пройдусь по борделю и сам все увижу. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.1 68.0 69.0
  SAY #28343 /* ~«Да. Я надеюсь, изучение искусства общения и его тонкостей позволит посетителям и ученикам лучше себя узнать. Каждый ограничен лишь своим владением речью. Умение с помощью слов вызывать эмоции — колоссальный навык».~ */
  IF ~~ THEN REPLY #28344 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28345 /* ~«Пожалуй, я пройдусь по борделю и сам все увижу. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #28346 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #28347 /* ~«Твой спутник прав. Я — низшая танарри, а точнее, суккуб, — она тихонько вздыхает. — Боюсь, что мы уж слишком распространенные на Нижних планах и в других местах, что не в нашу пользу. Большинство представителей моей расы проводят свое время, соблазняя смертных различными плотскими утехами».~ */
  IF ~~ THEN REPLY #28348 /* ~«А ты?..»~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Падшая Грация сказала, что она — суккуб, «низшая танарри», один из нечистых духов, обитающих на Нижним планам. Похоже на то, что представители ее расы находят смертных и соблазняют их, утаскивая их души в Бездну. Как очаровательно.~ */ GOTO 74
  IF ~~ THEN REPLY #28349 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Падшая Грация сказала, что она — суккуб, «низшая танарри», один из нечистых духов, обитающих на Нижним планам. Похоже на то, что представители ее расы находят смертных и соблазняют их, утаскивая их души в Бездну. Как очаровательно.~ */ GOTO 49
  IF ~~ THEN REPLY #28350 /* ~«Я должен идти. Прощай».~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Падшая Грация сказала, что она — суккуб, «низшая танарри», один из нечистых духов, обитающих на Нижним планам. Похоже на то, что представители ее расы находят смертных и соблазняют их, утаскивая их души в Бездну. Как очаровательно.~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 49.1 49.4
  SAY #26918 /* ~«Я — низшая танарри, а точнее, суккуб, — она тихонько вздыхает. — Боюсь, что мы уж слишком распространенные на Нижних планах и в других местах, что не в нашу пользу. Большинство представителей моей расы проводят свое время, соблазняя смертных различными плотскими утехами».~ */
  IF ~~ THEN REPLY #26919 /* ~«А ты?..»~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Падшая Грация сказала, что она — суккуб, «низшая танарри», один из нечистых духов, обитающих на Нижним планам. Похоже на то, что представители ее расы находят смертных и соблазняют их, утаскивая их души в Бездну. Как очаровательно.~ */ GOTO 74
  IF ~~ THEN REPLY #26920 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Падшая Грация сказала, что она — суккуб, «низшая танарри», один из нечистых духов, обитающих на Нижним планам. Похоже на то, что представители ее расы находят смертных и соблазняют их, утаскивая их души в Бездну. Как очаровательно.~ */ GOTO 49
  IF ~~ THEN REPLY #26921 /* ~«Я должен идти. Прощай».~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Падшая Грация сказала, что она — суккуб, «низшая танарри», один из нечистых духов, обитающих на Нижним планам. Похоже на то, что представители ее расы находят смертных и соблазняют их, утаскивая их души в Бездну. Как очаровательно.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.0 73.0
  SAY #26922 /* ~«Хотелось бы думать, что я дистанцировалась от всего этого... В конце концов, это слишком примитивный и непродуктивный способ тратить свое время в мультивселенной. Ведь есть гораздо более интересные занятия, не так ли?»~ */
  IF ~~ THEN REPLY #26923 /* ~«Пожалуй, да. Могу ли я задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28351 /* ~«Да. Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 49.10
  SAY #28352 /* ~«Чувствующие — это фракция Сигила, посвященная переживаниям. Без переживаний и ощущений большая часть мультивселенной для нас недоступна. Поэтому чувствующие стремятся пережить как можно больше: пережив все на свете, можно раскрыть истину мультивселенной».~ */
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #28353 /* ~«Интересная философия. Могу ли я присоединиться к чувствующим?»~ */ GOTO 76
  IF ~~ THEN REPLY #28354 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28355 /* ~«Может, оно и так. Как бы там ни было, мне пора. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #28356 /* ~«Чтобы присоединиться к чувствующим, достаточно быть учеником жизни».~ */
  IF ~~ THEN REPLY #28357 /* ~«Я имел в виду, что хотел бы присоединиться к фракции».~ */ JOURNAL #27464 /* ~Падшая Грация предложила мне пойти в Городской Фестхолл, раз уж я хочу вступить в ряды Общества Восприятия. Она сказала, что там мне могут помочь.~ */ GOTO 77
  IF ~~ THEN REPLY #28358 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28359 /* ~«Хорошо. Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #28360 /* ~«Конечно... прости, что поддразниваю, — Грация кивает. — Если желаешь присоединиться к чувствующим — попытай счастья в Городском Фестхолле. Кто-нибудь там должен тебе помочь».~ */
  IF ~~ THEN REPLY #28361 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28362 /* ~«Спасибо. Тогда туда и направлюсь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 49.18
  SAY #28363 /* ~«Ну... — она слегка улыбается. — Это довольно прямолинейно с твоей стороны».~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DMorte")
~ THEN REPLY #28364 /* ~«Я хочу быть откровенным в своих намерениях. Ты невероятно мила и хорошо осведомлена по части планов. Компаньону с подобными знаниями я всегда буду рад».~ */ GOTO 79
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DMorte")
~ THEN REPLY #28365 /* ~«Я хочу быть откровенным в своих намерениях. Ты невероятно мила и хорошо осведомлена по части планов. Компаньону с подобными знаниями я всегда буду рад».~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28366 /* ~«Я такой, какой я есть».~ */ GOTO 79
  IF ~~ THEN REPLY #28367 /* ~«То есть, насколько волнующими может быть это место?»~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28368 /* ~«Ты ведь чувствующая. Несомненно, должен быть какой-то предел тому, что ты можешь здесь познать».~ */ GOTO 83
  IF ~~ THEN REPLY #28369 /* ~«Забудем о моей просьбе. Можно задать еще пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28370 /* ~«Тогда прими мои извинения. Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 78.0 78.2 117.1 118.0 118.2 119.1
  SAY #28371 /* ~«Я ценю твою прямоту. Отвечу своим вопросом: зачем мне путешествовать с тобой?»~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28372 /* ~«То есть, тебе было бы неинтересно путешествовать с забывшим все бессмертным, который ищет себя по всем планам?»~ */ GOTO 80
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28373 /* ~«Госпожа Грация, я намерен отправиться в места, в которых, наверное, еще никто не бывал... или не мог добраться. Тебя бы это заинтересовало?»~ */ GOTO 82
  IF ~~ THEN REPLY #28374 /* ~«Насколько волнующими может быть это место?»~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28375 /* ~«Ты ведь чувствующая. Несомненно, должен быть какой-то предел тому, что ты можешь здесь познать».~ */ GOTO 83
  IF ~~ THEN REPLY #28376 /* ~«Забудем о моей просьбе. Можно лучше задать тебе пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28377 /* ~«Забудем о моей просьбе. Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.0 82.0 83.0
  SAY #28378 /* ~«О, мне было бы *невероятно* интересно, — она слегка улыбается. — Подобное предложение не может не заинтриговать, можешь в этом не сомневаться».~ */
  IF ~~ THEN REPLY #28379 /* ~«Так значит, ты *хотела бы* путешествовать со мной?»~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #28380 /* ~«Если ты этого хочешь, то должен кое-что сделать для меня. В этом заведении есть десять учеников. Я бы хотела, чтобы ты переговорил со всеми ими. Потом возвращайся ко мне и поделись своими мыслями. Там и посмотрим, будем ли мы путешествовать вместе или нет».~ */
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28381 /* ~«Я уже поговорил с ними... но учеников только девять. Я не могу найти десятого».~ */ JOURNAL #27463 /* ~Я убедил Падшую Грацию присоединиться ко мне на одном условии: я должен поговорить со всеми десятью ее учениками в борделе, а потом вернуться и сказать ей, что я об этом думаю. Я уже поговорил с девятью из них, но десятый избегает меня.~ */ GOTO 120
  IF ~~ THEN REPLY #28382 /* ~«Хорошо. Можно задать тебе несколько вопросов перед уходом?»~ */ DO ~SetGlobal("Grace_Quest","GLOBAL",1)
~ JOURNAL #27462 /* ~Я убедил Падшую Грацию присоединиться ко мне на одном условии: я должен поговорить со всеми десятью ее учениками в борделе, а потом вернуться и сказать ей, что я об этом думаю.~ */ GOTO 49
  IF ~~ THEN REPLY #28383 /* ~«Тогда я пойду. Вернусь, как поговорю со всеми ими».~ */ DO ~SetGlobal("Grace_Quest","GLOBAL",1)
~ JOURNAL #27462 /* ~Я убедил Падшую Грацию присоединиться ко мне на одном условии: я должен поговорить со всеми десятью ее учениками в борделе, а потом вернуться и сказать ей, что я об этом думаю.~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 79.1
  SAY #28384 /* ~«Вполне возможно, — в раздумьях она касается своего подбородка. — И все же...»~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28385 /* ~«То есть, тебе было бы неинтересно путешествовать с забывшим все бессмертным, который ищет себя по всем планам?»~ */ GOTO 80
  IF ~~ THEN REPLY #28386 /* ~«Насколько волнующими может быть это место?»~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28387 /* ~«Ты ведь чувствующая. Несомненно, должен быть какой-то предел тому, что ты можешь здесь познать».~ */ GOTO 83
  IF ~~ THEN REPLY #28388 /* ~«Неважно. Можно я лучше задам тебе пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28389 /* ~«Подумай над этим. Я еще вернусь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 78.3 78.4 79.2 79.3 82.1 82.2 117.2 117.3 118.3 118.4 119.2 119.3
  SAY #28390 /* ~«Думаю, ты будешь весьма удивлен. Если ты хочешь, чтобы я составила тебе компанию в путешествии, мне нужны куда более веские причины».~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28391 /* ~«То есть, тебе было бы неинтересно путешествовать с забывшим все бессмертным, который ищет себя по всем планам?»~ */ GOTO 80
  IF ~~ THEN REPLY #28392 /* ~«Неважно. Можно я лучше задам тебе пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28393 /* ~«Что ж, посмотрим, смогу ли я найти более веские причины. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #28394 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from: 49.8
  SAY #28395 /* ~«Помощь? Какого рода помощь ты ищешь?»~ */
  IF ~~ THEN REPLY #28396 /* ~«Похоже, я потерял свои воспоминания... и тем самым потерял себя».~ */ GOTO 86
  IF ~~ THEN REPLY #28397 /* ~«Неважно. Можно задать тебе пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28398 /* ~«Возможно, мы поговорим об этом в другой раз. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #28399 /* ~«У тебя амнезия? — Падшая Грация кажется огорченной. — Какой ужас! И ты не знаешь, как это произошло?»~ */
  IF ~~ THEN REPLY #28400 /* ~«Нет... По крайней мере, я не могу это вспомнить. Я очнулся на плите в Морге. А до этого — кромешная тьма».~ */ GOTO 87
  IF ~~ THEN REPLY #28401 /* ~«Неважно. Можно задать тебе пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28402 /* ~«Возможно, мы поговорим об этом в другой раз. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #28403 /* ~«Ты очнулся в Морге?»~ */
  IF ~  Global("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28404 /* ~«Думаю, тленные приняли меня за мертвеца... или я в самом деле умер... или что-то в этом роде. Я знаю только, что все мои раны быстро затягиваются. Возможно, я бессмертен, но даже этого не знаю наверняка».~ */ DO ~SetGlobal("Grace_Companion","GLOBAL",1)
~ GOTO 88
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28405 /* ~«Думаю, тленные приняли меня за мертвеца... или я в самом деле умер... или что-то в этом роде. Я знаю только, что все мои раны быстро затягиваются. Возможно, я бессмертен, но даже этого не знаю наверняка».~ */ GOTO 88
  IF ~~ THEN REPLY #28406 /* ~«Неважно. Можно задать тебе пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28407 /* ~«Возможно, мы поговорим об этом в другой раз. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 87.0 87.1
  SAY #28408 /* ~Похоже, Падшая Грация смотрит на тебя с возобновившимся интересом. «Эти шрамы на твоем теле, — она протягивает руку к твоему телу. — Можно?»~ */
  IF ~~ THEN REPLY #28409 /* ~«Э-э-э... Конечно».~ */ GOTO 89
  IF ~~ THEN REPLY #28410 /* ~«Да».~ */ GOTO 89
  IF ~~ THEN REPLY #28411 /* ~«Вообще-то, я бы предпочел больше это не обсуждать. Можно задать тебе несколько вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28412 /* ~«Возможно, мы поговорим об этом в другой раз. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 88.0 88.1
  SAY #28413 /* ~Падшая Грация легонько проводит пальцем по твоей груди, следуя по краям шрамов, туда, где они сливаются в твои татуировки. Похоже, что она потрясена. «Эти шрамы и впрямь выглядят так, словно понадобилось несколько жизней, чтобы собрать их».~ */
  IF ~~ THEN REPLY #28414 /* ~«Так и есть... Хотя некоторые из них совсем свежие».~ */ GOTO 90
  IF ~~ THEN REPLY #28415 /* ~«Я бы предпочел больше это не обсуждать. Можно задать тебе несколько вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28416 /* ~«Возможно, мы поговорим об этом в другой раз. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #28417 /* ~Падшая Грация отступает на шаг. «Некоторые из этих ран были смертельными. Для обычного человека, — она задумчиво потирает подбородок. — И что ты собираешься теперь делать?»~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #28418 /* ~«Мне нужно вернуть свои воспоминания и свою жизнь. Я собираюсь прочесывать планы и продолжать поиск в самом себе, покуда не соберу воедино все сведения о том, кто я и что привело меня в это состояние».~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",1)
~ GOTO 91
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #28419 /* ~«Мне нужно вернуть свои воспоминания и свою жизнь. Я собираюсь прочесывать планы и продолжать поиск в самом себе, покуда не соберу воедино все сведения о том, кто я и что привело меня в это состояние».~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",1)
~ GOTO 91
  IF ~~ THEN REPLY #28420 /* ~«Я точно не знаю. Пока что я просто ищу подсказки, позволяющие понять, кто я и что со мной случилось».~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",2)
~ GOTO 91
  IF ~~ THEN REPLY #28421 /* ~«Я не собираюсь ничего делать. Если ответы и существуют, они сами меня найдут... со временем».~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",3)
~ GOTO 91
  IF ~~ THEN REPLY #28422 /* ~«Я бы предпочел больше это не обсуждать. Можно задать тебе несколько вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28423 /* ~«Возможно, мы поговорим об этом в другой раз. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 90.1 90.2 90.3
  SAY #28424 /* ~Падшая Грация все еще размышляет, потирая пальчиком подбородок. «Должна признаться: мне никогда не доводилось встречать человека, который в буквальном смысле потерял себя, — она поднимает бровь. — Прошу меня извинить, но я нахожу твое состояние весьма интригующим».~ */
  IF ~~ THEN REPLY #28425 /* ~«Мне очень лестно, что *ты* так думаешь».~ */ GOTO 92
  IF ~~ THEN REPLY #28426 /* ~«Это так».~ */ GOTO 93
  IF ~~ THEN REPLY #28427 /* ~«Интригующим? Скорее уж 'пугающим'. Мне не нравится, что я не знаю, кто я, что я мог сделать, кто мои враги и кто мои друзья».~ */ GOTO 92
  IF ~~ THEN REPLY #28428 /* ~«Я бы предпочел больше это не обсуждать. Можно задать тебе несколько вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28429 /* ~«Возможно, мы поговорим об этом в другой раз. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0 91.2
  SAY #28430 /* ~«Я оскорбила тебя своими словами, — Падшая Грация склоняет голову. — Прошу прощения, если это так».~ */
  IF ~~ THEN REPLY #28431 /* ~«Извинения приняты».~ */ GOTO 93
  IF ~~ THEN REPLY #28432 /* ~«Неважно, ты не сказала ничего плохого».~ */ GOTO 93
  IF ~~ THEN REPLY #28433 /* ~«Я бы предпочел больше это не обсуждать. Можно задать тебе несколько вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28434 /* ~«Возможно, мы поговорим об этом в другой раз. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1 92.0 92.1
  SAY #28435 /* ~Падшая Грация кивает. «Если это может помочь, то ты можешь обойти бордель. Некоторые из наших учеников весьма подкованы в словесных науках. Возможно, кто-нибудь из них сможет пробудить твою память».~ */
  IF ~~ THEN REPLY #28436 /* ~«Может, я так и сделаю. Можно сперва пару вопросов?»~ */ JOURNAL #27461 /* ~Падшая Грация предложила мне побеседовать с учениками борделя: в разговоре с кем-то из них я могу вспомнить что-нибудь о себе.~ */ GOTO 49
  IF ~~ THEN REPLY #28437 /* ~«Благодарю. Пойду, пообщаюсь с ними. Прощай».~ */ JOURNAL #27461 /* ~Падшая Грация предложила мне побеседовать с учениками борделя: в разговоре с кем-то из них я могу вспомнить что-нибудь о себе.~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 49.13
  SAY #28438 /* ~«Кровавая война — это конфликт, бушующий на Нижних планах между баатезу и танарри. Они бьются друг с другом, дабы выяснить, какое зло должно главенствовать — упорядоченное или хаотическое, — Падшая Грация делает паузу. — Лучше избегать этой войны любой ценой. Пусть танарри и баатезу толкут друг другу морды и позволят остальным планам пребывать в мире... или, как минимум, в относительном мире».~ */
  IF ~~ THEN REPLY #28439 /* ~«Относительном?»~ */ GOTO 95
  IF ~~ THEN REPLY #28440 /* ~«Они используют людскую пехоту?»~ */ GOTO 96
  IF ~~ THEN REPLY #28441 /* ~«Сколько она уже продолжается?»~ */ GOTO 97
  IF ~~ THEN REPLY #28442 /* ~«Ты на ней служила?»~ */ GOTO 98
  IF ~~ THEN REPLY #28443 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 49
  IF ~~ THEN REPLY #28444 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0 96.0 97.0 98.1 99.1 100.1 101.1 102.0 103.0
  SAY #28445 /* ~«Ну, война настолько велика, что большинство рас втягиваются в нее против своей воли. Игнорировать ее так же опасно, как и участвовать в ней».~ */
  IF ~~ THEN REPLY #28446 /* ~«Они используют людскую пехоту?»~ */ GOTO 96
  IF ~~ THEN REPLY #28447 /* ~«Сколько она уже продолжается?»~ */ GOTO 97
  IF ~~ THEN REPLY #28448 /* ~«Ты на ней служила?»~ */ GOTO 98
  IF ~~ THEN REPLY #28449 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 49
  IF ~~ THEN REPLY #28450 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.1 95.0 97.1 98.2 99.2 100.2 101.2 102.1 103.1
  SAY #28451 /* ~«Да, такое случается. В Кровавой войне участвует множество человеческих наемников. Они служат либо в качестве солдат, либо в качестве пушечного мяса, либо в качестве провианта для нечистых».~ */
  IF ~~ THEN REPLY #28452 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 95
  IF ~~ THEN REPLY #28453 /* ~«Сколько она уже продолжается?»~ */ GOTO 97
  IF ~~ THEN REPLY #28454 /* ~«Сколько она уже продолжается?»~ */ GOTO 98
  IF ~~ THEN REPLY #28455 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 49
  IF ~~ THEN REPLY #28456 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 94.2 95.1 96.1 98.3 99.3 100.3 101.3 102.2 103.2
  SAY #28457 /* ~«Согласно летописям, Кровавая война идет с тех пор, как баатезу впервые повстречали танарри... *очень* давно. Я даже не уверена, что у людей найдется подходящее название такому отрезку времени, — Падшая Грация качает головой. — Боюсь, что баатезу и танарри никогда не нравились друг другу».~ */
  IF ~~ THEN REPLY #28458 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 95
  IF ~~ THEN REPLY #28459 /* ~«Они используют людскую пехоту?»~ */ GOTO 96
  IF ~~ THEN REPLY #28460 /* ~«Ты на ней служила?»~ */ GOTO 98
  IF ~~ THEN REPLY #28461 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 49
  IF ~~ THEN REPLY #28462 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 94.3 95.2 96.2 97.2 103.3
  SAY #28463 /* ~«Нет. Моя мать служила. Суккубы в основном соблазняют смертных, чтобы забрать их души в Бездну и породить больше танарри, и чтобы те шли умирать на Кровавую войну».~ */
  IF ~~ THEN REPLY #28464 /* ~«Твоя мать? Она служила на Кровавой войне?»~ */ GOTO 99
  IF ~~ THEN REPLY #28465 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 95
  IF ~~ THEN REPLY #28466 /* ~«Они используют людскую пехоту?»~ */ GOTO 96
  IF ~~ THEN REPLY #28467 /* ~«Сколько она уже продолжается?»~ */ GOTO 97
  IF ~~ THEN REPLY #28468 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 49
  IF ~~ THEN REPLY #28469 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #28470 /* ~«Да. Она была одной из лучших. Она соблазнила бесчисленное множество смертных мужчин. Теперь она живет в Бездне, продает в рабство своих детей».~ */
  IF ~~ THEN REPLY #28471 /* ~«Тебя... продала в рабство твоя мать?»~ */ GOTO 100
  IF ~~ THEN REPLY #28472 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 95
  IF ~~ THEN REPLY #28473 /* ~«Они используют людскую пехоту?»~ */ GOTO 96
  IF ~~ THEN REPLY #28474 /* ~«Сколько она уже продолжается?»~ */ GOTO 97
  IF ~~ THEN REPLY #28475 /* ~«Эти вопросы тебя не сильно беспокоят?»~ */ GOTO 103
  IF ~~ THEN REPLY #28476 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 49
  IF ~~ THEN REPLY #28477 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #28478 /* ~«На некоторое время. Я вырвала свободу в соревновании на импровизацию. Это было очень давно».~ */
  IF ~~ THEN REPLY #28479 /* ~«Кому она тебя продала?»~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ JOURNAL #27460 /* ~Падшая Грация сказала мне, что родная мать продала ее в рабство... да еще и баатезу, злейшим врагам танарри. Судя по всему, Падшая Грация вырвала свободу у своего господина-баатезу в состязании по импровизации. В детали она не вдавалась.~ */ GOTO 101
  IF ~~ THEN REPLY #28480 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 95
  IF ~~ THEN REPLY #28481 /* ~«Они используют людскую пехоту?»~ */ GOTO 96
  IF ~~ THEN REPLY #28482 /* ~«Сколько она уже продолжается?»~ */ GOTO 97
  IF ~~ THEN REPLY #28483 /* ~«Эти вопросы тебя не сильно беспокоят?»~ */ GOTO 103
  IF ~~ THEN REPLY #28484 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 49
  IF ~~ THEN REPLY #28485 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #28486 /* ~«Она продала мена баатезу. Наверное, она считала, что они просто убьют меня. Несмотря на познания в других областях, она очень мало знала об их культуре».~ */
  IF ~~ THEN REPLY #28487 /* ~«Она продала тебя заклятым врагам танарри?»~ */ GOTO 102
  IF ~~ THEN REPLY #28488 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 95
  IF ~~ THEN REPLY #28489 /* ~«Они используют людскую пехоту?»~ */ GOTO 96
  IF ~~ THEN REPLY #28490 /* ~«Сколько она уже продолжается?»~ */ GOTO 97
  IF ~~ THEN REPLY #28491 /* ~«Эти вопросы тебя не сильно беспокоят?»~ */ GOTO 103
  IF ~~ THEN REPLY #28492 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 49
  IF ~~ THEN REPLY #28493 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #28494 /* ~«Да, — Падшая Грация расправляет плечи. — Ты хотел узнать что-нибудь еще?»~ */
  IF ~~ THEN REPLY #28495 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 95
  IF ~~ THEN REPLY #28496 /* ~«Они используют людскую пехоту?»~ */ GOTO 96
  IF ~~ THEN REPLY #28497 /* ~«Сколько она уже продолжается?»~ */ GOTO 97
  IF ~~ THEN REPLY #28498 /* ~«Эти вопросы тебя не сильно беспокоят?»~ */ GOTO 103
  IF ~~ THEN REPLY #28499 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 49
  IF ~~ THEN REPLY #28500 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.4 100.4 101.4 102.3
  SAY #28501 /* ~«О, нет-нет, вовсе нет. Лучше помни вот о чем: Кровавая война стоит за большинством событий на планах. Важно понимать, что она из себя представляет и зачем ведется».~ */
  IF ~~ THEN REPLY #28502 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 95
  IF ~~ THEN REPLY #28503 /* ~«Они используют людскую пехоту?»~ */ GOTO 96
  IF ~~ THEN REPLY #28504 /* ~«Сколько она уже продолжается?»~ */ GOTO 97
  IF ~~ THEN REPLY #28505 /* ~«Ты на ней служила?»~ */ GOTO 98
  IF ~~ THEN REPLY #28506 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 49
  IF ~~ THEN REPLY #28507 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 49.11
  SAY #28508 /* ~«Мне знакомо это имя, — Падшая Грация умолкает и какое-то время размышляет. — Вокруг этого имени роится очень много слухов. Многие считают ее выдумкой, но я подозреваю, что она действительно существует, и что в свое время она произвела неизгладимое впечатление на Клетку, пребывая здесь». Она озадаченно смотрит на тебя. «А почему ты спрашиваешь?»~ */
  IF ~~ THEN REPLY #28509 /* ~«Я намерен ее разыскать».~ */ GOTO 105
  IF ~  Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #28510 /* ~«Что еще ты знаешь о ней?»~ */ GOTO 109
  IF ~~ THEN REPLY #28511 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 49
  IF ~~ THEN REPLY #28512 /* ~«Просто так. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #28513 /* ~Грация поднимает бровь. «Правда? Не могу не спросить: зачем?»~ */
  IF ~~ THEN REPLY #28514 /* ~«Мне нужна информация, которой она располагает».~ */ GOTO 106
  IF ~~ THEN REPLY #28515 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 49
  IF ~~ THEN REPLY #28516 /* ~«Просто так. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #28517 /* ~«И эта информация больше никому недоступна?»~ */
  IF ~~ THEN REPLY #28518 /* ~«Подозреваю, что только Равель владеет нужными мне знаниями».~ */ JOURNAL #27459 /* ~Падшая Грация предупредила меня насчет Равель... Она сказала, что если истории о ночной ведьме хоть отчасти правдивы, то она, наверное, самая злая и могущественная из ночных ведьм, когда-либо ходивших по планам.~ */ GOTO 107
  IF ~~ THEN REPLY #28519 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 49
  IF ~~ THEN REPLY #28520 /* ~«Не знаю, но собираюсь это выяснить. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #28521 /* ~Грация мягко кладет свою руку на твою. «Подумай: если Равель действительно существует, то она чрезвычайно могущественна и коварна. Если рассказы о ее деяниях хоть отчасти верны, то она — существо, открывшее новые определения слова 'зло'. Найти ее — задача не из простых». ~ */
  IF ~  InParty("Grace")
~ THEN REPLY #28522 /* ~«Я осознаю это».~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 108
  IF ~  !InParty("Grace")
~ THEN REPLY #28523 /* ~«Я осознаю это. Ты знаешь о Равель что-нибудь еще?»~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 109
  IF ~  !InParty("Grace")
~ THEN REPLY #28524 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 49
  IF ~  !InParty("Grace")
~ THEN REPLY #28525 /* ~«Я знаю. Тем не менее, я должен разыскать ее. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #28526 /* ~«Что ж, легенды мне еще не встречались. Прогулочка будет что надо, — она улыбается. — Разве ты не пробовал заниматься чем-то скучным?»~ */
  IF ~~ THEN REPLY #28527 /* ~«Нет, не пробовал... Тебе известно еще что-нибудь о Равель?»~ */ GOTO 109
  IF ~~ THEN REPLY #28528 /* ~«Ничего не могу с этим поделать. Можно задать тебе еще пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28529 /* ~«Возможно, и занимался — в прошлых своих воплощениях, но не теперь. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 49.12 104.1 107.1 108.0
  SAY #28530 /* ~«Поговаривают, что она была одной из ведьм Серой пустоши. Многие уверены, что силой и коварством она намного превзошла своих сестер. Давным-давно она пришла в Сигил; ходят слухи, что кроме зла, которое она там сотворила, своими поступками она поставила под угрозу саму Клетку. Сейчас о ней слышно только в байках, она — персонаж детских сказок, — Грация делает паузу. — Полагаю, Леди Боли разобралась с ней так же, как и со всеми угрозами Сигилу».~ */
  IF ~~ THEN REPLY #28531 /* ~«Как?»~ */ JOURNAL #27458 /* ~Падшая Грация сказала, что Равель — ночная ведьма, одна из серых сестер, обитающих в Серой пустоши. Ее могущество намного выше могущества ее сестер. Давным-давно она пришла в Сигил. Пребывая там, она разозлила Леди Боли и была наказана.~ */ GOTO 110
  IF ~~ THEN REPLY #28532 /* ~«Что такое Серая пустошь?»~ */ JOURNAL #27458 /* ~Падшая Грация сказала, что Равель — ночная ведьма, одна из серых сестер, обитающих в Серой пустоши. Ее могущество намного выше могущества ее сестер. Давным-давно она пришла в Сигил. Пребывая там, она разозлила Леди Боли и была наказана.~ */ GOTO 111
  IF ~~ THEN REPLY #28533 /* ~«Кто еще может знать о ней что-нибудь?»~ */ JOURNAL #27458 /* ~Падшая Грация сказала, что Равель — ночная ведьма, одна из серых сестер, обитающих в Серой пустоши. Ее могущество намного выше могущества ее сестер. Давным-давно она пришла в Сигил. Пребывая там, она разозлила Леди Боли и была наказана.~ */ GOTO 112
  IF ~~ THEN REPLY #28534 /* ~«Могу ли я задать тебе другие вопросы?»~ */ JOURNAL #27458 /* ~Падшая Грация сказала, что Равель — ночная ведьма, одна из серых сестер, обитающих в Серой пустоши. Ее могущество намного выше могущества ее сестер. Давным-давно она пришла в Сигил. Пребывая там, она разозлила Леди Боли и была наказана.~ */ GOTO 49
  IF ~~ THEN REPLY #28535 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ JOURNAL #27458 /* ~Падшая Грация сказала, что Равель — ночная ведьма, одна из серых сестер, обитающих в Серой пустоши. Ее могущество намного выше могущества ее сестер. Давным-давно она пришла в Сигил. Пребывая там, она разозлила Леди Боли и была наказана.~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0 112.0
  SAY #28536 /* ~«Скорее всего, Равель попала в лабиринт, в одну из тюрем Леди».~ */
  IF ~~ THEN REPLY #28537 /* ~«Лабиринт? Это еще что такое?»~ */ JOURNAL #27457 /* ~Падшая Грация сказала, что Равель заточили в одном из лабиринтов Леди Боли.~ */ GOTO 123
  IF ~~ THEN REPLY #28538 /* ~«Что такое Серая пустошь?»~ */ GOTO 111
  IF ~~ THEN REPLY #28539 /* ~«Кто еще может знать о ней что-нибудь?»~ */ GOTO 112
  IF ~~ THEN REPLY #28540 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28541 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from: 109.1 110.1 112.1 123.1 124.1 125.0
  SAY #28542 /* ~«Гиблый план, находящийся как раз посередине между Баатором и Бездной. Чаще всего он становится полем битвы в Кровавой войне».~ */
  IF ~~ THEN REPLY #28543 /* ~«Ты знаешь, что случилось с Равель?»~ */ GOTO 110
  IF ~~ THEN REPLY #28544 /* ~«Кто еще может знать о ней что-нибудь?»~ */ GOTO 112
  IF ~~ THEN REPLY #28545 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28546 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 109.2 110.2 111.1 123.2 124.2 125.1
  SAY #28547 /* ~«Кто-нибудь в Фестхолле может знать о ней больше».~ */
  IF ~~ THEN REPLY #28548 /* ~«Ты знаешь, что случилось с Равель?»~ */ JOURNAL #27456 /* ~Падшая Грация сказала, что кто-нибудь в Городском Фестхолле может знать что-нибудь еще о Равель.~ */ GOTO 110
  IF ~~ THEN REPLY #28549 /* ~«Что такое Серая пустошь?»~ */ JOURNAL #27456 /* ~Падшая Грация сказала, что кто-нибудь в Городском Фестхолле может знать что-нибудь еще о Равель.~ */ GOTO 111
  IF ~~ THEN REPLY #28550 /* ~«Могу ли я задать тебе другие вопросы?»~ */ JOURNAL #27456 /* ~Падшая Грация сказала, что кто-нибудь в Городском Фестхолле может знать что-нибудь еще о Равель.~ */ GOTO 49
  IF ~~ THEN REPLY #28551 /* ~«Понятно. Спасибо за информацию. Прощай».~ */ JOURNAL #27456 /* ~Падшая Грация сказала, что кто-нибудь в Городском Фестхолле может знать что-нибудь еще о Равель.~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 51.1
  SAY #28552 /* ~Падшая Грация вскидывает бровь. «В самом деле?»~ */
  IF ~~ THEN REPLY #28553 /* ~«Да... но это долгая история, пожалуй, куда более долгая, чем я знаю. Мне гораздо интереснее узнать, что это за место».~ */ GOTO 57
  IF ~~ THEN REPLY #28554 /* ~«Да, но эту историю я расскажу в другой раз. Мне пора. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 52.3
  SAY #28555 /* ~Она кивает. «Я рада, что оно тебе нравится. Мне и самой оно по душе».~ */
  IF ~~ THEN REPLY #28556 /* ~«А что оно значит?»~ */ GOTO 115
  IF ~~ THEN REPLY #28557 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28558 /* ~«На этот раз — ничем. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #28559 /* ~«Значение имен — сложная тема. Тут можно много рассказывать, и большую часть лучше оставить недосказанной. Пожалуй, эту историю я расскажу как-нибудь в другой раз».~ */
  IF ~~ THEN REPLY #28560 /* ~«Падшая Грация — это твое настоящее имя?»~ */ GOTO 116
  IF ~~ THEN REPLY #28561 /* ~«Хорошо. Тогда можешь ответить на другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28562 /* ~«Прошу прощения за беспокойство. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #28563 /* ~«Может быть, — улыбается она. — А может быть, нет. Есть имена, которыми нарекают, а есть — которые заслуживают. Кому судить, которое из них настоящее? Точно не мне».~ */
  IF ~~ THEN REPLY #28564 /* ~«Хорошо. Тогда можешь ответить на другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28565 /* ~«Прошу прощения за беспокойство. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #28566 /* ~«Путешествовать с тобой?» Падшая Грация улыбается. Похоже, она не обращает внимания на твоих спутников. «Это довольно бесцеремонно с твоей стороны».~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28567 /* ~«Я хочу быть откровенным в своих намерениях. Ты невероятно мила и хорошо осведомлена по части планов. Компаньону с подобными знаниями я всегда буду рад».~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28568 /* ~«Я такой, какой я есть».~ */ GOTO 79
  IF ~~ THEN REPLY #28569 /* ~«То есть, насколько волнующими может быть это место?»~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28570 /* ~«Ты ведь чувствующая. Несомненно, должен быть какой-то предел тому, что ты можешь здесь познать».~ */ GOTO 83
  IF ~~ THEN REPLY #28571 /* ~«Забудем о моей просьбе. Можно задать еще пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28572 /* ~«Тогда прими мои извинения. Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #28573 /* ~«Путешествовать с тобой?» Падшая Грация улыбается. Похоже, она не обращает внимания на Анну. «Это довольно бесцеремонно с твоей стороны».~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DMorte")
~ THEN REPLY #28574 /* ~«Я хочу быть откровенным в своих намерениях. Ты невероятно мила и хорошо осведомлена по части планов. Компаньону с подобными знаниями я всегда буду рад».~ */ GOTO 79
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DMorte")
~ THEN REPLY #28575 /* ~«Я хочу быть откровенным в своих намерениях. Ты невероятно мила и хорошо осведомлена по части планов. Компаньону с подобными знаниями я всегда буду рад».~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28576 /* ~«Я такой, какой я есть».~ */ GOTO 79
  IF ~~ THEN REPLY #28577 /* ~«То есть, насколько волнующими может быть это место?»~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28578 /* ~«Ты ведь чувствующая. Несомненно, должен быть какой-то предел тому, что ты можешь здесь познать».~ */ GOTO 83
  IF ~~ THEN REPLY #28579 /* ~«Забудем о моей просьбе. Можно задать еще пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28580 /* ~«Тогда прими мои извинения. Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from:
  SAY #28581 /* ~«Путешествовать с тобой?» Падшая Грация улыбается. Похоже, она не обращает внимания на Морта. «Это довольно бесцеремонно с твоей стороны».~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28582 /* ~«Я хочу быть откровенным в своих намерениях. Ты невероятно мила и хорошо осведомлена по части планов. Компаньону с подобными знаниями я всегда буду рад».~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28583 /* ~«Я такой, какой я есть».~ */ GOTO 79
  IF ~~ THEN REPLY #28584 /* ~«То есть, насколько волнующими может быть это место?»~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28585 /* ~«Ты ведь чувствующая. Несомненно, должен быть какой-то предел тому, что ты можешь здесь познать».~ */ GOTO 83
  IF ~~ THEN REPLY #28586 /* ~«Забудем о моей просьбе. Можно задать еще пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28587 /* ~«Тогда прими мои извинения. Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 49.14 81.0
  SAY #28588 /* ~«Так ты не смог найти десятого ученика? Любопытно».~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28589 /* ~«Думаю, что десятый ученик — это я. В таком случае, я поговорил со всеми».~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #28590 /* ~«Думаю, что десятый ученик — это я. В таком случае, я поговорил со всеми».~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Grace_Quest_Answer","GLOBAL",1)
~ THEN REPLY #28591 /* ~«Под борделем я видел десять камней, и один из них пуст... так что мне кажется, что здесь только девять проституток. Значит, десятый *ученик* — это я. В таком случае, я поговорил со всеми».~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #28592 /* ~«Мне кажется, что Луис — десятый ученик... в своем роде».~ */ DO ~SetGlobal("Luis_Student","GLOBAL",1)
~ GOTO 121
  IF ~~ THEN REPLY #28593 /* ~«Ты можешь сказать мне, где найти десятого ученика?»~ */ GOTO 122
  IF ~~ THEN REPLY #28594 /* ~«Возможно, я его пропустил. Можно задать тебе пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28595 /* ~«Я буду искать еще внимательнее. Возможно, я таки найду десятого ученика. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0 120.1 120.2 120.3 122.0 122.1 122.2 122.3
  SAY #28596 /* ~Она кивает. «Хорошо. И каковы твои мысли?»~ */
  IF ~~ THEN REPLY #28597 /* ~«Нам с тобой следует покинуть это место и отправиться исследовать планы. Здесь для нас не осталось ничего, что можно было бы испытать».~ */ GOTO 203
  IF ~~ THEN REPLY #61636 /* ~«Я узнал, что это значит — стремиться быть чувствующим, и что лучше уж отправиться на поиски новых ощущений, чем вызывать их».~ */ GOTO 203
  IF ~  Global("Luis_Student","GLOBAL",1)
~ THEN REPLY #61638 /* ~«Луис серьезно нуждается в плотнике, чтобы тот укоротил ему либидо».~ */ GOTO 204
  IF ~  Global("Luis_Student","GLOBAL",0)
GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #61639 /* ~«Тебе стоит избавиться от всех шкафов в борделе и пустить их на растопку камина».~ */ GOTO 204
  IF ~~ THEN REPLY #61640 /* ~«Обучение в защищенной среде вроде этой только вредит ученикам, и планы нередко сами по себе являются лучшими учителями».~ */ GOTO 203
END

IF ~~ THEN BEGIN 122 // from: 120.4
  SAY #28598 /* ~«Ученик где-то рядом... Может, тебе стоит присмотреться получше».~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28599 /* ~«Думаю, что десятый ученик — это я. В таком случае, я поговорил со всеми».~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #28600 /* ~«Думаю, что десятый ученик — это я. В таком случае, я поговорил со всеми».~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Grace_Quest_Answer","GLOBAL",1)
~ THEN REPLY #28591 /* ~«Под борделем я видел десять камней, и один из них пуст... так что мне кажется, что здесь только девять проституток. Значит, десятый *ученик* — это я. В таком случае, я поговорил со всеми».~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #28602 /* ~«Мне кажется, что Луис — десятый ученик... в своем роде».~ */ DO ~SetGlobal("Luis_Student","GLOBAL",1)
~ GOTO 121
  IF ~~ THEN REPLY #28603 /* ~«Возможно, я его пропустил. Можно задать тебе пару вопросов?»~ */ GOTO 49
  IF ~~ THEN REPLY #28604 /* ~«Я буду искать еще внимательнее. Возможно, я таки найду десятого ученика. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 110.0
  SAY #28605 /* ~Грация соединяет пальцы так, чтобы ладони образовали подобие круга. «Говорят, что Леди обладает способностью брать части Сигила...» Ты с удивлением видишь, как призрачный образ мизинца Грации отделяется от руки и сам по себе парит в воздухе, вращаясь вдоль небольшого круга. «...и делать из них лабиринт».~ */
  IF ~~ THEN REPLY #28606 /* ~«Продолжай...»~ */ GOTO 124
  IF ~~ THEN REPLY #28607 /* ~«Понятно. Расскажи мне о плане, из которого родом Равель... о Серой пустоши».~ */ GOTO 111
  IF ~~ THEN REPLY #28608 /* ~«Думаю, я понял. Кто-нибудь еще может знать больше о Равель?»~ */ GOTO 112
  IF ~~ THEN REPLY #28609 /* ~«Неважно. Можно задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28610 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #28611 /* ~Небольшой призрачный круг парит в воздухе, затем начинает медленно вращаться. «В эту часть Сигила она помещает узника. Попав в лабиринт, выбраться из него уже нельзя. Это может случиться в любое время, пока ты гуляешь по улице, входишь через дверь, — она резко хлопает в ладони, — и вдруг оказываешься в другом месте». Внутри призрачного круга ты неожиданно замечаешь мерцающее движение, как будто внутри кто-то бродит.~ */
  IF ~~ THEN REPLY #28612 /* ~«Продолжай...»~ */ GOTO 125
  IF ~~ THEN REPLY #28613 /* ~«Понятно. Расскажи мне о плане, из которого родом Равель... о Серой пустоши».~ */ GOTO 111
  IF ~~ THEN REPLY #28614 /* ~«Думаю, я понял. Кто-нибудь еще может знать больше о Равель?»~ */ GOTO 112
  IF ~~ THEN REPLY #28615 /* ~«Неважно. Можно задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28616 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #28617 /* ~Грация продолжает; крошечный призрачный лабиринт отражается в ее глазах. «Говорят, что в каждом лабиринте есть портал наружу, но найти его нелегко. Возможно, их оставили для того, чтобы дать узнику надежду. А, может, для того, чтобы помучить его». Призрачный лабиринт меркнет. «Наверно, и для того, и для другого».~ */
  IF ~~ THEN REPLY #28618 /* ~«Понятно. Расскажи мне о плане, из которого родом Равель... о Серой пустоши».~ */ GOTO 111
  IF ~~ THEN REPLY #28619 /* ~«Думаю, я понял. Кто-нибудь еще может знать больше о Равель?»~ */ GOTO 112
  IF ~~ THEN REPLY #28620 /* ~«Неважно. Можно задать тебе другие вопросы?»~ */ GOTO 49
  IF ~~ THEN REPLY #28621 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 126 // from:
  SAY #28896 /* ~Грация благодарит мужчину кивком и улыбкой: «Вы так любезны, сэр».~ */
  IF ~~ THEN EXTERN ~DCWCAFEM~ 20
END

IF ~~ THEN BEGIN 127 // from:
  SAY #30528 /* ~Грация вмешивается в разговор, тихо шепча: «Адвокат — это тот, кто ведет дела в судах Сигила. Еще адвокаты дают юридические консультации тем, кто в них нуждается».~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 10
END

IF ~~ THEN BEGIN 128 // from:
  SAY #30827 /* ~Она слегка улыбается. «Ничего страшного, Авель. Уверена, что только Туэни обиделся бы на такой отзыв, а он, как вам известно, уже более чем три века как заживо похоронен своими подданными».~ */
  IF ~~ THEN EXTERN ~DABLE~ 5
END

IF ~~ THEN BEGIN 129 // from:
  SAY #30828 /* ~Грация улыбается, умудряясь вежливо перебить его: «А как вы думаете, почему вам всегда там рады, дорогой мой Авель?»~ */
  IF ~~ THEN EXTERN ~DABLE~ 40
END

IF ~~ THEN BEGIN 130 // from:
  SAY #32697 /* ~«Сархава? Сархава Вджул, это ты?»~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 25
END

IF ~~ THEN BEGIN 131 // from:
  SAY #32698 /* ~Грация едва заметно кивает. «Твоя речь весьма и весьма изыскана, в отличие от только что услышанного мной».~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 26
END

IF ~~ THEN BEGIN 132 // from:
  SAY #32699 /* ~«Я сожалею, что они вообще были произнесены». Ее тон почти не изменился, однако похоже, что утонченное замечание прошлось по лицу девушки как плетка. «Очень больно видеть, что моя бывшая ученица ведет себя так...»~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 27
END

IF ~~ THEN BEGIN 133 // from:
  SAY #32700 /* ~«Это мои спутники, с которыми я путешествую. Я бы хотела, чтобы ты была с ними так же вежлива, как и со мной. Это знак отличия и обязанность... благородных от рождения».~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32701 /* ~Продолжить.~ */ EXTERN ~DANNAH~ 177
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #32702 /* ~Продолжить.~ */ EXTERN ~DSARHAVA~ 28
END

IF ~~ THEN BEGIN 134 // from:
  SAY #33080 /* ~«А вот мне несложно представить, чтобы женщина смогла остановить Кровавую войну».~ */
  IF ~~ THEN REPLY #33082 /* ~«Но ведь нечистых все еще пускают в Сигил?»~ */ EXTERN ~DGHYSIS~ 25
  IF ~~ THEN REPLY #33083 /* ~«Позволь мне спросить еще кое о чем...»~ */ EXTERN ~DGHYSIS~ 11
  IF ~~ THEN REPLY #33084 /* ~«У меня больше нет вопросов».~ */ EXTERN ~DGHYSIS~ 9
END

IF ~~ THEN BEGIN 135 // from:
  SAY #33081 /* ~«Да ничего. Ты абсолютно прав».~ */
  IF ~~ THEN REPLY #33085 /* ~«Какие еще рода войск участвуют в Кровавой войне?»~ */ EXTERN ~DGHYSIS~ 48
  IF ~~ THEN REPLY #33086 /* ~«Позволь мне спросить еще кое о чем...»~ */ EXIT
  IF ~~ THEN REPLY #33087 /* ~«У меня больше нет вопросов».~ */ EXIT
END

IF ~  GlobalGT("Grace","GLOBAL",1)
!InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 136 // from:
  SAY #34014 /* ~Когда ты подходишь, Падшая Грация поднимает взгляд. «Ты хочешь, чтобы я снова путешествовала с тобой?»~ [FFG247] */
  IF ~~ THEN REPLY #34015 /* ~«Да, если ты не против».~ */ GOTO 137
  IF ~~ THEN REPLY #34016 /* ~«Не сейчас... Просто хотел справиться, как у тебя дела».~ */ GOTO 138
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #34017 /* ~Она кивает. «С удовольствием».~ [FFG249] */
  IF ~~ THEN REPLY #34018 /* ~«Идем».~ */ DO ~ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 138 // from: 136.1
  SAY #34019 /* ~Она кивает. «Спасибо. Как мило с твоей стороны, — она слегка улыбается. — Если в будущем понадобится моя помощь, ты сможешь найти меня здесь».~ */
  IF ~~ THEN REPLY #34020 /* ~«Спасибо, Грация. Может, я еще передумаю».~ */ EXIT
END

IF ~  GlobalGT("Grace","GLOBAL",0)
InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 139 // from: 205.10 206.2 213.1 214.1 215.0 216.1 217.1 218.0 239.1 240.3 248.1 249.4 250.2 251.0 267.1 268.1 270.3 271.2 272.1 273.4 274.2 276.0 279.8 280.5 281.9 284.1 286.1 287.3 288.2 289.3 290.3 291.4 292.3 293.3 294.4 295.2 296.4 297.4 298.4 299.3 300.4 301.1 302.3 303.1 304.3 305.2 307.1 308.2 309.3 310.3 311.3 312.2 313.2 314.1 316.2 317.1 319.2 320.3 321.2 322.2 323.4 324.1 325.2 326.2 327.3 328.2 329.1 330.6 331.2 332.1 333.1 334.1 335.5 336.1 337.3 338.3 339.1 343.1 344.2 345.2 346.2 347.2 357.5 359.2 360.1 361.1
  SAY #34021 /* ~«Да?»~ [FFG003] */
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #34022 /* ~«Что ты можешь рассказать о танарри?»~ */ GOTO 206
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61947 /* ~«Те крылья на твоей спине... Кто ты такая?»~ */ GOTO 214
  IF ~  NearbyDialog("DAnnah")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61948 /* ~«Те крылья на твоей спине... Кто ты такая?»~ */ EXTERN ~DANNAH~ 308
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61949 /* ~«Те крылья на твоей спине... Кто ты такая?»~ */ EXTERN ~DMORTE~ 612
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61950 /* ~«Могу ли я спросить, госпожа Грация: крылья на твоей спине... ты ведь не человек, верно?»~ */ GOTO 214
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61951 /* ~«Могу ли я спросить, госпожа Грация: крылья на твоей спине... ты ведь не человек, верно?»~ */ EXTERN ~DANNAH~ 308
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("Dannah")
NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61952 /* ~«Могу ли я спросить, госпожа Грация: крылья на твоей спине... ты ведь не человек, верно?»~ */ EXTERN ~DMORTE~ 612
  IF ~  Global("Grace_Name","GLOBAL",0)
~ THEN REPLY #61953 /* ~«Как ты получила имя 'Падшая Грация'?»~ */ GOTO 239
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61954 /* ~«Почему тебя зовут Падшей Грацией?»~ */ GOTO 245
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61955 /* ~«Почему тебя зовут Падшей Грацией?»~ */ GOTO 246
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61956 /* ~«Почему тебя зовут Падшей Грацией?»~ */ GOTO 247
  IF ~  Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #61957 /* ~«Как ты получила имя 'Падшая Грация'?»~ */ GOTO 248
  IF ~  GlobalGT("Know_Grace_Sensates","GLOBAL",0)
~ THEN REPLY #61958 /* ~«Можешь рассказать мне, что тебе известно про чувствующих?»~ */ GOTO 216
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #61959 /* ~«Ты можешь обучить меня чему-нибудь из Искусства, Грация?»~ */ GOTO 267
  IF ~  NumInPartyLT(3)
~ THEN REPLY #61960 /* ~«Я хотел бы поговорить о нас...»~ */ GOTO 279
  IF ~  NumInPartyGT(2)
~ THEN REPLY #61961 /* ~«Я хотел бы поговорить о наших спутниках...»~ */ GOTO 279
  IF ~~ THEN REPLY #61962 /* ~«Ты вообще пользуешься оружием?»~ */ GOTO 349
  IF ~~ THEN REPLY #61963 /* ~«У меня есть вопросы о нашем путешествии...»~ */ GOTO 205
  IF ~~ THEN REPLY #61964 /* ~«Неважно. Пошли».~ */ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #39578 /* ~Грация поворачивается к Ив. «На сегодня у меня нет историй, c которыми я бы хотела поделиться с тобой, Охотница-за-рассказами. Я не могу позволить тебе опустошить мои запасы до того, как я узнаю новые истории».~ */
  IF ~~ THEN REPLY #39755 /* ~Спросить другого спутника.~ */ EXTERN ~DYVES~ 20
  IF ~~ THEN REPLY #39756 /* ~«У меня есть история, которой я хочу поделиться с тобой, Ив».~ */ EXTERN ~DYVES~ 19
  IF ~~ THEN REPLY #39757 /* ~«Тогда у меня есть вопрос к Ив...»~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39758 /* ~«В таком случае, мы пойдем. Счастливо, Ив».~ */ EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #42093 /* ~«Думаю, она слепа по собственному желанию, а не по воле случая».~ */
  IF ~~ THEN EXTERN ~DYVANA~ 14
END

IF ~~ THEN BEGIN 142 // from:
  SAY #44259 /* ~«Здравствуйте, мастер Гонсалвис».~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 23
END

IF ~~ THEN BEGIN 143 // from:
  SAY #44261 /* ~«Нет нужды торопиться с моим заказом, мастер Гонсалвис: ваше искусство требует времени, и, несомненно, творения ваших рук еще порадуют нас. Однако я здесь не по этому поводу. Этот человек, — Падшая Грация кивает в твою сторону, — хотел бы с вами немного поговорить...»~ */
  IF ~~ THEN DO ~SetGlobal("Goncalves","GLOBAL",2)
~ EXTERN ~DGONCAL~ 24
END

IF ~~ THEN BEGIN 144 // from:
  SAY #49782 /* ~Падшая Грация внимательно смотрит на человека. «Думаю, я слышала о подобном виде выступлений. Они популярны в нескольких первичных мирах, — она понижает голос так, что только ты ее слышишь, — и их горячо ненавидят во множестве из них».~ */
  IF ~~ THEN REPLY #49783 /* ~Попробовать прикоснуться к нему.~ */ EXTERN ~DMIME~ 2
  IF ~~ THEN REPLY #49784 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #50078 /* ~«Если учесть, какого типа этот нечистый, то я уверена, что мы сможем справиться с ним. Если это баатезу, то он охотно пойдет на сделку в обмен на свободу. А если это танарри, то мы просто продемонстрируем свои сокрушительные аргументы, чтобы убедить его быть послушным, — улыбается она. — Оружие подкрепит твои доводы».~ */
  IF ~~ THEN REPLY #50079 /* ~«Хорошо. Дона Куишо, что мне нужно делать?»~ */ EXTERN ~DQUISHO~ 5
  IF ~~ THEN REPLY #50080 /* ~«Я не занимаюсь освобождением заключенных нечистых».~ */ EXTERN ~DQUISHO~ 4
END

IF ~~ THEN BEGIN 146 // from:
  SAY #50147 /* ~«Думаю, что не стоит надеяться на более точный ответ».~ */
  IF ~~ THEN REPLY #50148 /* ~«Ты можешь задать ему другой вопрос?»~ */ GOTO 147
  IF ~~ THEN REPLY #50252 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 147 // from: 146.0 148.0 149.0 150.2
  SAY #50149 /* ~Падшая Грация кивает. «Да, конечно».~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50150 /* ~«Спроси его, кто он».~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50239 /* ~«Спроси его, кто он».~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50240 /* ~«Спроси его, кто он».~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50241 /* ~«Спроси его, что он делает».~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50242 /* ~«Спроси его, что он делает».~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50243 /* ~«Спроси его, что он делает».~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50244 /* ~«Спроси его про Леди Боли».~ */ EXTERN ~DADABUS~ 10
  IF ~~ THEN REPLY #50245 /* ~«Спроси его про Фелла».~ */ GOTO 150
  IF ~~ THEN REPLY #50251 /* ~«Неважно. Идем отсюда».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 148 // from:
  SAY #50179 /* ~«Он говорит, что он — 'дабус', — Грация замолкает. — Я редко встречала дабусов, у которых вообще было имя... по крайней мере, хоть что-либо, что можно принять за имя. Похоже, они предпочитают использовать символы».~ */
  IF ~~ THEN REPLY #50180 /* ~«Ты можешь задать ему другой вопрос?»~ */ GOTO 147
  IF ~~ THEN REPLY #50181 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 149 // from:
  SAY #50193 /* ~«Он говорит, что выполняет свои обязанности, — она поворачивается к тебе. — Они тратят большую часть времени на ремонт и снос частей города. В каком-то смысле они являются хранителями города».~ */
  IF ~~ THEN REPLY #50194 /* ~«Ты можешь задать ему другой вопрос?»~ */ GOTO 147
  IF ~~ THEN REPLY #50195 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 150 // from: 147.7
  SAY #50246 /* ~Грация хмурится. «Не уверена, что будет благоразумно задавать этот вопрос. Он может оскорбить дабуса, ведь Фелл больше не является членом их сообщества...»~ */
  IF ~~ THEN REPLY #50247 /* ~«И все же, ты можешь спросить его?»~ */ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50248 /* ~«Хватит нотаций, просто спроси его».~ */ DO ~MoraleDec("Grace",1)
~ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50249 /* ~«Ты можешь задать ему другой вопрос?»~ */ GOTO 147
  IF ~~ THEN REPLY #50250 /* ~«Тогда неважно. Идем».~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 151 // from:
  SAY #50686 /* ~«Не знаю, о какой миссии говоришь ты, Вришика, но вот твое присутствие здесь вызывает много вопросов. Последнее, что я о тебе слышала, это то, что ты стала знаменосцем батальона Стервятников. Как ты очутилась в Сигиле?»~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 5
END

IF ~~ THEN BEGIN 152 // from:
  SAY #50687 /* ~Падшая Грация говорит с холодностью, которой ты раньше от нее не слышал. Воздух становится практически ледяным, когда она смеряет взглядом Вришику. «Довольно об этом».~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 6
END

IF ~~ THEN BEGIN 153 // from:
  SAY #50688 /* ~«Это правда...»~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 12
END

IF ~~ THEN BEGIN 154 // from:
  SAY #50689 /* ~«Освободиться от договоров с баатезу можно, если умеешь выбирать слова и понимаешь, что баатезу обязательно сдержат свое слово. Нужно всего лишь остерегаться любых слов, которые они могут обратить в свою пользу... а я *хорошо подкована* по части речи и всех ее тонкостей. И даже учитывая это, было непросто...»~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 13
END

IF ~~ THEN BEGIN 155 // from:
  SAY #50690 /* ~Падшая Грация сохраняет безупречное хладнокровие и только кивает... Однако, когда вы пересекаетесь взглядами, она смотрит на тебя слегка раздраженно, но затем улыбается.~ */
  IF ~~ THEN REPLY #50691 /* ~«Что ты там говорила о том, что она обучает агентов, Вришика?»~ */ EXTERN ~DVRISCH~ 14
  IF ~~ THEN REPLY #50692 /* ~«У меня еще вопрос, Вришика...»~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50693 /* ~«Хотелось бы посмотреть на твой товар, Вришика...»~ */ EXTERN ~DVRISCH~ 20
  IF ~~ THEN REPLY #50694 /* ~«Это все, что я хотел знать, Вришика. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #50695 /* ~«Не в этом цель моего заведения...»~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 15
END

IF ~~ THEN BEGIN 157 // from:
  SAY #50696 /* ~«Он прекрасно знал, почему я согласилась странствовать с ним, Вришика... когда он попросил меня об этом».~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 17
END

IF ~~ THEN BEGIN 158 // from:
  SAY #52554 /* ~«Равель... — тихо и осторожно отвечает Грация. — Я смирилась с м...»~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 37
END

IF ~~ THEN BEGIN 159 // from:
  SAY #52555 /* ~«Потому что любовь не позволила бы сделать это, а ведь она способна покорить своей воле даже сильнейших, — тон у Падшей Грации мягкий и вопрошающий. — Разве не так, Равель?»~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 130
END

IF ~~ THEN BEGIN 160 // from:
  SAY #52556 /* ~«Каждый имеет право на подобные чувства, Равель, — тихо говорит Грация. — Однако истории о тебе не рисуют столь жалостливую картину...»~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 131
END

IF ~~ THEN BEGIN 161 // from:
  SAY #52557 /* ~«Леди Боли? Ты пыталась *помочь* ей?»~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 188
END

IF ~~ THEN BEGIN 162 // from:
  SAY #52558 /* ~«Леди Боли? Ты пыталась *помочь* ей?»~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 187
END

IF ~~ THEN BEGIN 163 // from:
  SAY #52559 /* ~Грация молчит. Похоже, она внимательно изучает Равель... внезапно тебя осеняет: Грация выискивает в Равель слабые места.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 79
END

IF ~~ THEN BEGIN 164 // from:
  SAY #52560 /* ~Внезапно Грация становится в боевую стойку, подняв руки и пальцами изобразив защитный жест. Однако выражение ее лица не меняется: похоже, она этого ожидала.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 83
END

IF ~~ THEN BEGIN 165 // from:
  SAY #52971 /* ~И вдруг рядом оказывается Падшая Грация, ее прикосновение нежно как шелк, она утирает твои слезы, в то время как ты чувствуешь, что крик вот-вот вырвется из тебя. Она успокаивает тебя, прижимая твое лицо в кровавых слезах к своей груди.~ */
  IF ~~ THEN REPLY #52972 /* ~«Я... Я... не могу... вынести это... Я... не смог ОСТАНОВИТЬ ее, ХОТЕЛ, но не смог сделать *ничего*!..»~ */ GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #52973 /* ~Падшая Грация смотрит тебе в глаза и печально кивает в знак понимания. «Такова природа *тоски*. Желаешь то, чего не можешь изменить или получить, — она внимательно смотрит на тебя, убирая руку, покрытую твоей кровью. — Ты в порядке?»~ */
  IF ~~ THEN REPLY #52974 /* ~«Да... Да... Мне нужно немного времени...»~ */ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #52976 /* ~«Хорошо... — Падшая Грация отступает. — Мы продолжим, когда ты будешь готов».~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52977 /* ~Вдохнуть и попробовать собраться с мыслями.~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
SetGlobal("Deionarra_SS_Grace","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ EXTERN ~DF_SS_DE~ 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52978 /* ~Вдохнуть и попробовать собраться с мыслями.~ */ DO ~SetGlobal("Deionarra_SS_Grace","GLOBAL",1)
~ EXTERN ~DF_SS_DE~ 34
END

IF ~~ THEN BEGIN 168 // from:
  SAY #54023 /* ~«Я зашла уже так далеко, и было бы неучтиво с моей стороны отказаться в последнюю минуту, — она слегка улыбается. — Даже если бы ты вежливо попросил об этом, я бы все равно не позволила себе такого».~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",16)
InParty("Annah")
~ THEN REPLY #54024 /* ~«Похоже, у меня не остается выбора... Анна?»~ */ EXTERN ~DANNAH~ 273
  IF ~  NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",15)
InParty("Annah")
~ THEN REPLY #54025 /* ~«Похоже, у меня не остается выбора... Анна?»~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("annah")
NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54026 /* ~«Похоже, у меня не остается выбора... Даккон?»~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54027 /* ~«Похоже, у меня не остается выбора... Даккон?»~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54028 /* ~«Похоже, у меня не остается выбора... Морт?»~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54029 /* ~«Похоже, у меня не остается выбора... Морт?»~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54030 /* ~«Хорошо... А теперь посмотрим, что же находится по ту сторону портала».~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54031 /* ~«Хорошо... А теперь посмотрим, что же находится по ту сторону портала».~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54032 /* ~«Хорошо... А теперь посмотрим, что же находится по ту сторону портала».~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 169 // from:
  SAY #54033 /* ~«Это из-за того, что Равель сказала в лабиринте, — голос Грации настолько тих, что ты едва слышишь его. — Не так ли, Морт?»~ */
  IF ~~ THEN EXTERN ~DMORTE~ 562
END

IF ~~ THEN BEGIN 170 // from:
  SAY #54034 /* ~«Это из-за того, что Равель сказала в лабиринте. И символа, который показывал нам Фелл, — голос Грации настолько тих, что ты едва слышишь его. — Не так ли, Морт?»~ */
  IF ~~ THEN EXTERN ~DMORTE~ 563
END

IF ~~ THEN BEGIN 171 // from:
  SAY #54067 /* ~«Анна, мне так жаль...»~ */
  IF ~~ THEN EXTERN ~DANNAH~ 268
END

IF ~~ THEN BEGIN 172 // from:
  SAY #54068 /* ~«Колонна Черепов — это колонна из живых голов, состоящая из тех, чья ложь привела к смерти других. Она может ответить на множество вопросов, поскольку многое знает, но ожидает огромную плату за свои услуги. Не задавай ей такие вопросы».~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 173 // from:
  SAY #54069 /* ~Падшую Грацию, казалось бы, не тронуло твое заявление; она попросту смотрит на колонну. «Я никогда по собственной воле не дам Колонне Черепов съесть меня... но я уверена, что ты это знаешь и просто шутишь. Ты же не хочешь шутить с Колонной таким образом?..»~ */
  IF ~~ THEN REPLY #54070 /* ~Правда: «Я серьезно. Вперед, Грация, не то я сам тебя туда засуну».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_3","GLOBALGood",-1)
MoraleDec("Grace",3)
~ GOTO 174
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #54071 /* ~«Ладно. Колонна, какие *еще* подарки вы примете?»~ */ EXTERN ~DPILLAR~ 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #54072 /* ~«Ладно. Колонна, какие *еще* подарки вы примете?»~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54073 /* ~«*Конечно* же, я шучу. Идем».~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54074 /* ~«*Конечно* же, я шучу. Идем».~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #54075 /* ~Грация замолкает, беспокойно глядя на тебя. «Ты уверен, что хочешь предпринять такое действие? Ты действительно бросишь меня Колонне Черепов?»~ */
  IF ~~ THEN REPLY #54076 /* ~«Да».~ */ GOTO 175
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #54077 /* ~«Нет. Колонна, какие *еще* подарки вы примете?»~ */ EXTERN ~DPILLAR~ 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #54078 /* ~«Нет. Колонна, какие *еще* подарки вы примете?»~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54079 /* ~«Нет. Пошли».~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54080 /* ~«Нет. Пошли».~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #54082 /* ~Взгляд Падшей Грации становится суровым и холодным как лед, хотя ее лицо остается абсолютно невозмутимым. «Тогда я говорю тебе 'прощай', Безымянный. Если будешь проходить через Баатор, возможно, мы еще встретимся». Сказав это, она превращается в облачко зеленого тумана.~ */
  IF ~~ THEN REPLY #54083 /* ~«Грация...»~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
StartCutSceneMode()
StartCutSceneEx("1001Cut2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 176 // from:
  SAY #54765 /* ~Грация вздыхает. «Дэва... похоже, эти цепи не столько сковывают его движения, сколько подавляют его разум...»~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 185
END

IF ~~ THEN BEGIN 177 // from:
  SAY #54766 /* ~Грация вздыхает. «Дэва... похоже, эти цепи не столько сковывают его движения, сколько подавляют его разум...»~ */
  IF ~~ THEN REPLY #54874 /* ~«Дэва, у меня есть вопросы к тебе...»~ */ EXTERN ~DTRIAS~ 9
END

IF ~~ THEN BEGIN 178 // from:
  SAY #54767 /* ~«У меня не было намерений соблазнять тебя, дэва. Боюсь, что твое заключение плохо на тебе сказывается».~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 34
END

IF ~~ THEN BEGIN 179 // from:
  SAY #54768 /* ~«Я не согласна с этим, лорд Триас. Ты попросту слишком сильно верил в то, что воодушевишь их».~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 46
END

IF ~~ THEN BEGIN 180 // from:
  SAY #54769 /* ~Вдруг вмешивается Падшая Грация. «Каковы твои взгляды на Кровавую войну, лорд Триас?»~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 47
END

IF ~~ THEN BEGIN 181 // from:
  SAY #54770 /* ~Падшая Грация мягко произносит: «Ты уверен, что хочешь это сделать? Этот дэва — возможно, единственный, кто способен помочь тебе восстановить свою память. Равель послала нас к нему. Ты сразишь его прежде, чем он выдаст все свои секреты?»~ */
  IF ~~ THEN REPLY #54875 /* ~Разбить цепи дэва.~ */ EXTERN ~DTRIAS~ 50
  IF ~~ THEN REPLY #54876 /* ~Добить дэва.~ */ EXTERN ~DTRIAS~ 98
  IF ~~ THEN REPLY #54877 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from:
  SAY #54771 /* ~«Ты думаешь, что сможешь закончить Кровавую войну, перенеся ее к вратам рая? Зло на Нижних планах не имеет числа. Легионы Баатора и Бездны — наглядный тому пример. Прежде чем вооружаться одним лишь раздутым высокомерием, ты должен вспомнить ужасающую мощь бесконечного зла, если сосредоточить его на единой цели. Не дай им повод перенести Кровавую войну на Верхние планы, иначе пострадает вся мультивселенная».~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 78
END

IF ~~ THEN BEGIN 183 // from:
  SAY #54772 /* ~«Можно научиться чему угодно, если иметь достаточное восприятие, мой господин. Стоит помнить, что мудрец использует любую возможность обучаться».~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 79
END

IF ~~ THEN BEGIN 184 // from:
  SAY #55712 /* ~«Если отбросить критику Морта, на самом деле Механус — удивительное место. Там нет неба, только огромные шестерни, крутящиеся в пространстве... Они излучают сияние в соответствии с собственным циклом — эффект весьма захватывающий. Логичность и порядок плана могут действовать расслабляюще, и там более чем достаточно всего, чтобы развеять скуку — нужно только знать, куда и как идти».~ */
  IF ~~ THEN EXTERN ~DMORTE~ 577
END

IF ~~ THEN BEGIN 185 // from:
  SAY #55714 /* ~«Модронов питает общая энергия. В каком-то роде, эта энергия служит связующим звеном между ними всеми. Когда один из них умирает, энергия возвращается обратно в общий фонд, после чего из этой энергии создается новый модрон. Когда модрон становится... бродягой... он обрывает связь со своим народом и забирает с собой частицу этой энергии».~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55715 /* ~«Значит, Нордом — часть этого Источника, но он от него отрезан. И что когда модрон умирает, он возвращается туда. С Нордомом будет так же?»~ */ GOTO 188
  IF ~~ THEN REPLY #55717 /* ~«Итак... Нордом, этот Механус — источник энергии?»~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55719 /* ~«Ясно. Нордом, у меня есть к тебе другие вопросы...»~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55720 /* ~«Это все, что я хотел знать. Пошли».~ */ EXIT
END

IF ~~ THEN BEGIN 186 // from:
  SAY #55722 /* ~Падшая Грация кивает. «Морт прав — модронов питает общая энергия. В каком-то роде, эта энергия служит связующим звеном между ними всеми. Когда один из них умирает, энергия возвращается обратно в общий источник, после чего из этой энергии создается новый модрон. Когда модрон становится... бродягой... он обрывает связь со своим народом и забирает с собой частицу этой энергии».~ */
  IF ~~ THEN EXTERN ~DMORTE~ 579
END

IF ~~ THEN BEGIN 187 // from:
  SAY #55723 /* ~Падшая Грация слегка кивает. «Прошу прощения, Морт. Я не хотела тебя обидеть».~ */
  IF ~~ THEN REPLY #55725 /* ~«Морт, мне нужна вся доступная информация, так что перестань защищать свою территорию. Если у Падшей Грации есть чего добавить, то я хочу *выслушать* ее, хорошо?»~ */ EXTERN ~DMORTE~ 580
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55727 /* ~«Значит, Нордом — часть этого Источника, но он от него отрезан. И что когда модрон умирает, он возвращается туда. С Нордомом будет так же?»~ */ EXTERN ~DMORTE~ 583
  IF ~~ THEN REPLY #55729 /* ~«Итак... Нордом, этот Механус — источник энергии?»~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55730 /* ~«Ну хорошо. Нордом, у меня есть другие вопросы к тебе...»~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55731 /* ~«Это все, что я хотел знать. Пошли».~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from: 185.0
  SAY #55733 /* ~«Все верно».~ */
  IF ~~ THEN REPLY #55735 /* ~«И если он умрет, создается еще один Нордом».~ */ GOTO 189
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #55736 /* ~«Энергия Нордома вернется в Источник, но сам Нордом перестанет существовать. Вместо него будет создан другой модрон типа квадрон».~ */
  IF ~~ THEN REPLY #55738 /* ~«Значит... став бродягой, он превратился... в смертного?»~ */ GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY #55739 /* ~Падшая Грация кивает. «Насколько я понимаю, чистую энергию нельзя уничтожить. Но для Нордома, ставшего личностью, это будет равноценно прекращению существования».~ */
  IF ~~ THEN REPLY #55742 /* ~«Ну хорошо. Нордом, у меня есть другие вопросы к тебе...»~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55743 /* ~«Это все, что я хотел знать. Пошли».~ */ EXTERN ~DMORTE~ 582
END

IF ~~ THEN BEGIN 191 // from:
  SAY #55745 /* ~«Морт... — мягко перебивает его Падшая Грация. — Должна признаться, что без твоего оригинального представления информации мне было бы трудно объяснить ситуацию... Твои метафоры и обороты нередко позволяют другим *намного* проще понять суть твоих объяснений. Это делает тебя лучшим учителем, чем я».~ */
  IF ~~ THEN EXTERN ~DMORTE~ 582
END

IF ~~ THEN BEGIN 192 // from:
  SAY #56035 /* ~«Приветствую и тебя, адский адвокат Раздвоенный Язык, — Грация делает легкий поклон. — Я приму во внимание твое предложение».~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 29
END

IF ~~ THEN BEGIN 193 // from:
  SAY #56036 /* ~Голос Падшей Грации звучит ошеломленно: «Адский адвокат Раздвоенный Язык имеет в виду, что мы, танарри, — грубый народ?»~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 61
END

IF ~~ THEN BEGIN 194 // from:
  SAY #56037 /* ~«Тебе просто не нравится то, как мы вершим зло, но не его качество. Многие танарри заявляют, что чем ближе ты к первичной сути зла, тем ты ближе к идеалу».~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 62
END

IF ~~ THEN BEGIN 195 // from:
  SAY #56038 /* ~«С точки зрения баатезу, это может в самом деле казаться недопустимым. Однако... Адвокат, многие философы-танарри возразили бы, что для баатезу не менее непростительно отсекать страсть от жестокости: они отсекают ее от самой сути зла. Баатезу заменяют ярость холодной расчетливой жестокостью. Таким образом, продолжается давний спор: какое из зол лучше, эффективное или страстное?»~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 63
END

IF ~~ THEN BEGIN 196 // from:
  SAY #56683 /* ~«Мне известно о справедливости, Вейлор. Я смягчаю ее опытом и мудростью, а если смягчить справедливость этими двумя истинами, она становится *сильнее*. Также мне ведомо милосердие и прощение. Без них планы были бы куда более жестоким местом».~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 111
END

IF ~~ THEN BEGIN 197 // from:
  SAY #56688 /* ~«Нет, Вейлор, это не так. Это инструменты, с помощью которых можно освободить, возвысить и укрепить другую душу. Сделав это, можно укрепить *мультивселенную*. В этом вся суть идеала, о котором ты говоришь».~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 112
END

IF ~~ THEN BEGIN 198 // from:
  SAY #56689 /* ~Падшая Грация выпрямляется. «*Вот как*, Вейлор? Тогда *суди* меня своим взглядом — посмотрим, уличишь ли ты меня в этом. Посмотрим, сможешь ли ты найти ту слабость, которая, согласно твоим утверждениям, снедает меня».~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ EXTERN ~DVHAIL~ 113
END

IF ~~ THEN BEGIN 199 // from:
  SAY #56690 /* ~«С этого мига наши пути разошлись, Вейлор».~ */
  IF ~~ THEN REPLY #56691 /* ~«Вейлор, позволь мне спросить о ком-то другом».~ */ EXTERN ~DVHAIL~ 91
  IF ~~ THEN REPLY #56692 /* ~«Вейлор, довольно об этом. У меня есть к тебе вопросы...»~ */ EXTERN ~DVHAIL~ 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56693 /* ~«Тут мы должны разойтись своими путями, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56694 /* ~«Неважно, Вейлор. Давай продолжим».~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from:
  SAY #56695 /* ~«Прекрати свой допрос». В словах Падшей Грации не слышно и намека на угрозу, но почему-то они кажутся опасными. «Это не суд, и ты не будешь ее допрашивать в моем присутствии. Оставь ее в покое».~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 101
END

IF ~~ THEN BEGIN 201 // from:
  SAY #56696 /* ~«Для этого, Вейлор, тебе придется пройти через меня. Я не позволю причинить ей боль».~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 102
END

IF ~~ THEN BEGIN 202 // from:
  SAY #61423 /* ~Грация кивает, как бы предоставляя тебе уединение. «Я скоро вернусь». Она поворачивается и уходит.~ */
  IF ~~ THEN REPLY #61424 /* ~Пойти за проституткой...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DUCHO~ 8
END

IF ~~ THEN BEGIN 203 // from: 121.0 121.1 121.4
  SAY #61635 /* ~Падшая Грация кивает. «Хорошо. Я пойду с тобой, если ты все еще хочешь этого».~ */
  IF ~~ THEN REPLY #61642 /* ~«Да».~ */ DO ~AddexperienceParty(20000)
SetGlobal("Grace_Quest","GLOBAL",2)
SetGlobal("Grace","GLOBAL",2)
ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 204 // from: 121.2 121.3
  SAY #61641 /* ~«Ах!» Падшая Грация тихонько смеется, ее глаза искрятся. «Действительно дельные мысли. Хорошо... Я отправлюсь с тобой, если ты все еще желаешь путешествовать со мной».~ */
  IF ~~ THEN REPLY #61643 /* ~«Да».~ */ DO ~AddexperienceParty(20000)
SetGlobal("Grace_Quest","GLOBAL",2)
SetGlobal("Grace","GLOBAL",2)
ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 205 // from: 139.17 207.3 208.3 209.2 210.1 211.2 212.1 219.4 220.3 221.3 222.3 223.4 224.5 225.5 226.5 227.4 228.4 229.1 230.1 231.1 233.1 234.3 235.3 236.3 237.2 252.3 253.3 254.2 255.4 256.2 257.2 258.2 259.2 260.2 261.1 262.3 264.2 266.0 277.1 278.0 348.0 349.1 350.0 351.1 352.1 353.1 354.1 355.1 356.0
  SAY #61781 /* ~«Да?»~ */
  IF ~~ THEN REPLY #61974 /* ~«Зачем ты основала бордель?»~ */ GOTO 207
  IF ~~ THEN REPLY #61975 /* ~«Можно почитать твой дневник?»~ */ GOTO 277
  IF ~  Global("Know_Yves_Grace","GLOBAL",1)
Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61976 /* ~«Ив сказала, что у тебя есть рассказ, которым ты не хочешь с ней делиться».~ */ GOTO 351
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #61977 /* ~«Я хотел бы послушать твою историю еще раз».~ */ GOTO 352
  IF ~  GlobalGT("Know_Grace_ExSlave","GLOBAL",0)
~ THEN REPLY #61978 /* ~«Похоже, что Вришика не испытывает к тебе особой любви».~ */ GOTO 255
  IF ~  GlobalGT("Torment_Fell","GLOBAL",0)
~ THEN REPLY #61979 /* ~«Можешь рассказать мне об этом символе на моей руке?»~ */ GOTO 348
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",0)
~ THEN REPLY #61980 /* ~«Доводилось ли тебе слышать о ночной ведьме по имени Равель?»~ */ GOTO 229
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #61981 /* ~«Можешь еще раз сказать, что ты знаешь о Равель?»~ */ GOTO 234
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #61982 /* ~«Что ты знаешь о Кровавой войне?»~ */ GOTO 219
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #61983 /* ~«Когда мы были в лабиринте Равель, она сказала, что ты испытала боль... это так?»~ */ GOTO 263
  IF ~~ THEN REPLY #61984 /* ~«На самом деле, у меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #61985 /* ~«Неважно. Пошли».~ */ EXIT
END

IF ~~ THEN BEGIN 206 // from: 139.0
  SAY #61782 /* ~«Танарри — это нечистые духи; некоторые называют их 'демонами'. Они избрали творить зло во имя хаоса. Они живут на отравленных планах Бездны, питаясь своей собственной яростью и проводя набеги на другие части мультивселенной. Они оскверняют все, к чему прикасаются. Они вечно жаждут толкать других на преступления страстей и пороков».~ */
  IF ~~ THEN REPLY #61986 /* ~«И ты — танарри?»~ */ GOTO 213
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61987 /* ~«Как ты попала в Сигил?»~ */ GOTO 352
  IF ~~ THEN REPLY #61988 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 139
  IF ~~ THEN REPLY #61989 /* ~«Спасибо за объяснение... Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 207 // from: 205.0
  SAY #61783 /* ~«Я основала этот бордель не для плотских утех, а скорее чтобы дать выход тому сладострастному волнению, которое охватывает умы. Можно получить немало удовольствия, общаясь или соревнуясь с другими в искусстве говорить».~ */
  IF ~  Global("Grace_Brothel_Answer","GLOBAL",1)
~ THEN REPLY #61991 /* ~«Зачем ты основала подобное место?»~ */ GOTO 210
  IF ~  Global("Grace_Brothel_Answer","GLOBAL",0)
~ THEN REPLY #61992 /* ~«Зачем ты основала подобное место?»~ */ GOTO 208
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61993 /* ~«Если ты из Бездны, как ты попала в Сигил?»~ */ GOTO 352
  IF ~~ THEN REPLY #61994 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 205
  IF ~~ THEN REPLY #61995 /* ~«Спасибо за объяснение... Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 208 // from: 207.1
  SAY #61784 /* ~Падшая Грация поднимает бровь. «Очень странный вопрос, — хмурится она. — Даже не знаю, задавал ли мне его кто-нибудь. По крайней мере, прямо».~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #61996 /* ~«Прошу прощения, госпожа Грация. Я не хотел быть настолько прямолинейным. Мне было просто любопытно».~ */ GOTO 209
  IF ~~ THEN REPLY #61997 /* ~«Так... почему же?»~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 210
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #61998 /* ~«Просто довольно странно, чтобы суккуб основал подобное заведение... Предназначение этого места противоречит твоему естеству».~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~~ THEN REPLY #62000 /* ~«Неважно. Можно задать тебе еще несколько вопросов?»~ */ GOTO 205
  IF ~~ THEN REPLY #62002 /* ~«Забудь про объяснения... Пошли».~ */ EXIT
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY #61990 /* ~«О, не нужно извинений. Я с большим удовольствием сообщу тебе причины, если хочешь».~ */
  IF ~~ THEN REPLY #62011 /* ~«Да, я бы хотел их услышать».~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #62012 /* ~«Просто довольно странно, чтобы суккуб основал подобное заведение... Предназначение этого места противоречит твоему естеству».~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~~ THEN REPLY #62015 /* ~«Не сейчас. Могу ли я задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62016 /* ~«Может быть, в другой раз... Пойдем».~ */ EXIT
END

IF ~~ THEN BEGIN 210 // from: 207.0 208.1 208.2 209.0 209.1
  SAY #62004 /* ~«Чтобы частично ответить на твой вопрос, тебе следует знать, что я состою в Обществе Восприятия. Наша фракция верит, что каждому необходимо пережить как можно больше всего в мультивселенной».~ */
  IF ~~ THEN REPLY #62006 /* ~«И именно поэтому ты основала бордель?»~ */ GOTO 211
  IF ~~ THEN REPLY #62008 /* ~«Понятно. Нет нужды объяснять остальное. Можно задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62010 /* ~«Спасибо за объяснение... Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #62017 /* ~«Этот бордель призван утолять страсть даже самых заядлых интеллектуалов. Он предназначен для стимуляции разума, повышения знания о себе и других, создания новых способов *познания* другого. Он для тех, кто ищет нечто большее, нежели низменные телесные удовольствия, которых и так достаточно в Улье и Нижнем районе».~ */
  IF ~  GlobalGT("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #62018 /* ~«Ну я бы не стал называть их низ.. э-э-э, то есть, я могу понять это. Значит, бордель — это что-то типа школы?»~ */ GOTO 212
  IF ~  Global("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #62019 /* ~«Понимаю. Это заведение поощряет интеллектуальные виды состязаний, а не, э-э-э, *другие* виды. Так значит, бордель — это что-то вроде учебного заведения?»~ */ GOTO 212
  IF ~~ THEN REPLY #62020 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62021 /* ~«Спасибо за объяснение... Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 212 // from: 211.0 211.1
  SAY #62023 /* ~«Да. Я надеюсь, что, обучаясь искусству говорить и его тонкостям, посетители и ученики смогут узнать о себе что-то новое. Каждый ограничен лишь своим владением речью. Умение с помощью слов вызывать эмоции — колоссальный навык».~ */
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #62024 /* ~«Если ты из Бездны, как ты попала в Сигил?»~ */ GOTO 352
  IF ~~ THEN REPLY #62025 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 205
  IF ~~ THEN REPLY #62026 /* ~«Спасибо за объяснение... Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 213 // from: 206.0
  SAY #62027 /* ~«Верно. Я — низшая танарри, а точнее, суккуб, — она тихонько вздыхает. — Боюсь, что мы уж слишком распространенные на Нижних планах и в других местах, что не в нашу пользу. Большинство представителей моей расы проводят свое время, соблазняя мертвых различными плотскими утехами».~ */
  IF ~~ THEN REPLY #62028 /* ~«А ты?..»~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Падшая Грация сказала, что она — суккуб, «низшая танарри», один из нечистых духов, обитающих на Нижним планам. Похоже на то, что представители ее расы находят смертных и соблазняют их, утаскивая их души в Бездну. Как очаровательно.~ */ GOTO 215
  IF ~~ THEN REPLY #62029 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Падшая Грация сказала, что она — суккуб, «низшая танарри», один из нечистых духов, обитающих на Нижним планам. Похоже на то, что представители ее расы находят смертных и соблазняют их, утаскивая их души в Бездну. Как очаровательно.~ */ GOTO 139
  IF ~~ THEN REPLY #62030 /* ~«Я услышал достаточно. Идем».~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Падшая Грация сказала, что она — суккуб, «низшая танарри», один из нечистых духов, обитающих на Нижним планам. Похоже на то, что представители ее расы находят смертных и соблазняют их, утаскивая их души в Бездну. Как очаровательно.~ */ EXIT
END

IF ~~ THEN BEGIN 214 // from: 139.1 139.4
  SAY #62031 /* ~«Я — низшая танарри, а точнее, суккуб, — она тихонько вздыхает. — Боюсь, что мы уж слишком распространенные на Нижних планах и в других местах, что не в нашу пользу. Большинство представителей моей расы проводят свое время, соблазняя смертных различными плотскими утехами».~ */
  IF ~~ THEN REPLY #62032 /* ~«А ты?..»~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Падшая Грация сказала, что она — суккуб, «низшая танарри», один из нечистых духов, обитающих на Нижним планам. Похоже на то, что представители ее расы находят смертных и соблазняют их, утаскивая их души в Бездну. Как очаровательно.~ */ GOTO 215
  IF ~~ THEN REPLY #62033 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Падшая Грация сказала, что она — суккуб, «низшая танарри», один из нечистых духов, обитающих на Нижним планам. Похоже на то, что представители ее расы находят смертных и соблазняют их, утаскивая их души в Бездну. Как очаровательно.~ */ GOTO 139
  IF ~~ THEN REPLY #62034 /* ~«Я услышал достаточно. Идем».~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Падшая Грация сказала, что она — суккуб, «низшая танарри», один из нечистых духов, обитающих на Нижним планам. Похоже на то, что представители ее расы находят смертных и соблазняют их, утаскивая их души в Бездну. Как очаровательно.~ */ EXIT
END

IF ~~ THEN BEGIN 215 // from: 213.0 214.0
  SAY #62035 /* ~«Хотелось бы думать, что я дистанцировалась от всего этого... В конце концов, это слишком примитивный и непродуктивный способ тратить свое время в мультивселенной. Ведь есть гораздо более интересные занятия, не так ли?»~ */
  IF ~~ THEN REPLY #62036 /* ~«Пожалуй, да. Могу ли я задать тебе другие вопросы?»~ */ GOTO 139
  IF ~~ THEN REPLY #62037 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 216 // from: 139.12
  SAY #62038 /* ~«Чувствующие — это фракция Сигила, посвященная переживаниям. Без переживаний и ощущений большая часть мультивселенной для нас недоступна. Поэтому чувствующие стремятся пережить как можно больше: пережив все на свете, можно раскрыть истину мультивселенной».~ */
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #62039 /* ~«Интересная философия. Могу ли я присоединиться к чувствующим?»~ */ GOTO 217
  IF ~~ THEN REPLY #62040 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 139
  IF ~~ THEN REPLY #62041 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #62042 /* ~«Чтобы присоединиться к чувствующим, достаточно быть учеником жизни».~ */
  IF ~~ THEN REPLY #62043 /* ~«Я имел в виду, что хотел бы присоединиться к фракции».~ */ JOURNAL #27464 /* ~Падшая Грация предложила мне пойти в Городской Фестхолл, раз уж я хочу вступить в ряды Общества Восприятия. Она сказала, что там мне могут помочь.~ */ GOTO 218
  IF ~~ THEN REPLY #62044 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 139
  IF ~~ THEN REPLY #62045 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #62046 /* ~«Конечно... прости, что поддразниваю, — Грация кивает. — Если желаешь присоединиться к чувствующим — попытай счастья в Городском Фестхолле. Кто-нибудь там должен тебе помочь».~ */
  IF ~~ THEN REPLY #62047 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 139
  IF ~~ THEN REPLY #62048 /* ~«Хорошо. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 219 // from: 205.8 236.1 294.0 294.1 337.0 337.1 338.0 338.1
  SAY #62049 /* ~«Кровавая война — это конфликт, бушующий на Нижних планах между баатезу и танарри. Они бьются друг с другом, дабы выяснить, какое зло должно главенствовать — упорядоченное или хаотическое, — Падшая Грация делает паузу. — Лучше избегать этой войны любой ценой. Пусть танарри и баатезу толкут друг другу морды и позволят остальным планам пребывать в мире... или, как минимум, в относительном мире».~ */
  IF ~~ THEN REPLY #62050 /* ~«Относительном?»~ */ GOTO 220
  IF ~~ THEN REPLY #62051 /* ~«Они используют людскую пехоту?»~ */ GOTO 221
  IF ~~ THEN REPLY #62052 /* ~«Сколько она уже продолжается?»~ */ GOTO 222
  IF ~~ THEN REPLY #62053 /* ~«Ты на ней служила?»~ */ GOTO 223
  IF ~~ THEN REPLY #62054 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 205
  IF ~~ THEN REPLY #62055 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 220 // from: 219.0 221.0 222.0 223.1 224.1 225.1 226.1 227.0 228.0
  SAY #62056 /* ~«Ну, война настолько велика, что большинство рас втягиваются в нее против своей воли. Игнорировать ее так же опасно, как и участвовать в ней».~ */
  IF ~~ THEN REPLY #62057 /* ~«Они используют людскую пехоту?»~ */ GOTO 221
  IF ~~ THEN REPLY #62058 /* ~«Сколько она уже продолжается?»~ */ GOTO 222
  IF ~~ THEN REPLY #62059 /* ~«Ты на ней служила?»~ */ GOTO 223
  IF ~~ THEN REPLY #62060 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 205
  IF ~~ THEN REPLY #62061 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 221 // from: 219.1 220.0 222.1 223.2 224.2 225.2 226.2 227.1 228.1
  SAY #62062 /* ~«Да, такое случается. В Кровавой войне участвует множество человеческих наемников. Они служат либо в качестве солдат, либо в качестве пушечного мяса, либо в качестве провианта для нечистых».~ */
  IF ~~ THEN REPLY #62063 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 220
  IF ~~ THEN REPLY #62064 /* ~«Сколько она уже продолжается?»~ */ GOTO 222
  IF ~~ THEN REPLY #62065 /* ~«Ты на ней служила?»~ */ GOTO 223
  IF ~~ THEN REPLY #62066 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 205
  IF ~~ THEN REPLY #62067 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 222 // from: 219.2 220.1 221.1 223.3 224.3 225.3 226.3 227.2 228.2
  SAY #62068 /* ~«Согласно летописям, Кровавая война идет с тех пор, как баатезу впервые повстречали танарри... *очень* давно. Я даже не уверена, что у людей найдется подходящее название такому отрезку времени, — Падшая Грация качает головой. — Боюсь, что баатезу и танарри никогда не нравились друг другу».~ */
  IF ~~ THEN REPLY #62069 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 220
  IF ~~ THEN REPLY #62070 /* ~«Они используют людскую пехоту?»~ */ GOTO 221
  IF ~~ THEN REPLY #62071 /* ~«Ты на ней служила?»~ */ GOTO 223
  IF ~~ THEN REPLY #62072 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 205
  IF ~~ THEN REPLY #62073 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 223 // from: 219.3 220.2 221.2 222.2 228.3
  SAY #62074 /* ~«Нет. Моя мать служила. Суккубы в основном соблазняют смертных, чтобы забрать их души в Бездну и породить больше танарри, и чтобы те шли умирать на Кровавую войну».~ */
  IF ~~ THEN REPLY #62075 /* ~«Твоя мать? Она служила на Кровавой войне?»~ */ GOTO 224
  IF ~~ THEN REPLY #62076 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 220
  IF ~~ THEN REPLY #62077 /* ~«Они используют людскую пехоту?»~ */ GOTO 221
  IF ~~ THEN REPLY #62078 /* ~«Сколько она уже продолжается?»~ */ GOTO 222
  IF ~~ THEN REPLY #62079 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 205
  IF ~~ THEN REPLY #62080 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #62081 /* ~«Да. Она была одной из лучших. Она соблазнила бесчисленное множество смертных мужчин. Теперь она живет в Бездне, продает в рабство своих детей».~ */
  IF ~~ THEN REPLY #62082 /* ~«Тебя... продала в рабство твоя мать?»~ */ GOTO 225
  IF ~~ THEN REPLY #62083 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 220
  IF ~~ THEN REPLY #62084 /* ~«Они используют людскую пехоту?»~ */ GOTO 221
  IF ~~ THEN REPLY #62085 /* ~«Сколько она уже продолжается?»~ */ GOTO 222
  IF ~~ THEN REPLY #62086 /* ~«Эти вопросы тебя не сильно беспокоят?»~ */ GOTO 228
  IF ~~ THEN REPLY #62087 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 205
  IF ~~ THEN REPLY #62088 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #62089 /* ~«На некоторое время. Я вырвала свободу в соревновании на импровизацию. Это было очень давно».~ */
  IF ~~ THEN REPLY #62090 /* ~«Кому она тебя продала?»~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ JOURNAL #27460 /* ~Падшая Грация сказала мне, что родная мать продала ее в рабство... да еще и баатезу, злейшим врагам танарри. Судя по всему, Падшая Грация вырвала свободу у своего господина-баатезу в состязании по импровизации. В детали она не вдавалась.~ */ GOTO 226
  IF ~~ THEN REPLY #62091 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 220
  IF ~~ THEN REPLY #62092 /* ~«Они используют людскую пехоту?»~ */ GOTO 221
  IF ~~ THEN REPLY #62093 /* ~«Сколько она уже продолжается?»~ */ GOTO 222
  IF ~~ THEN REPLY #62094 /* ~«Эти вопросы тебя не сильно беспокоят?»~ */ GOTO 228
  IF ~~ THEN REPLY #62095 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 205
  IF ~~ THEN REPLY #62096 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY #62105 /* ~«Она продала мена баатезу. Наверное, она считала, что они просто убьют меня. Несмотря на познания в других областях, она очень мало знала об их культуре».~ */
  IF ~~ THEN REPLY #62106 /* ~«Она продала тебя заклятым врагам танарри?»~ */ GOTO 227
  IF ~~ THEN REPLY #62107 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 220
  IF ~~ THEN REPLY #62108 /* ~«Они используют людскую пехоту?»~ */ GOTO 221
  IF ~~ THEN REPLY #62109 /* ~«Сколько она уже продолжается?»~ */ GOTO 222
  IF ~~ THEN REPLY #62110 /* ~«Эти вопросы тебя не сильно беспокоят?»~ */ GOTO 228
  IF ~~ THEN REPLY #62111 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 205
  IF ~~ THEN REPLY #62112 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY #62113 /* ~«Да, — Падшая Грация расправляет плечи. — Ты хотел узнать что-нибудь еще?»~ */
  IF ~~ THEN REPLY #62114 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 220
  IF ~~ THEN REPLY #62115 /* ~«Они используют людскую пехоту?»~ */ GOTO 221
  IF ~~ THEN REPLY #62116 /* ~«Сколько она уже продолжается?»~ */ GOTO 222
  IF ~~ THEN REPLY #62117 /* ~«Эти вопросы тебя не сильно беспокоят?»~ */ GOTO 228
  IF ~~ THEN REPLY #62118 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 205
  IF ~~ THEN REPLY #62119 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 228 // from: 224.4 225.4 226.4 227.3
  SAY #62120 /* ~«О, нет-нет, вовсе нет. Лучше помни вот о чем: Кровавая война стоит за большинством событий на планах. Важно понимать, что она из себя представляет и зачем ведется».~ */
  IF ~~ THEN REPLY #62121 /* ~«Ты сказала, что пока идет война, остальные планы могут пребывать в относительном покое».~ */ GOTO 220
  IF ~~ THEN REPLY #62122 /* ~«Они используют людскую пехоту?»~ */ GOTO 221
  IF ~~ THEN REPLY #62123 /* ~«Сколько она уже продолжается?»~ */ GOTO 222
  IF ~~ THEN REPLY #62124 /* ~«Ты на ней служила?»~ */ GOTO 223
  IF ~~ THEN REPLY #62125 /* ~«У меня есть вопросы, не связанные с Кровавой войной».~ */ GOTO 205
  IF ~~ THEN REPLY #62126 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 229 // from: 205.6
  SAY #62127 /* ~«Мне знакомо это имя, — Падшая Грация умолкает и какое-то время размышляет. — Вокруг этого имени роится очень много слухов. Многие считают ее выдумкой, но я подозреваю, что она действительно существует, и что в свое время она произвела неизгладимое впечатление на Клетку, пребывая здесь». Она озадаченно смотрит на тебя. «А почему ты спрашиваешь?»~ */
  IF ~~ THEN REPLY #62128 /* ~«Я намерен ее разыскать».~ */ GOTO 230
  IF ~~ THEN REPLY #62129 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 205
  IF ~~ THEN REPLY #62130 /* ~«Просто так... Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #62131 /* ~Грация поднимает бровь. «Правда? Не могу не спросить: зачем?»~ */
  IF ~~ THEN REPLY #62132 /* ~«Мне нужна информация, которой она располагает».~ */ GOTO 231
  IF ~~ THEN REPLY #62133 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 205
  IF ~~ THEN REPLY #62134 /* ~«Просто так... Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #62135 /* ~«И эта информация больше никому недоступна?»~ */
  IF ~~ THEN REPLY #62136 /* ~«Подозреваю, что только Равель владеет нужными мне знаниями».~ */ JOURNAL #27460 /* ~Падшая Грация сказала мне, что родная мать продала ее в рабство... да еще и баатезу, злейшим врагам танарри. Судя по всему, Падшая Грация вырвала свободу у своего господина-баатезу в состязании по импровизации. В детали она не вдавалась.~ */ GOTO 232
  IF ~~ THEN REPLY #62137 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 205
  IF ~~ THEN REPLY #62138 /* ~«Не знаю, но я намерен это выяснить. Пошли».~ */ EXIT
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #62139 /* ~Грация мягко кладет свою руку на твою. «Подумай: если Равель действительно существует, то она чрезвычайно могущественна и коварна. Если рассказы о ее деяниях хоть отчасти верны, то она — существо, открывшее новые определения слова 'зло'. Найти ее — задача не из простых». ~ */
  IF ~~ THEN REPLY #62140 /* ~«Я осознаю это».~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #62141 /* ~«Что ж, легенды мне еще не встречались. Прогулочка будет что надо, — она улыбается. — Разве ты не пробовал заниматься чем-то скучным?»~ */
  IF ~~ THEN REPLY #62142 /* ~«Нет, не пробовал... Тебе известно еще что-нибудь о Равель?»~ */ GOTO 234
  IF ~~ THEN REPLY #62145 /* ~«Ничего не могу с этим поделать. Можно задать тебе еще пару вопросов?»~ */ GOTO 205
  IF ~~ THEN REPLY #62146 /* ~«Возможно, и делал — в прошлых своих воплощениях, но не теперь. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 205.7 233.0
  SAY #62147 /* ~«Поговаривают, что она была одной из ведьм Серой пустоши. Многие уверены, что силой и коварством она намного превзошла своих сестер. Давным-давно она пришла в Сигил; ходят слухи, что кроме зла, которое она там сотворила, своими поступками она поставила под угрозу саму Клетку. Сейчас о ней слышно только в байках, она — персонаж детских сказок, — Грация делает паузу. — Полагаю, Леди Боли разобралась с ней так же, как и со всеми угрозами Сигилу».~ */
  IF ~~ THEN REPLY #62148 /* ~«Как?»~ */ JOURNAL #27458 /* ~Падшая Грация сказала, что Равель — ночная ведьма, одна из серых сестер, обитающих в Серой пустоши. Ее могущество намного выше могущества ее сестер. Давным-давно она пришла в Сигил. Пребывая там, она разозлила Леди Боли и была наказана.~ */ GOTO 235
  IF ~~ THEN REPLY #62149 /* ~«Что такое Серая пустошь?»~ */ JOURNAL #27458 /* ~Падшая Грация сказала, что Равель — ночная ведьма, одна из серых сестер, обитающих в Серой пустоши. Ее могущество намного выше могущества ее сестер. Давным-давно она пришла в Сигил. Пребывая там, она разозлила Леди Боли и была наказана.~ */ GOTO 236
  IF ~~ THEN REPLY #62150 /* ~«Кто еще может знать о ней что-нибудь?»~ */ JOURNAL #27458 /* ~Падшая Грация сказала, что Равель — ночная ведьма, одна из серых сестер, обитающих в Серой пустоши. Ее могущество намного выше могущества ее сестер. Давным-давно она пришла в Сигил. Пребывая там, она разозлила Леди Боли и была наказана.~ */ GOTO 237
  IF ~~ THEN REPLY #62151 /* ~«Могу ли я задать тебе другие вопросы?»~ */ JOURNAL #27458 /* ~Падшая Грация сказала, что Равель — ночная ведьма, одна из серых сестер, обитающих в Серой пустоши. Ее могущество намного выше могущества ее сестер. Давным-давно она пришла в Сигил. Пребывая там, она разозлила Леди Боли и была наказана.~ */ GOTO 205
  IF ~~ THEN REPLY #62152 /* ~«Понятно. Идем».~ */ JOURNAL #27458 /* ~Падшая Грация сказала, что Равель — ночная ведьма, одна из серых сестер, обитающих в Серой пустоши. Ее могущество намного выше могущества ее сестер. Давным-давно она пришла в Сигил. Пребывая там, она разозлила Леди Боли и была наказана.~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from: 234.0 236.0 237.0
  SAY #62153 /* ~«Скорее всего, Равель попала в лабиринт, в одну из тюрем Леди».~ */
  IF ~~ THEN REPLY #62154 /* ~«Лабиринт? Это еще что такое?»~ */ JOURNAL #27457 /* ~Падшая Грация сказала, что Равель заточили в одном из лабиринтов Леди Боли.~ */ GOTO 252
  IF ~~ THEN REPLY #62155 /* ~«Что такое Серая пустошь?»~ */ GOTO 236
  IF ~~ THEN REPLY #62156 /* ~«Кто еще может знать о ней что-нибудь?»~ */ GOTO 237
  IF ~~ THEN REPLY #62157 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62158 /* ~«Понятно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 236 // from: 234.1 235.1 237.1 252.1 253.1 254.0
  SAY #62159 /* ~«Гиблый план, находящийся как раз посередине между Баатором и Бездной. Чаще всего он становится полем битвы в Кровавой войне».~ */
  IF ~~ THEN REPLY #62160 /* ~«Ты знаешь, что случилось с Равель?»~ */ GOTO 235
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62161 /* ~«Довольно о Равель... Что такое Кровавая война?»~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 219
  IF ~~ THEN REPLY #62162 /* ~«Кто еще может знать о ней что-нибудь?»~ */ GOTO 237
  IF ~~ THEN REPLY #62163 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62164 /* ~«Понятно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 237 // from: 234.2 235.2 236.2 252.2 253.2 254.1
  SAY #62165 /* ~«Кто-нибудь в Фестхолле может знать о ней больше».~ */
  IF ~~ THEN REPLY #62166 /* ~«Ты знаешь, что случилось с Равель?»~ */ JOURNAL #27457 /* ~Падшая Грация сказала, что Равель заточили в одном из лабиринтов Леди Боли.~ */ GOTO 235
  IF ~~ THEN REPLY #62167 /* ~«Что такое Серая пустошь?»~ */ JOURNAL #27457 /* ~Падшая Грация сказала, что Равель заточили в одном из лабиринтов Леди Боли.~ */ GOTO 236
  IF ~~ THEN REPLY #62168 /* ~«Могу ли я задать тебе другие вопросы?»~ */ JOURNAL #27457 /* ~Падшая Грация сказала, что Равель заточили в одном из лабиринтов Леди Боли.~ */ GOTO 205
  IF ~~ THEN REPLY #62169 /* ~«Тогда, наверно, мы туда направимся. Пошли».~ */ JOURNAL #27457 /* ~Падшая Грация сказала, что Равель заточили в одном из лабиринтов Леди Боли.~ */ EXIT
END

IF ~~ THEN BEGIN 238 // from:
  SAY #62170 /* ~NULL~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 239 // from: 139.7
  SAY #62171 /* ~«Смысл имен — сложная тема. Тут много рассказывать, и большую часть лучше оставить недосказанной».~ */
  IF ~~ THEN REPLY #62172 /* ~«Падшая Грация — это твое настоящее имя?»~ */ GOTO 240
  IF ~~ THEN REPLY #62173 /* ~«Хорошо. Тогда можешь ответить на другие вопросы?»~ */ GOTO 139
  IF ~~ THEN REPLY #62175 /* ~«Тогда больше не будем об этом. Пошли».~ */ EXIT
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY #62176 /* ~«Может быть, — она улыбается. — А может быть, и нет. Есть имена, которыми нарекают, а есть — которые заслуживают. Кому судить, которое из них настоящее?»~ */
  IF ~~ THEN REPLY #62178 /* ~«Мне кажется, что заслуженное имя имеет больший вес».~ */ DO ~SetGlobal("Grace_Name","GLOBAL",1)
~ GOTO 241
  IF ~~ THEN REPLY #62179 /* ~«Мне кажется, что нареченное имя имеет больший вес».~ */ DO ~SetGlobal("Grace_Name","GLOBAL",2)
~ GOTO 242
  IF ~~ THEN REPLY #62181 /* ~«Не уверен, что в именах есть какая-либо ценность».~ */ DO ~SetGlobal("Grace_Name","GLOBAL",3)
~ GOTO 243
  IF ~~ THEN REPLY #62182 /* ~«Хорошо. Тогда можешь ответить на другие вопросы?»~ */ GOTO 139
  IF ~~ THEN REPLY #62183 /* ~«Тогда больше не будем об этом. Пошли».~ */ EXIT
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #62184 /* ~«Возможно, таки и есть. Почему тебе так кажется?»~ */
  IF ~~ THEN REPLY #62185 /* ~«Потому что заслуженное имя неслучайно; оно говорит о том, чего ты достиг».~ */ GOTO 244
END

IF ~~ THEN BEGIN 242 // from: 240.1
  SAY #62186 /* ~«Возможно, таки и есть. Почему тебе так кажется?»~ */
  IF ~~ THEN REPLY #62187 /* ~«Потому что по нему люди воспринимают тебя. А их восприятие может перевесить твое самоосознание».~ */ GOTO 244
END

IF ~~ THEN BEGIN 243 // from: 240.2
  SAY #62188 /* ~Он с любопытством глядит на тебя: «Правда?»~ */
  IF ~~ THEN REPLY #62189 /* ~«Имя — всего лишь покров из букв, скрывающий человека, не более. Иногда имя может рассказать тебе кое-что о человеке, может даже помочь определить этого человека. Однако имя — это не то, чем этот человек *является*».~ */ GOTO 244
END

IF ~~ THEN BEGIN 244 // from: 241.0 242.0 243.0
  SAY #62190 /* ~Грация кивает. «Верно подмечено».~ */
  IF ~  Global("Grace_Name","GLOBAL",1)
~ THEN REPLY #62191 /* ~«Так почему же тебя зовут Падшей Грацией?»~ */ GOTO 245
  IF ~  Global("Grace_Name","GLOBAL",2)
~ THEN REPLY #62192 /* ~«Так почему же тебя зовут Падшей Грацией?»~ */ GOTO 246
  IF ~  Global("Grace_Name","GLOBAL",3)
~ THEN REPLY #62193 /* ~«Так почему же тебя зовут Падшей Грацией?»~ */ GOTO 247
END

IF ~~ THEN BEGIN 245 // from: 139.8 244.0
  SAY #62194 /* ~«Не все ли равно? — она улыбается. — Это заслуженное имя».~ */
  IF ~~ THEN REPLY #62195 /* ~«Для меня это важно. Я хотел бы знать, как ты получила это имя».~ */ GOTO 248
END

IF ~~ THEN BEGIN 246 // from: 139.9 244.1
  SAY #62196 /* ~«Не все ли равно? — она улыбается. — Это нареченное имя».~ */
  IF ~~ THEN REPLY #62197 /* ~«Для меня это важно. Я хотел бы знать, как ты получила это имя».~ */ GOTO 248
END

IF ~~ THEN BEGIN 247 // from: 139.10 244.2
  SAY #62198 /* ~«Не все ли равно? — она улыбается. — Это всего лишь покров из букв».~ */
  IF ~~ THEN REPLY #62199 /* ~«Для меня это важно. Я хотел бы знать, как ты получила это имя».~ */ GOTO 248
END

IF ~~ THEN BEGIN 248 // from: 139.11 245.0 246.0 247.0
  SAY #62200 /* ~«Я пала в глазах своего народа... Может быть, кто-то скажет наоборот, вознеслась, но слово 'падшая' мне больше *подходит*, — она вопросительно смотрит на тебя. — Ведь в этом есть какой-то смысл?» ~ */
  IF ~~ THEN REPLY #62201 /* ~«Да. В конце концов, слово 'падшая' несет в себе чувство утраты».~ */ GOTO 249
  IF ~~ THEN REPLY #62202 /* ~«Да. Можно задать тебе еще пару вопросов?»~ */ GOTO 139
  IF ~~ THEN REPLY #62203 /* ~«Да... Кажется, я понимаю. Пойдем».~ */ EXIT
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #62204 /* ~Умолкнув на мгновение, Падшая Грация задумчиво кивает. «Да... наверно, потому оно и кажется мне таким. Я... уже давно смирилась с утратой, но имя осталось».~ */
  IF ~  Global("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #62205 /* ~«Ты уверена, что смирилась с этим?»~ */ GOTO 250
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #62206 /* ~«Ты уверена, что смирилась с этим? Похоже, Равель другого мнения».~ */ GOTO 263
  IF ~  Global("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #62207 /* ~«Ты уверена, что смирилась с этим?»~ */ DO ~AddexperienceParty(1000)
SetGlobal("Grace_Name_Answer","GLOBAL",1)
~ GOTO 250
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #62208 /* ~«Ты уверена, что смирилась с этим? Похоже, Равель другого мнения».~ */ DO ~AddexperienceParty(1000)
SetGlobal("Grace_Name_Answer","GLOBAL",1)
~ GOTO 263
  IF ~~ THEN REPLY #62209 /* ~«Хорошо. Тогда можешь ответить на другие вопросы?»~ */ GOTO 139
  IF ~~ THEN REPLY #62210 /* ~«Понятно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 250 // from: 249.0 249.2
  SAY #62211 /* ~Падшая Грация встречается с тобой взглядом, и тебя вновь поражает сверкающая синева ее глаз... Они беспокойны, словно океан перед бурей. «Я так считала раньше. И все же, поговорив с тобой, я кое-что поняла, — она улыбается. — Спасибо тебе».~ */
  IF ~  Global("Good_Grace_1","GLOBAL",1)
~ THEN REPLY #62212 /* ~«Ну, если хочешь поговорить об этом — дай мне знать, хорошо?»~ */ GOTO 251
  IF ~  Global("Good_Grace_1","GLOBAL",0)
~ THEN REPLY #62213 /* ~«Ну, если хочешь поговорить об этом — дай мне знать, хорошо?»~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_1","GLOBALGood",1)
~ GOTO 251
  IF ~~ THEN REPLY #62214 /* ~«Хорошо. Тогда можешь ответить на другие вопросы?»~ */ GOTO 139
  IF ~~ THEN REPLY #62215 /* ~«Ладно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from: 250.0 250.1
  SAY #62216 /* ~Она кивает. «Ты так добр. Я обязательно так и сделаю».~ */
  IF ~~ THEN REPLY #62217 /* ~«Хорошо. Тогда можешь ответить на другие вопросы?»~ */ GOTO 139
  IF ~~ THEN REPLY #62218 /* ~«Ладно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 252 // from: 235.0
  SAY #62219 /* ~Грация соединяет пальцы так, чтобы ладони образовали подобие круга. «Говорят, что Леди обладает способностью брать части Сигила...» Ты с удивлением видишь, как призрачный образ мизинца Грации отделяется от руки и сам по себе парит в воздухе, вращаясь вдоль небольшого круга. «...и делать из них лабиринт».~ */
  IF ~~ THEN REPLY #62220 /* ~«Продолжай...»~ */ GOTO 253
  IF ~~ THEN REPLY #62221 /* ~«Понятно. Расскажи мне о плане, из которого родом Равель... о Серой пустоши».~ */ GOTO 236
  IF ~~ THEN REPLY #62222 /* ~«Думаю, я понял. Кто-нибудь еще может знать больше о Равель?»~ */ GOTO 237
  IF ~~ THEN REPLY #62223 /* ~«Неважно. Можно задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62224 /* ~«Понятно. Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #62225 /* ~Небольшой призрачный круг парит в воздухе, затем начинает медленно вращаться. «В эту часть Сигила она помещает узника. Попав в лабиринт, выбраться из него уже нельзя. Это может случиться в любое время, пока ты гуляешь по улице, входишь через дверь, — она резко хлопает в ладони, — и вдруг оказываешься в другом месте». Внутри призрачного круга ты неожиданно замечаешь мерцающее движение, как будто внутри кто-то бродит.~ */
  IF ~~ THEN REPLY #62226 /* ~«Продолжай...»~ */ GOTO 254
  IF ~~ THEN REPLY #62227 /* ~«Понятно. Расскажи мне о плане, из которого родом Равель... о Серой пустоши».~ */ GOTO 236
  IF ~~ THEN REPLY #62228 /* ~«Думаю, я понял. Кто-нибудь еще может знать больше о Равель?»~ */ GOTO 237
  IF ~~ THEN REPLY #62229 /* ~«Неважно. Можно задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62230 /* ~«Понятно. Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 254 // from: 253.0
  SAY #62231 /* ~Грация продолжает; крошечный призрачный лабиринт отражается в ее глазах. «Говорят, что в каждом лабиринте есть портал наружу, но найти его нелегко. Возможно, их оставили для того, чтобы дать узнику надежду. А, может, для того, чтобы помучить его». Призрачный лабиринт меркнет. «Наверно, и для того, и для другого».~ */
  IF ~~ THEN REPLY #62232 /* ~«Понятно. Расскажи мне о плане, из которого родом Равель... о Серой пустоши».~ */ GOTO 236
  IF ~~ THEN REPLY #62233 /* ~«Думаю, я понял. Кто-нибудь еще может знать больше о Равель?»~ */ GOTO 237
  IF ~~ THEN REPLY #62234 /* ~«Неважно. Можно задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62235 /* ~«Понятно. Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 255 // from: 205.4
  SAY #62236 /* ~«Это точно. Не могу винить ее за это».~ */
  IF ~  Global("Grace_Camp_Follower_Answer","GLOBAL",1)
~ THEN REPLY #62237 /* ~«А что она имела в виду, говоря, что ты — подстилка баатезу?»~ */ GOTO 256
  IF ~  Global("Grace_History","GLOBAL",1)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62238 /* ~«А что она имела в виду, говоря, что ты — подстилка баатезу?»~ */ DO ~MoraleDec("Grace",1)
~ GOTO 258
  IF ~  Global("Grace_History","GLOBAL",0)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62239 /* ~«А что она имела в виду, говоря, что ты — подстилка баатезу?»~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 257
  IF ~~ THEN REPLY #62240 /* ~«Почему?»~ */ GOTO 262
  IF ~~ THEN REPLY #62241 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62242 /* ~«Понятно. Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 256 // from: 255.0 262.0
  SAY #62243 /* ~«Мы уже говорили об этом. Некоторое время я была рабыней баатезу. Тогда они подвергали меня различным пыткам».~ */
  IF ~~ THEN REPLY #62244 /* ~«Ну, меня больше интересует упомянутая Вришкой часть насчет 'подстилки баатезу'. Что она под этим подразумевала?»~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62245 /* ~«Тогда неважно. Почему ты сказала, что не можешь винить Вришку за ее ненависть к тебе?»~ */ GOTO 262
  IF ~~ THEN REPLY #62246 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62247 /* ~«Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 257 // from: 255.2 262.2
  SAY #62248 /* ~«Какое-то время я была рабыней баатезу — это было много лет назад. Я вырвала себе свободу в соревновании на импровизацию». ~ */
  IF ~~ THEN REPLY #62249 /* ~«Ну, меня больше интересует упомянутая Вришкой часть насчет 'подстилки баатезу'. Что она под этим подразумевала?»~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62250 /* ~«Понятно. Почему ты сказала, что не можешь винить Вришку за ее ненависть к тебе?»~ */ GOTO 262
  IF ~~ THEN REPLY #62251 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62252 /* ~«Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 258 // from: 255.1 262.1
  SAY #62253 /* ~«Ты ведь помнишь, что я рассказывала тебе о моем прошлом?»~ */
  IF ~~ THEN REPLY #62254 /* ~«Ну, меня больше интересует упомянутая Вришкой часть насчет 'подстилки баатезу'. Что она под этим подразумевала?»~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62255 /* ~«Тогда неважно. Почему ты сказала, что не можешь винить Вришку за ее ненависть к тебе?»~ */ GOTO 262
  IF ~~ THEN REPLY #62256 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62257 /* ~«Понятно. Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 259 // from: 256.0 257.0 258.0
  SAY #62258 /* ~В лице Падшей Грации отражается любопытство... Она некоторое время тебя рассматривает, пытаясь прочесть выражение твоего лица. Потом приглушенным голосом спрашивает: «Это важно?»~ */
  IF ~~ THEN REPLY #62259 /* ~«Для меня — да. Я хотел бы знать, с кем путешествую».~ */ DO ~SetGlobal("Grace_Camp_Follower_Answer","GLOBAL",1)
~ GOTO 260
  IF ~~ THEN REPLY #62260 /* ~«Нет. Почему ты сказала, что не можешь винить Вришку за ее ненависть к тебе?»~ */ GOTO 262
  IF ~~ THEN REPLY #62261 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62262 /* ~«Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 260 // from: 259.0
  SAY #62263 /* ~«Чтобы ответить на твой вопрос, я скажу тебе вот что: баатезу — не люди. Их страсть — это власти, а не плоть, и им нет дела до того похоти и насилия, которая бывает у людей, когда те держат в плену других людей. Пытки баатезу намного более утонченные и увечные, в сравнении *любым* насилием над плотью, и шрамы от них не затягиваются еще долгое время. Ты это хотел узнать?» ~ */
  IF ~~ THEN REPLY #62264 /* ~«Да. Я просто хотел понять, с кем я путешествую».~ */ GOTO 261
  IF ~~ THEN REPLY #62265 /* ~«Да. Почему ты сказала, что не можешь винить Вришку за ее ненависть к тебе?»~ */ GOTO 262
  IF ~~ THEN REPLY #62266 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62267 /* ~«Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #62268 /* ~«Я думала, что ты это уже узнал, — Падшая Грация опускает голову. — Я ошибалась».~ */
  IF ~~ THEN REPLY #62269 /* ~«Почему ты сказала, что не можешь винить Вришку за ее ненависть к тебе?»~ */ GOTO 262
  IF ~~ THEN REPLY #62270 /* ~«Могу ли я задать тебе другие вопросы?»~ */ GOTO 205
  IF ~~ THEN REPLY #62271 /* ~«Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 262 // from: 255.3 256.1 257.1 258.1 259.1 260.1 261.0
  SAY #62272 /* ~«Вришка — танарри, нечистый дух, как и я, но только другого вида — алу-демон. Чтобы понять Вришику, ты должен понимать, что культура танарри — это хаос, а хаос по своей природе не имеет ничего общего с честностью и справедливостью. Алу-демонов рассматривают как нечто... ненужное. Бесполезное. Во многих смыслах это даже хуже, чем смертный приговор».~ */
  IF ~  Global("Grace_Camp_Follower_Answer","GLOBAL",1)
~ THEN REPLY #62273 /* ~«А что она имела в виду, говоря, что ты — подстилка баатезу?»~ */ GOTO 256
  IF ~  Global("Grace_History","GLOBAL",1)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62274 /* ~«А что она имела в виду, говоря, что ты — подстилка баатезу?»~ */ DO ~MoraleDec("Grace",1)
~ GOTO 258
  IF ~  Global("Grace_History","GLOBAL",0)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62275 /* ~«А что она имела в виду, говоря, что ты — подстилка баатезу?»~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 257
  IF ~~ THEN REPLY #62276 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 205
  IF ~~ THEN REPLY #62277 /* ~«Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 263 // from: 205.9 249.1 249.3
  SAY #62278 /* ~Падшая Грация на мгновение умолкает, ее взгляд становится отдаленным. Когда она возвращается к тебе, в ее глазах появляется странный лазурный оттенок, говорящий о печали и слезах.~ */
  IF ~~ THEN GOTO 264
END

IF ~~ THEN BEGIN 264 // from: 263.0
  SAY #62279 /* ~«Равель видит многое своими черно-ежевичными глазами. Она видит вещи, скрытые от других глаз, даже саму природу вещей, — она медленно качает головой. — Иногда... иногда боль дает о себе знать. Я поняла, насколько это *трудно* — идти против своей природы».~ */
  IF ~  Global("Good_Grace_1","GLOBAL",0)
~ THEN REPLY #62280 /* ~«С тобой все в порядке?»~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_1","GLOBALGood",1)
~ GOTO 265
  IF ~  Global("Good_Grace_1","GLOBAL",1)
~ THEN REPLY #62281 /* ~«С тобой все в порядке?»~ */ GOTO 265
  IF ~~ THEN REPLY #62282 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 205
  IF ~~ THEN REPLY #62283 /* ~«Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 265 // from: 264.0 264.1
  SAY #62284 /* ~Она едва заметно улыбается. Вы встречаетесь взглядами. «Да... как мило, что ты спросил. Боль все еще дает о себе знать, но я смирилась со своей сущностью много веков назад».~ */
  IF ~~ THEN REPLY #62285 /* ~«Ну хорош...»~ */ GOTO 266
END

IF ~~ THEN BEGIN 266 // from: 265.0
  SAY #62286 /* ~Грация перебивает тебя: «Спасибо тебе за то, что спрашиваешь о моем состоянии. Я приветствую твое участие».~ */
  IF ~~ THEN REPLY #62287 /* ~«Просто хотел убедиться, что ты в порядке. У меня есть другие вопросы».~ */ GOTO 205
  IF ~~ THEN REPLY #62288 /* ~«Конечно. Просто проверял, все ли с тобой хорошо. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 267 // from: 139.13
  SAY #62289 /* ~Падшая Грация еле заметно качает головой. «Нет, не думаю. Искусство... отличается от дисциплин, которые я практикую».~ */
  IF ~~ THEN REPLY #62290 /* ~«Что ты имеешь в виду?»~ */ GOTO 268
  IF ~~ THEN REPLY #62291 /* ~«Неважно. Можно задать тебе еще несколько вопросов?»~ */ GOTO 139
  IF ~~ THEN REPLY #62292 /* ~«Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 268 // from: 267.0
  SAY #62293 /* ~«Мои 'силы', какими ты их видишь, берут начало из моей веры — это не манипуляции с энергией, как в случае Искусства. Искусство — это *механизм*, с помощью которого можно подчинять себе силы мультивселенной посредством жестов, ритуалов и устройств. Мои 'силы' приходят ко мне иными путями. Моя вера и сущность моих убеждений позволяют мне приоткрывать часть самой мультивселенной».~ */
  IF ~~ THEN REPLY #62294 /* ~«Сущность твоих убеждений? Во что ты веришь?»~ */ GOTO 269
  IF ~~ THEN REPLY #62295 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 139
  IF ~~ THEN REPLY #62296 /* ~«Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 269 // from: 268.0
  SAY #62297 /* ~«Я верю в *Чувственный опыт*. Я верю, что человек может меняться, меняться к лучшему: чем большая часть мультивселенной доступна ему для восприятия, тем больше мультивселенная позволяет ему понять. Моя вера в сущность Чувственного опыта позволяет мне...» Она на миг умолкает, задумавшись. ~ */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270 // from: 269.0
  SAY #62425 /* ~«Полагаю, лучше объяснить это так: моя вера позволяет мне *видеть* вещи по-другому. Когда ты видишь мультивселенную в таком свете, ты учишься 'изменять' вещи — исцелять раны, видеть, что у кого-то на сердце, и так далее, — просто пожелав, чтобы это случилось».~ */
  IF ~~ THEN REPLY #62426 /* ~«Но те 'изменения', которые ты создаешь, очень похожи на заклинания. Как ты научилась это делать? У тебя есть книга заклинаний?»~ */ GOTO 272
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62427 /* ~«Ты веришь в Чувственный опыт из-за того, что случилось с тобой у баатезу?»~ */ GOTO 273
  IF ~~ THEN REPLY #62428 /* ~«Можешь научить меня видеть вещи так, как их видишь ты?»~ */ GOTO 271
  IF ~~ THEN REPLY #62429 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 139
  IF ~~ THEN REPLY #62430 /* ~«Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 271 // from: 270.2
  SAY #62431 /* ~«Я не могу научить тебя видеть мультивселенную таким образом. Каждому нужно учиться видеть ее... по-своему, не через чужие глаза, — она слегка улыбается. — Я не думаю, что *ты*, среди всех людей, нуждаешься в наставлении в этом вопросе: я обнаружила, что сама учусь у тебя большему, чем ты у меня».~ */
  IF ~~ THEN REPLY #62432 /* ~«Те 'изменения', которые ты создаешь, очень похожи на заклинания. Как ты научилась это делать? У тебя есть книга заклинаний?»~ */ GOTO 272
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62433 /* ~«Ты веришь в Чувственный опыт из-за того, что случилось с тобой у баатезу?»~ */ GOTO 273
  IF ~~ THEN REPLY #62434 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 139
  IF ~~ THEN REPLY #62435 /* ~«Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 272 // from: 270.0 271.0 273.3
  SAY #62436 /* ~«Нет, мои 'заклинания', как ты их называешь, приходят ко мне после того, как я отдохну и сосредоточусь. Когда я посплю и проснусь, я могу снова концентрироваться. Но боюсь, что объем веры, необходимый для 'изменения' мультивселенной вокруг меня, может оказаться весьма тяжелым для моей души. Недостаточно только видеть, как можно изменить вещи: нужно обладать силой воплощать эти изменения».~ */
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62437 /* ~«Ты веришь в Чувственный опыт из-за того, что случилось с тобой у баатезу?»~ */ GOTO 273
  IF ~~ THEN REPLY #62438 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 139
  IF ~~ THEN REPLY #62439 /* ~«Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 273 // from: 270.1 271.1 272.0
  SAY #62440 /* ~Падшая Грация кивает. «Я долго об этом размышляла, и думаю, что да, — она бросает на тебя вопросительный взгляд. — Я думаю, это потому, что я смирилась с тем, кем я стала, и я не думаю, что это стало бы возможно без моего познания мультивселенной».~ */
  IF ~  Global("Good_Grace_2","GLOBAL",0)
Global("Chaotic_Grace_1","GLOBAL",0)
~ THEN REPLY #62441 /* ~«Мне кажется, что это никак не связано с твоим познанием мультивселенной... Я думаю, что важным было то, как ты использовала опыт».~ */ GOTO 274
  IF ~  Global("Good_Grace_2","GLOBAL",1)
~ THEN REPLY #62442 /* ~«Как я уже говорил, мне кажется, что это никак не связано с твоим познанием мультивселенной... Я думаю, что важным было то, как ты использовала опыт. Тебя изменила сила твоего характера».~ */ GOTO 274
  IF ~  Global("Chaotic_Grace_1","GLOBAL",1)
~ THEN REPLY #62443 /* ~«Как я уже говорил, мне кажется, что это никак не связано с твоим познанием мультивселенной... Я думаю, что важным было то, как ты использовала опыт. Тебя изменила сила твоего характера».~ */ GOTO 274
  IF ~~ THEN REPLY #62444 /* ~«Те 'изменения', которые ты создаешь, очень похожи на заклинания. Как ты научилась это делать? У тебя есть книга заклинаний?»~ */ GOTO 272
  IF ~~ THEN REPLY #62445 /* ~«Понятно. Можно задать тебе еще пару вопросов?»~ */ GOTO 139
  IF ~~ THEN REPLY #62446 /* ~«Это все, что я хотел узнать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0 273.1 273.2
  SAY #62447 /* ~Падшая Грация медленно кивает. Кажется, она задумалась. «В твоих словах есть правда».~ */
  IF ~~ THEN REPLY #62448 /* ~Правда: «Мне кажется, что многие, пережив то, что пережила ты, потерпели бы крах. Ты *извлекла* из этого урок и стала сильнее. Это указывает на огромную силу воли и характера».~ */ DO ~SetAnimState("Grace",ANIM_MIMESTAND)
~ GOTO 275
  IF ~~ THEN REPLY #62449 /* ~Льстивая ложь: «Мне кажется, что многие, пережив то, что пережила ты, потерпели бы крах. Ты *извлекла* из этого урок и стала сильнее. Это указывает на огромную силу воли и характера».~ */ DO ~SetAnimState("Grace",ANIM_MIMESTAND)
~ GOTO 275
  IF ~~ THEN REPLY #62450 /* ~«Пожалуй, да. Могу ли я задать тебе другие вопросы?»~ */ GOTO 139
  IF ~~ THEN REPLY #62451 /* ~«Это все, что я хотел сказать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 275 // from: 274.0 274.1
  SAY #62452 /* ~Падшая Грация молча смотрит на тебя.~ */
  IF ~~ THEN REPLY #62453 /* ~Правда: «... и я восхищаюсь этим в тебе. Не только силой, но и способностью видеть в этих ужасах способ стать лучше, чем ты есть — такой силой обладают очень *немногие*».~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_2","GLOBALGood",1)
~ GOTO 276
  IF ~~ THEN REPLY #62454 /* ~Льстивая ложь: «... и я восхищаюсь этим в тебе. Не только силой, но и способностью видеть в этих ужасах способ стать лучше, чем ты есть — такой силой обладают очень *немногие*».~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALChaotic_Grace_1","GLOBALLaw",-1)
~ GOTO 276
  IF ~~ THEN REPLY #62455 /* ~«И это все». ~ */ GOTO 276
END

IF ~~ THEN BEGIN 276 // from: 275.0 275.1 275.2
  SAY #62456 /* ~Падшая Грация улыбается, затем кивает. «Спасибо тебе. Твои слова добры и проницательны. Но боюсь, что сила моего характера не настолько велика, как это может показаться. И все же я стараюсь считать любой опыт возможностью для обучения».~ */
  IF ~~ THEN REPLY #62457 /* ~«Хороший подход. Можно задать тебе еще пару вопросов?»~ */ GOTO 139
  IF ~~ THEN REPLY #62458 /* ~«Мудро. Идем дальше».~ */ EXIT
END

IF ~~ THEN BEGIN 277 // from: 205.1
  SAY #62459 /* ~«Нет».~ */
  IF ~~ THEN REPLY #62460 /* ~«Пожалуйста».~ */ GOTO 278
  IF ~~ THEN REPLY #62461 /* ~«Ну и ладно. У меня есть другие вопросы...»~ */ GOTO 205
  IF ~~ THEN REPLY #62462 /* ~«Просто хотел спросить. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #62463 /* ~Грация мило улыбается. «У леди должны быть свои секреты».~ */
  IF ~~ THEN REPLY #62464 /* ~«Ну и ладно. У меня есть другие вопросы...»~ */ GOTO 205
  IF ~~ THEN REPLY #62465 /* ~«Просто хотел спросить. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 279 // from: 139.14 139.15 280.4 281.8 284.0 286.0 287.2 288.1 289.2 290.2 291.3 292.2 293.2 294.3 295.1 296.3 297.3 298.3 299.2 300.3 301.0 302.2 303.0 304.2 305.1 307.0 308.1 309.2 310.2 311.2 312.1 313.1 314.0 316.1 317.0 319.1 320.2 321.1 322.1 323.3 324.0 325.1 326.1 327.2 328.1 329.0 343.0 344.1 345.1 346.1 347.1 357.4 359.1 360.0 361.0
  SAY #62466 /* ~«О ком именно ты хотел бы поговорить?»~ */
  IF ~~ THEN REPLY #62467 /* ~«Обо мне».~ */ GOTO 357
  IF ~~ THEN REPLY #62468 /* ~«О тебе».~ */ GOTO 280
  IF ~  InParty("Morte")
~ THEN REPLY #62469 /* ~«О Морте».~ */ GOTO 296
  IF ~  InParty("Annah")
~ THEN REPLY #62470 /* ~«Об Анне».~ */ GOTO 340
  IF ~  InParty("Dakkon")
~ THEN REPLY #62471 /* ~«О Дакконе».~ */ GOTO 308
  IF ~  InParty("Nordom")
~ THEN REPLY #62472 /* ~«О Нордоме».~ */ GOTO 315
  IF ~  InParty("Ignus")
~ THEN REPLY #62473 /* ~«Об Игнусе».~ */ GOTO 318
  IF ~  InParty("Vhail")
~ THEN REPLY #62474 /* ~«О Вейлоре».~ */ GOTO 325
  IF ~~ THEN REPLY #62475 /* ~«Вообще-то, ни о ком. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62476 /* ~«Неважно. Может быть в другой раз. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 280 // from: 279.1
  SAY #62477 /* ~«Обо мне? Правда? — несколько мгновений она раздумывает над этим, после чего кивает. — Хорошо, если хочешь что-то обо мне узнать — спрашивай».~ */
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #62478 /* ~«Я хочу, чтобы ты знала. Когда в лабиринте я поцеловал Равель, я...»~ */ GOTO 281
  IF ~~ THEN REPLY #62479 /* ~«Если честно, мне интересно знать, как ты ко мне относишься».~ */ GOTO 287
  IF ~~ THEN REPLY #62480 /* ~«Я хотел бы выслушать твое мнение о моем нынешнем положении».~ */ GOTO 330
  IF ~~ THEN REPLY #62481 /* ~«У тебя есть какие-нибудь мысли о том, кем или чем я могу быть?»~ */ GOTO 288
  IF ~~ THEN REPLY #62482 /* ~«Неважно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62483 /* ~«Забудь об этом. У меня есть несколько вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62484 /* ~«Может быть, в другой раз. Пойдем».~ */ EXIT
END

IF ~~ THEN BEGIN 281 // from: 280.0 357.0
  SAY #62485 /* ~Грация поднимает руку, останавливая тебя. «Не нужно ничего говорить. Должна признать: я восхищаюсь твоим мужеством. Немногие отважились бы поцеловать миф, да еще и с такой внешностью, как у Равель».~ */
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62486 /* ~Правда: «Я поцеловал Равель только потому, что она считала, что я не смогу этого сделать. Я думал, что она меня испытывала».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 283
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62487 /* ~Ложь: «Я поцеловал Равель только потому, что она считала, что я не смогу этого сделать. Я думал, что она меня испытывала».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 283
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62488 /* ~Правда: «Я поцеловал Равель только потому, что это казалось правильным решением. Не спрашивай почему».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62489 /* ~Ложь: «Я поцеловал Равель только потому, что это казалось правильным решением. Не спрашивай почему».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62490 /* ~Правда: «Я поцеловал Равель, потому что хотел этого... Ее обычная форма была весьма неприятной».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62491 /* ~Ложь: «Я поцеловал Равель, потому что хотел этого... Ее обычная форма была весьма неприятной».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 282
  IF ~  !Global("Ravel_Kiss","GLOBAL",5)
!Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62492 /* ~Правда: «Я поцеловал Равель только потому, что хотел поцеловать тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_2","GLOBALLaw",1)
~ GOTO 285
  IF ~  !Global("Ravel_Kiss","GLOBAL",5)
!Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62493 /* ~Льстивая ложь: «Я поцеловал Равель только потому, что хотел поцеловать тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_3","GLOBALLaw",-1)
~ GOTO 285
  IF ~~ THEN REPLY #62494 /* ~«Хорошо. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62495 /* ~«Тогда у меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62496 /* ~«Тогда не будем больше об этом. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 282 // from: 281.2 281.3 281.4 281.5
  SAY #62497 /* ~«Она проверяла тебя».~ */
  IF ~~ THEN REPLY #62498 /* ~«О чем это ты?»~ */ GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 281.0 281.1 282.0
  SAY #62499 /* ~«Я думаю, что Равель видела тебя только до определенного предела, что, вероятно, было одной из причин, почему ты так ее интересовал. Она могла проверить твою сущность только с помощью телесных испытаний».~ */
  IF ~~ THEN REPLY #62500 /* ~«Что, по-твоему, она проверяла?»~ */ GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #62501 /* ~«Мне кажется, что она хотела узнать, есть ли у тебя к ней чувства: поцелуй — одно из средств, по которым можно судить об этом, хотя это может оказаться непростым делом».~ */
  IF ~~ THEN REPLY #62502 /* ~«Хорошо. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62503 /* ~«Тогда у меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62504 /* ~«Тогда не будем больше об этом. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 285 // from: 281.6 281.7
  SAY #62505 /* ~«Тогда уж лучше целовать Равель, несмотря на все опасности. Поцеловать суккуба — все равно что пригласить к себе смерть».~ */
  IF ~~ THEN REPLY #62506 /* ~«О чем это ты?»~ */ JOURNAL #61616 /* ~Падшая Грация сказала мне, что ее поцелуй высасывает жизнь из жертвы... Почему-то это меня возбуждает. Я ведь все равно не могу умереть, верно? Хм-м-м. Надо бы это запомнить.~ */ GOTO 286
END

IF ~~ THEN BEGIN 286 // from: 285.0
  SAY #62507 /* ~«Суккубы убивают смертных, высасывая их энергию с помощью поцелуя. И хотя это очень приятное для жертвы ощущение, обычно она не проживает достаточно долго, чтобы насладиться им в полной мере».~ */
  IF ~~ THEN REPLY #62508 /* ~«О. Я... э-э-э... хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62509 /* ~«Хм-м-м. Тогда у меня есть еще несколько вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62510 /* ~«Звучит интригующе... э-э-э, я хотел сказать, ужасающе. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 287 // from: 280.1 357.1
  SAY #62511 /* ~Грация мило улыбается. «У леди должны быть свои секреты».~ */
  IF ~~ THEN REPLY #62512 /* ~«Тогда я хотел бы выслушать твое мнение о моем нынешнем положении».~ */ GOTO 330
  IF ~~ THEN REPLY #62513 /* ~«Хорошо. У тебя есть какие-нибудь мысли о том, кем или чем я могу быть?»~ */ GOTO 288
  IF ~~ THEN REPLY #62514 /* ~«Тогда неважно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62515 /* ~«Тогда забудь об этом. У меня есть еще несколько вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62516 /* ~«Может быть, в другой раз. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 288 // from: 280.3 287.1 357.3
  SAY #62517 /* ~Грация задумчиво хмурится. «Должна признаться: есть в тебе что-то загадочное, — она улыбается. — Но я нахожу подобные загадки весьма интригующими. Попробуем распутать твою головоломку?»~ */
  IF ~~ THEN REPLY #62518 /* ~«Да».~ */ GOTO 289
  IF ~~ THEN REPLY #62519 /* ~«Нет, оставим это на следующий раз. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62520 /* ~«Забудь об этом. У меня есть несколько вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62521 /* ~«Может быть, в другой раз. Пойдем».~ */ EXIT
END

IF ~~ THEN BEGIN 289 // from: 288.0
  SAY #62522 /* ~«Во-первых, хотя и существует вероятность того, что ты — тифлинг либо какая-то редкая помесь, я все же предполагаю, что ты — человек... или когда-то был им».~ */
  IF ~~ THEN REPLY #62523 /* ~«Хорошо... Продолжай».~ */ GOTO 290
  IF ~~ THEN REPLY #62524 /* ~«Если есть что-то, что может пролить свет на мое положение...»~ */ GOTO 330
  IF ~~ THEN REPLY #62525 /* ~«Если подумать, давай оставим это на следующий раз. Я хочу поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62526 /* ~«На самом деле, это неважно. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62527 /* ~«Давай поговорим об этом в другой раз. А теперь нам пора в путь».~ */ EXIT
END

IF ~~ THEN BEGIN 290 // from: 289.0
  SAY #62528 /* ~«У тебя внешность мужчины лет тридцати, однако из-за всех этих швов и шрамов трудно дать более точную оценку».~ */
  IF ~~ THEN REPLY #62529 /* ~«И не говори!.. Продолжай».~ */ GOTO 291
  IF ~~ THEN REPLY #62530 /* ~«Если есть что-то, что может пролить свет на мое положение...»~ */ GOTO 330
  IF ~~ THEN REPLY #62531 /* ~«Если подумать, давай оставим это на следующий раз. Я хочу поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62532 /* ~«На самом деле, это неважно. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62533 /* ~«Давай поговорим об этом в другой раз».~ */ EXIT
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY #62534 /* ~«Ключом к твоему прошлому является твоя память. Похоже, определенные места, события или люди вызывают у тебя, казалось бы, забытые воспоминаний. В твоих интересах посещать как можно больше мест, общаться с как можно большим количеством людей... В общем, прожить собственную вселенную, насколько это возможно».~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN GOTO 292
  IF ~~ THEN REPLY #62535 /* ~«Совет чувствующего?»~ */ GOTO 295
  IF ~~ THEN REPLY #62536 /* ~«Если есть что-то, что может пролить свет на мое положение...»~ */ GOTO 330
  IF ~~ THEN REPLY #62537 /* ~«Хорошо. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62538 /* ~«На самом деле, это неважно. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62539 /* ~«Давай поговорим об этом в другой раз».~ */ EXIT
END

IF ~~ THEN BEGIN 292 // from: 291.0
  SAY #62540 /* ~«Вдобавок, из сказанного Равель меня заинтересовали несколько вещей. Тот факт, что твоя смертность пропала, вызывает некоторые опасения: если кто сможет заполучить подобную вещь, то это для тебя, скорее всего, ничем хорошим не кончится».~ */
  IF ~~ THEN REPLY #62541 /* ~«Продолжай...»~ */ GOTO 293
  IF ~~ THEN REPLY #62542 /* ~«Если есть что-то, что может пролить свет на мое положение...»~ */ GOTO 330
  IF ~~ THEN REPLY #62543 /* ~«Хорошо. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62544 /* ~«На самом деле, это неважно. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62545 /* ~«Давай поговорим об этом в другой раз».~ */ EXIT
END

IF ~~ THEN BEGIN 293 // from: 292.0
  SAY #62546 /* ~«Также мне не нравится то, что сказала Равель о смерти разума — возможно, она намекала на то, что с каждой твоей смертью часть твоего разума покидает тебя».~ */
  IF ~~ THEN REPLY #62547 /* ~«Продолжай...»~ */ GOTO 294
  IF ~~ THEN REPLY #62548 /* ~«Если есть что-то, что может пролить свет на мое положение...»~ */ GOTO 330
  IF ~~ THEN REPLY #62549 /* ~«Хорошо. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62550 /* ~«На самом деле, это неважно. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62551 /* ~«Давай поговорим об этом в другой раз».~ */ EXIT
END

IF ~~ THEN BEGIN 294 // from: 293.0
  SAY #62552 /* ~«И последнее: она упомянула о том, что твои шрамы рассказывают о 'войне между нечистью' — это очень похоже на Кровавую войну».~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62553 /* ~«Что такое Кровавая война?»~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62554 /* ~«Я знаком с понятием Кровавой войны. Можешь рассказать, что ты о ней знаешь?»~ */ GOTO 219
  IF ~~ THEN REPLY #62555 /* ~«Если есть что-то, что может пролить свет на мое положение...»~ */ GOTO 330
  IF ~~ THEN REPLY #62556 /* ~«Хорошо. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62557 /* ~«На самом деле, это неважно. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62558 /* ~«Давай поговорим об этом в другой раз».~ */ EXIT
END

IF ~~ THEN BEGIN 295 // from: 291.1
  SAY #62559 /* ~Падшая Грация дарит тебе потрясающую улыбку. «Я бы не стала советовать того, что не проверила сама. И если бы ты еще не знал, правда ли это».~ */
  IF ~~ THEN REPLY #62560 /* ~«Если есть что-то, что может пролить свет на мое положение...»~ */ GOTO 330
  IF ~~ THEN REPLY #62561 /* ~«Хорошо. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62562 /* ~«Хорошо. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62563 /* ~«Давай поговорим об этом в другой раз».~ */ EXIT
END

IF ~~ THEN BEGIN 296 // from: 279.2
  SAY #62564 /* ~«Морт довольно эксцентричен... Я многое повидала в своей жизни, но таких, как он, не встречала. Он ведет себя как мимир. Без сомнения, он обладает обширными знаниями, но все же, — она принюхивается и морщит свой нос, — от него несет Баатором».~ */
  IF ~~ THEN REPLY #62565 /* ~«Баатором?»~ */ DO ~SetGlobal("Grace_Smell_Mimir","GLOBAL",1)
~ GOTO 297
  IF ~~ THEN REPLY #62566 /* ~«Мимир?»~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Mimir","GLOBALKnow_Mimir",0)
~ GOTO 299
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62567 /* ~«Я выяснил причину этого: оказалось, что давным-давно я вытащил его из Колонны Черепов в Бааторе».~ */ GOTO 304
  IF ~~ THEN REPLY #62568 /* ~«Понятно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62569 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62570 /* ~«Давай поговорим об этом в другой раз».~ */ EXIT
END

IF ~~ THEN BEGIN 297 // from: 296.0 298.0
  SAY #62571 /* ~«Да. Но он не баатезу... по крайней мере, не из тех разновидностей, которых мне довелось повстречать. Однако запах сам по себе вынуждает меня относится к черепу с осторожностью».~ */
  IF ~~ THEN REPLY #62572 /* ~«Что ты имела в виду, говоря 'баатезу' и 'Баатор'?»~ */ GOTO 298
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62573 /* ~«Что ты там говорила о мимирах?»~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 299
  IF ~  GlobalGT("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62574 /* ~«Что ты там говорила о мимирах?»~ */ GOTO 299
  IF ~~ THEN REPLY #62575 /* ~«Понятно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62576 /* ~«Хм-м. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62577 /* ~«Давай поговорим об этом в другой раз».~ */ EXIT
END

IF ~~ THEN BEGIN 298 // from: 297.0
  SAY #62578 /* ~«Прошу прощения... Баатор — это один из внешних планов, родина расы нечистых под названием баатезу. Это весьма злобные создания, и все же они весьма организованы и законопослушны во многих аспектах своего поведения. Кое-кто зовет их дьяволами. Они очень полагаются на контракты и иерархию... во многом они похожи на злобных бюрократов».~ */
  IF ~~ THEN REPLY #62579 /* ~«А что ты говорила насчет запаха Баатора?»~ */ DO ~SetGlobal("Grace_Smell_Mimir","GLOBAL",1)
~ GOTO 297
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62580 /* ~«Что ты там говорила о мимирах?»~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 299
  IF ~  GlobalGT("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62581 /* ~«Что ты там говорила о мимирах?»~ */ GOTO 299
  IF ~~ THEN REPLY #62582 /* ~«Понятно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62583 /* ~«Хм-м. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62584 /* ~«Давай поговорим об этом в другой раз».~ */ EXIT
END

IF ~~ THEN BEGIN 299 // from: 296.1 297.1 297.2 298.1 298.2
  SAY #62585 /* ~«Мимиры — энциклопедии знаний. Хозяин может задавать им вопросы, и если они владеют нужными знаниями, они сообщают все известное по существу вопроса».~ */
  IF ~  Global("Morte_Story","GLOBAL",0)
~ THEN REPLY #62586 /* ~«И Морт — мимир?»~ */ DO ~SetGlobal("Grace_Silver_Mimir","GLOBAL",1)
~ GOTO 300
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62587 /* ~«Что ж, Морт — не мимир. Оказалось, что давным-давно я вытащил его из Колонны Черепов в Бааторе».~ */ GOTO 304
  IF ~~ THEN REPLY #62588 /* ~«Понятно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62589 /* ~«Хм-м. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62590 /* ~«Давай поговорим об этом в другой раз».~ */ EXIT
END

IF ~~ THEN BEGIN 300 // from: 299.0
  SAY #62591 /* ~«Я так не думаю. В отличие от Морта, мимиры обычно сделаны из серебристого металла. И похоже, что у него на все есть своя точка зрения. Подобное качество несвойственно традиционным мимирам, — Грация пожимает плечами. — *Возможно*, он — мимир, но подобных ему я ни разу не встречала».~ */
  IF ~~ THEN REPLY #62592 /* ~«Я убежден, что Морт является мимиром».~ */ GOTO 301
  IF ~  Global("Morte_Mimir","GLOBAL",1)
~ THEN REPLY #62593 /* ~«Морт сказал мне, что он — мимир».~ */ GOTO 302
  IF ~~ THEN REPLY #62594 /* ~«Я тоже не верю, что Морт является мимиром».~ */ GOTO 303
  IF ~~ THEN REPLY #62595 /* ~«Понятно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62596 /* ~«Хм-м. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62597 /* ~«Давай поговорим об этом в другой раз».~ */ EXIT
END

IF ~~ THEN BEGIN 301 // from: 300.0 302.0
  SAY #62598 /* ~«Тогда к этому больше нечего добавить».~ */
  IF ~~ THEN REPLY #62599 /* ~«Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62600 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62601 /* ~«Тогда идем».~ */ EXIT
END

IF ~~ THEN BEGIN 302 // from: 300.1
  SAY #62602 /* ~«Правда? Очень любопытно. Что ж, хорошо».~ */
  IF ~~ THEN REPLY #62603 /* ~«Я верю ему».~ */ GOTO 301
  IF ~~ THEN REPLY #62604 /* ~«Но не думаю, что я верю ему».~ */ GOTO 303
  IF ~~ THEN REPLY #62605 /* ~«Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62606 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62607 /* ~«Тогда идем».~ */ EXIT
END

IF ~~ THEN BEGIN 303 // from: 300.2 302.1
  SAY #62608 /* ~«Возможно, есть способ проверить его сведения на достоверность... Но я бы не стала этого делать, если ты ценишь его как друга. Если это так, тебе придется принять за правду все, что он тебе сказал».~ */
  IF ~~ THEN REPLY #62609 /* ~«Понятно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62610 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62611 /* ~«Хорошо. Это все, что я хотел обсудить».~ */ EXIT
END

IF ~~ THEN BEGIN 304 // from: 296.2 299.1
  SAY #62612 /* ~«Это объясняет его обширные познания. И все же... — Падшая Грация делает паузу. — В Колонну можно угодить только при определенных обстоятельствах».~ */
  IF ~~ THEN REPLY #62613 /* ~«Каких обстоятельствах?»~ */ DO ~SetGlobal("Know_Pillar_Circumstances","GLOBAL",1)
~ GOTO 305
  IF ~  Global("Know_Pillar_Circumstances","GLOBAL",1)
~ THEN REPLY #62614 /* ~«Я знаком с ними — тебе нужно сделать так, чтобы твоя ложь привела к смерти другого, верно?»~ */ GOTO 307
  IF ~~ THEN REPLY #62615 /* ~«Понятно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62616 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62617 /* ~«Это все, о чем я хотел поговорить. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #62618 /* ~«Колонна Черепов — это колонна из живых голов, которая состоит из тех, чья ложь привела к смерти других. Она может ответить на множество вопросов, поскольку многое знает, но ожидает огромную плату за свои услуги».~ */
  IF ~~ THEN REPLY #62619 /* ~«Значит, прежде чем попасть туда, Морт солгал кому-то, что привело к чьей-то гибели?»~ */ GOTO 307
  IF ~~ THEN REPLY #62620 /* ~«Понятно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62621 /* ~«Хм-м. У меня есть несколько вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62622 /* ~«Хорошо. Это все, что я хотел обсудить».~ */ EXIT
END

IF ~~ THEN BEGIN 306 // from:
  SAY #62623 /* ~NULL NODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 307 // from: 304.1 305.0
  SAY #62624 /* ~«Да, все верно».~ */
  IF ~~ THEN REPLY #62625 /* ~«Понятно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62626 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62627 /* ~«Хм-м-м. Надо будет расспросить его об этом. А пока пойдем».~ */ EXIT
END

IF ~~ THEN BEGIN 308 // from: 279.4
  SAY #62628 /* ~«О Дакконе? — Грация вскидывает бровь. — Он очень необычный гитцерай».~ */
  IF ~~ THEN REPLY #62629 /* ~«Правда? И в чем же его необычность?»~ */ GOTO 309
  IF ~~ THEN REPLY #62630 /* ~«Неважно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62631 /* ~«Пока забудем об этом. У меня есть несколько вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62632 /* ~«Давай поговорим об этом позже. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #62633 /* ~«Ну, он повинуется тебе. Уже это одно делает из него изгнанника в глазах его народа. Гитцераи раньше были рабами, и даже *упоминание* о рабстве им очень... неприятно».~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #62634 /* ~«Да, он пообещал служить мне по тех пор, пока я не умру. Это случилось после того, как я спас жизнь ему, и он не знал, что я бессмертен».~ */ GOTO 310
  IF ~~ THEN REPLY #62635 /* ~«Что-нибудь еще?»~ */ GOTO 313
  IF ~~ THEN REPLY #62636 /* ~«Понятно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62637 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62638 /* ~«Давай поговорим об этом позже. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 310 // from: 309.0
  SAY #62639 /* ~«Правда? Как гитцерай, он, должно быть, очень страдает. Как ты спас ему жизнь?»~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #62640 /* ~«После того, как он упал со Шракатлора, одно из моих предыдущих воплощений нашло его умирающим в Лимбо и вручило ему Неразрывный круг Зертимона, те его религиозные писания».~ */ GOTO 311
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #62641 /* ~«Я не знаю. Его спасло одно из моих воплощений, и мне неизвестно ничего об этом событии. Что еще ты можешь рассказать о нем?»~ */ GOTO 313
  IF ~~ THEN REPLY #62642 /* ~«Это длинная история. Послушай, я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62643 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62644 /* ~«Я расскажу об этом как-нибудь в другой раз. А теперь идем».~ */ EXIT
END

IF ~~ THEN BEGIN 311 // from: 310.0
  SAY #62645 /* ~«Могу я спросить, знаешь ли ты, *зачем* твое воплощение спасло ему жизнь?»~ */
  IF ~  Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62646 /* ~«Думаю, я спас ему жизнь из-за клинка *карач*».~ */ GOTO 312
  IF ~~ THEN REPLY #62647 /* ~«Я не знаю, его мотивы для меня загадка. Ты можешь рассказать мне что-нибудь еще о Дакконе?»~ */ GOTO 313
  IF ~~ THEN REPLY #62648 /* ~«Это длинная история. Послушай, я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62649 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62650 /* ~«Я расскажу об этом как-нибудь в другой раз. А теперь идем».~ */ EXIT
END

IF ~~ THEN BEGIN 312 // from: 311.0
  SAY #62651 /* ~«Любопытно, — Падшая Грация на мгновение умолкает. — А знаешь, клинок, который отражает волю хозяина, становится могущественным оружием, если хозяин понимает себя».~ */
  IF ~~ THEN REPLY #62652 /* ~«Тогда, наверное, поэтому я и спас его. Ты можешь рассказать мне что-нибудь еще о Дакконе?»~ */ GOTO 313
  IF ~~ THEN REPLY #62653 /* ~«Возможно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62654 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62655 /* ~«Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 313 // from: 309.1 310.1 311.1 312.0
  SAY #62656 /* ~«Даккон ко всему подходит с дисциплиной. И это, опять-таки, очень удивительно для гитцерая. Обычно они непредсказуемы: они будут следовать скорее своим импульсам, а не плану».~ */
  IF ~~ THEN REPLY #62657 /* ~«Что-нибудь еще?»~ */ GOTO 314
  IF ~~ THEN REPLY #62658 /* ~«Понятно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62659 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62660 /* ~«Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 314 // from: 313.0
  SAY #62661 /* ~«Он очень религиозный гитцерай и надежный союзник».~ */
  IF ~~ THEN REPLY #62662 /* ~«Это так. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62663 /* ~«Действительно. У меня еще несколько вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62664 /* ~«Я знаю. Пойдем».~ */ EXIT
END

IF ~~ THEN BEGIN 315 // from: 279.5
  SAY #62665 /* ~«Нордом — модрон-бродяга. Несмотря на то, что в его систему закрались следы хаоса, он по-прежнему предельно логичное, упорядоченное создание. Эта логика может быть очень полезной в путешествии. Кроме того, если он посчитает тебя лидером, его подчинение будет беспрекословным».~ */
  IF ~~ THEN GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY #62666 /* ~«Трудности могут возникнуть там, где Нордом столкнется с социальной ситуацией, требующей этического подхода... Подобные вещи плохо воспринимаются модронами, даже нормальными, — она делает паузу. — Я бы хотела дать совет насчет Нордома, если не возражаешь».~ */
  IF ~~ THEN REPLY #62667 /* ~«Конечно. Какой?»~ */ GOTO 317
  IF ~~ THEN REPLY #62668 /* ~«Не сейчас. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62669 /* ~«Возможно, позже. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62670 /* ~«Не сейчас. Пойдем».~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #62671 /* ~«Реальность Нордома пошатнулась. Если ты поможешь ему разобраться в его положении, укажешь его место в иерархии группы и будешь его направлять, это может помочь ему лучше сосредоточиться. Мне так кажется».~ */
  IF ~~ THEN REPLY #62672 /* ~«Возможно, я прислушаюсь к твоему совету. Но пока я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62673 /* ~«Я поговорю с ним. У меня еще пара вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62674 /* ~«Хм-м-м. Я подумаю, что можно будет сделать. Спасибо за совет. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 318 // from: 279.6
  SAY #62675 /* ~«Было бы разумно больше не путешествовать с ним. Он безумен и способен совершать огромные разрушения. Насколько я понимаю, он трансформировался в проводник Стихийного плана Огня... Подобное превращение убило бы многих смертных».~ */
  IF ~~ THEN GOTO 319
END

IF ~~ THEN BEGIN 319 // from: 318.0
  SAY #62676 /* ~«Он более чем благополучно *перенес* это испытание. Теперь же он владеет огромной силой. Если придется вступить с ним в противоборство, то, боюсь, мало кто устоит под его натиском, и я молюсь, чтобы это никогда не произошло».~ */
  IF ~~ THEN REPLY #62677 /* ~«Если Игнус настолько могущественный, то почему не нападает на все, что видит? Почему он все еще путешествует с нами?»~ */ GOTO 320
  IF ~~ THEN REPLY #62678 /* ~«Понятно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62679 /* ~«Я тоже на это надеюсь. У меня есть еще вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62680 /* ~«Хм-м-м. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #62681 /* ~«Не знаю. Не думаю, что это из-за того, что ему нравится наше общество. Фактически, он не обращает внимания ни на кого, кроме тебя».~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62682 /* ~«Наверное, это потому, что в прошлом я был его учителем».~ */ GOTO 322
  IF ~~ THEN REPLY #62683 /* ~«Меня? Почему меня?»~ */ GOTO 321
  IF ~~ THEN REPLY #62684 /* ~«Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62685 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62686 /* ~«Хм-м-м. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.1
  SAY #62687 /* ~«Я не знаю ответа и на этот вопрос. И все же, разве ты не замечал, что когда ты просишь его о чем-то, он *повинуется*? Беспрекословно. Если бы я попросила то же самое, от него я бы получила все что угодно, только не согласие».~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62688 /* ~«Наверное, это потому, что в прошлом я был его учителем».~ */ GOTO 322
  IF ~~ THEN REPLY #62689 /* ~«Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62690 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62691 /* ~«Хм-м-м. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 322 // from: 320.0 321.0
  SAY #62692 /* ~«Ты был его учителем?»~ */
  IF ~~ THEN REPLY #62693 /* ~«Да... Одно из моих прошлых воплощений обучило его Искусству, но не думаю, что это было сделано из добрых побуждений. Я подозреваю, что он по-прежнему считает меня своим учителем».~ */ GOTO 323
  IF ~~ THEN REPLY #62694 /* ~«Забудь об этом. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62695 /* ~«Это долгая история. В данный момент у меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62696 /* ~«Мы поговорим об этом как-нибудь в другой раз. А теперь идем».~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 322.0
  SAY #62697 /* ~Падшая Грация задумчиво кивает: «Это многое объясняет, — она какое-то время рассматривает твое лицо. — Тебя это беспокоит?»~ */
  IF ~~ THEN REPLY #62698 /* ~«Я не несу ответственности за то, кем стал Игнус. Беспокоит ли меня это? Нет».~ */ GOTO 324
  IF ~~ THEN REPLY #62699 /* ~«Я чувствую некоторую ответственность: похоже, то, чему я обучил Игнуса, могло привести к его сумасшествию, но точно я не знаю».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Grace_3","GLOBALGood",1)
~ GOTO 324
  IF ~~ THEN REPLY #62700 /* ~«Да. Я сожалею, что мои прошлые жизни коснулись Игнуса и опалили его».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Grace_3","GLOBALGood",1)
~ GOTO 324
  IF ~~ THEN REPLY #62701 /* ~«Я не хочу говорить об этом сейчас. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62702 /* ~«Забудь об этом. У меня есть несколько вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62703 /* ~«Мы поговорим об этом в другой раз. Пошли».~ */ EXIT
END

IF ~~ THEN BEGIN 324 // from: 323.0 323.1 323.2
  SAY #62704 /* ~«Игнус горит изнутри, да так, что сам Баатор устыдился бы. Он превратился в нечто большее, нежели волшебник или даже человек. Он стал силой. Меня не перестает интересовать, было ли это частью его сущности еще до того, как он повстречал тебя».~ */
  IF ~~ THEN REPLY #62705 /* ~«Не знаю. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62706 /* ~«Хм-м. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62707 /* ~«Мы поговорим об этом в другой раз. Пошли».~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 279.7
  SAY #62708 /* ~«Любые дела с убийцами милосердия таят в себе немало угроз. Боюсь, что в случае с Вейлором эти угрозы еще выше. Он не просто одержим правосудием, правосудие — его *часть*. Будь осторожен, следи за своими поступками и поведением, поскольку он внимательно следит за всеми нами. В этом вся суть убийцы милосердия».~ */
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62709 /* ~«Я должен кое в чем сознаться... Кажется, это по моей вине Вейлор был заточен в камеру под Проклятым».~ */ GOTO 326
  IF ~~ THEN REPLY #62710 /* ~«Понятно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62711 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62712 /* ~«Хорошо. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #62713 /* ~«О чем это ты?»~ */
  IF ~~ THEN REPLY #62714 /* ~«Я вспомнил... Я заманил его в ловушку из-за того, что он постоянно преследовал меня. Но я не хотел убивать его, просто заточил его, убрал со своего пути».~ */ GOTO 327
  IF ~~ THEN REPLY #62715 /* ~«Неважно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62716 /* ~«Забудь об этом. У меня есть несколько вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62717 /* ~«Мы поговорим об этом в другой раз. Пошли».~ */ EXIT
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #62718 /* ~«Если он преследовал тебя, зачем было его заточать? Не проще было бы убить его?»~ */
  IF ~~ THEN REPLY #62719 /* ~«Я не был уверен, что вообще *смогу* его убить. Смерть уже пробовала забрать его, и, судя по всему, не справилась со своей работой».~ */ GOTO 328
  IF ~~ THEN REPLY #62720 /* ~«Знаешь, это может прозвучать странно, но у меня такое чувство, что я не убил его из-за ТОГО, что он способен убить меня».~ */ GOTO 329
  IF ~~ THEN REPLY #62721 /* ~«Неважно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62722 /* ~«Забудь об этом. У меня есть несколько вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62723 /* ~«Мы поговорим об этом в другой раз. Пошли».~ */ EXIT
END

IF ~~ THEN BEGIN 328 // from: 327.0
  SAY #62724 /* ~«Это так. Его поддерживают убеждения, а убеждения — весьма могущественная вещь».~ */
  IF ~~ THEN REPLY #62725 /* ~«Знаешь, это может прозвучать странно, но у меня такое чувство, что я не убил его из-за ТОГО, что он способен убить меня».~ */ GOTO 329
  IF ~~ THEN REPLY #62726 /* ~«Это так. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62727 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62728 /* ~«Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 329 // from: 327.1 328.0
  SAY #62729 /* ~Падшая Грация кивает. «Даже бессмертный может захотеть оставить лазейку для своей смертности. Для многих бессмертие *не является* благословением. Ты мог оставить Вейлора на тот случай, когда бессмертие станет невыносимым».~ */
  IF ~~ THEN REPLY #62730 /* ~«Понятно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62731 /* ~«Хм-м. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62732 /* ~«Интересная мысль. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 330 // from: 280.2 287.0 289.1 290.1 291.2 292.1 293.1 294.2 295.0 331.1 332.0 333.0 334.0 335.4 336.0 337.2 338.2 339.0 357.2
  SAY #62733 /* ~«Ты знаешь что-нибудь еще, что может быть полезным?»~ */
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #62734 /* ~«Ну, тени все еще пытаются убить меня. Мне кажется, что они следуют за мной, сам не знаю почему».~ */ GOTO 331
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
~ THEN REPLY #62735 /* ~«Ну, мне кажется, что кто-то очень хочет меня убить... Настолько, что я построил смертельный склеп-ловушку, чтобы попытаться убить его. Согласно надписи в склепе, он следует за мной повсюду... ну, по крайней мере, согласно воспоминаниям одного из моих воплощений».~ */ GOTO 334
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #62736 /* ~«Еще одно: я не всегда был бессмертным... Это Равель сделала меня таким».~ */ GOTO 335
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #62737 /* ~«Когда я разговаривал с Равель, она сказала, что татуировки на моей коже повествуют о 'войне между нечистью'. Ты знаешь, что она имела в виду?»~ */ GOTO 338
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #62738 /* ~«Колонна Черепов сказала мне, что я отбрасываю тень на мироздание — каждый раз, когда я умираю, вместо меня умирает другой».~ */ GOTO 333
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
~ THEN REPLY #62739 /* ~«Триас сказал, что у Крепости сожалений есть хранитель, который держит мою смертность под замком».~ */ GOTO 339
  IF ~~ THEN REPLY #62740 /* ~«Вообще-то, ничего важного. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62741 /* ~«Неважно. Может, в другой раз».~ */ EXIT
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #62742 /* ~«Тени? — Падшая Грация на секунду умолкает. — Тени — это духи умерших. Обычно они не охотятся — они таятся в ожидании своих жертв. Любопытно».~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN GOTO 332
  IF ~~ THEN REPLY #62743 /* ~«Я хотел бы услышать, что еще ты думаешь о моем нынешнем положении».~ */ GOTO 330
  IF ~~ THEN REPLY #62744 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62745 /* ~«Давай поговорим об этом в другой раз. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 331.0
  SAY #62746 /* ~«И Равель говорила, что ты отбрасываешь тени — возможно, эти тени каким-то образом притягиваются к тебе? — Падшая Грация задумчиво потирает подбородок. — Трудно сказать наверняка».~ */
  IF ~~ THEN REPLY #62747 /* ~«Я хотел бы услышать, что еще ты думаешь о моем нынешнем положении».~ */ GOTO 330
  IF ~~ THEN REPLY #62748 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62749 /* ~«Давай поговорим об этом в другой раз. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 333 // from: 330.4
  SAY #62750 /* ~«Похоже, что колдовство Равель вряд ли чему идет на пользу, — Падшая Грация понижает тон. — Вот интересно, сколько раз ты умер... и забрал с собой еще кого-то».~ */
  IF ~~ THEN REPLY #62751 /* ~«Я хотел бы услышать, что еще ты думаешь о моем нынешнем положении».~ */ GOTO 330
  IF ~~ THEN REPLY #62752 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62753 /* ~«Давай поговорим об этом в другой раз. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 334 // from: 330.1
  SAY #62754 /* ~«Тогда... кем бы ни был убийца, он живет уже очень долго и все это время преследует тебя, — она потирает подбородок. — Может, убийца тоже бессмертен?»~ */
  IF ~~ THEN REPLY #62755 /* ~«Возможно. Я хотел бы услышать, что еще ты думаешь о моем нынешнем положении».~ */ GOTO 330
  IF ~~ THEN REPLY #62756 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62757 /* ~«Давай поговорим об этом в другой раз. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 335 // from: 330.2
  SAY #62758 /* ~«Тогда это само по себе удивительно. Это не твое естественное состояние, из чего следует вопрос: *Почему* ты захотел стать бессмертным? У тебя есть какие-либо сведения о том, зачем Равель совершила подобную вещь?»~ */
  IF ~  Global("Ravel_Hair","GLOBAL",1)
GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62759 /* ~«Точно я не знаю, но мне кажется, что это должно было помочь мне сбежать из клетки, дать мне свободу».~ */ GOTO 337
  IF ~  Global("Ravel_Hair","GLOBAL",1)
Global("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62760 /* ~«Точно я не знаю, но мне кажется, что это должно было помочь мне сбежать из клетки, дать мне свободу».~ */ GOTO 336
  IF ~  Global("Ravel_Hair","GLOBAL",0)
GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62761 /* ~«Я не знаю. Все, что мне известно, — это что я попросил ее об этом».~ */ GOTO 337
  IF ~  Global("Ravel_Hair","GLOBAL",0)
Global("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62762 /* ~«Я не знаю. Все, что мне известно, — это что я попросил ее об этом».~ */ GOTO 336
  IF ~~ THEN REPLY #62763 /* ~«Пока нет. Я хотел бы услышать, что еще ты думаешь о моем нынешнем положении».~ */ GOTO 330
  IF ~~ THEN REPLY #62764 /* ~«Не знаю. Я хочу задать тебе еще пару вопросов».~ */ GOTO 139
  IF ~~ THEN REPLY #62765 /* ~«Давай обсудим это в другой раз».~ */ EXIT
END

IF ~~ THEN BEGIN 336 // from: 335.1 335.3
  SAY #62766 /* ~«Весьма любопытно. Это следовало бы выяснить в первую очередь... Только имея прочный фундамент прошлого, можно определять, что кроется в будущем».~ */
  IF ~~ THEN REPLY #62767 /* ~«Я хотел бы услышать, что еще ты думаешь о моем нынешнем положении».~ */ GOTO 330
  IF ~~ THEN REPLY #62768 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62769 /* ~«Давай поговорим об этом в другой раз. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 337 // from: 335.0 335.2
  SAY #62770 /* ~«Хм-м. Меня заинтересовало кое-что из сказанного Равель... Она упомянула о войне нечистых, под которой, вне всякого сомнения, подразумевалась Кровавая война. Мне это кажется весьма любопытным фактом. Это, и еще план, где жила Равель — он довольно часто оказывался спорной землей в этом конфликте. Возможно, то, что привело тебя к Равель, было как-то связано с Кровавой войной?»~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62771 /* ~«Что такое Кровавая война?»~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ JOURNAL #61615 /* ~Падшая Грация сказала, что под войной демонов Равель, вероятно, подразумевала Кровавую войну, конфликтом между расами баатезу и танарри. Она предположила, что мои дела с Равель могут быть как-то связаны с Кровавой войной.~ */ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62772 /* ~«Что такое Кровавая война?»~ */ GOTO 219
  IF ~~ THEN REPLY #62773 /* ~«Вполне возможно. Я хотел бы услышать, что еще ты думаешь о моем нынешнем положении».~ */ GOTO 330
  IF ~~ THEN REPLY #62774 /* ~«Может быть. Я хочу задать тебе еще пару вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62775 /* ~«Я не знаю. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 338 // from: 330.3
  SAY #62776 /* ~«Хм-м. 'Война нечистых', вне всякого сомнения, означает Кровавую войну, — Падшая Грация кивает. — Знаешь, а ведь Серая пустошь, план, где жила Равель, довольно часто оказывался спорной землей в этом конфликте. Возможно, то, что привело тебя к Равель, было как-то связано с Кровавой войной?»~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62777 /* ~«Что такое Кровавая война?»~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ JOURNAL #61615 /* ~Падшая Грация сказала, что под войной демонов Равель, вероятно, подразумевала Кровавую войну, конфликтом между расами баатезу и танарри. Она предположила, что мои дела с Равель могут быть как-то связаны с Кровавой войной.~ */ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62778 /* ~«Что такое Кровавая война?»~ */ JOURNAL #61615 /* ~Падшая Грация сказала, что под войной демонов Равель, вероятно, подразумевала Кровавую войну, конфликтом между расами баатезу и танарри. Она предположила, что мои дела с Равель могут быть как-то связаны с Кровавой войной.~ */ GOTO 219
  IF ~~ THEN REPLY #62779 /* ~«Вполне возможно. Я хотел бы услышать, что еще ты думаешь о моем нынешнем положении».~ */ GOTO 330
  IF ~~ THEN REPLY #62780 /* ~«Может быть. Я хочу задать тебе еще пару вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62781 /* ~«Я не знаю. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 339 // from: 330.5
  SAY #62782 /* ~«Мне кажется, ты должен разыскать этого хранителя и поговорить с ним. Думаю, эта беседа много на что прольет свет. Похоже, этот хранитель не желает, чтобы твою смертность освободили».~ */
  IF ~~ THEN REPLY #62783 /* ~«Вполне возможно. Я хотел бы услышать, что еще ты думаешь о моем нынешнем положении».~ */ GOTO 330
  IF ~~ THEN REPLY #62784 /* ~«Я хочу задать тебе еще пару вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62785 /* ~«Вполне возможно. В этом случае, он окажется разочарован. Пошли».~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 279.3
  SAY #62786 /* ~«Она сильная и умелая, но очень вспыльчивая. Я почти жалею, что не повстречала ее в прошлом и не пригласила ее в Бордель... Возможно, все сложилось бы иначе, — Грация внимательно смотрит на тебя. — А что ты думаешь о ней?»~ */
  IF ~~ THEN REPLY #62787 /* ~«Похоже, она тебя не очень-то жалует».~ */ GOTO 341
  IF ~~ THEN REPLY #62788 /* ~«Ну, мне кажется, я мог бы в нее влюбиться».~ */ GOTO 342
  IF ~~ THEN REPLY #62789 /* ~«Я считаю ее другом, не более».~ */ GOTO 343
  IF ~~ THEN REPLY #62790 /* ~«Так или иначе, она меня не сильно заботит».~ */ GOTO 343
  IF ~~ THEN REPLY #62791 /* ~«Я ее ненавижу».~ */ GOTO 344
  IF ~~ THEN REPLY #62792 /* ~«Я не доверяю ей».~ */ GOTO 346
  IF ~~ THEN REPLY #62793 /* ~«Она полезна, но не более».~ */ GOTO 343
  IF ~~ THEN REPLY #62794 /* ~«Я не хотел бы разговаривать об этом».~ */ GOTO 347
END

IF ~~ THEN BEGIN 341 // from: 340.0
  SAY #62795 /* ~«Вынуждена согласиться... — Грация улыбается. — Но я не позволю тебе так ловко увильнуть от вопроса. Что ты думаешь о ней?»~ */
  IF ~~ THEN REPLY #62796 /* ~«Ну, мне кажется, я мог бы в нее влюбиться».~ */ GOTO 342
  IF ~~ THEN REPLY #62797 /* ~«Я считаю ее другом, не более».~ */ GOTO 343
  IF ~~ THEN REPLY #62798 /* ~«Так или иначе, она меня не сильно заботит».~ */ GOTO 343
  IF ~~ THEN REPLY #62799 /* ~«Я ее ненавижу».~ */ GOTO 344
  IF ~~ THEN REPLY #62800 /* ~«Я не доверяю ей».~ */ GOTO 346
  IF ~~ THEN REPLY #62801 /* ~«Она полезна, но не более».~ */ GOTO 343
  IF ~~ THEN REPLY #62802 /* ~«Я не хотел бы разговаривать об этом».~ */ GOTO 347
END

IF ~~ THEN BEGIN 342 // from: 340.1 341.0
  SAY #62803 /* ~«Может, скажешь это ей?»~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",1)
~ THEN REPLY #62804 /* ~«Не знаю... Мне кажется, что куда бы я не пошел, после меня остаются только *обломки* — особенно в случае с Дейонаррой — и еще жизни тех, с кем я столкнулся. Наверное, лучше оставить все как есть».~ */ GOTO 358
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",0)
~ THEN REPLY #62805 /* ~«Не знаю... Мне кажется, что куда бы я не пошел, после меня остаются только *обломки* — особенно в случае с Дейонаррой — и еще жизни тех, с кем я столкнулся. Наверное, лучше оставить все как есть».~ */ GOTO 359
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalGT("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",1)
~ THEN REPLY #62806 /* ~«Не знаю... Мне кажется, что куда бы я не пошел, после меня остаются только *обломки* — особенно в случае с Дейонаррой — и еще жизни тех, с кем я столкнулся. Не говоря уже про Равель. Даже не представляю, что во мне привлекло ее. Я бы и ее использовал. Возможно, мне следует быть поосторожнее со своими чувствами».~ */ GOTO 358
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalGT("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",0)
~ THEN REPLY #62807 /* ~«Не знаю... Мне кажется, что куда бы я не пошел, после меня остаются только *обломки* — особенно в случае с Дейонаррой — и еще жизни тех, с кем я столкнулся. Не говоря уже про Равель. Даже не представляю, что во мне привлекло ее. Я бы и ее использовал. Возможно, мне следует быть поосторожнее со своими чувствами».~ */ GOTO 359
  IF ~~ THEN REPLY #62808 /* ~«Если я так и сделаю, это будет *мой* выбор».~ */ GOTO 343
  IF ~~ THEN REPLY #62809 /* ~«Не знаю... посмотрим».~ */ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 340.2 340.3 340.6 341.1 341.2 341.5 342.4 342.5 345.0 346.0
  SAY #62810 /* ~«Хорошо».~ */
  IF ~~ THEN REPLY #62811 /* ~«Я хотел бы спросить тебя о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62812 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62813 /* ~«Тогда ладно. Давай двигаться дальше».~ */ EXIT
END

IF ~~ THEN BEGIN 344 // from: 340.4 341.3
  SAY #62814 /* ~«Почему?»~ */
  IF ~~ THEN REPLY #62815 /* ~«По большей части из-за говора... Во-первых, именно из-за нее я оказался в Морге; еще она воровка из Улья с примесью нечистой крови и вечно сует свой нос в мои дела. Мне продолжать?»~ */ GOTO 345
  IF ~~ THEN REPLY #62816 /* ~«Я хотел бы спросить тебя о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62817 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62818 /* ~«Тогда ладно. Давай двигаться дальше».~ */ EXIT
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #62819 /* ~«Тогда почему же ты с ней путешествуешь?»~ */
  IF ~~ THEN REPLY #62820 /* ~«У нее есть свое предназначение. И пока она не докучает мне своим присутствием — все в порядке».~ */ GOTO 343
  IF ~~ THEN REPLY #62821 /* ~«Неважно. Я хотел бы спросить тебя о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62822 /* ~«Забудь об этом. У меня есть несколько вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62823 /* ~«Мы поговорим об этом в другой раз. А пока нам пора идти».~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from: 340.5 341.4
  SAY #62824 /* ~«Почему ты не доверяешь ей?»~ */
  IF ~~ THEN REPLY #62825 /* ~«Она без труда разыскала меня, мертвого, на улице Протяжных вздохов, несмотря на тот факт, что любой другой сборщик побоялся бы сунуться туда. Она — приемная дочь Фарода. А еще она воровка из Улья с примесью нечистой крови. Мне продолжать?»~ */ GOTO 343
  IF ~~ THEN REPLY #62826 /* ~«Неважно. Я хотел бы спросить тебя о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62827 /* ~«Забудь об этом. У меня есть несколько вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62828 /* ~«Мы поговорим об этом в другой раз. А пока нам пора идти».~ */ EXIT
END

IF ~~ THEN BEGIN 347 // from: 340.7 341.6
  SAY #62829 /* ~«Воздержание допустимо, — Грация улыбается. — Однако длительное воздержание может оказаться нелегким делом».~ */
  IF ~~ THEN REPLY #62830 /* ~«*Тебе* ли не знать».~ */ GOTO 361
  IF ~~ THEN REPLY #62831 /* ~«Ну ладно, ладно... Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62832 /* ~«У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62833 /* ~«Может и так. Пойдем».~ */ EXIT
END

IF ~~ THEN BEGIN 348 // from: 205.5
  SAY #62834 /* ~Грация тихо произносит: «Мучение». Какое-то время она рассматривает символ на твоей руке. «Фелл говорит... — она делает глубокий вздох. — Плоть знает, что перенесла, даже когда разум забывает. Фелл говорит, что руна, как магнит, притягивает к тебе другие измученные души».~ */
  IF ~~ THEN REPLY #62835 /* ~«У меня есть другие вопросы...»~ */ GOTO 205
  IF ~~ THEN REPLY #62836 /* ~«Может и так. Пойдем».~ */ EXIT
END

IF ~~ THEN BEGIN 349 // from: 139.16
  SAY #62837 /* ~«Нет... Оно редко когда нужно, и я не переношу долгого соприкосновения с холодным железом или даже сталью. В любом случае, у меня есть несколько... естественных средств самообороны, которые отвадят любого нападающего».~ */
  IF ~~ THEN REPLY #62838 /* ~«Например?»~ */ JOURNAL #61616 /* ~Падшая Грация сказала мне, что ее поцелуй высасывает жизнь из жертвы... Почему-то это меня возбуждает. Я ведь все равно не могу умереть, верно? Хм-м-м. Надо бы это запомнить.~ */ GOTO 350
  IF ~~ THEN REPLY #62839 /* ~«О. У меня есть другие вопросы...»~ */ GOTO 205
  IF ~~ THEN REPLY #62840 /* ~«Понятно... Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 350 // from: 349.0
  SAY #62841 /* ~«Поцелуй суккуба летален для смертных, хотя они очень редко осознают его опасность до того, как оказываются на пороге смерти, — Падшая Грация вздыхает. — В случае крайней необходимости я могу прибегнуть к этому средству».~ */
  IF ~~ THEN REPLY #62842 /* ~«Понятно... У меня еще вопросы...» ~ */ GOTO 205
  IF ~~ THEN REPLY #62843 /* ~«Звучит интригующе... э-э-э, я хотел сказать, ужасающе. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 351 // from: 205.2
  SAY #62844 /* ~«Все верно. Ив не нуждается в рассказах, которые только усугубят ее несчастье... И моя история все равно не поможет в ее поискам истины».~ */
  IF ~~ THEN REPLY #62845 /* ~«А мне ты ее расскажешь?»~ */ GOTO 352
  IF ~~ THEN REPLY #62846 /* ~«Понятно... У меня еще вопросы...» ~ */ GOTO 205
  IF ~~ THEN REPLY #62847 /* ~«Может и так. Пойдем».~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 205.3 206.1 207.2 212.0 351.0
  SAY #62848 /* ~«Это долгая история, и не такая уж интересная, как может показаться, — вздыхает она. — Она тесно переплетена с другими историями о войне и рабстве, мало что в ней приятного».~ */
  IF ~~ THEN REPLY #62849 /* ~«И все же я хотел бы ее услышать».~ */ GOTO 353
  IF ~~ THEN REPLY #62850 /* ~«Понятно... У меня еще вопросы...» ~ */ GOTO 205
  IF ~~ THEN REPLY #62851 /* ~«Тогда идем дальше».~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #62852 /* ~«Ну хорошо... Моя прошлая жизнь не слишком долгая, по крайней мере, по меркам танарри. Не знаю, знаком ли ты с танарри, но мы — раса из Бездны, нагромождения планов, наполненных хаосом и злыми сердцами».~ */
  IF ~~ THEN REPLY #62853 /* ~«Продолжай...»~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ GOTO 354
  IF ~~ THEN REPLY #62854 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 205
  IF ~~ THEN REPLY #62855 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #62856 /* ~«Я — танарри, нечистая, суккуб... Я выросла на первом плане Бездны. Моя мать сама была суккубом. Уверена, тебе известно, что суккубы соблазняют смертных и затягивают их души в Бездну. Моя мать была одной из лучших, и обрекла бессчетное количество смертных мужчин на вечное проклятье. Сейчас она живет в Бездне, продавая в рабство своих детей».~ */
  IF ~~ THEN REPLY #62857 /* ~«Твоя мать продала тебя в рабство?»~ */ GOTO 355
  IF ~~ THEN REPLY #62858 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 205
  IF ~~ THEN REPLY #62859 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #62860 /* ~«Она продала меня баатезу, заклятым врагам танарри. Думаю, она ожидала, что они скорее убьют меня. Несмотря на ее познания в других областях, ей мало знакома их культура и то наслаждение, с которым они мучают других».~ */
  IF ~~ THEN REPLY #62861 /* ~«Как тебе удалось сбежать?»~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 356
  IF ~~ THEN REPLY #62862 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 205
  IF ~~ THEN REPLY #62863 /* ~«Я услышал достаточно. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #62864 /* ~«Баатезу — гордые создания. Сама мысль о том, что танарри могут в чем-то их превзойти, для них невыносима. Поэтому я вызвала одного из самых горделивых пещерных демонов на поединок импровизаций, и тут моя сущность танарри позволило мне выиграть. Танарри — существа хаотичные, дикие и непредсказуемые. Баатезу же более коварны и дисциплинированы. Они понимают импровизацию, но в ней они не из числа лучших. Так что я выиграла свою свободу, и мои странствия привели меня в Сигил».~ */
  IF ~~ THEN REPLY #62865 /* ~«Понятно. У меня есть другие вопросы...» ~ */ GOTO 205
  IF ~~ THEN REPLY #62866 /* ~«Это все, что я хотел услышать. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 357 // from: 279.0
  SAY #62867 /* ~«О чем ты хочешь поговорить?»~ */
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #62868 /* ~«Я хочу, чтобы ты знала. Когда в лабиринте я поцеловал Равель, я...»~ */ GOTO 281
  IF ~~ THEN REPLY #62869 /* ~«Если честно, мне интересно знать, как ты ко мне относишься».~ */ GOTO 287
  IF ~~ THEN REPLY #62870 /* ~«Я хотел бы выслушать твое мнение о моем нынешнем положении».~ */ GOTO 330
  IF ~~ THEN REPLY #62871 /* ~«У тебя есть какие-нибудь мысли о том, кем или чем я могу быть?»~ */ GOTO 288
  IF ~~ THEN REPLY #62872 /* ~«Неважно. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62873 /* ~«Забудь об этом. У меня есть несколько вопросов...»~ */ GOTO 139
  IF ~~ THEN REPLY #62874 /* ~«Это не столь важно. Пошли дальше».~ */ EXIT
END

IF ~~ THEN BEGIN 358 // from: 342.0 342.2
  SAY #62875 /* ~«Дейонарра была той женщиной из камня переживаний тоски, не так ли? Не она ли была влюблена в твое прошлое воплощение?»~ */
  IF ~~ THEN REPLY #62876 /* ~«Да. Я сделал с ней нечто ужасное, но не знаю, что именно».~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 342.1 342.3 358.0
  SAY #62877 /* ~«На это я скажу вот что: истинно сильная любовь может смещать даже планы, и из всего пережитого мной нет ничего истиннее *чувств* одного человека к другому».~ */
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN GOTO 360
  IF ~~ THEN REPLY #62879 /* ~«Может, оно и так. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62880 /* ~«Возможно, ты права. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62881 /* ~«Поговорим об этом в другой раз. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #62882 /* ~«Прежде чем пытаться оградить других от своих чувств, знай: любовь сильна, сильна настолько, что проникла даже в испорченное черное сердце Равель, и благодаря ее прикосновению она поставила другого выше себя. Ты представляешь, какова должна быть *сила*, чтобы изменить сердце такой, как Равель? И хотя любовь может причинять боль, не стоит забывать, сколько добра она может принести».~ */
  IF ~~ THEN REPLY #62883 /* ~«Может, оно и так. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62884 /* ~«Возможно, ты права. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62885 /* ~«Поговорим об этом в другой раз. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 361 // from: 347.0
  SAY #62886 /* ~«Ах, так мне и надо, — Падшая Грация улыбается. — Скажу лишь одно: чувства могут смещать даже планы, и нет ничего истиннее, чем *чувства* одного человека к другому».~ */
  IF ~~ THEN REPLY #62887 /* ~«Может, оно и так. Я хотел бы поговорить о кое-ком еще...»~ */ GOTO 279
  IF ~~ THEN REPLY #62888 /* ~«Возможно, ты права. У меня есть другие вопросы...»~ */ GOTO 139
  IF ~~ THEN REPLY #62889 /* ~«Поговорим об этом в другой раз. Идем».~ */ EXIT
END

IF ~~ THEN BEGIN 362 // from:
  SAY #63241 /* ~«Тысячи».~ [FFG299] */
  IF ~~ THEN EXTERN ~BMORTE~ 33
END

IF ~~ THEN BEGIN 363 // from:
  SAY #63245 /* ~«Знаешь, Морт, на некоторых планах шутников жгут вместо дров».~ [FFG300] */
  IF ~~ THEN EXTERN ~BMORTE~ 35
END

IF ~~ THEN BEGIN 364 // from:
  SAY #63246 /* ~«Похоже, твоя невезучесть затронула нас всех».~ [FFG301] */
  IF ~~ THEN EXTERN ~BMORTE~ 37
END

IF ~~ THEN BEGIN 365 // from:
  SAY #63248 /* ~«Нет, она не привлекательна. Но может запросто стать прекрасной».~ [FFG322] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 366 // from:
  SAY #63469 /* ~«Полагаю, что столько, сколько мне будет разрешено».~ [FFG317] */
  IF ~~ THEN EXTERN ~BANNAH~ 17
END

IF ~~ THEN BEGIN 367 // from:
  SAY #63470 /* ~«Не знаю, захочу ли я вернутся назад».~ [FFG318] */
  IF ~~ THEN EXTERN ~BANNAH~ 19
END

IF ~~ THEN BEGIN 368 // from:
  SAY #63471 /* ~«Я буду осторожна. Уверяю тебя, у меня нет такой потребности».~ [FFG319] */
  IF ~~ THEN EXTERN ~BANNAH~ 21
END

IF ~~ THEN BEGIN 369 // from:
  SAY #63472 /* ~«Не все, Анна. Освободи свой разум. Ведь в тебе тоже течет кровь нечистого, тем не менее, в тебе много хороших качеств».~ [FFG319A] */
  IF ~~ THEN EXTERN ~BANNAH~ 22
END

IF ~~ THEN BEGIN 370 // from:
  SAY #63473 /* ~«Анна, ревность — обоюдоострое оружие. Если ты будешь продолжать...»~ [FFG320] */
  IF ~~ THEN EXTERN ~BANNAH~ 24
END

IF ~~ THEN BEGIN 371 // from:
  SAY #63474 /* ~«Ну и хорошо».~ [FFG320A] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from:
  SAY #63475 /* ~«Анна, послушай, нам надо...»~ [FFG321] */
  IF ~~ THEN EXTERN ~BANNAH~ 26
END

IF ~~ THEN BEGIN 373 // from:
  SAY #63697 /* ~«Морт, хватит».~ [FFG332] */
  IF ~~ THEN EXTERN ~DMORTE~ 642
END

IF ~~ THEN BEGIN 374 // from:
  SAY #63698 /* ~«О? А сюда входят модроны?»~ [FFG302] */
  IF ~~ THEN EXTERN ~BNORDOM~ 28
END

IF ~~ THEN BEGIN 375 // from:
  SAY #63699 /* ~«Почему? Кто тебе такое сказал, дорогой Нордом?»~ [FFG303] */
  IF ~~ THEN EXTERN ~DMORTE~ 644
END

IF ~~ THEN BEGIN 376 // from:
  SAY #63700 /* ~«Прошу прощения?»~ [FFG333] */
  IF ~~ THEN EXTERN ~BNORDOM~ 31
END

IF ~~ THEN BEGIN 377 // from:
  SAY #63701 /* ~«Прошу прощения?»~ [FFG334] */
  IF ~~ THEN EXTERN ~BNORDOM~ 33
END

IF ~~ THEN BEGIN 378 // from:
  SAY #63702 /* ~«Почему... Я нахожу его удобным. К тому же, мне нравятся крылья».~ [FFG334A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 34
END

IF ~~ THEN BEGIN 379 // from:
  SAY #63703 /* ~«Нордом, ты пытаешься ухаживать за мной?»~ [FFG334B] */
  IF ~~ THEN EXTERN ~BNORDOM~ 35
END

IF ~~ THEN BEGIN 380 // from:
  SAY #63860 /* ~«Подобные 'грехи' не нарушают законов танарри, Вейлор. Мой путь — мой собственный, и выбран по доброй воле, а не в наказание».~ [FFG304] */
  IF ~~ THEN EXIT
END

IF ~  Global("Fortress_Grace","GLOBAL",3)
~ THEN BEGIN 381 // from:
  SAY #68209 /* ~Когда твоя сила касается Падшей Грации, она неуверенно встает на ноги. Даже будучи дезориентированной, ей каким-то образом удается сохранять хладнокровие.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68210 /* ~«Падшая Грация, мы в Крепости сожалений, и я нашел своего убийцу. Это моя собственная смертность: она решила жить сама по себе. Мне действительно нужна твоя помощь, прямо сейчас».~ */ DO ~SetGlobal("Fortress_Grace","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 382
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68354 /* ~ПАДШАЯ ГРАЦИЯ.~ */ GOTO 383
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #68211 /* ~Она медленно кивает. Похоже, к ней возвращается сила, когда она слышит твои слова. «Боюсь, что теперь, когда мы уже вошли, это место не отпустит нас так просто».~ [FFG070] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68212 /* ~«Посмотрим...»~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68213 /* ~«Посмотрим...»~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68214 /* ~«Посмотрим...»~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68215 /* ~«Посмотрим...»~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68242 /* ~«Посмотрим...»~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68435 /* ~«Посмотрим...»~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68436 /* ~«Посмотрим...»~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68445 /* ~«Посмотрим...»~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 383 // from: 381.1
  SAY #68355 /* ~Падшая Грация поднимает взгляд и на миг заглядывает тебе в глаза. Затем она улыбается, но улыбка еле видна, и несет в себе больше печали, чем что либо иное. «Твой голос... Значит, ты наконец нашел себя?»~ */
  IF ~~ THEN REPLY #68356 /* ~ДА. ЦЕНА БЫЛА... ВЫСОКА. МНОЖЕСТВО ЖИЗНЕЙ, ВКЛЮЧАЯ МОЮ И ЖИЗНИ ДРУГИХ.~ */ GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #68357 /* ~«Такие вещи редко измеряются в медяках, — Падшая Грация рассматривает твое лицо. — Ты все еще...»~ */
  IF ~~ THEN REPLY #68358 /* ~Я ВСЕ ЕЩЕ ТОТ, КОГО ТЫ ЗНАЕШЬ, НО МОИ ВЗГЛЯДЫ... ИЗМЕНИЛИСЬ. Я НЕ ЗАБЫЛ ТЕБЯ, ЕСЛИ ТЫ ЭТОГО БОИШЬСЯ.~ */ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #68359 /* ~Падшая Грация снова улыбается все той же печальной улыбкой. «Нет, это был не мой страх».~ */
  IF ~~ THEN REPLY #68360 /* ~Я БОЛЬШЕ НЕ МОГУ ЗДЕСЬ ОСТАВАТЬСЯ. МЕНЯ ЖДЕТ НАКАЗАНИЕ, И СКОРО СЮДА ПРИДУТ ВРЕМЯ И СУДЬБА. Я ВЕРНУ ТЕБЯ В СИГИЛ, ЕСЛИ ХОЧЕШЬ.~ */ GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #68361 /* ~«Я не этого желаю». Падшая Грация протягивает руку и легонько касается твоей руки. Чувствуется легкое покалывание, едва ощутимое — а затем она убирает руку. «Я *найду* тебя снова, где бы на Нижних планах ты не находился. Точно так же ты сможешь разыскать меня».~ */
  IF ~~ THEN REPLY #68362 /* ~МОЖЕТ ПРОЙТИ МНОГО ВРЕМЕНИ. ТАМ, КУДА Я НАПРАВЛЯЮСЬ, ВРЕМЯ ИЗМЕРЯЕТСЯ НЕ ГОДАМИ. А ПРЕСТУПЛЕНИЕ, КОТОРЫЕ Я СОВЕРШИЛ, СИЛЬНЕЕ ЛЮБОЙ КЛЕТКИ.~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #68363 /* ~«Никакая клетка не разделит нас, никакой план не станет нам преградой, — лицо Падшей Грации каменеет. — Помни меня, и мы еще увидимся».~ */
  IF ~~ THEN REPLY #68364 /* ~Я НЕ ЗАБУДУ ВСЕГО ТОГО, ЧЕМ ТЫ РАДИ МЕНЯ ПОЖЕРТВОВАЛА.~ */ GOTO 388
END

IF ~~ THEN BEGIN 388 // from: 387.0
  SAY #68365 /* ~Она качает головой. «Просто не забывай меня».~ */
  IF ~~ THEN REPLY #68366 /* ~ВРЕМЯ ГУБИТ ВСЕ. НО Я БУДУ БОРОТЬСЯ С НИМ СТОЛЬКО, СКОЛЬКО СМОГУ.~ */ GOTO 389
END

IF ~~ THEN BEGIN 389 // from: 388.0
  SAY #68367 /* ~«Не время твой враг. Твой враг — вечность».~ [FFG196] */
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68368 /* ~НАВЕРНО, ТАК И ЕСТЬ. ПРОЩАЙ, ГРАЦИЯ.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68369 /* ~НАВЕРНО, ТАК И ЕСТЬ. ПРОЩАЙ, ГРАЦИЯ.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68370 /* ~НАВЕРНО, ТАК И ЕСТЬ. ПРОЩАЙ, ГРАЦИЯ.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68371 /* ~НАВЕРНО, ТАК И ЕСТЬ. ПРОЩАЙ, ГРАЦИЯ.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68499 /* ~НАВЕРНО, ТАК И ЕСТЬ. ПРОЩАЙ, ГРАЦИЯ.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68500 /* ~НАВЕРНО, ТАК И ЕСТЬ. ПРОЩАЙ, ГРАЦИЯ.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68501 /* ~НАВЕРНО, ТАК И ЕСТЬ. ПРОЩАЙ, ГРАЦИЯ.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Grace","GLOBAL",4)
~ THEN BEGIN 390 // from:
  SAY #68416 /* ~Грация кивает в ответ на твои слова. «Боюсь, что теперь, когда мы уже вошли, это место не отпустит нас так просто».~ [FFG070] */
  IF ~~ THEN REPLY #68417 /* ~«Это мы еще посмотрим. Давай-ка сперва позаботимся о моей смертности...»~ */ EXIT
END
