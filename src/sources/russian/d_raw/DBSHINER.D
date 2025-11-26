// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBSHINER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBSHINER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51711 /* ~Когда ты входишь в палатку, юноша улыбается тебе и жестом приглашает тебя присесть. «Почистить и навощить сапоги, сэр? Изумительный блеск всего за две медных монетки...»~ */
  IF ~~ THEN REPLY #51712 /* ~«Нет, спасибо. Прощай».~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51713 /* ~«Вновь приветствую вас, сэр. Вероятно, вы здесь, чтобы начистить свои сапоги? Чистка и вощение за пару медных монет...»~ */
  IF ~~ THEN REPLY #51714 /* ~«Нет, спасибо. Прощай».~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51715 /* ~«И вам удачи, сэр... пожалуйста, возвращайтесь, если ваши сапоги будут нуждаться в чистке».~ */
  IF ~~ THEN REPLY #51716 /* ~Уйти.~ */ EXIT
END
