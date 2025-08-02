// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFLEECE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DFLEECE~

IF ~  Global("Fleece","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1754 /* ~Перед тобой человек, который смущенно оглядывается на окружающие его здание. У него потерянный вид. Он что-то бормочет себе под нос.~ */
  IF ~~ THEN REPLY #1755 /* ~«Приветствую».~ */ DO ~SetGlobal("Fleece","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #1756 /* ~Пройти мимо.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1757 /* ~Человек облегченно вздыхает. «*Наконец-то*! Я взываю к вашей снисходительности, уважаемый господин. Кажется, я заблудился в этом лабиринте улиц... — он неловко хихикает. — Боюсь, что эта часть города, — он окидывает взглядом улицу, — мне не знакома. Здешние жители, похоже, не желают помогать гостям... — он с надеждой смотрит на тебя. — Быть может, я смог бы убедить вас помочь мне?»~ */
  IF ~~ THEN REPLY #1758 /* ~«В зависимости от того, какая помощь тебе нужна».~ */ GOTO 2
  IF ~~ THEN REPLY #1759 /* ~«Конечно. Куда ты хочешь попасть?»~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fleece_1","GLOBALGood",1)
~ GOTO 2
  IF ~~ THEN REPLY #1760 /* ~«Выкручивайся сам. На твоем месте я бы побыстрее выбирался бы отсюда».~ */ GOTO 9
  IF ~~ THEN REPLY #1761 /* ~«Сейчас у меня нет времени, чтобы помогать тебе... Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fleece_1","GLOBALGood",-1)
~ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 27.0
  SAY #1762 /* ~«Я ищу дом моей тети Маргариты. Она говорила, что живет рядом с Моргом, но с тех пор, когда я был здесь в последний раз, планировка улиц поменялась... Вы не знаете, где находится этот дом?»~ */
  IF ~~ THEN REPLY #1763 /* ~Ложь: «Да. Я могу показать дорогу... за деньги».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #1764 /* ~Правда: «Боюсь, что никогда не слышал об этом месте».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Fleece_2","GLOBALGood",1)
~ GOTO 5
  IF ~~ THEN REPLY #1765 /* ~«Я не могу помочь тебе. Прощай».~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1766 /* ~«Ах, это справедливо. Ее дом находится рядом с Моргом, — его глаза сужаются, пристально изучая тебя. — Вам точно известно, где находится ее дом?»~ */
  IF ~~ THEN REPLY #2246 /* ~Ложь: «Она живет к юго-востоку от Морга, неподалеку от одного из мавзолеев».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_3","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #2247 /* ~«Прошу прощения, ты сказал 'тетя Маргарита'? Я тебя неправильно понял и подумал о другой».~ */ GOTO 6
  IF ~~ THEN REPLY #2248 /* ~«Ой, подожди. Я думал, что ты спрашивал о ближайших борделях. Неважно».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_3","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2249 /* ~Человек трясет головой. «О, нет-нет... она не *настолько* близка к нему. Возможно, вы подумали о ком-то другом». Человек оглядывается, затем снова обращается к тебе. «Я поищу еще кого-нибудь, кто может знать. Благодарю за уделенное время, уважаемый господин».~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2250 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2251 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2252 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2253 /* ~«Прощай».~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2254 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #2255 /* ~Человек разочарованно хмурится. «Ах, было бы слишком большой удачей надеяться на то, что вам известно это место, — он слегка кивает в знак благодарности. — Что ж, благодарю вас за уделенное время, уважаемый господин, вы были самым приветливым на этих улицах».~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2256 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2257 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2258 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2259 /* ~«Прощай».~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2260 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #2261 /* ~«Несложно было ошибиться, господин. Тем не менее, благодарю за уделенное время».~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2262 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2263 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2264 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2265 /* ~«Прощай».~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2266 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #2267 /* ~Мужчина моргает от неожиданности. «Э-э, нет-нет, — он натянуто улыбается. — Моя тетя не вовлечена в подобные занятия».~ */
  IF ~~ THEN REPLY #2268 /* ~«Это не то, что *я* слышал».~ */ GOTO 8
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2269 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2270 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2271 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2272 /* ~«Прощай».~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2273 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #2274 /* ~Мужчина выглядит смущенным. «Я... лучше покину вас, уважаемый господин».~ */
  IF ~~ THEN REPLY #2275 /* ~«Передавай от меня привет своей тете. Скажи ей, что я скоро вернусь».~ */ EXIT
  IF ~~ THEN REPLY #2540 /* ~Отпустить его... на этот раз.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2 1.3 2.2 27.1
  SAY #2541 /* ~Мужчина разочарованно хмурится. «Ах... ну что ж, благодарю вас за уделенное время, господин. Хорошего дня».~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2542 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #7614 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #7615 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #7616 /* ~«Прощай».~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #7617 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1 5.1 6.1 7.2 9.1
  SAY #7618 /* ~Ты уже почти готов идти прочь, когда неожиданно чувствуешь, что чего-то не хватает. Ты с подозрением оглядываешься на человека, как раз в то время, когда он засовывает руку в твой кошелек... ты не уверен, но тебе кажется, что он мог что-то забрать у тебя.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7619 /* ~Схватить его за руку.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7620 /* ~Схватить его за руку.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7621 /* ~«Эй! Ты что творишь?!»~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7622 /* ~Спровоцировать мужчину на воровство и проследить за его техникой.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7624 /* ~Спровоцировать мужчину на воровство и проследить за его техникой.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7625 /* ~Спровоцировать мужчину на воровство и проследить за его техникой.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 16
  IF ~~ THEN REPLY #7626 /* ~Атаковать его.~ */ DO ~SetGlobal("Remove_Fleece","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7627 /* ~Не обращать внимания на инцидент и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 15.1 16.1
  SAY #7628 /* ~Твоя рука молниеносно выскакивает вперед и хватает его запястье в мертвой хватке. Мужчина вскрикивает, отчаянно пытаясь вырвать руку.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #7629 /* ~Тихо: «Хватит вырываться, или я вырву тебе руку».~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #7630 /* ~«Хватит вырываться, черт возьми!»~ */ GOTO 14
  IF ~~ THEN REPLY #7631 /* ~Атаковать его.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7632 /* ~Позволить ему уйти.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 15.0 16.0
  SAY #7633 /* ~Ты недостаточно быстр. Он вырывает свою руку до того, как ты успеваешь ее схватить. С криком он бросается наутек вниз по улице.~ */
  IF ~~ THEN REPLY #7634 /* ~«Ну хорошо...»~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 15.2 16.2
  SAY #7635 /* ~От неожиданности мужчина подпрыгивает, а затем начинает убегать.~ */
  IF ~~ THEN REPLY #7636 /* ~«Ну хорошо...»~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY #7637 /* ~Он продолжает вырываться из твоей хватки. Становится трудно его удерживать.~ */
  IF ~~ THEN REPLY #7638 /* ~Атаковать его.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7639 /* ~Ударить его свободной рукой, привлечь его внимание.~ */ GOTO 23
  IF ~~ THEN REPLY #7640 /* ~Позволить ему уйти.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.2 5.2 6.2 7.3 9.2
  SAY #7641 /* ~Наверно, только благодаря собственным навыкам в воровстве ты не теряешь бдительности. Перед уходом ты инстинктивно бросаешь взгляд на свой кошелек... и видишь, как мужчина вытаскивает из него свою руку. Хотя сам он не знает, что ты его подловил.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7642 /* ~Схватить его за руку.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7643 /* ~Схватить его за руку.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7644 /* ~«Эй! Ты что творишь?!»~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7645 /* ~Спровоцировать мужчину на воровство и проследить за его техникой.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7647 /* ~Спровоцировать мужчину на воровство и проследить за его техникой.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7648 /* ~Спровоцировать мужчину на воровство и проследить за его техникой.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 16
  IF ~~ THEN REPLY #7649 /* ~Атаковать его.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7650 /* ~Не обращать внимания на инцидент и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.3 10.4 10.5 15.3 15.4 15.5
  SAY #7651 /* ~Ты вовлекаешь мужчину в непринужденный разговор, при этом украдкой следя за его движениями. Похоже, мужчина понадеялся на две вещи: во-первых, роль представительного гражданина может снизить внимательность жертвы, и во-вторых, спрашивая у жертвы дорогу, можно ее отвлечь... когда жертва поворачивается, чтобы указать на улицу или ориентир, мужчина снимает сливки с кошелька цели и прячет предметы в своих (подходяще длинных) рукавах. Ты мысленно отмечаешь его технику... в то время как он в очередной раз запускает руку в твой кошелек.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7652 /* ~Схватить его за руку.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7653 /* ~Схватить его за руку.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7654 /* ~«Эй! Ты что творишь?!»~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #7655 /* ~Атаковать его.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7656 /* ~Не обращать внимания на инцидент и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.0
  SAY #7657 /* ~Должно быть, он *что-то* услышал в твоем тоне — он моментально перестает выкручиваться. Под твоим взглядом он сникает. ~ */
  IF ~~ THEN REPLY #7658 /* ~«Верни мне все, что ты украла у меня. Сейчас же».~ */ DO ~GivePartyGold(10000)
~ GOTO 18
  IF ~~ THEN REPLY #7659 /* ~Позволить ему уйти, уйти самому.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #7660 /* ~Он кивает и начинает опустошать свои карманы. Он отдает тебе пригоршню монет, намного большую, чем украл у тебя... должно быть, в ней около несколько дюжин медяков.~ */
  IF ~~ THEN REPLY #7661 /* ~«Нет, оставь себе лишнее... Мне нужно только то, что ты украл у меня».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_2","GLOBALLaw",1)
TakePartyGold(25)
~ GOTO 19
  IF ~~ THEN REPLY #7662 /* ~«Довольно. И чтобы я тебя никогда больше не видел. Понятно?»~ */ GOTO 21
  IF ~~ THEN REPLY #7663 /* ~Блеф: «Отдай мне все, что у тебя есть, и я не убью тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_4","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #7664 /* ~Правда: «Отдай мне все, что у тебя есть, и я не убью тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_5","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_4","GLOBALGood",-1)
~ GOTO 20
  IF ~~ THEN REPLY #7665 /* ~Кивнуть в знак благодарности, а затем напасть на него.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7666 /* ~Позволить ему уйти, уйти самому.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #7667 /* ~Он удивленно смотрит на тебя, пытаясь разгадать подвох. Затем он пожимает плечами и рассовывает все лишнее назад в карманы.~ */
  IF ~~ THEN REPLY #7668 /* ~«Довольно. И чтобы я тебя никогда больше не видел. Понятно?»~ */ GOTO 21
  IF ~~ THEN REPLY #7669 /* ~Атаковать его.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7671 /* ~Позволить ему уйти, уйти самому.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2 18.3
  SAY #7670 /* ~«Э-э... — он сглатывает. — Рубака, это все. Больше ничего нет».~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #7672 /* ~«Я же сказал — *все*, так что отдай мне *все*».~ */ GOTO 28
  IF ~~ THEN REPLY #7673 /* ~«Отлично. Я не хочу тебя больше видеть. Понятно?»~ */ GOTO 21
  IF ~~ THEN REPLY #7674 /* ~«Тогда твоя жизнь подходит к концу. Готовься к смерти».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7675 /* ~Позволить ему уйти, уйти самому.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.0 20.1 28.0
  SAY #7676 /* ~Он кивает. ~ */
  IF ~~ THEN REPLY #7677 /* ~Ударить его, чтобы он понял окончательно.~ */ GOTO 22
  IF ~~ THEN REPLY #7678 /* ~Атаковать его.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7679 /* ~Позволить ему уйти, уйти самому.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 25.0
  SAY #7680 /* ~Твой удар ломает его челюсть и отбрасывает его на булыжники. Держась рукой за челюсть и постанывая, он поднимается на ноги. Кажется, ты ему выбил несколько зубов.~ */
  IF ~~ THEN REPLY #7681 /* ~«А теперь проваливай отсюда».~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.1
  SAY #7682 /* ~Левым боковым ты отвешиваешь ему по шее, и он снова вскрикивает. Немного успокоившись и держась за лицо свободной рукой, он поворачивается к тебе. ~ */
  IF ~~ THEN REPLY #7683 /* ~«Ты меня внимательно слушаешь?»~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #7684 /* ~Он молча кивает.~ */
  IF ~~ THEN REPLY #7685 /* ~«Верни мне все, что ты украл у меня».~ */ DO ~GivePartyGold(10000)
~ GOTO 18
  IF ~~ THEN REPLY #7686 /* ~«Меня не волнует то, что ты украл у меня... пока я тебя не увижу еще раз. Уяснил?»~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY #7687 /* ~Он снова кивает.~ */
  IF ~~ THEN REPLY #7688 /* ~Ударить его, чтобы он понял окончательно.~ */ GOTO 22
  IF ~~ THEN REPLY #7689 /* ~Атаковать его.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7690 /* ~Позволить ему уйти, уйти самому.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~  Global("Fleece","GLOBAL",1)
~ THEN BEGIN 26 // from:
  SAY #7691 /* ~Ты снова видишь того же самого человека... он все еще выглядит потерянным и что-то бормочет, пялясь на здания.~ */
  IF ~~ THEN REPLY #7692 /* ~«Приветствую».~ */ GOTO 27
  IF ~~ THEN REPLY #7693 /* ~Пройти мимо.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #7694 /* ~Когда ты начинаешь с ним говорить, он от неожиданности подпрыгивает. Он явно нервничает. «Э-э... приятно снова встретиться, господин, — он преисполнен надежды. — Могу ли я надеяться на то, что смогу убедить вас показать мне дорогу?»~ */
  IF ~~ THEN REPLY #7695 /* ~«Еще раз, а куда тебе нужно?»~ */ GOTO 2
  IF ~~ THEN REPLY #7696 /* ~«Нет, не сегодня».~ */ GOTO 9
END

IF ~~ THEN BEGIN 28 // from: 20.0
  SAY #7697 /* ~«Я же сказал! У меня ничего больше нет!»~ */
  IF ~~ THEN REPLY #7698 /* ~«Отлично. Я не хочу тебя больше видеть. Понятно?»~ */ GOTO 21
  IF ~~ THEN REPLY #7699 /* ~«Тогда твоя жизнь подходит к концу. Готовься к смерти».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7700 /* ~Позволить ему уйти, уйти самому.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END
