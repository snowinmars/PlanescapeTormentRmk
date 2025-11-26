// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUMBLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUMBLE~

IF ~  Global("Jumble","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2937 /* ~Оранжевая туника и приличных размеров живот этого невысокого лысеющего мужчины делают его похожим на ходячую тыкву. Он рассеянно и неспешно похлопывает себя по огромному пузу, будто это барабан. Его необычная перекошенная улыбка и странный блеск в глазах создают впечатление того, что он слегка не в себе.~ */
  IF ~~ THEN REPLY #2938 /* ~«Приветствую...»~ */ DO ~SetGlobal("Jumble","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41917 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41918 /* ~Человек отвешивает подчеркнуто-показушный поклон, и дает карточку, в которой можно разобрать лишь «Джамбл Смыслогуб — эКстраордный Колдун и хаоситеК». Затем он выхватывает карточку у тебя из рук и начинает есть ее, не переставая дико улыбаться.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 462
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41928 /* ~«Джамбл, у меня несколько вопросов...»~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41929 /* ~«Ты тот, кто проклял Вонючку, не так ли?»~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~В Городском Фестхолле я встретил человека, который проклял Вонючку, — Джамбла Смыслогуба.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #67863 /* ~«Я хотел бы, чтобы ты снял проклятие с Вонючки».~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41930 /* ~«А теперь я ухожу, Джамбл. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 11.0
  SAY #41931 /* ~Джамбл зевает и смотрит в сторону, барабаня по пузу ладонями.~ */
  IF ~~ THEN REPLY #41932 /* ~«Джамбл? Как на счет моих вопросов?»~ */ GOTO 3
  IF ~~ THEN REPLY #41933 /* ~«Неважно... Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.1 12.2
  SAY #41934 /* ~Джамбл закатывает глаза. Он поворачивается к тебе, глупо ухмыляясь, затем показывает оскорбительный жест.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41935 /* ~«Ответь хотя бы на вопрос: это ты проклял Вонючку?»~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~В Городском Фестхолле я встретил человека, который проклял Вонючку, — Джамбла Смыслогуба.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67865 /* ~«Хорошо. Вот только я хотел бы, чтобы ты снял проклятие с Вонючки».~ */ GOTO 9
  IF ~~ THEN REPLY #41936 /* ~«Ты немой? Поэтому ты мне не отвечаешь?»~ */ GOTO 4
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41937 /* ~Правда: «Мне нужны ответы, и, если нужно, я их из тебя выбью».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41938 /* ~Блеф: «Мне нужны ответы, и, если нужно, я их из тебя выбью».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41939 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY #41940 /* ~Джамбл поднимает голову и дарит тебе идиотскую улыбку. Он медленно пожимает плечами... затем закрывает глаза и показывает тебе язык.~ */
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41941 /* ~Правда: «Мне нужны ответы, и, если нужно, я их из тебя выбью».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41942 /* ~Блеф: «Мне нужны ответы, и, если нужно, я их из тебя выбью».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41943 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3 3.4 4.0 4.1 9.1 9.2 10.0 10.1
  SAY #41944 /* ~Джамбл поднимает бровь и отступает на шаг. Внезапно он раскрывает рот и изрыгает поток невразумительного бормотания (хотя его губы и глотка при этом не двигаются).~ */
  IF ~~ THEN REPLY #41945 /* ~«Что за?..»~ */ DO ~SetGlobal("Jumble","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_ADD_JUMBLE_CURSE)
~ JOURNAL #66219 /* ~Маг-хаоситек по имени Джамбл Смыслогуб проклял меня нескончаемой икотой. Надеюсь, кто-нибудь в Фестхолле знает хоть что-то о том, как снять это досадное проклятье... или как заставить Джамбла самостоятельно снять его.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #41946 /* ~Джамбл закрывает рот, и бормотание прекращается... прищурив глаза, он рассматривает тебя; его пухлое лицо озаряет самодовольная улыбка. И вдруг ты икаешь.

Снова икаешь. Еще раз. И еще.

Джамбл Смыслогуб попросту отворачивается и знаком показывает тебе уходить.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 463
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41947 /* ~«Что ты со мной сделал?»~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41948 /* ~«Джамбл... пожалуйста, убери это, что бы ты там не натворил».~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41949 /* ~«Что бы ты там не сделал, убери это... или ты об этом горько пожалеешь».~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41950 /* ~«Лучше мне найти кого-то, кто бы помог мне избавиться от этого проклятья. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.2 6.3
  SAY #41951 /* ~Джамбл не обращает на тебя никакого внимания.~ */
  IF ~~ THEN REPLY #41952 /* ~Атаковать его.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #41953 /* ~«Лучше мне найти кого-то, кто бы помог мне избавиться от этого проклятья. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2 3.0 11.1
  SAY #41954 /* ~Джамбл делает невинное лицо и пожимает плечами, как бы говоря «Я не знаю». Он прикрывает рот рукой и хихикает, словно беззаботная школьница.~ */
  IF ~~ THEN REPLY #41955 /* ~«Я хотел бы, чтобы ты снял с него проклятье».~ */ GOTO 9
  IF ~~ THEN REPLY #41956 /* ~«У меня есть другие вопросы...»~ */ GOTO 3
  IF ~~ THEN REPLY #41957 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 3.1 8.0 11.2
  SAY #41958 /* ~Джамбл притворяется, будто не слышит тебя: он громко рыгает и продолжает барабанить себя по пузу. Его глаза блуждают по Фестхоллу.~ */
  IF ~~ THEN REPLY #41959 /* ~«Я могу хоть что-нибудь сделать, чтобы ты снял проклятие с Вонючки?»~ */ GOTO 10
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41960 /* ~Правда: «Сними с него проклятье, Джамбл, пока мне не пришлось причинить тебе боль».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41961 /* ~Блеф: «Сними с него проклятье, Джамбл, пока мне не пришлось причинить тебе боль».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41962 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41963 /* ~Джамбл мотает головой, не смотря на тебя.~ */
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41964 /* ~Правда: «Сними с Вонючки проклятье, Джамбл, пока мне не пришлось причинить тебе боль».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41965 /* ~Блеф: «Сними с Вонючки проклятье, Джамбл, пока мне не пришлось причинить тебе боль».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41966 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #41967 /* ~Джамбл Смыслогуб отвешивает тебе свой фирменный, подчеркнуто-показушный поклон, затем поднимает голову и с интересом глядит на тебя.~ */
  IF ~~ THEN REPLY #41968 /* ~«Джамбл, у меня несколько вопросов...»~ */ GOTO 2
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41969 /* ~«Ты тот, кто проклял Вонючку, не так ли?»~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~В Городском Фестхолле я встретил человека, который проклял Вонючку, — Джамбла Смыслогуба.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67866 /* ~«Я хотел бы, чтобы ты снял проклятие с Вонючки».~ */ GOTO 9
  IF ~~ THEN REPLY #41970 /* ~«Я просто проходил мимо. Прощай».~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",2)
~ THEN BEGIN 12 // from:
  SAY #41971 /* ~Заметив тебя, Джамбл хмурится, показывает тебе кукиш и жестом гонит прочь.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41972 /* ~Наслать на него проклятье, которому тебя обучил Салабеш.~ */ GOTO 15
  IF ~~ THEN REPLY #41973 /* ~«Джамбл, мне нужно, чтобы ты снял с меня проклятье, которое ты наложил».~ */ GOTO 13
  IF ~~ THEN REPLY #41974 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #41975 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #41976 /* ~Он закатывает глаза и подчеркнуто зевает.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41977 /* ~Наслать на него проклятье, которому тебя обучил Салабеш.~ */ GOTO 15
  IF ~~ THEN REPLY #41978 /* ~Правда: «Снимай проклятье, Джамбл, пока мне не пришлось причинить тебе боль».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #41979 /* ~Блеф: «Снимай проклятье, Джамбл, пока мне не пришлось причинить тебе боль».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 14
  IF ~~ THEN REPLY #41980 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.2
  SAY #41981 /* ~Джамбл Смыслогуб подчеркнуто рассматривает и чистит свои ногти.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41982 /* ~Наслать на него проклятье, которому тебя обучил Салабеш.~ */ GOTO 15
  IF ~~ THEN REPLY #41983 /* ~Атаковать его.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #41984 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0 13.0 14.0
  SAY #41985 /* ~Когда ты произносишь загадочные слова проклятья Салабеша, Джамбл смотрит на тебя слегка скептически. После минуты неловкого молчания маг-хаоситек понимает, что ничего не случилось... и лицо его расплывается в злобной усмешке.~ */
  IF ~~ THEN REPLY #41986 /* ~Продолжить...~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41987 /* ~Он раскрывает рот, чтобы ответить еще одним своим проклятьем... и вдруг осознает, что у него нет голоса! Проклятье Салабеша отняло у Джамбла дар речи, таким образом, лишив его способности проклинать других. Он в панике сжимает свое горло, чуть не плача.~ */
  IF ~~ THEN REPLY #41988 /* ~«Похоже, теперь мы поменялись местами, Джамбл. Как ты думаешь, что будет, если кто-нибудь из тех, — *ик!* — кого ты когда-то проклял, узнает, что ты больше не можешь говорить... или проклинать?»~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #41989 /* ~Джамбл падает на колени и смотрит на тебя умоляюще. Кажется, он готов разрыдаться.~ */
  IF ~~ THEN REPLY #41990 /* ~«Ты — *ик!* — снимешь с меня проклятье, которое ты наложил? И поклянешься больше никогда не проклинать кого-либо, кто не желал тебе зла?»~ */ DO ~SetGlobal("Jumble","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #41991 /* ~Джамбл кладет руку на сердце и решительно кивает.~ */
  IF ~~ THEN REPLY #41992 /* ~«Отлично. В таком случае, я сниму проклятье...»~ */ DO ~ApplySpell(Protagonist,SPECIAL_REMOVE_JUMBLE_CURSE)
~ JOURNAL #66550 /* ~Я заставил Джамбла Смыслогуба снять с меня проклятье, которым он меня наградил, и все с помощью колдовства, которому меня обучил Салабеш Оникс, «Мастер проклятий».~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #41993 /* ~Как только ты снимаешь с Джамбла проклятье Салабеша, он вздыхает с облегчением. Взамен он снимает с тебя свое проклятье, и твоя икота, наконец, проходит. Затем он смиренно кланяется и опускает свой взгляд на пол.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #67870 /* ~«Ты и Вонючку проклял, так ведь?»~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~В Городском Фестхолле я встретил человека, который проклял Вонючку, — Джамбла Смыслогуба.~ */ GOTO 22
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #41994 /* ~«Еще я бы хотел, чтобы ты снял проклятие с Вонючки».~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ JOURNAL #66551 /* ~Я убедил Джамбла Смыслогуба снять с Вонючки проклятье с помощью своего маленького проклятья.~ */ GOTO 20
  IF ~~ THEN REPLY #41995 /* ~«Прощай, Джамбл».~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1 22.0
  SAY #41996 /* ~Надув губы, Джамбл кивает и взмахом руки снимает проклятье с Вонючки.~ */
  IF ~~ THEN REPLY #41997 /* ~«Спасибо. Прощай, Джамбл».~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",3)
~ THEN BEGIN 21 // from:
  SAY #41998 /* ~Джамбл отдает тебе неловкий поклон и смущенно смотрит на тебя. Ясно, что больше он не желает иметь с тобой дело.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #67871 /* ~«Ты и Вонючку проклял, так ведь?»~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ GOTO 22
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #41999 /* ~«Я хотел бы, чтобы ты снял с Вонючки свое старое проклятье».~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ JOURNAL #66551 /* ~Я убедил Джамбла Смыслогуба снять с Вонючки проклятье с помощью своего маленького проклятья.~ */ GOTO 20
  IF ~~ THEN REPLY #42000 /* ~«Джамбл, я просто проходил мимо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0 21.0
  SAY #67867 /* ~Джамбл громко вздыхает, закатывает глаза и кивает.~ */
  IF ~~ THEN REPLY #67868 /* ~«Я бы хотел, чтобы ты снял с него свое старое проклятье».~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 20
  IF ~~ THEN REPLY #67869 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END
