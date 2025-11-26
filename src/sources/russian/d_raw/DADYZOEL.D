// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADYZOEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DADYZOEL~

IF ~  Global("Adyzoel","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #15296 /* ~Этот немного женоподобный, ухоженный молодой человек наблюдает за прохожими с высокомерной усмешкой на лице. Его рука покоится на искусно исполненном, усыпанном камнями эфесе сабли. Из-за своей шелковой одежды и замшевых сапогов он кажется здесь совершенно неуместным.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #15351 /* ~«Приветствую...»~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #15352 /* ~«Приветствую...»~ */ EXTERN ~DANNAH~ 97
  IF ~~ THEN REPLY #15353 /* ~Пройти мимо него.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #15297 /* ~Несмотря на то, что из-за утонченных черт лица и пышных губ бантиком его можно принять за хорошенькую девушку, его тихий голос, вне всякого сомнения, принадлежит мужчине: «М-м, незнакомец. Еще один 'рубака', — он выплевывает это слово, как будто его вкус ему противен, — пришел бросить вызов моему клинку?»~ */
  IF ~~ THEN REPLY #15354 /* ~«Нет, но у меня есть пара вопросов...»~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15355 /* ~«Почему бы и нет? Конечно».~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15356 /* ~«Почему бы и нет? Конечно».~ */ EXTERN ~DMORTE~ 169
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15357 /* ~«Да. Будешь делать ставку на исход поединка?»~ */ GOTO 20
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15358 /* ~«Да. Будешь делать ставку на исход поединка?»~ */ EXTERN ~DMORTE~ 171
  IF ~~ THEN REPLY #15359 /* ~«Нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 21.2
  SAY #15298 /* ~«Тогда уходи. У меня нет времени на таких как ты». Он отмахивается от тебя.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #15360 /* ~«Ты меня недооцениваешь, 'сэр'. Выслушаешь мои вопросы или нет?»~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15361 /* ~«Ну так найди. Ты ответишь на мои вопросы».~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15362 /* ~«Ну так найди. Ты ответишь на мои вопросы».~ */ EXTERN ~DMORTE~ 170
  IF ~~ THEN REPLY #15363 /* ~«Тогда не буду тратить твое время, хам невоспитанный».~ */ GOTO 3
  IF ~~ THEN REPLY #15364 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 37.1
  SAY #15299 /* ~Глаза юноши блестят, как пылающий лед; его губы искривляются в холодной полуулыбке. «Да ну? Повтори-ка, нескладная безмозглая рухлядь. Что ты мне сказал?»~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15365 /* ~«Ты меня слышала, женщина».~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15366 /* ~«Ты меня слышала, женщина».~ */ EXTERN ~DMORTE~ 173
  IF ~~ THEN REPLY #15367 /* ~«Ничего. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0 13.0 13.1
  SAY #15300 /* ~Ты успеваешь уловить лишь неясное движение — его сабля уже наготове. Он облизывает губы и тихо смеется: «Постарайся не заляпать кровью мне сапоги, ладно?» Грязная закутанная фигура за его спиной наблюдает за тобой жадным взглядом...~ */
  IF ~~ THEN REPLY #15368 /* ~Встретить атаку.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15369 /* ~Сбежать.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 21.3
  SAY #15301 /* ~«Нет-нет-нет... не все так просто, — он закрывает глаза и качает головой в притворном сожалении. — Ты закончишь либо трупом, либо трусом. Все, что тебе остается, — решить, кто из них ты».~ */
  IF ~~ THEN REPLY #15370 /* ~«Уверен, что нет третьего варианта?»~ */ GOTO 8
  IF ~~ THEN REPLY #15371 /* ~«Здесь только один труп, и я на него смотрю».~ */ GOTO 6
  IF ~~ THEN REPLY #15372 /* ~Отвернуться и уйти.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #15302 /* ~Ты успеваешь уловить лишь неясное движение — его сабля уже наготове. «Ты прямо таки видишь себя моими глазами, животное. Постарайся не заляпать кровью мне сапоги, ладно?» Грязная закутанная фигура за его спиной наблюдает за тобой жадным взглядом...~ */
  IF ~~ THEN REPLY #15373 /* ~Встретить атаку.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15374 /* ~Сбежать.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 8.2 10.1 11.1 13.2 36.1
  SAY #15303 /* ~Когда ты уходишь, он произносит: «Я так и думал. Трус». Ты слышишь едва различимый звук чьего-то разочарованного вздоха у него за спиной.~ */
  IF ~~ THEN REPLY #15375 /* ~Повернуться и напасть на него.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15376 /* ~Пропустить комментарий мимо ушей и уйти.~ */ DO ~SetGlobal("Adyzoel","AR0400",2)
~ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15377 /* ~Пропустить комментарий мимо ушей и уйти.~ */ EXTERN ~DMORTE~ 180
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY #15304 /* ~На миг он кажется удивленным, затем кивает. «*Всегда* есть выбор, не так ли? Хм... Полагаю, ты мог бы попросить у меня прощения и молить какую-нибудь силу, чтобы я оказался в хорошем расположении духа».~ */
  IF ~~ THEN REPLY #15378 /* ~«Никогда. Мы будем драться».~ */ GOTO 4
  IF ~~ THEN REPLY #15379 /* ~«В таком случае, прошу твоего прощения. Я оговорился».~ */ GOTO 9
  IF ~~ THEN REPLY #15380 /* ~«Вот уж нет. Прощай».~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #15305 /* ~Он хмурится, закатив глаза. «Хорошо, я про...» Внезапно он смущенно прерывается и кладет руку на висок.~ */
  IF ~~ THEN REPLY #15381 /* ~Смотреть, чем это закончится.~ */ GOTO 10
  IF ~~ THEN REPLY #15382 /* ~«С тобой все в порядке?»~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 10
  IF ~~ THEN REPLY #15383 /* ~Атаковать его, застав врасплох.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #15384 /* ~Оставить его, пока он отвлекся.~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #15306 /* ~«Я... э... нет, прощения быть не может!» Он качает головой, и выражение его лица меняется от озадаченного к мрачно-решительному. «Беги или умри!»~ */
  IF ~~ THEN REPLY #15385 /* ~Атаковать его.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15386 /* ~Уйти.~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY #15307 /* ~Он кричит тебе вслед: «Вернись, бесхребетная рухлядь!»~ */
  IF ~~ THEN REPLY #15387 /* ~Повернуться к нему.~ */ GOTO 12
  IF ~~ THEN REPLY #15388 /* ~Продолжить идти.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #15308 /* ~Когда ты оборачиваешься к нему, в мгновение ока он обнажает саблю. «А, хорошо. Значит, будем драться! Постарайся не заляпать кровью мне сапоги, ладно?» Грязная закутанная фигура за его спиной наблюдает за тобой жадным взглядом...~ */
  IF ~~ THEN REPLY #15389 /* ~Встретить атаку.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15390 /* ~Сбежать.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.1 40.0
  SAY #15309 /* ~Он горько смеется. «Тебе меня не запугать, животное. Советую тебе уйти, пока не обнаружил, что твоя жизнь стекает в сигильские канавы».~ */
  IF ~~ THEN REPLY #15391 /* ~Правда: «Даю тебе последний шанс, прежде чем разломлю пополам тебя вместе с твоим ножичком».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Adyzoel_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #15392 /* ~Блеф: «Даю тебе последний шанс, прежде чем разломлю пополам тебя вместе с твоим ножичком».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_2","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #15393 /* ~Уйти.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 2.0
  SAY #15310 /* ~«Разве я *обязан*? Хм... твоя наглость меня поражает, выходец из Улья. Чего ты хочешь?»~ */
  IF ~~ THEN REPLY #15394 /* ~«Кто ты?»~ */ GOTO 17
  IF ~~ THEN REPLY #15395 /* ~«Что ты здесь делаешь?»~ */ GOTO 18
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15396 /* ~«Я хочу вызвать тебя на дуэль».~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15397 /* ~«Я хочу вызвать тебя на дуэль».~ */ EXTERN ~DMORTE~ 169
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15398 /* ~«Я разыскиваю мужчину по имени Фарод».~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15399 /* ~«Я ищу потерянный дневник».~ */ GOTO 16
  IF ~~ THEN REPLY #15400 /* ~«Ничего, неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.4 22.4
  SAY #15311 /* ~«Имена здешнего... 'люда'... меня не интересуют. Попадись мне этот Фарод, я бы его и не запомнил».~ */
  IF ~~ THEN REPLY #15401 /* ~«У меня есть другие вопросы...»~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15402 /* ~«Тогда прощай». ~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15403 /* ~«Тогда прощай». ~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15404 /* ~«Тогда прощай». ~ */ GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 14.5 22.5
  SAY #15312 /* ~«Так ты *читать* умеешь? — он хихикает. — Итак... ты потерял его здесь? Несомненно, его украли. Наверно, какой-нибудь местный дегенерат застелил им постель или использовал его для растопки. На твоем месте я бы забыл о нем. Уверен, теперь он тебе не понадобится, даже если ты его и найдешь».~ */
  IF ~~ THEN REPLY #15405 /* ~«У меня есть другие вопросы...»~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15406 /* ~«Тогда прощай». ~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15407 /* ~«Тогда прощай». ~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15408 /* ~«Тогда прощай». ~ */ GOTO 25
END

IF ~~ THEN BEGIN 17 // from: 14.0 22.0
  SAY #15313 /* ~«Можешь обращаться ко мне 'Адизоэль из дома Эриане-Ард'».~ */
  IF ~~ THEN REPLY #15409 /* ~«У меня есть другие вопросы...»~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15410 /* ~«Мы еще поговорим, Адизоэль. Прощай».~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15411 /* ~«Мы еще поговорим, Адизоэль. Прощай».~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15412 /* ~«Мы еще поговорим, Адизоэль. Прощай».~ */ GOTO 25
END

IF ~~ THEN BEGIN 18 // from: 14.1 22.1
  SAY #15314 /* ~Он злобно ухмыляется. Его зубы, безупречные и белые, как только что выпавший снег, могли бы оказаться клыками. «О, то да се. Проверяю свои умения, ищу неприятностей. Ворошу улей, если можно так выразиться».~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15413 /* ~«Думаю, я стану хорошей проверкой для твоих умений».~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15414 /* ~«Думаю, я стану хорошей проверкой для твоих умений».~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15415 /* ~«У меня есть другие вопросы...»~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15416 /* ~«Надеюсь, ты найдешь себе неприятностей. Прощай».~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15417 /* ~«Надеюсь, ты найдешь себе неприятностей. Прощай».~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15418 /* ~«Надеюсь, ты найдешь себе неприятностей. Прощай».~ */ GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 1.1 14.2 18.0 21.0 22.2 23.0 27.0 28.1 29.0 31.0 38.1 40.1
  SAY #15315 /* ~Глаза юноши блестят, как пылающий лед; его губы искривляются в холодной полуулыбке. «Великолепно...»Ты успеваешь уловить лишь неясное движение — его сабля уже наготове. «Постарайся не заляпать кровью мне сапоги, ладно?» Грязная закутанная фигура за его спиной наблюдает за тобой жадным взглядом...~ */
  IF ~  Global("Adyzoel","AR0400",6)
~ THEN REPLY #15419 /* ~«Постой...»~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15420 /* ~Встретить атаку.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15421 /* ~Сбежать.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.3
  SAY #15316 /* ~Его глаза вспыхивают. «Ну да, что за велико...» Внезапно он смущенно прерывается и кладет руку на висок.~ */
  IF ~~ THEN REPLY #15422 /* ~Смотреть, чем это закончится.~ */ GOTO 21
  IF ~~ THEN REPLY #15423 /* ~«С тобой все в порядке?»~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 21
  IF ~~ THEN REPLY #15424 /* ~Атаковать его, застав врасплох.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #15425 /* ~Оставить его, пока он отвлекся.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #15317 /* ~«Я... э... нет, никаких ставок! Выиграешь — выживешь, проиграешь — умрешь. Все просто».~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15426 /* ~«Хорошо. Давай сразимся».~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15427 /* ~«Хорошо. Давай сразимся».~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15428 /* ~«Забудь об этом. У меня есть несколько вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #15429 /* ~«Тогда неважно. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 15.0 16.0 17.0 18.2 23.2 23.3 31.2
  SAY #15318 /* ~«Ладно, ладно. Говори».~ */
  IF ~~ THEN REPLY #15430 /* ~«Кто ты?»~ */ GOTO 17
  IF ~~ THEN REPLY #15431 /* ~«Что ты здесь делаешь?»~ */ GOTO 18
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15432 /* ~«Я хочу вызвать тебя на дуэль».~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15433 /* ~«Я хочу вызвать тебя на дуэль».~ */ EXTERN ~DMORTE~ 169
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15434 /* ~«Я разыскиваю мужчину по имени Фарод».~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15435 /* ~«Я ищу потерянный дневник».~ */ GOTO 16
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15436 /* ~«Ничего, неважно. Прощай».~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15437 /* ~«Ничего, неважно. Прощай».~ */ GOTO 24
END

IF ~  Global("Adyzoel","AR0400",1)
~ THEN BEGIN 23 // from: 26.0
  SAY #15319 /* ~Адизоэль кивает, увидев тебя. «А, снова ты. На сей раз скрестим клинки, или снова будешь доставать меня вопросами?»~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15438 /* ~«Я здесь, чтобы сразиться с тобой».~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15439 /* ~«Я здесь, чтобы сразиться с тобой».~ */ EXTERN ~DMORTE~ 169
  IF ~  !Global("Adyzoel","AR0400",4)
~ THEN REPLY #15440 /* ~«У меня есть несколько вопросов...» ~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 22
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15441 /* ~«У меня есть несколько вопросов...» ~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ GOTO 22
  IF ~  !Global("Adyzoel","AR0400",4)
~ THEN REPLY #15442 /* ~«Ни то, ни другое. Прощай».~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 24
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15443 /* ~«Ни то, ни другое. Прощай».~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 15.2 16.2 17.2 18.4 22.7 23.4 31.3
  SAY #15320 /* ~Он резко отвечает: «Счастливо оставаться. Прошу больше меня не беспокоить, если только ты не захочешь сразиться со мной».~ */
  IF ~~ THEN REPLY #15444 /* ~Уйти.~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 15.3 16.3 17.3 18.5 23.5
  SAY #15321 /* ~Когда ты поворачиваешься, чтобы уйти, Адизоэль презрительно произносит: «В прошлый раз я сказал тебе больше меня не беспокоить, кроме как для того, чтобы сразиться со мной. Еще раз тебя встречу — буду считать это вызовом: мы тут же скрестим клинки, хочешь ты того или нет».~ */
  IF ~~ THEN REPLY #15445 /* ~Уйти.~ */ DO ~SetGlobal("Adyzoel","AR0400",6)
~ EXIT
END

IF ~  Global("Adyzoel","AR0400",5)
~ THEN BEGIN 26 // from:
  SAY #15322 /* ~Ты вспоминаешь, что Адизоэль просил больше его не беспокоить, если только не придешь сразиться с ним.~ */
  IF ~~ THEN REPLY #15446 /* ~Все равно обратиться к нему.~ */ GOTO 23
  IF ~~ THEN REPLY #15447 /* ~Оставить его в покое.~ */ EXIT
END

IF ~  Global("Adyzoel","AR0400",6)
~ THEN BEGIN 27 // from:
  SAY #15323 /* ~Ты вспоминаешь, что Адизоэль говорил, что, если ты снова к нему приблизишься, он расценит это как вызов и сразу нападет на тебя.~ */
  IF ~~ THEN REPLY #15448 /* ~Все равно обратиться к нему.~ */ GOTO 19
  IF ~~ THEN REPLY #15449 /* ~Оставить его в покое.~ */ EXIT
END

IF ~  Global("Adyzoel","AR0400",2)
~ THEN BEGIN 28 // from:
  SAY #15324 /* ~«Ха! Трусливая тварь вернулась!»~ */
  IF ~~ THEN REPLY #15450 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 29
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15451 /* ~«Откуда этот собачий лай? Я пришел драться, ты, плюгавая шавка».~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15452 /* ~«Откуда этот собачий лай? Я пришел драться, ты, плюгавая шавка».~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15453 /* ~Отвернуться и уйти.~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #15325 /* ~Он усмехается, отворачиваясь. «Я не разговариваю с такими бесхребетными тварями как ты. Сразись со мной либо уходи».~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15454 /* ~«Тогда я сражусь с тобой».~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15455 /* ~«Тогда я сражусь с тобой».~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15456 /* ~«Я ухожу. Прощай».~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.3 29.2
  SAY #15326 /* ~«Я больше не позволю тебе надоедать мне, трус. Не желаю тебя видеть, если только ты не явишься бросить мне вызов. Если мы встретимся снова, я так и сочту. Мы сразу же скрестим клинки, хочешь ты того или нет».~ */
  IF ~~ THEN REPLY #15457 /* ~Уйти.~ */ DO ~SetGlobal("Adyzoel","AR0400",6)
~ EXIT
END

IF ~  Global("Adyzoel","AR0400",3)
~ THEN BEGIN 31 // from:
  SAY #15327 /* ~Адизоэль выглядит искренне удивленным. «Что, опять? Откуда ты выползло, животное? Я был уверен, что покончил с тобой».~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15458 /* ~«Вовсе нет. Я вернулся, чтобы еще раз сразиться с тобой».~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15459 /* ~«Вовсе нет. Я вернулся, чтобы еще раз сразиться с тобой».~ */ EXTERN ~DMORTE~ 172
  IF ~~ THEN REPLY #15460 /* ~«Нет. У меня есть несколько вопросов...»~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 22
  IF ~~ THEN REPLY #15461 /* ~«Ты ошибся. Прощай».~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 24
END

IF ~~ THEN BEGIN 32 // from:
  SAY #15328 /* ~Юноша, опешив, некоторое время изумленно смотрит на Морта. «А *ты* кто такой?»~ */
  IF ~~ THEN REPLY #15462 /* ~«Не обращай на него внимания, он безобиден».~ */ EXTERN ~DMORTE~ 174
  IF ~~ THEN REPLY #15463 /* ~Позволить Морту продолжить.~ */ EXTERN ~DMORTE~ 174
END

IF ~~ THEN BEGIN 33 // from:
  SAY #15329 /* ~Ему только и удается, что издать сдавленный рык, брызжа слюной: «Рраг!» Он мигом вынимает саблю; его лицо багровеет от ярости. «Довольно! Я *ТРЕБУЮ* сатисфакции!»~ */
  IF ~~ THEN REPLY #15464 /* ~«Я могу лишь просить прощения за своего товарища».~ */ GOTO 36
  IF ~~ THEN REPLY #15465 /* ~«Ну как, Морт? Устроим ему дуэль?»~ */ EXTERN ~DMORTE~ 178
  IF ~~ THEN REPLY #15466 /* ~«Хорошо... но тебе придется драться с нами обоими».~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 35.2
  SAY #15330 /* ~«Отлично! Тогда вы оба умрете!» Пока он готовится к атаке, ты замечаешь за его спиной грязную закутанную фигуру, наблюдающую за тобой жадным взглядом...~ */
  IF ~~ THEN REPLY #15467 /* ~Встретить атаку.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15468 /* ~Сбежать.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #15331 /* ~«Что? — юноша недоверчиво косится на Морта. — Довольно таки *странный* мимир, если не сказать большего!»~ */
  IF ~~ THEN REPLY #15469 /* ~«Мимир?»~ */ EXTERN ~DMORTE~ 179
  IF ~~ THEN REPLY #15470 /* ~«Можешь ли ты простить ему оскорбление?»~ */ GOTO 36
  IF ~~ THEN REPLY #15471 /* ~«Мы будем драться... но тебе придется драться с нами обоими».~ */ GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 33.0 35.1
  SAY #15332 /* ~«Молчать, болтливый идиот! — он успокаивается, пряча саблю. — Вы оба: деритесь или бегите, третьего не дано». Хоть он и совладал со своим гневом, глаза его, казалось бы, мерцают ледяной ненавистью. ~ */
  IF ~~ THEN REPLY #15472 /* ~Атаковать его.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15473 /* ~Отвернуться и уйти.~ */ GOTO 7
END

IF ~~ THEN BEGIN 37 // from:
  SAY #15333 /* ~«Эй, ты. Оставь эту рухлядь. Он что, недостаточно жалок, чтобы ты еще и говорил с ним?»~ */
  IF ~~ THEN REPLY #15474 /* ~«Это не твое дело».~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 38
  IF ~~ THEN REPLY #15475 /* ~«Следи за своим языком, не то будешь следующим».~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 3
  IF ~~ THEN REPLY #15476 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #15334 /* ~«Без разницы. Сейчас же оставь это жалкое создание, или поплатишься».~ */
  IF ~~ THEN REPLY #15477 /* ~«Сначала скажи мне, почему это вообще для тебя важно».~ */ GOTO 39
  IF ~~ THEN REPLY #15478 /* ~«Поплачусь тебе? Хотел бы я на это посмотреть».~ */ GOTO 19
  IF ~~ THEN REPLY #15479 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #15335 /* ~«Потому что... потому что...» Внезапно он смущенно прерывается и кладет руку на висок. Кажется, он потрясен.~ */
  IF ~~ THEN REPLY #15480 /* ~«С тобой все в порядке?»~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 40
  IF ~~ THEN REPLY #15481 /* ~Подождать.~ */ GOTO 40
  IF ~~ THEN REPLY #15482 /* ~Оставить его, пока он отвлекся.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0 39.1
  SAY #15336 /* ~Он стряхивает замешательство. «Это тебя не касается. Я ставлю перед тобой ультиматум: сразись со мной или уходи».~ */
  IF ~~ THEN REPLY #15483 /* ~«Мне по барабану. Говори».~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15484 /* ~«Мы будем драться». ~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15485 /* ~«Мы будем драться». ~ */ EXTERN ~DMORTE~ 169
END
