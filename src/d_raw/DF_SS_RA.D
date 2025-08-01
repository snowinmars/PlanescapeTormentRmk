// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_RA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_RA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51466 /* ~Этот болезненно-зеленый камень надежно прикреплен к подставке, на которой он покоится. Под ним есть надпись: «Посланник».~ */
  IF ~  Global("Ravel","GLOBAL",0)
~ THEN REPLY #51467 /* ~Начать переживание...~ */ GOTO 2
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #53012 /* ~Начать переживание...~ */ GOTO 1
  IF ~~ THEN REPLY #53013 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #53014 /* ~Ты касаешься камня, но в твоем разуме нет шевеления... словно камень неактивен... мертв, что ли.~ */
  IF ~~ THEN REPLY #53015 /* ~Оставить камень в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #53016 /* ~Когда ты касаешься камня, его зеленая поверхность становится четче, отчетливее; он теперь настолько ярок, что ты не можешь выдержать, и тебе приходится закрыть глаза, чтобы не смотреть на него...~ */
  IF ~~ THEN REPLY #53017 /* ~Закрыть глаза, погрузиться в переживание...~ */ GOTO 4
  IF ~~ THEN REPLY #53018 /* ~Стряхнуть с себя переживание, отойти от камня.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.1 5.3 6.1 7.2 8.1 9.2 10.1 19.1 21.0
  SAY #53019 /* ~Твой взор поясняется — ты снова стоишь возле отвратительного зеленого камня... он выглядит иным, почему-то более... страшным.~ */
  IF ~~ THEN REPLY #53020 /* ~Попытаться стряхнуть переживание и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #53021 /* ~Закрыв глаза, ты чувствуешь, что кожа твоих рук немеет, как будто ее покинули все ощущения. Устал... как же ты устал. Ты пытаешься моргнуть, но темнота не пропадает; твои веки кажутся мягкими и вялыми, неотзывчивыми. Ты сидишь на чем-то вроде грязного пола; вокруг тебя витает медный запах крови и... трав? Зачем ты здесь? Ты пришел сюда — зачем? Твоя память подводит тебя, но ты чувствуешь, как тобой начинает овладевать нарастающая паника...~ */
  IF ~~ THEN REPLY #53022 /* ~Попробовать осмотреться...~ */ GOTO 5
  IF ~~ THEN REPLY #53023 /* ~Оторваться от переживания.~ */ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #53024 /* ~«О... кажись, очнулся? С вопросами закончил?» Это голос старухи, низкий и скрипучий, словно пробивающийся сквозь толстый слой пыли. Как бы ты не пытался, тебе не удается открыть глаза и увидеть ее, и все же от страха тебя пронимает дрожь. Что-то не так, что-то чертовски не так. Ты пытаешься ответить, но все, что тебе удается произнести — это резкое карканье. Ты не чувствуешь языка... и глаз? Что с твоими глазами?~ */
  IF ~  Global("Know_Ravel_Stone","AR0604",1)
GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53025 /* ~«Равель? Равель, это я!»~ */ GOTO 9
  IF ~  Global("Know_Ravel_Stone","AR0604",2)
GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53026 /* ~«Равель? Я вернулся».~ */ GOTO 9
  IF ~~ THEN REPLY #53027 /* ~Слушать...~ */ GOTO 6
  IF ~~ THEN REPLY #53028 /* ~Оторваться от переживания.~ */ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #53029 /* ~«Ну вот, увидал меня, заговорил, да *неважно*. Видать, свою цену ты заплатил, м-м?» Кажется, старуха довольна, но затем ее тон резко меняется. «Довольно вопросов; теперь ты будешь СЛУШАТЬ, и мои слова запомнишь, а коли послушаешься — будешь *жить*, — шипит она. — Кивни, коли услышал, а не то ЕЩЕ кусочек я отхвачу».~ */
  IF ~~ THEN REPLY #53030 /* ~Кивнуть.~ */ GOTO 7
  IF ~~ THEN REPLY #53031 /* ~Оторваться от переживания.~ */ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #53032 /* ~«Меня запомни, путник. Запомни в камень, в одну из тех чудных блестяшек в твоем Веселом холле. Используй ее как чашу: излей в нее все, что *чувствуешь*. Напомни меня человеку с кожей из шрамов и татуировок, который ищет воспоминания, но не знает, где их найти. И если он толковый — узнает МЕНЯ. Передай ему, чтоб разыскал меня... или, если меня не найти, вели ему подойти к камню-блестяшке, и мы поболтаем, я и мой драгоценный, — женщина умолкает, потом продолжает, шипя. — КИВНИ, коли услышал меня, потрепанная вещица!»~ */
  IF ~  GlobalLT("Know_Ravel_Stone","AR0604",2)
~ THEN REPLY #53033 /* ~Кивнуть.~ */ DO ~SetGlobal("Know_Ravel_Stone","AR0604",1)
~ GOTO 8
  IF ~  GlobalGT("Know_Ravel_Stone","AR0604",1)
~ THEN REPLY #53030 /* ~Кивнуть.~ */ GOTO 8
  IF ~~ THEN REPLY #53034 /* ~Оторваться от переживания.~ */ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #53035 /* ~«О... чудно, так любезно с твоей стороны, что все еще слушаешь меня... Когда подойдет он к камню-блестяшке, скажи, чтобы назвал меня по *имени*, — и тогда твоя боль не будет бесполезной...» Голос старухи утихает, как будто она отвлеклась. Ты снова пытаешься заговорить, но издаешь лишь болезненное бульканье. Что произошло? Кто это? Почему ты... и тут тебе начинает казаться, что ты теряешь сознание...~ */
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53036 /* ~«Равель! Равель, это я!»~ */ JOURNAL #53038 /* ~В частном сенсориуме Фестхолла я наткнулся на ужасный камень. Это был жуткий зеленый камень, по милости Равель содержащий переживание кого-то, искалеченного для того, чтобы он передал свой опыт в Фестхолл... и, в конечном счете, мне. В нем Равель сказала, что я должен назвать ее по имени, если найду камень, что я и сделал...~ */ GOTO 9
  IF ~~ THEN REPLY #53037 /* ~Оторваться от переживания.~ */ JOURNAL #53039 /* ~В частном сенсориуме Фестхолла я наткнулся на ужасный камень. Это был жуткий зеленый камень, содержащий переживание кого-то, искалеченного для того, чтобы он передал свой опыт в Фестхолл... и, в конечном счете, мне. Злая старуха из переживания сказала, что я должен назвать ее по имени, если найду камень. Это сводит меня с ума, но я понятия не имею, кто она такая. Я вернусь, если смогу разузнать ее имя.~ */ GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 5.0 5.1 8.0
  SAY #53040 /* ~Тишина.~ */
  IF ~  Global("Know_Ravel_Stone","AR0604",1)
~ THEN REPLY #53041 /* ~«Равель?..»~ */ DO ~SetGlobal("Know_Ravel_Stone","AR0604",2)
GiveExperience(Protagonist,6000)
~ GOTO 10
  IF ~  Global("Know_Ravel_Stone","AR0604",2)
~ THEN REPLY #53042 /* ~«Равель?.. Это снова я».~ */ GOTO 10
  IF ~~ THEN REPLY #53043 /* ~Оторваться от переживания.~ */ GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #53044 /* ~«О-о-о... мой драгоценный». Слышится медленное шарканье ног, и вдруг ты *чувствуешь* резкий укол в левый глаз; ты раскрываешь рот, и тут внезапно начинаешь видеть... своим единственным глазом. Ты лежишь в серой лачуге на грязном полу; кровь, твоя ярко-красная кровь впиталась в серую пыль вокруг тебя. Твоих рук нет, твои ноги обрублены по колено. И все же... ты чувствуешь оцепенение, отсутствие боли... и страх. Над тобой кто-то есть, кто-то, смотрящий на тебя...~ */
  IF ~~ THEN REPLY #53045 /* ~Посмотреть вверх.~ */ GOTO 11
  IF ~~ THEN REPLY #53046 /* ~Оторваться от переживания.~ */ GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #53047 /* ~Сквозь кровавую пелену ты видишь ужасное серовато-синюшное лицо с ухмылкой, обнажившей желтые клыки. «Равель так *рада*: я уж сомневаться начала, справится ли тот посланник — такой *слабенький* он был, когда его куски положили мне на плиту...» Она держит перед тобой коготь, на который наколото глазное яблоко — правое. «И все же он, кажись, добрался до Веселого холла, и нашим общим времяпровождением поделился. И вот ты здесь... вот так удача!»~ */
  IF ~~ THEN REPLY #53048 /* ~«Равель... у меня столько вопросов к тебе».~ */ GOTO 12
  IF ~~ THEN REPLY #53049 /* ~«Прощай, Равель».~ */ GOTO 19
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #53050 /* ~Старуха качает головой; у тебя троится в глазах. Ее седые волосы — словно ежевика, ниспадающая на ее плечи. «Нет, лишь время для ответов есть у Равель. Нет времени на твои вопросы-загадки. Узнай это, и в знании сильнее стань: ты должен НАЙТИ меня, мой драгоценный».~ */
  IF ~~ THEN REPLY #53051 /* ~«Но как? Я не знаю...»~ */ JOURNAL #53053 /* ~Тот камень переживаний в частном сенсориуме содержал в себе переживание с участием Равель, и с его помощью я фактически смог разговаривать с ней, хоть и не представляю как. Она сказала, что мне нужно найти ее, и для этого мне нужно «найти дверь, узнать ключ и раскрыть ключ». Мне неясно, что она подразумевала под этим, но у меня есть подозрение, что я смогу вернуться к камню, если мне понадобятся подсказки.~ */ GOTO 13
  IF ~~ THEN REPLY #53052 /* ~«Я не могу остаться, Равель...»~ */ GOTO 19
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #53054 /* ~«Пф-ф! Я за пределами ведомого, в месте, принадлежащем Леди. А теперь молчи-и-слушай Равель, ведь многое тебе придется сделать. Чтоб разыскать меня, тебе придется сделать три вещи: найти дверь, узнать ключ, а потом *раскрыть* ключ».~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53055 /* ~«Дверь?»~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53056 /* ~«Дверь?»~ */ GOTO 15
  IF ~~ THEN REPLY #53057 /* ~«Ключ?»~ */ GOTO 16
  IF ~~ THEN REPLY #53058 /* ~«Раскрыть ключ?»~ */ GOTO 18
  IF ~~ THEN REPLY #53059 /* ~«Равель... каким образом я могу говорить с тобой в чьем-то переживании?»~ */ GOTO 22
  IF ~~ THEN REPLY #53060 /* ~«Прощай, Равель».~ */ GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.1 17.0 18.0 22.0
  SAY #53061 /* ~«Дверь еще не закончена... по крайней мере, была, когда я в последний раз ее видела, м-м? Но уж столько времени прошло, что она, кажись, должна быть готова. Иди в место кузниц и стали; быть может, там ты и найдешь дверь, ведущую ко мне...»~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53062 /* ~«Равель, я знаю, что ключ — это часть тебя, но я не знаю, как его найти...»~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53063 /* ~«О каком ключе ты говоришь?»~ */ GOTO 16
  IF ~~ THEN REPLY #53064 /* ~«Раскрыть ключ? Что ты имеешь в виду?»~ */ GOTO 18
  IF ~~ THEN REPLY #53065 /* ~«Равель... каким образом я могу говорить с тобой в чьем-то переживании?»~ */ GOTO 22
  IF ~~ THEN REPLY #53066 /* ~«Прощай, Равель».~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 13.1 16.2 17.1 18.1 22.1
  SAY #53067 /* ~«Дверь готова, и ты носишь ее с собой... очень хорошо, очень *умно*, мой драгоценный... уже имеешь ты одну из вещей, чтобы Равель найти...»~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53068 /* ~«Равель, я знаю, что ключ — это часть тебя, но я не знаю, как его найти...»~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53069 /* ~«О каком ключе ты говоришь?»~ */ GOTO 16
  IF ~~ THEN REPLY #53070 /* ~«Раскрыть ключ? Что ты имеешь в виду?»~ */ GOTO 18
  IF ~~ THEN REPLY #53071 /* ~«Равель... каким образом я могу говорить с тобой в чьем-то переживании?»~ */ GOTO 22
  IF ~~ THEN REPLY #53072 /* ~«Прощай, Равель».~ */ GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 13.2 14.1 15.1 18.3 22.3
  SAY #53073 /* ~«Чтобы УЗНАТЬ ключ, поговори с одним из сведущих. Много таких в Веселом холле, *много*, но лишь ОДИН знает, какой ключ тебе нужен. Развяжи ему язык — и много тайн раскроется...»~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53074 /* ~«Равель, я знаю, что ключ — это часть тебя, но я не знаю, как его найти...»~ */ GOTO 17
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53075 /* ~«О какой двери ты говоришь?»~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53076 /* ~«О какой двери ты говоришь?»~ */ GOTO 15
  IF ~~ THEN REPLY #53077 /* ~«Когда ты сказала 'раскрыть ключ', что ты имела в виду?»~ */ GOTO 18
  IF ~~ THEN REPLY #53078 /* ~«Равель... каким образом я могу говорить с тобой в чьем-то переживании?»~ */ GOTO 22
  IF ~~ THEN REPLY #53079 /* ~«Прощай, Равель».~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 14.0 15.0 16.0 18.2 22.2
  SAY #53080 /* ~«Ключ ИЗ меня, вот ведь... незадача? Э... — старуха шипит, словно пытаясь собраться с мыслями, и твой взгляд снова затуманивается. — Это не картинка и не сказка, не камень, а что-то из МЕНЯ, вершение моей плоти и крови. Найди его! Он *живой*...»~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53081 /* ~«О какой двери ты говоришь?»~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53082 /* ~«О какой двери ты говоришь?»~ */ GOTO 15
  IF ~~ THEN REPLY #53083 /* ~«Когда ты сказала 'раскрыть ключ', что ты имела в виду?»~ */ GOTO 18
  IF ~~ THEN REPLY #53084 /* ~«Равель... каким образом я могу говорить с тобой в чьем-то переживании?»~ */ GOTO 22
  IF ~~ THEN REPLY #53085 /* ~«Прощай, Равель».~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 13.3 14.2 15.2 16.3 17.2 22.4
  SAY #53086 /* ~«Знания ключа НЕДОСТАТОЧНО — так кажется Равель. Узнать его и раскрыть — два эти дела нужно объединить... ведь временами вещь не знает о своей сути... но тебе-то это знакомо...» Равель хихикает — протяжный отвратительный лай, наполняющий твои уши болью...~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53087 /* ~«О какой двери ты говоришь?»~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53088 /* ~«О какой двери ты говоришь?»~ */ GOTO 15
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53089 /* ~«Равель, я знаю, что ключ — это часть тебя, но я не знаю, как его найти...»~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53090 /* ~«О каком ключе ты говоришь?»~ */ GOTO 16
  IF ~~ THEN REPLY #53091 /* ~«Равель... каким образом я могу говорить с тобой в чьем-то переживании?»~ */ GOTO 22
  IF ~~ THEN REPLY #53092 /* ~«Прощай, Равель».~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 11.1 12.1 13.5 14.4 15.4 16.5 17.4 18.5 22.5
  SAY #53093 /* ~«Возвращайся — я помогу тебе, чем смогу...» Равель дарит тебе последнюю улыбку — ужасный оскал из желтых клыков. Черноватый язык выскальзывает из рта и задерживается, как бы поддразнивая. «Но, в конце концов, останется один вопрос...»~ */
  IF ~~ THEN REPLY #53094 /* ~«О чем ты, Равель?»~ */ GOTO 20
  IF ~~ THEN REPLY #53095 /* ~Позволить переживанию продолжаться...~ */ GOTO 3
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #53096 /* ~«Только один вопрос, который я задам...» Глаза Равель вспыхивают пламенем, озаряя ее лицо и делая его кроваво-красным. «Что может изменить сущность человека?»~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #53098 /* ~От этого вопроса по тебе, словно гром, проходит дрожь, и ты чувствуешь, будто *горишь*...~ */
  IF ~~ THEN REPLY #53099 /* ~Позволить переживанию продолжаться...~ */ GOTO 3
END

IF ~~ THEN BEGIN 22 // from: 13.4 14.3 15.3 16.4 17.3 18.4
  SAY #53100 /* ~«О камнях и переживаниях поведает Равель, но не о том, как она с тобой разговаривает, — говорит она успокаивающе. — Много у Равель ветвей и переплетений, много *тайн*. Ты мне нужен, и мне нужно, чтобы ты знал это».~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53101 /* ~«О какой двери ты говоришь?»~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53102 /* ~«О какой двери ты говоришь?»~ */ GOTO 15
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53103 /* ~«Равель, я знаю, что ключ — это часть тебя, но я не знаю, как его найти...»~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53104 /* ~«О каком ключе ты говоришь?»~ */ GOTO 16
  IF ~~ THEN REPLY #53105 /* ~«Когда ты сказала 'раскрыть ключ', что ты имела в виду?»~ */ GOTO 18
  IF ~~ THEN REPLY #53106 /* ~«Прощай, Равель».~ */ GOTO 19
END
