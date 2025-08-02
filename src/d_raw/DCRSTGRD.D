// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTGRD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",900)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1536 /* ~Перед тобой один из стражников Проклятого. Он весь в крови и тяжело дышит. «Нет времени на разговоры. Есть свободен — помоги нам с... обороной». Он машет тебе рукой, как бы отпуская.~ */
  IF ~~ THEN REPLY #58830 /* ~«Что произошло?»~ */ GOTO 1
  IF ~~ THEN REPLY #58832 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1538 /* ~«А вот что: какой-то долбаный идиот что-то там освободил, и тут мы — в Карцери, деремся за свою жизнь. Вали отсюда и займись чем-нибудь полезным».~ */
  IF ~~ THEN REPLY #58831 /* ~«Тогда прощай».~ */ EXIT
END

IF WEIGHT #1 ~  Global("Current_Area","GLOBAL",900)
NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #1539 /* ~«Разве я не сказал тебе заниматься своими делами? Я на полном серьезе! Проваливай!»~ */
  IF ~~ THEN REPLY #58833 /* ~«Ладно, ладно».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 3 // from:
  SAY #1540 /* ~«Что ты, во имя Девяти Преисподних, тут делаешь?»~ */
  IF ~~ THEN REPLY #58834 /* ~«Я просто прогуливаюсь».~ */ GOTO 5
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58835 /* ~«А что ты можешь сказать об этих доспехах?»~ */ GOTO 6
  IF ~~ THEN REPLY #58836 /* ~«Я ищу дэва».~ */ GOTO 7
  IF ~~ THEN REPLY #58837 /* ~«Ничего. Прощай».~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY #1541 /* ~«Ни с места!» Стражник бросается в атаку!~ */
  IF ~~ THEN REPLY #58838 /* ~Сражаться.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58839 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 6.1
  SAY #58840 /* ~«Прогуливаешься? В тюрьме? Ты хочешь устроить побег!» Он взмахивает оружием!~ */
  IF ~~ THEN REPLY #58858 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58859 /* ~Сражаться.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #58841 /* ~«Не знаю. Они были частью тюрьмы все время, сколько себя помню. Что бы мы не делали, открыть камеру не получалось. Да, неплохие доспехи, но добраться до них мы не можем. Теперь твоя очередь отвечать на вопросы: что ты здесь делаешь?»~ */
  IF ~~ THEN REPLY #58860 /* ~«Ищу дэва».~ */ GOTO 7
  IF ~~ THEN REPLY #58861 /* ~«Я просто прогуливаюсь».~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 3.2 6.0
  SAY #58842 /* ~Он улыбается. «Тогда ты очень скоро присоединишься к хору небожителей, пень». Он хватает свое оружие и бросается в атаку!~ */
  IF ~~ THEN REPLY #58862 /* ~Сражаться.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58863 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 23 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #58843 /* ~Перед тобой представитель правопорядка Проклятого. Похоже, он немного заскучал. «Чего тебе надо? Ты разве не знаешь, что здесь карантин?»~ */
  IF ~~ THEN REPLY #58864 /* ~«Что ты можешь рассказать об этом месте?»~ */ GOTO 10
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58865 /* ~«Женщина по имени Роберта собирается убить своего мужа Карла. Кажется, он — один из помощников бюргера».~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #58866 /* ~«Я пришел сознаться в убийстве Карла Парфидора».~ */ GOTO 13
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",700)
~ THEN REPLY #58867 /* ~«Один из служащих города попросил меня убить другого. Я решил, что лучше предупредить вас».~ */ GOTO 14
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58868 /* ~«Я хочу, чтобы ты арестовал меня».~ */ GOTO 15
  IF ~~ THEN REPLY #58869 /* ~«Я ищу дэва».~ */ GOTO 16
  IF ~~ THEN REPLY #58870 /* ~«Я бы хотел увидеть главного».~ */ GOTO 11
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",701)
~ THEN REPLY #58871 /* ~«Один из служащих города попросил меня убить другого. Я решил, что лучше предупредить вас».~ */ GOTO 22
  IF ~~ THEN REPLY #58929 /* ~«Ничего. Прощай».~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 23 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from: 10.0 11.0 12.1 13.1 14.0 15.2 16.0 17.1 22.0
  SAY #58844 /* ~«Что на этот раз?»~ */
  IF ~~ THEN REPLY #58872 /* ~«Что ты можешь рассказать об этом месте?»~ */ GOTO 10
  IF ~~ THEN REPLY #58873 /* ~«Я бы хотел увидеть главного».~ */ GOTO 11
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58874 /* ~«Женщина по имени Роберта собирается убить своего мужа Карла. Кажется, он — один из помощников бюргера».~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #58875 /* ~«Я пришел сознаться в убийстве Карла Парфидора».~ */ GOTO 13
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",700)
~ THEN REPLY #58876 /* ~«Один из служащих города попросил меня убить другого. Я решил, что лучше предупредить вас».~ */ GOTO 14
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58877 /* ~«Я хочу, чтобы ты арестовал меня».~ */ GOTO 15
  IF ~~ THEN REPLY #58878 /* ~«Я ищу дэва».~ */ GOTO 16
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",701)
~ THEN REPLY #58879 /* ~«Один из служащих города попросил меня убить другого. Я решил, что лучше предупредить вас».~ */ GOTO 22
  IF ~~ THEN REPLY #58932 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #58845 /* ~«Из-за чумы мы теперь все под карантином. Не знаю, откуда она пошла, но мы изолировали все районы города до выяснения ситуации. Еще что-нибудь?»~ */
  IF ~~ THEN REPLY #58880 /* ~«У меня еще несколько вопросов...»~ */ GOTO 9
  IF ~~ THEN REPLY #58881 /* ~«Нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.6 9.1 17.0
  SAY #58846 /* ~«Кого, бюргера? Он в административном здании. Могу лишь пожелать тебе удачи. В последние дни он *никого* не принимает. Его разум явно занят чем-то другим...»~ */
  IF ~~ THEN REPLY #58882 /* ~«У меня еще несколько вопросов...»~ */ GOTO 9
  IF ~~ THEN REPLY #58883 /* ~«Тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1 9.2
  SAY #58847 /* ~«Госпожа Роберта? — от напряженных раздумий на его лбу возникает глубокая складка. — Мы займемся этим». Он отворачивается. «Ах, да. Спасибо».~ */
  IF ~~ THEN REPLY #58884 /* ~«Эй, а разве за это не положена награда?»~ */ GOTO 17
  IF ~~ THEN REPLY #58885 /* ~«У меня еще несколько вопросов...»~ */ GOTO 9
  IF ~~ THEN REPLY #58886 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.2 9.3
  SAY #58848 /* ~«Это не тема для шуток. Мы всерьез занялись обстоятельствами его смерти. Кто бы это ни сделал, в тюрьме он проведет очень, очень долгий срок».~ */
  IF ~~ THEN REPLY #58887 /* ~«Я серьезно. Это я убил его».~ */ GOTO 18
  IF ~~ THEN REPLY #58888 /* ~«Ой, прошу прощения, это была шутка. У меня еще вопросы...»~ */ GOTO 9
  IF ~~ THEN REPLY #58889 /* ~«Ой, прошу прощения. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.3 9.4
  SAY #58849 /* ~Он качает головой. «Может быть, я покажусь для тебя глупым, пень, но я не хочу впутываться в политические интриги. Я дорожу своей работой... и жизнью. Подойди с этим к капитану».~ */
  IF ~~ THEN REPLY #58890 /* ~«Хорошо. Тогда у меня к тебе есть еще вопросы».~ */ GOTO 9
  IF ~~ THEN REPLY #58891 /* ~«Тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4 9.5
  SAY #58850 /* ~«Арестовал? За что?»~ */
  IF ~~ THEN REPLY #58892 /* ~«Я просто хочу попасть в тюрьму».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CurstGuard_1","GLOBALLaw",-3)
~ GOTO 19
  IF ~~ THEN REPLY #58893 /* ~«Потому что я окончательно тронулся! Каля-баля, у-ха-ха!»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CurstGuard_1","GLOBALLaw",-3)
~ GOTO 20
  IF ~~ THEN REPLY #58894 /* ~«Забудь. Лучше ответь мне на другие вопросы...»~ */ GOTO 9
  IF ~~ THEN REPLY #58895 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.5 9.6
  SAY #58851 /* ~«Тогда ты начал не с того края Великого Кольца, пень, потому что здесь их отродясь не было, и тут ты ни одного не найдешь. Иначе его бы упекли получше, чем скряга прячет золото».~ */
  IF ~~ THEN REPLY #58896 /* ~Тогда ладно. У меня есть пара вопросов...~ */ GOTO 9
  IF ~~ THEN REPLY #58897 /* ~«Тогда забудь об этом. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.0
  SAY #58852 /* ~Он ухмыляется. «Добродетель — сама по себе награда, не так ли? Хочешь что-нибудь сверх этого — иди поговори с кем-нибудь из главных».~ */
  IF ~~ THEN REPLY #58898 /* ~«Тогда я бы хотел поговорить с кем-нибудь из главных».~ */ GOTO 11
  IF ~~ THEN REPLY #58899 /* ~«Отлично. У меня есть несколько вопросов...»~ */ GOTO 9
  IF ~~ THEN REPLY #58900 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.0
  SAY #58853 /* ~«Сам пойдешь, или придется по-плохому?»~ */
  IF ~~ THEN REPLY #58901 /* ~«Я пойду сам».~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #58902 /* ~«Нам придется сразиться».~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0
  SAY #58854 /* ~«Ну, если ты так настаиваешь. Пошли».~ */
  IF ~~ THEN REPLY #58903 /* ~«Я передумал. Забудь об этом».~ */ GOTO 21
  IF ~~ THEN REPLY #58904 /* ~«Ладно, пошли».~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY #58855 /* ~«Ладно, ты меня убедил. Пошли».~ */
  IF ~~ THEN REPLY #58905 /* ~«Я передумал. Забудь об этом».~ */ GOTO 21
  IF ~~ THEN REPLY #58906 /* ~«Ладно, пошли».~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #58856 /* ~«Уже поздно, пень. Сам пойдешь или нет?»~ */
  IF ~~ THEN REPLY #58908 /* ~«Я пойду сам».~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #58909 /* ~«Нам придется сразиться».~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 8.7 9.7
  SAY #58928 /* ~Он качает головой. «Может быть, я покажусь тебе глупым, пень, но я не хочу впутываться в политические интриги. Я дорожу своей работой... и жизнью. Подойди с этим к капитану. Он у средних городских ворот, ты сразу увидишь его, как попадешь в ту часть города».~ */
  IF ~~ THEN REPLY #58930 /* ~«Хорошо. Тогда у меня еще пара вопросов...»~ */ GOTO 9
  IF ~~ THEN REPLY #58931 /* ~«Тогда прощай».~ */ EXIT
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",702)
Global("Curst_Arrest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #58933 /* ~«Какого... ПОБЕГ!» Стражник бросается в атаку!~ */
  IF ~~ THEN REPLY #58934 /* ~Сражаться.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58935 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
