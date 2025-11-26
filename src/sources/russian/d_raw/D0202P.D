// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D0202P.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~D0202P~

IF ~  !PartyHasItem("SkScrap")
!PartyHasItem("SkRegret")
~ THEN BEGIN 0 // from:
  SAY #36382 /* ~В этой арке есть нечто... пугающе знакомое. Пространство между двумя черными колоннами наполнено леденящим холодом, словно арка граничит с другим, более холодным местом. По какой-то причине ты ЗНАЕШЬ, что это портал в Крепость сожалений... Теперь все, что нужно сделать, — это открыть его.~ */
  IF ~~ THEN REPLY #36383 /* ~Стиснуть зубы и сорвать кожу с левого предплечья...~ */ DO ~GiveItemCreate("SkScrap",Protagonist,1,0,0)
~ GOTO 1
  IF ~~ THEN REPLY #36384 /* ~Оставить портал в покое... пока.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53637 /* ~Стиснув зубы, ты впиваешься ногтями в левое предплечье и с сухим треском срываешь полоску кожи. Холод между колоннами становится сильнее, как будто в портале появилась трещина...~ */
  IF ~  !PartyHasItem("SkScrap")
~ THEN GOTO 14
  IF ~  PartyHasItem("SkScrap")
~ THEN REPLY #66928 /* ~Осмотреть кожу...~ */ GOTO 3
  IF ~  PartyHasItem("SkScrap")
~ THEN REPLY #66929 /* ~Оставить портал в покое... пока.~ */ EXIT
END

IF ~  PartyHasItem("SkScrap")
!PartyHasItem("SkRegret")
~ THEN BEGIN 2 // from:
  SAY #53640 /* ~Ты снова стоишь перед аркой. Пространство между двумя черными колоннами наполнено леденящим холодом, словно арка граничит с другим, более холодным местом. Это портал в Крепость сожалений... Теперь все, что нужно сделать, — это написать слова раскаяния на клочке кожи, который ты сорвал со своей руки.~ */
  IF ~~ THEN REPLY #53641 /* ~Проколоть левый указательный палец и кровью написать раскаяние на клочке кожи...~ */ GOTO 4
  IF ~~ THEN REPLY #53642 /* ~Оставить портал в покое... пока.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #53643 /* ~Этот клочок кожи был содран с тыльной стороны твоего левого предплечья. Его покрытая шрамами серая поверхность напоминает тебе шкуру зомби. Он больше похож на кусок дубленой шкуры, чем на полоску кожи.~ */
  IF ~~ THEN REPLY #53644 /* ~Проколоть левый указательный палец и кровью написать раскаяние на клочке кожи...~ */ GOTO 4
  IF ~~ THEN REPLY #53645 /* ~Отложить кожу...~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #53646 /* ~Ты прокалываешь кончик указательного пальца. Прежде чем рана успевает затянуться, ты выдавливаешь несколько капель крови. Пока ты готовишься написать раскаяние, в твоей голове проносится несколько образов...~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53647 /* ~Раскаяние: «Я сожалею о том, что случилось с моими товарищами...»~ */ GOTO 5
  IF ~~ THEN REPLY #53648 /* ~Раскаяние: «Я сожалею о содеянном...»~ */ GOTO 6
  IF ~~ THEN REPLY #53649 /* ~Раскаяние: «Я сожалею о своем прошлом...»~ */ GOTO 7
  IF ~~ THEN REPLY #53650 /* ~Раскаяние: «Я сожалею о событиях, приведших ко всему этому...»~ */ GOTO 8
  IF ~~ THEN REPLY #53651 /* ~Позволить ранке затянуться, отложить кожу.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 13.0
  SAY #53653 /* ~Ты шепчешь слова про себя, но раскаяние отдается эхом в твоей голове: «Я сожалею...»~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53655 /* ~«...о том, что всем моим товарищам пришлось страдать, чтобы я сюда добрался».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53869 /* ~«...о том, что пытался продать Морта Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53870 /* ~«...о том, что пытался продать Анну Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53871 /* ~«...о том, что пытался продать Даккона Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Grace","GLOBAL",1)
~ THEN REPLY #53872 /* ~«...о том, что пытался продать Падшую Грацию Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53873 /* ~«...о том, что пытался продать Нордома Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53874 /* ~«...о том, что не продал Морта Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53875 /* ~«...о том, что не продал Анну Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53878 /* ~«...о том, что не продал Даккона Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53879 /* ~«...о том, что не продал Нордома Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",2)
~ THEN REPLY #53880 /* ~«...о том, что продал Морта Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #53881 /* ~«...о том, что продал Анну Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #53882 /* ~«...о том, что продал Даккона Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #53883 /* ~«...о том, что продал Нордома Вришике».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #53884 /* ~«...о том, что держал Даккона в рабстве все эти годы».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #53885 /* ~«...о том, что научил Игнуса силе, причиняющей другим боль».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #53886 /* ~«...о том, что предал Морта и оставил его в Колонне Черепов».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Dead("Dakkon")
~ THEN REPLY #53887 /* ~«...о смерти Даккона».~ */ GOTO 9
  IF ~  Dead("Annah")
~ THEN REPLY #53888 /* ~«...о смерти Анны».~ */ GOTO 9
  IF ~  Dead("Morte")
~ THEN REPLY #53889 /* ~«...о смерти Морта».~ */ GOTO 9
  IF ~  Dead("Grace")
~ THEN REPLY #53890 /* ~«...о смерти Падшей Грации».~ */ GOTO 9
  IF ~  Dead("Ignus")
~ THEN REPLY #53891 /* ~«...о смерти Игнуса».~ */ GOTO 9
  IF ~  Dead("Nordom")
~ THEN REPLY #53892 /* ~«...о смерти Нордома».~ */ GOTO 9
  IF ~  Dead("Vhail")
~ THEN REPLY #53893 /* ~«...о смерти Вейлора».~ */ GOTO 9
  IF ~~ THEN REPLY #53894 /* ~Раскаяться в чем-то другом...~ */ GOTO 13
  IF ~~ THEN REPLY #53895 /* ~Позволить ранке затянуться, отложить кожу.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 13.1
  SAY #53896 /* ~Ты шепчешь слова про себя, но раскаяние отдается эхом в твоей голове: «Я сожалею...»~ */
  IF ~  GlobalGT("Murder","GLOBAL",20)
~ THEN REPLY #53897 /* ~«...о том, что не было случая убить еще больше народу».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-3)
~ GOTO 9
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53898 /* ~«...о том, что не выпустил Убежденный Металл из осадной башни».~ */ GOTO 9
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",0)
Global("Evil_Coaxmetal_4","GLOBAL",1)
~ THEN REPLY #53899 /* ~«...о том, что не выпустил Убежденный Металл из осадной башни».~ */ GOTO 9
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53900 /* ~«...о том, что выпустил Убежденный Металл из осадной башни».~ */ GOTO 9
  IF ~~ THEN REPLY #53903 /* ~«...о том, что пришлось убить Равель».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~~ THEN REPLY #53904 /* ~«...о том, что скитался по планам, в то время как чертов портал был у меня под носом: в месте, где я очнулся ВПЕРВЫЕ».~ */ GOTO 9
  IF ~~ THEN REPLY #53905 /* ~Раскаяться в чем-то другом...~ */ GOTO 13
  IF ~~ THEN REPLY #53906 /* ~Позволить ранке затянуться, отложить кожу.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 13.2
  SAY #53907 /* ~Ты шепчешь слова про себя, но раскаяние отдается эхом в твоей голове: «Я сожалею...»~ */
  IF ~~ THEN REPLY #53908 /* ~«...о том, что просил о бессмертии».~ */ GOTO 9
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #53909 /* ~«...об убийстве Фина Эндли. Если бы я не стал бессмертным, мое параноидальное воплощение никогда бы его не убило...»~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #53910 /* ~«...о всех бедах, которые мои прежние воплощения причинили самим себе и другим».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~~ THEN REPLY #53911 /* ~«...о смертях, причиной которых стал я, здесь и по всей мультивселенной».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #53912 /* ~«...о том, что солгал Дейонарре, чтобы заставить ее сопровождать меня в моих странствиях».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #53913 /* ~«...о том, что убил Дейонарру в Крепости сожалений».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #53914 /* ~«...о страданиях, которые я причинил Янису, став причиной смерти его дочери».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~~ THEN REPLY #53915 /* ~Раскаяться в чем-то другом...~ */ GOTO 13
  IF ~~ THEN REPLY #53916 /* ~Позволить ранке затянуться, отложить кожу.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 13.3
  SAY #53917 /* ~Ты шепчешь слова про себя, но раскаяние отдается эхом в твоей голове: «Я сожалею...»~ */
  IF ~~ THEN REPLY #53918 /* ~«...о том, *как* долго пришлось искать истоки моей смертности».~ */ GOTO 9
  IF ~  GlobalGT("Death","GLOBAL",20)
~ THEN REPLY #53919 /* ~«...о том, скольким пришлось умереть, чтобы я добрался сюда».~ */ GOTO 9
  IF ~  NumInParty(1)
!NearbyDialog("DNordom")
!NearbyDialog("DVhail")
!NearbyDialog("Dignus")
!NearbyDialog("DGrace")
!NearbyDialog("Dannah")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #53920 /* ~«...о том, что некому больше разделить со мной этот миг».~ */ GOTO 9
  IF ~~ THEN REPLY #53921 /* ~«...о том, что у меня нет сожалений, которые я мог бы записать на этом клочке кожи».~ */ GOTO 9
  IF ~~ THEN REPLY #53922 /* ~Раскаяться в чем-то другом...~ */ GOTO 13
  IF ~~ THEN REPLY #53923 /* ~Позволить ранке затянуться, отложить кожу.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 5.10 5.11 5.12 5.13 5.14 5.15 5.16 5.17 5.18 5.19 5.20 5.21 5.22 5.23 6.0 6.1 6.2 6.3 6.4 6.5 7.0 7.1 7.2 7.3 7.4 7.5 7.6 8.0 8.1 8.2 8.3
  SAY #53924 /* ~Ты пишешь раскаяние на клочке кожи... но из-за быстрой регенерации тебе часто приходится прерываться, чтобы снова проколоть палец и выдавить еще немного крови. Несколькими мгновениями позже ты заканчиваешь. Твоя кровь блестит на клочке кожи... сочетание плоти, крови, и твоего раскаяния.~ */
  IF ~  Global("Regret_Experience","GLOBAL",0)
~ THEN REPLY #53926 /* ~Следить, как высыхает кровь...~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
AddexperienceParty(250000)
SetGlobal("Regret_Experience","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Regret_Experience","GLOBAL",1)
~ THEN REPLY #53927 /* ~Следить, как высыхает кровь...~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #53928 /* ~Пока ты наблюдаешь, как высыхает кровавое раскаяние, тебя омывает волна холода. Ты поднимаешь взгляд. Черные колонны по сторонам арки освещены неярким светом; между ними проплывают туманно-синие огоньки, образуя мерцающий занавес, за которым виднеется выветренная каменная дорога, ведущая во тьму.~ */
  IF ~  NearbyDialog("DNordom")
InParty("Nordom")
~ THEN REPLY #53929 /* ~«Все готовы?»~ */ EXTERN ~DNORDOM~ 16
  IF ~  !InParty("Nordom")
NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #53930 /* ~«Все готовы?»~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Nordom")
!InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #53931 /* ~«Все готовы?»~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("Ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #53932 /* ~«Все готовы?»~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("Ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #53934 /* ~«Все готовы?»~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
~ THEN REPLY #53935 /* ~«Все готовы?»~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
~ THEN REPLY #53936 /* ~«Все готовы?»~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53937 /* ~«Все готовы?»~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("nordom")
!InParty("vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53938 /* ~«Все готовы?»~ */ EXTERN ~DMORTE~ 534
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
!InParty("Morte")
NumInPartyGT(1)
~ THEN REPLY #53939 /* ~«Все готовы?»~ */ GOTO 12
  IF ~  PartyHasItem("SkRegret")
!NearbyDialog("DMorte")
~ THEN REPLY #53940 /* ~Стиснуть клочок кожи с раскаянием и шагнуть сквозь занавес.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53941 /* ~Стиснуть клочок кожи с раскаянием и шагнуть сквозь занавес.~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53942 /* ~Стиснуть клочок кожи с раскаянием и шагнуть сквозь занавес.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53943 /* ~Оставить портал в покое.~ */ EXIT
END

IF ~  PartyHasItem("SkRegret")
~ THEN BEGIN 11 // from:
  SAY #53947 /* ~Приблизившись к колоннам, ведущим в Крепость, с раскаяньем в руке, ты чувствуешь волну холода. Колонны начинают светиться неярким светом; между ними проплывают туманно-синие огоньки, образуя мерцающий занавес, за которым виднеется выветренная каменная дорога, ведущая во тьму.~ */
  IF ~  NearbyDialog("DNordom")
InParty("Nordom")
~ THEN REPLY #53948 /* ~«Все готовы?»~ */ EXTERN ~DNORDOM~ 16
  IF ~  !InParty("Nordom")
NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #53949 /* ~«Все готовы?»~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Nordom")
!InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #53950 /* ~«Все готовы?»~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #53951 /* ~«Все готовы?»~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #53952 /* ~«Все готовы?»~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
~ THEN REPLY #53954 /* ~«Все готовы?»~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
~ THEN REPLY #53956 /* ~«Все готовы?»~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53957 /* ~«Все готовы?»~ */ EXTERN ~DMORTE~ 536
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53958 /* ~«Все готовы?»~ */ EXTERN ~DMORTE~ 534
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
!InParty("Morte")
NumInPartyGT(1)
~ THEN REPLY #53959 /* ~«Все готовы?»~ */ GOTO 12
  IF ~  PartyHasItem("SkRegret")
!NearbyDialog("DMorte")
~ THEN REPLY #53960 /* ~Стиснуть клочок кожи с раскаянием и приготовиться шагнуть сквозь занавес.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53961 /* ~Стиснуть клочок кожи с раскаянием и приготовиться шагнуть сквозь занавес.~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53962 /* ~Стиснуть клочок кожи с раскаянием и приготовиться шагнуть сквозь занавес.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53963 /* ~Оставить портал в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.9 11.9
  SAY #53964 /* ~Твой вопрос повисает в тишине. Твои спутники недостаточно близко, чтобы слышать тебя.~ */
  IF ~  PartyHasItem("SkRegret")
~ THEN REPLY #53965 /* ~Стиснуть клочок кожи с раскаянием и приготовиться шагнуть сквозь занавес.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53966 /* ~Найти своих спутников и вернуться к порталу.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.24 6.6 7.7 8.4
  SAY #53967 /* ~За те несколько мгновений, которые ты потратил на обдумывание, порез на пальце полностью зажил; тебе приходиться снова проколоть палец и выдавить еще немного крови. Пока ты готовишься написать раскаяние, в твоей голове проносится несколько образов...~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53969 /* ~Раскаяние: «Я сожалею о том, что случилось с моими товарищами...»~ */ GOTO 5
  IF ~~ THEN REPLY #53970 /* ~Раскаяние: «Я сожалею о содеянном...»~ */ GOTO 6
  IF ~~ THEN REPLY #53971 /* ~Раскаяние: «Я сожалею о своем прошлом...»~ */ GOTO 7
  IF ~~ THEN REPLY #53972 /* ~Раскаяние: «Я сожалею о событиях, приведших ко всему этому...»~ */ GOTO 8
  IF ~~ THEN REPLY #53973 /* ~Отложить кожу...~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.0
  SAY #66925 /* ~...но в инвентаре не хватает места для кожи, и она падает на землю.~ */
  IF ~~ THEN REPLY #66926 /* ~Отойти от портала и поднять кожу.~ */ EXIT
END
