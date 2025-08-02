// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
CreatureInArea("AR0706")
~ THEN BEGIN 0 // from:
  SAY #53695 /* ~«Слушай, пень, валил бы ты отсюда... для тебя же лучше будет».~ */
  IF ~~ THEN REPLY #53696 /* ~«Ну, тогда прощай».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(1)
CreatureInArea("AR0706")
~ THEN BEGIN 1 // from:
  SAY #53697 /* ~«Наверное, ты не расслышал. Проваливай. Повторять не буду».~ */
  IF ~~ THEN REPLY #53698 /* ~«Хорошо. Я ухожу».~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(2)
CreatureInArea("AR0706")
~ THEN BEGIN 2 // from:
  SAY #53699 /* ~«У тебя была возможность, пень. Надо было уйти, пока можно было». Головорез бросается в атаку!~ */
  IF ~~ THEN REPLY #53700 /* ~Сражаться.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  Global("Lynch_Mob","GLOBAL",1)
CreatureInArea("AR0900")
~ THEN BEGIN 3 // from:
  SAY #66759 /* ~«Ты здесь языком чесать собрался или нас спасать? Двигай давай!»~ */
  IF ~~ THEN REPLY #66760 /* ~«Ладно. Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #1 ~  Global("Lynch_Mob","GLOBAL",0)
CreatureInArea("AR0900")
~ THEN BEGIN 4 // from:
  SAY #66761 /* ~Этот поседевший мужчина смотрит на тебя с презрением. «Чего надо, пень? Не видишь, мы заняты уборкой мусора, из-за которого мы попали в Карцери? Разберемся с этим бедолагой — и все пучком. Без проблем вернемся во Внешние земли».~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #66769 /* ~«На самом деле ваше стадное поведение только еще сильнее затягивает этот город в Карцери. Отпустите его и вместе займитесь борьбой со злом, захватившим город, и тогда у вас будет куда больше шансов того, что все будет 'пучком'».~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #66771 /* ~«На самом деле ваше стадное поведение только еще сильнее затягивает этот город в Карцери. Отпустите его и вместе займитесь борьбой со злом, захватившим город, и тогда у вас будет куда больше шансов того, что все будет 'пучком'».~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #66772 /* ~«С чего вы взяли, что его убийством решите свои проблемы? Убеди этих людей помочь защитить город от монстров. Показать вашим политиканам, что они над вами не властны — вот ваша лучшая месть».~ */ DO ~SetGlobal("Lynch_Mob","GLOBAL",2)
~ GOTO 6
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #66773 /* ~«С чего вы взяли, что его убийством решите свои проблемы? Убеди этих людей помочь защитить город от монстров. Показать вашим политиканам, что они над вами не властны — вот ваша лучшая месть».~ */ GOTO 5
  IF ~~ THEN REPLY #66774 /* ~«Прекратите немедленно. Пока я здесь, не будет никакого самосуда».~ */ DO ~SetGlobal("Lynch_Mob","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #66775 /* ~«У меня есть другие дела. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.3
  SAY #66776 /* ~«Но он... он... Черт! Ладно, убедил». Он повышает голос, чтобы толпа его услышала. «Отпустите его! Нам нужно навести порядок в городе!»~ */
  IF ~~ THEN REPLY #66777 /* ~«Спасибо, приятель. Удачи».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
SetGlobal("Lynch_Mob","GLOBAL",1)
AddexperienceParty(150000)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2 4.4
  SAY #66778 /* ~«Заткни пасть, пень. У нас есть дела поважнее!» Он поворачивается к своим помощникам. «Пригвоздите его!»~ */
  IF ~~ THEN REPLY #66779 /* ~Атаковать.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66780 /* ~Смотреть.~ */ EXIT
END
