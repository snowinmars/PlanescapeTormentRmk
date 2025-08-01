// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNENNY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DNENNY~

IF ~  Global("Nenny","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2964 /* ~Эта миниатюрная привлекательная девушка блаженно улыбается и мурлычет себе под нос. Ее большие бледно-голубые глаза, похоже, без устали поглощают все вокруг нее.~ */
  IF ~~ THEN REPLY #2965 /* ~«Приветствую...»~ */ DO ~SetGlobal("Nenny","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #39865 /* ~Оставить ее в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39866 /* ~Улыбчивая девушка приседает в милом реверансе и смотрит на тебя, улыбаясь. «Добро *пожаловать*, сударь! Я Ненни! Как *тебе* этот славный д... — внезапно она замечает твои шрамы и прикрывает рот рукой в перчатке. — О, боги! Ты ранен! — она закрывает глаза. — По всему телу!»~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 421
  IF ~  !NearbyDialog("DMorte")
HPPercent(Protagonist,100)
~ THEN REPLY #39867 /* ~«Это все старые шрамы. Я в порядке».~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
HPPercentGT(Protagonist,49)
~ THEN REPLY #39868 /* ~«Только немного. Я очень скоро поправлюсь».~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
HPPercentLT(Protagonist,50)
~ THEN REPLY #39869 /* ~«Да, но раны скоро затянутся».~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39870 /* ~«Не думай об этом. У меня еще вопросы...»~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39871 /* ~«Не волнуйся об этом. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 1.3
  SAY #39872 /* ~Она молча кивает и опускает руку.~ */
  IF ~~ THEN REPLY #39873 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 5
  IF ~~ THEN REPLY #39874 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 4.0 7.1 9.2 10.2 11.3 12.2 13.3 14.2 15.1 18.0 19.2 21.0 21.1 22.3 23.1 24.3 25.2 26.0 27.0 28.0 29.1 30.0 31.0 32.0 33.1 35.1 36.1 37.1 38.1 47.0 52.0 53.0 54.0 55.0
  SAY #39875 /* ~«Пожалуйста, спрашивай!» — она головокружительно улыбается.~ */
  IF ~~ THEN REPLY #39876 /* ~«Что ты здесь делаешь?»~ */ GOTO 32
  IF ~~ THEN REPLY #39877 /* ~«Что ты можешь сказать об этом месте?»~ */ GOTO 33
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39878 /* ~«Что ты можешь рассказать о молчаливой проститутке?»~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_3","AR0605",1)
~ JOURNAL #66744 /* ~Одна из проституток посоветовала мне расспросить Долору об Экко, молчаливой проститутке. Она сказала, что Долора однажды общалась со прежним любовником Экко, который знал ее до того, как она перестала разговаривать.~ */ GOTO 31
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67847 /* ~«Что ты можешь рассказать о молчаливой проститутке?»~ */ DO ~SetGlobal("Ecco_Rumor_3","AR0605",1)
~ JOURNAL #66744 /* ~Одна из проституток посоветовала мне расспросить Долору об Экко, молчаливой проститутке. Она сказала, что Долора однажды общалась со прежним любовником Экко, который знал ее до того, как она перестала разговаривать.~ */ GOTO 31
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39879 /* ~«Я слышал, что Кесай-Серри — дочь Равель. Это правда?»~ */ JOURNAL #66743 /* ~Я спросил одну из проституток, знает ли она, что Кесай-Серри — в самом деле дочь Равель, и она предложила, чтобы я спросил об этом Джульетту. Очевидно, они были близкими подругами, пока Джульетта не встретила Монтекки.~ */ GOTO 30
  IF ~  Global("Nenny_Hint2","AR0605",2)
~ THEN REPLY #39880 /* ~«Кимаскси сказала, что кто-то забрал вещи из ее комнаты тоже. Ты не видела ничего странного?»~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",3)
~ JOURNAL #39526 /* ~Ненни сказала мне, что видела мужчину, крадущегося из комнаты Кимаши Змееязыкой, однако она ни разу не видела его, покидающего Бордель. Если он вор, возможно, он все еще где-то здесь?~ */ GOTO 54
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",0)
~ THEN REPLY #39881 /* ~«Я пытаюсь найти аромат Вивьен... Ты не знаешь, где он может быть?»~ */ GOTO 34
  IF ~  Global("Nenny_Hint","AR0605",0)
Global("Scent_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",1)
~ THEN REPLY #39882 /* ~«Я пытаюсь найти аромат Вивьен... Ты не знаешь, где он может быть?»~ */ DO ~SetGlobal("Nenny_Hint","AR0605",1)
~ JOURNAL #39525 /* ~Ненни сказала мне, что видела, как Марисса украдкой вышла из покоев Вивьен... возможно, она взяла аромат Вивьен, или, как минимум, имеет какое-то представление о том, где бы он могла быть.~ */ GOTO 52
  IF ~  Global("Veil_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",0)
~ THEN REPLY #39883 /* ~«Я пытаюсь найти малиновую вуаль Мариссы... Ты не знаешь, где она может быть?»~ */ GOTO 34
  IF ~  Global("Nenny_Hint2","AR0605",0)
Global("Veil_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",1)
~ THEN REPLY #39884 /* ~«Я пытаюсь найти малиновую вуаль Мариссы... Ты не знаешь, где она может быть?»~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",1)
~ JOURNAL #39524 /* ~Ненни сказала мне, что видела, как Кимаши Змееязыкая украдкой вышла из покоев Мариссы... возможно, она взяла малиновую вуаль Мариссы, или, как минимум, имеет какое-то представление о том, где бы она могла быть.~ */ GOTO 53
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39885 /* ~«Ты что-нибудь знаешь о Равель Заморочке?»~ */ JOURNAL #66742 /* ~Я спросил одну из проституток Борделя о Равель, и она предложила мне поговорить об этом с Ив. Мне сказали, что Ив собирает различные истории, и, скорее всего, имеет что-нибудь про Равель в своем репертуаре.~ */ GOTO 4
  IF ~~ THEN REPLY #39886 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.10
  SAY #39887 /* ~«Нет, извини. *Отличное*, однако, имечко, не правда ли? Могу поспорить, она действительно интересная личность! Эй... тебе нужно спросить о ней у Ив. Она собирает *всевозможные* истории!»~ */
  IF ~~ THEN REPLY #39888 /* ~«Так и сделаю. У меня есть другой вопрос...»~ */ GOTO 3
  IF ~~ THEN REPLY #39889 /* ~«Это все, что я хотел узнать. Прощай, Ненни».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #39890 /* ~«А? — она, похоже, не может оторвать взгляд от твоих шрамов. — О, как это некрасиво с моей стороны! Не обращай внимания на мое грубое поведение! Меня зовут Ненни, — она делает небольшой реверанс. — И мне очень приятно приветствовать тебя в нашем Борделе утоления интеллектуальной страсти, — она возвращается к рассматриванию твоего тела. — У тебя еще и татуировки под шрамами! Что это? — она показывает на одну из твоих татуировок.~ */
  IF ~~ THEN REPLY #39891 /* ~«Эта...»~ */ GOTO 6
  IF ~~ THEN REPLY #39892 /* ~«Неважно, я...»~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #39893 /* ~«Выглядит потрясающе! Погляди-ка на эти чернильные линии... Думаю, это чернила...» Она присматривается к татуировке, затем пытается прикоснуться к ней.~ */
  IF ~~ THEN REPLY #39894 /* ~Позволить ей прикоснуться к тебе.~ */ GOTO 7
  IF ~~ THEN REPLY #39895 /* ~Не дать ей прикоснуться к тебе.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #39896 /* ~«Я *думаю*, это чернила, — она проводит пальцем по краю татуировки. — Это ведь чернила? И что за рисунок! Гляди, как тут пересекаются линии — она прикасается к центру татуировки. — Просто удивительно... — она надувает губки и разочарованно нахмуривается. — Я могла бы сделать ее лучше, не будь тут так много шрамов...»~ */
  IF ~~ THEN REPLY #39897 /* ~«Со шрамами уже ничего не поделаешь — они навсегда».~ */ GOTO 10
  IF ~~ THEN REPLY #39898 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #39899 /* ~«Я уже должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #39900 /* ~Когда ты избегаешь ее прикосновения, Ненни смотрит на тебя. «Извини, извини меня, сударь! Я не желала тебе зла: я лишь хотела потрогать татуировки и ощутить их узор. Это так очаровательно! — она делает недовольную гримаску, потом легонько хлопает себя по голове. — Слишком прямая! Я слишком прямая! Прими мои извинения, сударь! Прошу, не огорчайся!»~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 422
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39901 /* ~«Без проблем».~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39902 /* ~«Смотри, чтобы этого больше не повторилось».~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.2
  SAY #39903 /* ~Ненни кивает, затем мило улыбается тебе. «Прости меня, прости... но я *должна* знать... ты абсолютно *уверен*, что с тобой все в порядке? Я смотрю на тебя и просто не могу поверить, что тебе хоть *немного* не больно».~ */
  IF ~~ THEN REPLY #39904 /* ~«Никакой физической боли, правда».~ */ GOTO 11
  IF ~~ THEN REPLY #39905 /* ~«У меня амнезия, не более того».~ */ GOTO 20
  IF ~~ THEN REPLY #39906 /* ~«Забудь об этом. У меня есть несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #39907 /* ~«Не волнуйся об этом. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0
  SAY #39908 /* ~«О, прости меня, прости... чтоб меня оспа побила, если еще раз скажу о них! — она съеживается. — Но я *должна* знать... ты абсолютно *уверен*, что с тобой все в порядке? Я смотрю на тебя, и просто не могу поверить, что тебе хоть *совсем* не больно».~ */
  IF ~~ THEN REPLY #39909 /* ~«Никакой физической боли, правда».~ */ GOTO 11
  IF ~~ THEN REPLY #39910 /* ~«У меня амнезия, не более того».~ */ GOTO 20
  IF ~~ THEN REPLY #39911 /* ~«Забудь об этом. У меня есть несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #39912 /* ~«Не волнуйся об этом. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0
  SAY #39913 /* ~«О! У тебя внутри болит? В голове? — она энергично хлопает в ладоши. — Может, я могу помочь! Вернее, я знаю, что могу! Программа обучения чувствующих включает в себя изучение избавления других от боли... моя госпожа говорит, что чувствующий может вытянуть боль из раны и забрать ее с собой... как бы там ни было, я *могу* помочь! Можно, я попробую?! Пожалуйста, скажи да!»~ */
  IF ~~ THEN REPLY #39914 /* ~«Чувствующие?»~ */ GOTO 26
  IF ~~ THEN REPLY #39915 /* ~«Да, пожалуйста».~ */ GOTO 16
  IF ~~ THEN REPLY #39916 /* ~«Твоя госпожа?»~ */ GOTO 12
  IF ~~ THEN REPLY #39917 /* ~«Нет. У меня есть несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #39918 /* ~«Нет, мне не больно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY #39919 /* ~«О, да, — радостно отвечает Ненни. — Госпожа Грация. Она — самая удивительная личность из тех, что я знаю!»~ */
  IF ~~ THEN REPLY #39920 /* ~«Расскажи мне о госпоже Грации»~ */ GOTO 13
  IF ~~ THEN REPLY #39921 /* ~«Понимаю. Ну, давай, попробуй мне помочь...»~ */ GOTO 16
  IF ~~ THEN REPLY #39922 /* ~«Не думаю, что мне в самом деле нужна твоя помощь, однако у меня есть вопросы...»~ */ GOTO 3
  IF ~~ THEN REPLY #39923 /* ~«Понятно. Хотя не думаю, что ты сможешь помочь мне. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #39924 /* ~«Она так прекрасна, не правда ли? Трудно поверить, что она из Нижних планов, — она такая милая и умная!»~ */
  IF ~  NearbyDialog("DGrace")
~ THEN GOTO 14
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39925 /* ~«Причем здесь Нижние планы?»~ */ GOTO 15
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39926 /* ~«Понимаю. Ну, давай, попробуй мне помочь...»~ */ GOTO 16
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39927 /* ~«Не думаю, что мне в самом деле нужна твоя помощь, однако у меня есть вопросы...»~ */ GOTO 3
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39928 /* ~«Понятно. Хотя не думаю, что ты сможешь помочь мне. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39929 /* ~Внезапно Ненни замечает Падшую Грацию возле тебя. «О! Госпожа Грация!» Она делает реверанс; Грация кивает в ответ, улыбаясь.~ */
  IF ~~ THEN REPLY #39930 /* ~«Причем здесь Нижние планы?»~ */ GOTO 15
  IF ~~ THEN REPLY #39931 /* ~«Понимаю. Ну, давай, попробуй мне помочь...»~ */ GOTO 16
  IF ~~ THEN REPLY #39932 /* ~«Не думаю, что мне в самом деле нужна твоя помощь, однако у меня есть вопросы...»~ */ GOTO 3
  IF ~~ THEN REPLY #39933 /* ~«Понятно. Хотя не думаю, что ты сможешь помочь мне. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #39934 /* ~«Ну, все они там, внизу, такие *злые*. Кто бы мог подумать, что госпожа Грация происходит из такого места?»~ */
  IF ~~ THEN REPLY #39935 /* ~«Понимаю. Ну, давай, попробуй мне помочь...»~ */ GOTO 16
  IF ~~ THEN REPLY #39936 /* ~«Не думаю, что мне в самом деле нужна твоя помощь, однако у меня есть вопросы...»~ */ GOTO 3
  IF ~~ THEN REPLY #39937 /* ~«Понятно. Хотя не думаю, что ты сможешь помочь мне. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1 12.1 13.2 14.1 15.0
  SAY #39938 /* ~Ненни складывает руки в замок и небрежно кладет их тебе на лоб.~ */
  IF ~  HPPercent(Protagonist,100)
~ THEN REPLY #39939 /* ~Позволить ей прикоснуться к тебе.~ */ GOTO 17
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #39940 /* ~Позволить ей прикоснуться к тебе.~ */ DO ~Damage(Protagonist,RAISE,1)
~ GOTO 17
  IF ~~ THEN REPLY #39941 /* ~Не дать ей прикоснуться к тебе.~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 19.1 29.0
  SAY #39942 /* ~Когда она подходит ближе, ты замечаешь, что кожа Ненни слегка пахнет сиренью. Она нежно кладет свои руки в перчатках тебе на лоб и закрывает глаза. Она что-то мурлычет себе под нос, и ты ощущаешь, как по твоему телу пробегает еле ощутимая волна тепла.~ */
  IF ~~ THEN REPLY #39943 /* ~«Э... спасибо. Было приятно».~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #39944 /* ~«Конечно! Я так рада, что могу помочь!» Ненни широко улыбается тебе; похоже, она готова взорваться от счастья.~ */
  IF ~~ THEN REPLY #39945 /* ~«У меня вопрос...»~ */ GOTO 3
  IF ~~ THEN REPLY #39946 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #39947 /* ~Ненни застывает; она выглядит удивленной, затем слегка обиженной. «Извини меня! Извини! Ты не любишь, когда тебя касаются? Я должна была предупредить тебя! Просто таким образом работает Чувствительное прикосновение... Я кладу свои руки на твое тело — обычно возле раны, чтобы лучше сфокусировать силу — и вытягиваю боль».~ */
  IF ~~ THEN REPLY #39948 /* ~«Чувствительное прикосновение...?»~ */ GOTO 29
  IF ~~ THEN REPLY #39949 /* ~«Прекрасно. В таком случае, продолжай».~ */ GOTO 17
  IF ~~ THEN REPLY #39950 /* ~«У меня вопрос...»~ */ GOTO 3
  IF ~~ THEN REPLY #39951 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.1 10.1
  SAY #39952 /* ~«Амнезия? — Ненни моргает, затем лицо ее проясняется. — Потеря памяти! Тебе *так* повезло, — ее голос весело звенит. — Все должно быть так *ново* для тебя».~ */
  IF ~~ THEN REPLY #39953 /* ~«В этом есть доля правды, только новизна эта... нежеланна».~ */ GOTO 21
  IF ~~ THEN REPLY #39954 /* ~«Меня это не слишком беспокоит».~ */ GOTO 22
  IF ~~ THEN REPLY #39955 /* ~«Я... не смотрел на это под таким углом».~ */ GOTO 23
  IF ~~ THEN REPLY #39956 /* ~«Я бы предпочел, чтобы некоторые вещи были мне более знакомы».~ */ GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #39957 /* ~Она закрывает глаза. «Это звучит так *печально*».~ */
  IF ~~ THEN REPLY #39958 /* ~«Да, это так... но меня есть еще вопросы...»~ */ GOTO 3
  IF ~~ THEN REPLY #39959 /* ~«Вовсе нет. У меня есть несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #39960 /* ~«Возможно... как бы там ни было, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #39961 /* ~«Правда? Почему?»~ */
  IF ~~ THEN REPLY #39962 /* ~«Нет, и все тут. Разве можно объяснить чувство?»~ */ GOTO 25
  IF ~~ THEN REPLY #39963 /* ~«Мне не нравится терять память, да и смерть — не самое приятное переживание».~ */ GOTO 28
  IF ~~ THEN REPLY #39964 /* ~«Без фундамента — некого понимания того, кто я такой — я не способен развиваться».~ */ GOTO 28
  IF ~~ THEN REPLY #39965 /* ~«Просто... ничего. У меня вопрос...»~ */ GOTO 3
  IF ~~ THEN REPLY #39966 /* ~«Я не хочу больше обсуждать это. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY #39967 /* ~Ненни восхищенно складывает руки. «Я так рада, что смогла открыть твой разум этой идее! Я слышала, что как раз ради этого и живут чувствующие... чтобы давать другим новые впечатления».~ */
  IF ~~ THEN REPLY #39968 /* ~«Чувствующие?»~ */ GOTO 26
  IF ~~ THEN REPLY #39969 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #39970 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3
  SAY #39971 /* ~«Например, кто? — она улыбается, потом хихикает над собой. — В смысле: что, например?»~ */
  IF ~  GlobalGT("Know_Player_Killer","GLOBAL",0)
~ THEN REPLY #39972 /* ~«Мой убийца, к примеру».~ */ GOTO 28
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #39973 /* ~«Не Морт. Он слишком хорошо мне знаком».~ */ EXTERN ~DMORTE~ 424
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #39974 /* ~«Я хотел бы знать, был ли я знаком с кем-то из моих товарищей раньше».~ */ GOTO 28
  IF ~~ THEN REPLY #39975 /* ~«Просто... ничего. У меня вопрос...»~ */ GOTO 3
  IF ~~ THEN REPLY #39976 /* ~«Я не хочу больше обсуждать это. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.0
  SAY #39977 /* ~«О, любой может попробовать! — радостно восклицает Ненни. — Попробуй! Давай, уверена — ты сможешь».~ */
  IF ~~ THEN REPLY #39978 /* ~«Мне не нравится терять память, да и смерть — не самое приятное переживание».~ */ GOTO 28
  IF ~~ THEN REPLY #39979 /* ~«Без фундамента — некого понимания того, кто я такой — я не способен развиваться».~ */ GOTO 28
  IF ~~ THEN REPLY #39980 /* ~«Просто... ничего. У меня вопрос...»~ */ GOTO 3
  IF ~~ THEN REPLY #39981 /* ~«Я не хочу больше обсуждать это. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 11.0 23.0
  SAY #39982 /* ~«Чувствующие! Ах, они такие *мечтатели*. Они считают, что понимания можно достичь, только попробовав как можно больше всего в мультивселенной! Попробуй это, послушай то, почувствуй это, посмотри на то... и всего этого *так* много вокруг, это *такое* огромное место, что иной раз трудно все перепробовать».~ */
  IF ~~ THEN REPLY #39983 /* ~«У меня есть другие вопросы...»~ */ GOTO 3
  IF ~~ THEN REPLY #39984 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #39985 /* ~Ненни хихикает.~ */
  IF ~~ THEN REPLY #39986 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #39987 /* ~«Прощай, Ненни».~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.1 22.2 24.0 24.2 25.0 25.1
  SAY #39988 /* ~«А, — Ненни нахмуривает лоб в тяжелых раздумьях. — Пожалуй, в этом есть какой-то смысл. Я так хотела бы помочь!»~ */
  IF ~~ THEN REPLY #39989 /* ~«Что ж, ты *могла бы* ответить на мой вопрос...»~ */ GOTO 3
  IF ~~ THEN REPLY #39990 /* ~«Я тоже. Прощай, Ненни...»~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.0
  SAY #39991 /* ~«Да! Это могут все чувствующие, но я еще не совсем чувствующая, так что у меня это не очень хорошо получается. Когда я научусь, я смогу забирать себе боль других людей — чтобы помочь им, и все такое!»~ */
  IF ~~ THEN REPLY #39992 /* ~«Тогда давай».~ */ GOTO 17
  IF ~~ THEN REPLY #39993 /* ~«У меня вопрос...»~ */ GOTO 3
  IF ~~ THEN REPLY #39994 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 3.4
  SAY #39995 /* ~«Без понятия! Извини. Хммм. Может, тебе Джульетту спросить. Они с Кесай когда-то были по-настоящему близкими подругами. Потом Джульетта встретила Монтекки, и теперь они не особо разговаривают».~ */
  IF ~~ THEN REPLY #39996 /* ~«У меня еще вопросы, Ненни...»~ */ GOTO 3
  IF ~~ THEN REPLY #39997 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 3.2 3.3
  SAY #39998 /* ~«Ах, Экко! Да, она такая загадочная, *не правда ли*?! Ты знаешь, что она вообще не разговаривает? Правда! — Ненни подается вперед и понижает голос. — Мне кажется, что она была эмоционально ранена, да так, что она, может, и вообще никогда не заговорит! Могу поспорить, что об этом знает Долора, ведь она когда-то разговаривала с последним возлюбленным Экко, который был у нее тогда, когда она еще могла говорить!»~ */
  IF ~~ THEN REPLY #39999 /* ~«У меня еще вопросы, Ненни...»~ */ GOTO 3
  IF ~~ THEN REPLY #40000 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 3.0
  SAY #40001 /* ~«С *тобой* болтаю, глупыш! — она хихикает и толкает тебя в живот. — Так я разговариваю и со *всеми* остальными клиентами. Так делают все проститутки; ведь для этого и существует Бордель! Изучать новые способы разговора, делиться впечатлениями и понимать других людей».~ */
  IF ~~ THEN REPLY #40002 /* ~«У меня еще вопросы, Ненни...»~ */ GOTO 3
  IF ~~ THEN REPLY #40003 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 3.1
  SAY #40004 /* ~«М-м... конечно, могу! Бордель утоления интеллектуальной страсти — это школа, основанная госпожой Падшей Грацией. Все проститутки здесь — и я тоже! — учатся азам общения с людьми, всему, что поможет нам узнать побольше о других и нас самих. Мне здесь нравится... это нескончаемая волна переживаний, которая проходит сквозь меня и наполняет мою голову свежими идеями!»~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 425
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40006 /* ~«У меня еще вопросы, Ненни...»~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40007 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 3.6 3.8
  SAY #40008 /* ~«Хмм, — Ненни сильно нахмуривается. — Я... э...»~ */
  IF ~~ THEN REPLY #40009 /* ~«Что?»~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #40010 /* ~«О, я просто не могу! Я не могу сказать ни о ком ничего дурного! Просто у меня это не слишком хорошо получается!»~ */
  IF ~~ THEN REPLY #40011 /* ~«Нет ничего дурного в том, чтобы указать на вора, Ненни».~ */ GOTO 36
  IF ~~ THEN REPLY #40012 /* ~«Неважно... У меня еще вопрос».~ */ GOTO 3
  IF ~~ THEN REPLY #40013 /* ~«Не обращай внимания, Ненни. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #40014 /* ~«О, но я ведь не знаю, она ли воровка...» Ненни закусывает губу и жалобно смотрит на тебя, как будто хочет, чтобы ты оставил эту тему.~ */
  IF ~~ THEN REPLY #40015 /* ~«Слушай, а почему бы тебе не *попробовать* сказать о ней что-нибудь нехорошее».~ */ GOTO 37
  IF ~~ THEN REPLY #40016 /* ~«Неважно... У меня еще вопрос».~ */ GOTO 3
  IF ~~ THEN REPLY #40017 /* ~«Не обращай внимания, Ненни. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #40018 /* ~«Ах, ладно». Ненни кладет руки на пояс и сильно нахмуривается, даже слишком сильно. Ты сопротивляешься искушению рассмеяться. «О-о-о, она мне очень, ну *очень* не нравится, — она на миг останавливается, затем искоса смотрит на тебя, как бы оценивая твою реакцию. — Было убедительно?»~ */
  IF ~~ THEN REPLY #40019 /* ~«Нет, не очень...»~ */ GOTO 38
  IF ~~ THEN REPLY #40020 /* ~«Нет. Просто забудь об этом... У меня другой вопрос».~ */ GOTO 3
  IF ~~ THEN REPLY #40021 /* ~«Не обращай внимания, Ненни. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #40022 /* ~Ненни мрачнеет. «Я знала, что у меня не получится! — она уныло глядит на тебя. — Ты представляешь, как это *сложно* — сказать о ком-то что-нибудь плохое?! От этого так не по себе».~ */
  IF ~~ THEN REPLY #40023 /* ~«Почему бы тебе не потренироваться на мне, Ненни?»~ */ GOTO 39
  IF ~~ THEN REPLY #40024 /* ~«Неважно... У меня еще вопрос».~ */ GOTO 3
  IF ~~ THEN REPLY #40025 /* ~«Не обращай внимания, Ненни. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #40026 /* ~«Наверно, я могла бы попробовать... — ее терзают сомнения. — Ты большой грязный противный грубиян! — она кладет руки на пояс. — Подлец! — она смотрит на тебя. — Ну как?»~ */
  IF ~~ THEN REPLY #40027 /* ~«Сделай ударение на 'грубиян'».~ */ GOTO 40
  IF ~~ THEN REPLY #40028 /* ~«Попробуй меня ударить».~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #40029 /* ~«Ты большой грязный противный *грубиян*!»~ */
  IF ~~ THEN REPLY #40030 /* ~«Уже лучше. А теперь ударь меня».~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.0
  SAY #40031 /* ~Ненни складывает ладони у своего рта; она выглядит шокированной. «О, я не могу! Я не должна! — она закрывает глаза. — Да и зачем кому-то кого-то бить?»~ */
  IF ~~ THEN REPLY #40032 /* ~«Вперед. Бей легонько, если хочешь. Помни: я — грязный противный грубиян. Я это заслужил».~ */ DO ~SetAnimState("Nenny",ANIM_MIMEATTACK1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #40033 /* ~Ненни дает тебе пощечину; ты еле чувствуешь это. Она все еще выглядит потрясенной и испуганной из-за того, что причинила тебе боль. «О, прости меня! Тебе больно? Скажи, что ты в порядке!»~ */
  IF ~~ THEN REPLY #40034 /* ~«Не порти образ, Ненни. Давай, покажи, на что ты способна. Ты можешь сказать что-нибудь плохое... просто позволь ему выйти наружу».~ */ GOTO 43
  IF ~~ THEN REPLY #40035 /* ~«Ай! Проклятье, меня ни разу так сильно не били!»~ */ GOTO 49
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #40036 /* ~«О... в смысле, ах! — Ненни выпрямляется во весь рост своего миниатюрного тела, сжимает руки в кулачки, кладет их на пояс и корчит милую гримаску. «Ах, чтоб ты провалился! Ты это заслужил за все те унижения, через которые я прошла из-за тебя! Уходишь из дому посреди ночи, — ее взгляд блуждает по тебе вверх-вниз. — Ввязываешься в драки и получаешь все эти шрамы! Что об этом дети подумают, хм?!»~ */
  IF ~~ THEN REPLY #40037 /* ~«Великолепно».~ */ GOTO 44
  IF ~~ THEN REPLY #40038 /* ~«Э... дети?»~ */ GOTO 48
END

IF ~~ THEN BEGIN 44 // from: 43.0 51.0
  SAY #40039 /* ~«О, не хвали меня, будто я из тех, неженок, что ждут твоего одобрения! Я самостоятельная женщина, и эта женщина собирается уйти из твоей жизни, если только не получит от тебя кое-какие твердые обязательства!»~ */
  IF ~~ THEN REPLY #40040 /* ~«Ладно... этого достаточно, Ненни».~ */ DO ~SetAnimState("Nenny",ANIM_MIMEATTACK2)
~ GOTO 45
  IF ~~ THEN REPLY #40041 /* ~«Э... успокойся. Пора угомониться».~ */ GOTO 46
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #40042 /* ~Ненни бьет тебя. Ты еле ощущаешь это. «Получай, — она бьет тебя снова. — Вот тебе!» — она снова ударяет тебя, быстро превращаясь в маленький молотящий кулаками смерч.~ */
  IF ~~ THEN REPLY #40043 /* ~«Ладно, ладно... Пора угомониться».~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 44.1 45.0 48.0
  SAY #40044 /* ~Ненни устало вздыхает. «Фух. Это легче, чем я думала!»~ */
  IF ~~ THEN REPLY #40045 /* ~«Кроме шуток».~ */ DO ~SetGlobal("Nenny_Angry","AR0605",1)
AddexperienceParty(5000)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #40046 /* ~«И я уверена, что в следующий раз у меня получится еще лучше! Я так рада узнать что-нибудь новое... спасибо!»~ */
  IF ~~ THEN REPLY #40047 /* ~«Конечно. У меня еще вопрос...»~ */ GOTO 3
  IF ~~ THEN REPLY #66337 /* ~«Нет проблем. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.1
  SAY #40048 /* ~«Что?! — ярость Ненни берет новую планку. — Ты забыл о наших детях?! Ты уже что, мозги пропил, раз не можешь вспомнить даже то, что у нас есть *дети*?! — Ненни в гневе вскидывает руки. — Ты безнадежный, бестолковый и еще много без-, которые я сейчас не буду упоминать».~ */
  IF ~~ THEN REPLY #40049 /* ~«Э... успокойся. Пора угомониться».~ */ GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 42.1
  SAY #40050 /* ~Глаза Ненни расширяются еще больше, когда ты корчишься от притворной боли. «О, боги! Ох, я не хотела бить тебя так сильно! Прости меня! Прости!»~ */
  IF ~~ THEN REPLY #40051 /* ~«Никогда не извиняйся. Скажи 'лучше привыкай'».~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #40052 /* ~Ненни смотрит на тебя. «О... э, лучше привыкай».~ */
  IF ~~ THEN REPLY #40053 /* ~«Нахмурься, когда произносишь это. Говори безжалостно и убедительно».~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #40054 /* ~Ненни выпрямляется во весь рост своего миниатюрного тела, сжимает руки в кулачки, кладет их на пояс и корчит милую гримаску. «Лучше привыкай!»~ */
  IF ~~ THEN REPLY #40055 /* ~«Великолепно».~ */ GOTO 44
END

IF ~~ THEN BEGIN 52 // from: 3.7
  SAY #40056 /* ~«Может быть... Однажды ночью я видела, как эта низкая, подлая Марисса украдкой выходила из комнаты Вивьен. Не то, чтобы я говорю, что она его прихватила, но я знаю, что Марисса — не очень приятная личность, да и это, конечно, звучит подозрительно, да? Я бы пошла и спросила у нее об этом». Ненни кивает тебе.~ */
  IF ~~ THEN REPLY #40057 /* ~«Спасибо, Ненни. У меня есть другой вопрос...»~ */ GOTO 3
  IF ~~ THEN REPLY #40058 /* ~«Это все, что я хотел узнать. Прощай, Ненни».~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.9
  SAY #40059 /* ~«Конечно, знаю! Однажды ночью я видела, как эта гадкая Кимаскси Змееязыкая украдкой выходила из комнаты Мариссы. Знаешь, они обе — подлые, но Кимаскси просто ужасна! Как бы там ни было, я бы сперва с ней поговорила».~ */
  IF ~~ THEN REPLY #40060 /* ~«Спасибо, Ненни. У меня есть другой вопрос...»~ */ GOTO 3
  IF ~~ THEN REPLY #40061 /* ~«Это все, что я хотел узнать. Прощай, Ненни».~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 3.5
  SAY #40062 /* ~Глаза Ненни неожиданно расширяются. «О! Точно! Знаешь, однажды я видела мужчину, прокрадывающегося из комнаты Кимаскси, пока она разговаривала с клиентом... Я весь тот день следила за парадной дверью, но он так и не вышел! Разве это не странно? Не думаю, что он смог бы выбраться через окно, так что я так и не поняла, куда он делся. А потом я и вовсе забыла об этом! Странно, да?»~ */
  IF ~~ THEN REPLY #40063 /* ~«Да... У меня есть другой вопрос...»~ */ GOTO 3
  IF ~~ THEN REPLY #40064 /* ~«Вот оно. Счастливо, Ненни»~ */ EXIT
END

IF ~  Global("Nenny","GLOBAL",1)
~ THEN BEGIN 55 // from:
  SAY #40065 /* ~«Добро *пожаловать*, сударь! Я Ненни! Как *тебе* этот славный д... О! Мы уже встречались! — Ненни хихикает и радостно улыбается тебе. — Извини! Ведь я *знала*, что мы уже знакомы...»~ */
  IF ~~ THEN REPLY #40066 /* ~«Все хорошо, Ненни. У меня есть несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #40067 /* ~«Я просто проходил мимо. Прощай, Ненни».~ */ EXIT
END
