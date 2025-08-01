// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSYBIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSYBIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 18 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36172 /* ~В углу комнаты ты видишь фигуру, скрытую в тенях. При твоем приближении девушка делает шаг вперед, чтобы показать себя. Она одета в свободную тунику, что, вместе с короткой стрижкой и хрупким телосложением, делает ее больше похожей на мальчишку. «На твоем месте я бы туда не ходила». Она кивает в сторону двери в южной стене.~ */
  IF ~~ THEN REPLY #36189 /* ~«Почему? Что за той дверью?»~ */ DO ~KillFloatMessage("Sybil")
~ GOTO 1
  IF ~~ THEN REPLY #36190 /* ~«Кто ты?»~ */ DO ~KillFloatMessage("Sybil")
~ GOTO 2
  IF ~~ THEN REPLY #36191 /* ~Проигнорировать девушку и пройти мимо.~ */ DO ~KillFloatMessage("Sybil")
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 14.0
  SAY #36173 /* ~От твоего голоса она вздрагивает и прикладывает палец к губам, показывая, чтобы ты замолчать. На мгновение она умолкает, затем отвечает сдавленным голосом: «Целая куча тех воющих безумцев, вот что. Похоже, у них там что-то вроде собрания. Пока они не разойдутся, выбраться на улицу не получится».~ */
  IF ~~ THEN REPLY #36192 /* ~«Воющих безумцев?»~ */ GOTO 3
  IF ~~ THEN REPLY #36193 /* ~«Кто ты?»~ */ GOTO 2
  IF ~~ THEN REPLY #36194 /* ~«Спасибо за предупреждение. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 4.0 14.1
  SAY #36174 /* ~«Меня зовут Сибил», — тихо шепчет она, затем сплевывает себе на ладонь и протягивает ее для рукопожатия.~ */
  IF ~~ THEN REPLY #36195 /* ~«Что ты здесь делаешь?»~ */ GOTO 9
  IF ~~ THEN REPLY #36196 /* ~«Спасибо за предупреждение, Сибил. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #36175 /* ~«Ты здесь вместо эха? Да, воющих безумцев. Они из Голодных Псов Лающих, банды чокнутых бандитов-хаоситеков, которые свирепствуют в этой части Улья».~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #36197 /* ~«Хаоситекты? Я член их фракции... они меня пропустят».~ */ GOTO 4
  IF ~~ THEN REPLY #36198 /* ~«Сколько их там?»~ */ GOTO 5
  IF ~~ THEN REPLY #36199 /* ~«Спасибо за предупреждение. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36176 /* ~«Ты что, не понимаешь? Псы, они ведь даже более сумасшедшие, чем обычный хаосит. Член ты фракции или нет, войдешь туда — и ты покойник, в этом можешь не сомневаться».~ */
  IF ~~ THEN REPLY #36200 /* ~«Кто ты?»~ */ GOTO 2
  IF ~~ THEN REPLY #36201 /* ~«Сколько их там?»~ */ GOTO 5
  IF ~~ THEN REPLY #36202 /* ~«Спасибо за предупреждение. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 10.1 11.0 12.2
  SAY #36177 /* ~«Я насчитала около дюжины. Правда, я смотрела через трещину в стене, так что могла нескольких не посчитать».~ */
  IF ~~ THEN REPLY #36203 /* ~«Около дюжины? Это вряд ли будет для меня проблемой».~ */ GOTO 6
  IF ~~ THEN REPLY #36204 /* ~«Похоже, нам придется пробиваться наружу».~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36205 /* ~«Можно пробраться на улицу каким-то другим путем?»~ */ GOTO 7
  IF ~~ THEN REPLY #36206 /* ~«Спасибо за предупреждение. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36178 /* ~«Слушай, можешь играться в героев, если хочешь, но меня в это не впутывай. Я остаюсь здесь. Если те твари каким-то чудом не выпустят тебе кишки, может, еще увидимся». Она разворачивается и ускользает в тени в углу.~ */
  IF ~~ THEN REPLY #36207 /* ~«С другой стороны... может, мне и не стоит туда ходить».~ */ GOTO 7
  IF ~~ THEN REPLY #36208 /* ~«Тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2 6.0 12.0 13.0
  SAY #36179 /* ~«Возможно, есть еще один способ пройти мимо этих тварей без боя. Существует еще одна дверь, ведущая в ту комнату. Из того, что мне удалось разглядеть, вдоль стены, где находится та дверь, стоят штабеля деревянных ящиков. Можно проскользнуть от *той* двери к выходу на другой стороне комнаты. Только есть одна проблема...»~ */
  IF ~~ THEN REPLY #36209 /* ~«И что же это?»~ */ GOTO 8
  IF ~~ THEN REPLY #36210 /* ~«Всегда есть какие-нибудь проблемы... иначе было бы скучно».~ */ GOTO 8
  IF ~~ THEN REPLY #36211 /* ~«Неважно. У меня и так полно проблем».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #36180 /* ~«Дверь заперта... я проверяла. По моим догадкам, ключ у одного из бандитов этажом выше. Вот только я еще не настолько пустоголовая, чтобы пройти его искать». Она скрещивает руки на груди и выжидающе смотрит на тебя.~ */
  IF ~~ THEN REPLY #36212 /* ~«Если ключ там... я его найду. Счастливо».~ */ DO ~SetGlobal("Sybil_Quest","GLOBAL",1)
~ JOURNAL #36033 /* ~В Пристанище головорезов я встретил девушку по имени Сибил. Вероятно, в Пристанище она попала в западню из-за хаоситеков, которые проводят нечто вроде собрания в комнате, которая ведет на улицу Протяжных Вздохов. Она рассказала мне о другой двери в эту комнату; через нее можно проскользнуть мимо головорезов без боя. Я согласился найти ключ от этой двери. Предположительно, его носит один из бандитов на верхних этажах Пристанища.~ */ GOTO 17
  IF ~~ THEN REPLY #36213 /* ~«Неважно. Посмотрим, что у меня выйдет с теми психами».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #36181 /* ~«А на что это похоже? Я прячусь. Я пришла сюда в поисках... еды, — когда она это говорит, ты замечаешь, как ее правая рука невольно тянется к мешочку на поясе. — Вот только в комнате напротив появились лающие придурки и решили устроить вечеринку у парадного входа. А теперь я здесь в западне и не могу выбраться».~ */
  IF ~~ THEN REPLY #36214 /* ~«Лающие придурки?»~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36215 /* ~«Значит, еду искала? Что в мешке?»~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #36216 /* ~«Ты врешь. Ты — воровка».~ */ GOTO 12
  IF ~~ THEN REPLY #36217 /* ~«Спасибо за предупреждение. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #36182 /* ~«Ты здесь вместо эха? Да, воющих безумцев. Они из Голодных Псов Лающих, банды чокнутых бандитов-Хаоситеков, которые свирепствуют в этой части Улья».~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #36218 /* ~«Хаоситекты? Я член их фракции... они меня пропустят».~ */ GOTO 11
  IF ~~ THEN REPLY #36219 /* ~«Сколько их там?»~ */ GOTO 5
  IF ~~ THEN REPLY #36220 /* ~«Спасибо за предупреждение. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36183 /* ~«Ты что, не понимаешь? Псы, они ведь даже более сумасшедшие, чем обычный хаосит. Член ты фракции или нет, войдешь туда — и ты покойник, в этом можешь не сомневаться».~ */
  IF ~~ THEN REPLY #36221 /* ~«Сколько их там?»~ */ GOTO 5
  IF ~~ THEN REPLY #36222 /* ~«Спасибо за предупреждение. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1 9.2
  SAY #36184 /* ~Она уже собирается ответить, но обрывает себя на полуслове. Некоторое время она пристально смотрит на тебя, затем пожимает плечами. «Ладно-ладно... в общем, я — воровка. Нужно же девушке как-то зарабатывать на жизнь. В конце концов, тебе-то что? Ты явно не из Гармониума, и ты уж точно не с теми дикарями».~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #36223 /* ~«Ты права... И, кроме того, мне тут делать нечего. Ты знаешь, как еще можно добраться до улицы?»~ */ GOTO 7
  IF ~~ THEN REPLY #36224 /* ~«Я всегда могу выдать тебя бандитам... может, они ответят мне благосклонностью и пропустят меня».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sybil_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #36225 /* ~«Сколько их там?»~ */ GOTO 5
  IF ~~ THEN REPLY #36226 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #36185 /* ~«Ха! Ты не станешь этого делать. Эти скоты раскроят тебе череп раньше, чем рассмотрят тебя. Кроме того... я могу тебе помочь».~ */
  IF ~~ THEN REPLY #36227 /* ~«Помочь мне? Как?»~ */ GOTO 7
  IF ~~ THEN REPLY #36228 /* ~«Мне не нужна помощь какого-то вороватого отребья. Я собираюсь выдать тебя бандитам».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Tenement_Alarm","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #36229 /* ~«Неважно. Посмотрим, что у меня выйдет с теми психами».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #36186 /* ~«Снова ты? — кажется, Сибил сердится и в то же время испытывает облегчение, увидев тебя. — Гореть мне в Бааторе, рубака! Ты не мог бы шуметь еще больше, как думаешь? Я слышала твои шаги до самого зала».~ */
  IF ~  Global("Sybil_Quest","GLOBAL",0)
!Dead("Sentry")
~ THEN REPLY #36230 /* ~«Что за дверью?»~ */ GOTO 1
  IF ~  Global("Sybil_Quest","GLOBAL",0)
!Dead("Sentry")
~ THEN REPLY #36231 /* ~«Кто ты?»~ */ GOTO 2
  IF ~  Global("Sybil_Quest","GLOBAL",1)
PartyHasItem("KeySybil")
!Dead("Sentry")
~ THEN REPLY #36232 /* ~«Что это за ключ, о котором ты говоришь?»~ */ GOTO 15
  IF ~  Dead("Sentry")
~ THEN REPLY #36233 /* ~«Я позаботился о бандитах, которые преграждали выход. Теперь ты сможешь выбраться отсюда».~ */ GOTO 16
  IF ~~ THEN REPLY #36234 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY #36187 /* ~«Откуда мне знать? Почему бы тебе не пойти и не испытать его на двери? Я буду наблюдать отсюда через щелочку в двери. Если доберешься до улицы целым, я пойду сразу за тобой».~ */
  IF ~~ THEN REPLY #36235 /* ~«Тогда прощай».~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  Global("Sybil_Quest","GLOBAL",2)
Global("Current_Area","GLOBAL",401)
~ THEN BEGIN 16 // from: 14.3
  SAY #36188 /* ~«Рубака, должна признаться... я под впечатлением. Я-то была уверена, что эти звери тебя здорово пожуют. Ну что ж, пожалуй, мне следует отблагодарить тебя, — на миг она умолкает, затем сует руку в мешочек и достает оттуда маленький зеленый драгоценный камешек. — Вот... он был на одном из Псов. Увидимся, рубака».~ */
  IF ~~ THEN REPLY #36236 /* ~«Прощай, Сибил».~ */ DO ~GiveItem("AddrTear",Protagonist)
SetGlobal("Sybil_Quest","GLOBAL",3)
AddexperienceParty(1000)
ChangeDialog("Sybil","")
~ JOURNAL #36032 /* ~Благодаря моим усилиям у Сибил появилась возможность безопасно покинуть Пристанище головорезов. Почему-то меня не покидает мысль, что скоро она снова впутается в неприятности.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.0
  SAY #50008 /* ~«Если тебе все же удастся дожить до того, чтобы найти ключ — дверь в комнате на юго-востоке. Я буду наблюдать из тени. Если сможешь отпереть дверь и доберешься до улицы целым, я пойду сразу за тобой».~ */
  IF ~~ THEN REPLY #50009 /* ~«Тогда прощай».~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sybil_Quest","GLOBAL",0)
Dead("Sentry")
~ THEN BEGIN 18 // from:
  SAY #50010 /* ~«Рубака, должна признаться... я под впечатлением. Я-то была уверена, что эти звери тебя здорово пожуют. Ну что ж, пожалуй, мне следует отблагодарить тебя, — на миг она умолкает, затем сует руку в мешочек и достает оттуда маленький зеленый драгоценный камешек. — Вот... он был на одном из Псов. Увидимся, рубака».~ */
  IF ~~ THEN REPLY #50011 /* ~«Прощай, Сибил».~ */ DO ~GiveItem("AddrTear",Protagonist)
SetGlobal("Sybil_Quest","GLOBAL",3)
AddexperienceParty(1000)
ChangeDialog("Sybil","")
EscapeArea()
~ EXIT
END
