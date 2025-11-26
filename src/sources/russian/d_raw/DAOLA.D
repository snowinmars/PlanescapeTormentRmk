// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAOLA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DAOLA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 3 2 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45487 /* ~«Добро пожаловать в собор Аоскара. Ты пришел воздать хвалу Аоскару вместе со мной? Ты можешь стать вторым его последователем».~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60902 /* ~«Я пришел за советом по поводу шкатулки с нечистью».~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45488 /* ~«Я пришел за советом по поводу шкатулки с нечистью».~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~~ THEN REPLY #45489 /* ~«Почему здесь нет других последователей Аоскара?»~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45490 /* ~«Расскажи мне об Аоскаре побольше».~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45491 /* ~«Я хочу стать последователем Аоскара».~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~~ THEN REPLY #45492 /* ~«Возможно, в другой раз. Прощай».~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 2 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45493 /* ~«Заблудшая душа вернулась. Так поблагодарим же Аоскара и воспоем твое возвращение. Надеюсь, ты все хорошо обдумал и решил присоединиться к моей пастве».~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60951 /* ~«Я пришел за советом по поводу шкатулки и демона».~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45494 /* ~«Я пришел за советом по поводу шкатулки и демона».~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~~ THEN REPLY #45495 /* ~«Какая еще паства? Я вижу здесь только тебя».~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45497 /* ~«Расскажи мне об Аоскаре побольше».~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45498 /* ~«Я хочу стать последователем Аоскара».~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~~ THEN REPLY #45499 /* ~«Возможно, в другой раз. Прощай».~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 2 // from:
  SAY #45500 /* ~«Да вознаградит тебя Аоскар безопасной дорогой. Чем я могу помочь тебе?»~ */
  IF ~  GlobalGT("FedEx","Global",9)
Global("Gem","Global",0)
~ THEN REPLY #45501 /* ~«Я хотел бы купить у тебя тот камень, который ты извлек из шкатулки Моридора».~ */ GOTO 13
  IF ~~ THEN REPLY #45503 /* ~«Расскажи мне об Аоскаре побольше».~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~~ THEN REPLY #45504 /* ~«Почему здесь нет других последователей Аоскара?»~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45506 /* ~«Я хочу стать последователем Аоскара».~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("AR1900_Visited","Global",1)
~ THEN REPLY #45507 /* ~«Что произошло? Не успел я и минуты побыть последователем, как вдруг оказываюсь в каком-то 'лабиринте'».~ */ GOTO 17
  IF ~~ THEN REPLY #45509 /* ~«На этот раз ничего. Прощай».~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Disciple","Global",1)
~ THEN BEGIN 3 // from:
  SAY #45511 /* ~«Ты вернулся! Прошу прощения за мое удивление, но ты — первый последователь, который вернулся. Большинство просто исчезает. Чем я могу тебе помочь?»~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60964 /* ~«Я пришел за советом по поводу шкатулки и демона».~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45599 /* ~«Я пришел за советом по поводу шкатулки и демона».~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~  GlobalGT("FedEx","Global",9)
Global("Gem","Global",0)
~ THEN REPLY #45600 /* ~«Я хотел бы купить у тебя тот камень, который ты извлек из шкатулки Моридора».~ */ GOTO 13
  IF ~~ THEN REPLY #45601 /* ~«Расскажи мне об Аоскаре побольше».~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("AR1900_Visited","Global",1)
~ THEN REPLY #45602 /* ~«Что произошло? Не успел я и минуты побыть последователем, как вдруг оказываюсь в каком-то 'лабиринте'».~ */ GOTO 17
  IF ~~ THEN REPLY #45603 /* ~«На этот раз ничего. Прощай».~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Shutup","Global",1)
~ THEN BEGIN 4 // from:
  SAY #45604 /* ~Похоже, Аола впал в глубокий транс. Единственное, что ты можешь от него услышать — это песнопения во славу Аоскара.~ */
  IF ~~ THEN REPLY #45605 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.1 3.1
  SAY #45606 /* ~Ты объясняешь ему свое затруднительное положение. Аола некоторое время обдумывает услышанное. «Я, скромный служитель великого Аоскара, воистину могу тебе помочь. Но прежде ты должен отдать мне шкатулку».~ */
  IF ~~ THEN REPLY #45607 /* ~Отдать ему шкатулку.~ */ DO ~DestroyPartyItem("Dbox",TRUE)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #45608 /* ~Аола помещает шкатулку Моридора в проволочную пирамидку, затем начинает тихо молиться Аоскару. Вскоре стороны пирамидки заполняет уже знакомое свечение портала. Аола небрежно протягивает к шкатулке руку сквозь портал и с легким щелчком открывает ее.~ */
  IF ~~ THEN REPLY #45609 /* ~Продолжить.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #45610 /* ~Ты вскрикиваешь, пытаясь помешать ему, но уже слишком поздно. Почти сразу же шкатулка начинает превращаться в блеклый дым, который постепенно заполняет всю пирамидку. Комнату охватывает ощущение немыслимого ужаса. Все, что тебе остается — бежать изо всех сил из помещения.~ */
  IF ~~ THEN REPLY #45611 /* ~Продолжить.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #45612 /* ~Ты замечаешь, что завитки дыма, касающиеся сторон пирамиды, исчезают в кружащемся водовороте порталов. С последним завитком исчезает и ощущение ужаса. Аола немного нервно улыбается тебе. «Узри силу Аоскара, Хранителя Врат!»~ */
  IF ~~ THEN REPLY #45613 /* ~«Уверен, что настолько могущественный нечистый дух, на заточение которого понадобилось так много заклинаний, без проблем сможет вернуться. И когда он это сделает, она будет искать тебя...»~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45615 /* ~«Я предусмотрел это. Каждая сторона пирамиды содержит портал на другой план. Я разбросал его сущность по самым удаленным уголкам мультивселенной. Знаешь ли ты, что некоторые существа считают демонов чем-то вроде деликатесов?» Сдавленно хихикая, он засовывает руку внутрь шкатулки и извлекает из пепла драгоценный камень, ранее инкрустированный в шкатулку. «Это воздаяние за мои услуги. Он поможет мне отстроить заново мой прекрасный собор».~ */
  IF ~~ THEN REPLY #45617 /* ~«Камень твой; ты заслужил его по праву. Прощай».~ */ DO ~SetGlobal("FedEx","Global",10)
SetGlobal("Shutup","Global",1)
CreateItem("DGem",1,0,0)
SetGlobal("Epsilon","Global",2)
AddexperienceParty(1000)
~ JOURNAL #60389 /* ~Благодаря жрецу Аоскара шкатулка Моридора была обезврежена. В обмен на услугу жрец забрал камень, который красовался на крышке шкатулки. Камень исключительного качества, уникальный в своем роде... он использовался для пленения демона.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.2 1.2 2.2 11.1
  SAY #45618 /* ~«Много лет назад у меня было много последователей. К сожалению, все они исчезли. Это довольно печально. Едва став посвященными, они пропадают. Позже начали ходить слухи, что причиной тому является сама Леди. И теперь сюда больше никто не приходит. Ты — первый, кого я вижу за последнее время».~ */
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45619 /* ~«Я не боюсь. Я хочу стать последователем Аоскара».~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("Aoskar","Global",0)
~ THEN REPLY #45620 /* ~«Расскажи мне об Аоскаре побольше».~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~~ THEN REPLY #45621 /* ~«Леди... Я не хочу встречаться с ней. Лучше я пойду своей дорогой. Прощай».~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.3 1.3 2.1 3.3 10.1
  SAY #45623 /* ~Тон Аолы становится льстивым. «Аоскар — Хранитель Врат. В Аоскаре заключается сила порталов, дверей и возможностей. Сигил, известный также как Город Дверей, был домом Аоскара до тех пор, пока он не был 'изгнан' этой проклятой Леди. С тех пор у Аоскара осталось здесь всего несколько поклонников, поскольку Леди запрещает это. Но скоро все изменится, я помогу людям узреть величие Аоскара. Она не сможет устоять перед волей народа!»~ */
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45624 /* ~«Я хочу стать последователем Аоскара».~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("One","Global",0)
~ THEN REPLY #45626 /* ~«Почему здесь нет других последователей Аоскара?»~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45629 /* ~«Леди... Я не хочу встречаться с ней. Лучше я пойду своей дорогой. Прощай».~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.4 1.4 2.3 10.0 11.0
  SAY #45631 /* ~«Замечательно! Давно уже никто этого не просил». Аола заставляет тебя провести серию сложных ритуалов. «Теперь ты последователь Аоскара. Иди и неси слово обитателям Сигила, чтобы все узнали великолепие Аоскара!»~ */
  IF ~~ THEN REPLY #45634 /* ~«Прощай».~ */ DO ~SetGlobal("Shutup","Global",1)
SetGlobal("Lady","Global",50)
SetGlobal("Disciple","Global",1)
SetGlobal("DMaze","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.0 3.2
  SAY #45635 /* ~«Тебе повезло: я еще не успел его продать. Ты получишь его по сходной цене в триста медяков».~ */
  IF ~  PartyGoldGT(299)
~ THEN REPLY #45636 /* ~«Беру».~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(300)
GiveItem("Dgem",Protagonist)
~ GOTO 14
  IF ~  PartyGoldGT(99)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY #61596 /* ~«Как насчет сотни медяков?»~ */ GOTO 19
  IF ~  PartyGoldLT(300)
~ THEN REPLY #45638 /* ~«Я не могу себе этого позволить».~ */ GOTO 15
  IF ~  PartyGoldGT(299)
~ THEN REPLY #45639 /* ~«Это грабеж... Я не стану столько платить».~ */ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.0 19.0
  SAY #45641 /* ~«Да озарит тебя своей улыбкой Аоскар, бог порталов, дверей и 'возможностей'».~ */
  IF ~~ THEN REPLY #45643 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.2 19.1 19.2
  SAY #45645 /* ~«Это очень печально. Я не могу снизить цену. Заработай больше звенелок и возвращайся. Я буду счастлив придержать камень для тебя».~ */
  IF ~~ THEN REPLY #45646 /* ~«Прощай».~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.3
  SAY #45648 /* ~«Мне очень нужны деньги на ремонт моего собора. Ты еще не передумал? На рынке я могу получить за него как минимум столько же».~ */
  IF ~~ THEN REPLY #45649 /* ~«Беру».~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(300)
GiveItem("DGem",Protagonist)
~ GOTO 14
  IF ~~ THEN REPLY #45651 /* ~«Забудь об этом».~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.4 3.4
  SAY #45654 /* ~«Похоже, что ты провалился куда-то через портал. Только опытные последователи Аоскара и сама Леди могут сделать подобное. Это объясняет исчезновение моих последователей. Я должен подумать над этим. Пожалуйста, оставь меня».~ */
  IF ~~ THEN REPLY #45657 /* ~«Прощай».~ */ DO ~SetGlobal("DMaze","Global",2)
SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.0 1.0 3.0
  SAY #60914 /* ~После того, как ты объясняешь свое затруднительное положение, Аола осматривает шкатулку, затем возвращает ее тебе. «Я не чувствую ничего необычного, это обыкновенная шкатулка. А теперь прошу меня оставить, у меня много дел».~ */
  IF ~~ THEN REPLY #60925 /* ~«Прощай».~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.1
  SAY #61597 /* ~«Не знаю почему, но ты мне нравишься. Да будет камень твоим за двести монет и ни монетой меньше. Что скажешь?»~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #61598 /* ~«Беру».~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(200)
GiveItem("Dgem",Protagonist)
~ GOTO 14
  IF ~  PartyGoldLT(200)
~ THEN REPLY #61600 /* ~«Я не могу себе этого позволить».~ */ GOTO 15
  IF ~~ THEN REPLY #61599 /* ~«Забудь об этом».~ */ GOTO 15
END
