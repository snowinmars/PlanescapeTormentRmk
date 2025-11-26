// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARQUEZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARQUEZ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 17 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49143 /* ~Перед тобой дородный блондин, облаченный в доспехи офицера Гармониума. Несмотря на улыбку на розовом от выпивки лице, в глазах отчетливо видна горечь. Он начинает разговор безо всяких предисловий. «Дело вот в чем: работорговцы похитили дочь Копчика. Твоя задача — вернуть ее. Я скажу, где можно их найти. Ты убиваешь их и сообщаешь об этом мне, а я помогаю тебе в поисках дэва. Я даже смогу научить тебя обращаться оружием. Согласен?»~ */
  IF ~~ THEN REPLY #49144 /* ~«Согласен».~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49145 /* ~«Для начала, у меня есть несколько вопросов насчет этого...»~ */ GOTO 2
  IF ~~ THEN REPLY #49146 /* ~«У меня есть еще пара вопросов о кое-чем еще...»~ */ GOTO 2
  IF ~~ THEN REPLY #49147 /* ~«Нет, я не хочу этого делать».~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50464 /* ~«Они уже мертвы».~ */ DO ~AddexperienceParty(131250)
SetGlobal("Slavers","GLOBAL",5)
SetGlobal("Curst_Key","GLOBAL",2)
~ GOTO 14
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50465 /* ~«Они уже мертвы. Увы, и девочка тоже».~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0 4.2 5.0 7.4 12.0 17.0
  SAY #49148 /* ~«В последний раз я слышал, что работорговцы были в восточной части Внутреннего Проклятого: они получили разрешение от городской стражи. Найди их, удостоверься, что с дочерью Копчика все в порядке, а потом убей их. Как закончишь, возвращайся — я сообщу тебе первую часть ключа, который понадобится, чтобы найти дэва».~ */
  IF ~~ THEN REPLY #49149 /* ~«Хорошо. Ответь мне насчет этого на несколько вопросов».~ */ JOURNAL #49153 /* ~Я согласился найти работорговцев за городскими бараками, спасти дочь Гниющего Копчика и убить их по поручению Маркеса. В обмен на это он даст мне первую часть ключа, который мне понадобится для того, чтобы попасть к заключенному дэва.~ */ GOTO 7
  IF ~~ THEN REPLY #49150 /* ~«Отлично. Прощай».~ */ JOURNAL #49153 /* ~Я согласился найти работорговцев за городскими бараками, спасти дочь Гниющего Копчика и убить их по поручению Маркеса. В обмен на это он даст мне первую часть ключа, который мне понадобится для того, чтобы попасть к заключенному дэва.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 12.1 12.2
  SAY #49157 /* ~«Несколько вопросов? Нет. Есть только два возможных ответа. Ты за работорговлю или против нее?»~ */
  IF ~~ THEN REPLY #49158 /* ~«Я против нее».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marquez_1","GLOBALGood",1)
~ GOTO 3
  IF ~~ THEN REPLY #49159 /* ~«Я за нее».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marquez_1","GLOBALGood",-2)
~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49160 /* ~«Тогда ты поможешь, верно? Да... или нет?»~ */
  IF ~~ THEN REPLY #49161 /* ~«Я помогу».~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49171 /* ~«Нет, не буду».~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #49173 /* ~Он недовольно смотрит на тебя. «Значит, что ты не поможешь... даже если в этом есть твоя личная заинтересованность?»~ */
  IF ~~ THEN REPLY #49174 /* ~«О чем это ты?»~ */ GOTO 5
  IF ~~ THEN REPLY #49176 /* ~«Все равно, я не буду помогать».~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~~ THEN REPLY #49177 /* ~«О, тогда я помогу».~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #49178 /* ~«Я о том, что все знают, что ты ищешь дэва. Гниющий Копчик знает, как его найти. Было бы очень глупо не воспользоваться этой возможностью».~ */
  IF ~~ THEN REPLY #49179 /* ~«Ладно, тогда я помогу».~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49181 /* ~«Я все равно не буду помогать».~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.3 3.1 4.1 5.1 12.3 17.1
  SAY #49182 /* ~«Тогда ты еще больший дурак, чем я думал. Нам больше не о чем говорить. Прощай». Он возвращается к своей выпивке.~ */
  IF ~~ THEN REPLY #49183 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0 8.1 9.1 10.0 11.0 13.2 21.0
  SAY #49184 /* ~«Что?»~ */
  IF ~~ THEN REPLY #49185 /* ~«Кто ты?»~ */ GOTO 8
  IF ~~ THEN REPLY #49186 /* ~«Что ты здесь делаешь?»~ */ GOTO 9
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #49187 /* ~«А какая тебе выгода от этого дела с работорговцами?»~ */ GOTO 10
  IF ~~ THEN REPLY #49188 /* ~«Что ты можешь рассказать о ключе?»~ */ GOTO 11
  IF ~~ THEN REPLY #49189 /* ~«Еще раз, находятся эти работорговцы?»~ */ GOTO 1
  IF ~~ THEN REPLY #49190 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #49191 /* ~«Я Маркес, в прошлом — Третья ступень Гармониума. В прошлом, потому что покинул их не так давно».~ */
  IF ~~ THEN REPLY #49192 /* ~«Почему?»~ */ GOTO 10
  IF ~~ THEN REPLY #49194 /* ~«У меня есть к тебе другие вопросы...»~ */ GOTO 7
  IF ~~ THEN REPLY #49195 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #49196 /* ~«Напиваюсь. На что еще это похоже? Я жду, пока кто-нибудь придет и исправит все совершенное мною зло. Ты очень похож на того, кто справится с этой работой».~ */
  IF ~~ THEN REPLY #49197 /* ~«Какое зло?»~ */ GOTO 10
  IF ~~ THEN REPLY #49199 /* ~«У меня есть к тебе другие вопросы...»~ */ GOTO 7
  IF ~~ THEN REPLY #49200 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.0 9.0
  SAY #49201 /* ~«Я обнаружил, что Гармониум, группа, которой я сперва верил, скупает людей, похищает их, забирает их против собственной воли, рушит им жизни. Мне надоело выбивать жизнь из людей, решивших стать другими. Те работорговцы, которых ты встретишь, были моими товарищами, — он сплевывает на пол. — Пни. Лжецы. Больше никому нельзя верить».~ */
  IF ~~ THEN REPLY #49203 /* ~«У меня есть к тебе другие вопросы...»~ */ GOTO 7
  IF ~~ THEN REPLY #49204 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #49205 /* ~«Ключ из пяти частей. Словесный. Хранится в наших головах, — он широко улыбается. — Я тебе не выдам его даже под пытками, а более простого способа тебе вряд ли найти. Наш секрет надежно спрятан, и тебе придется получить все пять частей, чтобы подобраться к нему».~ */
  IF ~~ THEN REPLY #49206 /* ~«У меня есть к тебе другие вопросы...»~ */ GOTO 7
  IF ~~ THEN REPLY #49207 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 17 even though they appear after this state */
~  Global("Slavers","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #49208 /* ~«Ты вернулся, — он залпом допивает свою выпивку. — Копчик прислал тебя. Хорошо. Дело вот в чем: работорговцы похитили его дочь. Твоя задача — вернуть ее. Я скажу, где можно их найти. Ты убиваешь их и сообщаешь об этом мне, а я помогаю тебе в поисках дэва. Черт, я, может, даже смогу научить тебя обращаться оружием. Согласен?»~ */
  IF ~~ THEN REPLY #49209 /* ~«Согласен».~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49210 /* ~«Для начала, у меня есть несколько вопросов насчет этого...»~ */ GOTO 2
  IF ~~ THEN REPLY #49211 /* ~«У меня есть еще пара вопросов о кое-чем еще...»~ */ GOTO 2
  IF ~~ THEN REPLY #49212 /* ~«Нет, я не хочу этого делать».~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50468 /* ~«Они уже мертвы».~ */ DO ~AddexperienceParty(131250)
SetGlobal("Slavers","GLOBAL",5)
SetGlobal("Curst_Key","GLOBAL",2)
~ GOTO 14
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50469 /* ~«Они уже мертвы. Увы, и девочка тоже».~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
END

IF WEIGHT #4 /* Triggers after states #: 16 17 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #49214 /* ~Маркес смотрит, как ты подходишь к его столу. «Ты насчет дочери Копчика Джасильи?»~ */
  IF ~  Global("Skatch_DEAD_KAPUTZ","GLOBAL",1)
Global("Jasilya_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #49215 /* ~«Она свободна. Она скоро придет сюда».~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",5)
AddexperienceParty(65000)
~ GOTO 14
  IF ~  Global("Skatch_DEAD_KAPUTZ","GLOBAL",1)
Global("Jasilya_DEAD_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49216 /* ~«Она погибла, когда я попытался спасти ее».~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
  IF ~~ THEN REPLY #49217 /* ~«Нет. Однако у меня есть вопросы...»~ */ GOTO 7
  IF ~~ THEN REPLY #50466 /* ~«Научи меня какому-нибудь оружию».~ */ GOTO 21
  IF ~~ THEN REPLY #67822 /* ~«Нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.4 12.4 13.0
  SAY #49219 /* ~Он хлопает тебя по плечу. «Отличная работа. Хочешь получить первую часть ключа к подземельям Проклятого? Вот она: 'Вот какой затвор здесь уготовал Вечный Судия мятежникам...' Переговори с Китлой, она здесь. У нее вторая часть ключа. Или я могу обучить тебя владению оружием».~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~«Тогда обучи меня».~ */ JOURNAL #66862 /* ~Я получил первую часть Ключа, отпирающего ход к дэва. Слова такие: «Вот какой затвор здесь уготовал Вечный Судия мятежникам...» Теперь мне нужно переговорить с некоей Китлой в таверне «Ворота предателей».~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~«Тогда обучи меня».~ */ JOURNAL #66862 /* ~Я получил первую часть Ключа, отпирающего ход к дэва. Слова такие: «Вот какой затвор здесь уготовал Вечный Судия мятежникам...» Теперь мне нужно переговорить с некоей Китлой в таверне «Ворота предателей».~ */ GOTO 20
  IF ~~ THEN REPLY #67824 /* ~«Спасибо. Прощай».~ */ JOURNAL #66862 /* ~Я получил первую часть Ключа, отпирающего ход к дэва. Слова такие: «Вот какой затвор здесь уготовал Вечный Судия мятежникам...» Теперь мне нужно переговорить с некоей Китлой в таверне «Ворота предателей».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.5 12.5 13.1
  SAY #49222 /* ~«Это очень печально. Уверен, этого невозможно было избежать». Он смотрит на тебя непроницаемым взглядом. «Вот первая часть ключа: 'Вот какой затвор здесь уготовал Вечный Судия мятежникам...' Переговори с Китлой, она здесь. У нее вторая часть ключа. Или я могу обучить тебя владению оружием».~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~«Тогда обучи меня».~ */ JOURNAL #66862 /* ~Я получил первую часть Ключа, отпирающего ход к дэва. Слова такие: «Вот какой затвор здесь уготовал Вечный Судия мятежникам...» Теперь мне нужно переговорить с некоей Китлой в таверне «Ворота предателей».~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~«Тогда обучи меня».~ */ JOURNAL #66862 /* ~Я получил первую часть Ключа, отпирающего ход к дэва. Слова такие: «Вот какой затвор здесь уготовал Вечный Судия мятежникам...» Теперь мне нужно переговорить с некоей Китлой в таверне «Ворота предателей».~ */ GOTO 20
  IF ~~ THEN REPLY #67826 /* ~«Спасибо. Прощай».~ */ JOURNAL #66862 /* ~Я получил первую часть Ключа, отпирающего ход к дэва. Слова такие: «Вот какой затвор здесь уготовал Вечный Судия мятежникам...» Теперь мне нужно переговорить с некоей Китлой в таверне «Ворота предателей».~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  GlobalGT("Curst_Key","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #49224 /* ~«С мной больше нет нужды разговаривать. Мы все сказали друг другу. Поговори с Китлой, она проведет тебя дальше. Пожалуйста, дай мне спокойно выпить, если только не хочешь потренироваться в обращении оружием...»~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~«Тогда обучи меня».~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~«Тогда обучи меня».~ */ GOTO 20
  IF ~~ THEN REPLY #67821 /* ~«Ладно. Прощай».~ */ EXIT
END

IF WEIGHT #0 ~  Global("Slavers","GLOBAL",6)
~ THEN BEGIN 17 // from:
  SAY #49230 /* ~«Ты передумал насчет помощи Копчику, или у тебя опять какие-то идиотские вопросы ко мне?»~ */
  IF ~~ THEN REPLY #49228 /* ~«Я передумал. Я помогу».~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49229 /* ~«Я не передумал».~ */ GOTO 6
END

IF WEIGHT #5 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 18 // from:
  SAY #49231 /* ~Перед тобой дородный блондин, облаченный в доспехи офицера Гармониума. Несмотря на улыбку на розовом от выпивки лице, в глазах отчетливо видна горечь. Он начинает разговор без всяких предисловий. «Тебя Копчик прислал? Нет? Тогда хватит тратить мое время попусту». Он возвращается к своему виски.~ */
  IF ~~ THEN REPLY #49232 /* ~«Тогда прощай». ~ */ EXIT
END

IF WEIGHT #6 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #49233 /* ~«Тебя Копчик прислал? Нет? Тогда хватит тратить мое время попусту». Он отворачивается от тебя.~ */
  IF ~~ THEN REPLY #49234 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.1 15.1 16.1
  SAY #66962 /* ~«Ты не из тех, кто просто балуется с оружием, вон сколько у тебя шрамов. Но все же, кажется, сейчас ты не живешь боевым искусством. Хочешь распрощаться со своей текущей специализацией?»~ */
  IF ~~ THEN REPLY #66978 /* ~«Да».~ */ DO ~SetNamelessClass(FIGHTER)
~ GOTO 22
  IF ~~ THEN REPLY #66979 /* ~«Нет».~ */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY #66963 /* ~«Ты не готов для обучения. Закончи с Джасильей и Копчиком, и, может быть, я научу тебя чему-нибудь».~ */
  IF ~~ THEN REPLY #66980 /* ~«Отлично. У меня есть другие вопросы...»~ */ GOTO 7
  IF ~~ THEN REPLY #66981 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0 16.0 20.0
  SAY #66964 /* ~«По твоим манерам видно, что ты знаешь, как обращаться с оружием, так что эту тему мы пропустим. Что ты хочешь?»~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #66982 /* ~«Можешь сказать, готов ли я обучаться дальше?»~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66983 /* ~«Можешь сказать, готов ли я обучаться дальше?»~ */ GOTO 26
  IF ~  ExtraProficiencyGT(Protagonist,0)
Proficiency(Protagonist,FIST,4)
Proficiency(Protagonist,DAGGER,4)
Proficiency(Protagonist,HAMMER,4)
Proficiency(Protagonist,AXE,4)
Proficiency(Protagonist,CLUB,4)
~ THEN REPLY #66984 /* ~«Я хорошо обращаюсь всеми видами оружия. Можешь ли ты меня обучить еще чему-либо?»~ */ JOURNAL #66986 /* ~Маркес сказал мне, что если я хочу дальше изучать владение оружием, то мне стоит разыскать Корура из Нижнего района Сигила. Надеюсь, что смогу попасть туда.~ */ GOTO 24
  IF ~~ THEN REPLY #66985 /* ~«Пока ничему. Я вернусь».~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #66965 /* ~«Тогда зачем вообще мне докучаешь? Уходи. Мне нужно выпить».~ */
  IF ~~ THEN REPLY #66987 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 34.2
  SAY #66966 /* ~Изучив твои навыки, он присвистывает от удивления. «Брат, твоя техника непостижима. Есть только один учитель, который сможет обучить тебя большему — парень по имени Корур, из Нижнего района Сигила. Если можешь, разыщи его».~ */
  IF ~~ THEN REPLY #66988 /* ~«Ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.0 33.1 34.0 35.0
  SAY #66967 /* ~«Ты больше не можешь обучаться. Возвращайся, когда сможешь».~ */
  IF ~~ THEN REPLY #66989 /* ~«Ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.1 27.6 28.6 29.6 30.6 31.6 33.0 34.1 35.1
  SAY #66968 /* ~«Я смогу научить тебя всему, чему ты захочешь... до определенного уровня. Какому оружию ты хочешь обучиться?»~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66990 /* ~«Научи меня бою на кулаках».~ */ GOTO 27
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66991 /* ~«Научи меня, как пользоваться кинжалом».~ */ GOTO 28
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66992 /* ~«Научи меня, как пользоваться дубиной».~ */ GOTO 29
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66993 /* ~«Научи меня, как пользоваться боевым топором».~ */ GOTO 30
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66994 /* ~«Научи меня, как пользоваться молотом».~ */ GOTO 31
  IF ~~ THEN REPLY #66995 /* ~«Мне сегодня не до тренировок. Я вернусь позже».~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #66969 /* ~«Любишь кулачный бой? Кровавый и рукопашный?»~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66996 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66997 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66998 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66999 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67000 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67001 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67030 /* ~«Нет... каким еще видам оружия ты можешь меня обучить?»~ */ GOTO 26
  IF ~~ THEN REPLY #67031 /* ~«Нет, не думаю, что сегодня я хочу тренироваться. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #66970 /* ~«Кинжалы, да? Оружие головорезов, но очень подходят для... особого удара. Хочешь научиться ими пользоваться?»~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67002 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67003 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67004 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67005 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67006 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67007 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67029 /* ~«Нет... каким еще видам оружия ты можешь меня обучить?»~ */ GOTO 26
  IF ~~ THEN REPLY #67032 /* ~«Нет, не думаю, что сегодня я хочу тренироваться. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY #66971 /* ~«Хочешь размахивать старомодной дубиной, а?»~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67008 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67009 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67010 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67011 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67012 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67013 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67028 /* ~«Нет... каким еще видам оружия ты можешь меня обучить?»~ */ GOTO 26
  IF ~~ THEN REPLY #67033 /* ~«Нет, не думаю, что сегодня я хочу тренироваться. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY #66972 /* ~Он присвистывает. «Думаешь, как бы причинить настоящую боль? Хочешь научиться обращению топорами?»~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67014 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,AXE,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67015 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67016 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 33
  IF ~  ProficiencyGT(Protagonist,AXE,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67017 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67018 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
~ THEN REPLY #67019 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67027 /* ~«Нет... каким еще видам оружия ты можешь меня обучить?»~ */ GOTO 26
  IF ~~ THEN REPLY #67034 /* ~«Нет, не думаю, что сегодня я хочу тренироваться. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.4
  SAY #66973 /* ~«Оружие настоящего джентльмена — если только у этого джентльмена стальные мускулы. Хочешь научиться обращению молотом?»~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67020 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67021 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67022 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67023 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67024 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67025 /* ~«Да, я хотел бы научиться пользоваться этим оружием».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67026 /* ~«Нет... каким еще видам оружия ты можешь меня обучить?»~ */ GOTO 26
  IF ~~ THEN REPLY #67035 /* ~«Нет, не думаю, что сегодня я хочу тренироваться. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.0 27.2 27.4 28.0 28.2 28.4 29.0 29.2 29.4 30.0 30.4 31.0 31.2 31.4
  SAY #66974 /* ~«Отлично. Тогда начнем!»~ */
  IF ~~ THEN REPLY #67037 /* ~«Как только ты будешь готов...»~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 30.2 32.0
  SAY #66975 /* ~Вы боретесь друг с другом. Спустя некоторое время он вытирает пот со лба. «Ты чертовски умел. Еще что-нибудь хочешь?»~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67038 /* ~«Спасибо. Я бы хотел обучиться другому оружию, если будешь меня обучать».~ */ GOTO 26
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67039 /* ~«Спасибо. Я бы хотел обучиться другому оружию, если будешь меня обучать».~ */ GOTO 25
  IF ~~ THEN REPLY #67040 /* ~«Спасибо. Это все, что я хотел узнать сегодня».~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.3 27.5 28.3 28.5 29.3 29.5 30.3 30.5 31.3 31.5
  SAY #66976 /* ~Изучив твои способности, он говорит: «Ты уже знаешь больше о боевых стилях, чем я могу тебя обучить. Если хочешь обучаться дальше, найди дорогу в Сигил и переговори с Коруром из Нижнего района. Он настоящий мастер во всем».~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67041 /* ~«Ты можешь обучить меня другому оружию?»~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67042 /* ~«Ты можешь обучить меня другому оружию?»~ */ GOTO 26
  IF ~  ExtraProficiencyGT(Protagonist,0)
Proficiency(Protagonist,FIST,4)
Proficiency(Protagonist,DAGGER,4)
Proficiency(Protagonist,HAMMER,4)
Proficiency(Protagonist,AXE,4)
Proficiency(Protagonist,CLUB,4)
~ THEN REPLY #67043 /* ~«Ты можешь обучить меня другому оружию?»~ */ GOTO 24
  IF ~~ THEN REPLY #67044 /* ~«Тогда ладно. Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.1 28.1 29.1 30.1 31.1
  SAY #66977 /* ~Изучив твои способности, он говорит: «Тебе еще учиться и учиться. Если ты не посвятишь себя изучению оружию, а для этого тебе нужно быть воином, то вместо обучения ты будешь биться головой об стенку. Тебе нужна *специализация*».~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67045 /* ~«Ты можешь обучить меня другому оружию?»~ */ JOURNAL #68288 /* ~Мне сказали, что я больше не могу обучаться оружию, если только не сосредоточусь на пути воина. Более полное посвящение себя искусству боя, без отвлечения на воровство и магию, должно обеспечить мне специализацию, о которой говорит мой наставник.~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67046 /* ~«Ты можешь обучить меня другому оружию?»~ */ JOURNAL #68288 /* ~Мне сказали, что я больше не могу обучаться оружию, если только не сосредоточусь на пути воина. Более полное посвящение себя искусству боя, без отвлечения на воровство и магию, должно обеспечить мне специализацию, о которой говорит мой наставник.~ */ GOTO 26
  IF ~~ THEN REPLY #67047 /* ~«Тогда ладно. Спасибо. Прощай».~ */ JOURNAL #68288 /* ~Мне сказали, что я больше не могу обучаться оружию, если только не сосредоточусь на пути воина. Более полное посвящение себя искусству боя, без отвлечения на воровство и магию, должно обеспечить мне специализацию, о которой говорит мой наставник.~ */ EXIT
END
