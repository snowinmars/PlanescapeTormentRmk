// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWCAFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWCAFEM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #27334 /* ~Этот ухоженный, хорошо одетый мужчина отдыхает, наслаждаясь свежим воздухом и потягивая напиток, купленный в кафе неподалеку.~ */
  IF ~~ THEN REPLY #2895 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #2896 /* ~Оставить мужчину в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #27335 /* ~«Приветствую... — он запинается, разглядев тебя как следует. — Э... вас, сэр». Он натянуто улыбается.~ */
  IF ~~ THEN REPLY #2897 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 4
  IF ~~ THEN REPLY #2898 /* ~«Что-то не так с моим внешним видом?»~ */ GOTO 2
  IF ~~ THEN REPLY #27383 /* ~«Мне уже пора. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #27336 /* ~«Нет, сэр, проблема во мне. Я просто не привык видеть людей с такой... потрепанной... внешностью, как у вас, — он ненадолго закрывает глаза, положив руку на грудь, будто извиняясь. — Прошу меня простить за реакцию на ваше появление, сэр».~ */
  IF ~~ THEN REPLY #27384 /* ~«Потрепанной?»~ */ GOTO 3
  IF ~~ THEN REPLY #27385 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 4
  IF ~~ THEN REPLY #27386 /* ~«Не беспокойся. Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27337 /* ~«'Бывалая', если хотите. То есть, ваша внешность, сэр... ну, она слегка потрепанная, грубая по краям. Здесь вы, э, немного выделяетесь. Но ведь Сигил полон странностей, не так ли? Мне кажется, просто в Чиновничьем районе их меньше, чем остальной части города, вот и все. Разумеется, за исключением Фестхолла».~ */
  IF ~~ THEN REPLY #27387 /* ~«Чиновничий район?»~ */ GOTO 6
  IF ~~ THEN REPLY #27388 /* ~«Фестхолл?».~ */ GOTO 22
  IF ~~ THEN REPLY #27389 /* ~«Ты имеешь в виду, что я выгляжу как мертвый, так? Да, так и есть. Я мертвый!»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #27390 /* ~«Хм-м. У меня есть несколько вопросов...»~ */ GOTO 4
  IF ~~ THEN REPLY #27391 /* ~«Кажется, понимаю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.3 5.1 6.2 7.1 8.0 9.0 10.2 11.1 12.9 13.2 15.2 17.2 18.3 20.2 21.2 22.4 23.4 24.2 25.8 26.1 27.1 28.1 29.2 30.1 31.1 32.1 33.1 34.3 35.3 36.1 37.1 38.2 39.2 40.2 41.0 42.0 43.0 44.1 45.1 46.1 48.1
  SAY #27338 /* ~«Спрашивайте, что хотите... Попробую вам ответить».~ */
  IF ~~ THEN REPLY #27392 /* ~«Что это за место?»~ */ GOTO 5
  IF ~~ THEN REPLY #27393 /* ~«Здесь есть что-нибудь интересное?»~ */ GOTO 7
  IF ~~ THEN REPLY #27394 /* ~«Где здесь можно найти работу?»~ */ GOTO 9
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27395 /* ~«Я хотел бы спросить об одном конкретном месте...»~ */ GOTO 12
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27396 /* ~«Мне просто нужно сориентироваться...»~ */ GOTO 25
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #27397 /* ~«Ты что-нибудь знаешь о Равель Заморочке?»~ */ GOTO 42
  IF ~~ THEN REPLY #27398 /* ~«Ничего особенного. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27339 /* ~Похоже, его развеселил твой вопрос. «Да ведь это же Чиновничий район! Сэр, вы недавно в Сигиле? Постойте... вы похожи на человека, который ищет ответы, а не вопросы... и не особо о себе распространяется. Забудьте мой вопрос». Он улыбается.~ */
  IF ~~ THEN REPLY #27399 /* ~«Что ты можешь рассказать об этом районе?»~ */ GOTO 6
  IF ~~ THEN REPLY #27400 /* ~«И то правда. На самом деле, у меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27401 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #27340 /* ~«Ну, большая часть района, где я, похоже, навеки обречен проводить большую часть времени, отведена под архивы и административные здания... правда, они в другой части района».~ */
  IF ~~ THEN REPLY #27402 /* ~«Почему ты 'обречен' здесь оставаться?»~ */ GOTO 10
  IF ~~ THEN REPLY #27403 /* ~«Чем выделяется эта часть района?»~ */ GOTO 7
  IF ~~ THEN REPLY #27404 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27405 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.1 10.1 11.0
  SAY #27341 /* ~«В первую очередь, это Городской Фестхолл. А также Бордель утоления интеллектуальной страсти... нетипичный бордель, знаете ли... он удовлетворяет потребности более умственного характера. Тем не менее, это весьма соблазнительно!» Он лукаво улыбается.~ */
  IF ~~ THEN REPLY #27406 /* ~«Продолжай...»~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #27407 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27408 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #27342 /* ~«Из других мест можно упомянуть, — он загибает пальцы на руке, — дом адвоката, аптеку, художественную галерею, катакомбы под районом и мастерскую портного. О! Чуть не забыл... еще есть такой себе 'антикварный магазин'».~ */
  IF ~~ THEN REPLY #27409 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27410 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #27343 /* ~Мужчина хмыкает, нахмурив лоб. «Позволю допустить, сэр, что вам не нужно постоянное трудоустройство. Можете поискать временную работу у адвоката или в аптеке. Ну а в Фестхолле так просто куча всяких делишек. Может, там вы что-нибудь найдете».~ */
  IF ~~ THEN REPLY #27411 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27412 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #27344 /* ~Он пожимает плечами, посмотрев в сторону с выражением боли. «Здесь я выполняю свои обязанности, сэр. Это мои средства к существованию, мое место работы».~ */
  IF ~~ THEN REPLY #27414 /* ~«Чем ты занимаешься?»~ */ GOTO 11
  IF ~~ THEN REPLY #27415 /* ~«Так что же выделяет эту часть района?»~ */ GOTO 7
  IF ~~ THEN REPLY #27416 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27417 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #27345 /* ~Он поднимает руки, качая головой. «Э, нет, сэр, об этом я сейчас говорить не буду. Никаких разговоров про правила и бумажную работу, пока я вдалеке от них, и точка». Он вежливо улыбается.~ */
  IF ~~ THEN REPLY #27418 /* ~«Так что же выделяет эту часть района?»~ */ GOTO 7
  IF ~~ THEN REPLY #27419 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27420 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.3 13.1 15.1 16.1 17.1 18.2 20.1 21.1 22.3 23.3 24.1 34.2 35.2
  SAY #27346 /* ~«О? О каком?»~ */
  IF ~~ THEN REPLY #27421 /* ~«Дом адвоката».~ */ GOTO 13
  IF ~~ THEN REPLY #27423 /* ~«Аптека».~ */ GOTO 16
  IF ~~ THEN REPLY #27468 /* ~«Художественная галерея».~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27469 /* ~«Бордель».~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27470 /* ~«Бордель».~ */ GOTO 19
  IF ~~ THEN REPLY #27471 /* ~«Катакомбы под районом».~ */ GOTO 21
  IF ~~ THEN REPLY #27472 /* ~«Городской Фестхолл».~ */ GOTO 22
  IF ~~ THEN REPLY #27473 /* ~«Антикварный магазин».~ */ GOTO 23
  IF ~~ THEN REPLY #27474 /* ~«Мастерская портного».~ */ GOTO 24
  IF ~~ THEN REPLY #27475 /* ~«Неважно. Позволь спросить кое о чем еще...»~ */ GOTO 4
  IF ~~ THEN REPLY #27476 /* ~«Пожалуй, никаком. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 26.0
  SAY #27347 /* ~«Адвокаты помогают в спорных делах, готовят официальные документы и действуют в качестве законных представителей своих клиентов. Один из них, Янис, живет неподалеку отсюда. Он очень уважаем и заслуживает доверия. Он живет и работает в районе с очень давних пор».~ */
  IF ~~ THEN REPLY #27477 /* ~«Как мне добраться до дома Яниса?»~ */ GOTO 26
  IF ~~ THEN REPLY #27478 /* ~«Я хочу спросить о другом месте...»~ */ GOTO 12
  IF ~~ THEN REPLY #27479 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27480 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #27348 /* ~«Адвокаты помогают в спорных делах, готовят официальные документы и действуют в качестве законных представителей своих клиентов».~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #27349 /* ~«Один из них, Янис, живет неподалеку отсюда. Он очень уважаем и заслуживает доверия. Он живет и работает в районе с очень давних пор».~ */
  IF ~~ THEN REPLY #27481 /* ~«Как мне добраться до дома Яниса?»~ */ GOTO 26
  IF ~~ THEN REPLY #27482 /* ~«Я хочу спросить о другом месте...»~ */ GOTO 12
  IF ~~ THEN REPLY #27483 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27484 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1 27.0
  SAY #27350 /* ~«В аптеке продают различные мази, снадобья, травы и тому подобное, — на секунду он хмурится. — Хозяева немного чокнутые, постоянно испытывают на себе свои товары. Хотя ребята они неплохие».~ */
  IF ~~ THEN REPLY #27485 /* ~«Как мне попасть в аптеку?»~ */ GOTO 27
  IF ~~ THEN REPLY #27486 /* ~«Я хочу спросить о другом месте...»~ */ GOTO 12
  IF ~~ THEN REPLY #27487 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 28.0
  SAY #27351 /* ~«Художественная галерея Иваны — весьма занимательное место. У нее собрана коллекция редчайших предметов искусства со всех планов».~ */
  IF ~~ THEN REPLY #27488 /* ~«Как мне попасть в художественную галерею?»~ */ GOTO 28
  IF ~~ THEN REPLY #27489 /* ~«Я хочу спросить о другом месте...»~ */ GOTO 12
  IF ~~ THEN REPLY #27490 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27491 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.3 29.0
  SAY #27352 /* ~«Заведение чувствующих, которое ублажает разум и чувства, — на секунду он закрывает глаза, счастливо улыбаясь. — Им управляет очаровательнейшая женщина, Падшая Грация. Очень рекомендую посетить его, если вы впервые в этом районе, сэр».~ */
  IF ~~ THEN REPLY #27492 /* ~«Чувствующих?»~ */ GOTO 36
  IF ~~ THEN REPLY #27493 /* ~«Как мне попасть в Бордель?»~ */ GOTO 29
  IF ~~ THEN REPLY #27494 /* ~«Я хочу спросить о другом месте...»~ */ GOTO 12
  IF ~~ THEN REPLY #27495 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27496 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.4 29.1
  SAY #27353 /* ~«Заведение чувствующих, которое ублажает разум и чувства. Им управляет очаровательнейшая женщина, Падшая Грация». Он делает глубокий поклон Грации.~ */
  IF ~~ THEN EXTERN ~DGRACE~ 126
END

IF ~~ THEN BEGIN 20 // from:
  SAY #27354 /* ~«О нет, это вы заслуживаете похвалы, госпожа Грация. Для меня это большая честь — произносить подобный комплимент лично вам». Он снова поворачивается к тебе.~ */
  IF ~~ THEN REPLY #27497 /* ~«Я забыл... Как мне попасть в Бордель?»~ */ GOTO 29
  IF ~~ THEN REPLY #27498 /* ~«Я хочу спросить о другом месте...»~ */ GOTO 12
  IF ~~ THEN REPLY #27499 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27500 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.5 30.0
  SAY #27355 /* ~«Для меня остается загадкой, почему дабусы до сих пор их не закрыли. Там полным-полно монстров. А еще поговаривают, там есть ужасные существа, что-то бормочущие в темноте».~ */
  IF ~~ THEN REPLY #27501 /* ~«Как мне попасть в них?»~ */ GOTO 30
  IF ~~ THEN REPLY #27502 /* ~«Я хочу спросить о другом месте...»~ */ GOTO 12
  IF ~~ THEN REPLY #27503 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27504 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.1 12.6 31.0
  SAY #27356 /* ~«Одно из самых удивительных заведений Сигила... Это штаб-квартира фракции чувствующих, известная по всей мультивселенной своими концертами, выставками и лекциями. Однако самое удивительное у них — это их сенсориумы».~ */
  IF ~~ THEN REPLY #27505 /* ~«Чувствующих?»~ */ GOTO 36
  IF ~~ THEN REPLY #27506 /* ~«Сенсориумы?»~ */ GOTO 38
  IF ~~ THEN REPLY #27507 /* ~«Где находится Фестхолл?»~ */ GOTO 31
  IF ~~ THEN REPLY #27508 /* ~«Я хочу спросить о другом месте...»~ */ GOTO 12
  IF ~~ THEN REPLY #27509 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27510 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.7 32.0
  SAY #27357 /* ~«Не могу похвастаться, что я там бывал, но насколько я понимаю, им заправляет одна поставщица товаров... полунечисть. Ее товары приходят с Нижних планов».~ */
  IF ~~ THEN REPLY #27511 /* ~«Полунечисть?»~ */ GOTO 35
  IF ~~ THEN REPLY #27512 /* ~«Нижних планов?»~ */ GOTO 34
  IF ~~ THEN REPLY #27513 /* ~«Где можно найти это место?»~ */ GOTO 32
  IF ~~ THEN REPLY #27514 /* ~«Я хочу спросить о другом месте...»~ */ GOTO 12
  IF ~~ THEN REPLY #27515 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27516 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.8 33.0
  SAY #27358 /* ~«Гонсалвис — великолепный портной, вот только у него пылкий нрав, и его легко обидеть. Должен предупредить вас, сэр: он судит людей по одежке, так что вам будет очень трудно с ним сдружиться».~ */
  IF ~~ THEN REPLY #27517 /* ~«Где находится мастерская Гонсалвиса?»~ */ GOTO 33
  IF ~~ THEN REPLY #27518 /* ~«Я хочу спросить о другом месте...»~ */ GOTO 12
  IF ~~ THEN REPLY #27519 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27520 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.4
  SAY #27359 /* ~«Куда, сэр?»~ */
  IF ~~ THEN REPLY #27521 /* ~«Дом адвоката».~ */ GOTO 26
  IF ~~ THEN REPLY #27522 /* ~«Аптека».~ */ GOTO 27
  IF ~~ THEN REPLY #27523 /* ~«Художественная галерея».~ */ GOTO 28
  IF ~~ THEN REPLY #27524 /* ~«Бордель».~ */ GOTO 29
  IF ~~ THEN REPLY #27525 /* ~«Катакомбы под районом».~ */ GOTO 30
  IF ~~ THEN REPLY #27526 /* ~«Городской Фестхолл».~ */ GOTO 31
  IF ~~ THEN REPLY #27527 /* ~«Антикварный магазин».~ */ GOTO 32
  IF ~~ THEN REPLY #27528 /* ~«Мастерская портного».~ */ GOTO 33
  IF ~~ THEN REPLY #27529 /* ~«Неважно. Позволь спросить кое о чем еще...»~ */ GOTO 4
  IF ~~ THEN REPLY #27530 /* ~«Пожалуй, никаком. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.0 15.0 25.0
  SAY #27360 /* ~«Дом Яниса находится на юге от ворот в Нижний район, через которые вы, скорее всего, сюда и вошли. Он будет на восточной стороне дороги».~ */
  IF ~~ THEN REPLY #27531 /* ~«Что ты можешь рассказать об адвокате?»~ */ GOTO 13
  IF ~~ THEN REPLY #27533 /* ~«Спасибо. Позволь мне спросить еще кое о чем...»~ */ GOTO 4
  IF ~~ THEN REPLY #27534 /* ~«Понятно. Спасибо за уделенное время. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.0 25.1
  SAY #27361 /* ~«Идите по дороге на восток от ворот в Нижний район, через которые вы, скорее всего, сюда и вошли. На развилке сворачивайте на юг... там ее и найдете, к востоку от дороги. У нее фасад с южной стороны и три витражных окна».~ */
  IF ~~ THEN REPLY #27535 /* ~«Что ты можешь рассказать об это месте?»~ */ GOTO 16
  IF ~~ THEN REPLY #27536 /* ~«Спасибо. Позволь мне спросить еще кое о чем...»~ */ GOTO 4
  IF ~~ THEN REPLY #27537 /* ~«Понятно. Спасибо за уделенное время. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 17.0 25.2
  SAY #27362 /* ~«Идите по дороге на восток от ворот в Нижний район, через которые вы, скорее всего, сюда и вошли. На развилке сворачивайте на юг... там ее и найдете, к западу от дороги. Ее фасад обращен на юг, а черепица на крыше привалена крупными камнями».~ */
  IF ~~ THEN REPLY #27538 /* ~«Что ты знаешь об этом месте?»~ */ GOTO 17
  IF ~~ THEN REPLY #27542 /* ~«Спасибо. Позволь мне спросить еще кое о чем...»~ */ GOTO 4
  IF ~~ THEN REPLY #27543 /* ~«Понятно. Спасибо за уделенное время. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.1 20.0 25.3
  SAY #27363 /* ~«Бордель утоления интеллектуальной страсти, да? — он понимающе улыбается. — Он прямо на востоке от ворот в Нижний район, через которые вы, скорее всего, сюда и вошли. Это большое круглое здание, вход - с юга».~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27544 /* ~«Что ты можешь сказать о Борделе?»~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27545 /* ~«Что ты можешь сказать о Борделе?»~ */ GOTO 19
  IF ~~ THEN REPLY #27546 /* ~«Спасибо. Позволь мне спросить еще кое о чем...»~ */ GOTO 4
  IF ~~ THEN REPLY #27547 /* ~«Понятно. Спасибо за уделенное время. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.0 25.4
  SAY #27364 /* ~Он хмурится. «Хм. Я знаю лишь, что туда ведут несколько входов... И еще кое-что. Должен предупредить вас, из этих катакомб никто не выходит... включая тех, кто вошел туда».~ */
  IF ~~ THEN REPLY #27548 /* ~«Что еще ты можешь о них сказать?»~ */ GOTO 21
  IF ~~ THEN REPLY #27549 /* ~«Спасибо. Позволь мне спросить еще кое о чем...»~ */ GOTO 4
  IF ~~ THEN REPLY #27550 /* ~«Понятно. Спасибо за уделенное время. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 22.2 25.5 39.0
  SAY #27365 /* ~«Найти Фестхолл легче всего, сэр. Это огромное здание в северо-восточной части этого района».~ */
  IF ~~ THEN REPLY #27553 /* ~«Что ты можешь рассказать мне про Фестхолл?»~ */ GOTO 22
  IF ~~ THEN REPLY #27554 /* ~«Спасибо. Позволь мне спросить еще кое о чем...»~ */ GOTO 4
  IF ~~ THEN REPLY #27555 /* ~«Понятно. Спасибо за уделенное время. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.2 25.6 34.1 35.1
  SAY #27366 /* ~«Я никогда не был там, но знаю, где он. Он находится здесь, в юго-восточной части. Необычное здание, к нему ведет широкая лестница. Сложно не заметить».~ */
  IF ~~ THEN REPLY #27556 /* ~«Что ты знаешь об этом месте?»~ */ GOTO 23
  IF ~~ THEN REPLY #27557 /* ~«Спасибо. Позволь мне спросить еще кое о чем...»~ */ GOTO 4
  IF ~~ THEN REPLY #27558 /* ~«Понятно. Спасибо за уделенное время. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0 25.7
  SAY #27367 /* ~«Мастерская портного Гонсалвиса находится на северо-востоке от ворот в Нижний район, через которые вы, скорее всего, сюда и вошли. Это длинное здание, вход — с юга».~ */
  IF ~~ THEN REPLY #27559 /* ~«Что ты можешь сказать об этом месте?»~ */ GOTO 24
  IF ~~ THEN REPLY #27560 /* ~«Спасибо. Позволь мне спросить еще кое о чем...»~ */ GOTO 4
  IF ~~ THEN REPLY #27561 /* ~«Понятно. Спасибо за уделенное время. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1 35.0
  SAY #27368 /* ~Кивнув, он говорит шепотом: «Ну, знаете, сэр... Баатор, Бездна и тому подобное. Ужасные места».~ */
  IF ~~ THEN REPLY #27562 /* ~«Ты говорил, что она полунечисть?»~ */ GOTO 35
  IF ~~ THEN REPLY #27563 /* ~«Где находится этот антикварный магазин?»~ */ GOTO 32
  IF ~~ THEN REPLY #27564 /* ~«Я хочу спросить о другом месте...»~ */ GOTO 12
  IF ~~ THEN REPLY #27565 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27566 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.0 34.0
  SAY #27369 /* ~«Заметьте, не тифлинг, а настоящая полунечисть. Дочь инкуба и смертной женщины. Не хочу разносить сплетни, так что давайте не будем о ней разговаривать».~ */
  IF ~~ THEN REPLY #27567 /* ~«Ты сказал, что ее товары с Нижних планов?»~ */ GOTO 34
  IF ~~ THEN REPLY #27568 /* ~«Где находится этот антикварный магазин?»~ */ GOTO 32
  IF ~~ THEN REPLY #27569 /* ~«Я хочу спросить о другом месте...»~ */ GOTO 12
  IF ~~ THEN REPLY #27570 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27571 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 18.0 22.0
  SAY #27370 /* ~«Да. Их правильное название — 'Общество чувств'. Они верят, что истинную сущность мультивселенной можно постичь только с помощью непосредственных переживаний...»~ */
  IF ~~ THEN REPLY #27572 /* ~«Понятно. Продолжай».~ */ GOTO 48
  IF ~~ THEN REPLY #27573 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27574 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 48.0
  SAY #27371 /* ~«Они нашли способ обмениваться своими ощущениями с другими с помощью сенсориумов».~ */
  IF ~~ THEN REPLY #27575 /* ~«Сенсориумы?»~ */ GOTO 38
  IF ~~ THEN REPLY #27576 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27577 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.1 37.0
  SAY #27372 /* ~«Чувствующие создали средства, с помощью которых они могут сохранять свои переживания в камнях, что позволяет делиться ими с *другими*. Чувствующие странствуют по планам в поисках новых ощущений, чтобы потом делиться ими... практически все, что они чувствовали или ощущали, находится в их сенсориумах».~ */
  IF ~~ THEN REPLY #27578 /* ~«Где находятся эти сенсориумы?»~ */ GOTO 39
  IF ~~ THEN REPLY #27579 /* ~«Эти переживания... это что-то вроде воспоминаний?»~ */ GOTO 40
  IF ~~ THEN REPLY #27580 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27581 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.1
  SAY #27373 /* ~«В Городском Фестхолле. Там есть сенсориумы, открытые для всех, и сенсориумы, доступные только чувствующим. За их использование взимают небольшую плату, но для переживаний это более чем скромная цена».~ */
  IF ~~ THEN REPLY #27582 /* ~«Где находится Фестхолл?»~ */ GOTO 31
  IF ~~ THEN REPLY #27583 /* ~«Эти переживания... это что-то вроде воспоминаний?»~ */ GOTO 40
  IF ~~ THEN REPLY #27584 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27585 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.1
  SAY #27374 /* ~«В *некоторой* степени — да, только очень интенсивные... и в камне заключены не ваши, а чужие воспоминания».~ */
  IF ~~ THEN REPLY #27586 /* ~«Заключены? Разве память или переживания не теряются, если поместить их в камень?»~ */ GOTO 41
  IF ~~ THEN REPLY #27587 /* ~«Где находятся эти сенсориумы?»~ */ GOTO 39
  IF ~~ THEN REPLY #27588 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27589 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #27375 /* ~«Нет... — он хмурится, — или, по крайней мере, я так думаю. Скорее всего, камень *копирует* чувственный опыт. Я себе это так представляю, но вам лучше расспросить об этом чувствующих для полной уверенности».~ */
  IF ~~ THEN REPLY #27590 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27591 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.5
  SAY #27376 /* ~«Имя звучит знакомо... это чья-то статуя? Или персонаж из книги?.. Не могу вспомнить».~ */
  IF ~~ THEN REPLY #27592 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27593 /* ~«Тогда неважно. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 43 // from:
  SAY #27377 /* ~«А, и снова Путник пересек мой путь, — улыбается он, глядя на тебя поверх чашки, — снова вопросы, не так ли?»~ */
  IF ~~ THEN REPLY #27594 /* ~«Именно так».~ */ GOTO 4
  IF ~~ THEN REPLY #27595 /* ~«На самом деле, нет... просто проходил мимо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 3.2
  SAY #27378 /* ~Он поднимает бровь. «Прошу прощения, сэр?»~ */
  IF ~~ THEN REPLY #27596 /* ~«Я сказал, что я мертв! Мертв, мертв, ха-ха! Мертв, мертв, ха-ха...»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_2","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #27597 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27598 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #27379 /* ~Он выглядит настороженным. «Ах, да... все мы там будем. Я должен идти, сэр. Кажется, у меня осталось одно неотложное дело».~ */
  IF ~~ THEN REPLY #27599 /* ~«Стой! Я ведь еще не сказал, *почему* я мертв...»~ */ GOTO 46
  IF ~~ THEN REPLY #27600 /* ~«Постой. У меня есть несколько вопросов...» ~ */ GOTO 4
  IF ~~ THEN REPLY #27601 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #27380 /* ~Он отступает назад. «Должен признаться, меня это нисколько не интересует, сэр».~ */
  IF ~~ THEN REPLY #27602 /* ~«Потому что я убил слишком много людей в своих прошлых жизнях».~ */ GOTO 47
  IF ~~ THEN REPLY #27603 /* ~«Тогда неважно. У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27604 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #27381 /* ~«Стража!»~ */
  IF ~~ THEN REPLY #27605 /* ~Напасть на его.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #27606 /* ~Попытаться уйти до того, как кто-нибудь подоспеет.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.0
  SAY #27382 /* ~«Они посвящают свои жизни переживанию всего, что только можно найти в мультивселенной. Они много путешествуют, как по планам, так и внутри своих мыслей и эмоций. Они пошли еще дальше, знаете ли...»~ */
  IF ~~ THEN REPLY #27607 /* ~«Каким образом?»~ */ GOTO 37
  IF ~~ THEN REPLY #27608 /* ~«У меня есть другие вопросы...»~ */ GOTO 4
  IF ~~ THEN REPLY #27609 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END
