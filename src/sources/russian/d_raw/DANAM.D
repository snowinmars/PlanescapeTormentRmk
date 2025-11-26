// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DANAM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33042 /* ~Едва ты входишь, как к тебе приближается сборщик средних лет, одетый в лохмотья. «Я... — хмыкнув, он быстро тебя оглядывает, — тебя не знаю».~ */
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33044 /* ~«Приветствую».~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33049 /* ~«Не могу сказать, что и я тебя знаю».~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #33050 /* ~«Я просто проходил мимо».~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #33051 /* ~Не обращать внимания на сборщика, пройти мимо.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #33043 /* ~Сборщик продолжает пялиться на тебя.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33053 /* ~«Я разыскиваю мужчину по имени Фарод».~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #33052 /* ~«Тебе не встречался где-нибудь поблизости дневник?»~ */ GOTO 2
  IF ~~ THEN REPLY #33054 /* ~«Какие-то проблемы?»~ */ GOTO 4
  IF ~~ THEN REPLY #33055 /* ~Не обращать внимания на сборщика, пройти мимо.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #33045 /* ~Меня не колышет, чего ты там ищешь, пень, — он сплевывает. — Что меня колышет, так это то, что ты все еще дышишь в моем присутствии».~ */
  IF ~  CheckStatGT(Protagonist,13,STR)
~ THEN REPLY #33058 /* ~«Если ты меня не пропустишь, сборщик, то один из нас попадет в Морг, и это точно буду не я».~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,14,STR)
~ THEN REPLY #33093 /* ~«Если ты меня не пропустишь, сборщик, то один из нас попадет в Морг, и это точно буду не я».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33094 /* ~«Собирать тела до того, как они умерли — верный способ повидаться с Леди».~ */ GOTO 8
  IF ~~ THEN REPLY #33095 /* ~«Тогда я оставлю тебя, пень».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~~ THEN REPLY #33096 /* ~Атаковать сборщика.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32994 /* ~Не обращать внимания на сборщика, пройти мимо.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #33046 /* ~Едва завидев твое приближение, сборщик с отвращением окидывает тебя взглядом. «Больше никаких слов, рубака. Сейчас ты поймешь, что здесь они ничего не стоят». Он достает из кармана нож: «Боюсь, что только твое тело имеет здесь цену».~ */
  IF ~~ THEN REPLY #32995 /* ~«Я так не думаю...»~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #33047 /* ~«Как по мне, пень, проблема в том... что ты все еще дышишь в моем присутствии». Он сплевывает.~ */
  IF ~  CheckStatGT(Protagonist,13,STR)
~ THEN REPLY #33097 /* ~«Если ты меня не пропустишь, сборщик, то один из нас попадет в Морг, и это точно буду не я».~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,14,STR)
~ THEN REPLY #33101 /* ~«Если ты меня не пропустишь, сборщик, то один из нас попадет в Морг, и это точно буду не я».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33103 /* ~«Собирать тела до того, как они умерли — хороший способ повидаться с Леди».~ */ GOTO 8
  IF ~~ THEN REPLY #33104 /* ~«Тогда я оставлю тебя, пень».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~~ THEN REPLY #33105 /* ~Атаковать сборщика.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33106 /* ~Не обращать внимания на сборщика, пройти мимо.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.3 2.5 4.3 4.5
  SAY #33048 /* ~Уходя, ты замечаешь, что сборщик достает нож из кармана. «Не знаю, чего ты думал, когда шел сюда, рубака, но единственное место, куда ты теперь попадешь — это Морг».~ */
  IF ~~ THEN REPLY #33107 /* ~«Я так не думаю...»~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 4.0
  SAY #33090 /* ~Твоя угроза охладила его пыл. «Вали отсюда, рубака! — шипит он. — Я бы на твоем месте следил за собой».~ */
  IF ~~ THEN REPLY #33108 /* ~«Аналогично...»~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1 4.1
  SAY #33091 /* ~В ответ на твою угрозу сборщик достает из кармана нож. «Придется не согласиться с тобой, пень. Это ТЫ скоро станешь звенелками в моем кармане!»~ */
  IF ~~ THEN REPLY #33109 /* ~«Ну попробуй...»~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 4.2
  SAY #33092 /* ~Похоже, твои слова вразумили сборщика: он разворачивается и уходит. «Следи за собой, рубака. Большинство здесь говорит сперва ножами, а уж потом — черепушками. Будешь и дальше здесь торчать — и я с тобой так поболтаю».~ */
  IF ~~ THEN REPLY #33110 /* ~«Как скажешь...»~ */ EXIT
END
