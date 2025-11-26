// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DASHMAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DASHMAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 42 44 even though they appear after this state */
~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2133 /* ~Перед тобой бледный мужчина в длинной черной мантии. Он выглядит почти так же, как те люди в Морге, но в отличие от них он кажется смущенным и пялится по сторонам. Едва завидев тебя, он поднимает руку, чтобы привлечь твое внимание.~ */
  IF ~~ THEN REPLY #2180 /* ~«Приветствую».~ */ DO ~SetGlobal("Ashmantle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #2181 /* ~Не обращать на него внимания.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 42 44 even though they appear after this state */
~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2134 /* ~Перед тобой бледный мужчина в длинной черной мантии. В отличии от тленных из Морга, он кажется смущенным и пялится по сторонам, как будто что-то ищет. Едва завидев тебя, он поднимает руку, чтобы привлечь твое внимание.~ */
  IF ~~ THEN REPLY #2182 /* ~«Приветствую».~ */ DO ~SetGlobal("Ashmantle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #2183 /* ~Не обращать на него внимания.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2135 /* ~Кажется, мужчина испытывает явное облегчение, когда ты начинаешь разговаривать с ним. Он делает небольшой поклон. «Спасибо, что не прошел мимо, странник. Я — Осыпанный-Пеплом, один из членов секты тленных. Я буду очень признателен, если ты мне поможешь... Я не очень хорошо знаю это место, но ищу некое заведение, бар, в котором часто бывают члены моей секты. Ты не знаешь, где он находится?»~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2184 /* ~«Знаешь, тут ходят слухи о карманном воре, который наряжается как тленный. Ты случайно его не знаешь?»~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #2185 /* ~«Секты? Ты, наверное, имел в виду фракции?»~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2186 /* ~«Секты? Ты ведь тленный. Наверное, ты имел в виду фракции?»~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2187 /* ~«А, бар тленных? Он рядом с Моргом. Иди от главных ворот Морга строго на юго-запад. Ты его не пропустишь».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2188 /* ~«Я слыхал о нем. Я помогу тебе... в обмен на награду».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #61400 /* ~«Я слыхал о нем. Я помогу тебе... если ты ответишь на мои вопросы».~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2189 /* ~Ложь: «Э-э-э... ага, я слыхал о нем. Я помогу тебе... в обмен на награду».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2190 /* ~Ложь: «Э-э-э... ага, я слыхал о нем. Я помогу тебе... если ты ответишь на мои вопросы».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2191 /* ~«Нет, извини, я не знаю, где это находится».~ */ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2192 /* ~Ложь: «Нет, извини, я не знаю, где это находится».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_4","GLOBALLaw",-1)
~ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2193 /* ~«Я не могу помочь тебе. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2194 /* ~«Я не могу помочь тебе. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2 45.1 45.2
  SAY #2136 /* ~Тленный кивает. «Ну да, *фракция*, я имел в виду фракцию... секта, фракция — на самом деле это одно и то же... так ты случайно не знаешь бар, где часто бывают члены моей фракции?»~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2195 /* ~«Знаешь, тут ходят слухи о карманном воре, который наряжается как тленный. Ты случайно его не знаешь?»~ */ GOTO 18
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2196 /* ~«Бар, который ты ищешь, рядом с Моргом. Иди от главных ворот Морга строго на юго-запад. Ты его не пропустишь».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2197 /* ~«Я слыхал о нем. Я помогу тебе... в обмен на награду».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2198 /* ~«Я слыхал о нем. Я помогу тебе... если ты ответишь на мои вопросы».~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2199 /* ~Ложь: «Э-э-э... ага, я слыхал о нем. Я помогу тебе... в обмен на награду».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2200 /* ~Ложь: «Э-э-э... ага, я слыхал о нем. Я помогу тебе... если ты ответишь на мои вопросы».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2201 /* ~«Нет, извини, я не знаю, где это находится».~ */ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2202 /* ~Ложь: «Нет, извини, я не знаю, где это находится».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_4","GLOBALLaw",-1)
~ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2203 /* ~«Я не могу помочь тебе. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2204 /* ~«Я не могу помочь тебе. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.4 2.6 3.2 3.4 43.2 43.4 45.4 45.6
  SAY #2137 /* ~Он вздыхает и поднимает руки. «Мне жаль это признавать, но у меня нет звенелок».~ */
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2205 /* ~«Тогда забудь об этом. Бар, который ты ищешь, рядом с Моргом. Иди от главных ворот Морга строго на юго-запад. Ты его не пропустишь».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #2206 /* ~«Давай так: ты ответишь на несколько моих вопросов — и мы в расчете».~ */ GOTO 7
  IF ~~ THEN REPLY #2613 /* ~«Тогда я ничем не могу тебе помочь. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.8 2.9 2.10 2.11 3.6 3.7 3.8 3.9 4.2 6.1 7.2 8.4 9.1 10.2 11.2 12.4 13.2 14.2 15.3 16.2 18.4 43.6 43.7 45.8 45.9
  SAY #2138 /* ~Тленный кивает и отвешивает финальный поклон. «Спасибо за уделенное время».~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2614 /* ~«Не за что. Прощай».~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #2615 /* ~«Не за что. Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 20
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #2616 /* ~«Не за что. Прощай».~ */ DO ~TakePartyGold(5)
~ GOTO 23
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
Global("Ash_Suspicious","GLOBAL",1)
~ THEN REPLY #2617 /* ~«Не за что... Прощай».~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
Global("Ash_Suspicious","GLOBAL",0)
~ THEN REPLY #2618 /* ~«Не за что. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 3.1 4.0 7.0 7.1 43.1 45.3
  SAY #2139 /* ~Тленный улыбается. «Большое тебе спасибо, странник. Я благодарю тебя за помощь. Люди в Улье... очень редко помогают в подобных случаях».~ */
  IF ~~ THEN REPLY #2620 /* ~«И не говори. Скажи, ты можешь ответить на пару моих вопросов?»~ */ DO ~SetGlobal("Directed_Ashmantle","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #2621 /* ~«Без проблем. Прощай, Осыпанный-Пеплом».~ */ DO ~SetGlobal("Directed_Ashmantle","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 2.5 2.7 3.3 3.5 4.1 43.3 43.5 45.5 45.7
  SAY #2140 /* ~Он кивает. «Твою просьбу можно понять. Скажи мне, где мне найти Бар собирателей пыли, и я буду рад ответить на любой твой вопрос».~ */
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2622 /* ~«Бар, который ты ищешь, рядом с Моргом. Иди от главных ворот Морга строго на юго-запад. Ты его не пропустишь».~ */ GOTO 6
  IF ~~ THEN REPLY #2649 /* ~Ложь: «Ага, встань напротив Морга, а потом иди... три квартала на запад, кажется... а потом сверни в первый переулок направо».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_5","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #2650 /* ~«На самом деле, я не могу вспомнить, где он находится. Я вернусь, если вспомню. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 6.0 9.0 10.1 11.1 12.3 13.1 14.1 15.2 16.1
  SAY #2141 /* ~«Что у тебя за вопросы?»~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2651 /* ~«Я ищу кое-кого по имени Фарод. Знаешь такого?»~ */ GOTO 9
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2652 /* ~«Я ищу потерянный дневник. Ты не знаешь, где я могу его найти?»~ */ GOTO 10
  IF ~~ THEN REPLY #2653 /* ~«Расскажи мне немного об этом месте».~ */ GOTO 12
  IF ~~ THEN REPLY #2654 /* ~«Расскажи мне немного о тленных».~ */ GOTO 15
  IF ~~ THEN REPLY #2655 /* ~«Неважно. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #2142 /* ~«Прошу прощения, но это имя мне неизвестно».~ */
  IF ~~ THEN REPLY #2656 /* ~«Хорошо. У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #2657 /* ~«Без проблем. Прощай, Осыпанный-Пеплом».~ */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #2143 /* ~«Не знаю, где ты можешь найти такую вещь. Скорблю по его утрате».~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2658 /* ~«Правда? А я думал, что тленные не ценят имущество».~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #2659 /* ~«У меня есть другие вопросы...»~ */ GOTO 8
  IF ~~ THEN REPLY #2660 /* ~«Спасибо за внимание. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #2144 /* ~Мужчина слегка пожимает плечами. «Я сочувствую твоей потере. В жизни каждого есть много ценных вещей».~ */
  IF ~~ THEN REPLY #2662 /* ~«Для тленного у тебя... *необычная* точка зрения».~ */ GOTO 14
  IF ~~ THEN REPLY #2663 /* ~«Понятно. У меня еще вопросы...» ~ */ GOTO 8
  IF ~~ THEN REPLY #2664 /* ~ «Спасибо за информацию. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 8.2
  SAY #2145 /* ~«Это место... ну, это северо-западный рынок, если я не ошибаюсь. На юго-западе есть какое-то правительственный учреждение... — он ненадолго задумывается. — Кажется, Управление по борьбе с вредителями».~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2665 /* ~«А я думал, что ты не очень знаком с этим местом».~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Dustman_Pickpocket","GLOBAL",0)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #2666 /* ~«Похоже, ты знаешь *это* место очень хорошо».~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Dustman_Pickpocket","GLOBAL",0)
CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #2667 /* ~«Похоже, ты знаешь *это* место очень хорошо».~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #2668 /* ~«Понятно. У меня еще вопросы...» ~ */ GOTO 8
  IF ~~ THEN REPLY #2669 /* ~ «Спасибо за информацию. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 12.2
  SAY #2146 /* ~Он пожимает плечами. «Улей — очень большое место. Какие-то места я знаю, какие-то — нет».~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2670 /* ~«Очень странно, что тленный не знает о Баре собирателей пыли — ведь он прямо перед Моргом».~ */ GOTO 14
  IF ~~ THEN REPLY #2671 /* ~«Понятно. У меня еще вопросы...» ~ */ GOTO 8
  IF ~~ THEN REPLY #2672 /* ~ «Спасибо за информацию. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 11.0 13.0 15.0
  SAY #2147 /* ~Мужчина моргает. «Ну... На самом деле, я нетипичный тленный».~ */
  IF ~~ THEN REPLY #2673 /* ~«Я это уже понял. Кто ты?»~ */ GOTO 16
  IF ~~ THEN REPLY #2680 /* ~«Понятно. У меня еще вопросы...» ~ */ GOTO 8
  IF ~~ THEN REPLY #2681 /* ~ «Спасибо за информацию. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 8.3
  SAY #2148 /* ~Он умолкает на некоторое время... затем кивает. «С удовольствием. Мы... Тленные... рассматриваем эту жизнь как возможность испытать свои чувства перед следующей. Мы просеиваем тлен наших прошлых жизней в поисках следующих».~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2682 /* ~«Э-э... для тленного это довольно-таки *необычная* точка зрения».~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 14
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2683 /* ~«Такого я никогда не слышал ни от одного тленного. Кто ты?»~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #2684 /* ~«Понятно. У меня еще вопросы...» ~ */ GOTO 8
  IF ~~ THEN REPLY #2685 /* ~ «Спасибо за информацию. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.1
  SAY #2149 /* ~Мужчина кивает, чувствуя себя немного неуютно. «Ну, я — Осыпанный-Пеплом, член Девятого Круга».~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2686 /* ~«Девятый Круг? Такого не существует».~ */ GOTO 17
  IF ~~ THEN REPLY #2687 /* ~«Понятно... У меня еще вопросы...» ~ */ GOTO 8
  IF ~~ THEN REPLY #2688 /* ~«Отлично. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #2150 /* ~Он неожиданно напрягается. «У меня нет времени на обсуждение обычаев и иерархии секты тленных. Так что прошу прощения...»~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2689 /* ~Схватить его за руку.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2690 /* ~Схватить его за руку.~ */ GOTO 26
  IF ~~ THEN REPLY #2691 /* ~«Так кто ты на самом деле?»~ */ GOTO 27
  IF ~~ THEN REPLY #2692 /* ~«Тогда ничего. Извини, если обидел».~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.0 3.0 20.2 21.2 22.2 23.2 24.2 43.0 45.0
  SAY #2151 /* ~Мужчина смотрит на тебя невинным взглядом, но ты видишь, что он напряжен. «Прошу прощения?»~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2693 /* ~Схватить его за руку.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2694 /* ~Схватить его за руку.~ */ GOTO 26
  IF ~~ THEN REPLY #2695 /* ~«Ты не тленный. Ты карманник».~ */ GOTO 27
  IF ~~ THEN REPLY #2696 /* ~«Я тоже прошу прощения. Приготовься к смерти».~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2697 /* ~«Ничего, неважно. Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 29.8 29.9 30.2 30.3 32.3 32.4 33.3 33.4 35.2 35.3 36.3 36.4 40.3 40.4 41.2 41.3
  SAY #2153 /* ~Он кивает. «Хорошо. Наши пути больше не пересекутся. Найду себе другую аферу... э-э-э, работу, где-нибудь еще».~ */
  IF ~~ THEN REPLY #2698 /* ~«Хорошо. А теперь проваливай».~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 5.1
  SAY #2154 /* ~Ты уже готов идти прочь, как вдруг у тебя появляется чувство, что чего-то не хватает. Ты недоверчиво оглядываешься на Осыпанного-Пеплом, едва успевшего спрятать что-то в рукав... кажется, это что-то принадлежало тебе.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2699 /* ~Схватить его за руку.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2700 /* ~Схватить его за руку.~ */ GOTO 25
  IF ~~ THEN REPLY #2723 /* ~«Эй! Ты что творишь?!»~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2724 /* ~Спровоцировать Осыпанного-Пеплом на воровство и проследить за его техникой.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2726 /* ~Спровоцировать Осыпанного-Пеплом на воровство и проследить за его техникой.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2727 /* ~Спровоцировать Осыпанного-Пеплом на воровство и проследить за его техникой.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2728 /* ~Атаковать его.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2729 /* ~Не обращать внимания на инцидент и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 5.3
  SAY #2155 /* ~Ты бы ничего и не заметил, если бы не был настороже. Ты видишь, как во время одного из своих низких поклонов Посыпанный-Пеплом незаметно запускает руку в твой кошелек.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2730 /* ~Схватить его за руку.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2731 /* ~Схватить его за руку.~ */ GOTO 25
  IF ~~ THEN REPLY #2732 /* ~«Эй! Ты что творишь?!»~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2733 /* ~Позволить Осыпанному-Пеплом залезть в карман и проследить за его техникой.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2735 /* ~Позволить Осыпанному-Пеплом залезть в карман и проследить за его техникой.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2736 /* ~Позволить Осыпанному-Пеплом залезть в карман и проследить за его техникой.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2737 /* ~Атаковать его.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2738 /* ~Не обращать внимания на инцидент и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 5.0
  SAY #2156 /* ~Ты бы ничего и не заметил, если бы не был предупрежден о тленном-карманнике. Ты видишь, как во время одного из своих низких поклонов Посыпанный-Пеплом незаметно запускает руку в твой кошелек.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2739 /* ~Схватить его за руку.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2740 /* ~Схватить его за руку.~ */ GOTO 25
  IF ~~ THEN REPLY #2741 /* ~«Эй! Ты что творишь?!»~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2742 /* ~Позволить Осыпанному-Пеплом залезть в карман и проследить за его техникой.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2744 /* ~Позволить Осыпанному-Пеплом залезть в карман и проследить за его техникой.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2746 /* ~Позволить Осыпанному-Пеплом залезть в карман и проследить за его техникой.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2747 /* ~Атаковать его.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2748 /* ~Не обращать внимания на инцидент и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.2
  SAY #2157 /* ~Возможно, только благодаря собственным навыкам воровства ты не теряешь бдительности. Перед уходом ты инстинктивно бросаешь взгляд на свой кошелек... и видишь, как Осыпанный-Пеплом вытаскивает из него свою руку. Однако он, кажется, не знает, что ты его подловил.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2749 /* ~Схватить его за руку.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2750 /* ~Схватить его за руку.~ */ GOTO 25
  IF ~~ THEN REPLY #2751 /* ~«Эй! Ты что творишь?!»~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2752 /* ~Спровоцировать Осыпанного-Пеплом на воровство и проследить за его техникой.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2754 /* ~Спровоцировать Осыпанного-Пеплом на воровство и проследить за его техникой.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2755 /* ~Спровоцировать Осыпанного-Пеплом на воровство и проследить за его техникой.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2756 /* ~Атаковать его.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2760 /* ~Не обращать внимания на инцидент и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3 20.4 20.5 21.3 21.4 21.5 22.3 22.4 22.5 23.3 23.4 23.5
  SAY #2158 /* ~Под предлогом предоставления дополнительной информации о нужных направлениях по местам Улья ты вовлекаешь Осыпанного-Пеплом в непринужденный разговор, при этом украдкой следя за его движениями. Похоже, Осыпанный-Пеплом полностью уверился, что его маскировка под тленного сведет на нет подозрительность жертвы, и что частые поклоны прикроют его попытки залезть в карман. Ты мысленно отмечаешь его технику... вплоть до того момента, когда он в очередной раз пытается добраться до твоего кошелька.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2761 /* ~Схватить его за руку.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2762 /* ~Схватить его за руку.~ */ GOTO 25
  IF ~~ THEN REPLY #2777 /* ~«Эй! Ты что творишь?!»~ */ GOTO 18
  IF ~~ THEN REPLY #2778 /* ~Атаковать его.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2779 /* ~Не обращать внимания на инцидент и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 17.0 18.0 20.1 21.1 22.1 23.1 24.1
  SAY #2159 /* ~Твоя рука молниеносно выстреливает и хватает его запястье мертвой хваткой. Ты отмечаешь, что он уже не пытается строить из себя тленного, и, рыча, пытается вырваться из твоей руки. «Отпусти меня, псина, не то я позову стражу!»~ */
  IF ~~ THEN REPLY #2780 /* ~«*После* того, как ты ответишь на несколько вопросов, 'тленный'».~ */ GOTO 28
  IF ~~ THEN REPLY #12067 /* ~«Отдай мне все, что у тебя есть, ворюга, и я тебя отпущу».~ */ GOTO 28
  IF ~~ THEN REPLY #12068 /* ~«Стражу? Ага, давай, зови. Уверен, что здесь их — *как грязи*».~ */ GOTO 28
  IF ~~ THEN REPLY #12069 /* ~Атаковать его.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12070 /* ~Позволить ему уйти.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.1 18.1 20.0 21.0 22.0 23.0 24.0
  SAY #2160 /* ~Твоя рука молниеносно выстреливает, но тут Осыпанный-Пеплом внезапно отступает, и ты не дотягиваешься до его запястья. Ты наблюдаешь, как он сбрасывает свою маскировку и с ошалелым видом бросается наутек!~ */
  IF ~~ THEN REPLY #12071 /* ~«Проклятье...»~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.2 18.2
  SAY #2161 /* ~Осыпанный-Пеплом внезапно бросается наутек!~ */
  IF ~~ THEN REPLY #12072 /* ~«Проклятье...»~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.0 25.1 25.2
  SAY #2162 /* ~«Тьфу». Он выглядит более чем расстроенным. «Что меня выдало?»~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12073 /* ~«Меня предупредили, что кто-то вроде тебя под видом тленного обчищает карманы».~ */ GOTO 29
  IF ~  GlobalGT("Ash_Suspicious","GLOBAL",0)
~ THEN REPLY #12074 /* ~«Тебя выдало совершенное незнание основ философии тленных. Тебе следовало бы побольше изучить ее перед тем, как разводить кого-то умнее тебя. А теперь у меня есть к тебе вопросы...»~ */ GOTO 29
  IF ~~ THEN REPLY #12075 /* ~«Тебе бы поработать над своими воровскими навыками. А теперь у меня есть к тебе несколько вопросов...»~ */ GOTO 29
  IF ~~ THEN REPLY #12076 /* ~«Попробуй сам догадаться. А теперь у меня есть к тебе несколько вопросов...»~ */ GOTO 29
  IF ~~ THEN REPLY #12077 /* ~«Ты не доживешь до того, чтобы выяснить это. Готовься к смерти».~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1 28.2 28.3 30.0 32.1 33.0 35.0 36.1 41.0
  SAY #2163 /* ~«Ну и что у тебя за вопросы?»~ */
  IF ~~ THEN REPLY #12078 /* ~«Что ты делаешь в этом наряде тленного?»~ */ GOTO 30
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12079 /* ~«Я ищу кое-кого по имени Фарод. Знаешь такого?»~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12080 /* ~«Я ищу дневник».~ */ GOTO 35
  IF ~  Global("Shake_Ash","GLOBAL",0)
~ THEN REPLY #12081 /* ~Правда: «Отдай мне все, что у тебя есть, или я убью тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
~ GOTO 31
  IF ~  Global("Shake_Ash","GLOBAL",0)
~ THEN REPLY #12082 /* ~Блеф: «Отдай мне все, что у тебя есть, или я убью тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~  Global("Shake_Ash","GLOBAL",1)
~ THEN REPLY #12083 /* ~Правда: «А теперь... отдай мне *все*, что у тебя есть, или я убью тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
~ GOTO 33
  IF ~  Global("Shake_Ash","GLOBAL",1)
~ THEN REPLY #12084 /* ~Блеф: «А теперь... отдай мне *все*, что у тебя есть, или я убью тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #12085 /* ~«Мой вопрос: сколько секунд мне понадобится, чтобы убить тебя... приготовься умереть».~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12086 /* ~«Проваливай отсюда. Еще раз увижу — прирежу».~ */ GOTO 19
  IF ~~ THEN REPLY #12087 /* ~«А теперь уходи. И больше даже и *не вздумай* проворачивать свои аферы с кем-нибудь в Сигиле. Все понятно?»~ */ GOTO 19
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #2164 /* ~Он пожимает плечами. «Никто не заподозрит тленного, — он глупо смеется. — Можно наварить неплохой куш, пока кто-нибудь не поймает на афере».~ */
  IF ~~ THEN REPLY #12088 /* ~«Интересно. У меня есть другие вопросы...»~ */ GOTO 29
  IF ~~ THEN REPLY #12089 /* ~«Это все, что я хотел узнать. Приготовься к смерти».~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12090 /* ~«Понятно. Значит, так, Осыпанный-Пеплом: больше здесь не появляйся. Если увижу — прирежу. А теперь проваливай».~ */ GOTO 19
  IF ~~ THEN REPLY #12091 /* ~«Ага, очень умно. Значит так, больше даже и *не вздумай* проворачивать свои аферы с кем-нибудь в Сигиле. Все понятно?»~ */ GOTO 19
END

IF ~~ THEN BEGIN 31 // from: 29.3 29.4
  SAY #2165 /* ~Глаза мужчины сужаются. «У меня ничего нет. Ты — моя первая жертва за сегодня».~ */
  IF ~~ THEN REPLY #12092 /* ~Блеф: «Теперь ты уже не косишь под дурачка — ты и *есть* дурак. Давай все, что у тебя есть, или сборщики найдут новое тело на улице».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
SetGlobal("Shake_Ash","GLOBAL",1)
GiveGoldForce(50)
~ GOTO 32
  IF ~~ THEN REPLY #12093 /* ~Правда: «Теперь ты уже не косишь под дурачка — ты и *есть* дурак. Давай все, что у тебя есть, или сборщики найдут новое тело на улице».~ */ DO ~GiveGoldForce(50)
IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
SetGlobal("Shake_Ash","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #12094 /* ~«Неправильный ответ. Готовься к смерти».~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12095 /* ~«Что, правда? Тогда давай-ка тебя немного потрясем и посмотрим, так ли это».~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #2166 /* ~Он ворчит, пытаясь оценить шансы разобраться с тобой, но затем, трезво оценив обстановку, касается внутренней прокладки своей мантии. Резко дергая рукой, он разрывает мантию и вытаскивает оттуда небольшую кучку медяков. Ты бы ни за что не нашел их, если бы он сам не показал.~ */
  IF ~~ THEN REPLY #12096 /* ~«И это все? Лучше тебе иметь что-нибудь получше для меня, Осыпанный-Пеплом, иначе вмиг подружишься со своей смертью».~ */ GOTO 33
  IF ~~ THEN REPLY #12097 /* ~«Вот и хорошо. А теперь у меня есть к тебе вопросы...»~ */ GOTO 29
  IF ~~ THEN REPLY #12098 /* ~«Это все, что я хотел. Готовься к смерти».~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12099 /* ~«Проваливай отсюда. Еще раз увижу — прирежу».~ */ GOTO 19
  IF ~~ THEN REPLY #12100 /* ~«А теперь уходи. И больше даже и *не вздумай* проворачивать свои аферы с кем-нибудь в Сигиле. Все понятно?»~ */ GOTO 19
END

IF ~~ THEN BEGIN 33 // from: 29.5 29.6 32.0
  SAY #2167 /* ~Он скалит зубами. «У меня больше ничего нет».~ */
  IF ~~ THEN REPLY #12101 /* ~«Вот и хорошо. А теперь у меня есть к тебе вопросы...»~ */ GOTO 29
  IF ~~ THEN REPLY #12102 /* ~«Что, правда? Тогда давай-ка тебя немного потрясем и посмотрим, так ли это».~ */ GOTO 34
  IF ~~ THEN REPLY #12103 /* ~«Неправильный ответ. Готовься к смерти».~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12104 /* ~«Проваливай отсюда. Еще раз увижу — прирежу».~ */ GOTO 19
  IF ~~ THEN REPLY #12105 /* ~«А теперь уходи. И больше даже и *не вздумай* проворачивать свои аферы с кем-нибудь в Сигиле. Все понятно?»~ */ GOTO 19
END

IF ~~ THEN BEGIN 34 // from: 31.3 33.1
  SAY #2168 /* ~Ты пытаешься обыскать его, но внезапно из его рукава появляется кинжал. Рыча, он нападает на тебя!~ */
  IF ~~ THEN REPLY #12106 /* ~«Ну хорошо...»~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.2
  SAY #2169 /* ~Мужчина хмурится. «И? Ты думаешь, я обращаю внимание на такие вещи? Я работаю только со звенелками, пень».~ */
  IF ~~ THEN REPLY #12107 /* ~«Ну хорошо, у меня есть другие вопросы...»~ */ GOTO 29
  IF ~~ THEN REPLY #12108 /* ~«Это все, что я хотел узнать. Приготовься к смерти».~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12109 /* ~«Проваливай отсюда. Еще раз увижу — прирежу».~ */ GOTO 19
  IF ~~ THEN REPLY #12110 /* ~«А теперь уходи. И больше даже и *не вздумай* проворачивать свои аферы с кем-нибудь в Сигиле. Все понятно?»~ */ GOTO 19
END

IF ~~ THEN BEGIN 36 // from: 29.1
  SAY #2170 /* ~«А что с ним?»~ */
  IF ~~ THEN REPLY #12111 /* ~«Кто он такой?»~ */ GOTO 37
  IF ~~ THEN REPLY #12112 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 29
  IF ~~ THEN REPLY #12113 /* ~«Забудь. Готовься к смерти».~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12114 /* ~«Проваливай отсюда. Еще раз увижу — прирежу».~ */ GOTO 19
  IF ~~ THEN REPLY #12115 /* ~«А теперь уходи. И больше даже и *не вздумай* проворачивать свои аферы с кем-нибудь в Сигиле. Все понятно?»~ */ GOTO 19
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #2171 /* ~«А ты меня отпустишь, если скажу?»~ */
  IF ~~ THEN REPLY #12116 /* ~«Нет».~ */ GOTO 38
  IF ~~ THEN REPLY #12117 /* ~Клятва: «Даю слово, что я отпущу тебя... если ты ответишь на мой вопрос».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",2)
~ GOTO 39
  IF ~~ THEN REPLY #12118 /* ~Правда: «Да».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #12119 /* ~Ложь: «Да».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_3","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12120 /* ~Правда: «Я оставлю тебя *в живых*, если ты скажешь».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_8","GLOBALGood",-1)
~ GOTO 38
  IF ~~ THEN REPLY #12121 /* ~Блеф: «Я оставлю тебя *в живых*, если ты скажешь».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_5","GLOBALLaw",-1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.4 37.5
  SAY #2172 /* ~Он сплевывает на землю. «Тогда мне нечего сказать по этому поводу».~ */
  IF ~~ THEN REPLY #12122 /* ~Клятва: «Хорошо. Даю слово, что я отпущу тебя... если ты ответишь на мой вопрос».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",2)
~ GOTO 39
  IF ~~ THEN REPLY #12123 /* ~Правда: «Хорошо, я отпущу тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #12124 /* ~Ложь: «Хорошо, я отпущу тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_4","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12125 /* ~Правда: «Я оставлю тебя *в живых*, если ты скажешь».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_8","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12126 /* ~Блеф: «Я оставлю тебя *в живых*, если ты скажешь».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_5","GLOBALLaw",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12127 /* ~«Неправильный ответ. Готовься к смерти».~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1 37.2 37.3 38.0 38.1 38.2 38.3 38.4
  SAY #2173 /* ~«Фарод — босс сборщиков. Под его властью много мальчиков на побегушках, и поговаривают, что у него все схвачено. Больше об этом я ничего не знаю. Я бы был настороже, если бы имел с ним дело».~ */
  IF ~~ THEN REPLY #12128 /* ~«Где я могу найти его?»~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #2174 /* ~«Его берлога находится на площади Старьевщиков... это такая большая куча тряпок и всякого мусора к северо-западу отсюда. Иди через северные ворота до тех пор, пока не уткнешься в нее. Говорят, что Фарод прячется под какой-то мусорной кучей, может, даже похоронен под ней. Кто знает? Теперь ты меня отпустишь?»~ */
  IF ~  Global("Lawful_Ash_1","GLOBAL",0)
~ THEN REPLY #12129 /* ~«Нет. У меня есть другие вопросы к тебе...»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_2","GLOBALLaw",-1)
~ GOTO 41
  IF ~  Global("Lawful_Ash_1","GLOBAL",1)
~ THEN REPLY #12130 /* ~«Нет. У меня есть другие вопросы к тебе...»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_6","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ash_9","GLOBALGood",-1)
~ GOTO 41
  IF ~~ THEN REPLY #12131 /* ~«Это все, что я хотел узнать. Готовься к смерти».~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12132 /* ~«Проваливай отсюда. Еще раз увижу — прирежу».~ */ GOTO 19
  IF ~~ THEN REPLY #12133 /* ~«А теперь уходи. И больше даже и *не вздумай* проворачивать свои аферы с кем-нибудь в Сигиле. Все понятно?»~ */ GOTO 19
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #2175 /* ~Он выглядит разозленным. «Ты *говорил*, что отпустишь меня».~ */
  IF ~~ THEN REPLY #12134 /* ~«А *ты* говорил, что ты — тленный. А теперь насчет моих вопросов...»~ */ GOTO 29
  IF ~~ THEN REPLY #12135 /* ~«Да, я много чего говорил, и теперь мне надоело с тобой разговаривать. Готовься к смерти».~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12136 /* ~«Проваливай отсюда. Еще раз увижу — прирежу».~ */ GOTO 19
  IF ~~ THEN REPLY #12137 /* ~«А теперь уходи. И больше даже и *не вздумай* проворачивать свои аферы с кем-нибудь в Сигиле. Все понятно?»~ */ GOTO 19
END

IF WEIGHT #1 /* Triggers after states #: 44 even though they appear after this state */
~  GlobalGT("Ashmantle","GLOBAL",0)
~ THEN BEGIN 42 // from:
  SAY #2176 /* ~Ты снова видишь Осыпанного-Пеплом... он все еще выглядит потерянным и что-то бормочет, пялясь на здания.~ */
  IF ~  Global("Directed_Ashmantle","GLOBAL",0)
~ THEN REPLY #12138 /* ~«Приветствую».~ */ GOTO 45
  IF ~  Global("Directed_Ashmantle","GLOBAL",1)
~ THEN REPLY #12139 /* ~«Приветствую».~ */ GOTO 43
  IF ~~ THEN REPLY #12140 /* ~Пройти мимо.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY #2177 /* ~«Боюсь, что я забыл направление, сэр. Могу ли я еще раз услышать, как мне попасть в назначенное место?»~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12141 /* ~«Знаешь, тут ходят слухи о карманном воре, который наряжается как тленный. Ты случайно его не знаешь?»~ */ GOTO 18
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12142 /* ~«А, бар тленных? Он рядом с Моргом. Иди от главных ворот Морга строго на юго-запад. Ты его не пропустишь».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12143 /* ~«Я слыхал о нем. Я помогу тебе... в обмен на награду».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12144 /* ~«Я слыхал о нем. Я помогу тебе... если ты ответишь на мои вопросы».~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12145 /* ~Ложь: «Э-э-э... ага, я слыхал о нем. Я помогу тебе... в обмен на награду».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12146 /* ~Ложь: «Э-э-э... ага, я слыхал о нем. Я помогу тебе... если ты ответишь на мои вопросы».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12147 /* ~«Я не могу помочь тебе. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12148 /* ~«Я не могу помочь тебе. Прощай».~ */ GOTO 5
END

IF WEIGHT #0 ~  Global("Remove_Ash","GLOBAL",1)
~ THEN BEGIN 44 // from:
  SAY #2178 /* ~«Я ухожу! Оставь меня в покое!»~ */
  IF ~~ THEN REPLY #12149 /* ~«Советую тебе поторопиться».~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.0
  SAY #2179 /* ~«Я помню, что раньше вы не смогли помочь мне, сэр. Возможно, в этот раз вы сможете подсказать, где находится бар, в котором часто бывают члены моей секты?»~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12150 /* ~«Знаешь, тут ходят слухи о карманном воре, который наряжается как тленный. Ты случайно его не знаешь?»~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #12151 /* ~«Секты? Ты, наверное, имел в виду фракции?»~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #12152 /* ~«Секты? Ты ведь тленный. Наверное, ты имел в виду фракции?»~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12153 /* ~«А, бар тленных? Он рядом с Моргом. Иди от главных ворот Морга строго на юго-запад. Ты его не пропустишь».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12154 /* ~«Я слыхал о нем. Я помогу тебе... в обмен на награду».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12155 /* ~«Я слыхал о нем. Я помогу тебе... если ты ответишь на мои вопросы».~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12156 /* ~Ложь: «Э-э-э... ага, я слыхал о нем. Я помогу тебе... в обмен на награду».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12157 /* ~Ложь: «Э-э-э... ага, я слыхал о нем. Я помогу тебе... если ты ответишь на мои вопросы».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12158 /* ~«Я не могу помочь тебе. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12159 /* ~«Я не могу помочь тебе. Прощай».~ */ GOTO 5
END
