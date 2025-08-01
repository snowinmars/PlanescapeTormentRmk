// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCREED.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCREED~

IF ~  Global("Creeden","AR0300",0)
~ THEN BEGIN 0 // from:
  SAY #10080 /* ~Этот неряшливый человек моментально замечает, что привлек твое внимание: через секунду он уже перед тобой, демонстрирует свои «товары». В руках у него длинный шест, на который насажена дюжина освежеванных и приготовленных крыс. Разговаривая с тобой, он без конца указывает на них широкой, покрытой грязью рукой и скалится желтыми кривыми зубами. «Оле, рубака, как делишки? Какие из этих вааасхитительных крысочек приглянулись тебе в этот превосходный день?»~ */
  IF ~~ THEN REPLY #12628 /* ~Осмотреть «крысочек».~ */ GOTO 2
  IF ~~ THEN REPLY #12629 /* ~«Да я лучше съем тухлятину».~ */ GOTO 4
  IF ~~ THEN REPLY #12630 /* ~«Какие... 'крысочки' у тебя есть?»~ */ GOTO 5
  IF ~~ THEN REPLY #12631 /* ~«Нет, не сейчас... У меня к тебе вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12632 /* ~«Что-то не хочется, спасибо. Прощай».~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~  Global("Creeden","AR0300",1)
~ THEN BEGIN 1 // from:
  SAY #12560 /* ~«Оле, рубака, рад встрече. Истосковался по вкусным крысочкам Кредена, а?»~ */
  IF ~~ THEN REPLY #12633 /* ~«Почему бы и нет... какие у тебя есть?»~ */ GOTO 5
  IF ~~ THEN REPLY #12634 /* ~«Да лучше я съем свои потроха, чем эту мерзость!»~ */ GOTO 4
  IF ~~ THEN REPLY #12635 /* ~«Нет, не сейчас. Но у меня есть несколько вопросов...»~ */ GOTO 15
  IF ~~ THEN REPLY #12636 /* ~«Нет, спасибо. Прощай».~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #12561 /* ~Каждая крыса освежевана и выпотрошена, лапки и хвосты удалены. Они свисают с шеста на вдетых в шею крючках. Осматривая их, ты понимаешь, что с их головами что-то не так: из каждого черепа выступает покрытый завитушками костный нарост, что придает ему сходство с мозгом.~ */
  IF ~~ THEN REPLY #12637 /* ~«Какие странные крысы».~ */ GOTO 3
  IF ~~ THEN REPLY #12638 /* ~«Пожалуй, возьму одну».~ */ GOTO 5
  IF ~~ THEN REPLY #12639 /* ~«Я не ем всякую гадость».~ */ GOTO 4
  IF ~~ THEN REPLY #12640 /* ~«Нет, спасибо. Лучше я задам тебе вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12641 /* ~«Нет, спасибо, я не хочу крысу. Прощай».~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9344 /* ~«А у тебя острый глаз, рубака! Я продаю мозгогрызунов... Уверен, ты найдешь их намного приятнее на вкус, по сравнению с обычными крысами. Очень вкусные, правда-правда!» Он снова предлагает их тебе, призывно помахивая шестом прямо у тебя перед носом... крысы покачиваются на крючках из стороны в сторону, подвешенные, как маленькие говяжьи тушки.~ */
  IF ~~ THEN REPLY #12642 /* ~«Мозгогрызунов?»~ */ GOTO 22
  IF ~~ THEN REPLY #12643 /* ~«Я попробую одну».~ */ GOTO 5
  IF ~~ THEN REPLY #12644 /* ~«Как отвратительно. Я лучше съем тухлятину, чем эту гадость».~ */ GOTO 4
  IF ~~ THEN REPLY #12645 /* ~«Интересно. У меня к тебе вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12646 /* ~«Это все, что я хотел услышать. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.2 3.2 5.4 6.1 7.1 8.1 9.1 59.1 60.1
  SAY #12562 /* ~Похоже, его это ничуть не смутило: он даже подмигнул тебе, весело улыбаясь. «Вот что я тебя скажу, рубака: ты даже не представляешь, от чего отказываешься! Если передумаешь — я буду здесь». Он возвращается к продаже крыс прохожим.~ */
  IF ~~ THEN DO ~SetGlobal("Creeden","AR0300",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.0 2.1 3.1 10.1 11.1 12.1 13.1 15.11 59.0 60.0 61.0
  SAY #12563 /* ~«Хорошо, рубака, очень хорошо! Какую хошь? — перечисляя, он указывает на каждую грязным пальцем. — У меня есть печеные, пряные, вареные и жареные! Все свежее, все высшего сорта... и всего лишь три медяка за пару!»~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12647 /* ~«Печеную».~ */ DO ~TakePartyGold(3)
~ GOTO 6
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12648 /* ~«Пряную».~ */ DO ~TakePartyGold(3)
~ GOTO 7
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12649 /* ~«Вареную».~ */ DO ~TakePartyGold(3)
~ GOTO 8
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12650 /* ~«Жареную».~ */ DO ~TakePartyGold(3)
~ GOTO 9
  IF ~~ THEN REPLY #12651 /* ~«Высшего сорта? Сомневаюсь. Кто вообще будет есть эти отбросы?»~ */ GOTO 4
  IF ~  PartyGoldLT(3)
~ THEN REPLY #12652 /* ~«У меня не хватает денег... лучше я задам тебе пару вопросов...»~ */ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #12653 /* ~«У меня не хватает денег... Прощай».~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12654 /* ~«Пожалуй, лучше я откажусь. Но у меня есть вопрос...»~ */ GOTO 15
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12655 /* ~«Если подумать, я не настолько голоден. Прощай».~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12564 /* ~Ты протягиваешь свои медяки, а он одним ловким движением деревянного шампура протыкает пару печеных крыс, снимает их с крюков и кладет в твою руку. «Приятного аппетита, рубака!»~ */
  IF ~~ THEN REPLY #12656 /* ~Съесть «крысочку».~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #12657 /* ~С отвращением выбросить ее.~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #12565 /* ~Ты протягиваешь свои медяки, а он одним ловким движением деревянного шампура протыкает пару пряных крыс, снимает их с крюков и кладет в твою руку. «Приятного аппетита, рубака!»~ */
  IF ~~ THEN REPLY #12658 /* ~Съесть «крысочку».~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #12659 /* ~С отвращением выбросить ее.~ */ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #12566 /* ~Ты протягиваешь свои медяки, а он одним ловким движением деревянного шампура протыкает пару вареных крыс, снимает их с крюков и кладет в твою руку. «Приятного аппетита, рубака!»~ */
  IF ~~ THEN REPLY #12660 /* ~Съесть «крысочку».~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #12661 /* ~С отвращением выбросить ее.~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #12567 /* ~Ты протягиваешь свои медяки, а он одним ловким движением деревянного шампура протыкает пару жареных крыс, снимает их с крюков и кладет в твою руку. «Приятного аппетита, рубака!»~ */
  IF ~~ THEN REPLY #12662 /* ~Съесть «крысочку».~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #12663 /* ~С отвращением выбросить ее.~ */ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #12568 /* ~Мясо крысы очень нежное и сочное; оно легко отделяется от костей и буквально тает у тебя во рту. Оно немного жирновато и очень питательно, напоминает какое-то... другое мясо, которое ты уже пробовал. Мужчина выжидающе смотрит на тебя. «Ну как, нравится? Может, еще хошь?~ */
  IF ~~ THEN REPLY #12664 /* ~«Было очень вкусно. У меня к тебе вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12665 /* ~«Хорошо, дай мне еще одну».~ */ GOTO 5
  IF ~~ THEN REPLY #12666 /* ~«Нет, вкус просто отвратительный».~ */ GOTO 14
  IF ~~ THEN REPLY #12667 /* ~«Нет, больше не нужно. Прощай».~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #12569 /* ~Крысиное мясо приятно пахнет и имеет довольно пикантный вкус: очевидно, перед приготовлением его хорошо замариновали какой-то смесью трав. Оно немного жирновато и очень питательно, напоминает какое-то... другое мясо, которое ты уже пробовал. Мужчина выжидающе смотрит на тебя. «Ну как, нравится? Может, еще хошь?»~ */
  IF ~~ THEN REPLY #12668 /* ~«Было очень вкусно. У меня к тебе вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12669 /* ~«Хорошо, дай мне еще одну».~ */ GOTO 5
  IF ~~ THEN REPLY #12670 /* ~«Нет, вкус просто отвратительный».~ */ GOTO 14
  IF ~~ THEN REPLY #12671 /* ~«Нет, больше не нужно. Прощай».~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0
  SAY #12570 /* ~Крысиное мясо, приготовленное этим способом, несколько жестковато и безвкусно, и напоминает какое-то... другое мясо, которое ты уже пробовал. Будь оно приготовлено по-другому, вкус был бы намного лучше. Ты не можешь себе представить, *кому* могло взбрести в голову варить мясо. Мужчина выжидающе смотрит на тебя. «Ну как, нравится? Может, еще хошь?»~ */
  IF ~~ THEN REPLY #12672 /* ~«Было очень вкусно. У меня к тебе вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12673 /* ~«Хорошо, дай мне еще одну».~ */ GOTO 5
  IF ~~ THEN REPLY #12674 /* ~«Нет, вкус просто отвратительный».~ */ GOTO 14
  IF ~~ THEN REPLY #12675 /* ~«Нет, больше не нужно. Прощай».~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #12571 /* ~Снаружи мясо зажарено до хрустящей корочки, но внутри оно сочное и нежное. Оно немного жирновато и очень питательно, напоминает какое-то... другое мясо, которое ты уже пробовал. Мужчина выжидающе смотрит на тебя. «Ну как, нравится? Может, еще хошь?»~ */
  IF ~~ THEN REPLY #12676 /* ~«Было очень вкусно. У меня к тебе вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12677 /* ~«Хорошо, дай мне еще одну».~ */ GOTO 5
  IF ~~ THEN REPLY #12678 /* ~«Нет, вкус просто отвратительный».~ */ GOTO 14
  IF ~~ THEN REPLY #12679 /* ~«Нет, больше не нужно. Прощай».~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2 12.2 13.2 61.1
  SAY #12572 /* ~Он искренне удивляется. «Печально слышать это, рубака. Хорошего дня». Он готов уйти.~ */
  IF ~~ THEN REPLY #12680 /* ~«Погоди, у меня к тебе вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12681 /* ~Пусть уходит.~ */ DO ~SetGlobal("Creeden","AR0300",3)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.3 1.2 2.3 3.3 5.5 5.7 10.0 11.0 12.0 13.0 14.0 16.1 17.1 18.2 19.2 20.0 21.1 22.1 23.3 24.1 25.2 26.2 27.2 28.2 29.2 30.2 33.1 34.1 35.2 36.2 37.2 38.1 39.5 40.2 41.3 42.1 43.2 44.1 45.0 46.1 47.3 48.3 49.0 50.0 51.2 52.2 53.1 54.0 55.1 56.1 57.1 58.1 60.2 61.2 62.1 63.0
  SAY #12573 /* ~Небрежным движением плеча он толкает крысиный шест. «Шо за вопрос, рубака?»~ */
  IF ~  Global("RP_Portal","GLOBAL",2)
~ THEN REPLY #48399 /* ~«Мне посоветовали расспросить человека по имени Креден напротив Управления по борьбе с вредителями и болезнями насчет забитой мусором арки на площади Старьевщиков. Можешь мне в этом помочь?»~ */ DO ~SetGlobal("RP_Portal","GLOBAL",3)
~ JOURNAL #47844 /* ~Человек по имени Креден сказал мне, что если я хочу пройти сквозь забитую мусором арку на площади Старьевщиков, мне следует спросить об этом женщину по имени Гвоздинка. Еще он сказал, что Гвоздинка находится к северо-востоку от Управления по борьбе с вредителями и болезнями, у кучи деревянного мусора.~ */ GOTO 63
  IF ~~ THEN REPLY #12682 /* ~«Кто ты?»~ */ GOTO 21
  IF ~~ THEN REPLY #12683 /* ~«Я хотел поговорить с тобой насчет крыс...»~ */ GOTO 23
  IF ~~ THEN REPLY #12684 /* ~«Что это за здание, там, за тобой?»~ */ GOTO 17
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #12685 /* ~«Можешь рассказать мне об этом... городе?»~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #12686 /* ~«Можешь рассказать мне о Сигиле?»~ */ GOTO 28
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #12687 /* ~«Можешь рассказать мне об этих трущобах?»~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 35
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #12688 /* ~«Можешь рассказать мне об Улье?»~ */ GOTO 36
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #12689 /* ~«Можешь рассказать мне о Леди Боли?»~ */ GOTO 50
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12690 /* ~«Ты знаешь кого-нибудь по имени Фарод?»~ */ GOTO 51
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12691 /* ~«Я потерял дневник. Тебе ничего такого не попадалось?»~ */ GOTO 54
  IF ~~ THEN REPLY #12692 /* ~«Я хотел бы попробовать одну из твоих крыс».~ */ GOTO 5
  IF ~~ THEN REPLY #12693 /* ~«Ничего. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 16 // from: 23.0
  SAY #12574 /* ~«Шо? Эти? — он потряхивает шестом, заставляя освежеванных крыс танцевать жуткую джигу. — Я поймал их самолично... в подвалах и переулках Улья».~ */
  IF ~~ THEN REPLY #12694 /* ~Понятно. Расскажи мне об этом 'Улье'».~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #12695 /* ~«У меня к тебе еще один вопрос».~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12696 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 17 // from: 15.3
  SAY #12575 /* ~Он бросает взгляд назад. «Это Управление по борьбе с вредителями и заболеваниями. Там я продаю крысиные хвосты, потом готовлю этих мелких паразитов и продаю их».~ */
  IF ~~ THEN REPLY #12697 /* ~«Кто-то платит за хвосты этих крыс?»~ */ GOTO 18
  IF ~~ THEN REPLY #12698 /* ~«У меня есть другие вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12699 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 18 // from: 17.0 26.1 47.1 48.2 57.0
  SAY #12576 /* ~«Все верно, рубака! В Управлении по борьбе с вредителями и заболеваниями сидит пень по имени Лорт, который платит за них награду. По медяку за голову... э-э, за хвост, то есть. Только они должны быть мозгогрызунами... не какими-то обычными крысами».~ */
  IF ~~ THEN REPLY #12700 /* ~«Расскажи мне побольше об этом Лорте».~ */ GOTO 19
  IF ~~ THEN REPLY #12701 /* ~«Мозгогрызунов?»~ */ GOTO 22
  IF ~~ THEN REPLY #12702 /* ~«Интересно. Ответь мне еще на вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12703 /* ~«Понятно. У меня все, прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #12577 /* ~«Его зовут Финеас. Финеас Лорт. Кажется, раньше он был крупной шишкой, но потом его опустили недоброжелатели, и теперь он застрял здесь, в самой жопе Сигила. Этот пень сидит там сутки напролет, ждет, пока ему не принесут хвосты в обмен за награду. А знаешь, что самое интересное? У бедолаги, походу, аллергия на крыс: у него постоянно какая-то сыпь! Хо-хо! Хвала Силам, что я — не тот чудак».~ */
  IF ~~ THEN REPLY #12704 /* ~«'Опустили'? А что произошло?»~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #12705 /* ~«Сигил?»~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #12706 /* ~«Хорошо. У меня есть другой вопрос...»~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12707 /* ~«Может, я как-нибудь загляну к нему. Прощай».~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #12578 /* ~«Ну, он без меры болтливый: может часами трясти черепушкой насчет того, какой он умный и все такое. Наверное, кому-то это не понравилось». Он пожимает плечами.~ */
  IF ~~ THEN REPLY #12708 /* ~«Понятно. Еще вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12709 /* ~«Наверное, мне стоит с ним поговорить. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 21 // from: 15.1
  SAY #12579 /* ~«Шо, я? Я — Креден, еще кличут Кредо — Палач-всех-крыс!» Он напыщенно улыбается, демонстрируя ряды пожелтевших сломанных кривых зубов.~ */
  IF ~~ THEN REPLY #12710 /* ~«Ты выглядишь... дружелюбнее... чем остальные».~ */ GOTO 49
  IF ~~ THEN REPLY #12711 /* ~«Приятно познакомиться, Креден. У меня к тебе еще один вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12712 /* ~«Может, как-нибудь еще поболтаем. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 22 // from: 3.0 18.1 23.2 47.2
  SAY #12580 /* ~«Таки да, рубака, мозгогрызунов. Грязные твари. Вот возьмем обычных крыс — они просто жрут и размножаются, разносят всякую заразу и так далее... в общем, досаждают, но не сильно. А вот *черепные* крысы, или мозгогрызуны, на которых охочусь *я*, вот они — настоящая проблема. Если этих сволочей наберется слишком много, то они начинают умнеть прямо на глазах... иногда даже *слишком сильно* умнеть».~ */
  IF ~~ THEN REPLY #12713 /* ~«Они становятся более сообразительными?»~ */ GOTO 24
  IF ~~ THEN REPLY #12714 /* ~«Понятно. У меня есть другие вопросы...» ~ */ GOTO 15
  IF ~~ THEN REPLY #12715 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 23 // from: 15.2
  SAY #12581 /* ~Он громко гогочет; изо рта у него разит луком. «Да я настоящий эксперт в этом деле! Шо за вопрос, рубака?»~ */
  IF ~~ THEN REPLY #12716 /* ~«Откуда у тебя все эти крысы?»~ */ GOTO 16
  IF ~~ THEN REPLY #12717 /* ~«Где лучше всего ловить крыс?»~ */ GOTO 62
  IF ~~ THEN REPLY #12718 /* ~«Расскажи мне об этих крысах».~ */ GOTO 22
  IF ~~ THEN REPLY #12719 /* ~«Ничего. Позволь мне спросить кое о чем еще...»~ */ GOTO 15
  IF ~~ THEN REPLY #12720 /* ~«Неважно. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 24 // from: 22.0
  SAY #12582 /* ~«Точно, так и есть! Если бы я наткнулся на штук сорок — бежал бы *со всех ног*... — он щелкает пальцами, чтобы подчеркнуть свои слова. — Еще как улепетывал! Соберется их столько в кучу, и... ну, и умными становятся, прям как человек!»~ */
  IF ~~ THEN REPLY #12721 /* ~«Продолжай...»~ */ GOTO 25
  IF ~~ THEN REPLY #12722 /* ~«Интересно. Позволь мне спросить кое о чем еще...»~ */ GOTO 15
  IF ~~ THEN REPLY #12723 /* ~«Понятно... Это все, что я хотел узнать. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #12583 /* ~«Мой тебе совет, рубака... Если захочешь ловить мозгогрызунов, ограничивайся небольшими стаями. С дюжину, не больше. Но вот что я тебе скажу...» Он делает шаг вперед. Обдавая тебя зловонием изо рта, он шепотом произносит: «Если их будет больше... больше пары дюжин... беги так, будто ты попал в тени Леди!» Он отступает назад.~ */
  IF ~~ THEN REPLY #12724 /* ~«Почему? Что здесь такого страшного?»~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #12725 /* ~«Леди?»~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #12726 /* ~«Тогда я буду с ними осторожен. У меня есть другой вопрос...»~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12727 /* ~«Я запомню это. Прощай».~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12584 /* ~«Колдовство, рубака... колдовство! Если наберешь этой мелкой нечисти в достаточном количестве, они получают много всяких странных способностей! От них у вояк мозги вытекают прямо через ухи! Просто жуть... Я тебе вот что скажу: это все неправильно. Именно поэтому Сигил так хочет от них избавиться... награды и все такое».~ */
  IF ~~ THEN REPLY #12728 /* ~«Сигил?»~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #12729 /* ~«Наград? Кто-то платит за крысиные хвосты?»~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #12730 /* ~«Понятно. Позволь спросить тебя еще кое о чем...»~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12731 /* ~«Понятно. Это все, что я хотел узнать на данный момент. Прощай».~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 27 // from: 15.4
  SAY #12585 /* ~«Ты про Сигил? Шо ты хочешь знать за Клетку, рубака?»~ */
  IF ~~ THEN REPLY #12732 /* ~«Почему ты назвал его Клеткой?»~ */ GOTO 29
  IF ~~ THEN REPLY #12733 /* ~«Где конкретно он находится?»~ */ GOTO 42
  IF ~~ THEN REPLY #12734 /* ~«На самом деле, ничего. Но у меня есть другие вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12735 /* ~«Ничего... это не важно. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 28 // from: 15.5 19.1 26.0
  SAY #12586 /* ~«Ну да, Сигил... Клетка... Шо ты хочешь знать, рубака?»~ */
  IF ~~ THEN REPLY #12736 /* ~«Почему ты назвал его Клеткой?»~ */ GOTO 29
  IF ~~ THEN REPLY #12737 /* ~«Где конкретно он находится?»~ */ GOTO 42
  IF ~~ THEN REPLY #12738 /* ~«На самом деле, ничего. Но у меня есть другие вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12739 /* ~«Ничего... это не важно. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #12587 /* ~Он качает головой и смеется, раскачивая висящих на шесте мертвых вредителей. «Понимаешь, рубака, здесь куча дверей. Некоторые называют Сигил 'Городом Дверей'... волшебных дверей; они повсюду... и ведут куда угодно. В самом деле, *куда угодно*! Но весь фокус в том, что... они все заперты! Так что это скорее Клетка... ты можешь попасть сюда и выбраться отсюда только с правильным ключом».~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12740 /* ~«Расскажи мне об этих дверях и ключах».~ */ GOTO 30
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12741 /* ~«Расскажи мне об этих дверях и ключах».~ */ GOTO 31
  IF ~~ THEN REPLY #12742 /* ~«Понятно. Позволь мне задать другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12743 /* ~«Это все, что я хотел узнать на данный момент. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0
  SAY #12588 /* ~«Хо-хо! Да тебе подавай все и сразу! Ну, если в двух словах: в Клетке полно дверей. Эти двери повсюду, по всему Сигилу... но видеть их, покуда у тебя нет правильного ключа, ты не можешь. У каждой двери свой собственный ключ. Один ключ может быть и в самом деле ключом, сечешь? А вот другой может быть... скажем... вареной крысой! Или джигой, которую ты вытанцовываешь перед дверью. Как только у тебя появится подходящий ключ, ты сможешь войти и попасть куда угодно».~ */
  IF ~~ THEN REPLY #12744 /* ~«А как узнать, куда ведет дверь?» ~ */ GOTO 33
  IF ~~ THEN REPLY #12745 /* ~«Как узнать, какой ключ открывает какую дверь?»~ */ GOTO 34
  IF ~~ THEN REPLY #12746 /* ~«Интересно. У меня есть другие вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12747 /* ~ «Спасибо за информацию. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #12589 /* ~Крысолов бросает чудаковатый взгляд на Морта, парящего позади тебя. «Рубаке стоит спросить у своего мимира обо всех этих таинствах...»~ */
  IF ~~ THEN EXTERN ~DMORTE~ 155
END

IF ~~ THEN BEGIN 32 // from:
  SAY #12590 /* ~Крысолов смущенно глядит на вас обоих, почесывая голову, и вдруг понимает, что снова оказался в центре внимания. Он отгоняет озадаченное выражение и вновь принимает самодовольный вид.~ */
  IF ~~ THEN REPLY #12748 /* ~Пусть говорит.~ */ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 30.0 34.0
  SAY #12591 /* ~Он хмурится, прокручивая ответ у себя в голове. «Ну, если у тебя есть ключ, скорее всего, что ты уже знаешь, куда ведет дверь. А если ты, скажем, открыл дверь случайно — просто будь там поосторожнее. Можно, конечно, попробовать засунуть туда голову и осмотреться... но некоторые двери сразу же тебя засасывают! Ты можешь очутиться в какой-нибудь грязной дыре, попомни мои слова, рубака».~ */
  IF ~~ THEN REPLY #12749 /* ~«А как узнать, какой ключ какую дверь открывает?»~ */ GOTO 34
  IF ~~ THEN REPLY #12750 /* ~«Интересно. Позволь мне спросить кое о чем еще...»~ */ GOTO 15
  IF ~~ THEN REPLY #12751 /* ~«Понятно. Спасибо за ответы. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 34 // from: 30.1 33.0
  SAY #12592 /* ~Он пожимает плечами, в очередной раз покачивая шест с висящими на нем крысами. «Ну, надо просто спросить правильного человека, который знает секрет этой штуковины. Знаешь, одни двери стоят на месте, другие — двигаются... если их всех отслеживать, можно умом тронуться. Сам-то я ими не пользуюсь, так что в этом деле я не тебе помощник».~ */
  IF ~~ THEN REPLY #12752 /* ~«А как узнать, куда ведет дверь?» ~ */ GOTO 33
  IF ~~ THEN REPLY #12753 /* ~«Интересно. Позволь мне спросить кое о чем еще...»~ */ GOTO 15
  IF ~~ THEN REPLY #12754 /* ~«Понятно. Спасибо за ответы. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 35 // from: 15.6
  SAY #12593 /* ~Он немного озадачен. «Улей, что ли? Шо ты хочешь за него узнать, рубака?»~ */
  IF ~~ THEN REPLY #12755 /* ~«Ты знаешь, почему его называют Ульем?»~ */ GOTO 37
  IF ~~ THEN REPLY #12756 /* ~«Здесь есть что-нибудь интересное?»~ */ GOTO 39
  IF ~~ THEN REPLY #12757 /* ~«Ничего важного. У меня еще вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12758 /* ~«Неважно, это все. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 36 // from: 15.7 16.0
  SAY #12594 /* ~«Мой любимый дом и место для бизнеса! Шо ты хочешь за него знать, рубака?»~ */
  IF ~~ THEN REPLY #12759 /* ~«Ты знаешь, почему его называют Ульем?»~ */ GOTO 37
  IF ~~ THEN REPLY #12760 /* ~«Есть что-нибудь интересное в округе?»~ */ GOTO 39
  IF ~~ THEN REPLY #12761 /* ~«Ничего важного. У меня еще вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12762 /* ~«Неважно, это все. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #12595 /* ~«Хм-м... — крысолов почесывает подбородок, оставляя на нем маслянистые пятна. — Насчет этого есть куча историй... насколько я знаю, где-то здесь есть нагромождение домов, такая себе непроходимая свалка из лачуг и руин, которые служат чем-то вроде места для сходок. Их называют Ульем — оттуда-то и пошло название этих трущоб... всего этого района».~ */
  IF ~~ THEN REPLY #12763 /* ~«Места для сходок? Для кого?»~ */ GOTO 38
  IF ~~ THEN REPLY #12764 /* ~«Понятно. Есть что-нибудь интересное в округе?»~ */ GOTO 39
  IF ~~ THEN REPLY #12765 /* ~«Хм-м-м. У меня есть другие вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12766 /* ~ «Спасибо за информацию. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #12596 /* ~Его дружелюбие сменятся хмурым взглядом: «Для всяких смутьянов. Если тебе удастся разыскать это место, мой тебе совет: держись от него подальше. И нечего об этом больше говорить». В завершение он сморкается, и его хмурость исчезает.~ */
  IF ~~ THEN REPLY #12767 /* ~«Понятно. Что есть интересного в округе?»~ */ GOTO 39
  IF ~~ THEN REPLY #12768 /* ~«Понятно. Позволь мне тогда спросить кое о чем еще...»~ */ GOTO 15
  IF ~~ THEN REPLY #12769 /* ~«Хорошо. Тогда прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 39 // from: 35.1 36.1 37.1 38.0
  SAY #12597 /* ~«Я не уверен, шо ты считаешь интересным, рубака. Дай мне знать: быть может, старина Креден направит тебе куда следует».~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12770 /* ~«Я ищу развлечения».~ */ EXTERN ~DMORTE~ 159
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12771 /* ~«Я ищу развлечения».~ */ GOTO 40
  IF ~~ THEN REPLY #12772 /* ~«Я ищу работу».~ */ GOTO 47
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12773 /* ~«Я разыскиваю человека по имени Фарод».~ */ GOTO 51
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12774 /* ~«Я ищу дневник. Тебе ничего такого не попадалось?»~ */ GOTO 54
  IF ~~ THEN REPLY #12775 /* ~«Забудь об этом. У меня есть несколько вопросов...»~ */ GOTO 15
  IF ~~ THEN REPLY #12776 /* ~«Неважно. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #12598 /* ~«Есть парочка не особо опасных мест, шобы напиться... Бар собирателей пыли и Тлеющий труп. В другие места лучше не соваться, рубака».~ */
  IF ~~ THEN REPLY #12777 /* ~«Можешь сказать, где они находятся?»~ */ GOTO 55
  IF ~~ THEN REPLY #12778 /* ~«Опасных?»~ */ GOTO 41
  IF ~~ THEN REPLY #12779 /* ~«Спасибо. У меня есть другой вопрос».~ */ GOTO 15
  IF ~~ THEN REPLY #12780 /* ~«Наверное, я остановлюсь в одном из них. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 41 // from: 40.1 55.0
  SAY #12599 /* ~Перед тем как дать ответ, он на секунду задумывается. «Ну, знаешь, рубака... дела здесь плохи. Жизнь тяжелая. Это место без будущего, и здесь полно отчаянных людей. Скажем так: некоторые пойдут на шо-угодно, абы свести концы с концами. И плевать они хотели на пней вокруг себя. В Улье легко потеряться».~ */
  IF ~~ THEN REPLY #12781 /* ~«А вот ты достаточно дружелюбен...»~ */ GOTO 49
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12782 /* ~«Потеряться?»~ */ EXTERN ~DMORTE~ 160
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12783 /* ~«Потеряться?»~ */ GOTO 56
  IF ~~ THEN REPLY #12784 /* ~«У меня есть другие вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12785 /* ~ «Спасибо за информацию. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 42 // from: 27.1 28.1
  SAY #12600 /* ~«Ха... а где его нет, рубака? Сигил простирается повсюду... реально повсюду... нет такого места, где его нету. Не знаю, существует ли он где-нибудь в обычном понимании этого слова... в определенном месте, то есть. Хотя большинство знатоков тебе скажет, шо он находится во Внешних землях».~ */
  IF ~~ THEN REPLY #12786 /* ~«Внешних землях?»~ */ GOTO 43
  IF ~~ THEN REPLY #12787 /* ~«Странно. Позволь мне спросить кое о чем еще...»~ */ GOTO 15
  IF ~~ THEN REPLY #12788 /* ~«Кажется, я понимаю. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #12601 /* ~«Ага, именно так, рубака. Это такой себе 'Центр Планов', в котором и находится Сигил. Только тут есть небольшая закавыка: если ты в Сигиле, то выйти наружу без магической двери уже не сможешь. Нет 'нормального' способа выбраться отсюдова во Внешние земли».~ */
  IF ~~ THEN REPLY #12789 /* ~«Продолжай...»~ */ GOTO 44
  IF ~~ THEN REPLY #12790 /* ~«Двери?»~ */ GOTO 46
  IF ~~ THEN REPLY #12791 /* ~«У меня есть другие вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12792 /* ~«Я выслушаю оставшуюся часть истории в другой раз. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 44 // from: 43.0 46.0
  SAY #12602 /* ~«Ага. А если ты снаружи... во Внешних землях... то обратно в Сигил ты не попадешь. Там только бесконечный каменный шпиль, который теряется в облаках прямо посреди Внешних земель, а Сигил вроде как вертится на его верхушке!»~ */
  IF ~~ THEN REPLY #12793 /* ~«Да... продолжай...»~ */ GOTO 45
  IF ~~ THEN REPLY #12794 /* ~«У меня есть другие вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12795 /* ~«Я выслушаю оставшуюся часть истории в другой раз. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #12603 /* ~Он кивает. «А теперь скажи мне, рубака: если ты не можешь просто так выйти из Сигила во Внешние земли или из Внешних земель в Сигил, то кто скажет, что он где-либо физически существует? — он проницательно кивает, наслаждаясь своей маленькой дилеммой. — По мне, так Сигил находится во всех планах, везде и нигде одновременно».~ */
  IF ~~ THEN REPLY #12796 /* ~«Может быть. У меня есть другие вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12797 /* ~«Интересная теория, я поразмыслю над ней. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 46 // from: 43.1
  SAY #12604 /* ~«Ага, рубака, двери. Если коротко: в Клетке полно дверей. Они повсюду, по всему Сигилу... но тебе их не разглядеть до тех пор, пока у тебя не будет подходящего ключа. У каждой двери есть свой ключ, и у каждой он разный. Получив подходящий ключ, ты сможешь войти в дверь и попасть туда, куда она ведет».~ */
  IF ~~ THEN REPLY #12798 /* ~«Хорошо, продолжай».~ */ GOTO 44
  IF ~~ THEN REPLY #12799 /* ~«Перед тем как ты продолжишь, позволь спросить тебя кое о чем еще...»~ */ GOTO 15
  IF ~~ THEN REPLY #12800 /* ~«Я выслушаю оставшуюся часть истории в другой раз. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 47 // from: 39.2
  SAY #12605 /* ~«На самом деле, работы в Улье не так чтобы много... большинство народу занято поиском еды и выживанием. Можешь собирать жмуриков, как сборщики... или охотиться на мозгогрызунов за награду».~ */
  IF ~~ THEN REPLY #12801 /* ~«Сборщики?»~ */ GOTO 48
  IF ~~ THEN REPLY #12802 /* ~«Люди платят за мертвых крыс?»~ */ GOTO 18
  IF ~~ THEN REPLY #12803 /* ~«Мозгогрызунов?»~ */ GOTO 22
  IF ~~ THEN REPLY #12804 /* ~«Понятно. Я хотел бы узнать кое о чем еще...»~ */ GOTO 15
  IF ~~ THEN REPLY #12805 /* ~«Отлично. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 48 // from: 47.0 52.0 58.0
  SAY #12606 /* ~«Он кивает. «Пни, которые собирают трупы и тащат их в Морг. Кажись, тленные дают им по медяку за жмурика. Сборщики этим зарабатывают на жизнь: обычно они обирают свежего покойника, а потом продают его. Я слыхал, — он понижает голос, быстро озираясь, — будто кое-кто из них помогает пням потеряться, ну ты понял. Мерзавцы — вот они кто».~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12806 /* ~«Потеряться?»~ */ EXTERN ~DMORTE~ 161
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12807 /* ~«Потеряться?»~ */ GOTO 57
  IF ~~ THEN REPLY #12808 /* ~«Что ты говорил насчет людей, которые платят за крыс?»~ */ GOTO 18
  IF ~~ THEN REPLY #12809 /* ~«Интересно. Я хотел бы узнать кое о чем еще...»~ */ GOTO 15
  IF ~~ THEN REPLY #12810 /* ~«Отлично. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 49 // from: 21.0 41.0 56.0
  SAY #12607 /* ~«Я пытаюсь, рубака. Кажись, это все мой бизнес... многие из здешних косятся на меня, да и вообще, злые они все, и все же я хочу, чтобы каждый рубака знал, что у Кредена всегда найдется теплая улыбка и горячая, только что приготовленная крысочка!» Он подмигивает тебе.~ */
  IF ~~ THEN REPLY #12811 /* ~«У меня есть другие вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12812 /* ~«Доходчиво. Прощай, Креден».~ */ GOTO 59
END

IF ~~ THEN BEGIN 50 // from: 15.8 25.1
  SAY #12608 /* ~«Ага, Госпожа Сигила. Рубака, я про Леди не болтаю... и тебе не стоит о ней расспрашивать. Не к добру это». Он изображает полукруг перед своей грудью.~ */
  IF ~~ THEN REPLY #12813 /* ~«Позволь мне тогда спросить кое о чем еще».~ */ GOTO 15
  IF ~~ THEN REPLY #12814 /* ~«Тогда мне нужно идти. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 51 // from: 15.9 39.3
  SAY #12609 /* ~Он выглядит удивленным. «Фарод? Зачем рубаке искать такого как он?»~ */
  IF ~~ THEN REPLY #12815 /* ~«Это долгая история... мне просто нужно найти его».~ */ GOTO 52
  IF ~~ THEN REPLY #12816 /* ~«Это не твое дело, крысолов».~ */ GOTO 53
  IF ~~ THEN REPLY #12817 /* ~«Забудь, что я спросил. Ответь мне еще на вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12818 /* ~«Забудь, это не важно. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 52 // from: 51.0 53.0
  SAY #12610 /* ~«Он — главарь банды сборщиков, вот он кто... Без конца перемещается, видать, старается не нарываться на неприятности. Околачивается он где-то на площади Старьевщиков. Коварный тип этот Фарод. Рубаке следует быть поосторожнее рядом с ним».~ */
  IF ~~ THEN REPLY #12819 /* ~«Сборщики?»~ */ GOTO 48
  IF ~~ THEN REPLY #12820 /* ~«А где находится эта площадь Старьевщиков?»~ */ GOTO 58
  IF ~~ THEN REPLY #12821 /* ~«Хорошо. У меня еще вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12822 /* ~ «Спасибо за информацию. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #12611 /* ~Креден хмурится. «Все верно, рубака: где может быть этот тип, меня не касается».~ */
  IF ~~ THEN REPLY #12823 /* ~«Мне очень важно его разыскать... Прошу прощения за резкие слова. Можешь мне помочь?»~ */ GOTO 52
  IF ~~ THEN REPLY #12824 /* ~«Ну и ладно. Может, ты сможешь ответить еще на один вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12825 /* ~«Ну и пусть. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 54 // from: 15.10 39.4
  SAY #12612 /* ~«Извини, рубака... не могу сказать, чтобы мне что-то такое попадалось».~ */
  IF ~~ THEN REPLY #12826 /* ~«У меня есть другие вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12827 /* ~«Тогда буду искать дальше. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 55 // from: 40.0
  SAY #12613 /* ~«Конечно, рубака. Бар собирателей пыли находится прямо перед Моргом, а Тлеющий труп — на востоке отсюда».~ */
  IF ~~ THEN REPLY #12828 /* ~«Спасибо. Что ты там сказал насчет опасных мест?»~ */ GOTO 41
  IF ~~ THEN REPLY #12829 /* ~«Спасибо. Тогда у меня другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12830 /* ~«Наверное, я остановлюсь в одном из них. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 56 // from: 41.2
  SAY #12614 /* ~«Ага, рубака... потеряться. В книге мертвых».~ */
  IF ~~ THEN REPLY #12831 /* ~«Понятно... а вот ты кажешься достаточно дружелюбным...»~ */ GOTO 49
  IF ~~ THEN REPLY #12832 /* ~«Понятно. Еще вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12833 /* ~«Понятно. Это все, что я хотел узнать. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 48.1
  SAY #12615 /* ~«Точно, рубака... потеряться. В книге мертвых».~ */
  IF ~~ THEN REPLY #12834 /* ~«Понятно. Что ты там говорил про тех, кто платит за мертвых крыс?»~ */ GOTO 18
  IF ~~ THEN REPLY #12835 /* ~«Понятно. Я хотел бы узнать кое о чем еще...»~ */ GOTO 15
  IF ~~ THEN REPLY #12836 /* ~«Отлично. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 52.1 62.0
  SAY #12616 /* ~«Я покажу тебе, рубака — дай-ка мне карту». Он указывает тебе на место, оставляя большой жирный отпечаток пальца.~ */
  IF ~~ THEN REPLY #12837 /* ~«Спасибо. Что ты там говорил про сборщиков?»~ */ GOTO 48
  IF ~~ THEN REPLY #12838 /* ~«Спасибо. У меня еще вопросы...»~ */ GOTO 15
  IF ~~ THEN REPLY #12839 /* ~ «Спасибо за информацию. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 3.4 15.12 16.2 17.2 18.3 19.3 20.1 21.2 22.2 23.4 24.2 25.3 26.3 27.3 28.3 29.3 30.3 33.2 34.2 35.3 36.3 37.3 38.2 39.6 40.3 41.4 42.2 43.3 44.2 45.1 46.2 47.4 48.4 49.1 50.1 51.3 52.3 53.2 54.1 55.2 56.2 57.2 58.2 62.2 63.1
  SAY #12617 /* ~Он трогает тебя за руку. «Вижу, ты уходишь, рубака. Пока ты не ушел, не хошь попробовать вкусненьких, вааасхитительных крысочек? На дорожку, так сказать».~ */
  IF ~~ THEN REPLY #12840 /* ~«Почему бы и нет...»~ */ GOTO 5
  IF ~~ THEN REPLY #12841 /* ~«Да я скорее язык проглочу».~ */ GOTO 4
  IF ~~ THEN REPLY #12842 /* ~«Нет, спасибо. Прощай».~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~  Global("Creeden","AR0300",2)
~ THEN BEGIN 60 // from:
  SAY #12618 /* ~«Оле, рубака, рад снова видеть тебя. Ну как, передумал? Вернулся за одной из вааасхитительных крысочек Кредена?» Он призывно потряхивает шестом с крысами.~ */
  IF ~~ THEN REPLY #12843 /* ~«Почему бы и нет... какие у тебя есть?»~ */ GOTO 5
  IF ~~ THEN REPLY #12844 /* ~«Да я скорее язык проглочу».~ */ GOTO 4
  IF ~~ THEN REPLY #12845 /* ~«Нет, не сейчас. Но у меня есть несколько вопросов...»~ */ GOTO 15
  IF ~~ THEN REPLY #12846 /* ~«Нет, спасибо. Прощай».~ */ DO ~SetGlobal("Creeden","AR0300",2)
~ EXIT
END

IF ~  Global("Creeden","AR0300",3)
~ THEN BEGIN 61 // from:
  SAY #12619 /* ~«Оле, рубака, рад снова видеть тебя. Я могу убедить тебя попробовать еще одну из моих вааасхитительных крысочек? Знаю, в прошлый раз тебе не понравилось, но, может, у Кредена найдется более подходящий вкус...»~ */
  IF ~~ THEN REPLY #12847 /* ~«Почему бы и нет... какие у тебя есть?»~ */ GOTO 5
  IF ~~ THEN REPLY #12848 /* ~«Они меня не интересуют».~ */ GOTO 14
  IF ~~ THEN REPLY #12849 /* ~«Нет, не сейчас. Но у меня есть несколько вопросов...»~ */ GOTO 15
  IF ~~ THEN REPLY #12850 /* ~«Нет, спасибо. Прощай».~ */ DO ~SetGlobal("Creeden","AR0300",3)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 23.1
  SAY #12620 /* ~«Теперь на этот вопрос не так уж и просто ответить, рубака... видишь ли, в последнее время эти сволочи стали редко встречаться. Раньше я ловил их в темных улицах и подвалах с помощью мышеловок, но, видать, уж слишком много их выловил. Тебе стоит попробовать на площади Старьевщиков: крысам очень нравятся тамошние мусорные кучи».~ */
  IF ~~ THEN REPLY #12851 /* ~«А где находится эта площадь Старьевщиков?»~ */ GOTO 58
  IF ~~ THEN REPLY #12852 /* ~«Спасибо. У меня есть другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #12853 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 15.0
  SAY #48396 /* ~Он задумывается. «Ага, я знаю, о чем ты толкуешь. Однажды через нее прошла девчонка, зовут Гвоздинка. Я это видел, пока искал крыс. Даже не знаю, как ей это удалось. Скорее всего, ты найдешь ее к северо-востоку отсюда: она там роется в куче деревянного мусора, ищет гвозди и другие железяки».~ */
  IF ~~ THEN REPLY #48397 /* ~«Спасибо. У меня есть другой вопрос...»~ */ GOTO 15
  IF ~~ THEN REPLY #48398 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 59
END
