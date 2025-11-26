// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBODY1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBODY1~

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #20615 /* ~Тело неподвижно. Без тычков и уколов оно ничего не говорит и не делает.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20616 /* ~«Это не очень-то похоже на зомби...»~ */ EXTERN ~DANNAH~ 111
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #54873 /* ~«Это не очень-то похоже на зомби...»~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #20617 /* ~Испустив пустой вздох, тело судорожно дергается, словно по нему идет электрический ток.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20618 /* ~«Приветствую».~ */ EXTERN ~DANNAH~ 112
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20619 /* ~«Кто ты?»~ */ EXTERN ~DANNAH~ 112
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20620 /* ~«Мне нужно задать тебе несколько вопросов...»~ */ EXTERN ~DANNAH~ 112
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20621 /* ~«Приветствую».~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20631 /* ~«Кто ты?»~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20632 /* ~«Мне нужно задать тебе несколько вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #20633 /* ~«Забудь».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 1.4 1.5
  SAY #20622 /* ~«Н-н-н-х-г! Агх...» — бубнит тело своим разжиженным языком, но ты не можешь понять ни единого слова.~ */
  IF ~~ THEN REPLY #20624 /* ~«Тогда забудь об этом...»~ */ EXIT
END
