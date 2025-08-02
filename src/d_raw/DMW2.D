// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47953 /* ~Перед тобой крепкий с виду парень. Кажется, он поглощен проверкой содержимого ящиков. Он не замечает твоего приближения.~ */
  IF ~~ THEN REPLY #47954 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #47955 /* ~Игнорировать его.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47956 /* ~Он смотрит на тебя через плечо, затем возвращается к работе. «Извини, рубака. Я не могу прерваться, чтобы потрепаться с тобой. Слишком много работы». Он возвращается к своим делам.~ */
  IF ~~ THEN REPLY #47957 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #47958 /* ~«Хорошо, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47959 /* ~Говоря с тобой, он не отрывается от работы. «Извини, придется тебе найти кого-нибудь другого для твоих вопросов: у меня попросту нет времени. Спроси у Лазло, он обычно возле топки».~ */
  IF ~~ THEN REPLY #47960 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #47961 /* ~Перед тобой работник рынка. Он замечает твое приближение и хмурится. «Привет, рубака».~ */
  IF ~~ THEN REPLY #47962 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47963 /* ~Он издает вздох. «Я бы тебе помог, да времени нет. Спроси у Лазло, он обычно возле топки».~ */
  IF ~~ THEN REPLY #47964 /* ~«Ладно. Прощай».~ */ EXIT
END
