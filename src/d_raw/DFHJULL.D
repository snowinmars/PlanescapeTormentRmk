// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFHJULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DFHJULL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from: 100.0
  SAY #2913 /* ~«Благодаря тебе, для меня все кончено! Они буду приходить снова и снова... о, я нашлю на вас мучения... ой... прости. Я сказал, не подумав».~ */
  IF ~~ THEN REPLY #2914 /* ~«Хорошо. Мне нужно кое-что из твоих припасов. Что у тебя есть?»~ */ GOTO 2
  IF ~~ THEN REPLY #54881 /* ~«Надеюсь, что это так. У меня к тебе пара вопросов...»~ */ GOTO 7
  IF ~~ THEN REPLY #54882 /* ~«Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 99.0
  SAY #54883 /* ~ «Я чую на тебе вонь предательства. Я чувствую и слышу приближение моих братьев, идущих, чтобы забрать меня обратно в Баатор... вон отсюда, клятвопреступник! Я отдал тебе все, что мог! Больше мне нечего дать!»~ */
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #54884 /* ~«Правда больше ничего нет?»~ */ GOTO 2
  IF ~~ THEN REPLY #54885 /* ~«У меня всего лишь еще несколько вопросов к тебе...»~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54886 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54887 /* ~«Тогда прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54888 /* ~«Тогда прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.4
  SAY #54889 /* ~Нечистый застывает. «Э... ничего ценного. Ну, там, пустяковый амулет, или еще какая безделушка для тебя найдется... если они тебе правда нужны, то да, можешь их получить... в ином случае...»~ */
  IF ~~ THEN REPLY #54890 /* ~«Что у тебя есть?»~ */ GOTO 3
  IF ~~ THEN REPLY #54891 /* ~«Забудь. Просто ответь мне на пару вопросов».~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54892 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54893 /* ~«Забудь. Прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54894 /* ~«Забудь. Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #54895 /* ~«Фе! Будь ты трижды проклят, смертный! Лучше бы тебе молиться, чтоб у дэва в жилах текла вечность, потому что если это не так, я позабочусь о том, чтобы ты вернул мне все, и вовсе не магией... Рррррк... гнннн... о, нет-нет, я не имел в виду ничего плохого... беру свои дурные слова обратно... я не имел в виду ничего плохого...»~ */
  IF ~~ THEN REPLY #54896 /* ~«Хорошо. Давай их сюда. Сейчас же».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54897 /* ~«Если они не нужны тебе, Раздвоенный Язык, я мог бы ими воспользоваться».~ */ GOTO 5
  IF ~~ THEN REPLY #54898 /* ~«Забудь, Раздвоенный Язык. Лучше ответь на вопросы...»~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54899 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54900 /* ~«Тогда прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54901 /* ~«Тогда прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0
  SAY #54902 /* ~«Проклятый корыстолюбец... конечно, ты можешь взглянуть на мои запасы. На что бы ты хотел посмотреть?»~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54903 /* ~Осмотреть суровый на вид боевой топор: «Что это?»~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54904 /* ~Осмотреть шнурок с узелками: «Это еще что?»~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54905 /* ~Осмотреть зеленый леденец: «Что это?»~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54906 /* ~Осмотреть нож из зеленой стали: «Что это?»~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54907 /* ~Осмотреть кинжал зеленого оттенка: «Что это?»~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54908 /* ~Осмотреть копошащихся насекомых: «Что это?»~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54909 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 20
  IF ~~ THEN REPLY #54910 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54911 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54912 /* ~«Ничего. Прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54913 /* ~«Ничего. Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #54914 /* ~«Арг! Мне эти вещи всегда пригодятся! Особенно против орды нечисти, которых ты так бездумно привел к моей двери!»~ */
  IF ~~ THEN REPLY #54915 /* ~«Очень жаль. Давай их сюда».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54916 /* ~«Тогда пусть остаются у тебя».~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #54917 /* ~«Фе! Да ты щедр, словно те трижды-проклятые дэва из Элизиума. Чего еще тебе нужно от бедного Фьюла?»~ */
  IF ~~ THEN REPLY #54918 /* ~«Если подумать, давай-ка поглядим на твои запасы».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #54919 /* ~«Просто ответь на несколько вопросов...»~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54920 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54921 /* ~«Пока ничего. Прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54922 /* ~«Пока ничего. Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 0.1 1.1 2.1 3.2 4.7 6.1 9.0 10.0 11.0 12.0 13.7 14.7 15.7 16.7 17.7 18.7 19.7 20.13 21.2 22.2 23.1 24.0 25.0
  SAY #54923 /* ~Он стискивает зубы. «Чем еще я могу тебе помочь?»~ */
  IF ~  Global("Curst_Portal","GLOBAL",0)
~ THEN REPLY #54924 /* ~«Как мне выбраться из этого кратера?»~ */ DO ~SetGlobal("Curst_Portal","GLOBAL",1)
~ JOURNAL #66806 /* ~Раздвоенный Язык сказал мне, что портал из кратера, тот, который вернет меня в Проклятый, находится под копчиком громадного скелета. Он выразил радость по поводу того, что мне придется пройти через его зад.~ */ GOTO 9
  IF ~  Global("Curst_Portal","GLOBAL",1)
~ THEN REPLY #54925 /* ~«Еще раз, как мне отсюда выбраться?»~ */ GOTO 9
  IF ~~ THEN REPLY #54926 /* ~«Расскажи мне о Триасе».~ */ GOTO 10
  IF ~~ THEN REPLY #54927 /* ~«Так почему баатезу преследуют тебя?»~ */ GOTO 11
  IF ~~ THEN REPLY #54928 /* ~«У тебя есть чем... поделиться со мной?»~ */ GOTO 2
  IF ~~ THEN REPLY #54929 /* ~«Зачем ты прячешься в этом кратере?»~ */ JOURNAL #66807 /* ~Раздвоенный Язык сказал мне, скрывается в кратере и живет в скелете потому, что магия костей Уль-Гориса защищает от магического обнаружения, и поэтому он может укрыться от тех, кто желает ему зла.~ */ GOTO 12
  IF ~~ THEN REPLY #47138 /* ~«Мне нужно место для отдыха».~ */ GOTO 101
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54931 /* ~«Пока — ничем. Прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54932 /* ~«Пока — ничем. Прощай».~ */ GOTO 8
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54931 /* ~«Пока — ничем. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.4 2.4 3.5 4.10 6.4 7.8 9.3 10.3 11.3 12.3 13.10 14.10 15.10 16.10 17.10 18.10 19.10 20.16 21.5 22.5 23.4
  SAY #54933 /* ~«Ха! Какую же беду ты принесешь в следующий раз? Такие, как ты, всегда возвращаются... фе!»~ */
  IF ~~ THEN REPLY #54934 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1
  SAY #54935 /* ~«Фе... это значит, что ты снова оставишь меня наедине с моим одиночеством? Тогда я с величайшей радостью заявляю, что портал находится под задней частью костей этого существа. Он вернет тебя в тот жалкий сползающий городишко, Проклятый, откуда ты пришел, и я даже готов предложить тебе еще парочку подходящих мест».~ */
  IF ~~ THEN REPLY #54936 /* ~«Спасибо. У меня еще несколько вопросов...»~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54937 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54938 /* ~«Тогда прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54939 /* ~«Тогда прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #54940 /* ~«Это скрытное псевдодитя света! Этот презренный... аггг... я не против его предательской, лживой, не уважающей закон сущности! Фе! Он обманщик, смертный, и ты не можешь доверять ему ни на йоту. Конечно же, я заявляю это всерьез, как говорится, — Раздвоенный Язык сплевывает на землю, — от всего сердца. Его обман стоил мне вечности... если только он не умрет». Его зубастая ухмылка на удивление полна надежды.~ */
  IF ~~ THEN REPLY #54941 /* ~«У меня еще несколько вопросов...»~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54942 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54943 /* ~«Тогда прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54944 /* ~«Тогда прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #54945 /* ~«Фе... в своих книгах они стремятся к равновесию, устранению несправедливости, обеспечению всеобщего порядка. Мое существование, вдалеке от их взоров, портит то совершенство, которого они пытаются достигнуть на пути зла».~ */
  IF ~~ THEN REPLY #54946 /* ~«У меня еще несколько вопросов...»~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54947 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54948 /* ~«Тогда прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54949 /* ~«Тогда прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 7.5
  SAY #54950 /* ~«Это скелет Уль-Гориса, отца гористро. Это живые осадные башни, похожие на медведей, джаггернауты хаоса, огромные, практически неодолимые, с высокой устойчивостью к магии... кости Уль-Гориса в кратере, где он погиб, излучают достаточно энергии, чтобы предотвратить мое обнаружение с помощью магии. Фе!»~ */
  IF ~~ THEN REPLY #54951 /* ~«У меня еще несколько вопросов...»~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54952 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54953 /* ~«Тогда прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54954 /* ~«Тогда прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 4.0 14.1 15.1 16.1 17.1 18.1 19.0
  SAY #54955 /* ~«Фе... Это Дар ненависти, отличное оружие для такого как ты, — он посмеивается. — Не думаю, что ты его захочешь взять... на него наложено проклятье. Может, передумаешь?..»~ */
  IF ~~ THEN REPLY #54956 /* ~«Я все равно возьму его».~ */ DO ~GiveItem("HateGift",Protagonist)
~ GOTO 19
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54957 /* ~Осмотреть шнурок с узелками: «Это еще что?»~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54958 /* ~Осмотреть зеленый леденец: «Что это?»~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54959 /* ~Осмотреть нож из зеленой стали: «Что это?»~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54960 /* ~Осмотреть кинжал зеленого оттенка: «Что это?»~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54961 /* ~Осмотреть копошащихся насекомых: «Что это?»~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54962 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 20
  IF ~~ THEN REPLY #54963 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54964 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54965 /* ~«Ничего. Прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54966 /* ~«Ничего. Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 4.1 13.1 15.2 16.2 17.2 18.2 19.1
  SAY #54967 /* ~«Эта старая штуковина? Фе! Это Гордиев узел. Разрежь его, и станешь вдвое лучшим лидером, хе-хе. И, конечно же, за это придется заплатить свою цену — с этим я, к счастью, ничего поделать не могу».~ */
  IF ~~ THEN REPLY #54968 /* ~«Я все равно возьму его».~ */ DO ~GiveItem("GordKnot",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54969 /* ~Осмотреть суровый на вид боевой топор: «Что это?»~ */ GOTO 13
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54970 /* ~Осмотреть зеленый леденец: «Что это?»~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54971 /* ~Осмотреть нож из зеленой стали: «Что это?»~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54972 /* ~Осмотреть кинжал зеленого оттенка: «Что это?»~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54973 /* ~Осмотреть копошащихся насекомых: «Что это?»~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54974 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 20
  IF ~~ THEN REPLY #54975 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54976 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54977 /* ~«Ничего. Прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54978 /* ~«Ничего. Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 4.2 13.2 14.2 16.3 17.3 18.3 19.2
  SAY #54979 /* ~Он вздыхает. «Это гадюкина слеза. Положи ее в рот, и будешь целоваться как гадюка — исполненный яда и ненависти».~ */
  IF ~~ THEN REPLY #54980 /* ~«Беру».~ */ DO ~GiveItem("AddrTear",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54981 /* ~Осмотреть суровый на вид боевой топор: «Что это?»~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54982 /* ~Осмотреть шнурок с узелками: «Это еще что?»~ */ GOTO 14
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #54983 /* ~Осмотреть нож из зеленой стали: «Что это?»~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54984 /* ~Осмотреть кинжал зеленого оттенка: «Что это?»~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54985 /* ~Осмотреть копошащихся насекомых: «Что это?»~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54986 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 20
  IF ~~ THEN REPLY #54987 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #54988 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #54989 /* ~«Ничего. Прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #54990 /* ~«Ничего. Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 16 // from: 4.3 13.3 14.3 15.3 17.4 18.4 19.3
  SAY #54991 /* ~«Напоминание о моей жизни в Бааторе — нож, вырезанный из бааторийской зеленой стали, одного из самых прочных известных мне материалов. Фе! Забирай мое прошлое, и покончим с этим!»~ */
  IF ~~ THEN REPLY #54992 /* ~«Беру. Однако не уверен, что я на этом закончил».~ */ DO ~GiveItem("GSKnife",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #54993 /* ~Осмотреть суровый на вид боевой топор: «Что это?»~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #54994 /* ~Осмотреть шнурок с узелками: «Это еще что?»~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #54995 /* ~Осмотреть зеленый леденец: «Что это?»~ */ GOTO 15
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #54996 /* ~Осмотреть кинжал зеленого оттенка: «Что это?»~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #54997 /* ~Осмотреть копошащихся насекомых: «Что это?»~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #54998 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 20
  IF ~~ THEN REPLY #54999 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55000 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55001 /* ~«Ничего. Прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55002 /* ~«Ничего. Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 4.4 13.4 14.4 15.4 16.4 18.5 19.4
  SAY #55003 /* ~«Эта старинная штука? Фе! Это всего лишь кинжал из бааторийской стали. Все еще острый. Это вовсе не то, что тебе нужно, поверь».~ */
  IF ~~ THEN REPLY #55004 /* ~«Я все равно возьму его».~ */ DO ~GiveItem("GSDagger",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55005 /* ~Осмотреть суровый на вид боевой топор: «Что это?»~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55006 /* ~Осмотреть шнурок с узелками: «Это еще что?»~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55007 /* ~Осмотреть зеленый леденец: «Что это?»~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55008 /* ~Осмотреть нож из зеленой стали: «Что это?»~ */ GOTO 16
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55009 /* ~Осмотреть копошащихся насекомых: «Что это?»~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55010 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 20
  IF ~~ THEN REPLY #55014 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55015 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55016 /* ~«Ничего. Прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55017 /* ~«Ничего. Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 4.5 13.5 14.5 15.5 16.5 17.5 19.5
  SAY #55018 /* ~«Это? Это *кассеги*, паразиты, которые селятся в твоем мозгу и питаются твоей ментальной энергией без какой-либо выгоды для тебя... Фе! Проклятый контракт! Они повышают твои умственные способности — это уж точно тебе пригодится! Забирай их! Забирай!»~ */
  IF ~~ THEN REPLY #55019 /* ~«Беру».~ */ DO ~GiveItem("CerePara",Protagonist)
~ GOTO 19
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55020 /* ~Осмотреть суровый на вид боевой топор: «Что это?»~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55022 /* ~Осмотреть шнурок с узелками: «Это еще что?»~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55023 /* ~Осмотреть зеленый леденец: «Что это?»~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55024 /* ~Осмотреть нож из зеленой стали: «Что это?»~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55025 /* ~Осмотреть кинжал зеленого оттенка: «Что это?»~ */ GOTO 17
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55026 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 20
  IF ~~ THEN REPLY #55027 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55028 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55029 /* ~«Ничего. Прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55030 /* ~«Ничего. Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 13.0 14.0 15.0 16.0 17.0 18.0 21.1 22.1 23.0
  SAY #55031 /* ~«Фе! Конечно! Тебе нужно еще чего-нибудь от твоего *скромного* слуги?!»~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55032 /* ~Осмотреть суровый на вид боевой топор: «Что это?»~ */ GOTO 13
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55033 /* ~Осмотреть шнурок с узелками: «Это еще что?»~ */ GOTO 14
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55034 /* ~Осмотреть зеленый леденец: «Что это?»~ */ GOTO 15
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55035 /* ~Осмотреть нож из зеленой стали: «Что это?»~ */ GOTO 16
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55036 /* ~Осмотреть кинжал зеленого оттенка: «Что это?»~ */ GOTO 17
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55037 /* ~Осмотреть копошащихся насекомых: «Что это?»~ */ GOTO 18
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55038 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 20
  IF ~~ THEN REPLY #55039 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55040 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55041 /* ~«Ничего. Прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55042 /* ~«Ничего. Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 20 // from: 4.6 13.6 14.6 15.6 16.6 17.6 18.6 19.6 21.0 22.0
  SAY #55043 /* ~«Ба! Ты лишаешь меня всего моего имущества! Нужны заклинания? Фе! Это у меня есть, кровопийца!» Он скороговоркой произносит список заклинаний.~ */
  IF ~  GlobalLT("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55046 /* ~«Как насчет Удаления проклятия?»~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
GiveItemCreate("SPWI409",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55047 /* ~«Дай-ка мне еще одно Удаление проклятия»~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
~ GOTO 22
  IF ~  GlobalLT("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55048 /* ~«Сфера неуязвимости может пригодиться. Давай-ка ее».~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
GiveItemCreate("SPWI602",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55049 /* ~«У тебя еще остались Сферы неуязвимости?»~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
~ GOTO 22
  IF ~  GlobalLT("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55050 /* ~«Как насчет Бури цепных молний?»~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
GiveItemCreate("SPWI604",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55051 /* ~«Хорошо бы еще одну Бурю цепных молний...»~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Acid","AR1101",0)
~ THEN REPLY #55052 /* ~«Кислотная буря — звучит опасно. Давай-ка ее».~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
GiveItemCreate("SPWI701",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Acid","AR1101",1)
~ THEN REPLY #55053 /* ~«Кислотная буря. Давай ее».~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Blade","AR1101",0)
~ THEN REPLY #55054 /* ~«Буря клинков? Впечатляющее название. Хочу».~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
GiveItemCreate("SPWI702",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Blade","AR1101",1)
~ THEN REPLY #55055 /* ~«Дай мне еще одну Бурю клинков».~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Stygian","AR1101",0)
~ THEN REPLY #55056 /* ~«Стигийская ледяная буря? Похоже, тебе слишком небезопасно держать ее при себе... лучше я заберу ее у тебя».~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
GiveItemCreate("SPWI705",Protagonist,1,1,0)
~ GOTO 21
  IF ~  Global("Fhjull_Stygian","AR1101",1)
~ THEN REPLY #55057 /* ~«Стигийская ледяная буря? Беру».~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
~ GOTO 22
  IF ~  Global("Fhjull_Curse","AR1101",3)
Global("Fhjull_Globe","AR1101",3)
Global("Fhjull_Chain","AR1101",3)
Global("Fhjull_Acid","AR1101",2)
Global("Fhjull_Blade","AR1101",2)
Global("Fhjull_Stygian","AR1101",2)
~ THEN REPLY #55058 /* ~«То есть, ничего не осталось».~ */ DO ~SetGlobal("No_Fhjull_Spell","AR1101",1)
~ GOTO 23
  IF ~~ THEN REPLY #55059 /* ~«Забудь. У меня есть еще вопросы».~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55060 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55061 /* ~«Забудь. Прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55062 /* ~«Забудь. Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.2 20.4 20.6 20.8 20.10
  SAY #55063 /* ~Его рука исчезает в странном пространстве/непространстве. Он вынимает свиток, странно похожий на мягкую человеческую кожу, и швыряет его тебе. «Фе! Забирай его, будь ты про... Забирай!»~ */
  IF ~~ THEN REPLY #55064 /* ~«Спасибо... что у тебя еще из свитков?»~ */ GOTO 20
  IF ~~ THEN REPLY #55065 /* ~«Давай еще раз поглядим на те вещи».~ */ GOTO 19
  IF ~~ THEN REPLY #55066 /* ~«Забудь. У меня есть еще вопросы».~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55067 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55068 /* ~«Забудь. Прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55070 /* ~«Забудь. Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.3 20.5 20.7 20.9 20.11
  SAY #55072 /* ~Он выдает зубастую гримасу. «Как же я все-таки рад сообщить тебе, что ты опустошил все мои запасы этого заклинания. Фе!»~ */
  IF ~~ THEN REPLY #55073 /* ~«Какие еще заклинания у тебя есть?»~ */ GOTO 20
  IF ~~ THEN REPLY #55074 /* ~«Давай еще раз поглядим на те вещи».~ */ GOTO 19
  IF ~~ THEN REPLY #55075 /* ~«Забудь. У меня есть еще вопросы».~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55076 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55078 /* ~«Забудь. Прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55080 /* ~«Забудь. Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 23 // from: 20.12
  SAY #55081 /* ~Раздвоенный Язык рычит на тебя. «Ты разрушил, уничтожил, выпотрошил одну из уникальнейших коллекций заклинаний во всей мультивселенной... даже несмотря на всю пользу, которую она тебе принесла. У меня больше нет для тебя заклинаний».~ */
  IF ~~ THEN REPLY #55082 /* ~«Давай еще раз поглядим на те вещи».~ */ GOTO 19
  IF ~~ THEN REPLY #55083 /* ~«Тогда забудь об этом. Лучше ответь на пару вопросов...»~ */ GOTO 7
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #55084 /* ~«Тогда прощай».~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #55085 /* ~«Тогда прощай».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #55086 /* ~«Тогда прощай».~ */ GOTO 8
END

IF WEIGHT #2 /* Triggers after states #: 99 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",0)
Global("Return_Fhjull","GLOBAL",0)
~ THEN BEGIN 24 // from:
  SAY #55087 /* ~«Фе! Значит, ты вернулся! И что же сказала Колонна? Что она ответила на твои скучные вопросы?»~ [FFT067] */
  IF ~~ THEN REPLY #55088 /* ~«У меня всего лишь несколько вопросов...»~ */ DO ~SetGlobal("Return_Fhjull","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #55089 /* ~«Забудь. Прощай».~ */ DO ~SetGlobal("Return_Fhjull","GLOBAL",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 99 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",0)
Global("Return_Fhjull","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #55090 /* ~«Арг! Что? ЧТО??»~ [FFT018] */
  IF ~~ THEN REPLY #55091 /* ~«У меня всего лишь несколько вопросов...»~ */ GOTO 7
  IF ~~ THEN REPLY #55094 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 95.0
  SAY #55095 /* ~«Фе! Зловоние танарри! Я чую его за лиги! Прояви хоть чуточку уважения к моему жилищу! Ты не могла найти какой-нибудь дым или кислотные испарения, чтобы заглушить свой запах? Фе! Я теперь никогда не выветрю отсюда вонь танарри. Он привлечет баатезу со всех планов».~ */
  IF ~~ THEN EXTERN ~DMORTE~ 594
END

IF ~~ THEN BEGIN 27 // from:
  SAY #55096 /* ~«О, это не просто танарри — это танаррийская шлюха, вошедшая в мой дом... хуже и быть не может. Заходите! Заходите! Прошу, мой дом — ваш дом! — он в отчаянье машет руками. — И почему вы не пригласили в мой дом всех оставшихся гарпий из Бездны, чтобы помучить меня?»~ */
  IF ~~ THEN EXTERN ~DGRACE~ 192
END

IF ~~ THEN BEGIN 28 // from: 96.0
  SAY #55097 /* ~«Фе! Зловоние танарри! Я чую его за лиги! Прояви хоть чуточку уважения к моему жилищу! Ты не могла найти какой-нибудь дым или кислотные испарения, чтобы заглушить свой запах? Фе! Я теперь никогда не выветрю отсюда вонь танарри. Он привлечет баатезу со всех планов».~ */
  IF ~~ THEN EXTERN ~DGRACE~ 192
END

IF ~~ THEN BEGIN 29 // from:
  SAY #55098 /* ~«Вы пришли убить меня?! Мучить меня? Если так, то знайте, что у меня в запасе еще достаточно сил!»~ */
  IF ~~ THEN REPLY #55100 /* ~«Я пришел не для того, чтобы убить тебя».~ */ GOTO 45
  IF ~~ THEN REPLY #55101 /* ~«Я пришел не для того, чтобы мучить тебя».~ */ GOTO 44
  IF ~~ THEN REPLY #55103 /* ~«Мне нужны только ответы на несколько вопросов...»~ */ GOTO 43
  IF ~~ THEN REPLY #55104 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 98.0
  SAY #55187 /* ~«Зачем тебе без конца осквернять мой дом гнилой вонью танарри? Задавай свои вопросы и убирайся!»~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55188 /* ~«Расскажи мне о Триасе».~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55381 /* ~«Расскажи мне о Триасе».~ */ GOTO 55
  IF ~~ THEN REPLY #55389 /* ~«Что случилось с твоими крыльями?»~ */ GOTO 49
  IF ~~ THEN REPLY #55391 /* ~«Расскажи мне о себе».~ */ GOTO 56
  IF ~~ THEN REPLY #55392 /* ~«Где находится это место?»~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55394 /* ~«Мне сказали, что тебе что-то известно о моей смертности. Ее у меня украли».~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55397 /* ~«Мне сказали, что тебе что-то известно о моей смертности. Ее у меня украли».~ */ GOTO 64
  IF ~~ THEN REPLY #55400 /* ~«Чем ты занимаешься?»~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55404 /* ~«Мне нужна помощь».~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55406 /* ~«Расскажи мне еще раз о Колонне и как туда добраться».~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~«Мне нужно место для отдыха».~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~«Забудь. Прощай».~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 98 96 95 99 100 even though they appear after this state */
~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN BEGIN 31 // from:
  SAY #55413 /* ~«Я так рад снова тебя видеть. Я бы радовался не меньше, если бы ты скорчился и помер».~ [FFT044A] */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55416 /* ~«Расскажи мне о Триасе».~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55419 /* ~«Расскажи мне о Триасе».~ */ GOTO 55
  IF ~~ THEN REPLY #55422 /* ~«Расскажи мне о себе».~ */ GOTO 55
  IF ~~ THEN REPLY #55423 /* ~«Что случилось с твоими крыльями?»~ */ GOTO 49
  IF ~~ THEN REPLY #55424 /* ~«Где находится это место?»~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55425 /* ~«Мне сказали, что тебе что-то известно о моей смертности. Ее у меня украли».~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55426 /* ~«Мне сказали, что тебе что-то известно о моей смертности. Ее у меня украли».~ */ GOTO 64
  IF ~~ THEN REPLY #55428 /* ~«Чем ты занимаешься?»~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55430 /* ~«Мне нужна помощь».~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55433 /* ~«Расскажи мне еще раз о Колонне и как туда добраться».~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~«Мне нужно место для отдыха».~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 97.0
  SAY #55440 /* ~«Чего тебе нужно от меня, какие уловки ты приготовил на этот раз?»~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55441 /* ~«Расскажи мне о Триасе».~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55443 /* ~«Расскажи мне о Триасе».~ */ GOTO 55
  IF ~~ THEN REPLY #55444 /* ~«Расскажи мне о себе».~ */ GOTO 56
  IF ~~ THEN REPLY #55446 /* ~«Что случилось с твоими крыльями?»~ */ GOTO 49
  IF ~~ THEN REPLY #55447 /* ~«Где находится это место?»~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55448 /* ~«Мне сказали, что тебе что-то известно о моей смертности. Ее у меня украли».~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55451 /* ~«Мне сказали, что тебе что-то известно о моей смертности. Ее у меня украли».~ */ GOTO 64
  IF ~~ THEN REPLY #55455 /* ~«Чем ты занимаешься?»~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55457 /* ~«Мне нужна помощь».~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55460 /* ~«Расскажи мне еще раз о Колонне и как туда добраться».~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~«Мне нужно место для отдыха».~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~«Забудь. Прощай».~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 97 98 96 95 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 33 // from:
  SAY #55539 /* ~«Фе! Кто это там?! Вы пришли убить меня?! Мучить меня? Если так, то знайте, что у меня в запасе еще достаточно сил!»~ [FFT066] */
  IF ~~ THEN REPLY #55541 /* ~«Ты Фьюл Раздвоенный Язык?»~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #55543 /* ~«Фе! Конечно, это я! Ты должен был это знать, раз врываешься в именно *этот* череп монстра из всех черепов, раскиданных по бескрайним Внешним землям... или это случай привел идиота в моей двери? — кажется, его осенило. — Ты должен поклясться, что НИКОМУ не выдашь, где я нахожусь!»~ */
  IF ~~ THEN REPLY #55554 /* ~Правда: «Клянусь».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fhjull_1","GLOBALLaw",1)
~ GOTO 35
  IF ~~ THEN REPLY #55555 /* ~«Я не буду этого делать».~ */ GOTO 36
  IF ~~ THEN REPLY #61261 /* ~Ложь: «Клянусь».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fhjull_1","GLOBALLaw",-1)
SetGlobal("Lawful_Fhjull_1","GLOBAL",1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.2
  SAY #55556 /* ~Он заметно расслабляется. «И как же ты нашел это место, а?»~ */
  IF ~~ THEN REPLY #55558 /* ~«Дэва Триас сказал, что ты можешь ответить мне на несколько вопросов».~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #55560 /* ~«Будь ты проклят! Как будто мне не все равно! Фе! Как ты нашел это место?!»~ */
  IF ~~ THEN REPLY #55562 /* ~«Дэва Триас сказал, что ты можешь ответить мне на несколько вопросов».~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #55563 /* ~Он застывает. «Триас? Тебя послал Триас *Предатель*? — его когти стискиваются и разжимаются. — Это будет его последнее оскорбление! Лицемерный ублюдок! Убей его, и я вознагражу тебя всем, что есть в моих запасах! Спусти с него шкуру и принеси мне, чтобы я мог носить ее, как плащ... урррк!»~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMEGETHIT)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #55565 /* ~«То есть... нет-нет... не трогай дэва. Было бы неправильно так поступить... Я ошибся. Ошибся».~ */
  IF ~~ THEN REPLY #55567 /* ~«Что тебе сделал Триас?»~ */ GOTO 39
  IF ~~ THEN REPLY #55568 /* ~«Это все, конечно, интересно, но у меня есть несколько вопросов, на которые я хочу получить ответы».~ */ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 30.0 31.0 32.0 38.0 43.0 46.0 47.0 56.0 87.0
  SAY #55569 /* ~«Фе! Годы службы адским адвокатом! Усердие и организованность. Я никогда не оспаривал начальство. И делал ВСЕ, что мне скажут. Когда мои подчиненные не справлялись, я наказывал их самым жестоким и изобретательным способом».~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #55571 /* ~«ПОТОМ... один неверный шаг — и все пошло прахом! А все из-за СЛУЧАЯ. ХАОСА. СЛУЧАЙНОСТИ. А низшие расы еще удивляются, почему баатезу хотят, чтобы мультивселенная была упорядоченным механизмом, — он останавливается, шипя от гнева. — Дэва солгал. Он *солгал*. Триас Предатель обманом заставил меня подписать контракт, а я, ослепленный возможностью поймать его, угодил прямо в его ловушку».~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #55573 /* ~«Если он умрет, контракт закончит свое действие... но мне не удалось его разыскать, а если даже и удалось, то как мне причинить ему боль?! Что мне делать? Даже от этих предательских мыслей мой мозг начинает гореть. Я был *так* уверен в том, что я — образец лицемерия. Та недальновидная жадность стоила мне веков славных вероломств, и похоронила меня в этой канаве доброжелательности. Тьху».~ */
  IF ~  !NearbyDialog("DVhail")
~ THEN DO ~SetGlobal("Fhjull_Charity","GLOBAL",1)
~ JOURNAL #56895 /* ~Я обнаружил Фьюла Раздвоенного Языка, доброжелательного нечистого духа. Похоже, что он заключил договор с Триасом, которого он называет Триасом Предателем. Теперь он обречен делать добрые дела, помогать нуждающимся. Хотя он и не рад этому.~ */ GOTO 42
  IF ~  NearbyDialog("DVhail")
~ THEN DO ~SetGlobal("Fhjull_Charity","GLOBAL",1)
~ JOURNAL #56895 /* ~Я обнаружил Фьюла Раздвоенного Языка, доброжелательного нечистого духа. Похоже, что он заключил договор с Триасом, которого он называет Триасом Предателем. Теперь он обречен делать добрые дела, помогать нуждающимся. Хотя он и не рад этому.~ */ EXTERN ~DVHAIL~ 153
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #55574 /* ~«А теперь я обречен творить добрые дела, помогать нуждающимся. Фе! Вечные муки Триасу! Чтоб его оспа побила за его чертову помощь! Чтоб ему на головы высыпались все навозные кучи Маладомини!»

Он еще некоторое время продолжает свои тирады, затем снова переключается на тебя, и произносит сквозь стиснутые зубы: «Теперь мой договор с дэва велит мне спросить, что я могу для тебя сделать. Ты пришел мучить меня? Убить меня?»~ */
  IF ~~ THEN REPLY #55590 /* ~«Я пришел лишь в поисках знаний».~ */ GOTO 43
  IF ~~ THEN REPLY #55575 /* ~«Я пришел не для того, чтобы мучить тебя».~ */ GOTO 44
  IF ~~ THEN REPLY #55591 /* ~«Я пришел не для того, чтобы убить тебя».~ */ GOTO 45
  IF ~~ THEN REPLY #55592 /* ~«Нет. На самом деле, я уже ухожу».~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 29.2 38.1 42.0 50.2 55.0 57.2 72.7 77.7 79.7 83.1 84.1 88.1 92.1 93.2 94.0
  SAY #55593 /* ~«О, ЗАМЕЧАТЕЛЬНО».~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55594 /* ~«Расскажи мне о Триасе».~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55595 /* ~«Расскажи мне о Триасе».~ */ GOTO 55
  IF ~~ THEN REPLY #55596 /* ~«Расскажи мне о себе».~ */ GOTO 56
  IF ~~ THEN REPLY #55598 /* ~«Что случилось с твоими крыльями?»~ */ GOTO 49
  IF ~~ THEN REPLY #55600 /* ~«Где находится это место?»~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55601 /* ~«Мне сказали, что тебе что-то известно о моей смертности. Ее у меня украли».~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55603 /* ~«Мне сказали, что тебе что-то известно о моей смертности. Ее у меня украли».~ */ GOTO 64
  IF ~~ THEN REPLY #55606 /* ~«Чем ты занимаешься?»~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55607 /* ~«Мне нужна помощь».~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55609 /* ~«Расскажи мне еще раз о Колонне и как туда добраться».~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~«Мне нужно место для отдыха».~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 29.1 42.1
  SAY #55614 /* ~«Фе! Посмотрим, посмотрим! Если ты не намерен убить меня или причинить мне боль, боюсь, что пытки эти еще более утонченные... а они, безусловно, самые худшие из всех».~ */
  IF ~~ THEN REPLY #55615 /* ~«Мне нужны лишь ответы на несколько вопросов...»~ */ GOTO 47
  IF ~~ THEN REPLY #55617 /* ~«Ладно, забудь об этом. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 29.0 42.2
  SAY #55620 /* ~«Фе! Только попробуй! Тогда уж мог бы положить конец этой оболочке существования!»~ */
  IF ~~ THEN REPLY #55622 /* ~«Мне нужны лишь ответы на несколько вопросов...»~ */ GOTO 46
  IF ~~ THEN REPLY #55623 /* ~«От чего твоя жизнь так несносна?»~ */ GOTO 48
  IF ~~ THEN REPLY #55624 /* ~«Тогда забудь об этом. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.0 49.2 51.1 53.1 54.4 56.3 63.1 71.0 73.7 74.7 76.7 78.7 82.2 86.1 90.0
  SAY #55626 /* ~«И как этим БОЛВАНАМ удается так много болтать? — он взмахивает рукой. — Болтают, болтают. Фе!»~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55627 /* ~«Расскажи мне о Триасе».~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55630 /* ~«Расскажи мне о Триасе».~ */ GOTO 55
  IF ~~ THEN REPLY #55632 /* ~«Расскажи мне о себе».~ */ GOTO 56
  IF ~~ THEN REPLY #55633 /* ~«Что случилось с твоими крыльями?»~ */ GOTO 49
  IF ~~ THEN REPLY #55634 /* ~«Где находится это место?»~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55635 /* ~«Мне сказали, что тебе что-то известно о моей смертности. Ее у меня украли».~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55636 /* ~«Мне сказали, что тебе что-то известно о моей смертности. Ее у меня украли».~ */ GOTO 64
  IF ~~ THEN REPLY #55640 /* ~«Чем ты занимаешься?»~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55641 /* ~«Мне нужна помощь».~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55643 /* ~«Расскажи мне еще раз о Колонне и как туда добраться».~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~«Мне нужно место для отдыха».~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 44.0 52.1 60.1 70.3 75.7 80.13 81.2 85.0 87.2 89.0 91.1
  SAY #55649 /* ~«Фе. Говори. Выкладывай».~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55651 /* ~«Расскажи мне о Триасе».~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55652 /* ~«Расскажи мне о Триасе».~ */ GOTO 55
  IF ~~ THEN REPLY #55654 /* ~«Расскажи мне о себе».~ */ GOTO 56
  IF ~~ THEN REPLY #55656 /* ~«Что случилось с твоими крыльями?»~ */ GOTO 49
  IF ~~ THEN REPLY #55658 /* ~«Где находится это место?»~ */ GOTO 50
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #55659 /* ~«Мне сказали, что тебе что-то известно о моей смертности. Ее у меня украли».~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #55661 /* ~«Мне сказали, что тебе что-то известно о моей смертности. Ее у меня украли».~ */ GOTO 64
  IF ~~ THEN REPLY #55663 /* ~«Чем ты занимаешься?»~ */ GOTO 52
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55665 /* ~«Мне нужна помощь».~ */ GOTO 53
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #55667 /* ~«Расскажи мне еще раз о Колонне и как туда добраться».~ */ GOTO 54
  IF ~~ THEN REPLY #15954 /* ~«Мне нужно место для отдыха».~ */ GOTO 101
  IF ~~ THEN REPLY #55411 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY #55671 /* ~Он закатывает глаза. «Если бы тебе доводилось видеть величие Баатора, гулять по его темным замкам и посещать ревущие стальные города, покрытые зловонным дымом, ты бы не спрашивал. Фе!»~ */
  IF ~~ THEN REPLY #55672 /* ~«Ладно. Ответь мне на пару вопросов...»~ */ GOTO 46
  IF ~~ THEN REPLY #55674 /* ~«Ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 30.2 31.3 32.3 43.3 46.3 47.3
  SAY #55676 /* ~«О, да. Ну разве они не прекрасны?.. Фе! Их первыми отобрали у меня перед изгнанием. Прежде чем я был вынужден бежать из горящих залов моего народа, крылья взял себе в качестве трофея убогий *абишай*, на знамена для Кровавой войны. Мои рога обломали, из одного из них сделали сосуд для моего повелителя Бела, будь проклято его имя во всех планах».~ */
  IF ~~ THEN REPLY #55677 /* ~«Почему это произошло?»~ */ GOTO 55
  IF ~~ THEN REPLY #55678 /* ~«Что ты можешь рассказать о Кровавой войне?»~ */ GOTO 84
  IF ~~ THEN REPLY #55679 /* ~«Ответь мне еще на несколько вопросов...»~ */ GOTO 46
  IF ~~ THEN REPLY #55680 /* ~«Спасибо... Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 30.4 31.4 32.4 43.4 46.4 47.4
  SAY #55682 /* ~«Фе. Чертов кратер во Внешних землях, который отражает пустоту и тщетность моей жизни. Фе. Мне немного нужно. Костный мозг животных служит мне пищей, а особенная энергетика этого места защищает меня от обнаружения глупцами, ищущими меня с помощью магии... тем не менее, идиотам все еще удается добираться сюда».~ */
  IF ~~ THEN REPLY #55684 /* ~«Что это за существо?»~ */ GOTO 85
  IF ~~ THEN REPLY #55686 /* ~«Что делает твою жизнь такой пустой?»~ */ GOTO 86
  IF ~~ THEN REPLY #55688 /* ~«Ответь мне еще на несколько вопросов...»~ */ GOTO 43
  IF ~~ THEN REPLY #55690 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 30.5 31.5 32.5 43.5 46.5 47.5 93.0
  SAY #55693 /* ~Сперва он пристально тебя рассматривает, затем отвечает: «Воспоминания прорезают мой разум, словно пустые каньоны, недочеловек. Во времена бессмертия я повстречал много разных существ... но не похоже, чтобы ты был среди них».~ */
  IF ~~ THEN REPLY #55695 /* ~«Продолжай».~ */ GOTO 57
  IF ~~ THEN REPLY #55696 /* ~«Ответь мне еще на несколько вопросов...»~ */ GOTO 46
  IF ~~ THEN REPLY #55698 /* ~«Тогда забудь об этом. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 30.7 31.7 32.7 43.7 46.7 47.7
  SAY #55700 /* ~«Я всего лишь жил своей жизнью в печальном, притупляющем боль одиночестве, пока ты не появился в этот кратер моей жизни, как незваный гость. Кратер, такая удачная метафора для моей жизни, моего существования, бледная тень жилища, которое когда-то у меня было».~ */
  IF ~~ THEN REPLY #55701 /* ~«Что с тобой случилось?»~ */ GOTO 87
  IF ~~ THEN REPLY #55702 /* ~«Ответь мне еще на несколько вопросов...»~ */ GOTO 47
  IF ~~ THEN REPLY #55703 /* ~«О, отлично. Эгоцентричное нытье. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 30.8 31.8 32.8 43.8 46.8 47.8
  SAY #55704 /* ~Он издает сдавленный хрип. «У меня есть немного... совсем немного... вещей, накопленных мной на протяжении многих лет. Они... мне дороги... но если они тебе нужны...»~ */
  IF ~~ THEN REPLY #55705 /* ~«Конечно, нужны. Посмотрим, что тут у тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fhjull_2","GLOBALGood",-1)
~ GOTO 72
  IF ~~ THEN REPLY #55706 /* ~«Ответь мне еще на несколько вопросов...»~ */ GOTO 46
  IF ~~ THEN REPLY #55707 /* ~«Ничего. Забудь об этом. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 30.9 31.9 32.9 43.9 46.9 47.9
  SAY #55708 /* ~«Что тебе нужно знать? Как туда добраться? Что? Что? Что?!»~ */
  IF ~~ THEN REPLY #55709 /* ~«Расскажи мне, что это такое».~ */ GOTO 89
  IF ~~ THEN REPLY #55710 /* ~«Скажи мне, как туда добраться»~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ GOTO 70
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55711 /* ~«И как мне вернуться после того, как я уйду?»~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,18,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55713 /* ~«Как мне вернуться от колонны?»~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ GOTO 71
  IF ~~ THEN REPLY #55716 /* ~«Ответь мне еще на несколько вопросов...»~ */ GOTO 46
  IF ~~ THEN REPLY #55721 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 30.1 31.1 31.2 32.1 43.1 46.1 47.1 49.0 56.1 87.1
  SAY #55718 /* ~«Фе! Я сказал все, что хотел сказать, насчет Предателя. Это он обрек меня на такую жизнь. Хотел бы я увидеть его кишки, свисающие с Ворот Восхода, подобно арфе небожителя... нет... нет... не желаю зла дэва. Проклятье!»~ */
  IF ~~ THEN REPLY #55724 /* ~«Тогда ответь мне еще на несколько вопросов...»~ */ GOTO 43
  IF ~~ THEN REPLY #55726 /* ~«Понятно... Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 30.3 32.2 43.2 46.2 47.2
  SAY #55732 /* ~«Когда-то я был одних из лучших адских адвокатов Баатора... и затем потерпел крах. Все перевернулось с ног на голову, все мои удачи пошли прахом. Подобные вещи заставляют меня ненавидеть случай и хаос мультивселенной еще сильнее».~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55734 /* ~«Что с тобой случилось?»~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55737 /* ~«Что с тобой случилось?»~ */ GOTO 55
  IF ~~ THEN REPLY #55740 /* ~«Почему тебе пришлось уйти?»~ */ GOTO 90
  IF ~~ THEN REPLY #55741 /* ~«Ответь мне еще на несколько вопросов...»~ */ GOTO 46
  IF ~~ THEN REPLY #55744 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 51.0
  SAY #55746 /* ~Раздвоенный Язык пожимает плечами. «Вы все для меня на одно лицо... мне кажется, я бы запомнил твое ошрамованное тело... оно как те живые картины, которые украшают галерею кож Бела в Бааторе, только в этих рубцах меньше утонченности и больше страсти».~ */
  IF ~~ THEN REPLY #55747 /* ~«Давай забудем о моих шрамах и поговорим о моей смертности, ладно?»~ */ GOTO 64
  IF ~~ THEN REPLY #55748 /* ~«Продолжай...»~ */ GOTO 58
  IF ~~ THEN REPLY #55749 /* ~«У меня еще несколько вопросов...»~ */ GOTO 43
  IF ~~ THEN REPLY #55750 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY #55751 /* ~«Жестокость велика, близка к приемлемому уровню, но рубцы нанесены с почти танаррийской грубостью, без всякого беспокойства о том, чтобы причинить максимум боли. Художник-баатезу был бы намного более предан следованию путям боли в теле. Некоторые из ран кажутся смертельными, другие выглядят так, будто это слепой мясник нарезал отбивные из человечины».~ */
  IF ~  NearbyDialog("DGrace")
~ THEN GOTO 59
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #60449 /* ~«Что?..»~ */ DO ~SetGlobal("Fhjull_Art","AR1101",1)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #55753 /* ~«Фе. Мне временами становится не по себе от людского искусства. Столько растраченного потенциала».~ */
  IF ~~ THEN EXTERN ~DGRACE~ 193
END

IF ~~ THEN BEGIN 60 // from: 58.1
  SAY #55754 /* ~«Фе. Мне временами становится не по себе от людского искусства. Столько растраченного потенциала».~ */
  IF ~~ THEN REPLY #55755 /* ~«Давай забудем о моих шрамах и поговорим о моей смертности, ладно?»~ */ GOTO 64
  IF ~~ THEN REPLY #55756 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 47
  IF ~~ THEN REPLY #55757 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #55758 /* ~«Фе! Сказать, что танарри грубы, значит оскорбить грубость. Любая меньшая раса, наслаждающаяся хаосом, позволяющая себе быть затянутой и тонуть в волнах застоя, называя все это 'злом', не может называться расой. Это звери».~ */
  IF ~~ THEN EXTERN ~DGRACE~ 194
END

IF ~~ THEN BEGIN 62 // from:
  SAY #55759 /* ~«Фе и дважды фе! Звери-танарри хотят стереть закон и порядок с лица зла! Непростительно! Недопустимо! Я не могу...»~ */
  IF ~~ THEN DO ~SetGlobal("Fhjull_Art","AR1101",1)
~ EXTERN ~DGRACE~ 195
END

IF ~~ THEN BEGIN 63 // from:
  SAY #55760 /* ~«Фе! Ты говоришь это только потому, что ты... та, кем ты являешься, — он делает ей знак бровями и пренебрежительно махает рукой. — По крайней мере, я все еще могу позволить себе быть циничным».~ */
  IF ~~ THEN REPLY #55761 /* ~«Отлично. Давай лучше поговорим о моей смертности, а не о моих шрамах».~ */ GOTO 64
  IF ~~ THEN REPLY #55762 /* ~«Я бы хотел задать еще пару вопросов...»~ */ GOTO 46
  IF ~~ THEN REPLY #55763 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 30.6 31.6 32.6 43.6 46.6 47.6 57.0 60.0 63.0
  SAY #55764 /* ~«Хорошо, хорошо, — он чешет голову. — Если я правильно припоминаю — а помню я не все, благодаря тому проклятому дэва! — я слышал о случаях, подобных твоему. Выходит, ты бессмертен, не так ли?» ~ */
  IF ~~ THEN REPLY #55765 /* ~«Да».~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #55766 /* ~«Если это так, то даже сама смерть перестала быть священной. Фе. В мое время смертные оставались смертными и знали свое место... теперь у каждого из них, и у его матери эта болезнь вечной скуки. Нам следовало бы собраться, пригласить всех смертных со всех планов и предложить им контракты на бессмертие... это сохранило бы нам, трудолюбивым баатезу, немало усилий. Фе».~ */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #55767 /* ~«Ты же знаешь, что если бы все были бессмертными, вся эта система просящих превратилась бы в славную кучу дерьма. Фе. Бессмертие — не погремушка, чтобы давать ее таким непослушным детям как ты».~ */
  IF ~~ THEN REPLY #55768 /* ~«Как бы там ни было, расскажи мне, что ты знаешь о моей смертности».~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #55769 /* ~«Фе... как я уже говорил, я припоминаю, что где-то слышал о месте под названием Крепость сожалений, — он на миг задумывается. — Да... да, оно самое».~ */
  IF ~~ THEN REPLY #55770 /* ~«Как мне туда добраться?»~ */ GOTO 68
  IF ~~ THEN REPLY #55771 /* ~«Что ты знаешь об этом месте?»~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0 67.1
  SAY #55772 /* ~Он широко улыбается. «Рад сообщить тебе, что я НЕ знаю. Вообще! Я не могу помочь тебе добраться туда, и это так греет мне сердце. Нет. Я не могу. Помочь. Тебе. О, как же я хотел произнести эти слова. Какие же они все таки сл...»~ */
  IF ~  Global("Know_Pillar","AR1101",0)
~ THEN REPLY #55773 /* ~«Ты не знаешь кого-нибудь, кому это известно?»~ */ DO ~AddexperienceParty(350000)
SetGlobal("Know_Pillar","AR1101",1)
~ GOTO 69
  IF ~  Global("Know_Pillar","AR1101",1)
~ THEN REPLY #66919 /* ~«Ты не знаешь кого-нибудь, кому это известно?»~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0 68.1
  SAY #55774 /* ~«А? Прекрати свои перекрестные допросы! Да, да, я знаю *кое-кого*, кто мог бы это знать... в Бааторе есть колонна предателей, лжецов... и мудрецов. Несмотря на их сущность, они много чего знают. Они могут знать, где тебе искать эту Крепость сожалений». ~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #55775 /* ~«Как мне попасть в Баатор?»~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ JOURNAL #66809 /* ~Раздвоенный Язык сказал мне, что та колонна, состоящая из мудрецов, лжецов и предателей может знать ответы касательно моей пропавшей смертности. Под левой рукой гигантского скелета есть портал, который приведет меня в Баатор.~ */ EXTERN ~DMORTE~ 595
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55776 /* ~«Как мне попасть в Баатор?»~ */ DO ~SetGlobal("Portal_Open","GLOBAL",1)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 54.1 69.1
  SAY #55777 /* ~«Снаружи моего жилища есть портал. Он находится в руке этого гигантского существа. Пройди через арку, образованную левой рукой существа, и попадешь к Колонне Черепов. Отныне портал будет для тебя открыт».~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55778 /* ~«И как мне вернуться?»~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ JOURNAL #66810 /* ~Нечистый также сказал мне, как вернуться от Колонны: нужно просто найти нечто обыкновенное для среды этого плана, и оно должно вернуть меня обратно.~ */ GOTO 71
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,18,INT)
Global("Leave_Baator","GLOBAL",0)
~ THEN REPLY #55779 /* ~«Как мне вернуться от колонны?»~ */ DO ~SetGlobal("Leave_Baator","GLOBAL",1)
AddexperienceParty(100000)
~ JOURNAL #66810 /* ~Нечистый также сказал мне, как вернуться от Колонны: нужно просто найти нечто обыкновенное для среды этого плана, и оно должно вернуть меня обратно.~ */ GOTO 71
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #55780 /* ~«Как мне вернуться от колонны?»~ */ GOTO 94
  IF ~~ THEN REPLY #55781 /* ~«Спасибо. У меня есть другие вопросы...»~ */ GOTO 47
  IF ~~ THEN REPLY #61262 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 54.2 54.3 70.0 70.1
  SAY #55782 /* ~«А? Вернуться? Ну, об этом я не подумал. Чтобы вернуться из Баатора, тебе понадобятся знание и кусок зазубренного обсидиана, чтобы порезать себе язык. Знание ты получишь от Колонны. Но у тебя нет повода возвращаться сюда. Что до меня, то я больше не желаю видеть тебя».~ */
  IF ~~ THEN REPLY #55783 /* ~«Спасибо. У меня еще несколько вопросов...»~ */ GOTO 46
  IF ~~ THEN REPLY #55784 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 53.0
  SAY #55785 /* ~Он ворчит: «Я не думаю о том, чтобы придушить тебя и оставить твой труп трелонам».~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55786 /* ~Осмотреть суровый на вид боевой топор: «Что это?»~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55787 /* ~Осмотреть шнурок с узелками: «Это еще что?»~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55788 /* ~Осмотреть зеленый леденец: «Что это?»~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55789 /* ~Осмотреть нож из зеленой стали: «Что это?»~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55790 /* ~Осмотреть кинжал зеленого оттенка: «Что это?»~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55791 /* ~Осмотреть копошащихся насекомых: «Что это?»~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55792 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 80
  IF ~~ THEN REPLY #55793 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 43
  IF ~~ THEN REPLY #55794 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0 74.1 75.1 76.1 77.1 78.1 79.0
  SAY #55795 /* ~«Фе... Это Дар ненависти, отличное оружие для такого как ты, — он посмеивается. — Не думаю, что ты его захочешь взять... на него наложено проклятье. Может, передумаешь?..»~ */
  IF ~~ THEN REPLY #55796 /* ~«Я все равно возьму его».~ */ DO ~GiveItem("HateGift",Protagonist)
~ GOTO 79
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55797 /* ~Осмотреть шнурок с узелками: «Это еще что?»~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55798 /* ~Осмотреть зеленый леденец: «Что это?»~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55799 /* ~Осмотреть нож из зеленой стали: «Что это?»~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55800 /* ~Осмотреть кинжал зеленого оттенка: «Что это?»~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55801 /* ~Осмотреть копошащихся насекомых: «Что это?»~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55802 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 80
  IF ~~ THEN REPLY #55803 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 46
  IF ~~ THEN REPLY #55804 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.1 73.1 75.2 76.2 77.2 78.2 79.1
  SAY #55805 /* ~«Эта старая штуковина? Фе! Это Гордиев узел. Разрежь его, и станешь вдвое лучшим лидером, хе-хе. И, конечно же, за это придется заплатить свою цену — с этим я, к счастью, ничего поделать не могу».~ */
  IF ~~ THEN REPLY #55806 /* ~«Я все равно возьму его».~ */ DO ~GiveItem("GordKnot",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55807 /* ~Осмотреть суровый на вид боевой топор: «Что это?»~ */ GOTO 73
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55808 /* ~Осмотреть зеленый леденец: «Что это?»~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55809 /* ~Осмотреть нож из зеленой стали: «Что это?»~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55810 /* ~Осмотреть кинжал зеленого оттенка: «Что это?»~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55811 /* ~Осмотреть копошащихся насекомых: «Что это?»~ */ GOTO 78
  IF ~~ THEN REPLY #55812 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 80
  IF ~~ THEN REPLY #55813 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 46
  IF ~~ THEN REPLY #55814 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 72.2 73.2 74.2 76.3 77.3 78.3 79.2
  SAY #55815 /* ~Он вздыхает. «Это гадюкина слеза. Положи ее в рот, и будешь целоваться как гадюка — исполненный яда и ненависти».~ */
  IF ~~ THEN REPLY #55816 /* ~«Беру».~ */ DO ~GiveItem("AddrTear",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55817 /* ~Осмотреть суровый на вид боевой топор: «Что это?»~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55818 /* ~Осмотреть шнурок с узелками: «Это еще что?»~ */ GOTO 74
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55819 /* ~Осмотреть нож из зеленой стали: «Что это?»~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55820 /* ~Осмотреть кинжал зеленого оттенка: «Что это?»~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55821 /* ~Осмотреть копошащихся насекомых: «Что это?»~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55822 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 80
  IF ~~ THEN REPLY #55823 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 47
  IF ~~ THEN REPLY #55824 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 72.3 73.3 74.3 75.3 77.4 78.4 79.3
  SAY #55825 /* ~«Напоминание о моей жизни в Бааторе — нож, вырезанный из бааторийской зеленой стали, одного из самых прочных известных мне материалов. Фе! Забирай мое прошлое, и покончим с этим!»~ */
  IF ~~ THEN REPLY #55826 /* ~«Беру. Однако не уверен, что я на этом закончил».~ */ DO ~GiveItem("GSKnife",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55827 /* ~Осмотреть суровый на вид боевой топор: «Что это?»~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55828 /* ~Осмотреть шнурок с узелками: «Это еще что?»~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55829 /* ~Осмотреть зеленый леденец: «Что это?»~ */ GOTO 75
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55830 /* ~Осмотреть кинжал зеленого оттенка: «Что это?»~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55831 /* ~Осмотреть копошащихся насекомых: «Что это?»~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55835 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 80
  IF ~~ THEN REPLY #55838 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 46
  IF ~~ THEN REPLY #55840 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 72.4 73.4 74.4 75.4 76.4 78.5 79.4
  SAY #55851 /* ~«Эта старинная штука? Фе! Это всего лишь кинжал из бааторийской стали. Все еще острый. Это вовсе не то, что тебе нужно, поверь».~ */
  IF ~~ THEN REPLY #55852 /* ~«Я все равно возьму его».~ */ DO ~GiveItem("GSDagger",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55854 /* ~Осмотреть суровый на вид боевой топор: «Что это?»~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55856 /* ~Осмотреть шнурок с узелками: «Это еще что?»~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55859 /* ~Осмотреть зеленый леденец: «Что это?»~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55861 /* ~Осмотреть нож из зеленой стали: «Что это?»~ */ GOTO 76
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55863 /* ~Осмотреть копошащихся насекомых: «Что это?»~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55866 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 80
  IF ~~ THEN REPLY #55868 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 43
  IF ~~ THEN REPLY #55869 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 72.5 73.5 74.5 75.5 76.5 77.5 79.5
  SAY #55872 /* ~«Это? Это *кассеги*, паразиты, которые селятся в твоем мозгу и питаются твоей ментальной энергией без какой-либо выгоды для тебя... Фе! Проклятый контракт! Они повышают твои умственные способности — это уж точно тебе пригодится! Забирай их! Забирай!»~ */
  IF ~~ THEN REPLY #55874 /* ~«Беру».~ */ DO ~GiveItem("CerePara",Protagonist)
~ GOTO 79
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55878 /* ~Осмотреть суровый на вид боевой топор: «Что это?»~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55880 /* ~Осмотреть шнурок с узелками: «Это еще что?»~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55881 /* ~Осмотреть зеленый леденец: «Что это?»~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55883 /* ~Осмотреть нож из зеленой стали: «Что это?»~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55885 /* ~Осмотреть кинжал зеленого оттенка: «Что это?»~ */ GOTO 77
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55888 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 80
  IF ~~ THEN REPLY #55889 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 46
  IF ~~ THEN REPLY #55891 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 73.0 74.0 75.0 76.0 77.0 78.0 81.1 82.1 83.0
  SAY #55893 /* ~«Фе! Конечно! Тебе нужно еще чего-нибудь от твоего *скромного* слуги?!»~ */
  IF ~  HasItem("HateGift",Myself)
~ THEN REPLY #55896 /* ~Осмотреть суровый на вид боевой топор: «Что это?»~ */ GOTO 73
  IF ~  HasItem("GordKnot",Myself)
~ THEN REPLY #55899 /* ~Осмотреть шнурок с узелками: «Это еще что?»~ */ GOTO 74
  IF ~  HasItem("AddrTear",Myself)
~ THEN REPLY #55903 /* ~Осмотреть зеленый леденец: «Что это?»~ */ GOTO 75
  IF ~  HasItem("GSKnife",Myself)
~ THEN REPLY #55904 /* ~Осмотреть нож из зеленой стали: «Что это?»~ */ GOTO 76
  IF ~  HasItem("GSDagger",Myself)
~ THEN REPLY #55908 /* ~Осмотреть кинжал зеленого оттенка: «Что это?»~ */ GOTO 77
  IF ~  HasItem("Cerepara",Myself)
~ THEN REPLY #55911 /* ~Осмотреть копошащихся насекомых: «Что это?»~ */ GOTO 78
  IF ~  Global("No_Fhjull_Spell","AR1101",0)
~ THEN REPLY #55916 /* ~«У тебя не найдется каких-нибудь заклинаний?»~ */ GOTO 80
  IF ~~ THEN REPLY #55919 /* ~«Забудь. Лучше ответь мне на пару вопросов».~ */ GOTO 43
  IF ~~ THEN REPLY #55920 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 72.6 73.6 74.6 75.6 76.6 77.6 78.6 79.6 81.0 82.0
  SAY #55922 /* ~«Ба! Ты лишаешь меня всего моего имущества! Нужны заклинания? Фе! Это у меня есть, кровопийца!» Он скороговоркой произносит список заклинаний.~ */
  IF ~  GlobalLT("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55929 /* ~«Как насчет Удаления проклятия?»~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
GiveItemCreate("SPWI409",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Curse","AR1101",2)
~ THEN REPLY #55932 /* ~«Как насчет Удаления проклятия?»~ */ DO ~IncrementGlobal("Fhjull_Curse","AR1101",1)
~ GOTO 82
  IF ~  GlobalLT("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55933 /* ~«Сфера неуязвимости может пригодиться. Давай-ка ее».~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
GiveItemCreate("SPWI602",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Globe","AR1101",2)
~ THEN REPLY #55934 /* ~«У тебя еще остались Сферы неуязвимости?»~ */ DO ~IncrementGlobal("Fhjull_Globe","AR1101",1)
~ GOTO 82
  IF ~  GlobalLT("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55939 /* ~«Как насчет Бури цепных молний?»~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
GiveItemCreate("SPWI604",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Chain","AR1101",2)
~ THEN REPLY #55943 /* ~«Хорошо бы еще одну Бурю цепных молний...»~ */ DO ~IncrementGlobal("Fhjull_Chain","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Acid","AR1101",0)
~ THEN REPLY #55945 /* ~«Кислотная буря — звучит опасно. Давай-ка ее».~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
GiveItemCreate("SPWI701",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Acid","AR1101",1)
~ THEN REPLY #55946 /* ~«Кислотная буря. Давай ее».~ */ DO ~IncrementGlobal("Fhjull_Acid","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Blade","AR1101",0)
~ THEN REPLY #55947 /* ~«Буря клинков? Впечатляющее название. Хочу».~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
GiveItemCreate("SPWI702",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Blade","AR1101",1)
~ THEN REPLY #55948 /* ~«Дай мне еще одну Бурю клинков».~ */ DO ~IncrementGlobal("Fhjull_Blade","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Stygian","AR1101",0)
~ THEN REPLY #55949 /* ~«Стигийская ледяная буря? Похоже, тебе слишком небезопасно держать ее при себе... лучше я заберу ее у тебя».~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
GiveItemCreate("SPWI705",Protagonist,1,1,0)
~ GOTO 81
  IF ~  Global("Fhjull_Stygian","AR1101",1)
~ THEN REPLY #55950 /* ~«Стигийская ледяная буря? Беру».~ */ DO ~IncrementGlobal("Fhjull_Stygian","AR1101",1)
~ GOTO 82
  IF ~  Global("Fhjull_Curse","AR1101",3)
Global("Fhjull_Globe","AR1101",3)
Global("Fhjull_Chain","AR1101",3)
Global("Fhjull_Acid","AR1101",2)
Global("Fhjull_Blade","AR1101",2)
Global("Fhjull_Stygian","AR1101",2)
~ THEN REPLY #55951 /* ~«То есть, ничего не осталось».~ */ DO ~SetGlobal("No_Fhjull_Spell","AR1101",1)
~ GOTO 83
  IF ~~ THEN REPLY #55952 /* ~«Забудь. У меня есть еще вопросы».~ */ GOTO 47
  IF ~~ THEN REPLY #55953 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.2 80.4 80.6 80.8 80.10
  SAY #55954 /* ~Его рука исчезает в странном пространстве/непространстве. Он вынимает свиток, странно похожий на мягкую человеческую кожу, и швыряет его тебе. «Фе! Забирай его, будь ты про... Забирай!»~ */
  IF ~~ THEN REPLY #55955 /* ~«Спасибо... что у тебя еще из свитков?»~ */ GOTO 80
  IF ~~ THEN REPLY #55956 /* ~«Давай еще раз поглядим на те вещи».~ */ GOTO 79
  IF ~~ THEN REPLY #55957 /* ~«Забудь. У меня есть еще вопросы».~ */ GOTO 47
  IF ~~ THEN REPLY #55958 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.1 80.3 80.5 80.7 80.9 80.11
  SAY #55959 /* ~Он выдает зубастую гримасу. «Как же я все-таки рад сообщить тебе, что ты опустошил все мои запасы этого заклинания. Фе!»~ */
  IF ~~ THEN REPLY #55960 /* ~«Какие еще заклинания у тебя есть?»~ */ GOTO 80
  IF ~~ THEN REPLY #55961 /* ~«Давай еще раз поглядим на те вещи».~ */ GOTO 79
  IF ~~ THEN REPLY #55962 /* ~«Забудь. У меня есть еще вопросы».~ */ GOTO 46
  IF ~~ THEN REPLY #55963 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.12
  SAY #55964 /* ~Раздвоенный Язык рычит на тебя. «Ты разрушил, уничтожил, выпотрошил одну из уникальнейших коллекций заклинаний во всей мультивселенной... даже несмотря на всю пользу, которую она тебе принесла. У меня больше нет для тебя заклинаний».~ */
  IF ~~ THEN REPLY #55965 /* ~«Давай еще раз поглядим на те вещи».~ */ GOTO 79
  IF ~~ THEN REPLY #55966 /* ~«Тогда забудь об этом. Лучше ответь на пару вопросов...»~ */ GOTO 43
  IF ~~ THEN REPLY #55967 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 49.1
  SAY #55969 /* ~«Фе! Ты что, ударился головой об каждый камень, упавший с горы невежества? На Нижних планах бушует Кровавая война. Нет такого плана, которого она бы не затронула. Представь себе самую ужасную из войн, которые только можно представить, умножь ее длительность и размах на миллиард, и получишь малую часть поля боя, за которое воюют Нижние планы. Это война идеологий, война за определение одной из основных концепций в мультивселенной!»~ */
  IF ~~ THEN REPLY #55970 /* ~«Продолжай».~ */ GOTO 91
  IF ~~ THEN REPLY #55972 /* ~«Забудь. У меня есть другие вопросы».~ */ GOTO 43
  IF ~~ THEN REPLY #55973 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 50.0
  SAY #55976 /* ~«Это скелет Уль-Гориса, отца гористро. Это живые осадные башни, похожие на медведей, джаггернауты хаоса, огромные, практически неодолимые, с высокой устойчивостью к магии... а кости Уль-Гориса в кратере, где он погиб, излучают достаточно магии, чтобы не дать обнаружить меня с помощью магии, и будут поддерживать жизнь в этом жалком теле еще несколько отчаянных лет. Фе!»~ */
  IF ~~ THEN REPLY #55978 /* ~«Понятно. У меня еще несколько вопросов...»~ */ GOTO 47
  IF ~~ THEN REPLY #55981 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 50.1
  SAY #55982 /* ~«Если бы тебе доводилось гулять по обжигающим улицам Диса, чувствовать сладкую вонь горящей плоти, глубоко вдыхать ядовитые испарения льдин Стигии, вести армии сквозь погруженные в ночь дворцы... ты бы не задавал таких вопросов, недочеловек».~ */
  IF ~~ THEN REPLY #55983 /* ~«Что с тобой случилось?»~ */ GOTO 87
  IF ~~ THEN REPLY #55985 /* ~«У меня еще несколько вопросов...»~ */ GOTO 46
  IF ~~ THEN REPLY #55986 /* ~«Ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 52.0 86.0
  SAY #55987 /* ~«Тот чертов дэва — вот что со мной случилось! Я был таким беспечным, таким самоуверенным... Фе! Меня лишили моей силы, словно птенца. Не удивительно, что орды Баатора разыскивают меня».~ */
  IF ~  Global("Fhjull_Charity","GLOBAL",0)
~ THEN REPLY #55989 /* ~«Расскажи мне о Триасе».~ */ GOTO 39
  IF ~  Global("Fhjull_Charity","GLOBAL",1)
~ THEN REPLY #55990 /* ~«Расскажи мне о Триасе».~ */ GOTO 55
  IF ~~ THEN REPLY #55992 /* ~«У меня есть несколько вопросов...»~ */ GOTO 47
  IF ~~ THEN REPLY #55993 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #55995 /* ~«Фе! Разве я тебе не рассказывал о сути этого проклятого контракта! Я НЕ МОГУ утаивать подобную информацию. Колонна — твоя единственная надежда».~ */
  IF ~~ THEN REPLY #55997 /* ~«Морт, почему ты не хочешь туда идти?»~ */ EXTERN ~DMORTE~ 596
  IF ~~ THEN REPLY #55998 /* ~«Хорошо. Ответь еще на несколько вопросов».~ */ GOTO 43
  IF ~~ THEN REPLY #55999 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 54.0
  SAY #56001 /* ~«Фе... это не что иное, как массивная гора из голов, душ тех умерших, которые попали туда за обман, повлекший за собой смерть других. Это собрание мудрецов и хитрецов, все в одном месте, вкупе с наиболее обширными знаниями на всех планах».~ */
  IF ~~ THEN REPLY #56003 /* ~«Спасибо. У меня есть другие вопросы...»~ */ GOTO 47
  IF ~~ THEN REPLY #56004 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 56.2
  SAY #56006 /* ~«Фе! Я развею твое невежество по этому поводу. Знай, что для баатезу, закованного в цепи благожелательности, нет такого места, в котором я ХОТЕЛ бы находиться. Здесь я, по крайней мере, могу укрыться от жестокости контракта, наложенного на меня. Говорю тебе, у того дэва душа нечистого».~ */
  IF ~~ THEN REPLY #56007 /* ~«Тогда ответь мне еще на пару вопросов...»~ */ GOTO 46
  IF ~~ THEN REPLY #56008 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 84.0
  SAY #56009 /* ~«Это подталкивает к изысканиям... из-за Кровавой войны появляются еще более ужасные существа. Почему? Да потому что это боль, смерть, зло. Танарри сражаются за хаос и зло... зло посредством грубой силы и внезапных вспышек ненависти и пустых прихотей. Их 'зло' — это зло орды, мышление толпы в водовороте зла. Они грабят и убивают».~ */
  IF ~~ THEN REPLY #56010 /* ~«А с другой стороны?»~ */ GOTO 92
  IF ~~ THEN REPLY #56011 /* ~«Забудь об этом. У меня есть другие вопросы...»~ */ GOTO 47
  IF ~~ THEN REPLY #56012 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #56013 /* ~«Баатезу стремятся лишь к строго регламентированному злу, способствуя развитию зла точным, упорядоченным образом. Танарри убивают. Баатезу эксплуатируют. Каждый из этих двоих намерен уничтожить другого».~ */
  IF ~~ THEN REPLY #56014 /* ~«Продолжай».~ */ GOTO 93
  IF ~~ THEN REPLY #56015 /* ~«Забудь. Лучше ответь на пару вопросов».~ */ GOTO 43
  IF ~~ THEN REPLY #56016 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #56017 /* ~«Часть моего назначения... а я, заметь, был лучшим, набирал новых рекрутов, в основном планарных воинов и магов из других миров, чтобы они служили пушечным мясом на передовой. Меня заметил сам повелитель Бел, слово даю. Даже он разглядел во мне ценность! Фе! Теперь я окончательно унижен».~ */
  IF ~  Global("Fhjull_Art","AR1101",0)
~ THEN REPLY #56018 /* ~«Ты меня узнаешь?»~ */ GOTO 51
  IF ~  Global("Fhjull_Art","AR1101",1)
~ THEN REPLY #56019 /* ~«Ты меня узнаешь?»~ */ GOTO 94
  IF ~~ THEN REPLY #56020 /* ~«Хорошо. Ответь тогда на несколько вопросов».~ */ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #56021 /* ~«Еще бы. Прощай».~ */ EXTERN ~DVHAIL~ 154
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #56022 /* ~«Еще бы. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 70.2 93.1
  SAY #56023 /* ~«Разве мы уже не проходили через это? Фе! Глупые людишки!»~ */
  IF ~~ THEN REPLY #56024 /* ~«Тогда ответь мне на другие вопросы».~ */ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #56025 /* ~«Спасибо. Прощай».~ */ EXTERN ~DVHAIL~ 154
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #56026 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DGrace")
NearbyDialog("Dmorte")
~ THEN BEGIN 95 // from:
  SAY #61568 /* ~Перед тобой нечистый в шрамах со сломанными крыльями, одно из которых изодрано. Он процеживает свои слова сквозь стиснутые зубы, сдавленным, сердитым и отчаянным тоном: «Танарри в моем доме! Что за оскорбление! Почему бы тебе ни пригласить с собой весь свой грязный род?!»~ [FFT003] */
  IF ~~ THEN GOTO 26
END

IF WEIGHT #5 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DGrace")
!NearbyDialog("Dmorte")
~ THEN BEGIN 96 // from:
  SAY #61569 /* ~Перед тобой нечистый в шрамах со сломанными крыльями, одно из которых изодрано. Он процеживает свои слова сквозь стиснутые зубы, сдавленным, сердитым и отчаянным тоном: «Танарри в моем доме! Что за оскорбление! Почему бы тебе ни пригласить с собой весь свой грязный род?!»~ [FFT003] */
  IF ~~ THEN GOTO 28
END

IF WEIGHT #8 /* Triggers after states #: 98 99 100 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 97 // from:
  SAY #61570 /* ~«Похоже, что чтобы меня не беспокоили, мне придется ПОХОРОНИТЬ себя».~ [FFT002] */
  IF ~~ THEN GOTO 32
END

IF WEIGHT #6 /* Triggers after states #: 99 100 even though they appear after this state */
~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
~ THEN BEGIN 98 // from:
  SAY #61571 /* ~«Отлично. Еще больше вони!»~ [FFT037] */
  IF ~~ THEN GOTO 30
END

IF WEIGHT #1 /* Triggers after states #: 100 even though they appear after this state */
~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",1)
Global("Fiend_Fhjull","AR1101",0)
~ THEN BEGIN 99 // from:
  SAY #61572 /* ~«Фе! Мерзавец! После всех моих предупреждений и клятв, ты все равно привел к моей двери легионы Баатора! Клятвопреступник! Предатель! Я... хм-м-м... так вот каково оно...»~ [FFT068] */
  IF ~~ THEN GOTO 1
END

IF WEIGHT #0 ~  Global("AR1000_Visited","GLOBAL",1)
Global("Evil_Fhjull_1","GLOBAL",1)
Global("Fiend_Fhjull","AR1101",1)
~ THEN BEGIN 100 // from:
  SAY #61573 /* ~«Что ты здесь делаешь?» Нечистый отворачивается и сплевывает на пол.~ [FFT082] */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 101 // from: 7.6 30.10 31.10 32.10 43.10 46.10 47.10
  SAY #68475 /* ~«ЧТО? Я должен и дальше терпеть твое присутствие? Когда уже кончится эта пытка? Фе! Ладно, ладно, ладно! Располагайся на полу! Разори мои запасы! Разграбь мои опыты! Я буду кипеть от злости здесь, неподалеку! Фе!» — возмущается он.~ */
  IF ~  Global("Fiend_Fhjull","AR1101",0)
Global("Evil_Fhjull_1","GLOBAL",1)
~ THEN REPLY #5595 /* ~«Спасибо».~ */ DO ~SetGlobal("Fiend_Fhjull","AR1101",1)
SetGlobal("1101_Spawn_CutScene","GLOBAL",1)
~ EXIT
  IF ~  Global("Evil_Fhjull_1","GLOBAL",0)
~ THEN REPLY #11798 /* ~«Спасибо...»~ */ EXIT
  IF ~  Global("Fiend_Fhjull","AR1101",1)
~ THEN REPLY #11798 /* ~«Спасибо...»~ */ EXIT
END
