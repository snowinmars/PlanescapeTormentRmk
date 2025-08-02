// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKNFGHL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DKNFGHL~

IF ~  NumTimesTalkedTo(0)
HasItem("UhrKnf",Myself)
~ THEN BEGIN 0 // from:
  SAY #23790 /* ~Лицо этого упыря пересекает глубокий порез, а один из его глаз полностью уничтожен. Несмотря на сравнительную свежесть раны, она, похоже, не причиняет этому зловонному существу никаких неудобств. Ты замечаешь грязный нож, заткнутый за его пояс... на его рукоятке вырезана надпись «ЮХИР».~ */
  IF ~~ THEN REPLY #23791 /* ~«Приветствую...»~ */ GOTO 1
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf",Myself)
~ THEN REPLY #23808 /* ~«Э... можно взять тот нож, что у тебя за поясом?»~ */ GOTO 5
  IF ~~ THEN REPLY #23811 /* ~Оставить упыря в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0
  SAY #23812 /* ~Упырь прищуривается и рычит на тебя. Его язык, не менее двух ладоней в длину, высовывается и облизывает покрытые струпьями губы.~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23813 /* ~«Э... можно взять тот нож, что у тебя за поясом?»~ */ GOTO 5
  IF ~  HasItem("UhrKnf","KnfGhl")
!Global("Uhir","GLOBAL",2)
~ THEN REPLY #23814 /* ~«Ты... Юхир?»~ */ GOTO 2
  IF ~~ THEN REPLY #23815 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #23816 /* ~«Мне уже нужно идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #23817 /* ~Упырь продолжает жадно глядеть на тебя. Он стискивает и разжимает когтистые кулаки, будто борясь с желанием броситься на тебя и сожрать.~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23818 /* ~«Э... можно взять тот нож, что у тебя за поясом?»~ */ GOTO 5
  IF ~~ THEN REPLY #23819 /* ~«Успокойся и ответь на мои вопросы».~ */ GOTO 3
  IF ~~ THEN REPLY #23820 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #23821 /* ~Упырь шипит на тебя: «Молчать, мясо! Ни слова! Я не слушаю мясных тварей! Я слышу только твое сердце, кровь в мясных венах, сладкую, вкусную кровь... вкусное сочное сердце... — из его рта течет слюна, капая на пыльные плиты. — МОЛЧАТЬ!»~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23822 /* ~«Э... можно взять тот нож, что у тебя за поясом?»~ */ GOTO 5
  IF ~~ THEN REPLY #23823 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
HasItem("UhrKnf",Myself)
~ THEN BEGIN 4 // from:
  SAY #23824 /* ~Лицо этого упыря пересекает глубокий порез, а один из его глаз полностью уничтожен. Ты замечаешь грязный нож, заткнутый за его пояс. При твоем приближении он начинает шипеть: «Прочь! Убирайся прочь! Я не *разговариваю* с мясной тварью, я не *слушаю*, мясо! УХОДИ!»~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf",Myself)
~ THEN REPLY #23825 /* ~«Э... можно взять тот нож, что у тебя за поясом?»~ */ GOTO 5
  IF ~~ THEN REPLY #23826 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.0 2.0 3.0 4.0
  SAY #23827 /* ~Упырь смотрит на нож и чешет голову, будто удивляясь, как он туда попал. Наконец он обращает на тебя взгляд и дарит тебе хитрую клыкастую ухмылку... «Мясо хочет ножик? Мясо будет меняться, да?..»~ */
  IF ~  NumItemsPartyGT("Tail",0)
NumItemsPartyLT("Tail",6)
~ THEN REPLY #23828 /* ~«Как насчет этих крысиных хвостиков?»~ */ GOTO 7
  IF ~  NumItemsPartyGT("Tail",5)
~ THEN REPLY #23829 /* ~«Как насчет этих крысиных хвостиков?»~ */ DO ~GiveItem("UhrKnf",Protagonist)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
AddexperienceParty(600)
~ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY #23830 /* ~«Я мог бы подкинуть тебе меди...»~ */ GOTO 6
  IF ~  PartyGold(0)
~ THEN REPLY #23831 /* ~«Но у меня нет денег».~ */ GOTO 6
  IF ~~ THEN REPLY #23832 /* ~«Дай-ка его мне, упырь... не то мне не придется самому его забрать».~ */ GOTO 9
  IF ~~ THEN REPLY #23833 /* ~«Тогда неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 5.3 9.2 9.3
  SAY #23834 /* ~Упырь мотает головой, потом показывает на свой рот. «Нет, нет... еда, мясо...» Он вываливает свой длинный серый язык, тошнотворно пуская слюну.~ */
  IF ~~ THEN REPLY #23835 /* ~«Тогда я вернусь, когда раздобуду тебе что-нибудь поесть».~ */ JOURNAL #23836 /* ~Я нашел упыря с ножом Юхира. В обмен на нож он хочет еды... возможно, я найду или убью здесь что-нибудь, типа крыс, и накормлю его.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 9.0
  SAY #23837 /* ~Упырь критически осматривает их. «Да, вкусные, но мелкие. Больше, мясо... больше! Аппетитнее!»~ */
  IF ~~ THEN REPLY #23838 /* ~«Тогда я принесу еще».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 9.1
  SAY #23839 /* ~«Да, да!» — упырь жадно хватает их и проглатывает. Облизав свои когтистые пальцы дочиста, он бросает тебе нож Юхира.~ */
  IF ~~ THEN REPLY #23840 /* ~«Э... спасибо. Прощай».~ */ DO ~SetGlobal("DN_Knife","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.4
  SAY #23841 /* ~«Хссст! Ты мясо, вкусное, красное, сочное мясо — не угрожай! Мясо хочет ножик? Мясо будет меняться!»~ */
  IF ~  NumItemsPartyGT("Tail",0)
NumItemsPartyLT("Tail",6)
~ THEN REPLY #23842 /* ~«Как насчет этих крысиных хвостиков?»~ */ GOTO 7
  IF ~  NumItemsPartyGT("Tail",5)
~ THEN REPLY #23843 /* ~«Как насчет этих крысиных хвостиков?»~ */ DO ~GiveItem("UhrKnf",Protagonist)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
AddexperienceParty(600)
~ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY #23845 /* ~«Я мог бы подкинуть тебе меди...»~ */ GOTO 6
  IF ~  PartyGold(0)
~ THEN REPLY #23846 /* ~«Но у меня нет денег».~ */ GOTO 6
  IF ~~ THEN REPLY #23847 /* ~«Тогда неважно. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
!HasItem("UhrKnf",Myself)
~ THEN BEGIN 10 // from:
  SAY #23848 /* ~Лицо этого упыря пересекает глубокий порез, а один из его глаз полностью уничтожен. Несмотря на сравнительную свежесть раны, она, похоже, не причиняет этому зловонному существу никаких неудобств.~ */
  IF ~~ THEN REPLY #23849 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #23850 /* ~Оставить упыря в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!HasItem("UhrKnf",Myself)
~ THEN BEGIN 11 // from:
  SAY #23851 /* ~Лицо этого упыря пересекает глубокий порез, а один из его глаз полностью уничтожен. При твоем приближении он начинает шипеть: «Прочь! Убирайся прочь! Я не *разговариваю* с мясной тварью, я не *слушаю*, мясо! УХОДИ!»~ */
  IF ~~ THEN REPLY #23852 /* ~Уйти.~ */ EXIT
END
