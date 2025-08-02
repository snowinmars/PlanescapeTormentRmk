// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAETHEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DAETHEL~

IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3057 /* ~Перед тобой чешуйчатый нечистый, очень похожий на своего собрата, стоящего рядом: у обоих проколото левое ухо, оба — черные ящеры со сложенными сзади перепончатыми крыльями. Только у этого не хватает зуба с правой стороны. Заметив Анну и Падшую Грацию рядом с тобой, он скрежещет зубами, шипя: «Убери своих червей с Бездны, тогда и поговорим. Иначе мы ничего не скажем». Он смачно сплевывает.~ */
  IF ~~ THEN REPLY #3059 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3061 /* ~Перед тобой чешуйчатый нечистый, очень похожий на своего собрата, стоящего рядом: у обоих проколото левое ухо, оба — черные ящеры со сложенными сзади перепончатыми крыльями. Только у этого не хватает зуба с правой стороны. Заметив Анну рядом с тобой, он скрежещет зубами, шипя: «Убери своего демонического червя, тогда и поговорим. Иначе мы ничего не скажем». Он смачно сплевывает.~ */
  IF ~~ THEN REPLY #12343 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12344 /* ~Перед тобой чешуйчатый нечистый, очень похожий на своего собрата, стоящего рядом: у обоих проколото левое ухо, оба — черные ящеры со сложенными сзади перепончатыми крыльями. Только у этого не хватает зуба с правой стороны. Заметив Падшую Грацию рядом с тобой, он скрежещет зубами, шипя: «Убери этого червя с Бездны, тогда и поговорим. Иначе мы ничего не скажем». Он смачно сплевывает.~ */
  IF ~~ THEN REPLY #12345 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #12346 /* ~Перед тобой чешуйчатый нечистый, очень похожий на своего собрата, стоящего рядом: у обоих проколото левое ухо, оба — черные ящеры со сложенными сзади перепончатыми крыльями. Только у этого не хватает зуба с правой стороны. «А, Тегарин, — говорит он, — наш старый приятель вернулся, чтобы нанести нам визит».~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 8
END

IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #12347 /* ~Абишай пятится при твоем приближении. «Убери своих хаотических крыс от нас, — он указывает на Падшую Грацию и Анну, — тогда и поговорим. А до тех пор нам не о чем говорить».~ */
  IF ~~ THEN REPLY #12348 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #12349 /* ~Абишай пятится при твоем приближении. «Убери свою хаотическую крысу от нас, — он указывает на Анну, — тогда и поговорим. А до тех пор нам не о чем говорить».~ */
  IF ~~ THEN REPLY #12350 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #12351 /* ~Абишай пятится при твоем приближении. «Убери свою хаотическую крысу от нас, — он указывает на Падшую Грацию, — тогда и поговорим. А до тех пор нам не о чем говорить».~ */
  IF ~~ THEN REPLY #12352 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
!PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 7 // from:
  SAY #12353 /* ~«Вернулся, транжира?» Нечистый улыбается тебе, шипя и изрыгая тошнотворные испарения из уголков рта. «К тебе уже вернулась память, старый приятель?»~ */
  IF ~~ THEN REPLY #12354 /* ~«О чем это ты?»~ */ EXTERN ~DTEGARIN~ 10
  IF ~~ THEN REPLY #12355 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 8
  IF ~~ THEN REPLY #12356 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1 14.1 34.0 50.0
  SAY #12357 /* ~«Еще вопросы? Возможно, у нас есть ответы. Мы определенно стремимся помочь тебе, старый приятель».~ */
  IF ~~ THEN REPLY #12358 /* ~«Кто вы?»~ */ EXTERN ~DTEGARIN~ 9
  IF ~~ THEN REPLY #12359 /* ~«Чем вы занимаетесь?»~ */ GOTO 12
  IF ~~ THEN REPLY #12360 /* ~«Что это за место?»~ */ EXTERN ~DTEGARIN~ 14
  IF ~~ THEN REPLY #12361 /* ~«Расскажите мне о нечисти».~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12362 /* ~«Вы знаете сборщика по имени Фарод?»~ */ EXTERN ~DTEGARIN~ 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12363 /* ~«Я ищу дневник».~ */ GOTO 14
  IF ~  Global("Devil_Offer","AR0402",1)
~ THEN REPLY #14814 /* ~«Я насчет той сделки, о которой вы говорили».~ */ EXTERN ~DTEGARIN~ 25
  IF ~  Global("RC_ID","GLOBAL",1)
!Global("2Devils","AR0402",1)
~ THEN REPLY #12364 /* ~«Вы знаете сборщика, который ведет дела с нечистыми?»~ */ EXTERN ~DTEGARIN~ 19
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14729 /* ~«Еще раз, где прячется тот сборщик?»~ */ GOTO 50
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14730 /* ~«Что за 'силу' даст мне этот кулон?»~ */ EXTERN ~DTEGARIN~ 43
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14731 /* ~«Мне не удалось добыть кулон у эринии, и теперь она исчезла».~ */ EXTERN ~DTEGARIN~ 57
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14732 /* ~Ложь: «Мне не удалось найти эринию. В том переулке, о котором вы говорили, ее нет».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Abishai_1","GLOBALLaw",-1)
~ EXTERN ~DTEGARIN~ 57
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14733 /* ~«Вот кулон».~ */ GOTO 40
  IF ~~ THEN REPLY #14815 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #12365 /* ~«Я тоже весьма огорчен, Тегарин. Хотя и могу легко пережить это. В конце концов, прошло много столетий, а мы хорошо знаем, что время неумолимо к разуму смертных».~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 11
END

IF ~~ THEN BEGIN 10 // from:
  SAY #12366 /* ~Аэтелгрин, не обращая на тебя внимания, отвечает своему товарищу: «И снова, Тегарин, ты ухватил самую суть дела. Хотя лучше не стоит упоминать, за что ты получил прозвище Трижды Проклятый».~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12367 /* ~«У меня есть другие вопросы...»~ */ EXTERN ~DTEGARIN~ 12
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12368 /* ~«У меня есть другие вопросы...»~ */ EXTERN ~DMORTE~ 151
END

IF ~~ THEN BEGIN 11 // from:
  SAY #12369 /* ~«Ух ты, что я вижу — маленький летающий череп? Какой вокруг тебя приятный запах бааторийского разложения, дорогуша. Возможно, нам стоит обсудить это... позже, — абишай возвращается к тебе. — Итак... ты говорил, что у тебя есть вопросы?»~ */
  IF ~~ THEN REPLY #12370 /* ~«Кто вы?»~ */ EXTERN ~DTEGARIN~ 9
  IF ~~ THEN REPLY #12371 /* ~«Чем вы занимаетесь?»~ */ GOTO 12
  IF ~~ THEN REPLY #12372 /* ~«Что это за место?»~ */ EXTERN ~DTEGARIN~ 14
  IF ~~ THEN REPLY #12373 /* ~«Расскажите мне о нечисти».~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12374 /* ~«Вы знаете сборщика по имени Фарод?»~ */ EXTERN ~DTEGARIN~ 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12375 /* ~«Я ищу дневник».~ */ GOTO 14
  IF ~  Global("Devil_Offer","AR0402",1)
~ THEN REPLY #14816 /* ~«Я насчет той сделки, о которой вы говорили».~ */ EXTERN ~DTEGARIN~ 25
  IF ~  Global("RC_ID","GLOBAL",1)
!Global("2Devils","AR0402",1)
~ THEN REPLY #12376 /* ~«Вы знаете сборщика, который ведет дела с нечистыми?»~ */ EXTERN ~DTEGARIN~ 19
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14734 /* ~«Еще раз, где прячется тот сборщик?»~ */ GOTO 50
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14735 /* ~«Что за 'силу' даст мне этот кулон?»~ */ EXTERN ~DTEGARIN~ 43
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14736 /* ~«Мне не удалось добыть кулон у эринии, и теперь она исчезла».~ */ EXTERN ~DTEGARIN~ 57
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14737 /* ~Ложь: «Мне не удалось найти эринию. В том переулке, о котором вы говорили, ее нет».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Abishai_1","GLOBALLaw",-1)
~ EXTERN ~DTEGARIN~ 57
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14738 /* ~«Вот кулон».~ */ GOTO 40
  IF ~~ THEN REPLY #14739 /* ~«Нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1 11.1
  SAY #12377 /* ~«Что мы делаем? Как, разве это не понятно, старый приятель? Мы оставили наш любимый пост, чтобы посвятить себя так необходимому нам отдыху и по возможности завербовать кого-нибудь в наши прославленные ряды. Наши предводители, вне всякого сомнения, полностью поддерживают наше присутствие здесь».~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 13
END

IF ~~ THEN BEGIN 13 // from: 8.3 11.3
  SAY #12378 /* ~«Как мы знаем, есть две разновидности нечисти — правильные и неправильные. Мы, баатезу, из тех, кто правильные. А те проклятые, ненавистные с другой стороны — хаотичные танарри — неправильны и должны быть уничтожены».~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 15
END

IF ~~ THEN BEGIN 14 // from: 8.5 11.5
  SAY #12379 /* ~«Я не веду дневников, приятель, и тебе не советую. Спроси моего дорогого товарища Тегарина почему — и ты получишь объяснение».~ */
  IF ~~ THEN REPLY #12380 /* ~«Хорошо. Тегарин, почему я не должен вести дневник?»~ */ EXTERN ~DTEGARIN~ 18
  IF ~~ THEN REPLY #12381 /* ~«Может, позже. У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #12382 /* ~«Может, позже. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #14654 /* ~«Да-да. Он знает?»~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 20
END

IF ~~ THEN BEGIN 16 // from:
  SAY #14655 /* ~«Да, конечно, ты несомненно прав, — нечистый поворачивается к тебе. — Что ты знаешь об этом сборщике, наш старинный приятель?»~ */
  IF ~~ THEN REPLY #14741 /* ~«Очень мало, только то, что он живет в странном месте и общается с нечистью».~ */ GOTO 17
  IF ~~ THEN REPLY #14740 /* ~«На самом деле — ничего. Я надеялся, что вы меня просветите».~ */ GOTO 17
  IF ~~ THEN REPLY #14742 /* ~«Очень мало. Я спрошу о нем в следующий раз. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #14656 /* ~«Я бы рассказал тебе о нем, приятель, но увы, я поклялся не говорить об этом!»~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 21
END

IF ~~ THEN BEGIN 18 // from:
  SAY #14657 /* ~«А ты разве не клялся, Тегарин?»~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 22
END

IF ~~ THEN BEGIN 19 // from:
  SAY #14658 /* ~«Восхитительно!»~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 23
END

IF ~~ THEN BEGIN 20 // from:
  SAY #14659 /* ~Другой нечистый прерывает Тегарина: «Кулон! Не забудь!»~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 24
END

IF ~~ THEN BEGIN 21 // from:
  SAY #14660 /* ~«...может быть, ты захочешь заключить с нами сделку? Как в старые добрые времена...»~ */
  IF ~~ THEN REPLY #14743 /* ~«Нет. Никаких сделок».~ */ GOTO 29
  IF ~~ THEN REPLY #14744 /* ~«Что вы можете мне предложить?»~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #14661 /* ~«Мы сообщим все, что мы знаем о 'сборщике'...»~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 26
END

IF ~~ THEN BEGIN 23 // from:
  SAY #14662 /* ~«...его слабостях, как его победить, обезопасив тем самым его кулон, с помощью которого мы сможем сделать тебя гораздо сильнее. В обмен...»~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 27
END

IF ~~ THEN BEGIN 24 // from:
  SAY #14663 /* ~«Да, кулон. Он выглядит как человеческий череп, с шестью кристаллами над головой».~ */
  IF ~~ THEN REPLY #14745 /* ~«А почему вы не заберете его сами?»~ */ GOTO 25
  IF ~~ THEN REPLY #14746 /* ~«Что делает этот кулон?»~ */ GOTO 26
  IF ~~ THEN REPLY #14747 /* ~«Согласен».~ */ GOTO 30
  IF ~~ THEN REPLY #14748 /* ~«Нет. Никаких сделок».~ */ GOTO 29
END

IF ~~ THEN BEGIN 25 // from: 24.0 28.0
  SAY #14664 /* ~«Нам запрещено подходить к 'сборщику', беспокоить его и причинять ему вред».~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 28
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #14665 /* ~«Для тебя — ничего».~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 29
END

IF ~~ THEN BEGIN 27 // from:
  SAY #14666 /* ~«Сейчас у него нет силы. Фактически сейчас он — бесполезная вещь».~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 31
END

IF ~~ THEN BEGIN 28 // from:
  SAY #14667 /* ~«Несомненно, мы найдем применение подобной вещице».~ */
  IF ~~ THEN REPLY #14749 /* ~«А почему вы не заберете его сами?»~ */ GOTO 25
  IF ~~ THEN REPLY #14750 /* ~«Согласен».~ */ GOTO 30
  IF ~~ THEN REPLY #14751 /* ~«Нет. Никаких сделок».~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 21.0 24.3 28.2
  SAY #14668 /* ~«Очень жаль, очень жаль».~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 32
END

IF ~~ THEN BEGIN 30 // from: 24.2 28.1
  SAY #14669 /* ~«Великолепно».~ */
  IF ~~ THEN DO ~SetGlobal("RC_ID","GLOBAL",3)
~ EXTERN ~DTEGARIN~ 33
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14670 /* ~«Понимаешь, она была проклята и обращена в ту форму, которую ты видишь. Большая часть ее силы пропала впустую, ослабленная праведной силой жреца».~ */
  IF ~~ THEN REPLY #14752 /* ~«Интересно...»~ */ EXTERN ~DTEGARIN~ 34
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14671 /* ~«Порхает туда-сюда, воркует».~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 35
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14672 /* ~«Просто сними кулон с ее тела и принеси его в знак выполнения своей части сделки, приятель. А мы используем силу, которую она смогла заключить в него, чтобы усилить тебя, и оставим опустошенное устройство себе».~ */
  IF ~~ THEN REPLY #14753 /* ~«Понял».~ */ GOTO 34
  IF ~~ THEN REPLY #14754 /* ~«Я не буду делать этого. Никаких сделок».~ */ EXTERN ~DTEGARIN~ 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #14673 /* ~«Это просто чудесно! Возвращайся сюда, когда все будет сделано».~ */
  IF ~~ THEN REPLY #14755 /* ~«Перед тем, как я уйду, я задам несколько вопросов...»~ */ DO ~SetGlobal("2Devils","AR0402",1)
~ GOTO 8
  IF ~~ THEN REPLY #14756 /* ~«Тогда прощай». ~ */ DO ~SetGlobal("2Devils","AR0402",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #14674 /* ~«Как жестоко!»~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 38
END

IF ~~ THEN BEGIN 36 // from:
  SAY #14675 /* ~«Да, *намного* сильнее!»~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 39
END

IF ~~ THEN BEGIN 37 // from:
  SAY #14676 /* ~«Тегарин! Что произошло?»~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 40
END

IF ~~ THEN BEGIN 38 // from:
  SAY #14677 /* ~«Может, убить его и забрать в Баатор?»~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 41
END

IF ~~ THEN BEGIN 39 // from:
  SAY #14678 /* ~«Ха! Смотри, как он хнычет, Тегарин».~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 42
END

IF ~~ THEN BEGIN 40 // from: 8.12 11.12 47.1
  SAY #14679 /* ~«Великолепно!» Аэтелгрин выхватывает у тебя кулон Йемета, бросая его Тегарину.~ */
  IF ~~ THEN DO ~TakePartyItemNum("SkulPend",1)
SetGlobal("2Devils","AR0402",4)
AddexperienceParty(1000)
~ EXTERN ~DTEGARIN~ 45
END

IF ~~ THEN BEGIN 41 // from:
  SAY #14680 /* ~Аэтелгрин смотрит в сторону, его внимание неожиданно переключается на что-то посреди бара.~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 47
END

IF ~~ THEN BEGIN 42 // from:
  SAY #14681 /* ~«М-м? А, нет, я ничего не знал».~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 48
END

IF ~~ THEN BEGIN 43 // from:
  SAY #14682 /* ~«Боюсь, это невозможно. Он наш, и он слишком многое для нас значит, чтобы его потерять. Пожалуйста, возвращайся, когда сможешь отделаться от магии, которая мешает нам помочь тебе».~ */
  IF ~~ THEN REPLY #14757 /* ~Атаковать нечисть.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14758 /* ~«Хм. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 47.2
  SAY #14683 /* ~«Что? Нет! Ты не можешь!»~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 50
END

IF ~~ THEN BEGIN 45 // from:
  SAY #14684 /* ~«Убить его?»~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 52
END

IF ~~ THEN BEGIN 46 // from:
  SAY #14685 /* ~«Возмутительный негодяй! Прочь!»~ */
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14759 /* ~«Постой... У меня есть кулон».~ */ EXTERN ~DTEGARIN~ 53
  IF ~~ THEN REPLY #14760 /* ~Уйти.~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 47 // from:
  SAY #14686 /* ~«Смотри, смотри — он вернулся, и с кулоном!»~ */
  IF ~~ THEN REPLY #14761 /* ~«Постойте, что за силу в дадите мне?»~ */ EXTERN ~DTEGARIN~ 43
  IF ~~ THEN REPLY #14762 /* ~«Вот кулон».~ */ GOTO 40
  IF ~~ THEN REPLY #14763 /* ~«Я решил оставить кулон себе».~ */ GOTO 44
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",2)
~ THEN BEGIN 48 // from:
  SAY #14687 /* ~«О, смотри, кто вернулся. Очень жаль, приятель, но пока ты не принесешь нам кулон, мы не станем с тобой разговаривать. Прощай».~ */
  IF ~~ THEN REPLY #14764 /* ~Уйти.~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",3)
~ THEN BEGIN 49 // from:
  SAY #14688 /* ~«Ты только посмотри, кто это, Тегарин...»~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 56
END

IF ~~ THEN BEGIN 50 // from: 8.8 11.8
  SAY #14689 /* ~«Должно быть, она спряталась в переулке между двумя домами на севере от этого самого заведения. Ищи ее там поздним вечером».~ */
  IF ~~ THEN REPLY #14765 /* ~«У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #14766 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END
