// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSAROSSA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSAROSSA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from: 1.1 2.0 3.0 7.0 11.0 12.0 16.0
  SAY #8415 /* ~«Ты думаешь, что можешь угрожать мне безнаказанно? Дурак!» Она произносит три загадочных слова, и ты чувствуешь, как будто у тебя вырвали кусок сердца. Затем она кричит: «Стража! СТРАЖА!»~ */
  IF ~~ THEN REPLY #8416 /* ~Напасть на нее.~ */ DO ~Enemy()
PermanentStatChange(Protagonist,STR,LOWER,1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("Alarm2","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #8417 /* ~Уйти.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
Enemy()
PermanentStatChange(Protagonist,STR,LOWER,1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
PermanentStatChange(Protagonist,CON,LOWER,1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #8418 /* ~«Советую тебе уйти. Ты не сочтешь драку с нашей стражей испытанием, стоящим потраченных усилий. Прочь с глаз моих».~ */
  IF ~~ THEN REPLY #8419 /* ~«Я хотел бы задать тебе несколько вопросов».~ */ GOTO 2
  IF ~~ THEN REPLY #8420 /* ~«Ты ответишь на мои вопросы, иначе тебя постигнет наказание».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
~ GOTO 0
  IF ~~ THEN REPLY #8421 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #8422 /* ~«Я не стану отвечать на твои вопросы, пока стража хочет от тебя другого. Это все».~ */
  IF ~~ THEN REPLY #8423 /* ~«Ты ответишь на мои вопросы или заплатишь, девчонка».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
~ GOTO 0
  IF ~~ THEN REPLY #8424 /* ~«Отлично. Прощай».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 22 even though they appear after this state */
~  GlobalGT("SarossaStatChange","GLOBAL",3)
GlobalLT("SarossaStatChange","GLOBAL",8)
~ THEN BEGIN 3 // from:
  SAY #8425 /* ~«Итак. Ты вернулся просить у меня прощения, или решил продолжать заниматься своими грязными делами?»~ */
  IF ~~ THEN REPLY #8426 /* ~«Я пришел убить тебя».~ */ GOTO 0
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8427 /* ~«Я пришел извиниться перед тобой, Саросса».~ */ GOTO 10
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8428 /* ~«Я пришел извиниться перед тобой, Саросса».~ */ GOTO 13
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
GlobalLT("SarossaStatChange","GLOBAL",8)
~ THEN REPLY #8429 /* ~«Я пришел извиниться перед тобой, Саросса».~ */ GOTO 14
  IF ~~ THEN REPLY #8430 /* ~«Ни то, ни другое. Прощай... пока что».~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 26 25 22 even though they appear after this state */
~  Global("Sarossa_Saros_Anger","AR0503",0)
GlobalGT("G_Test2","GLOBAL",8)
GlobalLT("G_Test2","GLOBAL",12)
!Global("G_Test2","GLOBAL",10)
~ THEN BEGIN 4 // from:
  SAY #8431 /* ~«Как смеешь ты обращаться ко мне, послав моего брата под топор палача? Мне следовало вырвать волю из твоей души за ту боль, что ты причинил моей семье».~ */
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8432 /* ~«Сарос был твоим братом?»~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 5
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8433 /* ~«Прости меня, Саросса. Он виновен, и никакие кровные узы этого не изменят».~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 6
  IF ~  Global("Know_Saros","GLOBAL",1)
GlobalGT("G_Test3","GLOBAL",0)
~ THEN REPLY #8434 /* ~«Сарос был твоим братом?»~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 9
  IF ~  Global("Know_Saros","GLOBAL",2)
GlobalGT("G_Test3","GLOBAL",0)
~ THEN REPLY #8435 /* ~«Прости меня, Саросса. Он виновен, и никакие кровные узы этого не изменят».~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8437 /* ~«И он, и Тильдон виновны, хотя и в разных преступлениях. Они оба должны предстать перед законом».~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 5
  IF ~~ THEN REPLY #8438 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.4 42.0 42.4
  SAY #8436 /* ~«Он был моим братом. Поступил бы ты по-другому, если бы знал, что он мне родня?»~ */
  IF ~~ THEN REPLY #8439 /* ~Правда: «Да».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarossa_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8440 /* ~Ложь: «Да».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
~ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8440 /* ~Ложь: «Да».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8440 /* ~Ложь: «Да».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8440 /* ~Ложь: «Да».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8441 /* ~«Нет».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sarossa_1","GLOBALLaw",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 9.0 9.1 9.2 9.3 42.1
  SAY #8442 /* ~«Ведь ты в самом деле так считаешь? Я люблю своего брата, но ты верен самому себе, и я не могу винить тебя в этом».~ */
  IF ~~ THEN REPLY #8443 /* ~«Хорошо. Тогда ответь на несколько вопросов, ладно?»~ */ GOTO 18
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8444 /* ~«В таком случае, вернешь ли ты ту часть меня, которую ты украла?»~ */ GOTO 10
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8445 /* ~«В таком случае, вернешь ли ты ту часть меня, которую ты украла?»~ */ GOTO 13
  IF ~  Global("SarossaStatChange","GLOBAL",6)
~ THEN REPLY #8446 /* ~«В таком случае, вернешь ли ты ту часть меня, которую ты украла?»~ */ GOTO 14
  IF ~~ THEN REPLY #8447 /* ~Правда: «Я приношу свои извинения за то, что причинил боль тебе и твоим родным, госпожа».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sarossa_2","GLOBALGood",1)
~ GOTO 8
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8448 /* ~Ложь: «Я приношу свои извинения за то, что причинил боль тебе и твоим родным».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
~ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8448 /* ~Ложь: «Я приношу свои извинения за то, что причинил боль тебе и твоим родным».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8448 /* ~Ложь: «Я приношу свои извинения за то, что причинил боль тебе и твоим родным».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8448 /* ~Ложь: «Я приношу свои извинения за то, что причинил боль тебе и твоим родным».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8449 /* ~«Тогда счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.5 30.1
  SAY #8450 /* ~«Ты действительно считал, что сможешь обмануть того, кто способен читать людские сердца? Дурак». Она произносит единственное слово, которое искажает пространство вокруг тебя, вырывает частицу тебя, и уносит ее в небеса. «Сгинь, ошрамованная плоть, и больше не обращайся ко мне».~ */
  IF ~~ THEN REPLY #8451 /* ~«Я вернусь. Ты за это заплатишь».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
PermanentStatChange(Protagonist,STR,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",4)
~ GOTO 0
  IF ~~ THEN REPLY #8452 /* ~«Прощай, Саросса. Я этого не забуду».~ */ DO ~PermanentStatChange(Protagonist,STR,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.5 6.4
  SAY #8453 /* ~Ее глаза удаляются, словно она видит нечто за пределами пяти твоих чувств. «Ты прощен, поскольку помнишь, что у всех твоих действий есть последствия, видишь ты их или нет, и что ты можешь причинить боль из-за своего невежества. Пусть эти слова служат тебе».~ */
  IF ~~ THEN REPLY #8454 /* ~«Спасибо. Не могла бы ты ответить на некоторые мои вопросы?»~ */ GOTO 18
  IF ~~ THEN REPLY #8455 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 4.3 42.2 42.3
  SAY #8456 /* ~«Он был моим братом, а теперь еще и мой отец на пороге смерти. Надеюсь, твое сердце способно вынести сознание того, что оно принесло в мир столько боли».~ */
  IF ~~ THEN REPLY #8457 /* ~«Я не могу отвергать мою веру в закон в пользу отдельной личности».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sarossa_2","GLOBALLaw",1)
~ GOTO 6
  IF ~~ THEN REPLY #8458 /* ~«Конечно, может. Я делал это раньше, и, вполне вероятно, буду продолжать».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_4","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #8459 /* ~«Если бы я знал, что он — твой брат, я бы не впутывал его».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarossa_2","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #8460 /* ~«Эта мысль не согревает мне сердце... но я верю, что нередко такая боль часто ведет к лучшим вещам. И хотя мы не способны увидеть пользу немедленно, мы учимся видеть добро, когда боль утихает».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sarossa_2","GLOBALGood",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 3.1 6.1
  SAY #8461 /* ~«Тогда извиняйся».~ */
  IF ~~ THEN REPLY #8462 /* ~Правда: «Я не имел права говорить с тобой так. Мои слова и действия были поспешными и необдуманными. Я приложу все усилия, чтобы быть поосторожнее в дальнейшем».~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8463 /* ~Ложь: «Я не имел права говорить с тобой так. Мои слова и действия были поспешными и необдуманными. Я приложу все усилия, чтобы быть поосторожнее в дальнейшем».~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #8464 /* ~«Нет».~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.2 5.3 6.6 6.7 10.1 13.1 30.2 30.3
  SAY #8465 /* ~«Не лги мне, получеловек, иначе я вырву жизнь из твоего тела, — она выплевывает еще одно перекрученное слово, и ты конвульсивно вздрагиваешь, когда еще одна частичка твоей души вырывается из тебя. — А теперь иди. Я не желаю говорить с тобой».~ */
  IF ~~ THEN REPLY #8466 /* ~Напасть на нее.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8467 /* ~«Тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 13.2 14.2
  SAY #8468 /* ~«Раз ты не сожалеешь, тогда и я не сожалею. Уходи. Сейчас же».~ */
  IF ~~ THEN REPLY #8469 /* ~Напасть на нее.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8470 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2 6.2
  SAY #8471 /* ~«Тогда извиняйся».~ */
  IF ~~ THEN REPLY #8472 /* ~Правда: «Я не имел права говорить с тобой так. Мои слова и действия были поспешными и необдуманными. Я приложу все усилия, чтобы быть поосторожнее в дальнейшем».~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DEX,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8473 /* ~Ложь: «Я не имел права говорить с тобой так. Мои слова и действия были поспешными и необдуманными. Я приложу все усилия, чтобы быть поосторожнее в дальнейшем».~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #8474 /* ~«Нет».~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 3.3 6.3
  SAY #8475 /* ~«Тогда извиняйся».~ */
  IF ~~ THEN REPLY #8476 /* ~Правда: «Я не имел права говорить с тобой так. Мои слова и действия были поспешными и необдуманными. Я приложу все усилия, чтобы быть поосторожнее в дальнейшем».~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DEX,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8477 /* ~Ложь: «Я не имел права говорить с тобой так. Мои слова и действия были поспешными и необдуманными. Я приложу все усилия, чтобы быть поосторожнее в дальнейшем».~ */ DO ~SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8478 /* ~«Нет».~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 10.0 13.0 14.0
  SAY #8479 /* ~Ее рот снова издает эти слова, и ты чувствуешь, что снова обрел целостность: будто кто-то вернул частичку твоей собственной сущности. «Теперь ты свободен, получеловек. Чего ты хочешь?»~ */
  IF ~~ THEN REPLY #8480 /* ~«Почему ты продолжаешь называть меня получеловеком?»~ */ JOURNAL #67281 /* ~Колдунья Саросса из Великой Литейной сказала, что называет меня получеловеком, потому что не видит мою душу. Она не знает, признак ли это того, что у меня нет души, или того, что я вышел за пределы себя, но в любом случае она будет называть меня получеловеком.~ */ GOTO 17
  IF ~~ THEN REPLY #8481 /* ~«Мне нужны ответы на несколько вопросов».~ */ GOTO 18
  IF ~  GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #8482 /* ~«Расскажи мне о твоей семье».~ */ GOTO 19
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #8483 /* ~«Расскажи мне о твоей семье».~ */ GOTO 20
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #8484 /* ~«Расскажи мне о твоей семье».~ */ GOTO 21
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8485 /* ~«Расскажи мне о твоей семье».~ */ GOTO 20
  IF ~  Global("Know_Saros","GLOBAL",2)
~ THEN REPLY #8487 /* ~«Твой брат сказал, что у тебя есть особый талант».~ */ GOTO 22
  IF ~~ THEN REPLY #8488 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.4 6.8 14.1 30.4
  SAY #8486 /* ~«Ведь ты никого, кроме себя, не уважаешь? Я никому не могу простить такого, неважно, насколько он может быть одарен. Прощай, получеловек. СТРАЖА!»~ */
  IF ~~ THEN REPLY #8489 /* ~Напасть на нее.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8490 /* ~Уйти.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 18.0
  SAY #8491 /* ~«Я называю тебя получеловеком, потому что не могу увидеть твою душу. Все остальные смертные, встречавшиеся в моей жизни, показывали мне свою душу — как сияющую искру, либо как тлеющие угли. Ты не показываешь вообще ничего. Я зову тебя получеловеком, потому что не вижу твою душу, как вижу ее у других. То ли у тебя нет души, то ли ты вышел за пределы себя — точно я сказать не могу. Так или иначе, ты человек лишь наполовину. Какова вторая половина, я не берусь утверждать».~ */
  IF ~~ THEN REPLY #8492 /* ~«Понятно. Тогда ответь мне на несколько вопросов».~ */ GOTO 18
  IF ~~ THEN REPLY #8493 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.0 8.0 15.1 17.0 19.4 20.4 21.4 22.2 23.4 24.0 24.1 25.0 26.0 28.2 29.0 31.0 32.1 35.0 36.0 37.0 38.0 41.0 43.0
  SAY #8494 /* ~«Какие ответы тебе нужны, получеловек?»~ */
  IF ~~ THEN REPLY #8495 /* ~«Почему ты зовешь меня получеловеком?»~ */ JOURNAL #67281 /* ~Колдунья Саросса из Великой Литейной сказала, что называет меня получеловеком, потому что не видит мою душу. Она не знает, признак ли это того, что у меня нет души, или того, что я вышел за пределы себя, но в любом случае она будет называть меня получеловеком.~ */ GOTO 17
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8496 /* ~«Мне необходимо поговорить с тобой насчет твоего отца».~ */ GOTO 39
  IF ~~ THEN REPLY #8497 /* ~«Кто ты?»~ */ GOTO 38
  IF ~  GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #8498 /* ~«Расскажи мне о твоей семье».~ */ GOTO 19
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #8499 /* ~«Расскажи мне о твоей семье».~ */ GOTO 20
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #8500 /* ~«Расскажи мне о твоей семье».~ */ GOTO 21
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8501 /* ~«Расскажи мне о твоей семье».~ */ GOTO 20
  IF ~  Global("Know_Saros","GLOBAL",2)
~ THEN REPLY #8502 /* ~«У всех есть особые таланты. Расскажи мне о своих».~ */ GOTO 22
  IF ~~ THEN REPLY #8503 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.2 18.3
  SAY #8504 /* ~«Мой брат Сарос — дитя Литейной, и все же я боюсь, что он никогда не принимал философию верящих в Первопричину. Мой отец здесь фрактор, и его путешествия увели его далеко от Литейной, в миры, о достижении которых большинство смертных даже не мечтают».~ */
  IF ~~ THEN REPLY #8505 /* ~«Расскажи мне больше о твоем брате».~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8506 /* ~«Расскажи мне больше о твоем отце».~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8507 /* ~«Расскажи мне больше о твоем отце».~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8508 /* ~«Расскажи мне больше о твоем отце».~ */ GOTO 26
  IF ~~ THEN REPLY #8509 /* ~«Понятно. Ответишь на другие вопросы?»~ */ GOTO 18
  IF ~~ THEN REPLY #8510 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3 15.5 18.4 18.6
  SAY #8511 /* ~Нотка горечи закрадывается в ее голос. «Мой брат, как ты знаешь, ждет казни. Мой отец, насколько ты можешь или не можешь знать, путешествует по всей мультивселенной в поисках вещей, которые большинство смертных пока еще не способны объять».~ */
  IF ~~ THEN REPLY #8512 /* ~«Расскажи мне больше о твоем брате».~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8513 /* ~«Расскажи мне больше о твоем отце».~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8514 /* ~«Расскажи мне больше о твоем отце».~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8515 /* ~«Расскажи мне больше о твоем отце».~ */ GOTO 26
  IF ~~ THEN REPLY #8516 /* ~«Понятно. Ответишь на другие вопросы?»~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 15.4 18.5
  SAY #8517 /* ~«Мой брат Сарос, надеюсь, вполне благоразумный парень для своего возраста, а мой отец здесь фрактор. Он человек, чьи путешествия увели его далеко от Литейной, в миры, о достижении которых большинство смертных даже не мечтают».~ */
  IF ~~ THEN REPLY #8518 /* ~«Расскажи мне больше о твоем брате».~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8519 /* ~«Расскажи мне больше о твоем отце».~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8520 /* ~«Расскажи мне больше о твоем отце».~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8521 /* ~«Расскажи мне больше о твоем отце».~ */ GOTO 26
  IF ~~ THEN REPLY #8522 /* ~«Понятно. Ответишь на другие вопросы?»~ */ GOTO 18
  IF ~~ THEN REPLY #8523 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 22 // from: 15.6 18.7 32.0
  SAY #8524 /* ~«Я не знаю, как получила его. Похоже, это нечто, всегда бывшее частью меня. Я могу лишь предположить, что мои предыдущие жизни и мои убеждения дали мне особую проницательность по отношению к природе смертных. Я одарена способностью видеть возможности в каждом живом существе. Читая истинное имя, высеченное на самой сущности смертного, и произнося его слегка неправильно, я способна менять природу этой возможности, и тем самым менять сущность его владельца».~ */
  IF ~~ THEN REPLY #8525 /* ~«Ты можешь научить меня этому?»~ */ GOTO 28
  IF ~~ THEN REPLY #8526 /* ~«Ты можешь изменить меня?»~ */ GOTO 28
  IF ~~ THEN REPLY #8527 /* ~«Интересно. Ответь мне еще на несколько вопросов».~ */ GOTO 18
  IF ~~ THEN REPLY #8528 /* ~«Вселенная действует странными методами. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0 21.0
  SAY #8529 /* ~«Сарос — дерзкий, импульсивный парень, легко поддающийся на провокацию. Он жаждет показать себя равным чему угодно в планах, и полон юношеской агрессии. Думаю, он ощущает себя скорее чувствующим, чем богочеловеком, что в очередной раз подтверждает мое мнение о том, что чувствующие — самая незрелая из всех фракций в Сигиле».~ */
  IF ~~ THEN REPLY #8530 /* ~«Почему это они самые незрелые?»~ */ GOTO 29
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8531 /* ~«Расскажи о своем отце».~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8532 /* ~«Расскажи о своем отце».~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8533 /* ~«Расскажи о своем отце».~ */ GOTO 26
  IF ~~ THEN REPLY #8534 /* ~«Ты можешь ответить на мои вопросы?»~ */ GOTO 18
  IF ~~ THEN REPLY #8535 /* ~«Благодарю... и прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1 20.1 21.1 23.1
  SAY #8536 /* ~«Мой отец — фрактор верящих в Первопричину; всю свою жизнь он твердо верил, что мы существуем для определенной цели. Я могу лишь надеяться, что он все еще твердо придерживается этого убеждения, равно как и веры в то, что его дети любят его».~ */
  IF ~  GlobalGT("G_Test3","GLOBAL",1)
GlobalLT("G_Test3","GLOBAL",5)
~ THEN REPLY #8537 /* ~«Тогда я передам ему твои надежды. Можешь ли ты ответить мне еще на несколько вопросов?»~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ GOTO 18
  IF ~  GlobalLT("G_Test3","GLOBAL",2)
~ THEN REPLY #8538 /* ~«Похоже, он неплохой человек. Ответь мне еще на несколько вопросов, ладно?»~ */ GOTO 18
  IF ~  GlobalLT("G_Test3","GLOBAL",1)
~ THEN REPLY #8539 /* ~«Похоже, он неплохой человек. Прощай».~ */ EXIT
  IF ~  GlobalGT("G_Test3","GLOBAL",1)
GlobalLT("G_Test3","GLOBAL",5)
~ THEN REPLY #8540 /* ~«Тогда я передам ему твои надежды. Прощай».~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
!Dead("Sandoz")
~ THEN BEGIN 25 // from: 19.2 20.2 21.2 23.2
  SAY #8541 /* ~«Благодаря твоим словам, мой отец Сандоз жив и здоров. Я могу лишь надеяться, что какая бы сила его так не ранила (не могу поверить, что он дошел до этого сам), она заплатит за свои злодеяния. Что еще я могу для тебя сделать?»~ */
  IF ~~ THEN REPLY #8542 /* ~«Ответь мне на другие вопросы».~ */ GOTO 18
  IF ~~ THEN REPLY #8543 /* ~«Ничего. Прощай».~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
Dead("Sandoz")
~ THEN BEGIN 26 // from: 19.3 20.3 21.3 23.3
  SAY #8544 /* ~«Мой отец мертв».~ */
  IF ~~ THEN REPLY #8545 /* ~«Извини. Можешь ответить на пару вопросов?»~ */ GOTO 18
  IF ~~ THEN REPLY #8546 /* ~«Ррр.. ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.0
  SAY #8547 /* ~«Я не буду этого делать. Он всегда был импульсивным, жаждущим доказать свою отвагу перед этой жестокой вселенной, и теперь он не может этого сделать. Я никого здесь не виню, но говорить об этом не стану. Если хочешь знать больше, поговори со мной позже. Прощай».~ */
  IF ~~ THEN REPLY #8548 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.0 22.1
  SAY #8549 /* ~«Я могу изменить тебя, но не могу обучить тебя. Это все равно как рассказывать слепому о цвете, или глухому — о звуке. И я *изменю* тебя, если цена будет соответствующей».~ */
  IF ~  Global("Sarossa_ChangeUp","GLOBAL",0)
~ THEN REPLY #8550 /* ~«Какова цена?»~ */ GOTO 30
  IF ~~ THEN REPLY #8551 /* ~«Я думаю, что это не очень честно».~ */ GOTO 31
  IF ~~ THEN REPLY #8552 /* ~«Забудь об этом. Ответь мне на пару других вопросов».~ */ GOTO 18
  IF ~  Global("Sarossa_ChangeUp","GLOBAL",1)
~ THEN REPLY #8553 /* ~«Какова цена?»~ */ GOTO 43
  IF ~~ THEN REPLY #61301 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0
  SAY #8554 /* ~«Почему они самые незрелые? Да потому что они, слово дети, не понимают, что существует нечто большее за пределами мира чувств, за тем, что можно увидеть, услышать, попробовать или понюхать. Оглянись. Ты во Внешних планах. Это материализованная вера — но это не значит, что эта на вид грубая материя может быть постигнута чувствами. Это вера — простой физикой ее не объяснить».~ */
  IF ~~ THEN REPLY #8555 /* ~«Ясно. Поговорим о других вещах».~ */ GOTO 18
  IF ~~ THEN REPLY #8556 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #8557 /* ~«Скажи мне: ты разделяешь философию боголюдей?»~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #8558 /* ~Правда: «Да».~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
SetGlobal("Sarossa_ChangeUp","GLOBAL",1)
~ JOURNAL #67283 /* ~Я сказал колдунье Сароссе, что верю в боголюдей, и она подарила мне озарение. По какой-то причине я ощущаю себя... мудрее.~ */ GOTO 32
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8559 /* ~Ложь: «Да».~ */ JOURNAL #67282 /* ~Я солгал колдунье Сароссе насчет своих взглядов относительно боголюдей, и эта мегера вытянула мою силу единственным словом.~ */ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8559 /* ~Ложь: «Да».~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8559 /* ~Ложь: «Да».~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8559 /* ~Ложь: «Да».~ */ DO ~SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8560 /* ~«Нет».~ */ GOTO 33
  IF ~~ THEN REPLY #8561 /* ~«Я знаю недостаточно, чтобы ответить тебе».~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 28.1
  SAY #8562 /* ~«Да, это нечестно. Но это мой дар, это мои испытания, и я сама выбираю, что делать с моими дарами. Чем я могу тебе помочь?»~ */
  IF ~~ THEN REPLY #8563 /* ~«Ответь на несколько вопросов».~ */ GOTO 18
  IF ~~ THEN REPLY #8564 /* ~«Ты не можешь, по крайней мере, пока. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #8565 /* ~«Тогда я без сомнений поделюсь с тобой своим даром». Она произносит загадочное слово, которое потрясает тебя до самого основания, и по какой-то причине твое тело ощущает себя более сильным.~ */
  IF ~~ THEN REPLY #8566 /* ~«Как ты это сделала?»~ */ GOTO 22
  IF ~~ THEN REPLY #8567 /* ~«Спасибо большое! Ты можешь ответить на мои вопросы?»~ */ GOTO 18
  IF ~~ THEN REPLY #8568 /* ~«Благодарю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.5
  SAY #8569 /* ~«Тебе не нравится эта философия? Почему же?»~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #8570 /* ~«Потому что я уже присоединился к тленным».~ */ GOTO 35
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #8571 /* ~«Потому что я уже присоединился к чувствующим».~ */ GOTO 35
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #8572 /* ~«Потому что я уже присоединился к анархистам».~ */ GOTO 35
  IF ~~ THEN REPLY #8573 /* ~«Я думаю, это даже хуже, чем у тленных. Они, по крайней мере, не поучают — просто принимают и двигаются дальше».~ */ GOTO 35
  IF ~~ THEN REPLY #8574 /* ~«Я все еще думаю об этом. Убеди меня».~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 30.6 33.4
  SAY #8575 /* ~«Узнай о нас больше. Присоединись к фракции до конца. Если ты еще не сделал этого, сходи поговори с Кельдором Дурианским. Он — фрактор по части вербовки. Ты можешь найти его здесь, в Большом Зале. Прощай».~ */
  IF ~~ THEN REPLY #8576 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.0 33.1 33.2 33.3
  SAY #8577 /* ~«Тогда я не буду пытаться переубедить тебя. Что еще я могу для тебя сделать?»~ */
  IF ~~ THEN REPLY #8578 /* ~«Ответь на пару вопросов».~ */ GOTO 18
  IF ~~ THEN REPLY #8579 /* ~«Ничего. Прощай».~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 42 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 36 // from:
  SAY #8580 /* ~Ты видишь девушку. Когда ты подходишь к ней, она смотрит тебе прямо в глаза. Тебе становится неуютно от ощущения, что она не просто проверяет цвет твоих глаз — ее взгляд, похоже, проникает намного глубже. «Приветствую, незнакомец. Как проходит твой день?»~ */
  IF ~~ THEN REPLY #8581 /* ~«Вполне неплохо. Я хотел бы задать тебе несколько вопросов».~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8582 /* ~«Ты Саросса? Мне нужно поговорить с тобой о твоем отце».~ */ GOTO 39
  IF ~~ THEN REPLY #8583 /* ~«Вполне неплохо. Прощай».~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 42 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 37 // from:
  SAY #8584 /* ~«Приветствую, израненный человек. Чего ты от меня хочешь?»~ */
  IF ~~ THEN REPLY #8585 /* ~«Ответы».~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8586 /* ~«Мне необходимо поговорить с тобой насчет твоего отца».~ */ GOTO 39
  IF ~~ THEN REPLY #8587 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 18.2
  SAY #8588 /* ~«Я Саросса, дочь Сандоза, одного из фракторов боголюдей».~ */
  IF ~~ THEN REPLY #8589 /* ~«Ответь мне на другие вопросы».~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8590 /* ~«Мне необходимо поговорить с тобой насчет твоего отца».~ */ GOTO 39
  IF ~~ THEN REPLY #8591 /* ~«Ясно. Спасибо тебе. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 18.1 36.1 37.1 38.1
  SAY #8592 /* ~«А что с ним?»~ */
  IF ~~ THEN REPLY #8593 /* ~«Он закрылся в своей башне и угрожает покончить с собой. Что ты можешь рассказать мне о нем, что позволило бы мне удержать его от этого поступка?»~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #8594 /* ~«Ты лжешь! Мой отец путешествует! Он не вернется по крайней мере в ближайшие дни!»~ */
  IF ~~ THEN REPLY #8595 /* ~«И тем не менее. Поговори с Кельдором, если не веришь мне. Я требую твоей поддержки, если хочешь видеть своего отца в живых».~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ GOTO 41
  IF ~~ THEN REPLY #8596 /* ~«Ты мне не веришь? Отлично. Это будет на твоей совести. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #8597 /* ~«Конечно, в этом можешь не сомневаться, — она замолкает и очень пристально смотрит на тебя. — Ты ведь говоришь правду? В твоем сердце я не вижу обмана по этому поводу. Отлично. Вот что я хочу, чтобы ты сказал моему отцу: Вся жизнь — это испытание. Никто не может проскочить напрямую к его завершению. Такого ответа нет. Только Хранители Рока и тленные верят в полное разрушение — и за это ты всегда их презирал. Вспомни об этом».~ */
  IF ~~ THEN REPLY #8598 /* ~«Я передам это послание. Но сперва я хотел бы задать тебе пару вопросов».~ */ GOTO 18
  IF ~~ THEN REPLY #8599 /* ~«Я передам это послание. Прощай».~ */ EXIT
END

IF WEIGHT #7 ~  False()
Global("G_Test2","GLOBAL",11)
~ THEN BEGIN 42 // from:
  SAY #8600 /* ~«Как смеешь ты обращаться ко мне, послав моего брата под топор палача? Мне следовало вырвать волю из твоей души за ту боль, что ты причинил моей семье».~ */
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8601 /* ~«Сарос был твоим братом?»~ */ GOTO 5
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8602 /* ~«Прости меня, Саросса. Он виновен, и никакие кровные узы этого не изменят».~ */ GOTO 6
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8603 /* ~«Сарос был твоим братом?»~ */ GOTO 9
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8604 /* ~«Прости меня, Саросса. Он виновен, и никакие кровные узы этого не изменят».~ */ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8605 /* ~«И он, и Тильдон виновны, хотя и в разных преступлениях. Они оба должны предстать перед законом».~ */ GOTO 5
  IF ~~ THEN REPLY #8606 /* ~«Я не могу. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 28.3
  SAY #61302 /* ~«Я уже сказала слова, которые изменят твое сердце. Тебе же нужно научиться следовать его велению».~ */
  IF ~~ THEN REPLY #61303 /* ~«Ладно. Тогда ответь мне на несколько вопросов».~ */ GOTO 18
  IF ~~ THEN REPLY #61304 /* ~«Прощай».~ */ EXIT
END
