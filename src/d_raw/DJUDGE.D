// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUDGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUDGE~

IF ~  NumTimesTalkedTo(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #54119 /* ~Этот человечек со скорбным лицом поднимает бровь, когда ты подходишь. Говорит он тоном зажиревшего надменного аристократа. «Прошу заметить, уважаемый, что ты прерываешь официальный процесс, так что подбирай слова: я здесь влиятельный магистрат, и будет жаль, если ты разделишь, — он указывает на чиновника, которого собираются казнить, — довольно *незавидную* судьбу этого человека».~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #54120 /* ~«Если ты его казнишь, это только прибавит хаоса, который и сбросил этот город в Карцери. Мы должны положить конец этому безумию, чтобы вернуть Проклятий на прежнее место... пока нас *всех* не убили».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #54121 /* ~«Если ты его казнишь, это только прибавит хаоса, который и сбросил этот город в Карцери. Мы должны положить конец этому безумию, чтобы вернуть Проклятий на прежнее место... пока нас *всех* не убили».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #54122 /* ~«Если ты его казнишь, это только прибавит хаоса, который и сбросил этот город в Карцери. Мы должны положить конец этому безумию, чтобы вернуть Проклятий на прежнее место... пока нас *всех* не убили».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #54123 /* ~«Ты не можешь казнить этого человека. Это *неправильно*. Из-за подобных вещей Проклятый и сполз в Карцери... мы должны это прекратить, чтобы вернуть привратный город во Внешние земли».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #54124 /* ~«Ты не можешь казнить этого человека. Это *неправильно*. Из-за подобных вещей Проклятый и сполз в Карцери... мы должны это прекратить, чтобы вернуть привратный город во Внешние земли».~ */ GOTO 4
  IF ~~ THEN REPLY #54125 /* ~«'Официальный процесс'? Сомневаюсь. Ты не казнишь этого человека».~ */ GOTO 1
  IF ~~ THEN REPLY #54126 /* ~«Тогда неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.5 4.3 6.5
  SAY #54127 /* ~«О? — он опускает одну кустистую бровь, поднимая другую. — Значит, ты решил встать на пути правосудия? И *как* же ты собираешься остановить казнь, уважаемый?»~ */
  IF ~  NearbyDialog("Dvhail")
~ THEN EXTERN ~DVHAIL~ 155
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #54128 /* ~«Этот человек — всего лишь козел отпущения. Если его казнят, это только прибавит хаоса, который и сбросил этот город в Карцери. Мы должны положить конец этому безумию, чтобы вернуть Проклятый на прежнее место... пока нас *всех* не убили».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57330 /* ~«Этот человек — всего лишь козел отпущения. Если его казнят, это только прибавит хаоса, который и сбросил этот город в Карцери. Мы должны положить конец этому безумию, чтобы вернуть Проклятый на прежнее место... пока нас *всех* не убили».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57333 /* ~«Этот человек — всего лишь козел отпущения. Если его казнят, это только прибавит хаоса, который и сбросил этот город в Карцери. Мы должны положить конец этому безумию, чтобы вернуть Проклятый на прежнее место... пока нас *всех* не убили».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #57336 /* ~«Ты не можешь позволить казнить этого человека — он всего лишь козел отпущения. Это *неправильно*. Из-за подобных вещей Проклятый и сполз в Карцери... мы должны это прекратить, чтобы вернуть привратный город во Внешние земли».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #57339 /* ~«Ты не можешь позволить казнить этого человека — он всего лишь козел отпущения. Это *неправильно*. Из-за подобных вещей Проклятый и сполз в Карцери... мы должны это прекратить, чтобы вернуть привратный город во Внешние земли».~ */ GOTO 4
  IF ~~ THEN REPLY #57341 /* ~«Убив палача... и тебя, если понадобится».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Judge_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #57343 /* ~«Забудь, я не собираюсь этого делать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #57345 /* ~Кровь отливает от лица судьи. «В-в-возможно, м-мы немножко поторопились с приговором. Стража! Освободить этого человека! — он робко улыбается Вейлору. — Благодарю за весьма своевременную помощь, сэр».~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 156
END

IF ~~ THEN BEGIN 3 // from: 1.6
  SAY #57347 /* ~Брови судьи взлетают вверх. «Что?.. Да как ты *смеешь*?! Стража! Взять его — живым или мертвым!»~ */
  IF ~~ THEN REPLY #57348 /* ~Напасть на судью.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #57350 /* ~Напасть на стражников.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,"CrstGrd")
~ EXIT
  IF ~~ THEN REPLY #57352 /* ~Напасть на палача.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,"Execute")
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4 1.5 6.4
  SAY #57353 /* ~«*Неправильно*? Видно, ты позабыл, что магистрат здесь — я, уважаемый. В этом городе я решаю, что правильно, а что нет!»~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57354 /* ~«Но если ты его казнишь, это только прибавит хаоса, который и сбросил этот город в Карцери. Мы должны положить конец этому безумию, чтобы вернуть Проклятый на прежнее место... пока нас *всех* не убили».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57357 /* ~«Но если ты его казнишь, это только прибавит хаоса, который и сбросил этот город в Карцери. Мы должны положить конец этому безумию, чтобы вернуть Проклятый на прежнее место... пока нас *всех* не убили».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57359 /* ~«Но если ты его казнишь, это только прибавит хаоса, который и сбросил этот город в Карцери. Мы должны положить конец этому безумию, чтобы вернуть Проклятый на прежнее место... пока нас *всех* не убили».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~~ THEN REPLY #57361 /* ~«Как бы там ни было, ты не можешь казнить этого человека».~ */ GOTO 1
  IF ~~ THEN REPLY #57363 /* ~«Тогда неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 0.1 0.2 0.3 1.1 1.2 1.3 1.4 4.0 4.1 4.2 6.0 6.1 6.2 6.3
  SAY #57364 /* ~Судья хмурит свои густые брови, образуя густую белую букву V над глазами. Он смотрит на тебя, потом на служащего, потом снова на тебя. «Твои слова мудры и разумны, сэр... и я благодарю тебя за весьма своевременную помощь. И город, и осужденный будут тебе весьма признательны. Больше не будет поспешных разбирательств. Стража! Освободить осужденного».~ */
  IF ~~ THEN REPLY #57365 /* ~«Спасибо. Прощай».~ */ DO ~AddexperienceParty(225000)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY #57378 /* ~«Опять? И что же на этот раз, уважаемый?»~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57379 /* ~«Этот человек — всего лишь козел отпущения. Если его казнят, это только прибавит хаоса, который и сбросил этот город в Карцери. Мы должны положить конец этому безумию, чтобы вернуть Проклятый на прежнее место... пока нас *всех* не убили».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57380 /* ~«Этот человек — всего лишь козел отпущения. Если его казнят, это только прибавит хаоса, который и сбросил этот город в Карцери. Мы должны положить конец этому безумию, чтобы вернуть Проклятый на прежнее место... пока нас *всех* не убили».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57381 /* ~«Этот человек — всего лишь козел отпущения. Если его казнят, это только прибавит хаоса, который и сбросил этот город в Карцери. Мы должны положить конец этому безумию, чтобы вернуть Проклятый на прежнее место... пока нас *всех* не убили».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #57382 /* ~«Ты не можешь позволить казнить этого человека — он всего лишь козел отпущения. Это *неправильно*. Из-за подобных вещей Проклятый и сполз в Карцери... мы должны это прекратить, чтобы вернуть привратный город во Внешние земли».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #57383 /* ~«Ты не можешь позволить казнить этого человека — он всего лишь козел отпущения. Это *неправильно*. Из-за подобных вещей Проклятый и сполз в Карцери... мы должны это прекратить, чтобы вернуть привратный город во Внешние земли».~ */ GOTO 4
  IF ~~ THEN REPLY #57384 /* ~«Я не могу позволить этому случиться... ты не станешь казнить этого человека».~ */ GOTO 1
  IF ~~ THEN REPLY #57385 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #57386 /* ~Этот человечек со скорбным лицом поднимает бровь, когда ты подходишь. «Здесь тебе делать нечего, уважаемый, и не надоедай мне... Советую тебе удалиться».~ */
  IF ~~ THEN REPLY #57387 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #57389 /* ~«Опять? — судья издает раздраженный вздох. — Здесь тебе делать нечего, уважаемый, и не надоедай мне... Советую тебе удалиться».~ */
  IF ~~ THEN REPLY #57390 /* ~Уйти.~ */ EXIT
END
