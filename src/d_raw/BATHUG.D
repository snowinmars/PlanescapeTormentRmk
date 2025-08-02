// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~BATHUG~

IF ~  GlobalGT("RW","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #34568 /* ~«Ты расплатился, убив эту сучку Кристалл. Хорошая новость для босса. Но как по мне, нам все равно стоило бы тебя прирезать. Так что... вали отсюда».~ */
  IF ~~ THEN REPLY #34569 /* ~«Как трогательно. Прощай».~ */ EXIT
END

IF ~  Global("Paid_DAS","AR0301",0)
~ THEN BEGIN 1 // from:
  SAY #34570 /* ~«Ты очень скоро нам заплатишь. Монетой или кровью. Иди, поговори с собирателем пошлины — и не пытайся пройти мимо него. Доходчиво?»~ */
  IF ~~ THEN REPLY #34571 /* ~«Я так не думаю».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34572 /* ~«Хорошо».~ */ EXIT
  IF ~~ THEN REPLY #34573 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Paid_DAS","AR0301",1)
~ THEN BEGIN 2 // from:
  SAY #34574 /* ~«Ты уже заплатил, почему бы тебе не исчезнуть? Не суй свой нос куда попало».~ */
  IF ~~ THEN REPLY #34575 /* ~«Как бы то ни было. Прощай».~ */ EXIT
END
