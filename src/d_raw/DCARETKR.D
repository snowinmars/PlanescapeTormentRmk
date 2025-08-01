// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARETKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARETKR~

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Kyse","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3196 /* ~Тебя окликает грязный, воняющий отбросами старик: «Приятель! Задержись на минутку! Я должен рассказать тебе, что здесь произошло!»~ */
  IF ~~ THEN REPLY #3197 /* ~«Кто ты?»~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #60250 /* ~«А что произошло?»~ */ GOTO 1
  IF ~~ THEN REPLY #60251 /* ~«Нет. Прочь с дороги».~ */ GOTO 3
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Kyse","GLOBAL",1)
~ THEN BEGIN 1 // from: 0.1 2.0
  SAY #60252 /* ~«Приятель, ты вернулся в город бед. Дэва торжествующе парит над его обломками, направляя нас к погибели. Есть только один путь назад — свергнуть дэва и сделать так, чтобы город отрекся от своего вероломства и обмана. Чем сильнее вера города в прощение, тем слабее дэва».~ */
  IF ~~ THEN REPLY #60253 /* ~«Все это — дело рук Триаса?»~ */ JOURNAL #60254 /* ~Смотритель Кайс рассказал мне, что Триас поднялся из своей темницы и осудил город, из-за чего тот начал сползать в Карцери. Еще смотритель сказал, что лучший способ сразиться с Триасом — это ослабить хватку зла и хаоса в городе, убедив горожан вспомнить свои лучшие стороны.~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #60255 /* ~«Я Кайс, смотритель городской свалки. Я пытался научить их хорошим манерам и доброте, но они отказались, и вот к чему это привело».~ */
  IF ~~ THEN REPLY #60256 /* ~«А что произошло?»~ */ GOTO 1
  IF ~~ THEN REPLY #60257 /* ~«Прочь с дороги. Я занят».~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 2.1
  SAY #60258 /* ~«Путник, тебе грозит беда! Город будет уничтожен, если не победить дэва! Если не вернуть город во Внешние земли, все пропало! Мы попадем в Карцери, откуда даже титаны неспособны сбежать! Если понадобится отдых — разыщи старые бараки или винокурню. А теперь возьми это — оно тебе пригодится». Он разворачивается и исчезает в хаосе.~ */
  IF ~~ THEN REPLY #60259 /* ~«Странно».~ */ DO ~GiveItem("SPWI802",Protagonist)
EscapeArea()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #60260 /* ~«Дэва возник из-под земли и осудил беззаконие, поглотившее город. Когда здания вокруг начали рушиться, возникла паника. Затем мы начали двигаться. Есть только один способ бороться с Триасом — это ослабить его добрыми поступками, уводя горожан с пути зла и хаоса на путь добра. В ином случае он точно победит, — он оглядывается. — Мне будет чем заняться. Если понадобится отдых — разыщи старые бараки или винокурню. А пока возьми это — тебе пригодится».~ */
  IF ~~ THEN REPLY #60261 /* ~«Удачи. Прощай».~ */ DO ~GiveItem("SPWI802",Protagonist)
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("Caretaker","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #60262 /* ~«Ты заслужил мою благодарность, приятель. Чем я могу тебе помочь?»~ */
  IF ~~ THEN REPLY #60263 /* ~«Мне необходимо лечение».~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60264 /* ~«За чем пришли те бандиты?»~ */ GOTO 6
  IF ~~ THEN REPLY #60265 /* ~«Расскажи мне о себе».~ */ GOTO 7
  IF ~~ THEN REPLY #60266 /* ~«Расскажи мне о Проклятом».~ */ GOTO 8
  IF ~~ THEN REPLY #60267 /* ~«Расскажи мне об этой свалке».~ */ GOTO 17
  IF ~~ THEN REPLY #68154 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1 7.1 8.1
  SAY #60268 /* ~«Этого я не знаю. Ходят слухи, что я сижу на горе золота, что я немерено богат. Вот уж неправда: единственное мое богатство — это моя вера, которая поддерживает меня в этом лживом городе. Я пытался поделиться своим богатством, но мало кто хочет разделить его со мной».~ */
  IF ~~ THEN REPLY #60269 /* ~«Ладно. Расскажи о себе».~ */ GOTO 7
  IF ~~ THEN REPLY #60270 /* ~«Расскажи мне о Проклятом».~ */ GOTO 8
  IF ~~ THEN REPLY #60271 /* ~«Мне бы подлечиться».~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60272 /* ~«Расскажи мне об этой свалке».~ */ GOTO 17
  IF ~~ THEN REPLY #68153 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 6.0 8.2
  SAY #60273 /* ~«Я Кайс, смотритель городской свалки. Я слежу за мусором, и, в переносном смысле, повидал немало душ, попавших сюда. Я — голос, побуждающий на добрые поступки, однако боюсь, что меня игнорируют».~ */
  IF ~~ THEN REPLY #60274 /* ~«Мне необходимо лечение».~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60275 /* ~«За чем пришли те бандиты?»~ */ GOTO 6
  IF ~~ THEN REPLY #60276 /* ~«Расскажи мне о Проклятом».~ */ GOTO 8
  IF ~~ THEN REPLY #60277 /* ~«Расскажи мне об этой свалке».~ */ GOTO 17
  IF ~~ THEN REPLY #68152 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3 6.1 7.2
  SAY #60278 /* ~«Этот город на грани катастрофы. Здесь творится все мыслимое зло, и все не такое, каким оно кажется. Все скрыто под видимостью любезности, но яд отравляет тех, кто его вдыхает. Это ядовитый город, наполненный ядовитыми людьми».~ */
  IF ~~ THEN REPLY #60279 /* ~«Мне необходимо лечение».~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60280 /* ~«За чем пришли те бандиты?»~ */ GOTO 6
  IF ~~ THEN REPLY #60281 /* ~«Расскажи мне о себе».~ */ GOTO 7
  IF ~~ THEN REPLY #60282 /* ~«Расскажи мне об этой свалке».~ */ GOTO 17
  IF ~~ THEN REPLY #68151 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",4)
~ THEN BEGIN 9 // from:
  SAY #60283 /* ~«Ты спас мне жизнь». Похоже, Кайс отчасти изумлен тем, что это произошло в Проклятом. «Я многим тебе обязан. Если тебе когда-нибудь понадобится лечение — найди меня. Я помогу всем, чем только смогу. Извини, я должен присесть».~ */
  IF ~~ THEN REPLY #60284 /* ~«Конечно. Прощай».~ */ DO ~SetGlobal("Caretaker","GLOBAL",5)
~ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",3)
NumTimesTalkedTo(0)
~ THEN BEGIN 10 // from:
  SAY #60285 /* ~Перед тобой грязный старик, от которого несет отбросами. Почему-то он кажется более живым, по сравнению с другими жителями этого города, каким-то более энергичным, как будто он пришел сюда недавно. Когда ты подходишь, он смотрит на тебя и распрямляет спину. «Пришел к Кайсу? Небось, наслушался сказок о моей мудрости и праведности? О моей примерной жизни?»~ */
  IF ~~ THEN REPLY #60286 /* ~«Кто ты?»~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #60287 /* ~«Что это за место?»~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #60288 /* ~«Что ты можешь рассказать о Проклятом?»~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60289 /* ~«Я слышал, у тебя есть проблемы с бандой головорезов».~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60290 /* ~«Расскажи мне об этой свалке».~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #68150 /* ~«Нет. Прощай».~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",3)
NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #60291 /* ~«Ты пришел за просвещением? За мудрым советом? За... а, это ты». Кажется, он слегка разочарован.~ */
  IF ~~ THEN REPLY #60292 /* ~«Кто ты?»~ */ GOTO 12
  IF ~~ THEN REPLY #60293 /* ~«Что это за место?»~ */ GOTO 13
  IF ~~ THEN REPLY #60294 /* ~«Что ты можешь рассказать о Проклятом?»~ */ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60295 /* ~«Я слышал, у тебя есть проблемы с бандой головорезов».~ */ DO ~SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60296 /* ~«Расскажи мне об этой свалке».~ */ GOTO 17
  IF ~~ THEN REPLY #68149 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.0 16.0
  SAY #60297 /* ~«Я Кайс, смотритель городской свалки. Я слежу за мусором, и, в переносном смысле, повидал немало душ, попавших сюда. Я — голос, побуждающий на добрые поступки, однако боюсь, что меня игнорируют».~ */
  IF ~~ THEN REPLY #60298 /* ~«Понятно. У меня еще несколько вопросов...»~ */ GOTO 16
  IF ~~ THEN REPLY #60299 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 16.1
  SAY #60300 /* ~«Это городская свалка. Я присматриваю за ней, охочусь на вредителей, которые здесь рыщут. Не даю мусору разойтись по городу, а взамен мне приносят еще».~ */
  IF ~~ THEN REPLY #60301 /* ~«Понятно. У меня еще несколько вопросов...»~ */ GOTO 16
  IF ~~ THEN REPLY #60302 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2 16.2
  SAY #60303 /* ~«Этот город на грани катастрофы. Здесь творится все мыслимое зло, и все не такое, каким оно кажется. Все скрыто под видимостью любезности, но яд отравляет тех, кто его вдыхает. Это ядовитый город, наполненный ядовитыми людьми».~ */
  IF ~~ THEN REPLY #60304 /* ~«Понятно. У меня еще несколько вопросов...»~ */ GOTO 16
  IF ~~ THEN REPLY #60305 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3 11.3 16.3
  SAY #60306 /* ~«Это все Вернет, главарь вшей, собиратель грехов. Он говорит, что у меня есть монеты, и что я должен отдать их ему, но все мое богатство — в моем сердце и моей вере. Я говорил ему это. Боюсь, он не поверил. Пойди и переубеди его. Пожалуйста. Он находится в южной части Внутреннего Проклятого, возле повозок».~ */
  IF ~~ THEN REPLY #60307 /* ~«Конечно. У меня есть другие вопросы...»~ */ JOURNAL #60309 /* ~Кайс, смотритель свалки, попросил меня поговорить с головорезом по имени Вернет и убедить его, что у старика нет ничего ценного. Охотно ему верю. Он говорит, что Вернет находится в южной части Внутреннего Проклятого, возле каких-то повозок.~ */ GOTO 16
  IF ~~ THEN REPLY #60308 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.0 13.0 14.0 15.0 17.0
  SAY #60310 /* ~«Что тебе нужно?»~ */
  IF ~~ THEN REPLY #60311 /* ~«Кто ты?»~ */ GOTO 12
  IF ~~ THEN REPLY #60312 /* ~«Что это за место?»~ */ GOTO 13
  IF ~~ THEN REPLY #60313 /* ~«Что ты можешь рассказать о Проклятом?»~ */ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60314 /* ~«Я слышал, у тебя есть проблемы с бандой головорезов».~ */ DO ~SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60315 /* ~«Расскажи мне об этой свалке».~ */ GOTO 17
  IF ~~ THEN REPLY #68148 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 5.4 6.3 7.3 8.3 10.4 11.4 16.4
  SAY #68144 /* ~Он по-заговорщически наклоняется к тебе. «У меня тут есть секретный проход под землю. Это тайное место, о котором почти никому неизвестно. Это ход в городские подземелья... — он делает паузу. — Но я им ни разу не пользовался. Если мне придется туда идти, я, пожалуй, не смогу вернуться. Спуск скользкий, и камни могут обвалиться за моей спиной. Когда я буду готов к смерти, я скачусь туда и позволю чудовищам попировать моими косточками».~ */
  IF ~~ THEN REPLY #68145 /* ~«У меня еще несколько вопросов...»~ */ JOURNAL #68147 /* ~Смотритель свалки рассказал мне о секретном проходе в подземелья Проклятого. Еще он добавил, что когда я пройду через него, вполне вероятно, что я никогда не смогу вернуться тем же путем. Надо это запомнить.~ */ GOTO 16
  IF ~~ THEN REPLY #68146 /* ~«Понятно. Прощай».~ */ JOURNAL #68147 /* ~Смотритель свалки рассказал мне о секретном проходе в подземелья Проклятого. Еще он добавил, что когда я пройду через него, вполне вероятно, что я никогда не смогу вернуться тем же путем. Надо это запомнить.~ */ EXIT
END
