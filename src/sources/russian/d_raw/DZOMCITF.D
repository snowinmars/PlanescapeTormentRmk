// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMCITF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMCITF~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19524 /* ~Этот разлагающийся труп женщины сперва совершенно тебя не замечает. Однако при твоем приближении она поворачивается и медленно кивает, как бы приветствуя тебя.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19554 /* ~«Приветствую...»~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19555 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #19556 /* ~Оставить зомби в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 24.1 27.1
  SAY #19525 /* ~Зомби тихо стонет в ответ: «Пыыы... выыы...» С каждым ее выдохом воздух наполняется запахом разложения.~ */
  IF ~~ THEN REPLY #19557 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #19558 /* ~«Я уже должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19526 /* ~«Туууххх... ммммееее-ииии». Зомби издает нечленораздельные стоны... ты не можешь разобрать ничего из того, что она сказала.~ */
  IF ~~ THEN REPLY #19559 /* ~«Я не понимаю тебя. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 24.0 27.0
  SAY #19527 /* ~Зомби тихо стонет в ответ. Только твое умение разговаривать с мертвыми позволяет тебе понять, что она говорит: «Приии-вет».~ */
  IF ~~ THEN REPLY #19560 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 4
  IF ~~ THEN REPLY #19561 /* ~«Я уже должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19528 /* ~Труп переминается с ноги на ногу, потом отвечает: «Воп-рос?»~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19562 /* ~«Почему я здесь пленник?»~ */ GOTO 6
  IF ~~ THEN REPLY #19563 /* ~«Где я?»~ */ GOTO 7
  IF ~~ THEN REPLY #19564 /* ~«Чем ты здесь занимаешься?»~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19565 /* ~«Кто здесь живет?»~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19566 /* ~«Кто здесь живет?»~ */ GOTO 10
  IF ~~ THEN REPLY #19567 /* ~«Позволь мне спросить о кое-ком в частности...»~ */ GOTO 26
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19568 /* ~«Тебе не попадался где-нибудь поблизости маленький бронзовый шар?»~ */ GOTO 23
  IF ~~ THEN REPLY #19569 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.1 7.1 8.1 9.4 10.3 11.3 12.3 13.3 14.4 15.3 16.4 17.4 18.3 19.4 20.2 21.1 22.1 23.1 26.1
  SAY #19529 /* ~Труп сонно кивает. «Воп... росы».~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19570 /* ~«Почему я здесь пленник?»~ */ GOTO 6
  IF ~~ THEN REPLY #19571 /* ~«Где я?»~ */ GOTO 7
  IF ~~ THEN REPLY #19572 /* ~«Чем ты здесь занимаешься?»~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19573 /* ~«Кто здесь живет?»~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19574 /* ~«Кто здесь живет?»~ */ GOTO 10
  IF ~~ THEN REPLY #19575 /* ~«Позволь мне спросить о кое-ком в частности...»~ */ GOTO 26
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19576 /* ~«Тебе не попадался где-нибудь поблизости маленький бронзовый шар?»~ */ GOTO 23
  IF ~~ THEN REPLY #19577 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #19530 /* ~Следует долгая пауза. «Ууууу? — зомби пожимает плечами, одно из которых поднимается выше другого. — Ссспроси Мммери, Тухххлую Мммери».~ */
  IF ~~ THEN REPLY #19578 /* ~«Расскажи мне о... Тухлой Мери».~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19579 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19580 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1
  SAY #19531 /* ~«Доммма. Ууу ммменя дома, — остатки мышц ее лица натягивают рот, что можно расценить как улыбку. — Ссстрана Безмммолвного Кооороля, Мммертвые Наароды».~ */
  IF ~~ THEN REPLY #19581 /* ~«Расскажи мне о Безмолвном Короле».~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19582 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19583 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.2
  SAY #19532 /* ~Зомби пару секунд пялится на тебя. «Выыыполняю сссвои оообязанности. Дееелаю раааботу для Беезмолвного Кооороля. Ссслужу хорошоооо».~ */
  IF ~~ THEN REPLY #19584 /* ~«Расскажи мне о Безмолвном Короле».~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19585 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19586 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3 5.3 11.1 12.1 13.1 14.2 15.1 16.2 17.2 18.1 19.2 20.0
  SAY #19533 /* ~«Мммного ктоо. Мыыы, ссскелеты, ууупыри, — ее рука медленно поднимается и указывает на восток. — крррысы, — ее рука делает тяжелый взмах, указывая на тебя. — Жииивые».~ */
  IF ~~ THEN REPLY #19587 /* ~«Здесь есть другие живые, кроме меня?»~ */ GOTO 11
  IF ~~ THEN REPLY #19588 /* ~«Расскажи мне о таких как ты».~ */ GOTO 13
  IF ~~ THEN REPLY #19589 /* ~«Расскажи мне о другой нежити».~ */ GOTO 14
  IF ~~ THEN REPLY #19590 /* ~«Расскажи мне о крысах».~ */ GOTO 17
  IF ~~ THEN REPLY #19591 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19592 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.4 5.4 11.2 12.2 13.2 14.3 15.2 16.3 17.3 18.2 19.3 20.1
  SAY #19534 /* ~«Мммного ктоо. Мыыы, ссскелеты, ууупыри, — ее рука медленно указывает на восток. — крррысы».~ */
  IF ~~ THEN REPLY #19593 /* ~«Расскажи мне о таких как ты».~ */ GOTO 13
  IF ~~ THEN REPLY #19594 /* ~«Расскажи мне о другой нежити».~ */ GOTO 14
  IF ~~ THEN REPLY #19595 /* ~«Расскажи мне о крысах».~ */ GOTO 17
  IF ~~ THEN REPLY #19596 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19597 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #19535 /* ~Труп качает головой вперед-назад. «Сссооооэгооо...»~ */
  IF ~~ THEN REPLY #19598 /* ~«Кто такой Соэго?»~ */ GOTO 12
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19599 /* ~«Кто еще здесь живет?»~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19600 /* ~«Кто еще здесь живет?»~ */ GOTO 10
  IF ~~ THEN REPLY #19601 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19602 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #19536 /* ~«Тсссленный. Ссспроси Мммери, Тухххлую Мммери».~ */
  IF ~~ THEN REPLY #19603 /* ~«Расскажи мне о... Тухлой Мери».~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19604 /* ~«Кто еще здесь живет?»~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19605 /* ~«Кто еще здесь живет?»~ */ GOTO 10
  IF ~~ THEN REPLY #19606 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19607 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.0
  SAY #19537 /* ~Зомби кладет свои гниющие руки на грудь, изуродованную разложением. «Сссильные! — она показывает рукой себе на ноги, потом на висок. — Мееедленные. Хххе... — труп издает тревожное бульканье, которое почему-то напоминает тебе хихиканье. — Глаавная уу нааас — Тууухлая Мммери...»~ */
  IF ~~ THEN REPLY #19608 /* ~«Расскажи мне о... Тухлой Мери».~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19609 /* ~«Кто еще здесь живет?»~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19610 /* ~«Кто еще здесь живет?»~ */ GOTO 10
  IF ~~ THEN REPLY #19611 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19612 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 10.1
  SAY #19538 /* ~«Ооо ком? Коостях? Ууупырях?»~ */
  IF ~~ THEN REPLY #19613 /* ~«Кости... Скелеты?»~ */ GOTO 15
  IF ~~ THEN REPLY #19614 /* ~«Упыри».~ */ GOTO 19
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19615 /* ~«Неважно. Кто еще здесь живет?»~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19616 /* ~«Неважно. Кто еще здесь живет?»~ */ GOTO 10
  IF ~~ THEN REPLY #19617 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19618 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19539 /* ~«Кооости! — ее голос почему-то звучит восхищенно. — Уууправлят нааами, наааправляют наас. Вмееесте мыы ссстроим Мееертвые Наароды».~ */
  IF ~~ THEN REPLY #19619 /* ~«Скелеты руководят вами?»~ */ GOTO 16
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19620 /* ~«Кто еще здесь живет?»~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19621 /* ~«Кто еще здесь живет?»~ */ GOTO 10
  IF ~~ THEN REPLY #19622 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19623 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #19540 /* ~«Хххаргриммм ууправляет кооостями. Гооворит ссс Беезмолвным Кооролем, пооотом ссс Тууухлой Мммери. Мммери гоооворит сс наами, даает нааам рааботу». Она кивает.~ */
  IF ~~ THEN REPLY #19624 /* ~«Расскажи мне о Безмолвном Короле».~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19625 /* ~«Расскажи мне о... Тухлой Мери».~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19626 /* ~«Кто еще здесь живет?»~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19627 /* ~«Кто еще здесь живет?»~ */ GOTO 10
  IF ~~ THEN REPLY #19628 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19629 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.3 10.2
  SAY #19541 /* ~И снова она медленно поднимает руку и махает ею на восток. «Крыыысы...» Влажные ошметки ее верхней губы вытягиваются в ухмылку; по коричневато-желтым зубам стекает вязкая черная жидкость. «Еееедять мееертых... ееедят... плооохие. Теееперь боооятся ууупырей. Сссторонятся нааас».~ */
  IF ~~ THEN REPLY #19630 /* ~«Крысы едят здесь трупы?»~ */ GOTO 18
  IF ~~ THEN REPLY #19631 /* ~«У вас перемирие с крысами?»~ */ GOTO 18
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19632 /* ~«Кто еще здесь живет?»~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19633 /* ~«Кто еще здесь живет?»~ */ GOTO 10
  IF ~~ THEN REPLY #19634 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19635 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #19542 /* ~«Ууу... ссспроси Мммери. Тууухлую Мммери».~ */
  IF ~~ THEN REPLY #19636 /* ~«Расскажи мне о... Тухлой Мери».~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19637 /* ~«Кто еще здесь живет?»~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19638 /* ~«Кто еще здесь живет?»~ */ GOTO 10
  IF ~~ THEN REPLY #19639 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19640 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #19543 /* ~Зомби указывает на свой живот, в котором через прогнившие дыры видны внутренние органы. «Веечно голооодые. Здееесь закооон Бееезмолвного Кооороля нее даееет им ееесть мееертвых. Ууупыри зааащищают нас, ооохраняюють ээти зааали».~ */
  IF ~~ THEN REPLY #19641 /* ~«Расскажи мне о Безмолвном Короле».~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19642 /* ~«От кого они охраняют эти залы?»~ */ GOTO 20
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19643 /* ~«Кто еще здесь живет?»~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19644 /* ~«Кто еще здесь живет?»~ */ GOTO 10
  IF ~~ THEN REPLY #19645 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19646 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #19544 /* ~«Ооот крыыс. Иии, — она поднимает руку и указывает наверх, — жииивых, ссс повееерхности. Оони прииходят, чтообы треевожить мееертвых, краасть их».~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19647 /* ~«Кто еще здесь живет?»~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19648 /* ~«Кто еще здесь живет?»~ */ GOTO 10
  IF ~~ THEN REPLY #19649 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19650 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.0 12.0 13.0 16.1 18.0 22.0 23.0 26.0
  SAY #19545 /* ~«Ооона ууправляет наами. Ссследит за наами. Пееередает нааам ссслово Беезмолвного Кооороля».~ */
  IF ~~ THEN REPLY #19651 /* ~«Расскажи мне о Безмолвном Короле».~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19652 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19653 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.0 8.0 16.0 19.0 21.0
  SAY #19546 /* ~«Поовелитель Меертвых Нааародов. Ссспроси Мммери. Тууухлую Мммери».~ */
  IF ~~ THEN REPLY #19654 /* ~«Расскажи мне о Тухлой Мери».~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19655 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19656 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.6 5.6
  SAY #19547 /* ~Труп стоит неподвижно, уставившись на тебя. Наконец она отвечает: «Нннет. Ссспроси Мммери. Тууухлую Мммери».~ */
  IF ~~ THEN REPLY #19657 /* ~«Расскажи мне о Тухлой Мери».~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19658 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19659 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #19548 /* ~Когда зомби замечает тебя, в ее мертвых глазах появляется проблеск узнавания. «Ууууу».~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19660 /* ~«Приветствую...»~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19661 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #19662 /* ~Оставить зомби в покое.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Zom","AR1500",0)
~ THEN BEGIN 25 // from:
  SAY #19549 /* ~Этот разлагающийся труп женщины сперва совершенно тебя не замечает. Однако при твоем приближении она поворачивается и медленно кивает, как бы приветствуя тебя.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Zom","AR1500",1)
~ EXTERN ~DMORTE~ 199
END

IF ~~ THEN BEGIN 26 // from: 4.5 5.5
  SAY #19550 /* ~Труп качает головой. «Ссспроси Мммери. Тухххлую Мммери».~ */
  IF ~~ THEN REPLY #19663 /* ~«Расскажи мне о Тухлой Мери».~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19664 /* ~«У меня есть другие вопросы...»~ */ GOTO 5
  IF ~~ THEN REPLY #19665 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Zom","AR1500",1)
~ THEN BEGIN 27 // from:
  SAY #50426 /* ~Этот разлагающийся труп женщины сперва совершенно тебя не замечает. Однако при твоем приближении она поворачивается и медленно кивает, как бы приветствуя тебя.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #50427 /* ~«Приветствую...»~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #50428 /* ~«Приветствую...»~ */ GOTO 1
END
