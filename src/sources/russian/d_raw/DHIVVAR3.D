// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48979 /* ~Ты видишь просто одетую женщину, у которой рассерженный вид.~ */
  IF ~~ THEN REPLY #48980 /* ~«Приветствую».~ */ GOTO 2
  IF ~~ THEN REPLY #48981 /* ~Оставить женщину в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48982 /* ~«Кажется, ты не понимаешь с первого раза. Я же сказала, я хочу остаться одна».~ */
  IF ~~ THEN REPLY #48983 /* ~«Хм-м, кажется, твое настроение не изменилось».~ */ GOTO 3
  IF ~~ THEN REPLY #48984 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48985 /* ~«Неужели во всем городе нет места, где я могу уединиться?»~ */
  IF ~~ THEN REPLY #48986 /* ~«Почему ты хочешь уединиться?»~ */ GOTO 3
  IF ~~ THEN REPLY #48987 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48988 /* ~«'Уединиться' означает 'без тебя'. Оставь меня в покое».~ */
  IF ~~ THEN REPLY #48989 /* ~«Прощай».~ */ EXIT
END
