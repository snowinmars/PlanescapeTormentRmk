// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAUK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAUK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 2 3 7 even though they appear after this state */
~  Global("Rings3","Global",0)
~ THEN BEGIN 0 // from:
  SAY #49900 /* ~Перед тобой юноша в простой, но ухоженной одежде. При твоем приближении он перестает расхаживать из стороны в сторону.~ */
  IF ~~ THEN REPLY #49901 /* ~«Приветствую...»~ */ GOTO 4
  IF ~~ THEN REPLY #49902 /* ~«Неважно. Прощай».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 2 3 7 even though they appear after this state */
~  Global("Rings3","Global",1)
~ THEN BEGIN 1 // from:
  SAY #49903 /* ~«Ты принес? Да?»~ */
  IF ~  PartyHasItem("SilRing")
PartyHasItem("BroRing")
PartyHasItem("GolRing")
~ THEN REPLY #49904 /* ~«У меня есть все кольца. Вот».~ */ DO ~TakePartyItemNum("SilRing",1)
TakePartyItemNum("BroRing",1)
TakePartyItemNum("GolRing",1)
~ GOTO 6
  IF ~~ THEN REPLY #49905 /* ~«Я вернусь, как только их найду. Прощай».~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 3 7 even though they appear after this state */
~  Global("Rings3","Global",2)
~ THEN BEGIN 2 // from:
  SAY #49906 /* ~«Ты друг. Помог Рауку. Хорошо».~ */
  IF ~~ THEN REPLY #49907 /* ~«Прощай».~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 7 even though they appear after this state */
~  Global("WIdiots","Global",1)
~ THEN BEGIN 3 // from:
  SAY #49908 /* ~«Раук потерял друзей. Но Раук нашел нового друга. Зовет его Зеленой Штуковиной».~ */
  IF ~~ THEN REPLY #49909 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #49910 /* ~«У Раука проблема, большая. Ты поможешь?»~ */
  IF ~~ THEN REPLY #49911 /* ~«Что не так?»~ */ GOTO 5
  IF ~~ THEN REPLY #49912 /* ~«У меня нет времени на это. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #49913 /* ~«Раук забыл кольца в палатке. Нужны друзьям для магии. Нет колец — разозлятся на Раука. Одно кольцо коричневое как звенелки. Другое блестит как зеркало. Последнее красивое и желтое. Принесешь Рауку?»~ */
  IF ~~ THEN REPLY #49914 /* ~«Я принесу их тебе, Раук».~ */ DO ~SetGlobal("Rings3","Global",1)
~ JOURNAL #49916 /* ~Раук попросил меня принести три кольца из его палатки. Судя по его описанию, первое сделано из золота, второе — из серебра, а третье — из бронзы. Теперь мне нужно всего лишь найти палатку Раука. Похоже, Раук глуповат, так что она должна быть где-то неподалеку.~ */ EXIT
  IF ~~ THEN REPLY #49915 /* ~«Забудь об этом. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0
  SAY #49917 /* ~«Теперь ты новый друг Раука. Раук забирает кольца. Раук благодарит новых друзей».~ */
  IF ~~ THEN REPLY #49918 /* ~«Прощай, Раук».~ */ DO ~SetGlobal("Rings3","Global",2)
AddexperienceParty(500)
StartCutSceneMode()
StartCutSceneEx("3012cut1",FALSE)
~ JOURNAL #49919 /* ~Я вернулся с тремя кольцами и вручил их Рауку. Простая задача для простака.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Apprent_DEAD_KAPUTZ","GLOBAL",0)
!Global("Rings3","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #66367 /* ~«Ты убил друга Раука. Раук теперь сделает тебе больно, очень».~ */
  IF ~~ THEN REPLY #66368 /* ~Атаковать Раука.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
