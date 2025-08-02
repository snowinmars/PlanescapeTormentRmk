// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOADY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOADY~

IF ~  GlobalLT("Sarhava","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #32066 /* ~Когда ты подходишь, молодой вельможа ухмыляется, но не произносит ни слова.~ */
  IF ~~ THEN REPLY #32067 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #32073 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #32069 /* ~Он намеренно тебя игнорирует.~ */
  IF ~~ THEN REPLY #32074 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #32070 /* ~Когда ты подходишь, молодой вельможа избегает встретиться с тобой взглядом. Он хихикает в ладонь, тряся головой.~ */
  IF ~~ THEN REPLY #32075 /* ~«Приветствую...»~ */ GOTO 3
  IF ~~ THEN REPLY #32076 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32071 /* ~Он закатывает глаза и жестом гонит тебя прочь, не желая отвечать на твое приветствие ни единым словом.~ */
  IF ~~ THEN REPLY #32077 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",6)
~ THEN BEGIN 4 // from:
  SAY #32072 /* ~Молодой вельможа вежливо кивает в знак приветствия, но отказывается поддерживать с тобой разговор.~ */
  IF ~~ THEN REPLY #32078 /* ~Уйти.~ */ EXIT
END
