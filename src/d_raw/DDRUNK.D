// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRUNK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRUNK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9710 /* ~Этот мужчина порядком нализался из своей тыквенной бутыли. Он с трудом может стоять, не то что разговаривать с тобой. От него воняет каким-то пойлом, блевотиной и затхлой мочой.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #9807 /* ~«У меня есть вопросы к тебе...»~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #9809 /* ~«У меня есть вопросы к тебе...»~ */ GOTO 2
  IF ~~ THEN REPLY #9811 /* ~Игнорировать его.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9792 /* ~До забулдыги с трудом доходит, что ты разговариваешь с ним. Он смущенно озирается, пытаясь найти источник твоего голоса. Ты замечаешь, что Анна подкрадывается к нему сзади с явным намерением поживиться его кошельком.~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #9813 /* ~«Анна... не надо».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_1","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 75
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #9816 /* ~«Анна... не надо».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_1","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 76
  IF ~~ THEN REPLY #9819 /* ~Встряхнуть его, чтобы привлечь внимание.~ */ GOTO 4
  IF ~~ THEN REPLY #9824 /* ~Оставить его в покое.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 77
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #9793 /* ~До забулдыги с трудом доходит, что ты разговариваешь с ним. Он смущенно озирается, пытаясь найти источник твоего голоса.~ */
  IF ~~ THEN REPLY #9828 /* ~Встряхнуть его, чтобы привлечь внимание.~ */ GOTO 3
  IF ~~ THEN REPLY #9830 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9795 /* ~«А, да? Шта? Ииииик!» Неожиданно его начинает обильно рвать; ты отпрыгиваешь назад, стараясь избежать брызг. Ничего более полезного от этого растрепанного вонючего разочарования ты не получишь.~ */
  IF ~~ THEN REPLY #9832 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #9796 /* ~«А, да? Шта? Ииииик!» Неожиданно его начинает обильно рвать; вместе с Анной ты отпрыгиваешь назад, стараясь избежать брызг. Ничего более полезного от этого растрепанного вонючего разочарования ты не получишь.~ */
  IF ~~ THEN REPLY #9834 /* ~Оставить его в покое.~ */ EXIT
END
