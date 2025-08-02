// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVHAIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DVHAIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #2848 /* ~Вейлор безмолвен и неподвижен. Если бы не мерцающие красные огоньки в глазах, он был бы похож на статую.~ */
  IF ~~ THEN REPLY #2849 /* ~«Я зайду позже, когда этим гигантским доспехам будет что сказать».~ */ EXIT
  IF ~~ THEN REPLY #33998 /* ~«Вейлор... йоу, братан. Брось горевать, пошли, потусуемся. Тут нужно исправить несправедливость».~ */ DO ~SetGlobal("Vhailor","GLOBAL",2)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #16635 /* ~Вейлор безмолвен и неподвижен. Если бы не мерцающие красные огоньки в глазах, он был бы похож на статую.~ */
  IF ~~ THEN REPLY #17003 /* ~«Вейлор? Ты слышишь меня?»~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #16636 /* ~Наконец из пустого шлема эхом доносится голос Вейлора: *Состояние деревьев для меня несущественно. Их смерть ни справедлива, ни несправедлива — это просто смерть*.~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #17004 /* ~«Хорошо. Что думаешь, Морт?»~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #17005 /* ~«Хорошо. Анна? А ты?»~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #17006 /* ~«Хорошо. Спасибо. Игнус?»~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #17007 /* ~«Хорошо. Грация, ты не могла бы в этом помочь?»~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #17008 /* ~«Хорошо. Даккон, ты поможешь этому человеку?»~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #17009 /* ~«Хорошо. Даккон, помоги этому человеку».~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #17010 /* ~«Хорошо. Нордом, как ты думаешь, ты сможешь помочь?»~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~~ THEN REPLY #17011 /* ~«Хорошо. У меня есть несколько вопросов, Скорбящий...»~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #17012 /* ~«Хорошо, Вейлор. Прощай, Скорбящий-по-деревьям».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #30529 /* ~Как только ты хватаешь Яниса за горло, слышится грохот доспехов, и к тебе подходит Вейлор с занесенным для удара топором. *НЕСПРАВЕДЛИВОСТЬ*.~ */
  IF ~~ THEN REPLY #30530 /* ~«Проклятье!..»~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #30531 /* ~Когда ты произносишь свое признание, Вейлор приходит в движение и поднимает топор. Тем не менее, он не нападает, а просто *ждет*.~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 40
END

IF ~~ THEN BEGIN 5 // from:
  SAY #30532 /* ~Когда Янис начинает звать стражу, Вейлор оживляется. Он подходит тебе с занесенным топором. *НЕСПРАВЕДЛИВОСТЬ*.~ */
  IF ~~ THEN REPLY #30533 /* ~«Проклятье!..»~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #30534 /* ~Когда ты произносишь свое признание, Вейлор приходит в движение и поднимает топор. Тем не менее, он не нападает, а просто *ждет*.~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 76
END

IF ~~ THEN BEGIN 7 // from:
  SAY #30535 /* ~Когда ты произносишь свое признание, Вейлор приходит в движение и поднимает топор. Тем не менее, он не нападает, а просто *ждет*.~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 77
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  GlobalGT("Vhailor","GLOBAL",0)
!InParty("Vhail")
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 8 // from:
  SAY #33999 /* ~Вейлор безмолвен и неподвижен. Если бы не мерцающие красные огоньки в глазах, он был бы похож на статую.~ */
  IF ~  GlobalGT("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #34000 /* ~«Вейлор, мне нужна твоя помощь. Ты пойдешь со мной?»~ */ DO ~ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 9
  IF ~  Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #34001 /* ~«Вейлор, мне нужна твоя помощь. Ты пойдешь со мной?»~ */ GOTO 82
  IF ~~ THEN REPLY #56052 /* ~Оставить Вейлора в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #34002 /* ~*Я ПОЙДУ*~ [VHA127] */
  IF ~~ THEN REPLY #34003 /* ~«Тогда пошли».~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 16 even though they appear after this state */
~  InParty("Vhail")
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 10 // from:
  SAY #34004 /* ~Вейлор безмолвен и неподвижен. Если бы не мерцающие красные огоньки в глазах, он был бы похож на статую.~ */
  IF ~~ THEN REPLY #34005 /* ~«Я хотел задать тебе несколько вопросов, Вейлор...»~ */ GOTO 35
  IF ~~ THEN REPLY #56053 /* ~Оставить Вейлора в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #54088 /* ~*ТЫ. Это ТЫ. Как ДОЛГО я охотился за тобой, Безымянный? И как долго я стоял РЯДОМ с тобой, прежде чем ОБМАН был раскрыт?* Он поднимает в воздух свой топор, через него начинает течь чистая *энергия*... его преданность, его невероятная убежденность превращает его буквально в физическое воплощение правосудия. *Сама СУДЬБА поставила меня так близко к тебе, ПРЕСТУПНИК. Да свершится ПРАВОСУДИЕ. Ты ПАДЕШЬ под моим клинком, бессмертный, даже если мне придется стоять над твоими сопротивляющимися останками целую ВЕЧНОСТЬ*.~ */
  IF ~~ THEN REPLY #54089 /* ~Защищаться.~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #54090 /* ~Попробовать сбежать.~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #54775 /* ~*Твои действия НЕСПРАВЕДЛИВЫ, дэва. На этот раз ты НЕ СКУЕШЬ меня ЛЖИВЫМИ словами. На этот раз я вынесу тебе ПРИГОВОР*. Вейлор подходит к Триасу с занесенным топором.~ */
  IF ~~ THEN REPLY #54776 /* ~«Вейлор, стой!»~ */ EXTERN ~DTRIAS~ 70
  IF ~~ THEN REPLY #54777 /* ~Напасть на Триаса.~ */ EXTERN ~DTRIAS~ 70
END

IF ~~ THEN BEGIN 13 // from:
  SAY #54778 /* ~*Правосудие ДОЛГО искало тебя, дэва. За это ПРЕСТУПЛЕНИЕ ты будешь НАКАЗАН*. Вейлор подходит к Триасу с занесенным топором.~ */
  IF ~~ THEN REPLY #54779 /* ~«Вейлор, стой!»~ */ EXTERN ~DTRIAS~ 70
  IF ~~ THEN REPLY #54780 /* ~Напасть на Триаса.~ */ EXTERN ~DTRIAS~ 70
END

IF ~~ THEN BEGIN 14 // from:
  SAY #54781 /* ~*Дэва НЕ УЙДЕТ на свободу. Какой бы ни была твоя клятва, СПРАВЕДЛИВОСТЬ должна ВОСТОРЖЕСТВОВАТЬ*.~ */
  IF ~~ THEN REPLY #54779 /* ~«Вейлор, стой!»~ */ EXTERN ~DTRIAS~ 113
  IF ~~ THEN REPLY #54782 /* ~Наблюдать.~ */ EXTERN ~DTRIAS~ 113
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54784 /* ~Напасть на дэва вопреки клятве.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
~ EXTERN ~DTRIAS~ 113
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54785 /* ~Напасть на дэва.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ EXTERN ~DTRIAS~ 113
END

IF ~~ THEN BEGIN 15 // from:
  SAY #54859 /* ~Вейлор отвечает лишь молчанием. Взглянув на него, ты ловишь на себе его прожигающий взгляд. Его глаза мерцают, словно в раздумьях. Неожиданно тебя поражает страшное чувство, что он изучает тебя... словно ищет что-то... какое-нибудь уязвимое место.~ */
  IF ~  NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #54860 /* ~«Э... Игнус?»~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54861 /* ~«Э... Падшая Грация?»~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54862 /* ~«Э... Анна?»~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54863 /* ~«Э... Даккон?»~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54864 /* ~«Э... Даккон?»~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54865 /* ~«Э... Морт?»~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54866 /* ~«Э... Морт?»~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54867 /* ~«Хорошо... А теперь посмотрим, что же находится по ту сторону портала».~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54868 /* ~«Хорошо... А теперь посмотрим, что же находится по ту сторону портала».~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54869 /* ~«Хорошо... А теперь посмотрим, что же находится по ту сторону портала».~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF WEIGHT #0 ~  Global("Vhailor","GLOBAL",0)
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY #56054 /* ~Перед тобой возвышаются громадные пустые доспехи: латы зависли в воздухе, как будто закрепленные на невидимой раме. Красные прожилки тянутся по металлическим поножам, а в руке покоится огромный обоюдоострый топор палача. Поверхность доспехов украшена гравировкой; больше всего в глаза бросается алый змей с распростертыми крыльями.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56055 /* ~«Вейлор?..»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56056 /* ~Осмотреть доспехи.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56057 /* ~Осмотреть топор.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56058 /* ~Осмотреть шлем.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56059 /* ~Оставить доспехи в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.1 18.1 19.1 20.2 21.1
  SAY #56060 /* ~Броня архаична, пример тому — лезвия на плечах, огромная гряда клинков, торчащая из плечных пластин. Ты едва не принимаешь гребни лезвий за украшение, но они слишком тяжелые и опасные для того, чтобы быть чем-то еще, кроме дополнительного оружия на и так грозном доспехе. На латах есть вмятины и другие следы битв; их поверхность покрыта шрамами старости и ржавчины.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56061 /* ~«Вейлор?..»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56062 /* ~Осмотреть топор.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56063 /* ~Осмотреть шлем.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56064 /* ~Забрать доспехи.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56065 /* ~Оставить доспехи в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.1 19.2 20.3 21.2
  SAY #56067 /* ~Этот обоюдоострый боевой топор напоминает секиру палача: его обух выкован наподобие кроваво-красного змея с распростертыми крыльями, изгибы которых образуют лезвия топора. Сам топор *огромен*: даже если держать его в двух руках, понадобилась бы огромная сила, чтобы управиться с ним. Тем не менее, он покоится в парящей латной рукавице, держащей его почти небрежно.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56068 /* ~«Вейлор?..»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56069 /* ~Осмотреть доспехи.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56070 /* ~Осмотреть шлем.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56071 /* ~Взять топор.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56072 /* ~Оставить доспехи в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.3 17.2 18.2 20.4 21.3
  SAY #56073 /* ~Этот шлем напоминает череп какого-то существа: нижний край лицевого щитка обрамляют кривые металлические зубы, нависая над пустотой. Шлем висит в воздухе, его внутренняя часть скрыта тенью.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56074 /* ~«Вейлор?..»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56075 /* ~Осмотреть доспехи.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56076 /* ~Осмотреть топор.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56077 /* ~Забрать шлем.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56078 /* ~Оставить доспехи в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.0 17.0 18.0 19.0
  SAY #56079 /* ~Тебе неизвестно, откуда взялось это имя, но ты знаешь, что оно *принадлежит* броне. Ты произносишь его почти шепотом, но оно отдается в помещении странным эхом. Воздух движется. Этого хватило для того, чтобы у тебя по затылку поползли мурашки, а сердце сжалось в узел.~ */
  IF ~  Global("Memory_Vhailor","GLOBAL",0)
~ THEN REPLY #56080 /* ~Попытаться вспомнить, поднять воспоминание к поверхности.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
SetGlobal("Memory_Vhailor","GLOBAL",1)
GiveExperience(Protagonist,60000)
~ GOTO 21
  IF ~  Global("Memory_Vhailor","GLOBAL",1)
~ THEN REPLY #56081 /* ~Позволить воспоминанию всплыть...~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 21
  IF ~~ THEN REPLY #56082 /* ~Осмотреть доспехи.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56083 /* ~Осмотреть топор.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56084 /* ~Осмотреть шлем.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56085 /* ~Оставить доспехи в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #56086 /* ~Пока ты смотришь на доспехи, тень под козырьком шлема принимает форму... образуя лицо могучего темнокожего мужчины. Его глаза горят огнем, он носит многочисленные шрамы... Так это он был «Вейлором», когда еще был во плоти? Он кажется тебе уж больно знакомым... и в качества доспехов, И в качестве человека из плоти и крови.~ */
  IF ~~ THEN REPLY #56087 /* ~«Вейлор... пробудись».~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 22
  IF ~~ THEN REPLY #56088 /* ~Осмотреть доспехи.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56089 /* ~Осмотреть топор.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56090 /* ~Осмотреть шлем.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56091 /* ~Оставить доспехи в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #56092 /* ~Из-под шлема вырывается яркий красный свет, чуть не ослепив тебя. Ты прикрываешь глаза от света. Убрав руку, ты видишь два уголька, горящих в тени шлема.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 17.3 18.3 19.3
  SAY #56093 /* ~Когда ты протягиваешь руку, из-под шлема вырывается яркий красный свет, чуть не ослепив тебя. Ты прикрываешь глаза от света. Убрав руку, перед тобой предстают два уголька, горящих в тени шлема.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.0
  SAY #56094 /* ~*Я ПРОБУДИЛСЯ*.~ [VHA002] */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #56095 /* ~Голос у него глухой, потусторонний, отдающийся эхом в доспехах. Это не голос человека... больше похоже на *силу*, нечто таинственное. Не похоже ни на что *живое*... или жившее когда-то.~ */
  IF ~~ THEN REPLY #56096 /* ~«Кто ты?»~ */ DO ~SetGlobal("Vhailor","GLOBAL",1)
~ JOURNAL #56097 /* ~В глубине тюрьмы Проклятого я встретил призрачный доспех... похоже, он там уже давно. Его зовут Вейлор, и он говорит, что он — убийца милосердия, служитель справедливости.~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #56098 /* ~*Я ВЕЙЛОР*.~ */
  IF ~  NearbyDialog("Dmorte")
NearbyDialog("Dannah")
~ THEN REPLY #56099 /* ~«*Что* ты такое?»~ */ GOTO 27
  IF ~  NearbyDialog("Dmorte")
!NearbyDialog("Dannah")
~ THEN REPLY #56100 /* ~«*Что* ты такое?»~ */ GOTO 29
  IF ~  !NearbyDialog("Dmorte")
NearbyDialog("Dannah")
~ THEN REPLY #56101 /* ~«*Что* ты такое?»~ */ GOTO 28
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dannah")
~ THEN REPLY #56102 /* ~«*Что* ты такое?»~ */ GOTO 30
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #56103 /* ~*Я — УБИЙЦА МИЛОСЕРДИЯ*.~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 26.2
  SAY #56104 /* ~*Я — УБИЙЦА МИЛОСЕРДИЯ*.~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 32
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY #56105 /* ~*Я — УБИЙЦА МИЛОСЕРДИЯ*.~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY #56106 /* ~*Я — УБИЙЦА МИЛОСЕРДИЯ*.~ */
  IF ~~ THEN REPLY #56107 /* ~«Убийца милосердия?»~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 27.0
  SAY #56108 /* ~Когда Вейлор произносит слова «убийца милосердия», Анна и Морт застывают.~ */
  IF ~~ THEN REPLY #56109 /* ~«Убийца милосердия?»~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 28.0
  SAY #56110 /* ~Когда Вейлор произносит слова «убийца милосердия», Анна застывает и тихо предупреждающе шипит.~ */
  IF ~~ THEN REPLY #56111 /* ~«Убийца милосердия?»~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 29.0
  SAY #56112 /* ~Когда Вейлор произносит слова «убийца милосердия», Морт застывает возле тебя.~ */
  IF ~~ THEN REPLY #56113 /* ~«Убийца милосердия?»~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 30.0 31.0 32.0 33.0 35.0
  SAY #56114 /* ~*Убийцы милосердия служат СПРАВЕДЛИВОСТИ. Справедливость ОЧИЩАЕТ зло. Когда ВСЕ будет очищено, мультивселенная достигнет СОВЕРШЕНСТВА*.~ */
  IF ~~ THEN REPLY #56115 /* ~«Почему вас зовут 'убийцами милосердия'?»~ */ GOTO 36
  IF ~~ THEN REPLY #56116 /* ~«Как вы служите справедливости?»~ */ GOTO 83
  IF ~~ THEN REPLY #56117 /* ~«Вейлор, у меня есть еще вопросы к тебе...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56118 /* ~«Понятно... Вейлор. На том и распрощаемся».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56119 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 10.0 34.2 36.3 37.0 38.2 39.1 40.1 41.1 42.1 43.1 44.1 45.2 48.1 49.1 50.1 51.2 52.0 53.1 55.1 56.1 57.1 58.1 59.0 60.1 61.2 65.1 68.0 69.0 70.1 71.2 72.1 73.2 74.0 75.2 76.1 77.2 83.2 84.2 88.1 89.2 90.10 91.10 92.1 93.2 105.2 106.2 107.4 108.16 109.1 115.1 116.2 117.2 118.1 119.1 120.2 121.2 122.2 123.2 126.3 127.2 146.0 151.0
  SAY #56120 /* ~*СПРАШИВАЙ. Я ОТВЕЧУ*.~ */
  IF ~~ THEN REPLY #56121 /* ~«Кто такие убийцы милосердия?»~ */ GOTO 34
  IF ~~ THEN REPLY #56122 /* ~«Вейлор, ты говоришь, что служишь справедливости. Но как?»~ */ GOTO 83
  IF ~  Global("Current_Area","GLOBAL",702)
~ THEN REPLY #56123 /* ~«Как долго ты был заточен?»~ */ GOTO 55
  IF ~  !Global("Current_Area","GLOBAL",702)
~ THEN REPLY #56124 /* ~«Как долго ты был заточен в подземельях Проклятого?»~ */ GOTO 55
  IF ~~ THEN REPLY #56125 /* ~«Как ты умер?»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 70
  IF ~  Global("Vhailor_Sight","GLOBAL",1)
~ THEN REPLY #56126 /* ~«Вейлор, ты утверждаешь, что можешь видеть сердца других. Но как?»~ */ GOTO 90
  IF ~  Class(Protagonist,FIGHTER)
InParty("Vhail")
Global("Vhailor_Teach","GLOBAL",0)
~ THEN REPLY #56127 /* ~«Вейлор, ты можешь научить меня пользоваться боевым топором?»~ */ GOTO 60
  IF ~  !InParty("Vhail")
GlobalGT("Law","GLOBAL",14)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56128 /* ~Ложь: «Вейлор, я тоже стремлюсь к справедливости. Ты присоединишься ко мне?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
~ GOTO 78
  IF ~  !InParty("Vhail")
GlobalLT("Law","GLOBAL",15)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56129 /* ~Ложь: «Вейлор, я тоже стремлюсь к справедливости. Ты присоединишься ко мне?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
~ GOTO 80
  IF ~  !InParty("Vhail")
GlobalGT("Law","GLOBAL",14)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56130 /* ~Правда: «Вейлор, я тоже стремлюсь к справедливости. Ты присоединишься ко мне?»~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
~ GOTO 78
  IF ~  !InParty("Vhail")
GlobalLT("Law","GLOBAL",15)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56131 /* ~Правда: «Вейлор, я тоже стремлюсь к справедливости. Ты присоединишься ко мне?»~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
~ GOTO 80
  IF ~  !InParty("Vhail")
~ THEN REPLY #56132 /* ~«Вейлор, ты пойдешь со мной? Нам могла бы понадобиться твоя помощь».~ */ GOTO 82
  IF ~  !InParty("Vhail")
~ THEN REPLY #56133 /* ~«Неважно, Вейлор. Тут мы должны расстаться».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56134 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY #56135 /* ~*Милосердие — это щит, которым пользуются СЛАБЫЕ. Милосердие — это СЛАБОСТЬ. Милосердие — это СМЕРТЬ. НИКТО не чист. Убийцы милосердия убивают милосердие и его ПРИСЛУЖНИКОВ повсюду, где они разносят свою чуму*.~ */
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56136 /* ~Правда: «Вижу, что я нашел *единоверца*. Милосердие извращает справедливость. Милосердие — *слабость*».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALEvil_Vhailor_1","GLOBALGood",-1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56137 /* ~Ложь: «Вижу, что я нашел *единоверца*. Милосердие извращает справедливость. Милосердие — *слабость*».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_1","GLOBALLaw",-1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",2)
~ GOTO 37
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56138 /* ~Правда: «Не согласен. Милосердие — это сила. Случается, когда даже справедливость может быть несправедливой, особенно когда применяется сверх меры».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Vhailor_1","GLOBALGood",1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",3)
~ GOTO 38
  IF ~~ THEN REPLY #56139 /* ~«Понятно. У меня есть другие вопросы к тебе...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56140 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56141 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1
  SAY #56142 /* ~*Наказание ЛОМАЕТ души. Оно делает их достойными того, чтобы служить СПРАВЕДЛИВОСТИ*.~ */
  IF ~~ THEN REPLY #56143 /* ~«Понятно. У меня есть другие вопросы к тебе...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56144 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56145 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY #56146 /* ~*МИЛОСЕРДИЕ разъедает само сердце СПРАВЕДЛИВОСТИ. ВСЕ из живших в чем-то ВИНОВНЫ*.~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #56147 /* ~«Вейлор, а что же *определяет* справедливость? ЧТО это на самом деле?»~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56148 /* ~«Исходя из твоих слов, ты и сам виновен. Следует ли наказать *тебя*?»~ */ GOTO 48
  IF ~~ THEN REPLY #56149 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56150 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56151 /* ~«Я больше не собираюсь спорить с тобой, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #56152 /* ~*СПРАВЕДЛИВОСТЬ определяется ЗАКОНОМ*.~ */
  IF ~~ THEN REPLY #56153 /* ~«Но что такое закон, Вейлор?»~ */ GOTO 40
  IF ~~ THEN REPLY #56154 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56155 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56156 /* ~«Я больше не собираюсь спорить с тобой, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #56157 /* ~*ЗАКОН — это инструмент, с помощью которого достигается СПРАВЕДЛИВОСТЬ*.~ */
  IF ~~ THEN REPLY #56158 /* ~«И откуда берутся законы, Вейлор?»~ */ GOTO 41
  IF ~~ THEN REPLY #56159 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56160 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56161 /* ~«Я больше не собираюсь спорить с тобой, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #56162 /* ~*ЗАКОН определяется СПРАВЕДЛИВОСТЬЮ*.~ */
  IF ~~ THEN REPLY #56163 /* ~«Вейлор, это циклические суждения — они бессмысленны. По твоим словам, справедливость определяется законом, который определяется справедливостью».~ */ GOTO 42
  IF ~~ THEN REPLY #56164 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56165 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56166 /* ~«Я больше не собираюсь спорить с тобой, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #56167 /* ~*ЗАКОН -ОПРЕДЕЛЕН- СПРАВЕДЛИВОСТЬЮ*.~ */
  IF ~~ THEN REPLY #56168 /* ~«Вейлор, законы создают живые мужчины и женщины. Разве созданные ими законы 'справедливы'?»~ */ GOTO 43
  IF ~~ THEN REPLY #56169 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56170 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56171 /* ~«Я больше не собираюсь спорить с тобой, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #56172 /* ~*ЗАКОНЫ СПРАВЕДЛИВЫ*.~ */
  IF ~~ THEN REPLY #56173 /* ~«Но раз эти законы создаются живыми мужчинами и женщинами, которые, по *твоим* словам, в ЧЕМ-ТО виновны, разве они не запятнали законы своими руками?»~ */ GOTO 44
  IF ~~ THEN REPLY #56174 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56175 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56176 /* ~«Я больше не собираюсь спорить с тобой, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #56177 /* ~*За ВСЕМИ есть ВИНА. И все же ЗАКОН ПРЕВЫШЕ плоти и крови. НЕСОВЕРШЕННОЕ МОЖНО СДЕЛАТЬ СОВЕРШЕННЫМ. НЕСПРАВЕДЛИВЫЕ ЗАКОНЫ можно ИСПРАВИТЬ, ОЧИСТИТЬ ОТ ЗЛА*.~ */
  IF ~~ THEN REPLY #56178 /* ~«Значит, ты признаешь, что законы не всегда идеальны. Но если эти самые законы определяют справедливость, то ведь и *справедливость* несовершенна?»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 45
  IF ~~ THEN REPLY #56179 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56180 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56181 /* ~«Я больше не собираюсь спорить с тобой, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #56182 /* ~Вейлор молчит.~ */
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56183 /* ~«Вейлор, справедливости НЕ СУЩЕСТВУЕТ. Все, что ты делаешь во имя справедливости, бессмысленно. Твоя ЖИЗНЬ бессмысленна».~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(90000)
~ JOURNAL #56188 /* ~Я убедил Вейлора, что его погоня за справедливостью бессмысленна, поскольку он верил, что справедливость и закон настолько взаимосвязаны, что если одно из них несовершенно, то и другое тоже. Будь он умнее, он мог бы придумать лучшие аргументы, но какая бы страсть или одержимость не превратила его в беспокойного духа, она ослабила его способность видеть за пределами своих скудных доводов. Когда на него наконец обрушились мои слова, его сомнение и неуверенность убили его, заставив его «испустить дух».~ */ GOTO 46
  IF ~  CheckStatLT(Protagonist,21,CHR)
~ THEN REPLY #56184 /* ~«Вейлор, справедливости НЕ СУЩЕСТВУЕТ. Все, что ты делаешь во имя справедливости, бессмысленно. Твоя ЖИЗНЬ бессмысленна».~ */ GOTO 47
  IF ~~ THEN REPLY #56185 /* ~«Неважно, Вейлор. У меня есть к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56186 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56187 /* ~«Я больше не собираюсь спорить с тобой, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #56189 /* ~Твои слова отдаются эхом, набирая силу, пока ты их произносишь. При этом угольки в глазах Вейлора вспыхивают, а затем гаснут. Его топор и металлические латы с лязгом падают на землю. Однако, коснувшись земли, они поднимают облако пыли: на твоих глазах частички пепла и ржавчины слетают с металла, латы с топором стареют, распадаются и исчезают. Остается только несколько выщербленных металлических пластин, могильные камни, подтверждающие существование Вейлора.~ */
  IF ~~ THEN REPLY #56190 /* ~«Прощай, Вейлор».~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #56191 /* ~Угольки в глазах Вейлора вспыхивают... и ЗАГОРАЮТСЯ. *Твои СЛОВА для меня — НИЧТО. Ты пытаешься СБИТЬ меня с ПУТИ СПРАВЕДЛИВОСТИ, — он угрожающе поднимает топор. — Я позабочусь о твоем НАКАЗАНИИ*.~ */
  IF ~~ THEN REPLY #56192 /* ~«Вейлор, погоди! Не делай этого!»~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #56193 /* ~«Ладно, Вейлор. Раз уж ты хочешь драки...»~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 38.1
  SAY #56194 /* ~*Я СЛУЖУ СПРАВЕДЛИВОСТИ. ЕСЛИ БЫ Я ПРОВАЛИЛ МОЮ МИССИЮ, МЕНЯ БЫ НАКАЗАЛИ*.~ */
  IF ~~ THEN REPLY #56195 /* ~«Значит, если ты хоть раз дашь преступнику сбежать, то сам будешь наказан?»~ */ GOTO 49
  IF ~~ THEN REPLY #56196 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56197 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56198 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #56199 /* ~*ДА*.~ */
  IF ~~ THEN REPLY #56200 /* ~«Ну что ж, пока ты был заточен в подземельях Проклятого, тысячи... сотни тысяч... возможно, миллионы преступников по всем планам рождались, проживали свои жизни и умирали. У тебя не было *ни единого* шанса покарать их. Каким образом ты можешь вершить справедливость над каждым существом в мультивселенной?»~ */ GOTO 50
  IF ~~ THEN REPLY #56201 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56202 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56203 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #56204 /* ~*Тогда я найду их ПОСЛЕ смерти и покараю*.~ */
  IF ~~ THEN REPLY #56205 /* ~«Сделав это, ты больше не сможешь наказывать живых. Что тогда, Вейлор?»~ */ GOTO 51
  IF ~~ THEN REPLY #56206 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56207 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56208 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #56209 /* ~*Тогда я продолжу свои поиски СПРАВЕДЛИВОСТИ на плане ЖИВЫХ*.~ */
  IF ~  CheckStatLT(Protagonist,21,CHR)
~ THEN REPLY #56210 /* ~«Но мертвых преступников куда больше, чем живых... и все живое умирает, не так ли? Умерев, ты получишь к ним доступ».~ */ GOTO 52
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56211 /* ~«Но мертвых преступников куда больше, чем живых... и все живое умирает, не так ли? Умерев, ты получишь к ним доступ».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 53
  IF ~~ THEN REPLY #56212 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56213 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56214 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #56217 /* ~*Твои слова ПУСТЫ. Они НЕУБЕДИТЕЛЬНЫ. От них несет ЛОЖЬЮ и ОБМАНОМ. Я больше не буду тебя слушать*.~ */
  IF ~~ THEN REPLY #56218 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56219 /* ~«Тогда здесь нам следует расстаться, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56220 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #56221 /* ~Вейлор молча стоит, угольки его глаз сияют в глубине шлема.~ */
  IF ~~ THEN REPLY #56222 /* ~«Ищи их за границей смерти, Вейлор. Быть может, однажды мы там увидимся».~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(90000)
~ GOTO 54
  IF ~~ THEN REPLY #56223 /* ~«Забудь, что я сказал, Вейлор. У меня есть другие вопросы к тебе...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56224 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56225 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #56226 /* ~Твои слова отдаются эхом, набирая силу, пока ты их произносишь. При этом угольки в глазах Вейлора вспыхивают, а затем гаснут. Его топор и металлические латы с лязгом падают на землю. Однако, коснувшись земли, они поднимают облако пыли: на твоих глазах частички пепла и ржавчины слетают с металла, латы с топором стареют, распадаются и исчезают. Остается только несколько выщербленных металлических пластин, могильные камни, подтверждающие существование Вейлора.~ */
  IF ~~ THEN REPLY #56227 /* ~«Покойся с миром, Вейлор».~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ JOURNAL #56228 /* ~Я убедил Вейлора, что для того, чтобы покарать всех совершивших преступление, ему придется умереть, чтобы он смог покарать их всех. Мои слова имели сильное влияние, настолько сильное, что он буквально умер второй смертью прямо передо мной. Его броня и топор исчезли, когда он «испустил дух».~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 35.2 35.3
  SAY #56229 /* ~*Время УТЕКАЕТ, пока я томлюсь в заточении. Время не имеет ЗНАЧЕНИЯ. Только СПРАВЕДЛИВОСТЬ*.~ */
  IF ~~ THEN REPLY #56230 /* ~«Ты знаешь, *почему* ты оказался в Проклятом?»~ */ GOTO 56
  IF ~~ THEN REPLY #56231 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56232 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56233 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #56234 /* ~*Многое из моих странствий утеряно. Я отправился на поиски ИЗМЕННИКОВ. Они нашли меня и заточили — совершили ПРЕДАТЕЛЬСТВО*.~ */
  IF ~~ THEN REPLY #56235 /* ~«Каких изменников?»~ */ GOTO 57
  IF ~~ THEN REPLY #56236 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56237 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56238 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #56239 /* ~*Проклятый — ГОРОД ИЗМЕННИКОВ. Этот город оскверняет СПРАВЕДЛИВОСТЬ. Я пришел, дабы ОЧИСТИТЬ его*.~ */
  IF ~~ THEN REPLY #56240 /* ~«Как тебя лишили свободы?»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #56241 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56242 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56243 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #56244 /* ~Вейлор некоторое время молчит. Угольки его глаз мерцают.~ */
  IF ~~ THEN REPLY #56245 /* ~«Вейлор? Ты помнишь, как тебя заточили?»~ */ GOTO 59
  IF ~~ THEN REPLY #56246 /* ~«Забудь, что я сказал, Вейлор. У меня есть другие вопросы к тебе...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56247 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56248 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #56249 /* ~*Я НЕ ЗНАЮ*.~ */
  IF ~~ THEN REPLY #56250 /* ~«Хорошо. У меня были к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56251 /* ~«Тогда здесь нам следует расстаться, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56252 /* ~«Тогда не бери в голову, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 35.6
  SAY #56253 /* ~*Я не могу тебя ничему научить. Оружием владеет не РУКА. Им владеет ВОЛЯ*.~ */
  IF ~~ THEN REPLY #56254 /* ~«О чем это ты?»~ */ GOTO 61
  IF ~~ THEN REPLY #56255 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~~ THEN REPLY #56256 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #56257 /* ~*Когда ВОЛЯ сильна, КЛИНОК силен. Когда причина ПРАВЕДНА, клинок бьет БЕЗ ПРОМАХУ. Когда в сердце въедается МИЛОСЕРДИЕ, за ним следуют СОМНЕНИЕ, НЕРЕШИТЕЛЬНОСТЬ, СОСТРАДАНИЕ. Клинок превращается в ПЫЛЬ*.~ */
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56258 /* ~«Моя воля сильна, Вейлор. Мое убеждение добавляет силы моему клинку».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 62
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56259 /* ~«Моя воля сильна, Вейлор. Мое убеждение добавляет силы моему клинку».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 69
  IF ~~ THEN REPLY #56260 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~~ THEN REPLY #56261 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #56262 /* ~На тебя падает взгляд глаз-угольков Вейлора. Наступает тяжелая тишина.~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #56263 /* ~*Твоя ВОЛЯ сильна. Твоя ДИСЦИПЛИНА сильна. Твоя ВОЛЯ — воля ЗАКОНА*.~ */
  IF ~~ THEN REPLY #56264 /* ~«Тогда как?..»~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #56265 /* ~*ЗНАЙ: Ничто на ВСЕХ ПЛАНАХ не может УСТОЯТЬ перед десницей ПРАВОСУДИЯ, направленной против него. Оно способно уничтожить ЛЕГИОНЫ. Оно может расколоть престолы БОГОВ. Когда твое дело ПРАВЕДНО, СПРАВЕДЛИВОСТЬ придаст тебе СИЛЫ*.~ */
  IF ~~ THEN REPLY #56266 /* ~«Понятно».~ */ DO ~SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #56267 /* ~*Тебе НЕПОНЯТНО. ПОКА. Открой мне свои глаза, и ты УЗРИШЬ ПЛАНЫ глазами ПРАВОСУДИЯ*.~ */
  IF ~~ THEN REPLY #56268 /* ~«Хорошо... покажи мне, что ты видишь».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 66
  IF ~~ THEN REPLY #56269 /* ~«Нет, Вейлор... Я не хочу этого видеть. У меня есть к тебе другие вопросы...»~ */ GOTO 35
  IF ~~ THEN REPLY #56270 /* ~«Вейлор, я не думаю, что готов к тому, что ты хочешь мне показать. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #56271 /* ~Ты вглядываешься в глаза Вейлора, и вдруг пара огоньков ВСПЫХИВАЕТ...~ */
  IF ~  GlobalLT("Law","GLOBAL",25)
~ THEN REPLY #56272 /* ~«Чт...»~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",1)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,1)
GiveExperience(Protagonist,90000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
  IF ~  GlobalGT("Law","GLOBAL",24)
GlobalLT("Law","GLOBAL",35)
~ THEN REPLY #56273 /* ~«Чт...»~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",2)
PermanentStatChange(Protagonist,STR,RAISE,2)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,2)
GiveExperience(Protagonist,120000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
  IF ~  GlobalGT("Law","GLOBAL",34)
~ THEN REPLY #56274 /* ~«Чт...»~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",3)
PermanentStatChange(Protagonist,STR,RAISE,3)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,3)
GiveExperience(Protagonist,150000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.1 66.2
  SAY #56275 /* ~На миг яркий вспышка ослепляет тебя, и когда ты раскрываешь глаза, все вокруг становится РЕЗКИМ, как будто ты смотришь на все под другим углом. Ты чувствуешь все острее, как будто ты способен РАСКОЛОТЬ любой предмет одним лишь взглядом. ~ */
  IF ~~ THEN REPLY #56276 /* ~«Вейлор... это?..»~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #56277 /* ~*УЗРИ всех. УЗРИ их силу. УЗРИ их СЛАБОСТИ. СУДИ их. Если МИЛОСЕРДИЕ поедает их сердца, они ПАДУТ перед СПРАВЕДЛИВОСТЬЮ. Твоя ВОЛЯ дает тебе ПРАВО. Твоя ДИСЦИПЛИНА дает тебе ПРАВО*.~ */
  IF ~~ THEN REPLY #56278 /* ~«Хорошо... Я... хотел бы спросить у тебя кое о чем еще».~ */ GOTO 35
  IF ~~ THEN REPLY #56279 /* ~«Понятно... Продолжим путь...»~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 61.1
  SAY #56280 /* ~*Твоя ВОЛЯ сильна. Но тебе не хватает ДИСЦИПЛИНЫ. Твоя ВОЛЯ принадлежит ТЕБЕ, а не ЗАКОНУ. Я не могу показать тебе ничего, что ты смог бы УВИДЕТЬ или ПОНЯТЬ*.~ */
  IF ~~ THEN REPLY #56281 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~~ THEN REPLY #56282 /* ~«Тогда неважно. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 35.4
  SAY #56283 /* ~На тебя падает взгляд глаз-угольков Вейлора. Наступает тяжелая тишина.~ */
  IF ~~ THEN REPLY #56284 /* ~«Вейлор, как ты умер?»~ */ GOTO 71
  IF ~~ THEN REPLY #56285 /* ~«Забудь, Вейлор. У меня есть другие вопросы к тебе...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56286 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56287 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #56288 /* ~*Я ЖИВОЙ*.~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #56289 /* ~«Ну да, в каком-то смысле. Но что случилось с твоим физическим телом?»~ */ GOTO 73
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #56290 /* ~«Ну да, в каком-то смысле. Но что случилось с твоим физическим телом?»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 72
  IF ~~ THEN REPLY #56291 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56292 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56293 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY #56294 /* ~Не успеваешь ты сказать это, как в твоем затылке появляется странное покалывание — и вдруг ты *осознаешь*, что Вейлор не понимает, что он мертв. По какой то причине тебе кажется, что это разоблачение может оказаться весьма опасным.~ */
  IF ~~ THEN REPLY #56295 /* ~«Вейлор, что случилось с твоим физическим телом?»~ */ GOTO 73
  IF ~~ THEN REPLY #56296 /* ~«Забудь, Вейлор. У меня есть другие вопросы к тебе...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56297 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56298 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 71.0 72.0
  SAY #56299 /* ~*Я ЖИВОЙ. Покуда ОСУЖДЕННЫЕ будут нуждаться в НАКАЗАНИИ, Я ПРОДОЛЖУ ЖИТЬ*.~ */
  IF ~~ THEN REPLY #56300 /* ~«Вейлор, ты *не совсем* жив... Ты стал духом, призраком, привидением».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 74
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56301 /* ~«Ты ЧУВСТВУЕШЬ, что жив, Вейлор? Сними рукавицу, попробуй увидеть кожу. Прикоснись топором к своей руке: прольется ли кровь? И еще твои глаза: они горят как пламя, но могут ли они пролить слезы? Твой дух остался, Вейлор, но ты более не *жив*».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 75
  IF ~~ THEN REPLY #56302 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56303 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56304 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #56305 /* ~Нависает тяжелая и опасная тишина. Вейлор не отвечает.~ */
  IF ~~ THEN REPLY #56306 /* ~«Забудь, Вейлор. У меня есть другие вопросы к тебе...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56307 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56308 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 73.1
  SAY #56309 /* ~На миг... всего лишь на миг в глазах Вейлора появляется блеск.~ */
  IF ~  Global("Memory_Vhailor","GLOBAL",0)
~ THEN REPLY #56310 /* ~«Вейлор, ты вообще ПОМНИШЬ, как выглядел в прошлом без брони? Когда-то ты был человеком из крови и плоти, живым, ищущим справедливость. Но теперь этот человек мертв. Осталась лишь измученная оболочка».~ */ GOTO 76
  IF ~  Global("Memory_Vhailor","GLOBAL",1)
~ THEN REPLY #56311 /* ~«Вейлор, ты вообще ПОМНИШЬ, как выглядел в прошлом без брони? Я помню. Когда-то ты был человеком из крови и плоти, темнокожим, с горящими глазами... На твоей коже было множество шрамов, и ты совершил множество актов правосудия. Но теперь этот человек мертв. Осталась лишь измученная оболочка».~ */ GOTO 76
  IF ~~ THEN REPLY #56312 /* ~«Забудь, что я сказал, Вейлор. У меня есть другие вопросы к тебе...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56313 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56314 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1
  SAY #56315 /* ~*Я... помню*. Глаза Вейлора мерцают, теперь более непостоянно. *Это... НЕЛЕГКО вспомнить. Была СМЕРТЬ... и я ИЗМЕНИЛСЯ. Я больше не ТОТ. КТО же я?*~ */
  IF ~~ THEN REPLY #56316 /* ~«Я не знаю, Вейлор. Человек, бывший Вейлором, умер... теперь ты нечто иное».~ */ GOTO 77
  IF ~~ THEN REPLY #56317 /* ~«Забудь мои слова, Вейлор... У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56318 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56319 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #56320 /* ~*Моей целью была СПРАВЕДЛИВОСТЬ. ПЛОТЬ... ПЛОТЬ не может жить вечно. И все же ПРАВОСУДИЕ нужно ВЕРШИТЬ. Это была СМЕРТЬ плоти, но ВОЛЯ никуда не делась... Были ДРУГИЕ, нуждающиеся в наказании. И ВСЕГДА будут. ПРАВОСУДИЕ... ПРАВОСУДИЕ не могло вершиться после моей СМЕРТИ*.~ */
  IF ~~ THEN REPLY #56321 /* ~«Вейлор, но ведь ты ДЕЙСТВИТЕЛЬНО умер давным давно. Настало время все оставить».~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(12000)
~ JOURNAL #56677 /* ~Я убедил Вейлора, что он более не жив. Мои слова имели сильное влияние, настолько сильное, что он буквально умер второй смертью прямо передо мной. Его броня и топор исчезли, когда он «испустил дух».~ */ GOTO 152
  IF ~~ THEN REPLY #56322 /* ~«Тогда ты ЛЖЕШЬ себе, думая, что ты жив. Ты МЕРТВ, Вейлор. Какое ПРАВОСУДИЕ можно вершить, если его служитель сам себе лжет?»~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(12000)
~ JOURNAL #56326 /* ~Я убедил Вейлора, что он мертв, и что ему нужно все бросить и прекратить свой крестовый поход во имя справедливости. Мои слова имели сильное влияние, настолько сильное, что он буквально умер второй смертью прямо передо мной. Его броня и топор исчезли, когда он «испустил дух».~ */ GOTO 152
  IF ~~ THEN REPLY #56323 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56324 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56325 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 35.7 35.9 82.0 82.2 82.4
  SAY #56327 /* ~На тебя падает взгляд глаз-угольков Вейлора. Наступает тяжелая тишина.~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #56328 /* ~*Я ПРИСОЕДИНЮСЬ к тебе. Мы будем стремиться к СПРАВЕДЛИВОСТИ вместе. Где бы не пряталось МИЛОСЕРДИЕ, мы его УБЬЕМ*.~ */
  IF ~~ THEN REPLY #56329 /* ~«Хорошо».~ */ DO ~SetGlobal("Vhailor_Join","GLOBAL",1)
AddexperienceParty(90000)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 80 // from: 35.8 35.10 82.1 82.3 82.5
  SAY #56330 /* ~На тебя падает взгляд глаз-угольков Вейлора. Наступает тяжелая тишина.~ */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #56331 /* ~*Я ПРИСОЕДИНЮСЬ к тебе. Твоя ВОЛЯ НЕПОСТОЯННА, но я ОБУЧУ тебя СПРАВЕДЛИВОСТИ. Я ОБУЧУ тебя УБИЙСТВУ МИЛОСЕРДИЯ*.~ */
  IF ~~ THEN REPLY #56332 /* ~«Хорошо».~ */ DO ~SetGlobal("Vhailor_Join","GLOBAL",2)
AddexperienceParty(90000)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 8.1 35.11
  SAY #56333 /* ~*Жаждет ли твое сердце СПРАВЕДЛИВОСТИ? Или твой ПУТЬ не имеет ЦЕЛИ?*~ */
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56334 /* ~Правда: «Я стремлюсь к справедливости, Вейлор. Ты присоединишься ко мне?»~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56335 /* ~Правда: «Я стремлюсь к справедливости, Вейлор. Ты присоединишься ко мне?»~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56336 /* ~Ложь: «Я стремлюсь к справедливости, Вейлор. Ты присоединишься ко мне?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56337 /* ~Ложь: «Я стремлюсь к справедливости, Вейлор. Ты присоединишься ко мне?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56339 /* ~«Я ищу знания о себе, Вейлор, и если в этих знаниях заключается справедливость, я это выясню».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56340 /* ~«Я ищу знания о себе, Вейлор, и если в этих знаниях заключается справедливость, я это выясню».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
END

IF ~~ THEN BEGIN 83 // from: 34.1 35.1
  SAY #56338 /* ~*СПРАВЕДЛИВОСТЬ использует убийц милосердия вместо ГЛАЗ. СПРАВЕДЛИВОСТЬ использует убийц милосердия для осуществления свой ВОЛИ. Когда ПРИГОВОР оглашен, она дарит нам свою СИЛУ*.~ */
  IF ~~ THEN REPLY #56347 /* ~«А как ты узнаешь, *когда* следует вершить правосудие?»~ */ GOTO 89
  IF ~~ THEN REPLY #56348 /* ~«Силу? Каким образом?»~ */ GOTO 84
  IF ~~ THEN REPLY #56349 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56350 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56351 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 83.1 89.1
  SAY #56341 /* ~*СИЛА СПРАВЕДЛИВОСТИ зависит от вреда, нанесенного НЕСПРАВЕДЛИВОСТЬЮ*.~ */
  IF ~~ THEN REPLY #56342 /* ~«Значит... чем сильнее несправедливость, чем серьезнее преступление, тем больше силы придает тебе 'справедливость'?»~ */ GOTO 85
  IF ~~ THEN REPLY #56343 /* ~«А как ты узнаешь, *когда* следует вершить правосудие?»~ */ GOTO 89
  IF ~~ THEN REPLY #56344 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56345 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56346 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #56352 /* ~*Когда НЕСПРАВЕДЛИВОСТЬ достаточно велика, СПРАВЕДЛИВОСТЬ придает мне СИЛУ, необходимую для ее исправления. НИЧТО перед ней не устоит. Она РАЗОБЬЕТ любой барьер, РАСКОЛЕТ любой щит, ПРОРВЕТСЯ сквозь любое КОЛДОВСТВО и придаст ее служителю СИЛУ для ВЫНЕСЕНИЯ ПРИГОВОРА*.~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ JOURNAL #56353 /* ~Вейлор — нечто большее, чем просто беспокойный дух: похоже, что он — воплощение справедливости. Он сказал мне, что справедливость придает ему силу, необходимую для исправления несправедливости: чем больше несправедливость, тем больше силы он получает, чтобы исправить ее. Вейлор утверждает, что справедливость может даровать ему силу, способную уничтожить легионы... даже победить богов на их престолах. По какой-то причине, его слова пробудили во мне слабое воспоминание. Я знаю, что слышал эти слова ранее, и как бы неимоверно они не звучали, я уверен, что это правда.~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #56354 /* ~Пока Вейлор произносит эти слова, по твоему телу проходит холодок, такой сильный, что ты вздрагиваешь. Ты уже *слышал* раньше эти слова, и ты знаешь, что это *правда*.~ */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #56355 /* ~*ЗНАЙ: Ничто на ВСЕХ ПЛАНАХ не может УСТОЯТЬ перед десницей ПРАВОСУДИЯ, направленной против него. Оно способно уничтожить ЛЕГИОНЫ. Оно может расколоть престолы БОГОВ. Знай, что для всех, кто ПРЕДАЕТ справедливость, я становлюсь их СУДЬБОЙ. И судьба несет с собой ТОПОР ПАЛАЧА*.~ */
  IF ~~ THEN REPLY #56356 /* ~«Понятно».~ */ DO ~SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #56357 /* ~*НЕТ, ты НЕ ВИДИШЬ, — глаза Вейлора горят как факелы в тени его шлема. — МОЛИСЬ, чтобы никогда НЕ УВИДЕЛ*.~ */
  IF ~~ THEN REPLY #56358 /* ~«А как ты узнаешь, *когда* следует вершить правосудие?»~ */ GOTO 89
  IF ~~ THEN REPLY #56359 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56360 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56361 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 83.0 84.1 88.0
  SAY #56362 /* ~*СПРАВЕДЛИВОСТЬ видит моими глазами. ГЛАЗА УБИЙЦЫ МИЛОСЕРДИЯ могут видеть ТРЕЩИНЫ СЛАБОСТИ, НЕДОСТАТКИ, раны МИЛОСЕРДИЯ в СЕРДЦАХ. ГЛЯДЯ на них, я УЗНАЮ их вину. Я УЗНАЮ их СТРАХИ*.~ */
  IF ~~ THEN REPLY #56363 /* ~«Что ты видишь, когда смотришь на других?»~ */ DO ~SetGlobal("Vhailor_Sight","GLOBAL",1)
~ GOTO 90
  IF ~~ THEN REPLY #56364 /* ~«Когда ты сказал, что справедливость придает тебе 'силу', что ты имел в виду?»~ */ GOTO 84
  IF ~~ THEN REPLY #56365 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56366 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56367 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 35.5 89.0
  SAY #56368 /* ~*Я ОЦЕНИВАЮ все, что вижу. Я могу заглянуть чье-нибудь сердце и разум и УЗНАТЬ их. МОИМИ глазами смотрит сама СПРАВЕДЛИВОСТИ*.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #56369 /* ~«Что ты видишь, когда смотришь на Морта?»~ */ GOTO 92
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #56370 /* ~«Что ты видишь, когда смотришь на Анну?»~ */ DO ~SetGlobal("Vhailor_Prejudice_Annah","GLOBAL",1)
~ GOTO 93
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #56371 /* ~«Что ты видишь, когда смотришь на Даккона?»~ */ GOTO 105
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56372 /* ~«Что ты видишь, когда смотришь на Падшую Грацию?»~ */ DO ~SetGlobal("Vhailor_Prejudice_Grace","GLOBAL",1)
~ GOTO 110
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56373 /* ~«Что ты видишь, когда смотришь на Падшую Грацию?»~ */ GOTO 115
  IF ~  NearbyDialog("Dnordom")
~ THEN REPLY #56374 /* ~«Что ты видишь, когда смотришь на Нордома?»~ */ GOTO 119
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #56375 /* ~«Что ты видишь, когда смотришь на Игнуса?»~ */ GOTO 116
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #56376 /* ~«Что ты видишь, когда смотришь на себя?»~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #56377 /* ~«Что ты видишь, когда смотришь на себя?»~ */ GOTO 120
  IF ~~ THEN REPLY #56378 /* ~«Что ты видишь, когда смотришь на меня?»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
  IF ~~ THEN REPLY #56379 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56380 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56381 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 92.0 93.1 105.1 106.1 107.0 108.15 109.0 115.0 116.1 117.1 118.0 119.0 120.1 121.1 122.1 123.1 126.2 127.1
  SAY #56382 /* ~*СПРАШИВАЙ*.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #56383 /* ~«Что ты видишь, когда смотришь на Морта?»~ */ GOTO 92
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #56384 /* ~«Что ты видишь, когда смотришь на Анну?»~ */ DO ~SetGlobal("Vhailor_Prejudice_Annah","GLOBAL",1)
~ GOTO 93
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #56385 /* ~«Что ты видишь, когда смотришь на Даккона?»~ */ GOTO 105
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56386 /* ~«Что ты видишь, когда смотришь на Падшую Грацию?»~ */ DO ~SetGlobal("Vhailor_Prejudice_Grace","GLOBAL",1)
~ GOTO 110
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56387 /* ~«Что ты видишь, когда смотришь на Падшую Грацию?»~ */ GOTO 115
  IF ~  NearbyDialog("Dnordom")
~ THEN REPLY #56388 /* ~«Что ты видишь, когда смотришь на Нордома?»~ */ GOTO 119
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #56389 /* ~«Что ты видишь, когда смотришь на Игнуса?»~ */ GOTO 116
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #56390 /* ~«Что ты видишь, когда смотришь на себя?»~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #56391 /* ~«Что ты видишь, когда смотришь на себя?»~ */ GOTO 120
  IF ~~ THEN REPLY #56392 /* ~«Что ты видишь, когда смотришь на меня?»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
  IF ~~ THEN REPLY #56393 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56394 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56395 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.0 91.0
  SAY #56396 /* ~*Череп МНОГОЕ знает. Вот только ему НИЧЕГО неизвестно о справедливости. Многие с сердцами, подобными сердцу черепа, находятся в ТЮРЬМАХ и МОГИЛАХ*.~ */
  IF ~~ THEN REPLY #56397 /* ~«Позволь мне спросить кое о ком другом...»~ */ GOTO 91
  IF ~~ THEN REPLY #56398 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56399 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56400 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 90.1 91.1
  SAY #56401 /* ~*Тифлинг ИСПОРЧЕН Нижними планами. В ее крови нет МЕСТА для верности СПРАВЕДЛИВОСТИ. Она понимает СПРАВЕДЛИВОСТЬ, но ИГНОРИРУЕТ ее, — глаза Вейлора вспыхивают. — Но МЕНЯ она не будет ИГНОРИРОВАТЬ*.~ */
  IF ~  Global("Annah_Accuse","GLOBAL",0)
~ THEN DO ~SetGlobal("Annah_Accuse","GLOBAL",1)
~ EXTERN ~DANNAH~ 274
  IF ~  Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56402 /* ~«Позволь мне спросить кое о ком другом...»~ */ GOTO 91
  IF ~  Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56403 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56404 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56405 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from:
  SAY #56406 /* ~Глаза Вейлора горят. *Тифлинг, ОТВЕЧАЙ: Совершала ли ты когда-нибудь НЕСПРАВЕДЛИВОСТЬ?*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 275
END

IF ~~ THEN BEGIN 95 // from:
  SAY #56407 /* ~*СПРАВЕДЛИВОСТЬ дарует мне такое ПРАВО*.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 276
END

IF ~~ THEN BEGIN 96 // from:
  SAY #56408 /* ~*Убийцы милосердия И ЕСТЬ справедливость. Наши действия ВНЕ обсуждения, ТИФЛИНГ*.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 277
END

IF ~~ THEN BEGIN 97 // from:
  SAY #56410 /* ~*ПОСЛЕДНИЙ раз спрашиваю, тифлинг, совершала ли ты когда-нибудь несправедливость? ОТКАЗЫВАЯСЬ отвечать, ты признаешь свою ВИНУ*.~ */
  IF ~~ THEN REPLY #56411 /* ~«Вейлор, прекрати. Немедленно. Я не разрешал тебе допрашивать ее».~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 99
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #56412 /* ~Подождать ответа Анны.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
MoraleDec("Grace",1)
~ EXTERN ~DGRACE~ 200
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #56413 /* ~Подождать ответа Анны.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 278
END

IF ~~ THEN BEGIN 98 // from:
  SAY #56414 /* ~*Ты ОТКАЗАЛАСЬ держать ответ перед СПРАВЕДЛИВОСТЬЮ. Теперь ты будешь НАКАЗАНА*.~ */
  IF ~~ THEN REPLY #56415 /* ~«Нет, Вейлор. Ты не имеешь права».~ */ GOTO 99
  IF ~~ THEN REPLY #56416 /* ~Посмотреть, что произойдет.~ */ DO ~LeaveParty()
Enemy()
Attack("Annah")
ChangeAIScript("MDKAnnah",DEFAULT)
ForceAttack("Annah",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 97.0 98.0 102.0
  SAY #56418 /* ~*СПРАВЕДЛИВОСТЬ дарует мне такое ПРАВО. Вина ПОКРЫВАЕТ ее, словно вторая кожа*.~ */
  IF ~~ THEN REPLY #56419 /* ~«Я сказал тебе остановиться, Вейлор. Я серьезно».~ */ GOTO 103
END

IF ~~ THEN BEGIN 100 // from:
  SAY #56420 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #56421 /* ~*Она совершала НЕСПРАВЕДЛИВОСТЬ. За это я ее НАКАЖУ*.~ */
  IF ~~ THEN EXTERN ~DGRACE~ 201
END

IF ~~ THEN BEGIN 102 // from:
  SAY #56423 /* ~*Все, что стоит на ПУТИ СПРАВЕДЛИВОСТИ, подлежит ОСУЖДЕНИЮ. Ты ЗАСЛУЖИЛА свою судьбу, СУККУБ*.~ */
  IF ~~ THEN REPLY #56424 /* ~«Нет, Вейлор. Ты не имеешь права».~ */ GOTO 99
  IF ~~ THEN REPLY #56425 /* ~Посмотреть, что произойдет.~ */ DO ~LeaveParty()
Enemy()
Attack("Grace")
ChangeAIScript("MDKGrace",DEFAULT)
ForceAttack("Grace",Myself)
ForceAttack("Annah",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.0
  SAY #56426 /* ~*Вот и шлюха по имени МИЛОСЕРДИЕ себя проявила. СЛАБОСТЬ отравила твое сердце*.~ */
  IF ~~ THEN REPLY #56427 /* ~«Это не милосердие. Это мой *приказ*. Или ты хочешь проверить на слабость меня?»~ */ GOTO 104
  IF ~~ THEN REPLY #56428 /* ~«Милосердие — это не слабость, Вейлор. Оставь ее в покое, или ответишь за это передо мной».~ */ GOTO 104
  IF ~~ THEN REPLY #56429 /* ~«Разве? Так осуди меня, Вейлор. Если ты найдешь во мне то, что ищешь, тогда вынеси *мне* свой приговор».~ */ GOTO 129
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #56430 /* ~*Все, что стоит на ПУТИ СПРАВЕДЛИВОСТИ, подлежит ОСУЖДЕНИЮ, — с горящими глазами Вейлор заносит топор. — Ты ЗАСЛУЖИЛ свою судьбу*.~ */
  IF ~~ THEN REPLY #56431 /* ~«Приготовься встретить свою вторую смерть, Вейлор...»~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 90.2 91.2
  SAY #56432 /* ~*В сердце этого гитцерая нет ПРЕДУБЕЖДЕНИЙ, отравляющих его РОД. И все же он живет в РАЗЛАДЕ с самим собой, поскольку его СЛОВО является его ВОЛЕЙ и ЗАКОНОМ. Если другие гитцераи преуспевают в хаосе, то этот страдает в нем*.~ */
  IF ~~ THEN REPLY #56433 /* ~«Предубеждений? О чем это ты?»~ */ GOTO 106
  IF ~~ THEN REPLY #56434 /* ~«Позволь мне спросить кое о ком другом».~ */ GOTO 91
  IF ~~ THEN REPLY #56435 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56436 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56437 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #56438 /* ~*Раса гитцераев сгорает от ПРЕДУБЕЖДЕНИЙ. В глазах СПРАВЕДЛИВОСТИ нет места для ПРЕДУБЕЖДЕНИЙ*.~ */
  IF ~~ THEN REPLY #56439 /* ~«Какие еще предубеждения?»~ */ GOTO 107
  IF ~~ THEN REPLY #56440 /* ~«Позволь мне спросить кое о ком другом».~ */ GOTO 91
  IF ~~ THEN REPLY #56441 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56442 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56443 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #56444 /* ~*По своей сути предубеждения ИСКАЖАЮТ справедливость. У гитцераев есть предубеждения перед гитьянки, родственной им расой, а также перед иллитидами, которые ВЛАДЕЛИ народом гитов. Ненависть к гитьянки и иллитидам горит в сердцах гитцераев*.~ */
  IF ~~ THEN REPLY #56445 /* ~«Позволь мне спросить кое о ком другом».~ */ GOTO 91
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",1)
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56446 /* ~«Значит, предубеждение искажает справедливость? Как насчет того, что ты говорил про Анну?»~ */ GOTO 108
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56447 /* ~«Значит, предубеждение искажает справедливость? Как насчет того, что ты говорил про Падшую Грацию?»~ */ GOTO 108
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
~ THEN REPLY #56448 /* ~«Значит, предубеждение искажает справедливость? Как насчет того, что ты говорил про Анну и Падшую Грацию?»~ */ GOTO 108
  IF ~~ THEN REPLY #56449 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56450 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56451 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 107.1 107.2 107.3
  SAY #56452 /* ~*Мои слова берут начало НЕ из предубеждений. Они берут начало из НАБЛЮДЕНИЙ и ВОСПОМИНАНИЙ*.~ */
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
NearbyDialog("Dannah")
Global("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56453 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
NearbyDialog("Dannah")
GlobalGT("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56454 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
!NearbyDialog("Dannah")
~ THEN REPLY #56455 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
NearbyDialog("Dgrace")
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56456 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
NearbyDialog("Dgrace")
GlobalGT("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56457 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
!NearbyDialog("Dgrace")
~ THEN REPLY #56458 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #56459 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56460 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
MoraleInc("Grace",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56461 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("Dgrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56462 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56463 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56464 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56465 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
!NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56466 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
!NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56467 /* ~«Что ж, мне кажется, что твои 'наблюдения' говорят о предубеждениях, Вейлор. Ты быстр на руку валить всю нечисть в одну кучу. Может, тебе следует пересмотреть свои наблюдения».~ */ GOTO 109
  IF ~~ THEN REPLY #56468 /* ~«Позволь мне спросить кое о ком другом».~ */ GOTO 91
  IF ~~ THEN REPLY #56469 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56470 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56471 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 108.0 108.1 108.2 108.3 108.4 108.5 108.6 108.7 108.8 108.9 108.10 108.11 108.12 108.13 108.14
  SAY #56472 /* ~*Мои НАБЛЮДЕНИЯ сделаны ГЛАЗАМИ СПРАВЕДЛИВОСТИ. Я НАБЛЮДАЮ, затем ДЕЙСТВУЮ. Тебе следовало бы ПОМНИТЬ это, если все другое ты забыл*.~ */
  IF ~~ THEN REPLY #56473 /* ~«Позволь мне спросить кое о ком другом...»~ */ GOTO 91
  IF ~~ THEN REPLY #56474 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56475 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56476 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from: 90.3 91.3
  SAY #56504 /* ~*ТАНАРРИ РОЖДЕНЫ из хаоса. Их НЕ ЗАБОТИТ СПРАВЕДЛИВОСТЬ. СУККУБ знает о СПРАВЕДЛИВОСТИ, но она ОТВЕРНУЛАСЬ от нее. Ее сердце ОТРАВЛЕНО МИЛОСЕРДИЕМ*.~ */
  IF ~~ THEN REPLY #56505 /* ~«Позволь мне спросить кое о ком др...»~ */ EXTERN ~DGRACE~ 196
  IF ~~ THEN REPLY #56506 /* ~«Ну хорошо. Вейлор, у меня есть другие вопр...»~ */ EXTERN ~DGRACE~ 196
  IF ~~ THEN REPLY #56507 /* ~«Неважно, Вейлор. Прод...»~ */ EXTERN ~DGRACE~ 196
END

IF ~~ THEN BEGIN 111 // from:
  SAY #56508 /* ~Глаза Вейлора вспыхивают. *МИЛОСЕРДИЕ разъедает само СЕРДЦЕ СПРАВЕДЛИВОСТИ. МИЛОСЕРДИЕ поглощает все СОВЕРШЕННОЕ. СОСТРАДАНИЕ и ПРОЩЕНИЕ — ЯДЫ МИЛОСЕРДИЯ*.~ */
  IF ~~ THEN EXTERN ~DGRACE~ 197
END

IF ~~ THEN BEGIN 112 // from:
  SAY #56509 /* ~*Ты СЛАБА, СУККУБ. Ты СЛАБА, как и все представители твоего РОДА. В то время как твои РОД совращает ПЛОТЬ, тебя СОВРАТИЛО МИЛОСЕРДИЕ. Ты — ШЛЮХА МИЛОСЕРДИЯ. Ты — НИЧТО*.~ */
  IF ~~ THEN EXTERN ~DGRACE~ 198
END

IF ~~ THEN BEGIN 113 // from:
  SAY #56510 /* ~Глаза Вейлора пылают как два факела, пока он смотрит на Падшую Грацию. Падшая Грация встречает его взгляд спокойно, ее взгляд чист и уверен.~ */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #56511 /* ~*В тебе есть КОРЕНЬ СЛАБОСТИ. Ты ВЕРИШЬ, что СИЛЬНА, но МИЛОСЕРДИЕ воспользуется этим. Оно ПОГЛОТИТ твою ВОЛЮ*. Вейлор на миг умолкает, и следующие его слова подобны молоту: *И все же... другую СЛАБОСТЬ ты ХРАНИШЬ в своем СЕРДЦЕ, СУККУБ. МОИ глаза видят это. Ты испытываешь ПРИВЯЗАННОСТЬ. Из-за ПРИВЯЗАННОСТИ ты стала СЛАБОЙ*.~ */
  IF ~~ THEN EXTERN ~DGRACE~ 199
END

IF ~~ THEN BEGIN 115 // from: 90.4 91.4
  SAY #56512 /* ~*ТАНАРРИ РОЖДЕНЫ из хаоса. Их НЕ ЗАБОТИТ СПРАВЕДЛИВОСТЬ. СУККУБ знает о СПРАВЕДЛИВОСТИ, но она ОТВЕРНУЛАСЬ от нее. МИЛОСЕРДИЕ пустило КОРНИ в ее сердце. Она испытывает ПРИВЯЗАННОСТЬ. Из-за ПРИВЯЗАННОСТИ она стала СЛАБОЙ*.~ */
  IF ~~ THEN REPLY #56513 /* ~«Позволь мне спросить кое о ком другом».~ */ GOTO 91
  IF ~~ THEN REPLY #56514 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56515 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56516 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 90.6 91.6
  SAY #56517 /* ~*Я вижу на этом колдуне отметину СПРАВЕДЛИВОСТИ*.~ */
  IF ~~ THEN REPLY #56518 /* ~«Ты утверждаешь, что Игнус был осужден?»~ */ GOTO 117
  IF ~~ THEN REPLY #56519 /* ~«Позволь мне спросить кое о ком другом».~ */ GOTO 91
  IF ~~ THEN REPLY #56520 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56521 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56522 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #56523 /* ~*Пламя, в котором он ПЫЛАЕТ, говорит о справедливости. Колдун НАКАЗАН. Он более НЕ ЖИВ, он стал ЧАСТЬЮ ПЛАНОВ. Его тело — КАНАЛ. У него нет СЕРДЦА. Он был ОСУЖДЕН*.~ */
  IF ~~ THEN REPLY #56524 /* ~«Ты знаешь, почему Игнус не умер? Разве это пламя не должно его убить?»~ */ GOTO 118
  IF ~~ THEN REPLY #56525 /* ~«Позволь мне спросить кое о ком другом».~ */ GOTO 91
  IF ~~ THEN REPLY #56526 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56527 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56528 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #56529 /* ~*Теперь он НЕ ЖИВЕТ — только СУЩЕСТВУЕТ. Это не ОДНО И ТО ЖЕ*.~ */
  IF ~~ THEN REPLY #56530 /* ~«Позволь мне спросить кое о ком другом».~ */ GOTO 91
  IF ~~ THEN REPLY #56531 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56532 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56533 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from: 90.5 91.5
  SAY #56534 /* ~*МОДРОН не имеет особого значения. Он ОПРЕДЕЛЯЕТ справедливость, но НЕ ПОНИМАЕТ ее. Это нежелательно, но этого ДОСТАТОЧНО*.~ */
  IF ~~ THEN REPLY #56535 /* ~«Позволь мне спросить кое о ком другом».~ */ GOTO 91
  IF ~~ THEN REPLY #56536 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56537 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56538 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 90.7 90.8 91.7 91.8
  SAY #56539 /* ~*Я ВЕЙЛОР. Я — УБИЙЦА МИЛОСЕРДИЯ. Мои ДЕЯНИЯ едины с моим сердцем*.~ */
  IF ~~ THEN REPLY #56540 /* ~«Я не об этом спрашивал».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 121
  IF ~~ THEN REPLY #56541 /* ~«Позволь мне спросить кое о ком другом».~ */ GOTO 91
  IF ~~ THEN REPLY #56542 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56543 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56544 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #56545 /* ~Нависла тяжелая тишина... Однако Вейлор ее не нарушает. Его глаза-угольки встречаются с твоими, не мигая.~ */
  IF ~~ THEN REPLY #56546 /* ~«Я спрашивал, что ты видишь, глядя на себя. Что ты видишь, оценивая себя, Вейлор?»~ */ GOTO 122
  IF ~~ THEN REPLY #56547 /* ~«Позволь мне спросить кое о ком другом».~ */ GOTO 91
  IF ~~ THEN REPLY #56548 /* ~«Забудь, Вейлор. У меня есть другие вопросы к тебе...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56549 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56550 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #56551 /* ~*Я НЕ ОЦЕНИВАЮ себя. Я — УБИЙЦА МИЛОСЕРДИЯ. Мои ДЕЯНИЯ едины с моим СЕРДЦЕМ. Моя ВОЛЯ — ВОЛЯ СПРАВЕДЛИВОСТИ*.~ */
  IF ~~ THEN REPLY #56552 /* ~«Значит, ты вне справедливости?»~ */ GOTO 123
  IF ~~ THEN REPLY #56553 /* ~«Позволь мне спросить кое о ком другом».~ */ GOTO 91
  IF ~~ THEN REPLY #56554 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56555 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56556 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #56557 /* ~*Я СЛУЖУ справедливости. Я никогда не был ВНЕ ее. НИКОМУ не скрыться от СПРАВЕДЛИВОСТИ*.~ */
  IF ~~ THEN REPLY #56558 /* ~«Так погляди на себя, Вейлор. Что видят глаза справедливости, когда смотрят на ее служителя?»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 124
  IF ~~ THEN REPLY #56559 /* ~«Позволь мне спросить кое о ком другом».~ */ GOTO 91
  IF ~~ THEN REPLY #56560 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56561 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56562 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #56563 /* ~Угольки глаз ВЕЙЛОРА внезапно гаснут, и в воздухе нависает УЖАСНАЯ тишина.~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #56564 /* ~Ты уже начал сомневаться, загорятся ли снова глаза Вейлора, но тут что-то ВСПЫХИВАЕТ, и ты вынужден прикрыть глаза.~ */
  IF ~~ THEN REPLY #56565 /* ~«Вейлор...»~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #56566 /* ~*Я ВЕЙЛОР. Я — УБИЙЦА МИЛОСЕРДИЯ. Мои ДЕЯНИЯ едины с моим сердцем. Я — СЛУЖИТЕЛЬ СПРАВЕДЛИВОСТИ*.~ */
  IF ~  CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #56567 /* ~«Но... Вейлор, что ты УВИДЕЛ, когда?..»~ */ GOTO 128
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #56568 /* ~«Но... Вейлор, что ты УВИДЕЛ, когда?..»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 127
  IF ~~ THEN REPLY #56569 /* ~«Хорошо. Я хотел спросить о ком-то другом...»~ */ GOTO 91
  IF ~~ THEN REPLY #56570 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56571 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56572 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.1
  SAY #56573 /* ~Не успеваешь ты произнести это, как по твоему затылку пробегают мурашки, и слова застывают на кончике твоего языка... Ты понимаешь, что если продолжишь давить, то пробудишь в Вейлоре нечто... опасное.~ */
  IF ~~ THEN REPLY #56574 /* ~«Но... Вейлор, что ты УВИДЕЛ, заглянув внутрь?»~ */ GOTO 128
  IF ~~ THEN REPLY #56575 /* ~«Неважно, Вейлор. Я хотел спросить о ком-то другом...»~ */ GOTO 91
  IF ~~ THEN REPLY #56576 /* ~«Ладно, Вейлор. У меня к тебе другие вопросы...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56577 /* ~«Тут наши пути расходятся, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56578 /* ~«Неважно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 128 // from: 126.0 127.0
  SAY #56579 /* ~*Я НЕ НАШЕЛ ЖЕЛАЕМОГО. ГДЕ БЫ НЕ БЫЛО МИЛОСЕРДИЕ, Я УНИЧТОЖУ ЕГО. ГДЕ БЫ СОСТРАДАНИЕ НЕ ОТРАВЛЯЛО СЕРДЦА, Я ВЫПУЩУ ЕГО ВМЕСТЕ С КРОВЬЮ ЕГО ЖЕРТВЫ. ГДЕ БЫ НЕ ЗАТАИЛИСЬ ЛЖЕЦЫ И ПРЕДАТЕЛИ ИСТИНЫ, Я ОТВЕЧУ НА ИХ ЛОЖЬ КЛИНКОМ ПРАВОСУДИЯ*.~ */
  IF ~~ THEN REPLY #56580 /* ~«Но я *спрашивал*...»~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 103.2 128.0
  SAY #56581 /* ~*КТО ТЫ ТАКОЙ, ЧТОБЫ ОБСУЖДАТЬ СЛУГУ СПРАВЕДЛИВОСТИ? ТЫ НИЧТО, ТЫ ВСЕГО ЛИШЬ ОБОЛОЧКА. А ТЕПЕРЬ Я ВЗГЛЯНУ В ТВОЕ СЕРДЦЕ. ОБНАРУЖИМ ЛИ МЫ В НЕМ ЖЕЛАЕМОЕ?*~ */
  IF ~~ THEN REPLY #56582 /* ~«Но...»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 90.9 91.9 129.0
  SAY #56583 /* ~Когда горящий взгляд Вейлора падает на тебя, ты чувствуешь, как он прорывается сквозь твою кожу, покрывая ее волдырями, а затем срывая ее. Однако боли нет — только головокружение и чувство *погружения*. Пока его глаза впиваются в тебя, ты чувствуешь прилив воспоминаний...~ */
  IF ~~ THEN REPLY #56584 /* ~Уступить наплыву воспоминаний.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
PlaySoundNotRanged("SPTR_01")
~ GOTO 131
  IF ~~ THEN REPLY #56585 /* ~Отринуть воспоминание, попытаться остаться в сознании.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #56586 /* ~Горящие красные глаза ярко вспыхивают, почти ослепляя. Неожиданно ты ПРЕДСТАЕШЬ перед Вейлором, но там, где раньше была пустота, теперь находится *плоть*: чернокожий мужчина со шрамами глядит из-под шлема, его глаза горят, когда он разглядывает тебя. Его доспехи сияют, его лицо сковала ярость. Он *пришел* за тобой.~ */
  IF ~~ THEN REPLY #56587 /* ~Эхо: «Ты нашел меня, Вейлор. Ты прошел долгий путь... Наверное, найти меня было непросто».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 132
  IF ~~ THEN REPLY #56588 /* ~Отринуть воспоминание, попытаться остаться в сознании.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #56589 /* ~«Справедливость привела меня к тебе. Там, где ты проходил, ты оставлял след СТРАДАНИЙ» Голос мужчины грохочет, но без эха, совсем не так, как призрачный голос Вейлора — в нем только злоба и ярость, плоть и кровь... Он опасен, но это не призрак: он всего лишь человек, и ты победил немало таких. «Я прослежу за тем, чтобы ты предстал перед судом Сигила и понес справедливое наказание. Если ты отказываешься принять это, только СКАЖИ, и я сам совершу над тобой суд».~ */
  IF ~~ THEN REPLY #56590 /* ~Эхо: «Я отказываюсь. Суди меня... А затем я совершу суд над тобой».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 133
  IF ~~ THEN REPLY #56591 /* ~Отринуть воспоминание, попытаться остаться в сознании.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #56592 /* ~«Надо МНОЙ?» Глаза Вейлора *вспыхивают*; он крепко хватается за топор, мускулы на его шее и руках натягиваются как струны. Она начинает размахивать топором, медленно и угрожающе. «Ты не имеешь ПРАВА судить меня».~ */
  IF ~~ THEN REPLY #56593 /* ~Эхо: «Имею, Вейлор, потому что знаю твое сердце, и моя сила дает мне право судить тебя. Но я не стану судить тебя сейчас. Ты должен остаться в этой клетке до того дня, как я освобожу тебя, позволив снова гулять по планам».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 134
  IF ~~ THEN REPLY #56594 /* ~Отринуть воспоминание, попытаться остаться в сознании.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #56595 /* ~Когда твоя инкарнация произносит слово «клетка», взгляд Вейлора внезапно переходит с тебя на стены вокруг него: это стены тюремной камеры Проклятого, где ты нашел его... много лет назад. *Много* лет — для человека хватило бы, чтобы умереть много раз. Или, возможно, только один раз. ~ */
  IF ~~ THEN REPLY #56596 /* ~Эхо: «Вейлор, я избегал тебя вплоть до этого момента... зачем, по-твоему, я согласился встретиться с тобой *здесь*? Ты думал, что я сдаюсь? Или хотел сразиться со мной? Нет... Вейлор, это Проклятый, привратный город. Он граничит с *тюремным* планом Карцери, где даже *богов* держат в пленниках. Ты могуч, Вейлор, но энергия этого места позволяет заточить здесь даже самых могущественных».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 135
  IF ~~ THEN REPLY #56597 /* ~Отринуть воспоминание, попытаться остаться в сознании.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #56598 /* ~Вейлор оборачивается, огонь в его глазах поугас. «Это *измена*».~ */
  IF ~~ THEN REPLY #56599 /* ~Эхо: «Измена течет по этому месту, как по венам, и именно предательство дало мне силу для этого заклинания. Вот почему мне пришлось встретиться с тобой здесь, в Проклятом. Я смогу покинуть эту камеру, Вейлор, но ты не сможешь, пока я не приду за тобой. Твой крестовый поход во имя справедливости действительно впечатляет, но его забудут. Быть может, со временем даже справедливость позабудет о тебе».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 136
  IF ~~ THEN REPLY #56600 /* ~Отринуть воспоминание, попытаться остаться в сознании.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #56601 /* ~«Ты и так зашел слишком далеко, отказывая себе в свершении справедливости, но ты лишаешь меня моего *крестового похода*...»~ */
  IF ~~ THEN REPLY #56602 /* ~Эхо: «Я знаю о твоей миссии. Но ей придется подождать до тех пор, как я закончу *свою* миссию, и это уже второй раз, когда ты нашел меня и попытался судить. Я не позволю случиться этому еще раз».~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 137
  IF ~~ THEN REPLY #56603 /* ~Отринуть воспоминание, попытаться остаться в сознании.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #56604 /* ~Вейлор не отвечает: еще никогда твои слова не звучали так ОКОНЧАТЕЛЬНО. Ты зачитываешь ему ужасный приговор, не имеющий ничего общего со справедливостью.~ */
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #56605 /* ~Эхо: «Я бессмертен, Вейлор, но ты тоже... странный. Справедливость *зажгла* тебя, и она может оказаться сильнее того, что сохраняет меня. Мужайся — я не хочу, чтобы ты умер... возможно, когда-нибудь мне понадобится кто-то, способный убить меня. И потому ты останешься здесь, пока я не приду за тобой».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetAnimState("Vhail",ANIM_MIMESTAND)
SetGlobal("Memory_Caging_Vhailor","GLOBAL",1)
GiveExperience(Protagonist,90000)
~ JOURNAL #56607 /* ~У меня было старое воспоминание... воспоминание о том, как я заключил Вейлора в камеру под Проклятым. Он пришел туда за мной, а я специально подготовил камеру, чтобы захватить его и чтобы он больше не смог встать у меня на пути. Не считая предательской сути этого события, слова моего предыдущего воплощения прозвучали странно: он сказал, что верит в то, что Вейлор способен *убить* меня, пока его топор направляет справедливость. Почему-то мне кажется, что это правда. Но почему тогда воплощение просто не убило его? Была ли причина оставлять его в живых?~ */ GOTO 138
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #56606 /* ~Эхо: «Я бессмертен, Вейлор, но ты тоже... странный. Справедливость *зажгла* тебя, и она может оказаться сильнее того, что сохраняет меня. Мужайся — я не хочу, чтобы ты умер... возможно, когда-нибудь мне понадобится кто-то, способный убить меня. И потому ты останешься здесь, пока я не приду за тобой».~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 130.1 131.1 132.1 133.1 134.1 135.1 136.1 137.0 137.1
  SAY #56608 /* ~Воспоминание угасает, скрываясь во тьме, и вот ты снова оказываешься перед призрачным Вейлором. Его лицо в шлеме лишено плоти — на его месте только два горящих уголька.~ */
  IF ~~ THEN REPLY #56609 /* ~«Вейлор?..»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #56610 /* ~*Тебя будут СУДИТЬ*.~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #56611 /* ~«Хорошо...»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 140
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #56612 /* ~«Хорошо...»~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 141
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #56614 /* ~Пылающий взор Вейлора падает на тебя, и вдруг у тебя появляется странное ощущение разделения, как будто ты отступил на шаг за пределы своего тела. В твоем черепе слышится тихий шепот, и внезапно ты осознаешь, что вне зависимости от того, что *намеревается* увидеть Вейлор, он увидит лишь то, что ты ему ПОКАЖЕШЬ. Ты понимаешь, что он клюнет даже на простейший обман: ты для него как закрытая книга.~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 139.1 140.0
  SAY #56618 /* ~*Ты когда-нибудь кого-то УБИВАЛ?*~ */
  IF ~  GlobalGT("Murder","GLOBAL",0)
~ THEN REPLY #56619 /* ~Ложь: «Нет».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_3","GLOBALLaw",-1)
~ GOTO 147
  IF ~  Global("Murder","GLOBAL",0)
~ THEN REPLY #56620 /* ~Правда: «Нет».~ */ GOTO 147
  IF ~  GlobalGT("Murder","GLOBAL",0)
~ THEN REPLY #56621 /* ~Правда: «Да».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_3","GLOBALLaw",2)
~ GOTO 149
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #56622 /* ~Правда: «Да... Своей рукой, но это был не я, Вейлор. В одном из моих предыдущих воплощений я убил Фина Эндли из-за того, что он знал».~ */ GOTO 149
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #56623 /* ~Правда: «Вейлор, я думаю, что из-за меня погибли тысячи... возможно, десятки тысяч... по всем планам. Колонна Черепов сказала, что когда я умираю, вместо меня умирает другой».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_3","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56624 /* ~«Я не буду отвечать на твой вопрос, Вейлор, и не позволю судить меня».~ */ GOTO 142
END

IF ~~ THEN BEGIN 142 // from: 141.5 147.5 148.15
  SAY #56625 /* ~*Тот, кто не ОТВЕЧАЕТ перед лицом СПРАВЕДЛИВОСТИ, будет НАКАЗАН*.~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56626 /* ~«Ну так вперед, Вейлор, готовься умереть второй смертью...»~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56627 /* ~«Ну так вперед, Вейлор, готовься умереть второй смертью...»~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56628 /* ~«Но я *уже* был наказан, Вейлор».~ */ GOTO 143
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #56629 /* ~«Но я *уже* был наказан, Вейлор».~ */ GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.2 142.3 149.2 149.3
  SAY #56630 /* ~Вейлор не шевелится. *Я хочу УСЛЫШАТЬ о твоем наказании*.~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56631 /* ~«Забудь, Вейлор. Мне надоело урезонивать тебя. Предпочитаю уладить это дело кровопролитием».~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56632 /* ~«Забудь, Вейлор. Мне надоело урезонивать тебя. Предпочитаю уладить это дело кровопролитием».~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #56633 /* ~«Каждый раз, когда я умираю, я теряю память. Я понятия не имею, кто я и кем я БЫЛ. На мне тысячи шрамов — на теле и в душе — от ран, которые я не помню. Смерть отказала мне, и, боюсь, я никогда не обрету покой».~ */ GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.2
  SAY #56634 /* ~Вейлор смотрит на тебя; его глаза ярко горят. Ты уже ощущал на себе когда-то подобный *взгляд*, раздирающий и снимающий кожу, как будто Вейлор вскрывает тебя. По тебе прокатывается волна тошноты, ощущение *погружения*, и на этот раз оно глубже... Твой взгляд заволакивает темнота...~ */
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY #56635 /* ~*Ты был НАКАЗАН. На тебе лежит отметина СПРАВЕДЛИВОСТИ. Я ВИЖУ ее на твоей КОЖЕ*.~ */
  IF ~~ THEN REPLY #56636 /* ~«Тогда...»~ */ GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #56637 /* ~*ЗНАЙ: МНОГОЕ в тебе НЕВОЗМОЖНО увидеть. Я буду НАБЛЮДАТЬ за тобой. Ты был НАКАЗАН. Но это не убережет тебя от БУДУЩИХ наказаний за новые ПРЕСТУПЛЕНИЯ*.~ */
  IF ~~ THEN REPLY #56638 /* ~«Хорошо, Вейлор, будем считать эту тему закрытой... пока. У меня есть вопросы к тебе...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56639 /* ~«Тогда здесь нам следует расстаться, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56640 /* ~«Понятно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 147 // from: 141.0 141.1
  SAY #56641 /* ~*Ты когда-нибудь поступал с кем-то НЕСПРАВЕДЛИВО?*~ */
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #56642 /* ~Ложь: «Нет».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_4","GLOBALLaw",-1)
~ GOTO 148
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #56643 /* ~Правда: «Нет».~ */ GOTO 148
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #56644 /* ~Правда: «Да».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_4","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56645 /* ~Правда: «Да... Это было сделано моей рукой, но это был не я, Вейлор. Мое тело принадлежало другому человеку».~ */ GOTO 149
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #56646 /* ~Правда: «Вейлор, я думаю, что из-за меня погибли тысячи... возможно, десятки тысяч... по всем планам. Колонна Черепов сказала, что когда я умираю, вместо меня умирает другой. О большей несправедливости мне не приходилось слышать».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_4","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56647 /* ~«Я не буду отвечать на твой вопрос, Вейлор, и не позволю судить меня».~ */ GOTO 142
END

IF ~~ THEN BEGIN 148 // from: 147.0 147.1
  SAY #56648 /* ~*Ты причинял кому-либо ЗЛО?*~ */
  IF ~~ THEN REPLY #56649 /* ~Ложь: «Нет. Я и мухи не обидел за все свои жизни».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_5","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 150
  IF ~~ THEN REPLY #56650 /* ~Правда: «Да... многие пострадали от моей руки, Вейлор. Но мое тело принадлежало другому человеку».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("AR1900_Visited","GLOBAL",1)
~ THEN REPLY #56651 /* ~Правда: «Я бросил вызов Леди Боли, и она заточила меня в лабиринт».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #56652 /* ~Правда: «Одно из моих предыдущих воплощений обмануло женщину по имени Дейонарра, сказав, что любит ее. Из-за этих слов она последовала за ним к собственной смерти».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #56653 /* ~Правда: «Думаю, из-за меня умерла Дейонарра, единственная дочь адвоката Яниса».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #56654 /* ~Правда: «Из-за меня умерла Дейонарра, единственная дочь адвоката Яниса».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #56655 /* ~Правда: «Мое прошлое воплощение заставило одного человека пообещать, поклясться, что он будет служить мне до конца моей жизни, при этом я знал, что я бессмертен. Я украл у него жизнь, чтобы он мог служить мне. Его зовут Даккон».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #56656 /* ~Правда: «Я продал в рабство девушку, Анну».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #56657 /* ~Правда: «Я продал в рабство своего товарища, Даккона».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #56658 /* ~Правда: «Я продал в рабство своего товарища, Нордома».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #56659 /* ~Правда: «Одно из моих предыдущих воплощений научило Игнуса причинять другим боль. Из-за этого пострадал и он сам, и другие».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #56660 /* ~Правда: «Я предал Морта и бросил его в Колонне Черепов».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #56661 /* ~Правда: «Я причинил зло самой мультивселенной... Я освободил из осадной башни опасное существо по имени Убежденный Металл».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Chaotic_Fhjull_1","GLOBAL",1)
~ THEN REPLY #56662 /* ~Правда: «Я сдал Фьюла Колонне Черепов для собственной выгоды».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #56663 /* ~Правда: «Я причинил зло тебе, Вейлор. Это я заточил тебя в подземельях Проклятого».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~~ THEN REPLY #56664 /* ~«Я не буду отвечать на твой вопрос, Вейлор, и не позволю судить меня».~ */ GOTO 142
END

IF ~~ THEN BEGIN 149 // from: 141.2 141.3 141.4 147.2 147.3 147.4 148.1 148.2 148.3 148.4 148.5 148.6 148.7 148.8 148.9 148.10 148.11 148.12 148.13 148.14
  SAY #56665 /* ~*Ты ПРИЗНАЛСЯ в преступлении*. Глаза Вейлора в глубине его шлема пылают, и на мгновение ты видишь ужасную *силу*, скрытую в его призрачных доспехах. *ВИНОВНЫЙ будет НАКАЗАН*.~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56666 /* ~«Ну так вперед, Вейлор, готовься умереть второй смертью...»~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56667 /* ~«Ну так вперед, Вейлор, готовься умереть второй смертью...»~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56668 /* ~«Но я *уже* был наказан, Вейлор».~ */ GOTO 143
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #56669 /* ~«Но я *уже* был наказан, Вейлор».~ */ GOTO 143
END

IF ~~ THEN BEGIN 150 // from: 148.0
  SAY #56670 /* ~Вейлор смотрит на тебя; его глаза ярко горят. Ты уже ощущал на себе когда-то подобный *взгляд*, раздирающий и снимающий кожу, как будто Вейлор вскрывает тебя. По тебе прокатывается волна тошноты, ощущение *погружения*, и на этот раз оно глубже... Твой взгляд заволакивает темнота...~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #56671 /* ~*ЗНАЙ: МНОГОЕ в тебе НЕВОЗМОЖНО увидеть. Я буду НАБЛЮДАТЬ за тобой. Ты НЕ СКРОЕШЬСЯ от наказания за грядущие ПРЕСТУПЛЕНИЯ*.~ */
  IF ~~ THEN REPLY #56672 /* ~«Хорошо, Вейлор, будем считать эту тему закрытой... пока. У меня есть вопросы к тебе...»~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56673 /* ~«Тогда здесь нам следует расстаться, Вейлор. Прощай».~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56674 /* ~«Понятно, Вейлор. Продолжим путь».~ */ EXIT
END

IF ~~ THEN BEGIN 152 // from: 77.0 77.1
  SAY #56675 /* ~Твои слова отдаются эхом, набирая силу, пока ты их произносишь. При этом угольки в глазах Вейлора вспыхивают, а затем гаснут. Его топор и металлические латы с лязгом падают на землю. Однако, коснувшись земли, они поднимают облако пыли: на твоих глазах частички пепла и ржавчины слетают с металла, латы с топором стареют, распадаются и исчезают. Остается только несколько выщербленных металлических пластин, могильные камни, подтверждающие существование Вейлора.~ */
  IF ~~ THEN REPLY #56676 /* ~«Покойся с миром, Вейлор».~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #56883 /* ~*Глупость — признак СЛАБОСТИ. Нет НЕСПРАВЕДЛИВОСТИ в том, чтобы из корыстолюбца ИЗВЛЕКАЛИ пользу*.~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 42
END

IF ~~ THEN BEGIN 154 // from:
  SAY #56892 /* ~*СПРАВЕДЛИВОСТЬ приходит даже к НЕЧИСТЫМ*.~ */
  IF ~~ THEN REPLY #56894 /* ~«Да. Пошли».~ */ EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY #57391 /* ~Пылая взглядом, внезапно вперед выступает Вейлор. *Это НЕ СПРАВЕДЛИВОСТЬ, а всего лишь детская *пародия* на нее. Казни НЕ БУДЕТ, 'магистрат'... если только твои действия не принудят меня послужить Ей собственноручно*.~ */
  IF ~~ THEN EXTERN ~DJUDGE~ 2
END

IF ~~ THEN BEGIN 156 // from:
  SAY #57392 /* ~*В дальнейшем тебе стоит вести себя более подобающим образом, магистрат. Не позволь иным слухам достигнуть моих ушей... иначе я ВЕРНУСЬ за тобой, пусть мне придется пройти даже тысячу лиг. Стремись сохранять Справедливость в своем сердце — и будешь в безопасности. Прощай*.~ */
  IF ~~ THEN REPLY #57393 /* ~«Спасибо, Вейлор. Прощай, магистрат».~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #63704 /* ~*Правосудие НЕ СЛЕПО. Я — его глаза*.~ [VHA255] */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("Fortress_Vhailor","GLOBAL",3)
~ THEN BEGIN 158 // from:
  SAY #68222 /* ~Легкое касание твоей силы искрой проскакивает сквозь доспехи Вейлора. Они взмывают вверх, обретая очертания человека, их носящего. Когда пластины встают на место, внутри шлема вспыхивают два огонька.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68223 /* ~«Вейлор?»~ */ DO ~SetGlobal("Fortress_Vhailor","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 159
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68398 /* ~ВОССТАНЬ, ВЕЙЛОР.~ */ GOTO 164
END

IF ~~ THEN BEGIN 159 // from: 158.0
  SAY #68225 /* ~*Я ПРОБУДИЛСЯ*.~ [VHA002] */
  IF ~~ THEN REPLY #68226 /* ~«Вейлор, послушай: была совершена большая несправедливость. Когда я умираю, кто-нибудь другой на планах умирает вместо меня. Это случалось сотни, тысячи, а может и сотни тысяч раз. Мультивселенная умирает, чтобы я продолжал жить».~ */ DO ~PermanentStatChange("Vhail",STR,RAISE,3)
PermanentStatChange("Vhail",DEX,SET,25)
PermanentStatChange("Vhail",CON,SET,25)
GiveExperience("Vhail",2000000)
~ GOTO 160
  IF ~~ THEN REPLY #68263 /* ~«Вейлор, мне нужна твоя помощь: моя смертность хочет нас убить».~ */ GOTO 163
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #68227 /* ~Когда ты произносишь эти слова, Вейлор как будто *разбухает*, становится крупнее. Теперь он скорее сила, чем доспехи. ~ */
  IF ~~ THEN REPLY #68228 /* ~«Я знаю о своих преступлениях и пытаюсь предотвратить их, но единственное существо, способное положить край этой несправедливости, *отказывается* делать это из-за своих эгоистичных побуждений».~ */ DO ~FullHealEx("Vhail")
~ GOTO 161
END

IF ~~ THEN BEGIN 161 // from: 160.0
  SAY #68229 /* ~*ТЕПЕРЬ ТЫ СРЕДИ ОСУЖДЕННЫХ. КАК И ТОТ, ДРУГОЙ. Я БУДУ НАБЛЮДАТЬ, КАК ВАШИ ДУШИ РАСКОЛЮТСЯ ПОД КЛИНКОМ ПРАВОСУДИЯ*.~ */
  IF ~~ THEN REPLY #68230 /* ~«Хорошо, Вейлор, но сперва нужно позаботиться о том, другом».~ */ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0
  SAY #68231 /* ~*ДА БУДЕТ ТАК. ЗАТЕМ Я ВЕРНУСЬ К ТЕБЕ*.~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68232 /* ~«Хорошо, Вейлор».~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68233 /* ~«Хорошо, Вейлор».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68244 /* ~«Хорошо, Вейлор».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 163 // from: 159.1
  SAY #68264 /* ~*ТОГДА ТВОЯ СМЕРТНОСТЬ УМРЕТ*.~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68265 /* ~«Хорошо, Вейлор...»~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68266 /* ~«Хорошо, Вейлор...»~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68267 /* ~«Хорошо, Вейлор...»~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 164 // from: 158.1
  SAY #68399 /* ~Шлем Вейлора поворачивается к тебе, его глаза пульсируют как два сердца.~ */
  IF ~~ THEN REPLY #68400 /* ~ВЕЙЛОР, ДЕСНИЦА ПРАВОСУДИЯ СТРЕМИТЕЛЬНА, И СКОРО ПРИДЕТ ЗА МНОЙ. Я БОЛЬШЕ НЕ СОБИРАЮСЬ ЗДЕСЬ ОСТАВАТЬСЯ. ЕСЛИ ХОЧЕШЬ, Я ВЕРНУ ТЕБЯ В СИГИЛ.~ */ GOTO 165
END

IF ~~ THEN BEGIN 165 // from: 164.0
  SAY #68401 /* ~*Какое ПРЕСТУПЛЕНИЕ навлекло на тебя ПРАВОСУДИЕ?*~ */
  IF ~~ THEN REPLY #68402 /* ~МНОГИЕ УМЕРЛИ, ЧТОБЫ Я ПРОДОЛЖИЛ ЖИТЬ, ВЕЙЛОР. ПРЕСТУПЛЕНИЕ ВЕЛИКО. НО ВРЕМЯ И СУДЬБА ГОНЯТСЯ ЗА МНОЙ ДАЖЕ СЕЙЧАС.~ */ GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #68403 /* ~*ПУСТЬ мои СЛОВА ведут тебя. СПРАВЕДЛИВОСТЬ — учитель. В своем НАКАЗАНИИ найди СИЛУ. Пройдя через наказание, ты обретешь СОВЕРШЕНСТВО*.~ */
  IF ~~ THEN REPLY #68404 /* ~МОЖЕТ, И ТАК, ВЕЙЛОР. Я ОБДУМАЮ ТВОИ СЛОВА.~ */ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #68405 /* ~*ЗНАЙ, что если даже ты избежишь своего приговора, я разыщу тебя, БЕЗЫМЯННЫЙ*.~ */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168 // from: 167.0
  SAY #68406 /* ~*Десницу правосудия не остановить*.~ [VHA010] */
  IF ~~ THEN REPLY #68407 /* ~ПОЖАЛУЙ, МЫ БОЛЬШЕ НЕ ВСТРЕТИМСЯ, ВЕЙЛОР. КАКОЕ-ТО ВРЕМЯ Я ПОЖИВУ В ЗАЛАХ СПРАВЕДЛИВОСТИ, И ЭТО ВРЕМЯ НЕ ИСЧИСЛЯЕТСЯ ГОДАМИ. ПРОЩАЙ.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF WEIGHT #4 ~  Global("Fortress_Vhailor","GLOBAL",4)
~ THEN BEGIN 169 // from:
  SAY #68420 /* ~*Десницу правосудия не остановить*.~ [VHA010] */
  IF ~~ THEN REPLY #68421 /* ~«Не убавляй натиск, Вейлор. Не дай ему шанса сосредоточиться».~ */ EXIT
END

IF ~~ THEN BEGIN 170 // from:
  SAY #106513 /* ~Вейлор отворачивается от трупа Триаса и смотрит тебе в лицо. *Ты МИЛОСЕРДЕН и СЛАБ. ЗАКАЛИ свое СЕРДЦЕ, прежде чем болезнь не РАСПРОСТРАНИЛАСЬ*.~ [VHA013] */
  IF ~~ THEN REPLY #62707 /* ~«Мы поговорим об этом в другой раз. Пошли».~ */ EXIT
END
