// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR6~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49016 /* ~Ты видишь женщину с обеспокоенным выражением лица.~ */
  IF ~~ THEN REPLY #49017 /* ~«Приветствую».~ */ GOTO 2
  IF ~~ THEN REPLY #49018 /* ~Оставить женщину в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49019 /* ~Женщина вздыхает. «Мой муж снова пропал».~ */
  IF ~~ THEN REPLY #49020 /* ~«Звучит так, будто он занятой мужчина».~ */ GOTO 4
  IF ~~ THEN REPLY #49021 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #49022 /* ~«Я жду возвращения моего мужа. Он пропал, и я начинаю беспокоиться».~ */
  IF ~~ THEN REPLY #49023 /* ~«Я уверен, что он скоро вернется».~ */ GOTO 3
  IF ~~ THEN REPLY #49024 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49025 /* ~«Я знаю, что ты прав. О... посмотри на время. Извини меня, но мне надо заняться неотложным делами».~ */
  IF ~~ THEN REPLY #49026 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49027 /* ~«Да, так и есть, но я немного занята... пожалуйста, оставь меня».~ */
  IF ~~ THEN REPLY #49028 /* ~«Прощай».~ */ EXIT
END
