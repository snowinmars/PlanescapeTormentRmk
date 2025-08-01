// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DR_BONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DR_BONE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49641 /* ~Этот парень насвистывает веселый мотивчик и балуется ухоженным боевым ножом. При твоем приближении он прекращает свистеть и с любопытством смотрит на тебя. «М-м? Че надо?»~ */
  IF ~~ THEN REPLY #49642 /* ~«У меня есть несколько вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #49643 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49644 /* ~Этот парень все еще насвистывает веселый мотив, вертя в руках свой зловещего вида нож. При твоем приближении он прекращает свистеть и бросает на тебя скучающий взгляд. «Че на этот раз, а?»~ */
  IF ~~ THEN REPLY #49645 /* ~«У меня есть несколько вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #49646 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #49647 /* ~«Меня звать Крыс, рубака. Я — наемный вор на службе у Могильника, босса сборщиков на этой площади. Он платит мне по большей части за то, чтоб я учил его парней не шуметь и драться на случай, если попадешь в переплет. Вот, походу, и все вопросы, на которые я тебе отвечу, рубака». Он шмыгает носом и пожимает плечами.~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49648 /* ~«Наемный вор? Меня можешь обучить?»~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49649 /* ~«Ты знаешь, как пройти через забитый мусором проход на северо-западе отсюда?»~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Человек по имени Крыс сказал, что если я хочу пробраться через забитый хламом проход на площади Старьевщиков, мне следует обратиться к человеку по имени Креден. Он сказал, что Креден должен быть где-то в Улье, неподалеку от Управления по борьбе с вредителями и заболеваниями.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49650 /* ~«Я ищу человека по имени Фарод. Ты не знаешь, где его можно найти?»~ */ GOTO 4
  IF ~~ THEN REPLY #49651 /* ~«Где можно найти того парня, Могильника?»~ */ GOTO 3
  IF ~~ THEN REPLY #49652 /* ~«Тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 4.2 5.3 6.2 9.2 11.2
  SAY #49654 /* ~Он кивает в сторону большого ветхого здания позади себя. «Только поосторожней там, рубака. Гостей он не любит. Никому не доверяет. Могильник даже не его настоящее имя... просто мы его так зовем».~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49655 /* ~«Говоришь, ты — наемный вор? Можешь меня обучить?»~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49656 /* ~«Ты знаешь, как пройти через забитый мусором проход на северо-западе отсюда?»~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Человек по имени Крыс сказал, что если я хочу пробраться через забитый хламом проход на площади Старьевщиков, мне следует обратиться к человеку по имени Креден. Он сказал, что Креден должен быть где-то в Улье, неподалеку от Управления по борьбе с вредителями и заболеваниями.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49657 /* ~«Я ищу человека по имени Фарод. Ты не знаешь, где его можно найти?»~ */ GOTO 4
  IF ~~ THEN REPLY #49658 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.2 5.2 6.1 9.1 11.1
  SAY #49659 /* ~Крыс качает головой. «Не-а, не знаю. Но слыхал, что он где-то неподалеку. Кое-кто из его парней временами здесь мелькает; ходят куда-то по каким-то своим нычкам. Могу поспорить, он где-то там, наверху, на помосте, но мне до этого нет дела, — он пожимает плечами и сплевывает. — Живи и другим дай жить — так говорит Крыс».~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49660 /* ~«Говоришь, ты — наемный вор? Можешь меня обучить?»~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49661 /* ~«Ты знаешь, как пройти через забитый мусором проход на северо-западе отсюда?»~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Человек по имени Крыс сказал, что если я хочу пробраться через забитый хламом проход на площади Старьевщиков, мне следует обратиться к человеку по имени Креден. Он сказал, что Креден должен быть где-то в Улье, неподалеку от Управления по борьбе с вредителями и заболеваниями.~ */ GOTO 5
  IF ~~ THEN REPLY #49662 /* ~«Твой босс, случайно... не Могильник?»~ */ GOTO 3
  IF ~~ THEN REPLY #49663 /* ~«Тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 4.1 9.0 11.0
  SAY #49664 /* ~«А? Не-а, не знаю. Слышь... можешь спросить у Кредена, крысолова. Временами он здесь ошивается, потом на время исчезает. Обычно его можно найти в Улье, прям возле Управления по борьбе с вредителями и болезнями».~ */
  IF ~~ THEN REPLY #49665 /* ~«Управления по... чему? Это еще где?»~ */ GOTO 6
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49666 /* ~«Говоришь, ты — наемный вор? Можешь меня обучить?»~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49667 /* ~«Я ищу человека по имени Фарод. Ты не знаешь, где его можно найти?»~ */ GOTO 4
  IF ~~ THEN REPLY #49668 /* ~«Твой босс, случайно... не Могильник?»~ */ GOTO 3
  IF ~~ THEN REPLY #49669 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #49670 /* ~Крыс смотрит на тебя неодобрительно. «Возвращайся в Улей, рубака. Если нужно, спроси у осведомителя».~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49671 /* ~«Говоришь, ты — наемный вор? Можешь меня обучить?»~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49672 /* ~«Я ищу человека по имени Фарод. Ты не знаешь, где его можно найти?»~ */ GOTO 4
  IF ~~ THEN REPLY #49673 /* ~«Твой босс, случайно... не Могильник?»~ */ GOTO 3
  IF ~~ THEN REPLY #49674 /* ~«Тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 3.0 4.0 5.1 6.0
  SAY #49675 /* ~«За звенелки — без проблем. Раньше учился?»~ */
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #49676 /* ~«Да».~ */ GOTO 23
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #49677 /* ~«Нет».~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #49678 /* ~«Хорошо. Теперь я дам тебе затрещину, а ты уклоняйся». Внезапно он наносит тебе удар ладонью по голове.~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
~ THEN REPLY #49679 /* ~Уклониться от удара.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #49680 /* ~Уклониться от удара.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #49681 /* ~Несмотря на твою попытку уклониться, Крыс звонко шлепает тебя по затылку. «Извини, рубака: слишком уж ты тормозной».~ */
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49682 /* ~«Ты знаешь, как пройти через забитый мусором проход на северо-западе отсюда?»~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Человек по имени Крыс сказал, что если я хочу пробраться через забитый хламом проход на площади Старьевщиков, мне следует обратиться к человеку по имени Креден. Он сказал, что Креден должен быть где-то в Улье, неподалеку от Управления по борьбе с вредителями и заболеваниями.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49683 /* ~«Я ищу человека по имени Фарод. Ты не знаешь, где его можно найти?»~ */ GOTO 4
  IF ~~ THEN REPLY #49684 /* ~«Твой босс, случайно... не Могильник?»~ */ GOTO 3
  IF ~~ THEN REPLY #49685 /* ~«Тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #49686 /* ~Ты уклоняешься от удара Крыса. «Неплохо, рубака. Теперь подкинь немного звенелок... пятьдесят монет — и я тебя вышколю».~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #49687 /* ~«Хорошо. Держи...»~ */ DO ~TakePartyGold(50)
~ GOTO 12
  IF ~  PartyGoldLT(50)
~ THEN REPLY #49688 /* ~«У меня нет столько...»~ */ GOTO 11
  IF ~~ THEN REPLY #49689 /* ~«Нет, спасибо».~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.2 24.1 24.2
  SAY #49690 /* ~Крыс безучастно пожимает плечами.~ */
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49691 /* ~«Ты знаешь, как пройти через забитый мусором проход на северо-западе отсюда?»~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Человек по имени Крыс сказал, что если я хочу пробраться через забитый хламом проход на площади Старьевщиков, мне следует обратиться к человеку по имени Креден. Он сказал, что Креден должен быть где-то в Улье, неподалеку от Управления по борьбе с вредителями и заболеваниями.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49692 /* ~«Я ищу человека по имени Фарод. Ты не знаешь, где его можно найти?»~ */ GOTO 4
  IF ~~ THEN REPLY #49693 /* ~«Твой босс, случайно... не Могильник?»~ */ GOTO 3
  IF ~~ THEN REPLY #49694 /* ~«Тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #49695 /* ~«Ты ведь в курсе, что тебе придется бросить все, чем ты сейчас занимаешься, так? Ты не можешь быть воином и вором *в придачу*. Тебя это устроит, рубака?»~ */
  IF ~~ THEN REPLY #49696 /* ~«Да».~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 13
  IF ~~ THEN REPLY #49697 /* ~«Нет, не думаю. Заберу-ка я свою медь... прощай, Крыс».~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #49698 /* ~«Тогда приступим. Чему я тебя обучу, так это шести лучшим друзьям вора: как красться, прятаться, взламывать замки, обчищать карманы, находить и обезвреживать ловушки, и мое любимое: закалывать пней в спину».~ */
  IF ~~ THEN REPLY #49699 /* ~«Продолжай...»~ */ GOTO 14
  IF ~~ THEN REPLY #49700 /* ~«Крыс, кажется, основы я уяснил. Перейдем к тренировкам».~ */ GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #49701 /* ~«Красться, то есть прятаться в тенях и двигаться бесшумно, — штука полезная. Лучше быть живым негодяем, чем мертвым рубакой, так ведь? Так ты не только избежишь тумаков, но еще сможешь поудобнее пристроиться, а если *хочешь* кого-то заколоть... но об этом позже. Только имей в виду: красться не выйдет, если кто-то тебя уже заметил».~ */
  IF ~~ THEN REPLY #49702 /* ~«Продолжай...»~ */ GOTO 15
  IF ~~ THEN REPLY #49703 /* ~«Крыс, кажется, основы я уяснил. Перейдем к тренировкам».~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #49704 /* ~«Взламывать замки и чистить карманы — тоже дело полезное... плюс к основному доходу, типа того. Только будь готов дать деру, если поймают за руку с кражей, и всегда ищи ловушки, взламывая подозрительные замки. Если хочешь найти ловушки, просто осмотрись, не спеша и внимательно... временами у тебя будет уходить пару мгновений, чтоб найти их».~ */
  IF ~~ THEN REPLY #49705 /* ~«Продолжай...»~ */ GOTO 16
  IF ~~ THEN REPLY #49706 /* ~«Крыс, кажется, основы я уяснил. Перейдем к тренировкам».~ */ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #49707 /* ~«А уж если *найдешь* ловушку, воспользуйся своей сноровкой и обезвредь эту чертову штуку. Это очень похоже на взлом замка с хитрым секретом».~ */
  IF ~~ THEN REPLY #49708 /* ~«Продолжай...»~ */ GOTO 17
  IF ~~ THEN REPLY #49709 /* ~«Крыс, кажется, основы я уяснил. Перейдем к тренировкам».~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49710 /* ~«И последнее, чему я тебя научу — это *удар в спину*, — Крыс радостно вздыхает. — Если ты сумел тихо подобраться к мерзавцу и хочешь начать разборки — просто вдарь бедолаге в спину. У тебя будет больше шансов попасть, да и при том удар выйдет посильнее».~ */
  IF ~~ THEN REPLY #49711 /* ~«Хорошо. Перейдем к обучению».~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 13.1 14.1 15.1 16.1 17.0
  SAY #49712 /* ~Крыс кивает. «Ладно, рубака... для начала, тебе нужно расслабиться. Ты слишком напряжен. Временами тебе придется полагаться на свое чутье...» И так начинается твое обучение на вора.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #49713 /* ~Выучить все, что сможешь.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Я выучился на вора у человека по имени Крыс, которого встретил на площади Старьевщиков.~ */ GOTO 19
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #49714 /* ~Выучить все, что сможешь.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Я выучился на вора у человека по имени Крыс, которого встретил на площади Старьевщиков.~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #49715 /* ~Выучить все, что сможешь.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Я выучился на вора у человека по имени Крыс, которого встретил на площади Старьевщиков.~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #49716 /* ~Выучить все, что сможешь.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Я выучился на вора у человека по имени Крыс, которого встретил на площади Старьевщиков.~ */ GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #49718 /* ~После длительного обучения Крыс удовлетворенно кивает тебе. «Должен признаться, рубака: никогда еще мне не попадался такой способный ученик. Я бы даже сказал, что ты все это уже раньше делал!»~ */
  IF ~~ THEN REPLY #49719 /* ~«Может, оно и так, Крыс, и я просто все забыл. Спасибо и прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #49720 /* ~После длительного обучения Крыс удовлетворенно кивает тебе. «Должен признаться, рубака: никогда еще мне не попадался такой способный ученик. Я бы даже сказал, что ты все это уже раньше делал!» Как только Крыс это произносит, ты вдруг осознаешь, что уже *делал* все это раньше... что когда-то ты владел всеми этими навыками, а обучение просто пробудило их.~ */
  IF ~~ THEN REPLY #49721 /* ~«Может, оно и так, Крыс, и я просто все забыл. Спасибо и прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.2 18.3
  SAY #49722 /* ~После длительного обучения Крыс удовлетворенно кивает тебе. «Должен признаться, рубака: никогда еще мне не попадался такой способный ученик. Я бы даже сказал, что ты все это уже раньше делал!» Как только Крыс это произносит, ты вдруг осознаешь, что уже *делал* все это раньше... что когда-то ты владел всеми этими навыками.~ */
  IF ~~ THEN REPLY #49723 /* ~«Может, оно и так, Крыс, и я просто все забыл. Спасибо и прощай».~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #49724 /* ~Как только воспоминания о том, как ты бродил по темным коридорам и обходил смертельные ловушки, обретают четкость, тебе удается вспомнить достаточно для того, чтобы «научиться» большему, чем Крыс тебя обучил.~ */
  IF ~~ THEN REPLY #49725 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.0
  SAY #49726 /* ~«Не уверен, смогу ли я чему-то научить тебя, рубака — ты и так ученый. Но если забросишь воровство ради другого дела, типа ратного дела или магии, я смогу снова ввести тебя в курс дела».~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49727 /* ~«Я хочу снова стать вором, Крыс».~ */ GOTO 24
  IF ~~ THEN REPLY #49728 /* ~«Понятно. Прощай, Крыс».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #49729 /* ~Крыс кивает. «Теперь подкинь немного звенелок... пятьдесят монет — и я тебя вышколю».~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #49730 /* ~«Хорошо. Держи...»~ */ DO ~TakePartyGold(50)
~ GOTO 25
  IF ~  PartyGoldLT(50)
~ THEN REPLY #49731 /* ~«У меня нет столько...»~ */ GOTO 11
  IF ~~ THEN REPLY #49732 /* ~«Нет, спасибо».~ */ GOTO 11
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #49733 /* ~«Ты ведь в курсе, что тебе придется бросить все, чем ты сейчас занимаешься, так? Ты не можешь быть воином и вором *в придачу*. Тебя это устроит, рубака?»~ */
  IF ~~ THEN REPLY #49734 /* ~«Да».~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 26
  IF ~~ THEN REPLY #49735 /* ~«Нет, не думаю. Заберу-ка я свою медь... прощай, Крыс».~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #49736 /* ~«Ты быстро учишься, рубака... очень быстро, — он окидывает тебя заинтересованным взглядом, потом пожимает плечами. — Вот и все. Теперь ты снова в деле».~ */
  IF ~~ THEN REPLY #49737 /* ~«Спасибо, Крыс. Прощай».~ */ EXIT
END
