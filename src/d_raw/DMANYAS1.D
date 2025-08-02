// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMANYAS1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMANYAS1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #10 /* Triggers after states #: 15 14 12 11 9 25 24 8 7 13 even though they appear after this state */
~  Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2955 /* ~Ты ошеломлен звуком сотен голосов, говорящих в унисон в твоей голове: у них сила и настойчивость, присущая попрошайкам. «ГОВОРИ, ЗАЧЕМ ПРИШЕЛ, ДВУНОГИЙ. ОТВЕЧАЙ БЫСТРО И ПРАВДИВО. ТЫ В ЗАЛАХ МНОГОЕДИНОГО. ТЫ НЕ УЙДЕШЬ, ПОКА МЫ ЭТОГО НЕ ПОЗВОЛИМ. ЗНАЙ, ЧТО МЫ МОЖЕМ ЧИТАТЬ ТВОИ МЫСЛИ, И ЧУВСТВУЕМ ЛОЖЬ».~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #2956 /* ~«Кто вы?»~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38655 /* ~«Кто вы?»~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38656 /* ~«Кто вы?»~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38657 /* ~«Кто вы?»~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38658 /* ~«Что это за место?»~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38659 /* ~«Что это за место?»~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38660 /* ~«Что это за место?»~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38661 /* ~«Что это за место?»~ */ GOTO 4
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38662 /* ~«Я подумал, что вам было бы интересно узнать, Безмолвный король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38663 /* ~«Я подумал, что вам было бы интересно узнать, Безмолвный король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38664 /* ~Блеф: «Я подумал, что вам было бы интересно узнать, что Безмолвный Король слишком силен, чтобы нападать на него. Держитесь подальше от Мертвых Народов, иначе трупы уничтожат вас».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38665 /* ~«Я пришел увидеться с тобой, Многоединый».~ */ GOTO 27
  IF ~~ THEN REPLY #38666 /* ~«Я попал сюда случайно».~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38667 /* ~«Если вы можете читать мои мысли, зачем мне рассказывать о моих целях?»~ */ GOTO 29
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.4
  SAY #38668 /* ~«МЫ ГЛАЗА В ТЕМНОТЕ. МЫ МНОЖЕСТВО, МЫСЛЯЩЕЕ КАК ОДИН. МЫ НЕ ОТВЕЧАЕМ НА ТВОИ ВОПРОСЫ. ТЫ ОТВЕТИШЬ НА НАШИ. ЧТО ТЫ ДЕЛАЕШЬ ЗДЕСЬ, ТАК ДАЛЕКО ОТ СВЕТЛЫХ ЛЮДСКИХ КОРИДОРОВ?»~ */
  IF ~~ THEN EXTERN ~DANNAH~ 188
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.5
  SAY #38669 /* ~«МЫ ГЛАЗА В ТЕМНОТЕ. МЫ МНОЖЕСТВО, МЫСЛЯЩЕЕ КАК ОДИН. МЫ НЕ ОТВЕЧАЕМ НА ТВОИ ВОПРОСЫ. ТЫ ОТВЕТИШЬ НА НАШИ. ЧТО ТЫ ДЕЛАЕШЬ ЗДЕСЬ, ТАК ДАЛЕКО ОТ СВЕТЛЫХ ЛЮДСКИХ КОРИДОРОВ?»~ */
  IF ~~ THEN EXTERN ~DMORTE~ 404
END

IF ~~ THEN BEGIN 3 // from: 0.2 0.6
  SAY #38670 /* ~«МЫ ГЛАЗА В ТЕМНОТЕ. МЫ МНОЖЕСТВО, МЫСЛЯЩЕЕ КАК ОДИН. МЫ НЕ ОТВЕЧАЕМ НА ТВОИ ВОПРОСЫ. ТЫ ОТВЕТИШЬ НА НАШИ. ЧТО ТЫ ДЕЛАЕШЬ ЗДЕСЬ, ТАК ДАЛЕКО ОТ СВЕТЛЫХ ЛЮДСКИХ КОРИДОРОВ?»~ */
  IF ~~ THEN EXTERN ~DANNAH~ 189
END

IF ~~ THEN BEGIN 4 // from: 0.3 0.7
  SAY #38671 /* ~«МЫ ГЛАЗА В ТЕМНОТЕ. МЫ МНОЖЕСТВО, МЫСЛЯЩЕЕ КАК ОДИН. МЫ НЕ ОТВЕЧАЕМ НА ТВОИ ВОПРОСЫ. ТЫ ОТВЕТИШЬ НА НАШИ. ГОВОРИ, ЧТО У ТЕБЯ НА УМЕ, И ПОМНИ, ЧТО МЫ СЛЫШИМ, КОГДА ТЫ ЛЖЕШЬ. ЧТО ТЫ ДЕЛАЕШЬ ЗДЕСЬ, ТАК ДАЛЕКО ОТ СВЕТЛЫХ ЛЮДСКИХ КОРИДОРОВ?»~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38672 /* ~«Я подумал, что вам было бы интересно узнать, Безмолвный король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38673 /* ~«Я подумал, что вам было бы интересно узнать, Безмолвный король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38674 /* ~Блеф: «Я подумал, что вам будет интересно узнать, что Безмолвный Король слишком силен, чтобы нападать на него. Держитесь подальше от Мертвых Народов, иначе трупы уничтожат вас».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38675 /* ~«Я пришел увидеться с тобой, Многоединый».~ */ GOTO 27
  IF ~~ THEN REPLY #38676 /* ~«Я попал сюда случайно».~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38677 /* ~«Если вы можете читать мои мысли, зачем мне рассказывать о моих целях?»~ */ GOTO 29
END

IF ~~ THEN BEGIN 5 // from:
  SAY #38678 /* ~Голоса в твоей голове, хотя они и беззвучны, звучат просто оглушительно: «МЫ ПРИКАЗЫВАЕМ ТЕМ, КТО С ТОБОЙ, ЗАМОЛКНУТЬ. ТЫ В ЛОГОВЕ МЫСЛИ, ГДЕ ПРАВИТ МНОГОЕДИНЫЙ. ГОВОРИ, ЧТО У ТЕБЯ НА УМЕ, И ПОМНИ, ЧТО МЫ СЛЫШИМ ТВОЮ ЛОЖЬ. ЧЕГО ТЕБЕ НУЖНО В ЭТИХ ТЕМНЫХ ТОННЕЛЯХ?»~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38679 /* ~«Я подумал, что вам будет интересно узнать, что Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38680 /* ~«Я подумал, что вам было бы интересно узнать, Безмолвный король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38681 /* ~Блеф: «Я подумал, что вам будет интересно узнать, что Безмолвный Король слишком силен, чтобы нападать на него. Держитесь подальше от Мертвых Народов, иначе трупы уничтожат вас».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38682 /* ~«Я пришел увидеться с тобой, Многоединый».~ */ GOTO 27
  IF ~~ THEN REPLY #38683 /* ~«Я попал сюда случайно».~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38684 /* ~«Если вы можете читать мои мысли, зачем мне рассказывать о моих целях?»~ */ GOTO 29
END

IF ~~ THEN BEGIN 6 // from: 0.8 0.9 4.0 4.1 5.0 5.1 8.0 8.1
  SAY #38685 /* ~«СЧИТАЙ, ЧТО МЕРТВЕЦЫ УЖЕ МЕРТВЫ. ИХ БЕСПОМОЩНЫЙ КОРОЛЬ БОЛЬШЕ НЕ СТОИТ У НАС НА ПУТИ. ТЫ ОКАЗАЛСЯ ПОЛЕЗНЫМ. ЗА ЭТИ СВЕДЕНИЯ МЫ РАЗРУШИМ ПРЕГРАДЫ В ТВОЕМ РАЗУМЕ И РАСКРОЕМ ТЕБЯ СЕБЕ САМОГО. ПРИГОТОВЬСЯ К ОТКРОВЕНИЮ».~ */
  IF ~~ THEN REPLY #38686 /* ~«Подождите! Не сейчас!»~ */ DO ~AddexperienceParty(7500)
SetGlobal("CR_Vic","GLOBAL",6)
~ JOURNAL #38208 /* ~Я сообщил Многоединому, что Безмолвный Король — всего лишь бессильный мертвый скелет. Крысы пообещали захватить власть над катакомбами под Сигилом.~ */ GOTO 16
  IF ~~ THEN REPLY #38687 /* ~«Я готов».~ */ DO ~AddexperienceParty(7500)
SetGlobal("CR_Vic","GLOBAL",6)
~ JOURNAL #38208 /* ~Я сообщил Многоединому, что Безмолвный Король — всего лишь бессильный мертвый скелет. Крысы пообещали захватить власть над катакомбами под Сигилом.~ */ GOTO 16
END

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  Global("CR_Vic","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #38690 /* ~«ТЫ ОСМЕЛИЛСЯ ПОКАЗАТЬСЯ ЗДЕСЬ СНОВА? ДВУНОГИЙ, ТЫ БЕЗРАССУДЕН. ГОТОВЬСЯ».~ */
  IF ~~ THEN REPLY #38691 /* ~Сражаться.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("CR_Vic","GLOBAL",0)
Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 8 // from: 35.9 36.7 37.7 40.2
  SAY #38692 /* ~«РАССКАЖИ НАМ, ЧТО ТЫ ЗНАЕШЬ, ДВУНОГИЙ».~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38693 /* ~«Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38694 /* ~«Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38695 /* ~Блеф: «Безмолвный Король слишком силен, чтобы нападать на него. Держитесь подальше от Мертвых Народов, иначе трупы уничтожат вас».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38696 /* ~«Пока мне нечего сказать».~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66547 /* ~«Упыри озверели и разбрелись по Мертвым Народам».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF WEIGHT #5 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("Ghoul_Attack","GLOBAL",1)
Global("Ghoul_Attack","GLOBAL",1)
GlobalGT("CR_Vic","GLOBAL",0)
!Global("CR_Vic","GLOBAL",2)
GlobalLT("CR_Vic","GLOBAL",5)
~ THEN BEGIN 9 // from: 8.4 24.4 25.4
  SAY #38697 /* ~«УПЫРИ СЛИШКОМ СИЛЬНЫ, ДАЖЕ ДЛЯ МОИХ СЛУГ-КРЫСООБОРОТНЕЙ. ТВОЯ МИССИЯ ПРОВАЛЕНА. ТВОИ УСЛУГИ БОЛЬШЕ НЕ НУЖНЫ. УХОДИ СЕЙЧАС ЖЕ, ИЛИ ПОСТРАДАЕШЬ».~ */
  IF ~~ THEN REPLY #38698 /* ~«И что, вы хотите вот просто так от меня избавиться?»~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #38699 /* ~«Тогда прощайте». ~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
AddexperienceParty(7500)
SetGlobal("Mao_warn","GLOBAL",1)
~ JOURNAL #38207 /* ~Упыри разбрелись по Мертвым Народам, и это осложняет закрепление в этом районе черепных крыс. Они прогнали меня, предупредив об ужасных последствиях моего возвращения.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 12.0 14.0 26.0
  SAY #38789 /* ~«ДА. РАЗ УЖ НАМ НЕ НУЖНО ТРАТИТЬ СВОИ СИЛЫ НА БЕЗМОЛВНОГО КОРОЛЯ, СИЛ У НАС БОЛЕЕ ЧЕМ ДОСТАТОЧНО, ЧТОБЫ РАЗБИТЬ ТВОЮ ХРУПКУЮ ЛИЧНОСТЬ. ИДИ. НЕ ВОЗВРАЩАЙСЯ».~ */
  IF ~~ THEN REPLY #38859 /* ~«Нет».~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38860 /* ~«Тогда прощайте». ~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("CR_Vic","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #38790 /* ~«ТЕБЯ ПРЕДУПРЕЖДАЛИ, ДВУНОГИЙ. ГОТОВЬ СВОЙ РАЗУМ К ВЕЧНОМУ ПРЕДЕЛУ».~ */
  IF ~~ THEN REPLY #38861 /* ~«Мы могли бы это обсудить!»~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38862 /* ~Сражаться.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",5)
~ THEN BEGIN 12 // from:
  SAY #38791 /* ~«ГОЛОС МНОГИХ ПОРУЧИЛ ТЕБЕ ЗАДАНИЕ. ТЫ ГОВОРИШЬ, ЧТО БЕЗМОЛВНЫЙ КОРОЛЬ СЛИШКОМ СИЛЕН. МЫ НЕ ВИДИМ ЛЖИ В ТВОЕМ СЕРДЦЕ. ПОКИНЬ ЛОГОВО МЫСЛИ, ПОЛУЧИВ В ПОДАРОК ЖИЗНЬ. ТЫ ВЫПОЛНИЛ СВОЕ ПРЕДНАЗНАЧЕНИЕ».~ */
  IF ~~ THEN REPLY #38863 /* ~«И вы собираетесь вот так от меня избавиться?»~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38206 /* ~Я сказал Многоединому, что Безмолвный Король слишком силен, чтобы приближаться к нему. Коллективный разум черепных крыс не увидел лжи в моих словах, но запретил мне возвращаться в Логово Мысли под угрозой смерти. Насчет этого еще посмотрим.~ */ GOTO 10
  IF ~~ THEN REPLY #38864 /* ~«Отлично. Прощай».~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38206 /* ~Я сказал Многоединому, что Безмолвный Король слишком силен, чтобы приближаться к нему. Коллективный разум черепных крыс не увидел лжи в моих словах, но запретил мне возвращаться в Логово Мысли под угрозой смерти. Насчет этого еще посмотрим.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("MAO_Warn","GLOBAL",0)
GlobalLT("MAO_Warn","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #38792 /* ~«ТЕБЯ ПРЕДУПРЕЖДАЛИ, ДВУНОГИЙ. ГОТОВЬ СВОЙ РАЗУМ К ВЕЧНОМУ ПРЕДЕЛУ».~ */
  IF ~~ THEN REPLY #38865 /* ~«Мы могли бы это обсудить!»~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38866 /* ~Сражаться.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 25 24 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",4)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 14 // from:
  SAY #38793 /* ~«РАЗУМ ГОЛОСА МНОГИХ РАСКРЫЛ ТВОИ ТАЙНЫ. ТЕПЕРЬ МЫ ЗНАЕМ ПРАВДУ О БЕЗМОЛВНОМ КОРОЛЕ. МЫ БЛАГОДАРНЫ ЗА ЭТИ СВЕДЕНИЯ, — голос становится более грозным, — И ПОТОМУ МЫ НЕ БУДЕМ МСТИТЬ ЗА ТЕХ ИЗ НАС, КОТОРЫХ ТЫ УБИЛ. СЕЙЧАС ТЫ УЙДЕШЬ, И БОЛЬШЕ НЕ ВОЗВРАТИШЬСЯ В ЛОГОВО МЫСЛИ. ИДИ, ДВУНОГИЙ. ОТ ТЕБЯ БОЛЬШЕ НЕТ ТОЛКУ».~ */
  IF ~~ THEN REPLY #38867 /* ~«Вы собираетесь вот так избавиться от меня? После всего того, что я вам сделал?»~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38869 /* ~Я сказал Многоединому, что Безмолвный Король не представляет угрозы, но поскольку я убил парочку крыс, в качестве награды я получил свою жизнь, и не более. Крысы. Ненавижу крыс.~ */ GOTO 10
  IF ~~ THEN REPLY #38868 /* ~«Отлично. Прощай».~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38869 /* ~Я сказал Многоединому, что Безмолвный Король не представляет угрозы, но поскольку я убил парочку крыс, в качестве награды я получил свою жизнь, и не более. Крысы. Ненавижу крыс.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 25 24 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",4)
Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #38794 /* ~«РАЗУМ ГОЛОСА МНОГИХ РАСКРЫЛ ТВОИ ТАЙНЫ. ТЕПЕРЬ МЫ ЗНАЕМ ПРАВДУ О БЕЗМОЛВНОМ КОРОЛЕ. МЫ БЛАГОДАРНЫ ЗА ЭТИ СВЕДЕНИЯ. ТЫ ДОКАЗАЛ СВОЮ ЦЕННОСТЬ. МЫ РАЗРУШИМ ПРЕГРАДЫ В ТВОЕМ РАЗУМЕ И РАСКРОЕМ ТЕБЯ СЕБЕ».~ */
  IF ~~ THEN REPLY #38875 /* ~«Подождите! Не сейчас!»~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
  IF ~~ THEN REPLY #38876 /* ~«Я готов».~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 6.0 6.1 15.0 15.1 59.0
  SAY #38795 /* ~Ты чувствуешь давление, нарастающее у тебя в голове, как будто тысячи крошечных извивающихся телец толкают стену в твоем разуме. Инстинктивно ты противишься этому, но, спустя бесконечные минуты, давление становится слишком сильным, и сквозь твою защиту прорывается волна темных воспоминаний.~ */
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #67715 /* ~Сдаться.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #67718 /* ~Сдаться.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,2000)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #38796 /* ~Ты мчишься по городу, сделанному из цепей: здания, улицы, сточные канавы и водопроводные трубы состоят из скрепленных металлических цепей. Темно-красное небо над тобой злобно мерцает, пока ты со звоном пробираешься через прочную паутину черненого серебра. Ты оглядываешься через плечо в надежде на то, что оторвался от погони, и никого за собой не замечаешь. Ты устремляешь взгляд вперед...~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #38880 /* ~(продолжить)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 18
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #38881 /* ~(продолжить)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 20
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #38882 /* ~(продолжить)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #38797 /* ~... и видишь, что перед тобой беззвучно стоит существо, замотанное с головы до ног в цепи, и безумно улыбается под своей маской. С его руки соскальзывает цепь и обвивает твою лодыжку. Еще одна цепь внезапно вылетает из стены, полоснув тебя по запястью. Ты перехватываешь ее в воздухе и умелым взмахом накидываешь ее на шею врагу. Ты резко дергаешь цепь и слышишь резкий хруст хребта... но уже через миг хихикающая орда таких же монстров накидывает на тебя звенящую паутину цепей. Ты выдергиваешь себя из воспоминания.~ */
  IF ~~ THEN REPLY #38883 /* ~(продолжить)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0 21.0
  SAY #38798 /* ~«ТЫ ПОЛУЧИЛ СВОИ ОТВЕТЫ, — голос многих кажется утомленным от приложенных ими усилий. — НАШИ ДЕЛА ОКОНЧЕНЫ. БОЛЬШЕ С НАМИ НЕ ПЕРЕСЕКАЙСЯ. ЕСЛИ ВЕРНЕШЬСЯ, МЫ УНИЧТОЖИМ ТЕБЯ».~ */
  IF ~~ THEN REPLY #38884 /* ~«Тогда прощайте». ~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #38799 /* ~... и видишь, что перед тобой беззвучно стоит существо, замотанное с головы до ног в цепи, и безумно улыбается под своей маской. С его руки соскальзывает цепь и обвивает твою лодыжку. Еще одна цепь внезапно вылетает из стены, полоснув тебя по запястью. Ты высвобождаешь ногу от одной цепи, уклоняешься от другой. Кажется, что в твоих движениях нету никакого порядка, но ты успешно избегаешь целого роя цепей, которые швыряет в тебя существо. Спустя мгновение ока ты проскальзываешь к монстру и впиваешься большими пальцами в его глаза, протыкая мозг. Его тело обвисает в твоих руках... и тут хихикающая орда его приятелей накидывает на тебя звенящую паутину цепей. Ты выдергиваешь себя из воспоминания.~ */
  IF ~~ THEN REPLY #38886 /* ~(продолжить)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 17.2
  SAY #38800 /* ~... и видишь, что перед тобой беззвучно стоит существо, замотанное с головы до ног в цепи, и безумно улыбается под своей маской. С его руки слетает цепь, нацеленная тебе в горло. Ты останавливаешь ее на полпути волной огня, превращая ее в шлак; ее владелец начинает гореть, плавиться и вопить. Ты некоторое время наблюдаешь за ним, а потом слышишь хихиканье толпы его приятелей у себя за спиной. Они накидывают на тебя звенящую паутину цепей, и все окутывается тьмой. Ты вырываешься из воспоминания.~ */
  IF ~~ THEN REPLY #38887 /* ~(продолжить)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF WEIGHT #11 /* Triggers after states #: 25 24 even though they appear after this state */
~  GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #38801 /* ~Голос, похожий на тысячи одновременно говорящих голосов на фоне какой-то возни и шуршания, раздается у тебя в голове. Невероятная, еле сдерживаемая злость пульсирует под поверхностью потоком ярости. «УБИЙЦА. ГОВОРИ, ЗАЧЕМ ПРИШЕЛ».~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38890 /* ~«Кто вы?»~ */ GOTO 53
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38891 /* ~«Кто вы?»~ */ GOTO 54
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38892 /* ~«Кто вы?»~ */ GOTO 55
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38893 /* ~«Кто вы?»~ */ GOTO 56
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38894 /* ~«Что это за место?»~ */ GOTO 53
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38895 /* ~«Что это за место?»~ */ GOTO 54
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38896 /* ~«Что это за место?»~ */ GOTO 55
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38897 /* ~«Что это за место?»~ */ GOTO 57
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38898 /* ~«Я подумал, что вам было бы интересно узнать, Безмолвный король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38899 /* ~«Я подумал, что вам было бы интересно узнать, Безмолвный король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #38900 /* ~«Почему вы зовете меня 'убийцей'?»~ */ GOTO 60
  IF ~~ THEN REPLY #38901 /* ~«Я здесь просто так. Я уже ухожу».~ */ GOTO 28
END

IF WEIGHT #12 /* Triggers after states #: 25 24 even though they appear after this state */
~  GlobalGT("RatWarren","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #38802 /* ~Голос, звучащий мучительной болью тысяч, эхом отдается в твоем черепе. Он кажется на удивление подавленным, с нотками невероятной ярости. «УБИЙЦА... МЫ ПРОСИМ ТЕБЯ ПОКИНУТЬ НАШИ ЗАЛЫ. МЫ БОЛЬШЕ НЕ ХОТИМ БИТЬСЯ С ТОБОЙ. ЕСЛИ ТЫ ОКАЖЕШЬ НАМ ЭТУ УСЛУГУ, МЫ ОКАЖЕМ ТЕБЕ УСЛУГУ В ОТВЕТ, И СМОЖЕМ МИРНО РАЗОЙТИСЬ».~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38902 /* ~«Кто вы?»~ */ GOTO 70
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38903 /* ~«Кто вы?»~ */ GOTO 71
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38904 /* ~«Кто вы?»~ */ GOTO 72
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38905 /* ~«Кто вы?»~ */ GOTO 73
  IF ~~ THEN REPLY #38906 /* ~«Почему вы зовете меня 'убийцей'?»~ */ GOTO 35
  IF ~~ THEN REPLY #38907 /* ~«Что вы хотите, чтобы я сделал?»~ */ GOTO 35
  IF ~~ THEN REPLY #38908 /* ~«На самом деле я здесь, чтобы уничтожить вас».~ */ GOTO 75
  IF ~~ THEN REPLY #38909 /* ~«Я об этом подумаю».~ */ GOTO 76
END

IF WEIGHT #3 ~  GlobalGT("CR_Vic","GLOBAL",0)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 24 // from: 35.7 36.5 37.5 40.0
  SAY #38803 /* ~«СКАЖИ НАМ, ЧТО ТЫ ЗНАЕШЬ, УБИЙЦА».~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38910 /* ~«Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38911 /* ~«Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38912 /* ~Блеф: «Безмолвный Король слишком силен, чтобы нападать на него. Держитесь подальше от Мертвых Народов, иначе трупы уничтожат вас».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38913 /* ~«Пока ничего».~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66548 /* ~«Упыри озверели и разбрелись по Мертвым Народам».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF WEIGHT #4 ~  GlobalGT("CR_Vic","GLOBAL",0)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN BEGIN 25 // from: 35.8 36.6 37.6 40.1
  SAY #38804 /* ~«СКАЖИ НАМ, ЧТО ТЫ ЗНАЕШЬ, МЯСНИК».~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38914 /* ~«Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38915 /* ~«Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38916 /* ~Блеф: «Безмолвный Король слишком силен, чтобы нападать на него. Держитесь подальше от Мертвых Народов, иначе трупы уничтожат вас».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38917 /* ~«Пока ничего».~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66549 /* ~«Упыри озверели и разбрелись по Мертвым Народам».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF ~~ THEN BEGIN 26 // from: 0.10 4.2 5.2 8.2 24.2 25.2
  SAY #38805 /* ~«КОРОЛЬ МЕРТВЕЦОВ ГОТОВ ВСТРЕТИТЬ НАС? — голос крысиного разума на миг умолкает. — МЫ НЕ ВИДИМ ЛЖИ В ТВОЕМ РАЗУМЕ. ВОТ НАША БЛАГОДАРНОСТЬ: МЫ НЕ ОТПРАВИМ ТВОЙ ЖИВОЙ ТРУП В ПОДЗЕМЕЛЬЯ ПОД НАШИМ ЛОГОВОМ, ЧТОБЫ ОН СТАЛ ВЕЧНЫМ ЛАКОМСТВОМ ДЛЯ НАШИХ ДЕТЕЙ. ПОКИНЬ НАШИ ТОННЕЛИ И НЕ ВОЗВРАЩАЙСЯ».~ */
  IF ~~ THEN REPLY #38918 /* ~«И вы собираетесь вот так от меня избавиться?»~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38870 /* ~Я сказал Многоединому, что Безмолвный Король слишком силен, чтобы приближаться к нему. Коллективный разум черепных крыс не увидел лжи в моих словах, но запретил мне возвращаться в Логово Мысли под угрозой смерти. Насчет этого еще посмотрим.~ */ GOTO 10
  IF ~~ THEN REPLY #38919 /* ~«Отлично. Прощай».~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38870 /* ~Я сказал Многоединому, что Безмолвный Король слишком силен, чтобы приближаться к нему. Коллективный разум черепных крыс не увидел лжи в моих словах, но запретил мне возвращаться в Логово Мысли под угрозой смерти. Насчет этого еще посмотрим.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 0.11 4.3 5.3
  SAY #38806 /* ~«ТЫ ЛЖЕШЬ, ДВУНОГИЙ.
МЫ НЕ ВЕДЕМ ДЕЛ С ТЕБЕ ПОДОБНЫМИ.
НЕТ НУЖДЫ. НЕТ ЖЕЛАНИЯ.
ТЕБЯ ЗАМЕТИЛИ В ДЕРЕВНЕ МУСОРЩИКОВ, РАЗГОВАРИВАЮЩЕГО С ХРОМЫМ КОРОЛЕМ. ТЫ ШПИОН. ТЫ УБИЙЦА».~ */
  IF ~~ THEN REPLY #38920 /* ~«Ну да. И я готов выслушать лучшее предложение».~ */ GOTO 32
  IF ~~ THEN REPLY #38921 /* ~«Нет».~ */ GOTO 45
END

IF ~~ THEN BEGIN 28 // from: 0.12 4.4 5.4 22.11 57.3 58.3
  SAY #38807 /* ~«ЭТО ВЛАДЕНИЯ МНОГОЕДИНОГО.
ТЫ ЗДЕСЬ НЕЗВАНЫЙ ГОСТЬ.
НАШЕ КОРОЛЕВСТВО ДОЛЖНО СОХРАНИТЬСЯ В ТАЙНЕ.
ТВОЙ ГОЛОС ДОЛЖЕН ЗАГЛОХНУТЬ».~ */
  IF ~~ THEN REPLY #38922 /* ~«Я сохраню это в тайне».~ */ GOTO 31
  IF ~~ THEN REPLY #38923 /* ~«Хочется посмотреть на эту попытку».~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.13 4.5 5.5 45.0 46.2
  SAY #38808 /* ~«МЫ МОЖЕМ ЧИТАТЬ ТВОИ МЫСЛИ, ДВУНОГИЙ. НЕ ИСПЫТЫВАЙ НАС».~ */
  IF ~~ THEN REPLY #38924 /* ~«Нет. Я кое-что загадаю. Угадайте, что». Подумать: Фарод.~ */ GOTO 47
  IF ~  Global("AR0302_Visited","GLOBAL",1)
~ THEN REPLY #38925 /* ~«Нет. Я кое-что загадаю. Угадайте, что». Подумать: дом Управления по борьбе с вредителям и болезнями.~ */ GOTO 47
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38926 /* ~«Нет. Я кое-что загадаю. Угадайте, что». Подумать: Безмолвный Король.~ */ GOTO 47
  IF ~~ THEN REPLY #38927 /* ~«Нет. Я кое-что загадаю. Угадайте, что». Подумать: ходячие мертвецы.~ */ GOTO 47
  IF ~~ THEN REPLY #64641 /* ~«Нет. Я кое-что загадаю. Угадайте, что». Подумать: Барр, страж ворот.~ */ GOTO 47
END

IF ~~ THEN BEGIN 30 // from: 8.3 24.3 25.3
  SAY #38809 /* ~«ТОГДА ИСЧЕЗНИ. ТЫ НИЧЕГО ОТ НАС НЕ ДОБЬЕШЬСЯ, ПОКА НЕ ПРИНЕСЕШЬ НАМ НУЖНЫЕ ОТВЕТЫ».~ */
  IF ~~ THEN REPLY #38928 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.0
  SAY #38810 /* ~«ДА.
ТАК И БУДЕТ».~ */
  IF ~~ THEN REPLY #38929 /* ~«Что это должно означать?»~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38930 /* ~«Только если вы меня заставите...»~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.0 51.0
  SAY #38811 /* ~Следует пауза, пока разум переваривает эти сведения.
«ОБЪЯСНИ».~ */
  IF ~~ THEN REPLY #38931 /* ~«Я имею в виду, что мы могли бы помочь друг другу».~ */ GOTO 33
  IF ~~ THEN REPLY #38932 /* ~«Вы знаете, о чем я. Я владею умениями, которыми вы можете воспользоваться. У вас есть сила, которая может мне пригодиться».~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #38812 /* ~«ТАКИЕ СДЕЛКИ ИМЕЮТ СВОЮ ЦЕНУ.
ТАКИЕ СДЕЛКИ ТРЕБУЮТ ДОВЕРИЯ.
МЫ ТЕБЕ НЕ ДОВЕРЯЕМ.
УБЕДИ НАС, ДВУНОГИЙ».~ */
  IF ~~ THEN REPLY #38933 /* ~«Как мне вас убедить?»~ */ GOTO 35
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38934 /* ~«Убедить вас? Мне не нужно вас убеждать. Либо вы мне доверяете, либо нет».~ */ GOTO 38
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38935 /* ~«Что вы можете мне предложить?»~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38936 /* ~«Что вы можете мне предложить?»~ */ GOTO 39
  IF ~~ THEN REPLY #38937 /* ~«Забудьте мое предложение. Я пошел».~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.4 35.4 36.2 37.3 39.1 41.0 51.1 56.3 73.4
  SAY #38813 /* ~«ПОЗВОЛИТЬ ТЕБЕ УЙТИ? МЫ ТАК НЕ ДУМАЕМ».~ */
  IF ~~ THEN REPLY #38938 /* ~«Я мог бы прямо сейчас перебить вас всех, и вы не смогли бы мне помешать. Я не могу умереть».~ */ GOTO 42
  IF ~~ THEN REPLY #38939 /* ~«Попробуйте остановить меня».~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("CR_Vic","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.4 23.5 33.0 45.1 65.0 66.0 67.0 68.0
  SAY #38814 /* ~«ДОКАЖИ, ЧТО ТЕБЕ СТОИТ ДОВЕРЯТЬ.
ИДИ В ЗАЛЫ ХОДЯЧИХ МЕРТВЕЦОВ,
УБЕЙ БЕЗМОЛВНОГО КОРОЛЯ.
УБЕЙ ЕГО».~ */
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38941 /* ~Блеф: «Кого?»~ */ GOTO 36
  IF ~  Global("Silent_King","GLOBAL",0)
~ THEN REPLY #38942 /* ~«Кого?»~ */ GOTO 36
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38943 /* ~«Что вы можете мне предложить?»~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38944 /* ~«Что вы можете мне предложить?»~ */ GOTO 39
  IF ~~ THEN REPLY #38945 /* ~«Я так не думаю. Я пошел».~ */ GOTO 34
  IF ~~ THEN REPLY #38946 /* ~«Почему вы сами это не сделаете?»~ */ GOTO 52
  IF ~~ THEN REPLY #38947 /* ~«Хорошо, я сделаю это».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38871 /* ~Многоединый, коллективный разум черепных крыс, попросил меня убить Безмолвного Короля Мертвых Народов. Я согласился. Мне нужно отчитаться перед Многоединым, когда дело будет сделано.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64635 /* ~«Я уже там был».~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64636 /* ~«Я уже там был».~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64642 /* ~«Я уже там был».~ */ GOTO 8
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 48.0
  SAY #38815 /* ~«ХОДЯЧИМИ МЕРТВЕЦАМИ ПРАВИТ КОРОЛЬ, КОТОРЫЙ ЖИВЕТ В МЕСТЕ, НЕДОСТУПНОМ ДЛЯ НАШИХ ГЛАЗ.
МЫ ДОЛЖНЫ УНИЧТОЖИТЬ ЕГО, ЧТОБЫ УНИЧТОЖИТЬ ИХ ВСЕХ.
ОН ДЛЯ НАС ЗАГАДКА.
МЫ ЕГО НИКОГДА НЕ ВИДЕЛИ.
ОН ДОЛЖЕН УМЕРЕТЬ».~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38948 /* ~«Что вы можете мне предложить?»~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38949 /* ~«Что вы можете мне предложить?»~ */ GOTO 39
  IF ~~ THEN REPLY #38950 /* ~«Я так не думаю. Я пошел».~ */ GOTO 34
  IF ~~ THEN REPLY #38953 /* ~«Почему вы сами это не сделаете?»~ */ GOTO 52
  IF ~~ THEN REPLY #38954 /* ~«Хорошо, я сделаю это».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38872 /* ~Многоединый, коллективный разум черепных крыс, попросил меня убить Безмолвного Короля Мертвых Народов. Я согласился. Мне нужно отчитаться перед Многоединым, когда дело будет сделано.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64637 /* ~«Я уже там был».~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64638 /* ~«Я уже там был».~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64670 /* ~«Я уже там был».~ */ GOTO 8
END

IF ~~ THEN BEGIN 37 // from: 33.2 35.2 36.0 38.0
  SAY #38816 /* ~«У НАС ЕСТЬ ЧТО ПРЕДЛОЖИТЬ.
БЕЗОПАСНЫЙ ПРОХОД.
ЖИЗНИ ТВОИХ ДРУЗЕЙ».~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #38955 /* ~«И это все? Вам нужно предложить мне что-нибудь еще».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #38956 /* ~«Хорошо. Если это то, что вы можете мне дать — я приму это. Что мне нужно сделать?»~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #38957 /* ~«Это могло бы сработать... если бы мне было дело до этих людей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_MaO_1","GLOBALGood",-1)
~ GOTO 41
  IF ~~ THEN REPLY #38958 /* ~«Боюсь, что на это я пойти не могу. Я пошел».~ */ GOTO 34
  IF ~~ THEN REPLY #38959 /* ~«Ладно. Что мне нужно сделать?»~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38873 /* ~Многоединый, коллективный разум черепных крыс, попросил меня убить Безмолвного Короля Мертвых Народов. Я согласился. Мне нужно отчитаться перед Многоединым, когда дело будет сделано.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64639 /* ~«Я знаю тайну Безмолвного Короля».~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64640 /* ~«Я знаю тайну Безмолвного Короля».~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64671 /* ~«Я знаю тайну Безмолвного Короля».~ */ GOTO 8
END

IF ~~ THEN BEGIN 38 // from: 33.1
  SAY #38817 /* ~«ТЕБЕ НЕЛЬЗЯ ВЕРИТЬ.
ЕСЛИ ТВОИ СЛОВА ПРАВДИВЫ, ТО ТЫ ПРЕДАЕШЬ СВОИХ НАНИМАТЕЛЕЙ».~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38960 /* ~«Это уже лучше. И все же вы не сказали, что вы можете предложить за мои услуги».~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38961 /* ~«Это уже лучше. И все же вы не сказали, что вы можете предложить за мои услуги».~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 33.3 35.3 36.1 38.1
  SAY #38818 /* ~«МЫ МОЖЕМ ПРЕДЛОЖИТЬ БЕЗОПАСНЫЙ ПРОХОД.
СВОБОДУ.
ВОЗМОЖНО, ЧТО-НИБУДЬ ЕЩЕ».~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #38962 /* ~«Что именно 'еще'? Продолжайте».~ */ GOTO 41
  IF ~~ THEN REPLY #38963 /* ~«Боюсь, что на это я пойти не могу. Я пошел».~ */ GOTO 34
  IF ~~ THEN REPLY #38964 /* ~«Почему вы сами это не сделаете?»~ */ GOTO 52
  IF ~~ THEN REPLY #38965 /* ~«Ладно. Что мне нужно сделать?»~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38874 /* ~Многоединый, коллективный разум черепных крыс, попросил меня убить Безмолвного Короля Мертвых Народов. Я согласился. Мне нужно отчитаться перед Многоединым, когда дело будет сделано.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 35.6 36.4 37.1 37.4 39.3 41.2 43.0 52.0
  SAY #38819 /* ~«ТЫ ПОСТУПАЕШЬ МУДРО, ПРИНИМАЯ НАШИ УСЛОВИЯ.
ОТПРАВЛЯЙСЯ В ЗАЛЫ МЕРТВЫХ.
СВЕРГНИ ИХ МОЛЧАЛИВОГО ПРАВИТЕЛЯ.
ВОЗВРАЩАЙСЯ, И МЫ ОСУДИМ ТВОЮ НАГРАДУ».~ */
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #38966 /* ~«Я уже там был».~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64672 /* ~«Я уже там был».~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64673 /* ~«Я уже там был».~ */ GOTO 8
  IF ~~ THEN REPLY #64674 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.0 37.2 39.0
  SAY #38820 /* ~«У НАС ЕЩЕ ЕСТЬ ЧТО ПРЕДЛОЖИТЬ.
ТАЙНЫ.
БОГАТСТВО.
МАГИЯ.
МЕРТВЫЕ В ЭТИХ ГРОБНИЦАХ ИМЕЛИ ПРИ СЕБЕ МНОГО ВЕЩЕЙ».~ */
  IF ~~ THEN REPLY #38967 /* ~«Я так не думаю. Я пошел».~ */ GOTO 34
  IF ~~ THEN REPLY #38968 /* ~«Почему вы сами это не сделаете?»~ */ GOTO 52
  IF ~~ THEN REPLY #38969 /* ~«Хорошо. Что я должен сделать?»~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38970 /* ~Многоединый, коллективный разум черепных крыс, попросил меня убить Безмолвного Короля Мертвых Народов. Я согласился. Мне нужно отчитаться перед Многоединым, когда дело будет сделано.~ */ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 34.0 50.0
  SAY #38821 /* ~«ТЫ ОШИБАЕШЬСЯ. ТЫ ЖИВ ЛИШЬ ПО НАШЕЙ МИЛОСТИ.
ВОЗМОЖНО, МЫ И НЕ СМОЖЕМ УБИТЬ ТЕБЯ СРАЗУ.
НО МЫ МОЖЕМ ЗАСТАВИТЬ ТЕБЯ УМОЛЯТЬ О СМЕРТИ.
МЫ МОЖЕМ ЗАКОПАТЬ ТЕБЯ ГЛУБОКО В ЗЕМЛЮ.
МЫ МОЖЕМ ПРЕДАТЬ ТЕБЯ ВЕЧНОМУ ОГНЮ.
МЫ МОЖЕМ УНИЧТОЖИТЬ ВСЕ, ЧТО ТЕБЕ ДОРОГО.
МЫ ВЕЗДЕ.
ТЫ НЕ МОЖЕШЬ НАС ОСТАНОВИТЬ».~ */
  IF ~~ THEN REPLY #38971 /* ~«Тогда, может, мы могли бы как-нибудь договориться».~ */ GOTO 43
  IF ~~ THEN REPLY #38972 /* ~«Я хотел бы попробовать. Смерть крысам!»~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 74.1 76.0 78.1 79.0
  SAY #38822 /* ~«ТЫ ОТПРАВИШЬСЯ В ЗАЛЫ МЕРТВЫХ.
ТЫ ПОВЕРГНЕШЬ ИХ БЕЗМОЛВНОГО ПРАВИТЕЛЯ.
ТЫ ВЕРНЕШЬСЯ, КОГДА ВЫПОЛНИШЬ СВОЮ МИССИЮ».~ */
  IF ~~ THEN REPLY #38973 /* ~«Я согласен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38977 /* ~Многоединый, коллективный разум черепных крыс, попросил меня убить Безмолвного Короля Мертвых Народов. Я согласился. Мне нужно отчитаться перед Многоединым, когда дело будет сделано.~ */ GOTO 40
  IF ~~ THEN REPLY #38974 /* ~«Почему вы сами это не сделаете?»~ */ GOTO 52
  IF ~~ THEN REPLY #38975 /* ~«Я не буду».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.2 48.1 52.1
  SAY #38823 /* ~«ТОГДА, ДВУНОГИЙ, ТЫ УМРЕШЬ».~ */
  IF ~~ THEN REPLY #38978 /* ~«Попробуйте убить меня».~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 27.1
  SAY #38824 /* ~«ТЫ ЛЖЕШЬ!»~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38979 /* ~«Загляните в мою голову и скажите мне, что я вру. Или вы не можете сделать это?»~ */ GOTO 29
  IF ~~ THEN REPLY #38980 /* ~«Как мне доказать, что я не лгу?»~ */ GOTO 35
  IF ~~ THEN REPLY #38981 /* ~«Нет».~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2
  SAY #38825 /* ~«ДА. ТЫ НЕ МОЖЕШЬ УТАИТЬ ЭТО ОТ МЕНЯ. Я ЗНАЮ, ЗАЧЕМ ТЫ ЗДЕСЬ. ЗАЩИЩАЙСЯ, ДВУНОГИЙ, ПОТОМУ ЧТО СЕЙЧАС ТЫ УМРЕШЬ».~ */
  IF ~~ THEN REPLY #38982 /* ~«Постойте! Мы могли бы договориться!»~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38983 /* ~«Я готов, кем бы вы ни были...»~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38984 /* ~«Загляните в мою голову и скажите мне, что я вру. Или вы не можете сделать это?»~ */ GOTO 29
END

IF ~~ THEN BEGIN 47 // from: 29.0 29.1 29.2 29.3 29.4
  SAY #38826 /* ~Следует пауза, затем раздается: «ТЕБЯ ПОСЛАЛ БЕЗМОЛВНЫЙ КОРОЛЬ».~ */
  IF ~~ THEN REPLY #38985 /* ~«Вы правы. Я понял, что от вас ничего не утаишь».~ */ GOTO 48
  IF ~~ THEN REPLY #38986 /* ~«Вы ошибаетесь».~ */ GOTO 49
  IF ~~ THEN REPLY #38987 /* ~«Вы не можете читать мои мысли. Почему?»~ */ GOTO 50
  IF ~  Global("Silent_King","GLOBAL",0)
~ THEN REPLY #38988 /* ~«Безмолвный Король? Это еще кто?»~ */ GOTO 49
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38989 /* ~Блеф: «Безмолвный Король? Это еще кто?»~ */ GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #38827 /* ~«ВСЕ ТАК, КАК МЫ СКАЗАЛИ, ДВУНОГИЙ. СТЕНЫ ТВОЕГО РАЗУМА, МОЖЕТ, И ВЫСОКИ, НО МЫ МОЖЕМ СНЕСТИ ЛЮБУЮ ПРЕГРАДУ. ИТАК, У НАС ДЛЯ ТЕБЯ ЕСТЬ ПОРУЧЕНИЕ».~ */
  IF ~~ THEN REPLY #38990 /* ~«Какое?»~ */ GOTO 36
  IF ~~ THEN REPLY #38991 /* ~«Я не буду».~ */ GOTO 44
END

IF ~~ THEN BEGIN 49 // from: 47.1 47.3 47.4
  SAY #38828 /* ~«ТЫ ПРИТВОРЯЕШЬСЯ, ЧТО НИЧЕГО НЕ ЗНАЕШЬ О СВОЕМ ХОЗЯИНЕ? ТЫ УМРЕШЬ, ДВУНОГИЙ».~ */
  IF ~~ THEN REPLY #38992 /* ~«Вы ведь не можете читать мои мысли?»~ */ GOTO 50
  IF ~~ THEN REPLY #38993 /* ~«Тогда попробуйте».~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.2 49.0
  SAY #38829 /* ~Голоса звучат испуганно: «ТВОЙ РАЗУМ МОЖЕТ БЫТЬ ДЛЯ НАС НЕДОСТИЖИМЫМ, НО ТЫ ВЕДЬ МОЖЕШЬ УМЕРЕТЬ, КАК ВСЯКАЯ ДРУГАЯ ТВАРЬ».~ */
  IF ~~ THEN REPLY #38994 /* ~«Нет, не могу. Я мог бы перебить вас всех, и вы не смогли бы меня остановить».~ */ GOTO 42
  IF ~~ THEN REPLY #38995 /* ~«Почему вы не можете прочесть мои мысли?»~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #38830 /* ~«МЫ НЕ ЗНАЕМ.
ЭТО ДЕЛАЕТ ТЕБЯ ОПАСНЫМ ДЛЯ НАС.
УГРОЗА/ОПАСНОСТЬ/УБИЙЦА... НЕВИДИМЫЙ».~ */
  IF ~~ THEN REPLY #38996 /* ~«Тогда, возможно, мы могли бы как-нибудь договориться».~ */ GOTO 32
  IF ~~ THEN REPLY #38997 /* ~«Отпустите меня, и я вас больше не побеспокою».~ */ GOTO 34
END

IF ~~ THEN BEGIN 52 // from: 35.5 36.3 39.2 41.1 43.1
  SAY #38831 /* ~«МЕРТВЫЕ... ЗАЩИЩЕНЫ. СЛОЖНО НАВРЕДИТЬ. ИХ БЕЗМОЛВНЫЙ КОРОЛЬ — ЗАГАДКА. МЫ НЕ ЛЮБИМ ТАКИЕ ЗАГАДКИ. МЫ НАПАДАЕМ, КОГДА НЕ СОМНЕВАЕМСЯ В УСПЕХЕ. БЕЗМОЛВНЫЙ КОРОЛЬ ЗАСТАВЛЯЕТ НАС СОМНЕВАТЬСЯ».~ */
  IF ~~ THEN REPLY #38998 /* ~«Я согласен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38977 /* ~Многоединый, коллективный разум черепных крыс, попросил меня убить Безмолвного Короля Мертвых Народов. Я согласился. Мне нужно отчитаться перед Многоединым, когда дело будет сделано.~ */ GOTO 40
  IF ~~ THEN REPLY #38999 /* ~«Я не буду».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 53 // from: 22.0 22.4
  SAY #38832 /* ~«МЫ УЖЕ ВСТРЕЧАЛИСЬ В ТЕМНЫХ ЗАЛАХ.
МЫ ВИДЕЛИ ТВОЕ ЛИЦО, КОГДА ТЫ ПРОЛИВАЛ НАШУ КРОВЬ. ГОВОРИ, ЗАЧЕМ ПРИШЕЛ, УБИЙЦА. ЕСЛИ ТЫ ПРИШЕЛ УБИТЬ НАС ВСЕХ, ТЕБЕ ЭТО НЕ УДАСТСЯ».~ */
  IF ~~ THEN EXTERN ~DANNAH~ 190
END

IF ~~ THEN BEGIN 54 // from: 22.1 22.5
  SAY #38833 /* ~«МЫ УЖЕ ВСТРЕЧАЛИСЬ В ТЕМНЫХ ЗАЛАХ.
МЫ ВИДЕЛИ ТВОЕ ЛИЦО, КОГДА ТЫ ПРОЛИВАЛ НАШУ КРОВЬ. ГОВОРИ, ЗАЧЕМ ПРИШЕЛ, УБИЙЦА. ЕСЛИ ТЫ ПРИШЕЛ УБИТЬ НАС ВСЕХ, ТЕБЕ ЭТО НЕ УДАСТСЯ».~ */
  IF ~~ THEN EXTERN ~DMORTE~ 405
END

IF ~~ THEN BEGIN 55 // from: 22.2 22.6
  SAY #38834 /* ~«МЫ УЖЕ ВСТРЕЧАЛИСЬ В ТЕМНЫХ ЗАЛАХ.
МЫ ВИДЕЛИ ТВОЕ ЛИЦО, КОГДА ТЫ ПРОЛИВАЛ НАШУ КРОВЬ. ГОВОРИ, ЗАЧЕМ ПРИШЕЛ, УБИЙЦА. ЕСЛИ ТЫ ПРИШЕЛ УБИТЬ НАС ВСЕХ, ТЕБЕ ЭТО НЕ УДАСТСЯ».~ */
  IF ~~ THEN EXTERN ~DANNAH~ 193
END

IF ~~ THEN BEGIN 56 // from: 22.3
  SAY #38835 /* ~«МЫ УЖЕ ВСТРЕЧАЛИСЬ В ТЕМНЫХ ЗАЛАХ.
МЫ ВИДЕЛИ ТВОЕ ЛИЦО, КОГДА ТЫ ПРОЛИВАЛ НАШУ КРОВЬ. ГОВОРИ, ЗАЧЕМ ПРИШЕЛ, УБИЙЦА. ЕСЛИ ТЫ ПРИШЕЛ УБИТЬ НАС ВСЕХ, ТЕБЕ ЭТО НЕ УДАСТСЯ».~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39009 /* ~«Я пришел сказать, что Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39010 /* ~«Я пришел сказать, что Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39011 /* ~«Почему вы зовете меня 'убийцей'?»~ */ GOTO 60
  IF ~~ THEN REPLY #39012 /* ~«Я здесь просто так. Я уже ухожу».~ */ GOTO 34
END

IF ~~ THEN BEGIN 57 // from: 22.7
  SAY #38836 /* ~«ТЫ В ЛОГОВЕ МЫСЛИ. ТЫ В ДОМЕ МНОГОЕДИНОГО. СЕЙЧАС ТЫ УМРЕШЬ, УБИЙЦА».~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39013 /* ~«Но я пришел сказать, что Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39014 /* ~«Но я пришел сказать, что Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39015 /* ~«Почему? И почему вы назвали меня 'убийцей'?»~ */ GOTO 60
  IF ~~ THEN REPLY #39017 /* ~«Но я попал суда случайно».~ */ GOTO 28
END

IF ~~ THEN BEGIN 58 // from:
  SAY #38837 /* ~«МОЛЧАТЬ! МЫ ГОВОРИМ С НЕСУЩИМ ШРАМЫ.
МЫ *УНИЧТОЖИМ* ТЕБЯ, ЕСЛИ ТЫ ПРОИЗНЕСЕШЬ ХОТЬ СЛОВО. ЗНАЙ, ЧТО ТЫ В ЛОГОВЕ МЫСЛИ... И ЗНАЙ, ЧТО ТЫ НАВЛЕКАЕШЬ НА СЕБЯ НАШУ НЕМИЛОСТЬ. ГОВОРИ, С ЧЕМ ПРИШЕЛ, УБИЙЦА».~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39018 /* ~«Я пришел сказать, что Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39019 /* ~«Я пришел сказать, что Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39020 /* ~«Почему вы зовете меня 'убийцей'?»~ */ GOTO 60
  IF ~~ THEN REPLY #39021 /* ~«Я не имею здесь целей. Я зашел сюда случайно».~ */ GOTO 28
END

IF ~~ THEN BEGIN 59 // from: 22.8 22.9 24.0 24.1 56.0 56.1 57.0 57.1 58.0 58.1
  SAY #38838 /* ~«БЕЗМОЛВНЫЙ КОРОЛЬ ЛЕЖИТ СМИРНО? ТЫ ОТЛИЧНО СПРАВИЛСЯ, УБИЙЦА, — голос ненадолго умолкает. — ПУСТЬ ТЕПЕРЬ НЕ ГОВОРЯТ, ЧТО МНОГОЕДИНЫЙ НЕБЛАГОДАРЕН».~ */
  IF ~~ THEN REPLY #39022 /* ~«О чем это вы?»~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
END

IF ~~ THEN BEGIN 60 // from: 22.10 56.2 57.2 58.2
  SAY #38839 /* ~«ТЕБЯ ОКРУЖАЕТ ВОНЬ ЛЖИ. ЗНАЙ, ЧТО МЫ ВИДЕЛИ ТВОЕ ЛИЦО, КОГДА ТЫ УБИВАЛ НАС. ЗНАЙ, ЧТО МЫ ЧУВСТВОВАЛИ БОЛЬ ГАСНУЩЕГО РАЗУМА. ЗНАЙ, ЧТО УТРАТА КАЖДОЙ ИСКРЫ УМЕНЬШАЕТ СИЯНИЕ ПЛАМЕНИ. ТЫ УБИЛ МНОГИХ ИЗ НАС. ТЫ ОТРИЦАЕШЬ ЭТО?»~ */
  IF ~~ THEN REPLY #39024 /* ~«Безусловно».~ */ GOTO 62
  IF ~~ THEN REPLY #39025 /* ~«Вовсе нет».~ */ GOTO 61
  IF ~~ THEN REPLY #39026 /* ~«Я не знал, что они из ваших».~ */ GOTO 62
  IF ~~ THEN REPLY #39027 /* ~«Они первые на меня напали».~ */ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 60.1
  SAY #38840 /* ~«ДА БУДЕТ ТАК. ТЫ СОЗНАЛСЯ В СВОЕМ ПРЕСТУПЛЕНИИ.
ТЫ БУДЕШЬ СТРАДАТЬ,
КАК СТРАДАЛИ МЫ».~ */
  IF ~~ THEN REPLY #39028 /* ~«Почему бы тебе не *заставить* меня пожалеть, ты, блохастый коврик коллективной тупости?»~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.0 60.2 60.3
  SAY #38841 /* ~«ЛОЖЬ!
ЗНАЙ, ЧТО ТЫ БУДЕШЬ СТРАДАТЬ, КАК СТРАДАЛИ МЫ».~ */
  IF ~~ THEN REPLY #39029 /* ~«Почему бы тебе не *заставить* меня пожалеть, ты, блохастый коврик коллективной тупости?»~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39030 /* ~«Я прошу пощады».~ */ GOTO 63
  IF ~~ THEN REPLY #39031 /* ~«Я могу как-нибудь загладить свою вину?»~ */ GOTO 64
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY #38842 /* ~«ТЕБЕ НЕ БУДЕТ ПОЩАДЫ, УБИЙЦА. ТЫ ДОЛЖЕН ЗАПЛАТИТЬ ЗА СВОЕ ПРЕСТУПЛЕНИЕ».~ */
  IF ~~ THEN REPLY #39032 /* ~«Почему бы тебе не *заставить* меня пожалеть, ты, блохастый коврик коллективной тупости?»~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39033 /* ~«Как мне загладить свою вину?»~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 62.2 63.1
  SAY #38843 /* ~«КАКОЙ ОТ ТЕБЯ ПРОК?»~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #39034 /* ~«Убить меня непросто, и я знаю магию».~ */ GOTO 65
  IF ~~ THEN REPLY #39035 /* ~«Меня не так просто убить».~ */ GOTO 66
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #39036 /* ~«Я скрытный и меня сложно заметить».~ */ GOTO 67
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #39037 /* ~«Убить меня непросто, и я свирепый воин».~ */ GOTO 68
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #38844 /* ~«ЗАКЛИНАНИЯ НАС НЕ ИНТЕРЕСУЮТ. МАГИЯ — НЕ ТАКОЙ УЖ РЕДКИЙ ДАР... И ВСЕ ЖЕ...»~ */
  IF ~~ THEN REPLY #39038 /* ~«Все же?»~ */ GOTO 35
END

IF ~~ THEN BEGIN 66 // from: 64.1
  SAY #38845 /* ~«ЭТО МОЖЕТ ПРИГОДИТЬСЯ... ДА...»~ */
  IF ~~ THEN REPLY #39039 /* ~«Да?»~ */ GOTO 35
END

IF ~~ THEN BEGIN 67 // from: 64.2
  SAY #38846 /* ~«ЭТИ УМЕНИЯ МОГЛИ БЫ ПРИГОДИТЬСЯ... ДА...»~ */
  IF ~~ THEN REPLY #39040 /* ~«Да?»~ */ GOTO 35
END

IF ~~ THEN BEGIN 68 // from: 64.3
  SAY #38847 /* ~«ЭТИ УМЕНИЯ МОГЛИ БЫ ПРИГОДИТЬСЯ... ДА...»~ */
  IF ~~ THEN REPLY #39041 /* ~«Да?»~ */ GOTO 35
END

IF ~~ THEN BEGIN 69 // from: 25.0 25.1 73.0 73.1
  SAY #38848 /* ~«БЕЗМОЛВНЫЙ КОРОЛЬ НЕ ПРЕДСТАВЛЯЕТ ДЛЯ НАС УГРОЗЫ? ТЫ УВЕРЕН В ТОМ? ТЫ ВИДЕЛ ЕГО ТРУП?»~ */
  IF ~~ THEN REPLY #39042 /* ~«Да».~ */ GOTO 77
END

IF ~~ THEN BEGIN 70 // from: 23.0
  SAY #38849 /* ~«МЫ УЖЕ ВСТРЕЧАЛИСЬ В ТЕМНЫХ ЗАЛАХ.
МЫ ВИДЕЛИ ТВОЕ ЛИЦО, КОГДА ТЫ ПРОЛИВАЛ НАШУ КРОВЬ. ГОВОРИ, ЗАЧЕМ ПРИШЕЛ, УБИЙЦА. ЕСЛИ ТЫ ПРИШЕЛ УБИТЬ НАС ВСЕХ, ТЕБЕ ЭТО НЕ УДАСТСЯ. МЫ НЕ ХОТИМ ДРАТЬСЯ, НО ЕСЛИ ТЫ НАСТАИВАЕШЬ, МЫ ДАДИМ БОЙ».~ */
  IF ~~ THEN EXTERN ~DANNAH~ 192
END

IF ~~ THEN BEGIN 71 // from: 23.1
  SAY #38850 /* ~«МЫ УЖЕ ВСТРЕЧАЛИСЬ В ТЕМНЫХ ЗАЛАХ.
МЫ ВИДЕЛИ ТВОЕ ЛИЦО, КОГДА ТЫ ПРОЛИВАЛ НАШУ КРОВЬ. ГОВОРИ, ЗАЧЕМ ПРИШЕЛ, УБИЙЦА. ЕСЛИ ТЫ ПРИШЕЛ УБИТЬ НАС ВСЕХ, ТЕБЕ ЭТО НЕ УДАСТСЯ. МЫ НЕ ХОТИМ ДРАТЬСЯ, НО ЕСЛИ ТЫ НАСТАИВАЕШЬ, МЫ ДАДИМ БОЙ».~ */
  IF ~~ THEN EXTERN ~DMORTE~ 406
END

IF ~~ THEN BEGIN 72 // from: 23.2
  SAY #38851 /* ~«МЫ УЖЕ ВСТРЕЧАЛИСЬ В ТЕМНЫХ ЗАЛАХ.
МЫ ВИДЕЛИ ТВОЕ ЛИЦО, КОГДА ТЫ ПРОЛИВАЛ НАШУ КРОВЬ. ГОВОРИ, ЗАЧЕМ ПРИШЕЛ, УБИЙЦА. ЕСЛИ ТЫ ПРИШЕЛ УБИТЬ НАС ВСЕХ, ТЕБЕ ЭТО НЕ УДАСТСЯ. МЫ НЕ ХОТИМ ДРАТЬСЯ, НО ЕСЛИ ТЫ НАСТАИВАЕШЬ, МЫ ДАДИМ БОЙ».~ */
  IF ~~ THEN EXTERN ~DANNAH~ 193
END

IF ~~ THEN BEGIN 73 // from: 23.3
  SAY #38852 /* ~«МЫ УЖЕ ВСТРЕЧАЛИСЬ В ТЕМНЫХ ЗАЛАХ.
МЫ ВИДЕЛИ ТВОЕ ЛИЦО, КОГДА ТЫ ПРОЛИВАЛ НАШУ КРОВЬ. ГОВОРИ, ЗАЧЕМ ПРИШЕЛ, УБИЙЦА. ЕСЛИ ТЫ ПРИШЕЛ УБИТЬ НАС ВСЕХ, ТЕБЕ ЭТО НЕ УДАСТСЯ. МЫ НЕ ХОТИМ ДРАТЬСЯ, НО ЕСЛИ ТЫ НАСТАИВАЕШЬ, МЫ ДАДИМ БОЙ».~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39043 /* ~«Я пришел сказать, что Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39044 /* ~«Я пришел сказать, что Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 69
  IF ~~ THEN REPLY #39045 /* ~«Почему вы зовете меня 'убийцей'?»~ */ GOTO 74
  IF ~~ THEN REPLY #39046 /* ~«На самом деле я здесь, чтобы уничтожить вас».~ */ GOTO 75
  IF ~~ THEN REPLY #39047 /* ~«Я здесь просто так. Я уже ухожу».~ */ GOTO 34
END

IF ~~ THEN BEGIN 74 // from: 73.2
  SAY #38853 /* ~«ДВУНОГИЙ, ТЫ ПОГУБИЛ МНОГИХ ИЗ НАС. МЫ ЧУВСТВОВАЛИ, КАК ОГОНЬКИ НАШИХ ЖИЗНЕЙ ПРОПАДАЮТ ВО ВСПЫШКЕ БОЛИ. ТЫ ПРИНЕС СТРАДАНИЯ В ЛОГОВО МЫСЛИ, И ТЫ ДОЛЖЕН ВОЗМЕСТИТЬ ИХ НАМ. ТЫ ВОЗМЕСТИШЬ НАМ ПОТЕРИ, ИЛИ МЫ УНИЧТОЖИМ ТЕБЯ».~ */
  IF ~~ THEN REPLY #39048 /* ~«Я не буду».~ */ GOTO 76
  IF ~~ THEN REPLY #39049 /* ~«Что мне нужно сделать?»~ */ GOTO 43
  IF ~~ THEN REPLY #39050 /* ~«Я не знал, что они были из ваших».~ */ GOTO 79
END

IF ~~ THEN BEGIN 75 // from: 23.6 73.3 78.0
  SAY #38854 /* ~«РАЗВЕ ТЕБЕ МАЛО ТОГО, ЧТО ТЫ УЖЕ СДЕЛАЛ С НАМИ, ПРИМАТ? ТЫ ЕЩЕ НЕ НАСЫТИЛСЯ УБИЙСТВОМ? МЫ НЕ ВИДИМ СОГЛАСИЯ В ТВОЕМ РАЗУМЕ. НАМ ЛУЧШЕ УБИТЬ ТЕБЯ, ДВУНОГИЙ».~ */
  IF ~~ THEN REPLY #39051 /* ~«Я готов...»~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 23.7 74.0 78.2 79.1
  SAY #38855 /* ~«ТЫ СДЕЛАЕШЬ ЭТО ДЛЯ НАС, ИЛИ МЫ ОТДАДИМ ПОСЛЕДНИЕ НАШИ ЖИЗНИ НА ТО, ЧТОБЫ ИСКОРЕНИТЬ ТЕБЯ ИЗ МУЛЬТИВСЕЛЕННОЙ. ТЫ *ЗАДОЛЖАЛ* НАМ ЗА ТУ БОЛЬ, ЧТО ТЫ НАМ ПРИЧИНИЛ».~ */
  IF ~~ THEN REPLY #39052 /* ~«Что вы хотите, чтобы я сделал?»~ */ GOTO 43
  IF ~~ THEN REPLY #39053 /* ~«Посмотрим на эту попытку».~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 69.0
  SAY #38857 /* ~«ТОГДА ТЫ НАМ БОЛЬШЕ НИ К ЧЕМУ.
ПРИШЛО ВРЕМЯ ТЕБЕ ИСПЫТАТЬ ТЕ СТРАДАНИЯ, КОТОРЫЕ ТЫ НАМ ПРИЧИНИЛ.
ПРИШЛО ВРЕМЯ ЗАДУТЬ ТВОЮ БРЕННУЮ ИСКРУ.
ТЫ УМРЕШЬ, ЧЕЛОВЕКООБРАЗНОЕ.
ТЫ УМРЕШЬ В *МУКАХ*».~ */
  IF ~~ THEN REPLY #39054 /* ~«Это и есть вся благодарность?»~ */ DO ~AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39055 /* ~«Давайте, я жду».~ */ DO ~AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #39323 /* ~«МЫ ТРЕБУЕМ, ЧТОБЫ ТВОИ СПУТНИКИ МОЛЧАЛИ. ТЫ ПРИЧИНИЛ НАМ БОЛЬ, МНОГО БОЛИ, И МЫ ТРЕБУЕМ ОТ ТЕБЯ САТИСФАКЦИИ».~ */
  IF ~~ THEN REPLY #39056 /* ~«Я здесь, чтобы уничтожить вас».~ */ GOTO 75
  IF ~~ THEN REPLY #39057 /* ~«Что вы хотите, чтобы я сделал?»~ */ GOTO 43
  IF ~~ THEN REPLY #39058 /* ~«Не дождетесь».~ */ GOTO 76
END

IF ~~ THEN BEGIN 79 // from: 74.2
  SAY #56039 /* ~«ТЫ ПРИЧИНИЛ НАМ ВРЕД. ПРОШЛОГО НЕ ИЗМЕНИТЬ ОДНИМИ ЛИШЬ ТВОИМИ ИЗВИНЕНИЯМИ. ОКАЖИ НАМ ЭТУ УСЛУГУ, ИНАЧЕ МЫ УНИЧТОЖИМ ТЕБЯ».~ */
  IF ~~ THEN REPLY #56040 /* ~«Что мне нужно сделать?»~ */ GOTO 43
  IF ~~ THEN REPLY #56041 /* ~«Я не стану этого делать».~ */ GOTO 76
END
