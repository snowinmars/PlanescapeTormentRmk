// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARLOTD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARLOTD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1857 /* ~Женщина натыкается о тебя, затем отступает назад и с полуулыбкой смотрит вверх на тебя. Пахнет она как винокурня.~ */
  IF ~~ THEN REPLY #1893 /* ~«Э-э... Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #1894 /* ~«Смотри, куда прешь, женщина!»~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1895 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1896 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1897 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #1898 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61582 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1858 /* ~«При-*веееет*...» Она машет тебе руками, затем начинает безудержно хихикать. «При-вееет, большой рубака...» Она снова начинает хохотать.~ */
  IF ~~ THEN REPLY #7486 /* ~«С тобой все в порядке?»~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7487 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7488 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7489 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7490 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61583 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1859 /* ~Она косится на тебя, упирается руками в бедра и наклоняется так близко, что с высока ты можешь полюбоваться ее грудью. «Ну *как* я тебе, рубака?! А?» Она отряхивается, вызывая позвякивание, а затем снова начинает хохотать. «Ты тот, кому нужна ласка и забота!» Она тыкает тебя пальцем в грудь, подчеркивая свои слова.~ */
  IF ~~ THEN REPLY #7491 /* ~«А ты предлагаешь?»~ */ GOTO 3
  IF ~~ THEN REPLY #7492 /* ~«Ага, ну да ладно. Слушай, возможно, ты можешь мне помочь. У меня есть вопросы...»~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7493 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7494 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7495 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7496 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61584 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1860 /* ~Она одаривает тебя дразняще-строгим взглядом. «Может быть, если ты сделаешь подходящее предложение, — она опирается на тебя. — Так как?»~ */
  IF ~~ THEN REPLY #7497 /* ~«Нет, спасибо. Однако у меня есть вопросы...»~ */ GOTO 6
  IF ~~ THEN REPLY #7498 /* ~«Нет, спасибо».~ */ GOTO 4
  IF ~~ THEN REPLY #7499 /* ~«Конечно».~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7500 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7501 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7502 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7503 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61585 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #1861 /* ~Она надувает губы. «Чтоб ты сифилис подцепил! Посмотрим, сможешь ли ты найти кого-нибудь получше, чем я».~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7504 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7505 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7506 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7507 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61586 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #1862 /* ~«Ну хорошо». Она осматривает тебя с ног до головы, затем пытается немного всплакнуть. «Э-э... нет-нет. Кажется, ты слишком большой, чтобы я с тобой справилась».~ */
  IF ~~ THEN REPLY #7508 /* ~«Тогда ладно. У меня есть несколько вопросов...»~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7509 /* ~«Понятно... Тогда прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7510 /* ~«Понятно... Тогда прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7511 /* ~«Понятно... Тогда прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7512 /* ~«Понятно... Тогда прощай».~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61587 /* ~«Понятно... Тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 3.0 5.0
  SAY #1863 /* ~«О, так ты думаешь, что *я* могу помочь *тебе*?! Эй, а ты рубака с запросами! Тогда окружи меня всю такой лестью!» Она улыбается.~ */
  IF ~~ THEN REPLY #7513 /* ~«Что ты можешь сказать об этом городе?»~ */ GOTO 7
  IF ~~ THEN REPLY #7514 /* ~«Что ты можешь рассказать об этом месте?»~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7515 /* ~«Я ищу дневник. Тебе ничего такого не попадалось?»~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7516 /* ~«Я ищу кое-кого по имени Фарод. Ты не знаешь, где его можно найти?»~ */ GOTO 7
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7517 /* ~«Неважно. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7518 /* ~«Неважно. Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7519 /* ~«Неважно. Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7520 /* ~«Неважно. Прощай».~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61588 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.3 9.0 9.3
  SAY #1864 /* ~«Да!» Она издает пьяный хохот.~ */
  IF ~~ THEN REPLY #7521 /* ~«Что да?»~ */ GOTO 9
  IF ~~ THEN REPLY #7522 /* ~«У меня есть другие вопросы...»~ */ GOTO 9
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7523 /* ~«Неважно. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7524 /* ~«Неважно. Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7525 /* ~«Неважно. Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7526 /* ~«Неважно. Прощай».~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61589 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.2 9.1 9.2
  SAY #1865 /* ~«Неееет!» Кажется, это слово ее очень забавляет и она тычет тебя в грудь, чтобы подчеркнуть его. «Нет! Нет!»~ */
  IF ~~ THEN REPLY #7527 /* ~«Э-э... У меня есть другие вопросы...»~ */ GOTO 9
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7528 /* ~«Тогда неважно».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7529 /* ~«Тогда неважно».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7530 /* ~«Тогда неважно».~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7531 /* ~«Тогда неважно».~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61590 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1 8.0
  SAY #1866 /* ~«Дааааа? — она косится на тебя. — Чтооо?»~ */
  IF ~~ THEN REPLY #7532 /* ~«Что ты можешь сказать об этом городе?»~ */ GOTO 7
  IF ~~ THEN REPLY #7533 /* ~«Что ты можешь рассказать об этом месте?»~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7534 /* ~«Я ищу дневник. Тебе ничего такого не попадалось?»~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7535 /* ~«Я ищу кое-кого по имени Фарод. Ты не знаешь, где его можно найти?»~ */ GOTO 7
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7536 /* ~«Неважно. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7537 /* ~«Неважно. Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7538 /* ~«Неважно. Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7539 /* ~«Неважно. Прощай».~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61591 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.3 1.2 2.3 3.4 4.1 5.2 6.5 7.3 8.2 9.5
  SAY #1867 /* ~Ты уже готов идти прочь, но вдруг останавливаешься. Внезапно у тебя появляется чувство, что что-то *не так*... и с этим чувством приходит осознание того, что состояние опьянения этой женщины является всего лишь фикцией. Присмотревшись к ней внимательнее, ты замечаешь, что проститутка засовывает что-то в свой рукав... кажется, это принадлежит тебе.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7540 /* ~Схватить ее за руку.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7541 /* ~Схватить ее за руку.~ */ GOTO 11
  IF ~~ THEN REPLY #7542 /* ~«Эй! Ты что творишь?!»~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7543 /* ~Спровоцировать женщину на воровство и проследить за ее техникой.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7545 /* ~Спровоцировать женщину на воровство и проследить за ее техникой.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7546 /* ~Спровоцировать женщину на воровство и проследить за ее техникой.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 17
  IF ~~ THEN REPLY #7547 /* ~Атаковать ее.~ */ DO ~Help()
~ EXIT
  IF ~~ THEN REPLY #7548 /* ~Не обращать внимания на инцидент и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 16.1 17.1
  SAY #1868 /* ~Твоя рука хватает ее за запястье мертвой хваткой. Она немедленно трезвеет, отчаянно пытаясь вырвать руку, и начинает кричать на всю глотку.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #7549 /* ~Тихо: «Прекрати кричать, или вырву тебе легкие».~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #7550 /* ~«Тихо! Черт, женщина, молчи!»~ */ GOTO 14
  IF ~~ THEN REPLY #7551 /* ~Свернуть ей шею свободной рукой.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7552 /* ~Отпустить ее.~ */ DO ~Help()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 16.0 17.0
  SAY #1869 /* ~Она успевает вырывать руку до того, как ты ее можешь схватить. Ее пьяное выражение лица исчезает, и она начинает кричать на всю глотку.~ */
  IF ~~ THEN REPLY #7553 /* ~«Ну хорошо...»~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 16.2 17.2
  SAY #1870 /* ~Ее пьяное выражение лица испаряется, и она начинает кричать на всю глотку.~ */
  IF ~~ THEN REPLY #7554 /* ~«Ну хорошо...»~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY #1871 /* ~Она продолжает выкручиваться из твоей хватки, крича о помощи. Тебе с трудом верится, что у женщины могут быть такие сильные легкие... от них у тебя в ушах звенит. ~ */
  IF ~~ THEN REPLY #7555 /* ~ Атаковать ее.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7556 /* ~Свернуть ей шею свободной рукой.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7557 /* ~Отпустить ее.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #1872 /* ~Она продолжает выкручиваться из твоей хватки, крича о помощи. Тебе с трудом верится, что у женщины могут быть такие сильные легкие... от них у тебя в ушах звенит.~ */
  IF ~~ THEN REPLY #7558 /* ~ Атаковать ее.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7559 /* ~Свернуть ей шею свободной рукой.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7560 /* ~Отпустить ее.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 0.4 1.3 2.4 3.5 4.2 5.3 6.6 7.4 8.3 9.6
  SAY #1873 /* ~Наверно, только благодаря собственным навыкам в воровстве ты не теряешь бдительности. Перед уходом ты инстинктивно бросаешь взгляд на свой кошелек... и видишь, как проститутка вытаскивает из него свою руку. Хотя сама она не знает, что ты ее подловил.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7561 /* ~Схватить ее за руку.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7562 /* ~Схватить ее за руку.~ */ GOTO 11
  IF ~~ THEN REPLY #7563 /* ~«Эй! Ты что творишь?!»~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7564 /* ~Спровоцировать женщину на воровство и проследить за ее техникой.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7566 /* ~Спровоцировать женщину на воровство и проследить за ее техникой.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7567 /* ~Спровоцировать женщину на воровство и проследить за ее техникой.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 17
  IF ~~ THEN REPLY #7568 /* ~Атаковать ее.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7569 /* ~Не обращать внимания на инцидент и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.3 10.4 10.5 16.3 16.4 16.5
  SAY #1874 /* ~Ты приближаешься, хохоча вместе с ней, и следя за тем, как ее рука снова тянется к твоему кошельку... похоже, ее техника — прикрываться пьяным говором (и грудью), пока она тырит монеты в чужого кошелька. Ее рукава сделаны длинными и широкими специально для того, чтобы быстро прятать украденные предметы. Ты отмечаешь элементы ее техники... даже когда ее рука в очередной раз тянется в твой кошелек.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7571 /* ~Схватить ее за руку.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7572 /* ~Схватить ее за руку.~ */ GOTO 11
  IF ~~ THEN REPLY #7573 /* ~«Эй! Ты что творишь?!»~ */ GOTO 13
  IF ~~ THEN REPLY #7574 /* ~Атаковать ее.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7575 /* ~Не обращать внимания на инцидент и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.0
  SAY #1875 /* ~Должно быть, она *что-то* услышала в твоем голосе: она прекращает кричать и смотрит на тебя огромными испуганными глазами. ~ */
  IF ~~ THEN REPLY #7576 /* ~«Верни мне все, что ты украла у меня. Сейчас же».~ */ DO ~GivePartyGold(100)
~ GOTO 19
  IF ~~ THEN REPLY #7577 /* ~Свернуть ей шею свободной рукой.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7578 /* ~Отпустить ее, затем уйти.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1876 /* ~Она кивает и закатывает назад свои длинные и просторные рукава, показывая обитый тканью мешочек, прикрепленный к запястью. Похоже, она может ронять монеты с ладони прямо в мешочек; при этом ткань заглушает звон монет. Не говоря ни слова, она протягивает тебе мешочек... в нем несколько десятков медяков.~ */
  IF ~~ THEN REPLY #7579 /* ~«Довольно. И чтобы я тебя никогда больше не видел. Понятно?»~ */ GOTO 22
  IF ~~ THEN REPLY #7580 /* ~Блеф: «Отдай мне все, что у тебя есть, и я оставлю тебя в живых».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_1","GLOBALLaw",-1)
GiveGoldForce(20)
~ GOTO 20
  IF ~~ THEN REPLY #7581 /* ~Правда: «Отдай мне все, что у тебя есть, и я оставлю тебя в живых».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-1)
GiveGoldForce(20)
~ GOTO 20
  IF ~~ THEN REPLY #7582 /* ~Кивнуть в знак благодарности, а затем схватить ее свободной рукой за шею.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7583 /* ~Отпустить ее, затем уйти.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 19.2
  SAY #1877 /* ~Она дотягивается до своей подвязки и вытаскивает еще один мешочек, который протягивает тебе. Он полон медными монетами, которые ты ссыпаешь в свой кошелек.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #7584 /* ~«Я же сказал — *все*».~ */ DO ~GiveItemCreate("Ear01",Protagonist,1,0,0)
GiveItem("Knife",Protagonist)
GiveItem("Stiletto",Protagonist)
~ GOTO 21
  IF ~~ THEN REPLY #7585 /* ~«Я не хочу тебя больше видеть. Понятно?»~ */ GOTO 22
  IF ~~ THEN REPLY #7586 /* ~Кивнуть в знак благодарности, а затем схватить ее свободной рукой за шею.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7587 /* ~Отпустить ее, затем уйти.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #1878 /* ~Она медленно дотягивается до своего сапога и достает странный тонкий кинжал, который она протягивает тебе рукояткой вперед. Затем она тянется к другому сапогу и вытаскивает *еще один* кинжал — еще более странный, чем первый — с широким клинком, который она дает тебе, опять же рукояткой вперед. Затем она окидывает голову назад, показывая небольшую сережку, спрятанную под копной волос. Она отстегивает ее и протягивает тебе. ~ */
  IF ~~ THEN REPLY #7588 /* ~«Довольно. А теперь чтоб я тебя никогда больше не видел. Понятно?»~ */ GOTO 22
  IF ~~ THEN REPLY #7589 /* ~Кивнуть в знак благодарности, а затем схватить ее свободной рукой за шею.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7590 /* ~Отпустить ее, затем уйти.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0 20.1 21.0
  SAY #1879 /* ~Она кивает. ~ */
  IF ~~ THEN REPLY #7591 /* ~Свернуть ей шею свободной рукой.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7592 /* ~Отпустить ее, затем уйти.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 11.2 14.1 15.1 18.1 19.3 20.2 21.1 22.0
  SAY #1880 /* ~Ее глаза расширяются, когда твоя рука обхватывает ее шею. Она отчаянно хватается за твои пальцы... она не успевает освободиться; раздается хруст, и она перестает сопротивляться.~ */
  IF ~  Global("Choke_Dustman","GLOBAL",0)
Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #7593 /* ~Бросить ее.~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ GOTO 25
  IF ~  GlobalGT("Choke_Dustman","GLOBAL",0)
~ THEN REPLY #7594 /* ~Бросить ее.~ */ DO ~SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ GOTO 24
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Choke_Dustman","GLOBAL",0)
~ THEN REPLY #32766 /* ~Бросить ее.~ */ DO ~SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #1881 /* ~Ты отпускаешь ее, и она плюхается на землю. Убить ее оказалось проще, чем тленного. Глядя на ее тело, ты ощущаешь странную дрожь... ты *знаешь*, что уже убивал других таким способом. Ты отчаянно пытаешься зацепиться за воспоминание, но оно уходит прочь, скрываясь в твоем подсознании.~ */
  IF ~~ THEN REPLY #7595 /* ~Уйти.~ */ DO ~GiveExperience(Protagonist,250)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #1882 /* ~Ты отпускаешь ее, и она плюхается на землю. Глядя на ее тело, ты ощущаешь странную дрожь... ты *знаешь*, что уже убивал других таким способом. Эта мысль пробуждает воспоминание, но оно недостаточно сильно, чтобы за него можно было зацепиться.~ */
  IF ~~ THEN REPLY #7596 /* ~Уйти.~ */ DO ~GiveExperience(Protagonist,250)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #106497 /* ~Женщина кивает и быстро убегает. Вряд ли ты ее еще увидишь.~ */
  IF ~~ THEN REPLY #7596 /* ~Уйти.~ */ DO ~Enemy()
GivePartyGold(100)
SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #106497 /* ~Женщина кивает и быстро убегает. Вряд ли ты ее еще увидишь.~ */
  IF ~~ THEN REPLY #7596 /* ~Уйти.~ */ DO ~Enemy()
SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
EscapeArea()
~ EXIT
END
