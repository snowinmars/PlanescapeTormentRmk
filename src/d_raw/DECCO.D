// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DECCO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DECCO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 25 26 37 45 46 even though they appear after this state */
~  GlobalLT("Ecco_Name","AR0605",2)
~ THEN BEGIN 0 // from:
  SAY #38209 /* ~У этой изумительной девушки кожа цвета полированной меди. Белое полупрозрачное платье, лишь слегка удерживаемое золотыми застежками, аккуратно облегает ее стройные формы.~ */
  IF ~  Global("Ecco","GLOBAL",0)
~ THEN REPLY #38269 /* ~«Приветствую...»~ */ DO ~SetGlobal("Ecco","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Ecco","GLOBAL",1)
~ THEN REPLY #38270 /* ~«И снова приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #38271 /* ~Оставить ее в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #2909 /* ~Девушка кивает и слегка улыбается. Твои ноздри наполняет восхитительный запах ее волос.~ */
  IF ~~ THEN REPLY #38272 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #38273 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 5.1 6.4 7.1 10.6 11.1 12.1 13.1 14.1 15.1 16.1 25.0 29.0 30.0 40.0 41.0 42.0 43.1 44.0 45.0 46.0 47.1 49.0 51.1 52.1 53.1 54.0 55.0
  SAY #2910 /* ~Она кивает.~ */
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38274 /* ~«Тебя зовут Экко?»~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~Я убедился, что «молчаливую» проститутку зовут Экко.~ */ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalLT("Ecco_Rumor_6","AR0605",2)
~ THEN REPLY #38276 /* ~«Могу ли я спросить, почему ты не можешь говорить?»~ */ GOTO 10
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38278 /* ~«Ты знаешь хоть *какой-нибудь* способ вернуть твой голос?»~ */ GOTO 21
  IF ~  GlobalLT("Ecco_Name","AR0605",2)
~ THEN REPLY #38279 /* ~«Кто ты?»~ */ GOTO 3
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38283 /* ~«Что ты здесь делаешь?»~ */ GOTO 51
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38284 /* ~«Что ты можешь сказать об этом месте?»~ */ GOTO 47
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38285 /* ~«Что ты можешь сказать об этом месте?»~ */ GOTO 5
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Know_Ravel","GLOBAL",1)
Global("Know_Kesai_Ravel","AR0605",0)
~ THEN REPLY #38286 /* ~«Ты что-нибудь знаешь о Равель Заморочке?»~ */ GOTO 48
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #38287 /* ~«Ты что-нибудь знаешь о Равель Заморочке?»~ */ GOTO 8
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Scent_Quest","AR0605",1)
~ THEN REPLY #38290 /* ~«Я пытаюсь найти аромат Вивьен... Ты не знаешь, где он может быть?»~ */ JOURNAL #66727 /* ~Одна из проституток посоветовала мне расспросить Ненни, не знает ли она, кто забрал личный аромат Вивьен. Очевидно, что у Ненни репутация вездесущей и следящей за всеми девушки.~ */ GOTO 30
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Scent_Quest","AR0605",1)
~ THEN REPLY #38291 /* ~«Я пытаюсь найти аромат Вивьен... Ты не знаешь, где он может быть?»~ */ GOTO 29
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Veil_Quest","AR0605",1)
~ THEN REPLY #38292 /* ~«Я пытаюсь найти малиновую вуаль Мариссы... Ты не знаешь, где она может быть?»~ */ JOURNAL #66728 /* ~Одна из проституток посоветовала мне расспросить Ненни, не видела ли она где-нибудь малиновую вуаль Мариссы. Очевидно, что у Ненни репутация вездесущей и следящей за всеми девушки.~ */ GOTO 30
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Veil_Quest","AR0605",1)
~ THEN REPLY #38293 /* ~«Я пытаюсь найти малиновую вуаль Мариссы... Ты не знаешь, где она может быть?»~ */ GOTO 29
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38294 /* ~«Я переговорил со всеми девятью проститутками... ты не знаешь, кто десятая или где она находится?»~ */ GOTO 53
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38295 /* ~«Я переговорил со всеми девятью проститутками... ты не знаешь, кто десятая или где она находится?»~ */ GOTO 54
  IF ~~ THEN REPLY #38296 /* ~«А вообще, не обращай внимания. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3
  SAY #38210 /* ~Она улыбается и делает реверанс, но не дает ответа.~ */
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38280 /* ~«Тебя зовут Экко?»~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~Я убедился, что «молчаливую» проститутку зовут Экко.~ */ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38297 /* ~«Ты можешь говорить?»~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38281 /* ~«Хмм. У меня еще несколько вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #38298 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 5.0 6.3 9.0 53.0
  SAY #38211 /* ~Она качает головой и печально тебе улыбается тебе.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN JOURNAL #66704 /* ~Одна из проституток, которую я встретил в Борделе, каким-то образом утратила способность разговаривать... она не может (либо не хочет) даже писать или объясняться жестами. Я не смогу задавать ей вопросы, пока к ней не вернется дар речи...~ */ EXTERN ~DMORTE~ 402
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #38299 /* ~«Ну, тогда ты можешь писать или объясняться жестами?»~ */ JOURNAL #66704 /* ~Одна из проституток, которую я встретил в Борделе, каким-то образом утратила способность разговаривать... она не может (либо не хочет) даже писать или объясняться жестами. Я не смогу задавать ей вопросы, пока к ней не вернется дар речи...~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 2.6
  SAY #38212 /* ~Она смотрит на тебя, затем поднимает бровь.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38300 /* ~«Ты можешь говорить?»~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38301 /* ~«У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38302 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.0 21.1
  SAY #38213 /* ~Она кивает, мило улыбаясь.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38303 /* ~Дать клятву: «Клянусь, что найду способ вернуть твой голос».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ecco_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38304 /* ~«Я попытаюсь найти способ вернуть твой голос».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38305 /* ~«Я мог бы попытаться вернуть твой голос... за деньги».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ecco_1","GLOBALGood",-1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",2)
~ GOTO 24
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38306 /* ~«Ты можешь говорить?»~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38307 /* ~«У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #52815 /* ~«Это все, что я желал узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #38214 /* ~Она делает недовольную гримаску, мотая головой.~ */
  IF ~~ THEN REPLY #38308 /* ~«Могу ли я спросить, почему ты не можешь говорить?»~ */ GOTO 10
  IF ~~ THEN REPLY #38309 /* ~«Тем не менее, у меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38310 /* ~«Тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.8
  SAY #38215 /* ~Ее взгляд вспыхивает, и она улыбается. Затем кивает тебе.~ */
  IF ~~ THEN REPLY #38311 /* ~«Что? Что ты знаешь о ней?»~ */ JOURNAL #66724 /* ~Похоже, молчаливая проститутка что-то знает о Равель Заморочке... но поскольку она не может говорить, она не может рассказать мне, что именно она знает.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38216 /* ~Она глупо смотрит на тебя.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38312 /* ~«Ты можешь говорить?»~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #38313 /* ~«Могу ли я спросить, почему ты не можешь говорить?»~ */ GOTO 10
  IF ~~ THEN REPLY #38314 /* ~«Тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 7.0 9.1 11.0 12.0 13.0 14.0 15.0
  SAY #38217 /* ~Она нежно вздыхает и кивает.~ */
  IF ~  Global("Ecco_Rumor_1","AR0605",1)
~ THEN REPLY #38315 /* ~«Ты молчишь из-за того, что тебе разбили сердце?»~ */ DO ~SetGlobal("Ecco_Rumor_1","AR0605",2)
~ GOTO 11
  IF ~  Global("Ecco_Rumor_2","AR0605",1)
~ THEN REPLY #38316 /* ~«Ты знаешь слово, которое погубит мультивселенную, если его произнести?»~ */ DO ~SetGlobal("Ecco_Rumor_2","AR0605",2)
~ GOTO 12
  IF ~  Global("Ecco_Rumor_3","AR0605",1)
~ THEN REPLY #38317 /* ~«Твои чувства ранены? Из-за этого ты не разговариваешь?»~ */ DO ~SetGlobal("Ecco_Rumor_3","AR0605",2)
~ GOTO 13
  IF ~  Global("Ecco_Rumor_4","AR0605",1)
~ THEN REPLY #38318 /* ~«Твой голос стал причиной чьей-то смерти или какой-то другой беды?»~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",2)
~ GOTO 14
  IF ~  Global("Ecco_Rumor_5","AR0605",1)
~ THEN REPLY #38319 /* ~«Ты поклялась больше никогда не говорить по какой-то причине?»~ */ DO ~SetGlobal("Ecco_Rumor_5","AR0605",2)
~ GOTO 15
  IF ~  Global("Ecco_Rumor_6","AR0605",1)
~ THEN REPLY #38320 /* ~«Твой голос был украден?»~ */ DO ~SetGlobal("Ecco_Rumor_6","AR0605",2)
SetGlobal("Ecco_Speak","GLOBAL",2)
~ JOURNAL #66725 /* ~Оказывается, то, что Долора рассказала мне об Экко, было правдой — она не может разговаривать, потому что у нее украли голос.~ */ GOTO 16
  IF ~~ THEN REPLY #38321 /* ~«А вообще, позволь спросить тебя кое о чем еще...»~ */ GOTO 2
  IF ~~ THEN REPLY #38322 /* ~«Не обращай внимания. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #38218 /* ~Она мило улыбается, потом качает головой.~ */
  IF ~~ THEN REPLY #38323 /* ~«Позволь мне тогда спросить кое о чем еще...»~ */ GOTO 10
  IF ~~ THEN REPLY #38324 /* ~«У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38325 /* ~«Это все, что я желал узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #38219 /* ~Ее глаза расширяются от удивления... затем она дарит тебе лучезарную улыбку, закатывает глаза и качает головой.~ */
  IF ~~ THEN REPLY #38326 /* ~«Позволь мне тогда спросить кое о чем еще...»~ */ GOTO 10
  IF ~~ THEN REPLY #38327 /* ~«У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38328 /* ~«Это все, что я желал узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #38220 /* ~Она странно глядит на тебя и медленно качает головой...~ */
  IF ~~ THEN REPLY #38329 /* ~«Позволь мне тогда спросить кое о чем еще...»~ */ GOTO 10
  IF ~~ THEN REPLY #38330 /* ~«У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38331 /* ~«Это все, что я желал узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #38221 /* ~Она останавливается, раскрывает рот, затем нахмуривается. Мгновение спустя она качает головой.~ */
  IF ~~ THEN REPLY #38332 /* ~«Позволь мне тогда спросить кое о чем еще...»~ */ GOTO 10
  IF ~~ THEN REPLY #38333 /* ~«У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38334 /* ~«Это все, что я желал узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #38222 /* ~Она хмурится и мотает головой.~ */
  IF ~~ THEN REPLY #38335 /* ~«Позволь мне тогда спросить кое о чем еще...»~ */ GOTO 10
  IF ~~ THEN REPLY #38336 /* ~«У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38337 /* ~«Это все, что я желал узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.5
  SAY #38223 /* ~Она энергично кивает, сложив ладони вместе и улыбаясь тебе.~ */
  IF ~~ THEN REPLY #38338 /* ~«Ты знаешь хоть *какой-нибудь* способ вернуть твой голос?»~ */ GOTO 21
  IF ~~ THEN REPLY #38339 /* ~«У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38340 /* ~«Это все, что я желал узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #38224 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #38225 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #38226 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #38227 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 2.2 16.0
  SAY #38228 /* ~Она качает головой, на лице ее написано разочарованием. Внезапно она бросает на тебя умоляющий взгляд, как бы ожидая ответ.~ */
  IF ~  Global("Ecco_Name","AR0605",0)
~ THEN REPLY #38349 /* ~«Чтобы спросить о твоем голосе, мне нужно знать твое имя...»~ */ GOTO 22
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38350 /* ~«Чтобы спросить о твоем голосе, мне нужно знать твое имя. Тебя ведь Экко зовут?»~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~Я убедился, что «молчаливую» проститутку зовут Экко.~ */ GOTO 6
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38351 /* ~Дать клятву: «Клянусь, что найду способ вернуть твой голос».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ecco_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38352 /* ~«Я попытаюсь найти способ вернуть твой голос».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38353 /* ~«Я мог бы попытаться вернуть твой голос... за деньги».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ecco_1","GLOBALGood",-1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",2)
~ GOTO 24
  IF ~~ THEN REPLY #38354 /* ~«Мне... лучше уйти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #38229 /* ~Она пожимает плечами и мрачнеет.~ */
  IF ~~ THEN REPLY #38357 /* ~«Тогда мне лучше спросить кого-нибудь другого. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 6.0 6.1 21.2 21.3
  SAY #38230 /* ~Экко медленно кивает, улыбаясь тебе. Ее глаза наполнены благодарностью.~ */
  IF ~~ THEN REPLY #38358 /* ~«Тогда я поищу что-нибудь, что вернет тебе голос. Прощай, Экко».~ */ JOURNAL #66726 /* ~Я сказал Экко, что попытаюсь найти что-нибудь, что вернет ее голос.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 6.2 21.4
  SAY #38231 /* ~Экко нахмуривается и глядит на тебя, сузив глазами. Некоторое время она смотрит в сторону, затем вздыхает и кивает тебе.~ */
  IF ~~ THEN REPLY #38359 /* ~«Тогда договорились: я поищу что-нибудь, что вернет тебе голос. Прощай».~ */ JOURNAL #66726 /* ~Я сказал Экко, что попытаюсь найти что-нибудь, что вернет ее голос.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 37 45 46 even though they appear after this state */
~  Global("Ecco_Name","AR0605",2)
~ THEN BEGIN 25 // from:
  SAY #38232 /* ~При твоем приближении Экко делает реверанс, ее аккуратно накрашенные губы образуют легчайшую улыбку.~ */
  IF ~~ THEN REPLY #38360 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #38361 /* ~«Экко, я просто проходил мимо. Прощай».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 37 45 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #38233 /* ~Когда ты подходишь, Экко смотрит на тебя с надеждой, закусив нижнюю губу.~ */
  IF ~  PartyHasItem("Ftongue")
~ THEN REPLY #38362 /* ~«Я достал для тебя язык нечистого...»~ */ DO ~DestroyPartyItem("Ftongue",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",4)
~ GOTO 31
  IF ~~ THEN REPLY #38364 /* ~«Я еще не нашел способ вернуть тебе голос. Вернусь, когда найду».~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #38234 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #38235 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.10 2.12
  SAY #38236 /* ~Она качает головой, пожимает плечами и виновато смотрит на тебя.~ */
  IF ~~ THEN REPLY #38368 /* ~«В таком случае, позволь мне спросить кое о чем еще...»~ */ GOTO 2
  IF ~~ THEN REPLY #38369 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 2.9 2.11
  SAY #38237 /* ~Экко мотает головой. «Нет, понятия не имею. Ты говорил с Ненни? Она тут вечно бродит, осматривая все своими глазищами».~ */
  IF ~~ THEN REPLY #38370 /* ~«У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38371 /* ~«А теперь я должен идти, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.0
  SAY #38238 /* ~Она поднимает бровь и скептически смотрит на тебя.~ */
  IF ~~ THEN REPLY #38372 /* ~«Мне сказали, что как только ты положишь его в рот, к тебе вернется способность разговаривать».~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #38239 /* ~Она кивает и берет у тебя сосуд. Она осторожно вынимает отрезанный язык из соленого раствора и, посмотрев на него с отвращением, кладет себе в рот... Неожиданно ее глаза расширяются, и сквозь ее губы пробивается вспышка красноватого света!~ */
  IF ~~ THEN REPLY #38373 /* ~«Ты в порядке?»~ */ GOTO 33
  IF ~~ THEN REPLY #38374 /* ~Подождать, пока она ответит.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #38240 /* ~Экко раскрывает рот, закрывает его, потом снова открывает... и начинает говорить! «Я... я снова могу говорить! Какое счастье! А теперь... ЧТОБ ТЫ ПРОВАЛИЛСЯ В САМУ ПРЕИСПОДНЮЮ, ТЫ, ЗЛОВОННЫЙ ЧЕРВЬ! НА КОЛЕНИ ПРЕДО МНОЙ, НАСЕКОМОЕ!»~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 403
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #38375 /* ~«А?»~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #38241 /* ~Экко взвизгивает и прикрывает рот обеими руками... Ее глаза расширяются от ужаса.~ */
  IF ~~ THEN REPLY #38376 /* ~«Должно быть... это из-за языка нечистого...»~ */ JOURNAL #66729 /* ~Я дал Экко язык нечистого, который, как сказала мне Вришика, даст любому существу способность говорить. Однако, он дал неутешительные результаты... похоже, язык еще много чего может сказать, и Экко этому не рада. Теперь мне нужно найти что-нибудь *еще*, что могло бы снять эффекты языка нечистого... пожалуй, на очереди еще один визит в магазин Вришики.~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #38242 /* ~Она медленно убирает руки со рта и кивает. «Кажется, я должна СОЖРАТЬ ТВОЮ ХИЛУЮ ОБОЛОЧКУ И БРОСИТЬ ТВОЮ ДУШОНКУ В БЕЗДНУ НА ВЕКА! ТЫ БУДЕШЬ СЛУЖИТЬ РАБОМ В МОЕМ ВОЙСКЕ, ПОКА ПЛАНЫ НЕ СОТРУТСЯ В ПОРОШОК! ТЫ МОЙ, МОЙ, МО...» Экко снова закрывает себе рот и начинает тихонько плакать.~ */
  IF ~  PartyHasItem("Dtears")
~ THEN REPLY #66730 /* ~«Постой... попробуй эти слезы дэва... они должны утихомирить твой язык».~ */ DO ~DestroyPartyItem("Dtears",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",5)
AddexperienceParty(30000)
~ JOURNAL #66732 /* ~Я дал Экко слезы дэва, которые успокоили язык нечистого и позволили ей вновь говорить нормально. Теперь она может ответить на все вопросы, которые у меня имеются...~ */ GOTO 38
  IF ~  Global("CW_Saw_Tears","GLOBAL",1)
!PartyHasItem("Dtears")
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #66731 /* ~«Постой... Думаю, что я видел в антикварном магазине Вришики то, что может тебе помочь, — слезы дэва. Только они недешевые...»~ */ DO ~SetGlobal("Ecco_Note","AR0605",1)
GiveItemCreate("EcNote",Protagonist,1,0,0)
~ JOURNAL #66733 /* ~Я рассказал Экко про слезы дэва, которые я увидел в магазине Вришики, и она дала мне долговое обязательство, чтобы я смог купить их для нее.~ */ GOTO 39
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",1)
~ THEN REPLY #38377 /* ~«Я попытаюсь исправить это дело: возможно, у Вришики есть что-нибудь еще, что может помочь тебе. Прощай».~ */ EXIT
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38378 /* ~«Ну, теперь ты можешь говорить... вроде как... так где же моя награда?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ecco_1","GLOBALLaw",-1)
~ GOTO 36
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38379 /* ~«Полагаю, я не получу вознаграждение, пока не доведу дело до конца. Я вернусь... быть может, у Вришики есть что-нибудь еще, что сможет тебе помочь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.3
  SAY #38243 /* ~Экко бросает на тебя пронизывающий взгляд, губы ее искривляются в презрительной усмешке.~ */
  IF ~~ THEN REPLY #38380 /* ~«Полагаю, я не получу вознаграждение, пока не доведу дело до конца. Я вернусь... быть может, у Вришики есть что-нибудь еще, что сможет тебе помочь. Прощай».~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 45 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",4)
~ THEN BEGIN 37 // from:
  SAY #38244 /* ~При твоем приближение Экко кивает тебе с надеждой.~ */
  IF ~  PartyHasItem("Dtears")
~ THEN REPLY #38381 /* ~«Я принес тебе эти слезы дэва... они должны успокоить твой язык».~ */ DO ~DestroyPartyItem("Dtears",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",5)
AddexperienceParty(30000)
~ JOURNAL #66732 /* ~Я дал Экко слезы дэва, которые успокоили язык нечистого и позволили ей вновь говорить нормально. Теперь она может ответить на все вопросы, которые у меня имеются...~ */ GOTO 38
  IF ~  Global("CW_Saw_Tears","GLOBAL",1)
!PartyHasItem("Dtears")
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38382 /* ~«Экко... Я нашел то, что тебе поможет... это слезы дэва из антикварного магазина Вришики. Вот только они недешевые...»~ */ DO ~SetGlobal("Ecco_Note","AR0605",1)
GiveItemCreate("EcNote",Protagonist,1,0,0)
~ JOURNAL #66733 /* ~Я рассказал Экко про слезы дэва, которые я увидел в магазине Вришики, и она дала мне долговое обязательство, чтобы я смог купить их для нее.~ */ GOTO 39
  IF ~~ THEN REPLY #38383 /* ~«Я пока что не нашел способа помочь тебе... Я вернусь, как только найду».~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.0 37.0
  SAY #38245 /* ~Она кивает, улыбаясь, и берет у тебя пузырек. Экко роняет себе на язык несколько сверкающих голубых капель: «Кажется... Кажется, слезы действуют. Да... так и есть! Я снова могу говорить своим собственным голосом... о, как же я тебе благодарна!» Она сжимает твою руку и в благодарности склоняет голову, глаза ее наполняются слезами радости.~ */
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",1)
~ THEN REPLY #38384 /* ~«Был рад помочь. Прощай, Экко».~ */ EXIT
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38385 /* ~«Был рад помочь. Прощай, Экко».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_2","GLOBALGood",1)
~ EXIT
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38386 /* ~«Рад был помочь... вот только слезы дэва обошлись мне недешево...»~ */ DO ~GivePartyGold(1000)
~ GOTO 40
  IF ~  Global("Ecco_Quest","AR0605",2)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38387 /* ~«Пожалуйста... и забудь о награде, Экко. Я рад, что смог тебе помочь».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
GivePartyGold(1000)
~ GOTO 41
  IF ~  Global("Ecco_Quest","AR0605",2)
Global("Ecco_Note","AR0605",1)
~ THEN REPLY #38388 /* ~«Пожалуйста... и забудь о награде, Экко. Я рад, что смог тебе помочь».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
~ GOTO 42
  IF ~  Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38389 /* ~«Да не за что... как там на счет моей награды...»~ */ DO ~GivePartyGold(500)
~ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 35.1 37.1
  SAY #38246 /* ~Экко кивает и достает из своих одежд клочок бумаги... Он оказывается долговым обязательством на сумму в тысячу монет, которую его владелец может потребовать от Борделя. Она вопрошающе смотрит на тебя.~ */
  IF ~~ THEN REPLY #38390 /* ~«Да... этого будет достаточно. Я вернусь, когда раздобуду слезы, Экко».~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY #38247 /* ~«О... Я об этом не подумала! Да, да... вот... — Экко достает из кошелька несколько обернутых в пергамент стопок медных монет. — Этого должно быть более чем достаточно. И еще раз, спасибо тебе!» Она дарит тебе теплую улыбку.~ */
  IF ~~ THEN REPLY #66735 /* ~«Ну конечно. А теперь у меня другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38391 /* ~«Прощай, Экко».~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.3
  SAY #38248 /* ~Экко сияет от счастья: «Еще раз, спасибо! — она подходит вплотную, чтобы шепнуть тебе что-то на ухо; аромат ее духов опьяняет... — Твоя внешность противоречит твоей великой доброте, — она целует тебя в щеку и отступает, доставая что-то из кошелька. — Вот, друг мой... тут в любом случае должно быть больше, чем ты заплатил за слезы. Я настаиваю, чтобы ты взял их».~ */
  IF ~~ THEN REPLY #66736 /* ~«Спасибо. А теперь у меня другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38392 /* ~«Спасибо, Экко. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 38.4
  SAY #38249 /* ~Экко сияет от счастья: «Еще раз, спасибо! — она подходит вплотную, чтобы шепнуть тебе что-то на ухо; аромат ее духов опьяняет... — Твоя внешность противоречит твоей великой доброте, — она целует тебя в щеку и отступает, улыбаясь.~ */
  IF ~~ THEN REPLY #66737 /* ~«Спасибо. А теперь у меня другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38393 /* ~«Спасибо, Экко. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 38.5
  SAY #38250 /* ~Экко кивает, утирая слезы. Она вынимает из кошелька и дает тебе несколько обернутых в пергамент стопок медных монет. «Твоя награда, сэр... честно заработанная».~ */
  IF ~  Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38386 /* ~«Рад был помочь... вот только слезы дэва обошлись мне недешево...»~ */ DO ~GivePartyGold(999)
SetGlobal("Ecco","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #66738 /* ~«Спасибо. А теперь у меня другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38395 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #38251 /* ~Она кивает. «Конечно, — голос ее совершенно спокоен. — Держи». Она дает тебе еще несколько стопок монет.~ */
  IF ~~ THEN REPLY #66739 /* ~«Спасибо. А теперь у меня другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38396 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",5)
GlobalLT("Ecco","GLOBAL",3)
~ THEN BEGIN 45 // from:
  SAY #38252 /* ~Экко весело махает тебе, когда ты подходишь к ней. «Приветствую, сэр, еще раз добро пожаловать!»~ */
  IF ~~ THEN REPLY #38397 /* ~«Привет, Экко... У меня есть пара вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #38398 /* ~«Рад встрече, Экко. Я просто проходил мимо. Прощай».~ */ EXIT
END

IF WEIGHT #0 ~  Global("Ecco_Speak","GLOBAL",5)
Global("Ecco","GLOBAL",3)
~ THEN BEGIN 46 // from:
  SAY #38253 /* ~Когда ты подходишь, Экко холодно кивает тебе.~ */
  IF ~~ THEN REPLY #38399 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #38400 /* ~«Я просто проходил мимо. Прощай, Экко».~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.5
  SAY #38254 /* ~«Бордель — это нечто вроде школы, где девушки... «проститутки»... — она выдает кривую улыбку, — изучают искусство общения и все его тонкости, как сказала бы наша госпожа Грация, и как правило, встают на путь становления чувствующим. Бордель существует на пожертвования от клиентов, которые приходят сюда в поисках чего-то большего, чем низменное физическое наслаждение в компании женщины».~ */
  IF ~~ THEN REPLY #38401 /* ~«Чувствующие?»~ */ GOTO 55
  IF ~~ THEN REPLY #38402 /* ~«У меня еще вопрос...»~ */ GOTO 2
  IF ~~ THEN REPLY #38403 /* ~«Это все, что я желал узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 2.7
  SAY #38255 /* ~Экко кивает и понижает голос: «Вообще-то, да... она не просто существует — у нее есть *дети*!»~ */
  IF ~~ THEN REPLY #38404 /* ~«У нее есть *что*?»~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",1)
~ JOURNAL #66734 /* ~Экко сказала мне, что на самом деле у Равель есть живые дети... и что одна из них — Кесай-Серри, одна из проституток Борделя. Также она сказала мне, что Кесай отказывается «принимать этот факт», и не желает подтверждать это.~ */ GOTO 49
  IF ~~ THEN REPLY #38405 /* ~«Где мне их найти?»~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",1)
~ JOURNAL #66734 /* ~Экко сказала мне, что на самом деле у Равель есть живые дети... и что одна из них — Кесай-Серри, одна из проституток Борделя. Также она сказала мне, что Кесай отказывается «принимать этот факт», и не желает подтверждать это.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #38256 /* ~«Одна из них порой бывает здесь... Кесай-Серри. Она — отпрыск Равель, хотя и не желает принимать этот факт. Стоит ли винить ее? — на миг она умолкает, раздумывая. — При мне она так ни разу и не признала этого, но я-то уверена, что это правда».~ */
  IF ~~ THEN REPLY #38406 /* ~«Интересно. У меня еще вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38407 /* ~«Как интересно. Спасибо, Экко. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #38257 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 2.4
  SAY #38258 /* ~«Я здесь ученица, так же как и все «проститутки». Мы стремимся глубже изучить искусство общения, чтобы стимулировать разум... чтобы лучше понимать самих себя и других, и чтобы создать новые способы познания других людей». Она умолкает, сбившись с мысли.~ */
  IF ~~ THEN REPLY #38411 /* ~«Продолжай...»~ */ GOTO 52
  IF ~~ THEN REPLY #38412 /* ~«У меня еще вопрос...»~ */ GOTO 2
  IF ~~ THEN REPLY #38413 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #38259 /* ~«Ну... Я так *долго* была лишена способности говорить. Большинство клиентов приходили ко мне в поисках кого-то, кто бы выслушал их, кого-то внимательного и способного понять их, с кем можно было бы говорить, и чтобы их не перебывали, и так далее. Теперь, когда я снова могу говорить, я начинаю сомневаться: а не время ли мне уйти... покинуть Бордель, и стать чувствующей».~ */
  IF ~~ THEN REPLY #38414 /* ~«Чувствующей?»~ */ GOTO 55
  IF ~~ THEN REPLY #38415 /* ~«Интересно. Позволь мне спросить кое о чем еще...»~ */ GOTO 2
  IF ~~ THEN REPLY #38416 /* ~«Возможно. Прощай, Экко».~ */ EXIT
  IF ~~ THEN REPLY #38417 /* ~«Экко, желаю тебе всего наилучшего, какой бы путь ты не выбрала. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 2.13
  SAY #38260 /* ~Она озадаченно смотрит на тебе, затем качает головой.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38418 /* ~«Ты можешь говорить?»~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38419 /* ~«У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38420 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 2.14
  SAY #38261 /* ~Экко выглядит озадаченной. «Я... не знаю никакой десятой ученицы. Может, она новенькая? Если есть такая, то я ее не встречала».~ */
  IF ~~ THEN REPLY #38421 /* ~«У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38422 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 47.0 52.0
  SAY #38262 /* ~«Чувствующие — это члены Общества Восприятия. Спроси Падшую Грацию, или кого-нибудь в Городском Фестхолле, если хочешь узнать о них больше».~ */
  IF ~~ THEN REPLY #38423 /* ~«У меня есть другие вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #38424 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END
