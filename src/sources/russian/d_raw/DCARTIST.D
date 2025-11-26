// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARTIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARTIST~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51717 /* ~Эта привлекательная девушка с бледным лицом улыбается тебе, указывая на кипу набросков, нарисованных углем. «Приветствую, добрый сэр, рада вас видеть. Меня зовут Улана; по профессии я художница, и с радостью сделаю для вас отличный портрет всего за пять медных монет. Если хотите, могу нарисовать серьезную картину или карикатуру».~ */
  IF ~~ THEN REPLY #51718 /* ~«Нет, спасибо. Прощай».~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51719 /* ~«Рада снова вас видеть, добрый сэр. Пришли за портретом? Уверяю вас, результат вам понравится...»~ */
  IF ~~ THEN REPLY #51720 /* ~«Не сейчас, спасибо. Прощай».~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51721 /* ~Она улыбается, только немного грустно. «Что ж, прощайте. Пожалуйста, непременно возвращайтесь, если передумаете».~ */
  IF ~~ THEN REPLY #51722 /* ~Уйти.~ */ EXIT
END
