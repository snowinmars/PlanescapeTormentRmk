// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARLO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DARLO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 11 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30049 /* ~Ты видишь низкорослого, лысеющего человека, стоящего в своего рода фойе этой ветхой ночлежки. Его кустистые брови топорщатся от сосредоточения, с которым он соскабливает корку со своего крупного носа картошкой.~ */
  IF ~~ THEN REPLY #30077 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #30078 /* ~Позволить мужчине заниматься собственной гигиеной и осмотреть комнату.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #30050 /* ~Человек даже не поднимает голову. Вместо этого он продолжает коситься на свой нос. «Да? Чего надо?»~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30079 /* ~«Могу я тут отдохнуть?»~ */ GOTO 4
  IF ~  Dead("Nestor")
~ THEN REPLY #30080 /* ~«Могу я тут отдохнуть?»~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30081 /* ~«Могу я тут отдохнуть?»~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30082 /* ~«Могу я тут отдохнуть?»~ */ GOTO 2
  IF ~~ THEN REPLY #30083 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #30084 /* ~«Извини за беспокойство. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.3 9.0
  SAY #30051 /* ~«Конечно, можешь, пень... если медяки найдешь. Никто здесь бесплатно не валяется. Кроме этого Нестора, да и то потому, что не найдется никого настолько пустоголового, чтобы с ним связываться».~ */
  IF ~~ THEN REPLY #30085 /* ~«Ладно. Сколько за койку?»~ */ GOTO 4
  IF ~~ THEN REPLY #30086 /* ~«Расскажи мне об этом... Несторе».~ */ GOTO 5
  IF ~~ THEN REPLY #30087 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 9.5
  SAY #30052 /* ~«Разве это не мило? — он озаряется саркастической желтозубой улыбкой. — И я не сомневаюсь, когда-нибудь ты найдешь ответы. Но у меня тут дела. Так что если койка не нужна — советую проваливать!»~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30088 /* ~«Понятно. Можно мне тогда койку?»~ */ GOTO 4
  IF ~  Dead("Nestor")
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30089 /* ~«Понятно. Можно мне тогда койку?»~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30090 /* ~«Понятно. Можно мне тогда койку?»~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30091 /* ~«Понятно. Можно мне тогда койку?»~ */ GOTO 2
  IF ~  Global("Arlo_Quest","GLOBAL",2)
~ THEN REPLY #30092 /* ~«Понятно. Тогда я, пожалуй, тут немного отдохну».~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #30093 /* ~«Тогда неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1 1.2 2.0 3.0 3.1 3.2 5.1 6.2 7.1 9.1 9.2 9.3
  SAY #30053 /* ~«Это обойдется тебе в пять медяков». Он вытирает свою грязную руку об еще более грязную рубаху, затем протягивает ее тебе ладонью вверх.~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #30094 /* ~Дать ему пять медяков. Отдыхать.~ */ DO ~TakePartyGold(5)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  PartyGoldLT(5)
~ THEN REPLY #30095 /* ~«Прости, пяти медяков сейчас нет. Может, в другой раз. Прощай».~ */ EXIT
  IF ~  PartyGoldGT(4)
~ THEN REPLY #30096 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #30054 /* ~«Нестор — это чокнутый старый бедолага в том углу». Он указывает пальцем через плечо, в дальний угол комнаты. «Ты с ним поосторожнее, пень. Он не дружит с головой. Все трясет черепушкой о своей вилке и все такое. Хотелось бы, чтобы кто-то сделал всем одолжение и избавился от него».~ */
  IF ~~ THEN REPLY #30097 /* ~«А сам чего его не выгонишь?»~ */ GOTO 6
  IF ~~ THEN REPLY #30098 /* ~«Неважно. Сколько за койку?»~ */ GOTO 4
  IF ~~ THEN REPLY #30099 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #30055 /* ~«Думаешь, я не пробовал? Пробовал! Смотри, что получилось... — он наклоняется, указывая на засохшую кровавую корку на носу. — Чокнутый бедолага мне чуть нос не откусил!»~ */
  IF ~~ THEN REPLY #30100 /* ~«Я мог бы помочь тебе избавиться от него».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Arlo_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #30101 /* ~«Я мог бы помочь тебе избавиться от него... за определенную плату».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Arlo_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #30102 /* ~«Неважно. Сколько за койку?»~ */ GOTO 4
  IF ~~ THEN REPLY #30103 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #30056 /* ~«Скажу тебе вот что, рубака. Избавься от него ради меня — и можешь отдыхать тут бесплатно, когда пожелаешь. По рукам?»~ */
  IF ~~ THEN REPLY #30105 /* ~«Хорошо. Я сделаю это».~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",1)
~ JOURNAL #29872 /* ~Я согласился помочь хозяину ночлежки, Арло, избавиться от старого придурка по имени Нестор. Похоже, бродяга обосновался в ночлежке навсегда, и его никто не может выгнать.~ */ GOTO 8
  IF ~~ THEN REPLY #30107 /* ~«Неважно. Сколько за койку?»~ */ GOTO 4
  IF ~~ THEN REPLY #30108 /* ~«Забудь. У меня есть дела поважнее».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #30073 /* ~«Ну, тогда хватит стоять и глазеть, займись этим! — он немедленно возвращается к ковырянию носа. — Не видишь: я занят».~ */
  IF ~~ THEN REPLY #30109 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 11 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #30074 /* ~Арло с энтузиазмом занимается своим любимым делом — соскабливанием корки с носа. Когда ты подходишь, он глядит на тебя искоса. «Чего еще тебе надо?»~ */
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30110 /* ~«Могу я тут отдохнуть?»~ */ GOTO 2
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30111 /* ~«Могу я тут отдохнуть?»~ */ GOTO 4
  IF ~  Dead("Nestor")
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30112 /* ~«Могу я тут отдохнуть?»~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30113 /* ~«Могу я тут отдохнуть?»~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",2)
~ THEN REPLY #30114 /* ~«Я бы хотел немного отдохнуть».~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #30115 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #30116 /* ~«Извини за беспокойство. Прощай».~ */ EXIT
END

IF WEIGHT #0 ~  Global("Arlo_Quest","GLOBAL",1)
Dead("Nestor")
~ THEN BEGIN 10 // from:
  SAY #30075 /* ~«Во имя сил и их матерей, пень! Когда я сказал избавиться от старого бедолаги, я не просил записывать его в книгу мертвых! — Арло смотрит на тебя скептически. — Ну ладно... уговор есть уговор. Можешь тут оставаться бесплатно — но едва ли тебе тут рады».~ */
  IF ~~ THEN REPLY #30117 /* ~Уйти.~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Arlo_2","GLOBALGood",-1)
AddexperienceParty(250)
~ JOURNAL #29870 /* ~Я сделал, как просил Арло, и избавился от Нестора. Хозяин ночлежки был в шоке от того, как я выставил старого дурака, но тем не менее разрешил мне отдыхать в ночлежке бесплатно.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Arlo_Quest","GLOBAL",1)
Global("Nestor_Quest","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #30076 /* ~«Итак, Нестор свалил домой, да? Может, старый бедолага и не такой чокнутый, как казалось, — он по-дружески хлопает тебя по спине. — Может, теперь все тут наконец отдохнут. Можешь тут располагаться, когда пожелаешь, рубака».~ */
  IF ~~ THEN REPLY #30118 /* ~Уйти.~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #29869 /* ~Вернув Нестору вилку и отправив его домой, я выполнил свою часть уговора с Арло. Он сказал, что я могу отдохнуть в ночлежке бесплатно.~ */ EXIT
END
