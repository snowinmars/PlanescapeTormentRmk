// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SKSCRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~SKSCRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52402 /* ~Этот клочок кожи был содран с тыльной стороны твоего левого предплечья. Его покрытая шрамами серая поверхность напоминает тебе шкуру зомби. Он больше похож на кусок дубленой шкуры, чем на полоску кожи.~ */
  IF ~~ THEN REPLY #52403 /* ~Проколоть левый указательный палец и кровью написать раскаяние на клочке кожи...~ */ GOTO 1
  IF ~~ THEN REPLY #53254 /* ~Отложить кожу...~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53255 /* ~Ты прокалываешь кончик указательного пальца. Прежде чем рана успевает затянуться, ты выдавливаешь несколько капель крови. Пока ты готовишься написать раскаяние, в твоей голове проносится несколько образов.~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53256 /* ~Раскаяние: «Я сожалею о том, что случилось с моими товарищами...»~ */ GOTO 2
  IF ~~ THEN REPLY #53257 /* ~Раскаяние: «Я сожалею о содеянном...»~ */ GOTO 3
  IF ~~ THEN REPLY #53258 /* ~Раскаяние: «Я сожалею о своем прошлом...»~ */ GOTO 4
  IF ~~ THEN REPLY #53259 /* ~Раскаяние: «Я сожалею о событиях, приведших ко всему этому...»~ */ GOTO 5
  IF ~~ THEN REPLY #53260 /* ~Отложить кожу...~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0
  SAY #53261 /* ~Ты шепчешь слова про себя, но раскаяние отдается эхом в твоей голове: «Я сожалею...»~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53262 /* ~«...о том, что всем моим товарищам пришлось страдать, чтобы я сюда добрался».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53263 /* ~«...о том, что пытался продать Морта Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53264 /* ~«...о том, что пытался продать Анну Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53265 /* ~«...о том, что пытался продать Даккона Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Grace","GLOBAL",1)
~ THEN REPLY #53266 /* ~«...о том, что пытался продать Падшую Грацию Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53267 /* ~«...о том, что пытался продать Нордома Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53268 /* ~«...о том, что не продал Морта Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53269 /* ~«...о том, что не продал Анну Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53270 /* ~«...о том, что не продал Даккона Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53271 /* ~«...о том, что не продал Нордома Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 6
  IF ~  Global("Sell_Morte","GLOBAL",2)
~ THEN REPLY #53272 /* ~«...о том, что продал Морта Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #53273 /* ~«...о том, что продал Анну Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #53274 /* ~«...о том, что продал Даккона Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #53275 /* ~«...о том, что продал Нордома Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #53276 /* ~«...о том, что держал Даккона в рабстве все эти годы».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #53277 /* ~«...о том, что научил Игнуса силе, причиняющей другим боль».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #53278 /* ~«...о том, что предал Морта и оставил его в Колонне Черепов».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  Dead("Dakkon")
~ THEN REPLY #53279 /* ~«...о смерти Даккона».~ */ GOTO 6
  IF ~  Dead("Annah")
~ THEN REPLY #53280 /* ~«...о смерти Анны».~ */ GOTO 6
  IF ~  Dead("Morte")
~ THEN REPLY #53281 /* ~«...о смерти Морта».~ */ GOTO 6
  IF ~  Dead("Grace")
~ THEN REPLY #53282 /* ~«...о смерти Падшей Грации».~ */ GOTO 6
  IF ~  Dead("Ignus")
~ THEN REPLY #53283 /* ~«...о смерти Игнуса».~ */ GOTO 6
  IF ~  Dead("Nordom")
~ THEN REPLY #53284 /* ~«...о смерти Нордома».~ */ GOTO 6
  IF ~  Dead("Vhail")
~ THEN REPLY #53286 /* ~«...о смерти Вейлора».~ */ GOTO 6
  IF ~~ THEN REPLY #53287 /* ~Раскаяться в чем-то другом...~ */ GOTO 7
  IF ~~ THEN REPLY #53288 /* ~Отложить кожу...~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #53289 /* ~Ты шепчешь слова про себя, но раскаяние отдается эхом в твоей голове: «Я сожалею...»~ */
  IF ~  GlobalGT("Murder","GLOBAL",20)
~ THEN REPLY #53290 /* ~«...о том, что не было случая убить еще больше народу».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-3)
~ GOTO 6
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53291 /* ~«...о том, что не выпустил Убежденного Металла из осадной башни».~ */ GOTO 6
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",0)
Global("Evil_Coaxmetal_4","GLOBAL",1)
~ THEN REPLY #68188 /* ~«...о том, что не выпустил Убежденного Металла из осадной башни».~ */ GOTO 6
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53292 /* ~«...о том, что выпустил Убежденного Металла из осадной башни».~ */ GOTO 6
  IF ~~ THEN REPLY #53295 /* ~«...о том, что пришлось убить Равель».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~~ THEN REPLY #53297 /* ~«...о том, что скитался по планам, в то время как чертов портал был у меня под носом: в месте, где я очнулся ВПЕРВЫЕ».~ */ GOTO 6
  IF ~~ THEN REPLY #53298 /* ~Раскаяться в чем-то другом...~ */ GOTO 7
  IF ~~ THEN REPLY #53299 /* ~Отложить кожу...~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 7.2
  SAY #53300 /* ~Ты шепчешь слова про себя, но раскаяние отдается эхом в твоей голове: «Я сожалею...»~ */
  IF ~~ THEN REPLY #53301 /* ~«...о том, что просил о бессмертии».~ */ GOTO 6
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #53302 /* ~«...об убийстве Фина Эндли. Если бы я не стал бессмертным, мое параноидальное воплощение никогда бы его не убило...»~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #53303 /* ~«...о всех бедах, которые мои прежние воплощения причинили самим себе и другим».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~~ THEN REPLY #53304 /* ~«...о смертях, причиной которых стал я, здесь и по всей мультивселенной».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #53305 /* ~«...о том, что солгал Дейонарре, чтобы заставить ее сопровождать меня в моих странствиях».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #53306 /* ~«...о том, что убил Дейонарру в Крепости сожалений».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #53307 /* ~«...о страданиях, которые я причинил Янису, став причиной смерти его дочери».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 6
  IF ~~ THEN REPLY #53308 /* ~Раскаяться в чем-то другом...~ */ GOTO 7
  IF ~~ THEN REPLY #53309 /* ~Отложить кожу...~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 7.3
  SAY #53310 /* ~Ты шепчешь слова про себя, но раскаяние отдается эхом в твоей голове: «Я сожалею...»~ */
  IF ~~ THEN REPLY #53311 /* ~«...о том, *как* долго пришлось искать истоки моей смертности».~ */ GOTO 6
  IF ~  GlobalGT("Death","GLOBAL",20)
~ THEN REPLY #53312 /* ~«...о том, скольким пришлось умереть, чтобы я добрался сюда».~ */ GOTO 6
  IF ~  NumInParty(1)
!NearbyDialog("DNordom")
!NearbyDialog("DVhail")
!NearbyDialog("Dignus")
!NearbyDialog("DGrace")
!NearbyDialog("Dannah")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #53313 /* ~«...о том, что некому больше разделить со мной этот миг».~ */ GOTO 6
  IF ~~ THEN REPLY #53314 /* ~«...о том, что у меня нет сожалений, которые я мог бы записать на этом клочке кожи».~ */ GOTO 6
  IF ~~ THEN REPLY #53315 /* ~Раскаяться в чем-то другом...~ */ GOTO 7
  IF ~~ THEN REPLY #53316 /* ~Отложить кожу...~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 2.10 2.11 2.12 2.13 2.14 2.15 2.16 2.17 2.18 2.19 2.20 2.21 2.22 2.23 3.0 3.1 3.2 3.3 3.4 3.5 4.0 4.1 4.2 4.3 4.4 4.5 4.6 5.0 5.1 5.2 5.3
  SAY #53317 /* ~Ты пишешь раскаяние на клочке кожи... но из-за быстрой регенерации тебе часто приходится прерываться, чтобы снова проколоть палец и выдавить еще немного крови. Несколькими мгновениями позже ты заканчиваешь. Твоя кровь блестит на клочке кожи... сочетание плоти, крови, и твоего раскаяния.~ */
  IF ~  Global("Regret_Experience","GLOBAL",0)
~ THEN REPLY #53318 /* ~«Это должно сработать...»~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
AddexperienceParty(250000)
SetGlobal("Regret_Experience","GLOBAL",1)
~ EXIT
  IF ~  Global("Regret_Experience","GLOBAL",1)
~ THEN REPLY #53319 /* ~«Это должно сработать...»~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.24 3.6 4.7 5.4
  SAY #53320 /* ~За те несколько мгновений, которые ты потратил на обдумывание, порез на пальце полностью зажил; тебе приходиться снова проколоть палец и выдавить еще немного крови. Пока ты готовишься написать раскаяние, в твоей голове проносится несколько образов...~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53321 /* ~Раскаяние: «Я сожалею о том, что случилось с моими товарищами...»~ */ GOTO 2
  IF ~~ THEN REPLY #53322 /* ~Раскаяние: «Я сожалею о содеянном...»~ */ GOTO 3
  IF ~~ THEN REPLY #53323 /* ~Раскаяние: «Я сожалею о своем прошлом...»~ */ GOTO 4
  IF ~~ THEN REPLY #53324 /* ~Раскаяние: «Я сожалею о событиях, приведших ко всему этому...»~ */ GOTO 5
  IF ~~ THEN REPLY #53325 /* ~Отложить кожу...~ */ EXIT
END
