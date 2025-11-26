// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUJOG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUJOG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53212 /* ~Этот огромный караульный сыплет распоряжениями гражданам, собравшимся вокруг него. Он смотрит на тебя сквозь прорези своего шлема. «Чего тебе, зануда? Давай быстрей, у нас тут полно дел».~ */
  IF ~~ THEN REPLY #53213 /* ~«Что здесь происходит?»~ */ GOTO 1
  IF ~~ THEN REPLY #53214 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53215 /* ~«А на что это похоже, бедолага?! Мы собираемся разграбить этот склад. Ты с нами или нет? Потому что это будет не беспорядочная жалкая свалка... Мы будем делать все *по правилам* согласно моим приказам».~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53216 /* ~«Если мы остынем, то это поможет городу соскользнуть обратно во Внешние земли. Как ты думаешь, если Проклятый будет кишеть монстрами, как долго вы будет наслаждаться разграблением?»~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53217 /* ~«Если мы остынем, то это поможет городу соскользнуть обратно во Внешние земли. Как ты думаешь, если Проклятый будет кишеть монстрами, как долго вы будет наслаждаться разграблением?»~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53218 /* ~«Если мы остынем, то это поможет городу соскользнуть обратно во Внешние земли. Как ты думаешь, если Проклятый будет кишеть монстрами, как долго вы будет наслаждаться разграблением?»~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #53219 /* ~«То, что вы делаете, только усугубляет проблемы. Возьми этих людей и помоги защищать стены, а не занимайся мародерством, — и город сможет соскользнуть обратно во Внешние земли».~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #53220 /* ~«То, что вы делаете, только усугубляет проблемы. Возьми этих людей и помоги защищать стены, а не занимайся мародерством, — и город сможет соскользнуть обратно во Внешние земли».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53221 /* ~«Стойте. Пока я здесь, не будет никаких мародерств».~ */ GOTO 3
  IF ~~ THEN REPLY #53222 /* ~«У меня есть другие дела. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.3
  SAY #53223 /* ~Караульный приподнимает шлем и плюет тебе под ноги. «Ха! Прочь с глаз моих, бедолага, настало время грабежей».~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53224 /* ~«Если мы остынем, то это поможет городу соскользнуть обратно во Внешние земли. Как ты думаешь, если Проклятый будет кишеть монстрами, как долго вы будет наслаждаться разграблением?»~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53225 /* ~«Если мы остынем, то это поможет городу соскользнуть обратно во Внешние земли. Как ты думаешь, если Проклятый будет кишеть монстрами, как долго вы будет наслаждаться разграблением?»~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53226 /* ~«Если мы остынем, то это поможет городу соскользнуть обратно во Внешние земли. Как ты думаешь, если Проклятый будет кишеть монстрами, как долго вы будет наслаждаться разграблением?»~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53227 /* ~«Стойте. Пока я здесь, не будет никаких мародерств».~ */ GOTO 3
  IF ~~ THEN REPLY #53228 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.5 2.3
  SAY #53229 /* ~Ты чувствуешь его усмешку даже сквозь маску шлема. «Значит, *не будет*, да? Тогда, — он поднимает свое тяжелое оружие, — мы сейчас живо от этого излечим».~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53230 /* ~«Если мы остынем, то это поможет городу соскользнуть обратно во Внешние земли. Как ты думаешь, если Проклятый будет кишеть монстрами, как долго вы будет наслаждаться разграблением?»~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53231 /* ~«Если мы остынем, то это поможет городу соскользнуть обратно во Внешние земли. Как ты думаешь, если Проклятый будет кишеть монстрами, как долго вы будет наслаждаться разграблением?»~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53232 /* ~«Если мы остынем, то это поможет городу соскользнуть обратно во Внешние земли. Как ты думаешь, если Проклятый будет кишеть монстрами, как долго вы будет наслаждаться разграблением?»~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #53693 /* ~«То, что вы делаете, только усугубляет проблемы. Возьми этих людей и помоги защищать стены, а не занимайся мародерством, — и город сможет соскользнуть обратно во Внешние земли».~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #53694 /* ~«То, что вы делаете, только усугубляет проблемы. Возьми этих людей и помоги защищать стены, а не занимайся мародерством, — и город сможет соскользнуть обратно во Внешние земли».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53233 /* ~Защищаться.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1 1.2 1.4 2.0 2.1 2.2 3.0 3.1 3.2 3.4
  SAY #53234 /* ~«Но... А, черт, ты прав». Он кричит мародерам, собравшимся вокруг него. «Хорошо! Вы все его слышали, за дело! Если город соскользнет назад, кто проболтается об этом — тот покойник! А теперь пошли! Двигай! — он поворачивается к тебе. — А что касается *тебя*, добрячок. Мозги у тебя варят лучше, чем это может показаться».~ */
  IF ~~ THEN REPLY #53235 /* ~«Спасибо. Прощай».~ */ DO ~AddexperienceParty(150000)
EscapeArea()
~ JOURNAL #53236 /* ~Я убедил группу граждан, возглавляемую караульным, прекратить мародерства и помочь в защите города.~ */ EXIT
END
