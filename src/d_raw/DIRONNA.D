// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIRONNA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DIRONNA~

IF ~  Global("Iron_Nalls","AR0300",0)
~ THEN BEGIN 0 // from:
  SAY #9346 /* ~Эта широкоплечая женщина шатается между больших балок, лежащих на улице. Она пинает по ним подкованным железом башмаком, время от времени голыми руками выпрямляя и вытаскивая из досок гвозди. Она оценивающе их разглядывает, а затем бросает в кожаную сумку на ремне.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13094 /* ~«Приветствую...»~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13095 /* ~«Приветствую...»~ */ GOTO 7
  IF ~~ THEN REPLY #13096 /* ~Позволить ее продолжить свою работу.~ */ EXIT
END

IF ~  Global("Iron_Nalls","AR0300",1)
!NearbyDialog("DAnnah")
~ THEN BEGIN 1 // from:
  SAY #13038 /* ~Железная Гвоздинка выпрямляется и кладет руки на пояс. «Что, опять вернулся? Чего тебе на этот раз?»~ */
  IF ~~ THEN REPLY #13097 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 8
  IF ~~ THEN REPLY #13098 /* ~«Ничего. Прощай».~ */ GOTO 5
END

IF ~  Global("Iron_Nalls","AR0300",1)
NearbyDialog("DAnnah")
~ THEN BEGIN 2 // from:
  SAY #13040 /* ~Железная Гвоздинка выпрямляется и кладет руки на пояс. «Что, опять вернулся? Чего тебе на этот... — неожиданно она замечает позади тебя Анну. — Ну, рубака... кто твоя новая подруга?»~ */
  IF ~~ THEN REPLY #64412 /* ~«Ее зовут Анна».~ */ EXTERN ~DANNAH~ 82
  IF ~~ THEN REPLY #64413 /* ~«Это Анна, но я не уверен, что могу назвать ее подругой».~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 83
END

IF ~  Global("Iron_Nalls","AR0300",2)
!NearbyDialog("DAnnah")
~ THEN BEGIN 3 // from:
  SAY #13050 /* ~Железная Гвоздинка выпрямляется и кладет руки на пояс. «Что, опять вернулся? — она сконфуженно смотрит тебе за спину. — Скажи-ка, рубака... где та симпатичненькая крошка, которая ходила вместе с тобой?»~ */
  IF ~  Dead("Annah")
~ THEN REPLY #12967 /* ~«Она... мертва».~ */ GOTO 26
  IF ~  Dead("Annah")
~ THEN REPLY #13101 /* ~Ложь: «Я не знаю. У меня есть несколько вопросов...»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nalls_1","GLOBALLaw",-1)
~ GOTO 27
  IF ~  !Dead("Annah")
~ THEN REPLY #13102 /* ~«Я не знаю. У меня есть несколько вопросов...»~ */ GOTO 27
  IF ~  Dead("Annah")
~ THEN REPLY #13103 /* ~Ложь: «Я не знаю. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nalls_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  !Dead("Annah")
~ THEN REPLY #13104 /* ~«Я не знаю. Прощай».~ */ GOTO 5
END

IF ~  Global("Iron_Nalls","AR0300",2)
NearbyDialog("DAnnah")
~ THEN BEGIN 4 // from:
  SAY #13051 /* ~Железная Гвоздинка выпрямляется и кладет руки на пояс. Заметив Анну, она широко улыбается. «Что, снова ты? Приятно снова видеть твое прелестное личико, девочка, — она оборачивается к тебе. — Что тебе нужно, рубака?»~ */
  IF ~~ THEN REPLY #13105 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 8
  IF ~~ THEN REPLY #13106 /* ~«Ничего. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.3 3.4 4.1 6.1 7.1 9.3 10.3 11.3 12.4 13.2 14.3 15.2 16.1 17.3 18.4 19.4 20.4 21.1 22.1 23.1 24.2 25.1 26.1 27.1 28.3 29.6 30.7 31.6 32.6 33.6 34.4 36.5 37.4 38.1
  SAY #13052 /* ~«И тебе того же, рубака».~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13107 /* ~Уйти.~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ EXIT
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13108 /* ~Уйти.~ */ DO ~SetGlobal("Iron_Nalls","AR0300",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0
  SAY #13053 /* ~Заслышав твое приближение, она выпрямляется. Она вежливо улыбается, но по ее позе и руке, лежащей возле рукоятки оружия, можно сделать вывод, что она готова к неприятностям. Ты замечаешь, что на одном глазу у нее бельмо. «Не так близко, рубака... Что тебе нужно от меня?»~ */
  IF ~~ THEN REPLY #13109 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 8
  IF ~~ THEN REPLY #13110 /* ~«Ничего, неважно. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #13054 /* ~Заслышав твое приближение, она выпрямляется. Она вежливо улыбается, но по ее позе и руке, лежащей возле рукоятки оружия, можно сделать вывод, что она готова к неприятностям. Ты замечаешь, что на одном глазу у нее бельмо. Завидев Анну, она улыбается и приветственно кивает тифлингу, после чего оборачивается к тебе. «Не так близко, рубака... Что тебе нужно от меня?»~ */
  IF ~~ THEN REPLY #13111 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 8
  IF ~~ THEN REPLY #13112 /* ~«Ничего, неважно. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 1.0 4.0 6.0 7.0 9.2 10.0 11.2 13.1 14.2 15.1 16.0 17.2 18.3 19.3 20.3 21.0 22.0 23.0 24.1 25.0 26.0 27.0 28.2 29.5 30.6 31.5 32.5 33.5 34.3 36.4 37.3 38.0
  SAY #13055 /* ~Она кивает. «Валяй».~ */
  IF ~  Global("RP_Portal","GLOBAL",3)
~ THEN REPLY #48403 /* ~«Мне посоветовали спросить женщину по имени Гвоздинка, которую можно найти здесь неподалеку от кучи строительных лесов, о забитой мусором арке на площади Старьевщиков. Ты можешь мне помочь?»~ */ DO ~SetGlobal("RP_Portal","GLOBAL",4)
GiveItemCreate("Junk",Protagonist,1,0,0)
~ JOURNAL #39472 /* ~Женщина по имени Железная Гвоздинка сказала мне, что забитая мусором арка на площади Старьевщиков на самом деле является порталом, который она случайно обнаружила. Ключом для него является просто кучка мусора, которую нужно иметь при себе. Гвоздинка сказала, что он ведет в небольшое открытое пространство с проходом, ведущим под землю, но идти дальше она побоялась.~ */ GOTO 38
  IF ~  Global("Iron_Nalls","AR0300",0)
!NearbyDialog("DAnnah")
~ THEN REPLY #13113 /* ~«Кто ты?»~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ GOTO 9
  IF ~  Global("Iron_Nalls","AR0300",0)
NearbyDialog("DAnnah")
~ THEN REPLY #13114 /* ~«Кто ты?»~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ GOTO 28
  IF ~  GlobalGT("Iron_Nalls","AR0300",0)
!NearbyDialog("DAnnah")
~ THEN REPLY #13115 /* ~«Еще раз, кто ты?»~ */ GOTO 9
  IF ~  GlobalGT("Iron_Nalls","AR0300",0)
NearbyDialog("DAnnah")
~ THEN REPLY #13116 /* ~«Еще раз, кто ты?»~ */ GOTO 28
  IF ~~ THEN REPLY #13117 /* ~«Что ты делаешь?»~ */ GOTO 11
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13118 /* ~«Что ты можешь сказать об этом месте?»~ */ GOTO 22
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13119 /* ~«Что ты можешь сказать об этом месте?»~ */ GOTO 35
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13120 /* ~«Я разыскиваю человека по имени Фарод».~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #13121 /* ~«Я ищу потерянный дневник. Тебе ничего такого не попадалось?»~ */ GOTO 24
  IF ~~ THEN REPLY #13122 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.3
  SAY #13056 /* ~Она вытаскивает три гвоздя из своего мешочка, подбрасывает их в воздухе и ловит ладонью. «Железная Гвоздинка, так меня зовут». Она бросает их назад мешочек с приглушенным *дзынь*.~ */
  IF ~~ THEN REPLY #13123 /* ~«Почему ты собираешь гвозди?»~ */ GOTO 12
  IF ~~ THEN REPLY #13124 /* ~«А что случилось с твоим глазом?»~ */ GOTO 10
  IF ~~ THEN REPLY #13125 /* ~«Очень приятно. У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #13126 /* ~«Подходящее имя. Прощай, Гвоздинка».~ */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 9.1 20.0 28.1
  SAY #13057 /* ~Лицо Гвоздинки становится суровым. «Не твое дело, пень. А что? Может, хочешь добавить такую же рану к своей коллекции?»~ */
  IF ~~ THEN REPLY #13127 /* ~«Нет, конечно. У меня есть несколько вопросов...»~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #13128 /* ~«Нет, именно такая мне не подходит».~ */ GOTO 21
  IF ~~ THEN REPLY #13129 /* ~«Ты собираешься ее добавить? Будет очень интересно посмотреть, как ты это сделаешь...»~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13130 /* ~«Нет, не хочу. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 8.5
  SAY #13058 /* ~Она закатывает глаза. «А на что это похоже, пень? Я собираю гвозди!» Она тихонько смеется, тряся своей головой.~ */
  IF ~~ THEN REPLY #13131 /* ~«Зачем?»~ */ GOTO 12
  IF ~~ THEN REPLY #13132 /* ~«Откуда берется все это дерево?»~ */ GOTO 13
  IF ~~ THEN REPLY #13133 /* ~«У меня есть другие вопросы».~ */ GOTO 8
  IF ~~ THEN REPLY #13134 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 9.0 11.0 28.0
  SAY #13059 /* ~«Я продаю их человеку по имени Хамрис из Нижнего района. Он гробовщик».~ */
  IF ~~ THEN REPLY #13135 /* ~«Расскажи мне больше об этом Хамрисе».~ */ GOTO 17
  IF ~~ THEN REPLY #13136 /* ~«Где находится Нижний район?»~ */ GOTO 18
  IF ~~ THEN REPLY #13137 /* ~«А кто еще собирает гвозди?»~ */ GOTO 19
  IF ~~ THEN REPLY #13138 /* ~«Откуда берется все это дерево?»~ */ GOTO 13
  IF ~~ THEN REPLY #13139 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.3
  SAY #13060 /* ~Она пожимает плечами. «Да прямо отсюда, наверное. Иногда дабусы что-то ломают, а я подхожу до того, как нагрянут другие и унесут обломки. Еще это может быть строительный мусор от зданий или стен, которые они возводят или разрушают».~ */
  IF ~~ THEN REPLY #13140 /* ~«Дабусы?»~ */ GOTO 14
  IF ~~ THEN REPLY #13141 /* ~«У меня есть другие вопросы».~ */ GOTO 8
  IF ~~ THEN REPLY #13142 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.0
  SAY #13061 /* ~«Ага, дабусы — слуги Леди, — она озадаченно смотрит на тебя. — Ты, должно быть, недавно в Сигиле».~ */
  IF ~~ THEN REPLY #13143 /* ~«Расскажи мне об этих дабусах побольше».~ */ GOTO 15
  IF ~~ THEN REPLY #13144 /* ~«Леди?»~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #13145 /* ~«У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #13146 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #13062 /* ~«Они работают над городом, исполняя волю Леди. Вечно что-то строят или перестраивают, используя для чего-то нового то, что развалилось или разрушилось».~ */
  IF ~~ THEN REPLY #13147 /* ~«Леди?»~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #13148 /* ~«У меня есть другие вопросы».~ */ GOTO 8
  IF ~~ THEN REPLY #13149 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.0
  SAY #13063 /* ~Гвоздинка смотрит на тебя неодобрительно. «Э, нет, не надо! Я ничего не скажу о ней больше того, что уже сказала... — она проводит пальцем полукруг над своим сердцем. — Дам тебе совет, пень: никого не спрашивай о Леди».~ */
  IF ~~ THEN REPLY #13150 /* ~«Хорошо. У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #13151 /* ~«Тогда прощай». ~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 12.0 18.1 19.1 20.1
  SAY #13064 /* ~«Тут и сказать-то нечего... он немного болтлив — будет трясти черепушкой с тобой до тех пор, пока ты не свихнешься, — но он честный торговец. Ему нужны гвозди — мне нужны звенелки, и все остаются довольны».~ */
  IF ~~ THEN REPLY #13152 /* ~«Где находится Нижний район?»~ */ GOTO 18
  IF ~~ THEN REPLY #13153 /* ~«А кто еще собирает гвозди?»~ */ GOTO 19
  IF ~~ THEN REPLY #13154 /* ~«У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #13155 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 12.1 17.0 19.2 20.2
  SAY #13065 /* ~«Э... Знала я одну дорогу, вот только дабусы снова переделали улицы. Я не знаю, как теперь туда попасть: нужно разведать новую дорогу. Но думаю, что дабусы в конечном счете все выпрямят».~ */
  IF ~~ THEN REPLY #13156 /* ~«Дабусы?»~ */ GOTO 14
  IF ~~ THEN REPLY #13157 /* ~«Расскажи мне больше Хамрисе».~ */ GOTO 17
  IF ~~ THEN REPLY #13158 /* ~«А кто еще собирает гвозди?»~ */ GOTO 19
  IF ~~ THEN REPLY #13159 /* ~«Хм-м. У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #13160 /* ~«Наверное, лучше я спрошу дорогу где-нибудь еще. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 12.2 17.1 18.2
  SAY #13066 /* ~Она ухмыляется и качает головой. «Еще ни у кого до меня не было столько ума или желания, чтобы заниматься этим, и я убираю с дороги любого, кто пытается захватить мое дело». Она нежно похлопывает по длинному кинжалу, висящему у нее на боку.~ */
  IF ~~ THEN REPLY #13161 /* ~«Твое дело?»~ */ GOTO 20
  IF ~~ THEN REPLY #13162 /* ~«Расскажи мне больше Хамрисе».~ */ GOTO 17
  IF ~~ THEN REPLY #13163 /* ~«Где находится Нижний район?»~ */ GOTO 18
  IF ~~ THEN REPLY #13164 /* ~«Понятно. У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #13165 /* ~«Это хорошо. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #13067 /* ~«Ага, я так это называю! Приличную работу в Улье не найти, и я не позволю какому-то слабоумному идиоту обставить меня в моем же деле. Немало пней я заставила бежать и вопить, держась за кишки... или отправила прямиком к сборщикам, когда им не везло, — ее слепой глаз злобно сверкает. — Улей знает, кто такая Железная Гвоздинка, это уж точно».~ */
  IF ~~ THEN REPLY #13166 /* ~«Поэтому твой глаз теперь разбит?»~ */ GOTO 10
  IF ~~ THEN REPLY #13167 /* ~«Расскажи мне больше Хамрисе».~ */ GOTO 17
  IF ~~ THEN REPLY #13168 /* ~«Где находится Нижний район?»~ */ GOTO 18
  IF ~~ THEN REPLY #13169 /* ~«У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #13170 /* ~«Понятно. Тогда прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 21 // from: 10.1
  SAY #13068 /* ~Она громко хохочет. «Ага, к тому же, я не думаю, что у тебя найдется место для еще одного шрама!»~ */
  IF ~~ THEN REPLY #13171 /* ~«Хе... У меня есть несколько вопросов...»~ */ GOTO 8
  IF ~~ THEN REPLY #13172 /* ~«Кажется, ты права. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 8.6
  SAY #13069 /* ~«Послушай, рубака, у меня еще куча работы. Гвозди сами по себе не станут лезть ко мне в мешок, пока я тут с тобой черепушкой трясу. Почему бы тебе не найти черепушку другого рубаки для этого дела?»~ */
  IF ~~ THEN REPLY #13175 /* ~«Позволь мне спросить еще кое о чем...»~ */ GOTO 8
  IF ~~ THEN REPLY #13176 /* ~«Возможно, я так и сделаю. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 23 // from: 8.8 29.4 30.5 31.4 32.4 33.4 34.2 36.3 37.2
  SAY #13070 /* ~Она кивает. «Ага, я слышала это имя. Главарь банды сборщиков — по крайней мере, так говорят. Хотя и не знаю, где его искать. Начни с площади Старьевщиков — она к северо-западу отсюда. Целая куча сборщиков зовет ее своей берлогой...»~ */
  IF ~~ THEN REPLY #13173 /* ~«Понятно. У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #13174 /* ~«Тогда я поищу его там. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 8.9
  SAY #13071 /* ~«Неа, не видела, — она умолкает на мгновение. — Знаешь, а это хорошая идея — иметь дневник. Наверно, стоит и себе такой завести».~ */
  IF ~~ THEN REPLY #13177 /* ~«Да. Удивительно, сколько всего мы можем забыть... дневник может помочь воспоминаниям не потеряться».~ */ GOTO 25
  IF ~~ THEN REPLY #13178 /* ~«Возможно... У меня есть другой вопрос...»~ */ GOTO 8
  IF ~~ THEN REPLY #13179 /* ~«Возможно. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #13072 /* ~Она осмысливает сказанное тобой. «Ха. Ты прав. Ты чертовски прав, рубака! Я так и сделаю. Спасибо за идею». Она улыбается.~ */
  IF ~~ THEN REPLY #13180 /* ~«Ну конечно. У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #13181 /* ~«Не за что. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 26 // from: 3.0
  SAY #13073 /* ~Гвоздинка кажется искренне опечаленной. «Эмм... а... ясно. Очень жаль. Такое слишком часто случается в Улье, — она трясет головой, как будто пытаясь отвлечься от меланхолии. — Ладно, чего ты хотел?»~ */
  IF ~~ THEN REPLY #13182 /* ~«Я говорил, у меня были еще вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #13183 /* ~«Ничего, неважно. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 3.1 3.2
  SAY #13074 /* ~«О? — наконец она, нахмурившись, переключает свое внимание на тебя. — Очень жаль, правда. Так чего же ты хотел?»~ */
  IF ~~ THEN REPLY #13184 /* ~«Я хотел сказать, что у меня были еще вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #13185 /* ~«Ничего, неважно. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 28 // from: 8.2 8.4
  SAY #13075 /* ~Она вытаскивает три гвоздя из своего мешочка, подбрасывает их в воздухе и ловит ладонью. «Железная Гвоздинка, так меня зовут». Она бросает их назад мешочек с приглушенным *дзынь*. Она бросает взгляд на Анну, чтобы убедиться, что та видела ее действие. Увидев, что тифлинг уже отвернулась, она оборачивается к тебе.~ */
  IF ~~ THEN REPLY #13186 /* ~«Почему ты собираешь гвозди?»~ */ GOTO 12
  IF ~~ THEN REPLY #13187 /* ~«Как ты потеряла свой глаз?»~ */ GOTO 10
  IF ~~ THEN REPLY #13188 /* ~«Очень приятно. У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #13189 /* ~«Подходящее имя. Прощай, Гвоздинка».~ */ GOTO 5
END

IF ~~ THEN BEGIN 29 // from:
  SAY #13076 /* ~Гвоздинку задело замечание, но она быстро восстанавливает спокойствие. Немного печально она улыбается тебе: «Ну конечно же, я могу, рубака. Что тебе нужно?»~ */
  IF ~~ THEN REPLY #13190 /* ~«Я ищу работу».~ */ GOTO 30
  IF ~~ THEN REPLY #13191 /* ~«Я ищу, где бы поразвлечься».~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13192 /* ~«Что-нибудь, о чем я должен знать, находясь здесь?»~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13193 /* ~«Что-нибудь, о чем я должен знать, находясь здесь?»~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13194 /* ~«Я разыскиваю человека по имени Фарод».~ */ GOTO 23
  IF ~~ THEN REPLY #13195 /* ~«На самом деле, ничего. Позволь мне спросить о кое чем еще...»~ */ GOTO 8
  IF ~~ THEN REPLY #13265 /* ~«Неважно. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 30 // from: 29.0 33.1 34.0 36.0 37.0
  SAY #13077 /* ~Гвоздинка чешет голову. «В Улье есть только два вида работ... ты можешь ловить мозгогрызунов или собирать жмуриков».~ */
  IF ~~ THEN REPLY #13196 /* ~«Ловить мозгогрызунов?»~ */ GOTO 31
  IF ~~ THEN REPLY #13197 /* ~«Собирать... жмуриков?»~ */ GOTO 32
  IF ~~ THEN REPLY #13198 /* ~«А если я ищу, где бы поразвлечься?»~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13199 /* ~«Что-нибудь, о чем я должен знать, находясь здесь?»~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13200 /* ~«Что-нибудь, о чем я должен знать, находясь здесь?»~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13201 /* ~«Еще я разыскиваю человека по имени Фарод».~ */ GOTO 23
  IF ~~ THEN REPLY #13202 /* ~«Позволь мне спросить еще кое о чем...»~ */ GOTO 8
  IF ~~ THEN REPLY #13266 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #13078 /* ~«Ага. Власти Сигила платят за каждый принесенный хвост. Их местное отделение находится к югу отсюда; человек внутри расскажет тебе больше».~ */
  IF ~~ THEN REPLY #13203 /* ~«А что ты сказала про собирание 'жмуриков'?»~ */ GOTO 32
  IF ~~ THEN REPLY #13204 /* ~«А если я ищу, где бы поразвлечься?»~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13205 /* ~«Что-нибудь, о чем я должен знать, находясь здесь?»~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13206 /* ~«Что-нибудь, о чем я должен знать, находясь здесь?»~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13207 /* ~«Еще я разыскиваю человека по имени Фарод».~ */ GOTO 23
  IF ~~ THEN REPLY #13208 /* ~«Позволь мне спросить еще кое о чем...»~ */ GOTO 8
  IF ~~ THEN REPLY #13267 /* ~«Пойду, поищу его. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 32 // from: 30.1 31.0
  SAY #13079 /* ~«Тленные дают рубакам звенелки, если те приносят им жмуриков... содержат улицы в чистоте, типа того. Пней, которые занимаются этим, называют сборщиками... собирателями, как я. Вот только гвозди трупами не пахнут». Она ухмыляется.~ */
  IF ~~ THEN REPLY #13209 /* ~«А что ты сказала про ловлю мозгогрызунов?»~ */ GOTO 31
  IF ~~ THEN REPLY #13210 /* ~«А если я ищу, где бы поразвлечься?»~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13211 /* ~«Что-нибудь, о чем я должен знать, находясь здесь?»~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13212 /* ~«Что-нибудь, о чем я должен знать, находясь здесь?»~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13213 /* ~«Еще я разыскиваю человека по имени Фарод».~ */ GOTO 23
  IF ~~ THEN REPLY #13214 /* ~«Довольно правдиво. Позволь мне спросить кое о чем еще...»~ */ GOTO 8
  IF ~~ THEN REPLY #13268 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 33 // from: 29.1 30.2 31.1 32.1 34.1 37.1
  SAY #13080 /* ~«Ну, все зависит от того, что ты находишь развлечением. Самые лучшие бары здесь — это Бар собирателей пыли и Тлеющий труп. В последнем довольно много людей, но, опять же, все зависит от того, какую компанию ты ищешь». Она поглядывает на Анну, но та не обращает на нее внимания.~ */
  IF ~~ THEN REPLY #13215 /* ~«Как мне найти эти места?»~ */ DO ~SetGlobal("Know_Dustman_Bar","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #13216 /* ~«Как насчет здешней работы?»~ */ GOTO 30
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13217 /* ~«Что-нибудь, о чем я должен знать, находясь здесь?»~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13218 /* ~«Что-нибудь, о чем я должен знать, находясь здесь?»~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13219 /* ~«Еще я разыскиваю человека по имени Фарод».~ */ GOTO 23
  IF ~~ THEN REPLY #13220 /* ~«Позволь мне спросить еще кое о чем...»~ */ GOTO 8
  IF ~~ THEN REPLY #13269 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 34 // from: 29.2 30.3 31.2 32.2 33.2 36.1
  SAY #13081 /* ~«В Улье на каждого найдется куча неприятностей... и, судя по твоему виду, на тебя их пришлось немало! Просто следи за теми, с кем ты разговариваешь, вот и все, — она снова оценивающе на тебя смотрит. — Уверена, ты справишься... да и твоя красавица-подруга тоже выглядит сильной». Гвоздинка выжидающе смотрит на Анну, но девушка не обращает внимания на комментарий.~ */
  IF ~~ THEN REPLY #13221 /* ~«Как насчет здешней работы?»~ */ GOTO 30
  IF ~~ THEN REPLY #13222 /* ~«А если я ищу, где бы поразвлечься?»~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13223 /* ~«Еще я разыскиваю человека по имени Фарод».~ */ GOTO 23
  IF ~~ THEN REPLY #13224 /* ~«Позволь мне спросить еще кое о чем...»~ */ GOTO 8
  IF ~~ THEN REPLY #13225 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 35 // from: 8.7
  SAY #13082 /* ~Она кивает на Анну. «Кажется, твоя прекрасная спутница — сам жительница Улья... ты не спрашивал ее об этом?» Гвоздинка улыбается тифлингу, хотя ее разбитый глаз несколько притупляет эффект.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 88
END

IF ~~ THEN BEGIN 36 // from: 33.0
  SAY #13083 /* ~Гвоздинка раздумывает пару секунд, почесывая подбородок. «Бар Собирателей Пыли находится неподалеку от Морга — иди на юго-запад от его главных ворот. 'Тлеющий труп' (я сама туда заглядываю) на западе отсюда. Я бы пошла туда вместе с тобой пропустить стаканчик, но у меня полным полно работы».~ */
  IF ~~ THEN REPLY #13226 /* ~«Как насчет здешней работы?»~ */ GOTO 30
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13227 /* ~«Что-нибудь, о чем я должен знать, находясь здесь?»~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13228 /* ~«Что-нибудь, о чем я должен знать, находясь здесь?»~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13229 /* ~«Еще я разыскиваю человека по имени Фарод».~ */ GOTO 23
  IF ~~ THEN REPLY #13230 /* ~«Позволь мне спросить еще кое о чем...»~ */ GOTO 8
  IF ~~ THEN REPLY #13270 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 37 // from: 29.3 30.4 31.3 32.3 33.3 36.2
  SAY #13259 /* ~«В Улье на каждого найдется куча неприятностей... и, судя по твоему виду, на тебя их пришлось немало! Я слышала, здесь бродит по-настоящему опасный знаток, который сам ищет неприятностей и повода обагрить свой клинок. С виду он благородных кровей. — она снова оценивающе на тебя смотрит. — Уверена, ты справишься... да и твоя красавица-подруга тоже выглядит сильной». Гвоздинка выжидающе смотрит на Анну, но девушка не обращает внимания на комментарий.~ */
  IF ~~ THEN REPLY #13260 /* ~«Как насчет здешней работы?»~ */ GOTO 30
  IF ~~ THEN REPLY #13261 /* ~«А если я ищу, где бы поразвлечься?»~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13262 /* ~«Еще я разыскиваю человека по имени Фарод».~ */ GOTO 23
  IF ~~ THEN REPLY #13263 /* ~«Позволь мне спросить еще кое о чем...»~ */ GOTO 8
  IF ~~ THEN REPLY #13264 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 38 // from: 8.0
  SAY #48400 /* ~Гвоздинка медленно кивает. «Это портал. Я наткнулась на него совершенно случайно... все, что тебе нужно — куча мусора при себе, и тогда ты сможешь через него пройти. За порталом есть небольшое открытое пространство и проход, ведущий под землю, но я решила не искать проблем, и просто развернулась и вернулась назад. Вот... — у нее в руке пригоршня мусора. — Используй это, если надо. Я все равно хотела это выбросить».~ */
  IF ~~ THEN REPLY #48401 /* ~«Спасибо. У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #48402 /* ~«Спасибо, Гвоздинка. Прощай».~ */ GOTO 5
END
