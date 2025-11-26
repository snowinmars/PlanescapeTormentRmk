// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBISH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBISH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 13 15 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34107 /* ~Когда ты входишь в комнату, крупный, крепко сложенный человек встает со стула и подходит к тебе. «ДАРОВА! Меня звать Биш. А ты кем будешь?»~ */
  IF ~~ THEN REPLY #34123 /* ~«У меня нет имени».~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #34124 /* ~Ложь: «Меня зовут Адан».~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 2
  IF ~~ THEN REPLY #34125 /* ~«Не твое дело».~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 3
  IF ~~ THEN REPLY #34126 /* ~Не обращать на него внимания и продолжить идти.~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #34108 /* ~«Что значит: у тебя нет имени? Что, в Стиксе купался, бедняжка бестолковая?! — ты замечаешь, как рука Биша медленно тянется к оружию. — Или просто не хочешь его говорить? Кажись, ты что-то там скрываешь».~ */
  IF ~~ THEN REPLY #34127 /* ~«Послушай, я говорю тебе правду. Я не знаю своего имени».~ */ DO ~IncrementGlobal("Law","GLOBAL",1)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34128 /* ~«Мне нечего скрывать, и я не хочу нарываться на неприятности. Я просто хочу пройти».~ */ DO ~AddexperienceParty(1200)
~ GOTO 8
  IF ~~ THEN REPLY #34129 /* ~Ложь: «Ладно-ладно... меня зовут Адан».~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34130 /* ~«Я всего лишь хочу пройти».~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34131 /* ~«Если ты сейчас же не отойдешь — хлопот не оберешься».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34132 /* ~«Если ты сейчас же не отойдешь — хлопот не оберешься».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34133 /* ~«Я разыскиваю мужчину по имени Фарод».~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34134 /* ~«Я ищу дневник».~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #34135 /* ~«Мне сказали, что где-то здесь я могу найти Фарода».~ */ DO ~AddexperienceParty(1200)
~ GOTO 17
  IF ~~ THEN REPLY #34136 /* ~«Не твое дело».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
  IF ~~ THEN REPLY #34137 /* ~Напасть на Биша.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #66908 /* ~Не обращать внимания на Биша, пройти мимо.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.2 4.1
  SAY #34109 /* ~«Ад-чего? — Биш бросает на тебя безучастный взгляд, затем бешено трясет головой. — Я тебя раньше не видел, и Фарод не говорил ни про каких Аданов на подходе, — ты замечаешь, как рука Биша медленно тянется к оружию. — Тебе лучше сказать мне, какое у тебя дело, пень».~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #66904 /* ~«Может, просто Фарод не доверяет тебе настолько, насколько ты думаешь».~ */ DO ~AddexperienceParty(1200)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34138 /* ~«Я разыскиваю мужчину по имени Фарод».~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34139 /* ~«Я ищу дневник».~ */ GOTO 6
  IF ~~ THEN REPLY #34140 /* ~«Не твое дело».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34141 /* ~«Мне нечего скрывать, и я не хочу нарываться на неприятности. Я просто хочу пройти».~ */ DO ~AddexperienceParty(1200)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34142 /* ~«Я всего лишь хочу пройти».~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34143 /* ~«Если ты сейчас же не отойдешь — хлопот не оберешься».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34144 /* ~«Если ты сейчас же не отойдешь — хлопот не оберешься».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~~ THEN REPLY #34145 /* ~Напасть на Биша.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34146 /* ~Не обращать внимания на Биша, пройти мимо.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.9 1.11 2.3 2.9 4.2 4.4 7.3 7.9
  SAY #34110 /* ~Внезапно Биш выхватывает свое оружие. «Отлично. Раз не хочешь говорить со мной прямо, я это из тебя выбью».~ */
  IF ~~ THEN REPLY #34147 /* ~«Только попробуй...»~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #34111 /* ~Как только ты разворачиваешься, чтобы уйти, Биш преграждает тебе путь. «Я спрошу тебя еще раз, пень: как тебя ЗОВУТ?!»~ */
  IF ~~ THEN REPLY #34148 /* ~«Я не знаю своего имени».~ */ GOTO 1
  IF ~~ THEN REPLY #34149 /* ~Ложь: «Меня зовут Адан».~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 2
  IF ~~ THEN REPLY #34150 /* ~«Не твое дело!»~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #34151 /* ~Напасть на Биша.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34152 /* ~Продолжать игнорировать Биша, попытаться обойти его.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.6 2.1 7.1
  SAY #34112 /* ~«Если бы Фарод хотел тебя видеть, я бы об этом знал, — внезапно Биш выхватывает оружие. — Я устал играть с тобой в загадки, пень. Лучше поищу ответы на твоем трупе».~ */
  IF ~~ THEN REPLY #34153 /* ~«Я так не думаю...»~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.7 2.2 7.2
  SAY #34113 /* ~«Говоришь, был здесь раньше? Дневник не дневник, а тебя я раньше не видел. Сдается мне, ты тут что-то вынюхиваешь прямо у меня под носом, — внезапно Биш выхватывает оружие. — Надеюсь, дело было стоящее, пень».~ */
  IF ~~ THEN REPLY #34154 /* ~«Как знаешь..»~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY #34114 /* ~Биш вскидывает руки над головой от негодования. «Забудь, пень! Это вообще неважно, — он качает головой взад-вперед. — Вот что важно, так это что ты здесь делаешь?»~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #66906 /* ~«Мне сказали, что где-то здесь я могу найти Фарода».~ */ DO ~AddexperienceParty(1200)
~ GOTO 17
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34155 /* ~«Я разыскиваю мужчину по имени Фарод».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34156 /* ~«Я ищу дневник».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 6
  IF ~~ THEN REPLY #34157 /* ~«Не твое дело».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34158 /* ~«Я не хочу нарываться на неприятности. Я просто хочу пройти».~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34159 /* ~«Я всего лишь хочу пройти».~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34160 /* ~«Если ты сейчас же не отойдешь — хлопот не оберешься».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34161 /* ~«Если ты сейчас же не отойдешь — хлопот не оберешься».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~~ THEN REPLY #34162 /* ~Напасть на Биша.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34163 /* ~Не обращать внимания на Биша, пройти мимо.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 1.1 2.4 7.4
  SAY #34115 /* ~Биш смотрит на тебя угрюмо. «Ладно, можешь идти». Когда ты проходишь мимо него, он наклоняется и тихо произносит: «Запомни вот что, пень: если будешь создавать здесь неприятности, я разнесу тебе череп, как только увижу».~ */
  IF ~~ THEN REPLY #34164 /* ~«Прощай...»~ */ EXIT
  IF ~~ THEN REPLY #34165 /* ~«Я буду делать то, что захочу...»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 2.5 7.5
  SAY #34116 /* ~Биш качает головой. «Мы все чего-то хотим, рубака, — он начинает хохотать. — Я тебя не знаю, и ты мне не нравишься, так что предлагаю сделку: твои деньги или твоя голова».~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #34166 /* ~«Тогда деньги».~ */ DO ~TakePartyGold(10000)
~ GOTO 12
  IF ~  PartyGold(0)
~ THEN REPLY #34167 /* ~«Тогда деньги».~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 14
  IF ~~ THEN REPLY #34168 /* ~«Ты ничего не получишь!»~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.4 2.6 7.6
  SAY #34117 /* ~«Да ты еще большая бестолочь, чем я думал, рубака! — Биш пожимает плечами. — Ладно, заморыш, посмотрим, что ты из себя представляешь!»~ */
  IF ~~ THEN REPLY #34169 /* ~«Я тебе покажу бестолочь...»~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.5 2.7 7.7
  SAY #34118 /* ~Биш ворчит: «Ты похож на четкого рубаку — ни дать, ни взять, — он кивает тебе, перед тем как достать оружие. — Но отсюда ты уже не выберешься».~ */
  IF ~~ THEN REPLY #34170 /* ~«Позволю себе не согласиться...»~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #34119 /* ~Биш проводит тщательный обыск твоего имущества. «Все равно стоило бы оставить себе твою голову — она у тебя, похоже, самая ценная! А теперь пошевелись. И предупреждаю: если будешь создавать здесь проблемы — догоню и добью!»~ */
  IF ~~ THEN REPLY #34171 /* ~«Я пошел».~ */ EXIT
  IF ~~ THEN REPLY #34172 /* ~«Ублюдок...»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #34120 /* ~Ты видишь Биша, подходящего к своему посту. Когда ты подходишь, он смотрит в твою сторону и кивает. «Дарова. Иди куда шел, и быстро».~ */
  IF ~~ THEN REPLY #34173 /* ~«Хорошо».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #34121 /* ~Биш перетряхивает твои пожитки на предмет мелочи... но ничего не находит. «Ты что, спецом тратишь мое время, или думаешь, твое тряпье чего-то стоит? — Биш начинает размахивать оружием. — Все сходится к тому, что придется продать твое тело!»~ */
  IF ~~ THEN REPLY #34174 /* ~«Попробуй...»~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Buried_Attack","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #34122 /* ~Биш подскакивает, чтобы встретить тебя с оружием в руках! «Что я тебе говорил, пень? Пошумел там внизу — теперь получишь по черепу!»~ */
  IF ~~ THEN REPLY #34175 /* ~«Как знаешь..»~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0
  SAY #66905 /* ~Биш фыркает. «Ну, тогда передай ему: пусть разберется с этим, если хочет, чтобы я со своими парнями охранял эту чертову помойку, — он прячет оружие и жестом указывает на люк на полу. — Залазь».~ */
  IF ~~ THEN REPLY #66910 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.8 7.0
  SAY #66907 /* ~Биш с подозрением смотрит на тебя. «Обычно Фарод предупреждает насчет посетителей, и что-то я не припомню, чтобы он говорил о таких как ты, — он быстро окидывает тебя взглядом и безразлично пожимает плечами. — Ладно, в любом случае стража с тобой справится. Проходи».~ */
  IF ~~ THEN REPLY #66909 /* ~«Прощай».~ */ EXIT
END
