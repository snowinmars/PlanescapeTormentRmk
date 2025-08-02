// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48991 /* ~Ты видишь полную женщину, занятую своими делами по хозяйству. Она не заметила, как ты вошел в комнату.~ */
  IF ~~ THEN REPLY #48993 /* ~«Приветствую».~ */ GOTO 2
  IF ~~ THEN REPLY #48994 /* ~Оставить женщину в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48995 /* ~«Опять ты... Как я вижу, твои манеры лучше не стали».~ */
  IF ~~ THEN REPLY #48996 /* ~«Хм-м... это не то место, куда я хотел попасть».~ */ GOTO 4
  IF ~~ THEN REPLY #48997 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48998 /* ~«Что ты делаешь в моем доме? У тебя совсем нет хороших манер? Нельзя просто так входить в дома людей».~ */
  IF ~~ THEN REPLY #48999 /* ~«Прошу прощения. Я не знал, что здесь кто-то живет».~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49000 /* ~«Ну, а теперь знаешь. Уходи, и закрой дверь за собой с той стороны. У меня много дел по хозяйству, которые нужно закончить, и я не хочу больше отвлекаться».~ */
  IF ~~ THEN REPLY #49001 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49002 /* ~«Давай, проваливай туда, куда тебе надо, и оставь меня в покое».~ */
  IF ~~ THEN REPLY #49003 /* ~«Прощай».~ */ EXIT
END
