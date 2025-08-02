// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTGU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTGU~

IF ~~ THEN BEGIN 0 // from:
  SAY #385 /* ~Ты видишь строгого мужчину в черной мантии. Он недоверчиво смотрит на тебя.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #388 /* ~«Приветствую».~ */ EXTERN ~DMORTE~ 77
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #389 /* ~«Приветствую».~ */ EXTERN ~DMORTE~ 79
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #390 /* ~«Приветствую».~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4119 /* ~«Приветствую».~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4120 /* ~Сделать вид, будто ты здесь «свой», и пройти мимо, не обращая на него внимания.~ */ GOTO 1
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4146 /* ~Попробовать не обращать на него внимания, пройти мимо.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.4
  SAY #386 /* ~Тленный хмурится, когда ты проходишь мимо... кажется, он собирается окрикнуть тебя, но передумывает. Должно быть, твое поведение заставило его придержать свой язык.~ */
  IF ~~ THEN REPLY #387 /* ~Пройти мимо.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.5
  SAY #1407 /* ~Тленный хмурится, когда ты проходишь мимо, затем обращается к тебе. «Эй, ты. Что ты здесь делаешь?»~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #1409 /* ~«Кажется, я заблудился в этих залах. Здесь есть проводники, которые могут подсказать дорогу посетителям?»~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #1410 /* ~«Я... кажется, потерялся». ~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #1411 /* ~«Это мое личное дело. А тебе бы не мешало заниматься СВОИМИ делами, тленный».~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1412 /* ~Наклониться вперед, будто собираясь прошептать ему что-то, а затем свернуть ему шею.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1413 /* ~Наклониться вперед, будто собираясь прошептать ему что-то, а затем свернуть ему шею.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #1408 /* ~«Я направляюсь к выходу, только и всего. Я не хочу создавать проблем».~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4147 /* ~«Ничего. Я потерялся, но теперь направляюсь к выходу».~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.5 12.0 12.5 19.1 19.6
  SAY #1414 /* ~Тленный хмурится. Кажется, он скептически настроен. «В вестибюле есть проводники, которые могут направить тебя. В Морге нельзя ходить без сопровождения».~ */
  IF ~~ THEN REPLY #1415 /* ~«Спасибо за помощь. Пойду поговорю с проводником».~ */ EXIT
  IF ~~ THEN REPLY #1416 /* ~«Я буду ходить там, где мне вздумается... а тебе бы не мешало думать о своих обязанностях, тленный».~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.6 12.1 12.6 19.2 19.7
  SAY #1417 /* ~«Похоже, ты действительно потерялся». Глаза тленного сужаются в узкие щели, его рука тянется к кинжалу на боку. «Подожди, пока я не позову охрану, которые выведут тебя». Кажется, он готов позвать на помощь. ~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1418 /* ~Свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2536 /* ~Свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 7
  IF ~~ THEN REPLY #4148 /* ~«Зови своих друзей, трухлячок... Я их с радостью встречу».~ */ GOTO 11
  IF ~~ THEN REPLY #4149 /* ~Убежать.~ */ GOTO 11
  IF ~~ THEN REPLY #4150 /* ~Подождать.~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.1 12.2 19.3
  SAY #4121 /* ~Глаза тленного превращаются в узкие щелочки, его рука тянется к кинжалу на боку. Похоже, он готов позвать других стражников. ~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4151 /* ~Свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4152 /* ~Свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 7
  IF ~~ THEN REPLY #4153 /* ~«Зови своих друзей, трухлячок... Я их с радостью встречу».~ */ GOTO 11
  IF ~~ THEN REPLY #4154 /* ~Убежать.~ */ GOTO 11
  IF ~~ THEN REPLY #4155 /* ~Подождать.~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 2.3 12.4 19.4
  SAY #4122 /* ~Ты наклоняешься, чтобы «шепнуть» ему что-то на ухо, и тленный тоже наклоняется. Как только он оказывается на расстоянии вытянутой руки, ты хватаешь его за виски и резко сворачиваешь голову влево.~ */
  IF ~~ THEN REPLY #4156 /* ~«Нельзя дать тебе предупредить своих друзей...»~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 14.0
  SAY #4123 /* ~Тленный не успевает и слова вымолвить, как твои руки хватают его голову за виски и резко сворачивают ее влево. ~ */
  IF ~~ THEN REPLY #4157 /* ~«Нельзя дать тебе предупредить своих друзей...»~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #4124 /* ~В шее раздается характерный хруст, и тело тленного безвольно падает в твои объятия.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4158 /* ~«Лучше ты, чем я, трухлявый». ~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4159 /* ~«Лучше ты, чем я, трухлявый». ~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #4125 /* ~К своему удивлению, это действие происходит практически инстинктивно, будто ты проделывал это уже много раз... с этой мыслью всплывает воспоминание, но оно недостаточно сильно для того, чтобы за него зацепиться.~ */
  IF ~~ THEN REPLY #4160 /* ~Затащить тело в тень и уйти.~ */ DO ~Kill(Myself)
Deactivate(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4 4.0 5.0 12.3 14.1 19.5
  SAY #4126 /* ~Ты недостаточно быстр, и тленный уворачивается от твоего выпада. Отступив на шаг, он быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.~ */
  IF ~~ THEN REPLY #4161 /* ~«Надеюсь, ты поладишь со своими богами, тленный...»~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2 4.3 4.4 5.2 5.3 5.4 14.2 14.3
  SAY #4127 /* ~Тленный быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон железного колокола.~ */
  IF ~~ THEN REPLY #4162 /* ~«Надеюсь, ты поладишь со своими богами, тленный...»~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 0.3
  SAY #4128 /* ~Тленный хмурится, когда ты обращаешься к нему. «Что ты здесь делаешь?»~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4163 /* ~«Кажется, я заблудился в этих залах. Здесь есть проводники, которые могут подсказать дорогу посетителям?»~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4164 /* ~«Я... кажется, потерялся». ~ */ GOTO 4
  IF ~~ THEN REPLY #4165 /* ~«Это мое личное дело. А тебе бы не мешало заниматься СВОИМИ делами, тленный».~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4166 /* ~Наклониться вперед, будто собираясь прошептать ему что-то, а затем свернуть ему шею.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4167 /* ~Наклониться вперед, будто собираясь прошептать ему что-то, а затем свернуть ему шею.~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4168 /* ~«Я направляюсь к выходу, только и всего. Я не хочу создавать проблем».~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4169 /* ~«Ничего. Я потерялся, но теперь направляюсь к выходу».~ */ GOTO 4
END

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #4129 /* ~Перед тобой строгий мужчина в черной мантии. Он смотрит прямо вперед. Похоже, он даже не заметил тебя.~ */
  IF ~~ THEN REPLY #4170 /* ~«Приветствую».~ */ GOTO 14
  IF ~~ THEN REPLY #4171 /* ~Проковылять мимо.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #4130 /* ~Когда ты обращаешься к стражнику тленных, он аж подскакивает от неожиданности, затем отступает на шаг. «Ты не зомби... кто ты... и как ты сюда попал?» ~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4172 /* ~Свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4173 /* ~Свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 10
  IF ~~ THEN REPLY #4174 /* ~«Я все могу объяснить... видишь ли, все началось с того, что я пробудился из мертвых на одной из ваших плит... там был говорящий череп, и...»~ */ GOTO 11
  IF ~~ THEN REPLY #4175 /* ~Убежать.~ */ GOTO 11
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 15 // from:
  SAY #4131 /* ~Перед тобой строгий мужчина в черной мантии. Завидев тебя, он кивает.~ */
  IF ~~ THEN REPLY #4176 /* ~«Приветствую».~ */ GOTO 16
  IF ~~ THEN REPLY #4177 /* ~Кивнуть в ответ, идти дальше.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #4132 /* ~«Приветствую, посвященный».~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4178 /* ~«Возможно, ты сможешь мне помочь. Кажется, я потерялся. Ты можешь показать мне дорогу?»~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4179 /* ~«Я... кажется, потерялся». ~ */ GOTO 17
  IF ~~ THEN REPLY #4180 /* ~«Так держать, посвященный».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #4133 /* ~«В вестибюле есть проводники. Они могут помочь тебе сориентироваться, посвященный».~ */
  IF ~~ THEN REPLY #4181 /* ~«Спасибо. Пойду, поищу их».~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY #61284 /* ~Ты затаскиваешь обмякшее тело в тень.~ */
  IF ~~ THEN REPLY #61285 /* ~Продолжить.~ */ DO ~Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #66691 /* ~Перед тобой строгий мужчина в черной мантии. Он недоверчиво смотрит на тебя. «Ты... что ты здесь делаешь?»~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66692 /* ~«Я недавно посвящен во фракцию тленных. Просто осматриваю Морг».~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,11,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66693 /* ~«Кажется, я заблудился в этих залах. Здесь есть проводники, которые могут подсказать дорогу посетителям?»~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66694 /* ~«Я... кажется, потерялся». ~ */ GOTO 4
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66695 /* ~«Это мое личное дело. А тебе бы не мешало заниматься СВОИМИ делами, тленный».~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,DEX)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66696 /* ~Наклониться вперед, будто собираясь прошептать ему что-то, а затем свернуть ему шею.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66697 /* ~Наклониться вперед, будто собираясь прошептать ему что-то, а затем свернуть ему шею.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66698 /* ~«Я направляюсь к выходу, только и всего. Я не хочу создавать проблем».~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66699 /* ~«Ничего. Я потерялся, но теперь направляюсь к выходу».~ */ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #66700 /* ~Стражник какое-то время пристально на тебя смотрит, затем кивает. «Позаботься о том, чтобы никого не отвлекать от своих обязанностей, пока ты здесь».~ */
  IF ~~ THEN REPLY #66701 /* ~«Хорошо. Я уже ухожу».~ */ EXIT
END
