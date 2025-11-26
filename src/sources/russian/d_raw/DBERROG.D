// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBERROG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBERROG~

IF ~  Global("Current_Area","GLOBAL",704)
Global("Know_Berrog","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3184 /* ~Перед робкий человечек с бегающими испуганными глазами. «Пожалуйста, не бей меня! — он вот-вот заплачет. — Они меня убьют, если найдут!»~ */
  IF ~~ THEN REPLY #3185 /* ~«Кто тебя убьет?»~ */ GOTO 5
  IF ~~ THEN REPLY #56942 /* ~«Кто ты?»~ */ GOTO 6
  IF ~~ THEN REPLY #56943 /* ~«Что ты здесь делаешь?»~ */ GOTO 7
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Berrog","GLOBAL",0)
Global("Cart_Trap","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #56944 /* ~Перед тобой робкий человечек с невинным лицом и слезами, струящимися по щекам. Он попал в ловушку под телегой, которая медленно выдавливает из него жизнь. Его глаза поднимаются на тебя в безмолвной просьбе. «Прошу тебя, дружище... ты должен снять это с меня. Я не могу тут умереть...»~ */
  IF ~~ THEN REPLY #56945 /* ~«Ладно. Я уберу ее с тебя».~ */ GOTO 10
  IF ~~ THEN REPLY #56946 /* ~«Забудь».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Berrog","GLOBAL",1)
Global("Cart_Trap","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #56947 /* ~Перед тобой Беррог Быстроногий, потенциальный спаситель дэва, которого придавило телегой, потерявшей колесо. «Прошу тебя, дружище... ты должен снять ее с меня».~ */
  IF ~~ THEN REPLY #56948 /* ~«Ладно. Я уберу ее с тебя».~ */ GOTO 10
  IF ~~ THEN REPLY #56949 /* ~«Забудь».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~~ THEN BEGIN 3 // from:
  SAY #56951 /* ~Null Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #56952 /* ~Null Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 6.1 7.2 8.2
  SAY #56954 /* ~«Стражники. Они гонятся за мной. Кажется, я кого-то обидел вопросом, или что-то сказал не тому человеку. Я всего лишь высказывал свое мнение, но тут, похоже, нужно разговаривать по-другому. Все пропало!»~ */
  IF ~~ THEN REPLY #56956 /* ~«Кто ты такой, вообще?»~ */ GOTO 6
  IF ~~ THEN REPLY #56957 /* ~«Что ты здесь делаешь?»~ */ GOTO 7
  IF ~~ THEN REPLY #56958 /* ~«Откуда ты?»~ */ GOTO 8
  IF ~~ THEN REPLY #56960 /* ~«Тогда иди».~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 0.1 5.0 7.1 8.0
  SAY #56962 /* ~«Я Беррог Быстроногий, путешественник, решатель проблем. Пожалуй, ты мог бы называть меня вором, но я предпочитаю называться инженером — ловушек, западней и тому подобного. Я использую свои навыки только для благих целей — ненавижу вредить кому-либо. Похоже, тут такие приспособления используют совсем для других целей». Он поеживается.~ */
  IF ~~ THEN REPLY #56965 /* ~«Что ты здесь делаешь?»~ */ GOTO 7
  IF ~~ THEN REPLY #56966 /* ~«Кто собирается тебя убить?»~ */ GOTO 5
  IF ~~ THEN REPLY #56968 /* ~«Тогда иди».~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 0.2 5.1 6.0 8.1
  SAY #56969 /* ~«Я прибыл в Проклятый, потому что слышал, что тут дэва попал в западню, и поскольку у меня есть друзья-архоны на Небесной горе, я думал, что смогу помочь. Но этот город... просто выгребная яма, никому нельзя верить! Как вообще тут можно жить? Нужно отсюда выбираться!»~ */
  IF ~~ THEN REPLY #56970 /* ~«Расскажи мне о Небесной горе».~ */ GOTO 8
  IF ~~ THEN REPLY #56971 /* ~«Кто ты такой, вообще?»~ */ GOTO 6
  IF ~~ THEN REPLY #56972 /* ~«Кто собирается тебя убить?»~ */ GOTO 5
  IF ~~ THEN REPLY #56973 /* ~«Тогда иди».~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.2 7.0
  SAY #56974 /* ~Его глаза обретают мечтательное выражение. «Там все на своем месте и все прекрасно. Стаи крылатых архонов колесят по небу прекрасными узорами, способными растопить любое сердце. Фрукты там огромные, дичь — крупная, а двери домов открыты. Но мы всегда стараемся сделать все еще лучше, испытать нашу добродетель, и стать еще ближе к добру... Мне нужно домой как можно скорее...»~ */
  IF ~~ THEN REPLY #56975 /* ~«Кто ты такой, вообще?»~ */ GOTO 6
  IF ~~ THEN REPLY #56976 /* ~«Что ты здесь делаешь?»~ */ GOTO 7
  IF ~~ THEN REPLY #56977 /* ~«Кто пытается тебя убить?»~ */ GOTO 5
  IF ~~ THEN REPLY #56978 /* ~«Тогда иди».~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 5.3 6.2 7.3 8.3
  SAY #56979 /* ~Он смотрит на тебя с недоверием в глазах. «Спасибо тебе! Ты меня больше не увидишь!» Он убегает прочь.~ */
  IF ~~ THEN REPLY #56980 /* ~«Прощай».~ */ DO ~SetGlobal("Know_Berrog","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.0 2.0
  SAY #56981 /* ~«Постой!.. А... а что с тем парнем с другой стороны?»~ */
  IF ~  Global("Burgher_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #56982 /* ~«Он все еще там».~ */ GOTO 12
  IF ~  Global("Burgher_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #56983 /* ~«Он уже умер».~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1 13.1
  SAY #56992 /* ~«Прошу... пожалуйста...» Он падает лицом в грязь и тихо плачет.~ */
  IF ~~ THEN REPLY #56993 /* ~Уйти.~ */ EXIT
  IF ~~ THEN REPLY #56994 /* ~Убить его.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_2","GLOBALGood",-3)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #56995 /* ~«Тебе... тебе надо найти способ спасти его. Лучше его, чем меня. Кажется, он был мэром этого городка... или как они его называют».~ */
  IF ~~ THEN EXTERN ~DBURGHER~ 28
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #56996 /* ~«Тогда поднимай, друг...»~ */
  IF ~~ THEN REPLY #56997 /* ~Поднатужиться.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Berrog_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(225000)
SetGlobal("Cart_Trap","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #56998 /* ~«Забудь. Может, я вернусь позже».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.1
  SAY #56999 /* ~Он выползает из-под телеги. «Спасибо, друг. С меня довольно... довольно этого города. Я возвращаюсь на Небесную гору. Надеюсь, твои добрые дела вернутся к тебе... добром, куда бы ты ни шел». Он оглядывается на дэва, стоящего на балконе. «Не могу поверить, что я пришел сюда ради... этого».~ */
  IF ~~ THEN REPLY #57000 /* ~«Добрые намерения и все такое... Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #57001 /* ~«Ай! Тут с другой стороны тоже кто-то есть! Ты же меня убиваешь!»~ */
  IF ~~ THEN REPLY #57002 /* ~«Кто ты?»~ */ DO ~SetGlobal("Know_Berrog","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #57003 /* ~«Что ты там, внизу, делаешь?»~ */ GOTO 17
  IF ~~ THEN REPLY #57004 /* ~Поднимать дальше: «Очень жаль».~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #57005 /* ~«Меня зовут... Беррог Быстроногий... Я прибыл в Проклятый, чтобы освободить дэва... создание добра... но меня ввели в заблуждение. Не стоило сюда приходить...»~ */
  IF ~~ THEN REPLY #57006 /* ~«Что ты там, внизу, делаешь?»~ */ GOTO 17
  IF ~~ THEN REPLY #57007 /* ~Сдвинуть телегу с бюргера: «Думаю, нет».~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
  IF ~~ THEN REPLY #57008 /* ~Сдвинуть телегу с Беррога.~ */ EXTERN ~DBURGHER~ 23
  IF ~~ THEN REPLY #57009 /* ~«Наверное, мне стоит вернуться чуть позже... Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0
  SAY #57010 /* ~«Я... бежал из города... когда он начал съезжать. Я был рядом с... ним... и он меня схватил. С небес упала телега, и он пытался затолкать меня под нее... а сам сбежать. Но я все же прошу тебя... спасти и его тоже».~ */
  IF ~~ THEN EXTERN ~DBURGHER~ 24
END

IF ~~ THEN BEGIN 18 // from:
  SAY #57012 /* ~«Ты ничего не выиграешь, спасая меня... Должен это признать. Но право же... это доброе дело... если ты спасешь меня просто так... но лучше, если спасешь нас обоих».~ */
  IF ~~ THEN REPLY #57013 /* ~Сдвинуть телегу с бюргера: «Да, но он может быть полезен».~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
  IF ~~ THEN REPLY #57014 /* ~Сдвинуть телегу с Беррога: «Он того не стоит».~ */ DO ~Kill("Burgher")
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Berrog_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",1)
~ GOTO 14
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57015 /* ~«Как насчет того, чтобы мы вытащили вас обоих? Мои компаньоны и я справимся, если подналяжем вместе».~ */ EXTERN ~DBURGHER~ 26
  IF ~~ THEN REPLY #57016 /* ~«Я попытаюсь найти способ. Счастливо».~ */ EXIT
END
