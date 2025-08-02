// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKORUR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DKORUR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36238 /* ~Ты видишь мужчину средних лет в пыльной одежде. Кажется, у него проблемы со здоровьем: у него желтая кожа, а на руках видны редкие прыщи.~ */
  IF ~~ THEN REPLY #36265 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #36266 /* ~Не обращать на него внимания.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36239 /* ~Он поворачивается, окидывает тебя пустым взглядом и подозрительно прищуривается, оглядываясь по сторонам. «Чего хотел?» — говорит он скрипучим голосом.~ */
  IF ~~ THEN REPLY #36267 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #36268 /* ~«Неважно, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36240 /* ~Он снова смотрит на тебя. «Зачем ты мне надоедаешь? Я что, похож на осведомителя?»~ */
  IF ~~ THEN REPLY #36269 /* ~«Ты тоже сойдешь».~ */ GOTO 3
  IF ~~ THEN REPLY #36270 /* ~«Похоже, ты — просвещенная личность, и я мог бы много чего от тебя узнать».~ */ GOTO 4
  IF ~~ THEN REPLY #36271 /* ~«Кто такой осведомитель?»~ */ GOTO 23
  IF ~~ THEN REPLY #36272 /* ~«Неважно, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36241 /* ~Он смотрит на тебя и фыркает. «Вот повезло-то... убирайся. У меня нет на все это времени». Он отворачивается.~ */
  IF ~~ THEN REPLY #36273 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.3 6.1 7.2 8.3 9.2 10.2 11.1 12.3 13.2 14.1 15.1 16.0 17.2 18.1 19.0 21.0 23.0 24.0 25.1
  SAY #36242 /* ~Он вздыхает. «Что ты хотел узнать?»~ */
  IF ~~ THEN REPLY #36274 /* ~«Кто ты?»~ */ GOTO 25
  IF ~~ THEN REPLY #36275 /* ~«Ты нормально себя чувствуешь?»~ */ GOTO 5
  IF ~~ THEN REPLY #36276 /* ~«Что ты можешь рассказать об этом районе?»~ */ GOTO 11
  IF ~~ THEN REPLY #36277 /* ~«Здесь есть на что посмотреть?»~ */ GOTO 17
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36278 /* ~«Я ищу кое-кого по имени Лотар, он же Повелитель Костей...»~ */ GOTO 20
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36279 /* ~«У меня был череп, и его украли. Ты не знаешь, кто бы мог такое сделать?»~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #54106 /* ~«Я хочу стать воином. Ты мог бы обучить меня в этом направлении?»~ */ GOTO 26
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #54107 /* ~«Я хочу стать лучшим воином. Ты можешь помочь мне улучшить мои навыки?»~ */ GOTO 27
  IF ~~ THEN REPLY #64627 /* ~«Спасибо. Мне нужно идти, прощай»~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #36243 /* ~«Ничего такого, чего не исправит могила, — он кашляет и смотрит вверх. — В последнее время воздух на районе все хуже и хуже. По моим прикидкам, он придет в норму, как только решится проблема с Великой Литейной... или подует ветер со Шпиля».~ */
  IF ~~ THEN REPLY #36281 /* ~«Что здесь с воздухом?»~ */ GOTO 6
  IF ~~ THEN REPLY #36282 /* ~«Расскажи мне о Литейной».~ */ GOTO 8
  IF ~~ THEN REPLY #36283 /* ~«Так что насчет ветра?»~ */ GOTO 10
  IF ~~ THEN REPLY #36284 /* ~«Понятно. У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #36285 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.1 9.0 10.0
  SAY #36244 /* ~«В основном это из-за всех этих порталов». Он заходится в припадке кашля, потом вновь сосредотачивает свое внимание на тебе.~ */
  IF ~~ THEN REPLY #36286 /* ~«О чем это ты?»~ */ GOTO 7
  IF ~~ THEN REPLY #36287 /* ~«Понятно. У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #36288 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36245 /* ~«Тьма дверей в Нижние планы впускает сюда дурной воздух, испарения и тому подобное с черт-знает-какого уровня Бездны. Потому-то это и *Нижний* район, — он смеется. — Гулять по этому месту — все равно что дышать мукой. Соль, копоть, дым... все эти желтые покрывала дыма и жгучего серного газа, которые выплевывает этот район, — он дарит тебе редкозубую улыбку. — Чудненько, а?»~ */
  IF ~~ THEN REPLY #36289 /* ~«Э, да... ты упоминал Литейную».~ */ GOTO 8
  IF ~~ THEN REPLY #36290 /* ~«Что ты там говорил насчет ветра?»~ */ GOTO 10
  IF ~~ THEN REPLY #36291 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #36292 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0 10.1
  SAY #36246 /* ~«Она прямо в центре района. Ищи трубы. Там боголюди делают кучу штук из железа; не черт-знает-что, но работает. Добавляет сюда дурной воздух».~ */
  IF ~~ THEN REPLY #36293 /* ~«Боголюди?»~ */ GOTO 9
  IF ~~ THEN REPLY #36294 /* ~«Что здесь с воздухом?»~ */ GOTO 6
  IF ~~ THEN REPLY #36295 /* ~«Ты что-то говорил насчет ветра...»~ */ GOTO 10
  IF ~~ THEN REPLY #36296 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 4
  IF ~~ THEN REPLY #36297 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #36247 /* ~«Верящие. Обосновались в Великой Литейной, грохочут, поют и болтают свои бредовые глупости о том, как стать силой через десять по десять помногу раз десять жизней, — он закатывает глаза, потом сплевывает коричневую массу. — Они только и делают, что терпят и батрачат... я батрачу раза в два больше, и все равно черта-с-два стану какой-нибудь силой, улавливаешь, пень?» Он глухо смеется.~ */
  IF ~~ THEN REPLY #36298 /* ~«Что здесь с воздухом?»~ */ GOTO 6
  IF ~~ THEN REPLY #36299 /* ~«Ты что-то говорил насчет ветра...»~ */ GOTO 10
  IF ~~ THEN REPLY #36300 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 4
  IF ~~ THEN REPLY #36301 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 7.1 8.2 9.1
  SAY #36248 /* ~«Временами с сигильского Шпиля дует ветер и уносит смог... — он оглядывается и кашляет. — Но ненадолго».~ */
  IF ~~ THEN REPLY #36302 /* ~«Что здесь с воздухом?»~ */ GOTO 6
  IF ~~ THEN REPLY #36303 /* ~«Расскажи мне об этой Литейной».~ */ GOTO 8
  IF ~~ THEN REPLY #36304 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #36305 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2
  SAY #36249 /* ~«А... — он смотрит на тебя, как на сумасшедшего. — Ты, что, невежда? Мастерские, лавки, склады — это все тут, — он косится на тебя, его взгляд слегка затуманен. — Ты ищешь что-то конкретное?»~ */
  IF ~~ THEN REPLY #36306 /* ~«Чем здесь можно заняться?»~ */ GOTO 12
  IF ~~ THEN REPLY #36307 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #36308 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36250 /* ~Пару секунд он изучает тебя, затем смотрит на тебя понимающе. «Что, ищешь, где бы нагреть свою железяку? — он смеется, смех перерастает в кашель. — Таких мест поблизости нет. Можно поискать в других районах. Если ты, конечно, здесь за этим».~ */
  IF ~~ THEN REPLY #36309 /* ~«Что, прости?»~ */ GOTO 13
  IF ~~ THEN REPLY #36310 /* ~«Неплохо бы получить немного звенелок».~ */ GOTO 14
  IF ~~ THEN REPLY #36311 /* ~«Я хотел бы кое-что купить».~ */ GOTO 15
  IF ~~ THEN REPLY #36312 /* ~«У меня еще вопросы».~ */ GOTO 4
  IF ~~ THEN REPLY #36313 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36251 /* ~Он снова заходится хохотом, который переходит в еще более сильный приступ кашля. «Прости, рубака. Не бери в голову. Ты ищешь что-нибудь конкретное?»~ */
  IF ~~ THEN REPLY #36314 /* ~«Неплохо бы получить немного звенелок».~ */ GOTO 14
  IF ~~ THEN REPLY #36315 /* ~«Я хотел бы кое-что купить».~ */ GOTO 15
  IF ~~ THEN REPLY #36316 /* ~«У меня еще вопросы».~ */ GOTO 4
  IF ~~ THEN REPLY #36317 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.0
  SAY #36252 /* ~«Если ищешь работу — тут тебе не повезло. Работы здесь едва местным хватает».~ */
  IF ~~ THEN REPLY #36318 /* ~«Я хотел бы кое-что купить».~ */ GOTO 15
  IF ~~ THEN REPLY #36319 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #36320 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 13.1 14.0
  SAY #36253 /* ~«Если нужно прикупить парочку вещей или провернуть сделку покруче, то я бы направился прямиком на открытый рынок». Он снова начинает кашлять.~ */
  IF ~~ THEN REPLY #36321 /* ~«Что ты можешь рассказать о рынке?»~ */ GOTO 16
  IF ~~ THEN REPLY #36323 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #36324 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36254 /* ~Он дарит тебе недобрую улыбку. «Там продают и покупают, пень. Это ж рынок... что тут еще скажешь?»~ */
  IF ~~ THEN REPLY #36325 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #36326 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 4.3
  SAY #36255 /* ~«Э... — он на миг задумывается. — Ну, есть тут башня. Похоже, ее здесь часто вспоминают».~ */
  IF ~~ THEN REPLY #36327 /* ~«Расскажи мне о башне».~ */ GOTO 18
  IF ~~ THEN REPLY #36328 /* ~«Больше ничего не приходит на ум?»~ */ GOTO 19
  IF ~~ THEN REPLY #36329 /* ~«У меня к тебе еще несколько вопросов...»~ */ GOTO 4
  IF ~~ THEN REPLY #36330 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36256 /* ~«Ха! — он смеется, но вскоре его смех переходит в кашель. — Одна из самых ужасных загадок этого района... слыхал байку, будто она однажды просто свалилась на Сигил, много лет назад; непонятно, откуда она взялась, как она сюда попала и как пробраться в эту чертову штуковину. Занимает здесь место, такая себе достопримечательность... все эти следы от кислоты и оружия... похоже, она видала не одну сотню войн, это уж точно».~ */
  IF ~~ THEN REPLY #36331 /* ~«Больше ничего не приходит на ум?»~ */ GOTO 19
  IF ~~ THEN REPLY #36332 /* ~«У меня к тебе еще несколько вопросов...»~ */ GOTO 4
  IF ~~ THEN REPLY #36333 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #36257 /* ~Он ненадолго уходит в мысли, потом пожимает плечами. «Больше ничего интересного в голову не приходит».~ */
  IF ~~ THEN REPLY #36334 /* ~«У меня к тебе еще несколько вопросов...»~ */ GOTO 4
  IF ~~ THEN REPLY #36335 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 4.4
  SAY #36258 /* ~Он начинает нервничать и оглядываться. «Ага... Слыхал о нем. Говорю тебе, с ним лучше не шутить. Его берлога — место, которое зовется *Кости Ночи* или еще как-то так».~ */
  IF ~~ THEN REPLY #36336 /* ~«Где можно найти это место?»~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 22.0
  SAY #36259 /* ~Он хмурится. «Ну, это опасный разговор... если бы я *собирался* что-нибудь сказать, а я не собираюсь, я бы посоветовал присмотреться к развороченной постройке здесь, на районе. Может, там ты что и найдешь, а? — он пристально смотрит на тебя. — Только ты от меня этого не слышал, усек?»~ */
  IF ~~ THEN REPLY #36337 /* ~«Спасибо. У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #36338 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 4.5
  SAY #36260 /* ~Кажется, он чувствует себя немного неловко. «Значит, череп пропал? Хм, ну, ты от меня этого не слышал, но есть тут народ... — он смотрит по сторонам. — Зарабатывают на жизнь собиранием голов мертвецов. Работают на вояку по имени Лотар. Они его кличут *Повелитель Костей*».~ */
  IF ~~ THEN REPLY #36339 /* ~«Где я могу найти этого Лотара?»~ */ GOTO 21
  IF ~~ THEN REPLY #36340 /* ~«Спасибо, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.2
  SAY #36261 /* ~Он смотрит на тебя хмуро. «Тот, к кому ты приходишь, чтобы задать кучу чертовых дурацких вопросов...» Он пристально смотрит на тебя.~ */
  IF ~~ THEN REPLY #36341 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 4
  IF ~~ THEN REPLY #36342 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #36262 /* ~Ты видишь мужчину средних лет в пыльной одежде. «Вернулся, а? — он хмуро смотрит на тебя. — Что теперь?»~ */
  IF ~~ THEN REPLY #36343 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 4
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #54108 /* ~«Я хочу стать воином. Ты мог бы обучить меня в этом направлении?»~ */ GOTO 26
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #54109 /* ~«Я хочу стать лучшим воином. Ты можешь помочь мне улучшить мои навыки?»~ */ GOTO 27
  IF ~~ THEN REPLY #54110 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.0
  SAY #36263 /* ~Он делает тебе легкий поклон. «Зовут Корур. В свое время я был бойцом хоть куда... — он останавливается и вздыхает. — Ну, деньки-то эти уж давно прошли, но я до сих пор знаю пару трюков».~ */
  IF ~~ THEN REPLY #36345 /* ~«Ты можешь обучить меня пути воина?»~ */ GOTO 26
  IF ~~ THEN REPLY #36346 /* ~«Понятно. У меня есть другие вопросы...»~ */ GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 4.6 24.1 25.0
  SAY #36264 /* ~«Ну... отчего нет. Ты уверен, что хочешь сменить специализацию?»~ */
  IF ~~ THEN REPLY #36347 /* ~«Да, я уверен».~ */ DO ~SetNamelessClass(FIGHTER)
~ GOTO 27
  IF ~~ THEN REPLY #52333 /* ~«Нет, я подумаю над этим. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 4.7 24.2 26.0
  SAY #52334 /* ~«Ну... Чему именно ты хотел обучиться?»~ */
  IF ~  ExtraProficiency(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #52335 /* ~«Можешь сказать, готов ли я обучаться дальше?»~ */ GOTO 28
  IF ~  ExtraProficiencyGT(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #52336 /* ~«Можешь сказать, готов ли я обучаться дальше?»~ */ GOTO 29
  IF ~~ THEN REPLY #52338 /* ~«Пока ничему. Я вернусь».~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 38.1 40.1
  SAY #52339 /* ~«Ты знаешь все, чему я пока могу тебя научить... приходи снова, когда накопишь чуток больше опыта».~ */
  IF ~~ THEN REPLY #52340 /* ~«Отлично, спасибо тебе».~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #52341 /* ~«Думаю, я мог бы еще немного тебя поучить».~ */
  IF ~~ THEN REPLY #52342 /* ~«Я готов, чему ты можешь обучить меня?»~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.6 33.6 34.6 35.6 36.6 38.0 39.0 40.0
  SAY #52343 /* ~«Чему ты хочешь научиться?»~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52344 /* ~«Научи меня бою на кулаках».~ */ GOTO 32
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52345 /* ~«Научи меня, как пользоваться кинжалом».~ */ GOTO 33
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52346 /* ~«Научи меня, как пользоваться дубиной».~ */ GOTO 34
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52347 /* ~«Научи меня, как пользоваться боевым топором».~ */ GOTO 35
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52348 /* ~«Научи меня, как пользоваться молотом».~ */ GOTO 36
  IF ~~ THEN REPLY #52349 /* ~«Мне сегодня не до тренировок. Я вернусь позже».~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #52350 /* ~«Ты превзошел мои способности. Ты лучший из воинов, каких я видал... может, даже лучший из всех, ходивших по планам».~ */
  IF ~~ THEN REPLY #52351 /* ~«Спасибо, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #52352 /* ~«Значит, бою на кулаках? Ну... если хочешь — научу».~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52353 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52354 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52355 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52356 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,FIST,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66935 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66936 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66937 /* ~«Нет... каким еще видам оружия ты можешь меня обучить?»~ */ GOTO 30
  IF ~~ THEN REPLY #66938 /* ~«Нет, не думаю, что сегодня я хочу тренироваться. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1
  SAY #52357 /* ~«Значит, кинжалом? Ну... если хочешь — научу».~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52358 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52359 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52361 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66939 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,DAGGER,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66940 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66941 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66948 /* ~«Нет... каким еще видам оружия ты можешь меня обучить?»~ */ GOTO 30
  IF ~~ THEN REPLY #66952 /* ~«Нет, не думаю, что сегодня я хочу тренироваться. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.2
  SAY #52362 /* ~«Значит, дубиной? Ну... если хочешь — научу».~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52363 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52364 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52365 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52366 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,CLUB,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66942 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66943 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66949 /* ~«Нет... каким еще видам оружия ты можешь меня обучить?»~ */ GOTO 30
  IF ~~ THEN REPLY #66953 /* ~«Нет, не думаю, что сегодня я хочу тренироваться. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.3
  SAY #52367 /* ~«Значит, топором? Ну... если хочешь — научу».~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52368 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52369 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52370 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52371 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,AXE,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66944 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66945 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66950 /* ~«Нет... каким еще видам оружия ты можешь меня обучить?»~ */ GOTO 30
  IF ~~ THEN REPLY #66954 /* ~«Нет, не думаю, что сегодня я хочу тренироваться. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.4
  SAY #52372 /* ~«Значит, молотом? Ну... если хочешь — научу».~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52373 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52374 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52375 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #52376 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 39
  IF ~  ProficiencyLT(Protagonist,HAMMER,5)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66946 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 37
  IF ~  ProficiencyGT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #66947 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
  IF ~~ THEN REPLY #66951 /* ~«Нет... каким еще видам оружия ты можешь меня обучить?»~ */ GOTO 30
  IF ~~ THEN REPLY #66955 /* ~«Нет, не думаю, что сегодня я хочу тренироваться. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 32.0 32.2 32.4 33.0 33.2 33.4 34.0 34.2 34.4 35.0 35.2 35.4 36.0 36.2 36.4
  SAY #52377 /* ~«Ну, вот... ты готов?»~ */
  IF ~~ THEN REPLY #52378 /* ~«Да...»~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #52379 /* ~«Хе... ну, тогда это все, я полагаю. Что дальше?»~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #52380 /* ~«Спасибо. Я бы хотел обучиться другому оружию, если будешь меня обучать».~ */ GOTO 30
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #52381 /* ~«Спасибо. Я бы хотел обучиться другому оружию, если будешь меня обучать».~ */ GOTO 28
  IF ~~ THEN REPLY #52382 /* ~«Спасибо. Это все, что я хотел узнать сегодня».~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 32.1 32.3 33.1 33.3 34.1 34.3 35.1 35.3 36.1 36.3
  SAY #52383 /* ~«Ну... походу, больше я ничему тебя научить не могу. Если только ты целиком не посвятишь свою жизнь ратному делу. Если хочешь стать сильнее, ты должен *специализироваться* на нем. Ты еще не посвятил себя военному ремеслу. Только превратив свое тело в оружие, ты сможешь научиться у меня чему-то большему».~ */
  IF ~~ THEN REPLY #52384 /* ~«Ладно. Каким еще видам оружия ты можешь меня обучить?»~ */ JOURNAL #68288 /* ~Мне сказали, что я больше не могу обучаться оружию, если только не сосредоточусь на пути воина. Более полное посвящение себя искусству боя, без отвлечения на воровство и магию, должно обеспечить мне специализацию, о которой говорит мой наставник.~ */ GOTO 30
  IF ~~ THEN REPLY #52385 /* ~«Спасибо. Прощай».~ */ JOURNAL #68288 /* ~Мне сказали, что я больше не могу обучаться оружию, если только не сосредоточусь на пути воина. Более полное посвящение себя искусству боя, без отвлечения на воровство и магию, должно обеспечить мне специализацию, о которой говорит мой наставник.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 32.5 33.5 34.5 35.5 36.5
  SAY #66931 /* ~Он изумленно глядит на тебя. «Ты хочешь знать больше? Дружище, ты не сможешь узнать об этом оружии что-то еще. Да никто на планах не сможет научить тебя большему».~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66932 /* ~«Спасибо. Я бы хотел обучиться другому оружию, если будешь меня обучать».~ */ GOTO 30
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #66933 /* ~«Спасибо. Я бы хотел обучиться другому оружию, если будешь меня обучать».~ */ GOTO 28
  IF ~~ THEN REPLY #66934 /* ~«Спасибо. Это все, что я хотел узнать сегодня».~ */ EXIT
END
