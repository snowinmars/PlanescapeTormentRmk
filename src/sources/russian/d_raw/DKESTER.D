// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKESTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DKESTER~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  CreatureInArea("AR3016")
GlobalGT("Mob_Dead","AR3016",2)
~ THEN BEGIN 0 // from:
  SAY #58985 /* ~«Спасибо за помощь. Постараюсь сплотить моих приятелей... — он делает паузу. — Какие уж они ни есть. Увидимся».~ */
  IF ~~ THEN REPLY #58986 /* ~«Удачи. Прощай».~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalLT("Mediate","GLOBAL",4)
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #58987 /* ~Перед тобой худощавый мужчина с черной от загара кожей и пронзительными зелеными глазами. «Добро пожаловать в Винокурню братьев Малако! — кричит он, словно впервые за многие годы увидев человека. — Чем я могу помочь тебе?»~ */
  IF ~~ THEN REPLY #58988 /* ~«Кто ты?»~ */ GOTO 2
  IF ~~ THEN REPLY #58989 /* ~«Что это за место?»~ */ GOTO 3
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #58990 /* ~«Насколько я понимаю, у тебя небольшие проблемы со своим братом. Я бы хотел тебе помочь».~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #58991 /* ~«Ты что-нибудь слышал о дэва в этом городе?»~ */ GOTO 4
  IF ~~ THEN REPLY #58992 /* ~«Я хотел бы кое-что купить».~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #58993 /* ~«Меня прислал твой брат. Он хочет обсудить дело насчет вашего наследства».~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #66569 /* ~«Ничего, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 9.0
  SAY #58994 /* ~«Я — Кестер Малако, хозяин и совладелец Винокурни братьев Малако. Могу ли предложить тебе что-нибудь?»~ */
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #58995 /* ~«Совладелец?»~ */ GOTO 5
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #58996 /* ~«А кто твой брат?»~ */ GOTO 6
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #58997 /* ~«Не сейчас, спасибо. Насколько я понимаю, у тебя небольшие проблемы со своим братом Я бы хотел тебе помочь».~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #58998 /* ~«Ты что-нибудь слышал о дэва в этом городе?»~ */ GOTO 4
  IF ~~ THEN REPLY #58999 /* ~«Посмотрим, что у тебя есть».~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59000 /* ~«Меня прислал твой брат Он хочет обсудить дело насчет вашего наследства».~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68289 /* ~«Нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 9.1
  SAY #59001 /* ~Он внимательно смотрит на тебя. «Это винокурня. У нас широкий ассортимент, начиная от напитков и заканчивая микстурами, типа амулетов и прочего. Может, хочешь что-нибудь купить?»~ */
  IF ~~ THEN REPLY #59008 /* ~«Да».~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59009 /* ~«Не сейчас. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 2.3 9.3
  SAY #59010 /* ~«Здесь, в Проклятом? — он хохочет от всей души. — Друг, если бы ты пожил в Проклятом достаточно долго, то ты бы уже знал, что здесь дэва не бывает. Попробуй Стойкость или другой город на той стороне Великого Кольца. А теперь, может быть, хочешь купить что-нибудь?»~ */
  IF ~~ THEN REPLY #59011 /* ~«Да».~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59012 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #59013 /* ~«Да, именно так. Мой брат владеет частью это заведения. Не знаю, почему я говорю 'часть', видя, как много времени он ей уделяет. Слушай, ты будешь что-нибудь покупать?»~ */
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #59014 /* ~«Что ты можешь рассказать мне о своем брате?»~ */ GOTO 6
  IF ~~ THEN REPLY #59015 /* ~«Да. Что у тебя есть?»~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59016 /* ~«Меня прислал твой брат Он хочет обсудить дело насчет вашего наследства».~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68290 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 5.0
  SAY #59017 /* ~Его лицо мрачнеет. «Его зовут Костолом. Он городской кузнец. Из кожи вон лезет, лишь бы мои дела шли неважно... Почему я это рассказываю тебе? Я же тебя совсем не знаю».~ */
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #59018 /* ~«Я бы хотел помочь».~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #59019 /* ~«Не знаю. Что у тебя есть на продажу?»~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59020 /* ~«Не знаю. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 2.2 6.0 9.2
  SAY #59021 /* ~«Ты бы хотел, да? Ну хорошо. Взгляни-ка на это. Это моя копия завещания, составленная нашим отцом. Вот, здесь четко указано, что деньги, которые мы должны получить, должны пойти на строительство винокурни, а не просто быть поделенными между нами. Но мой брат-тупица настаивает, что вместо будущего строительства мы должны забрать деньги. Забери его копию завещания или уговори его, а уж я позабочусь, чтобы ты был хорошо вознагражден».~ */
  IF ~~ THEN REPLY #59022 /* ~«Мне понадобится твоя копия завещания для изучения».~ */ DO ~GiveItem("KestLeg",Protagonist)
~ JOURNAL #59024 /* ~Я согласился помочь Кестеру-винокуру в споре с его братом кузнецом Костоломом о том, как следует разделить наследство.~ */ GOTO 8
  IF ~  False()
~ THEN REPLY #59023 /* ~«Хорошо. Я еще вернусь. Прощай».~ */ JOURNAL #59024 /* ~Я согласился помочь Кестеру-винокуру в споре с его братом кузнецом Костоломом о том, как следует разделить наследство.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 14.0
  SAY #59025 /* ~Он с подозрением смотрит на тебя, но потом смягчается. «Если это ускорит дело и пойдет мне на пользу, то хорошо. Вот». Он передает завещание тебе.~ */
  IF ~~ THEN REPLY #59026 /* ~«Отлично. Прощай».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalLT("Mediate","GLOBAL",4)
NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #59027 /* ~«Добро пожаловать снова к братьям Малако! Чем я могу быть полезен?»~ */
  IF ~~ THEN REPLY #59028 /* ~«Кто ты?»~ */ GOTO 2
  IF ~~ THEN REPLY #59029 /* ~«Что это за место?»~ */ GOTO 3
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #59030 /* ~«Насколько я понимаю, у тебя небольшие проблемы со своим братом. Я бы хотел тебе помочь».~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #59031 /* ~«Ты что-нибудь слышал о дэва в этом городе?»~ */ GOTO 4
  IF ~~ THEN REPLY #59032 /* ~«Я хотел бы кое-что купить».~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59033 /* ~«Меня прислал твой брат. Он хочет обсудить дело насчет вашего наследства».~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68291 /* ~«Ничего, спасибо. Прощай».~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",4)
~ THEN BEGIN 10 // from:
  SAY #59034 /* ~«Чего надо?»~ */
  IF ~~ THEN REPLY #59035 /* ~«Я хотел бы кое-что купить».~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",4)
!PartyHasItem("KestLeg")
~ THEN REPLY #59036 /* ~«Я получил согласие твоего брата на начало переговоров. Ты согласен?»~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
GiveItem("KestLeg",Protagonist)
~ GOTO 11
  IF ~  Global("Mediate","GLOBAL",4)
PartyHasItem("KestLeg")
~ THEN REPLY #59037 /* ~«Я получил согласие твоего брата на начало переговоров. Ты согласен?»~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
~ GOTO 12
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59038 /* ~«Твой брат предложил мне деньги, чтобы я встал на его сторону в вашем споре».~ */ DO ~SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #59032 /* ~«Я хотел бы кое-что купить».~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #68291 /* ~«Ничего, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #59041 /* ~«Ну я... А, черт. Хорошо. Вот моя копия завещания. Просмотри их и скажи одному из нас о своем решении».~ */
  IF ~~ THEN REPLY #59042 /* ~«Я вернусь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #59043 /* ~«Ну я... А, черт. Хорошо. Просмотри наши завещания и скажи одному из нас о своем решении».~ */
  IF ~~ THEN REPLY #59044 /* ~«Я вернусь. Прощай».~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",5)
~ THEN BEGIN 13 // from:
  SAY #59045 /* ~«Ты еще не принял решения по нашему делу?»~ */
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59046 /* ~«Я решил встать на твою сторону. После прочтения завещания я определенно пришел к выводу, что ты должен получить все наследство целиком».~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
GivePartyGold(1000)
AddexperienceParty(131250)
~ GOTO 15
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59047 /* ~«Я решил, что твой брат должен получить все деньги. Совершенно очевидно, что он имеет на это полное право».~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ JOURNAL #59006 /* ~Я разрешил спор между винокуром и кузнецом в пользу кузнеца. Винокур остался недовольным.~ */ GOTO 16
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59048 /* ~«Вы оба должны разделить деньги поровну. Совершенно очевидно, что ваш отец хотел сделать именно так».~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",8)
AddexperienceParty(150000)
GivePartyGold(500)
~ GOTO 17
  IF ~~ THEN REPLY #59049 /* ~«Никто из вас не заслуживает денег. Я передам ваши завещания тому, кто сможет правильно распорядиться деньгами. Прощай».~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
IncrementGlobalOnceEx("GLOBALEvil_Mediate_1","GLOBALGood",-1)
~ JOURNAL #59005 /* ~Я разрешил спор между винокуром и кузнецом, обманув их обоих. Они остались недовольными.~ */ GOTO 16
  IF ~~ THEN REPLY #59050 /* ~«Пока нет. Но я бы хотел взглянуть на твои товары».~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59051 /* ~«Еще нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.5 2.5 5.2 9.5 10.3
  SAY #59052 /* ~«О, вот он как запел? Ну что же, я позабочусь, чтобы твоя награда была гораздо привлекательнее, если ты примешь решение в мою пользу... Вот что еще: возьми у него его завещание, изучи его и убеди его, что оно понадобится для вынесения решения. Получишь дополнительную награду. Как тебе такое предложение?»~ */
  IF ~~ THEN REPLY #59022 /* ~«Мне понадобится твоя копия завещания для изучения».~ */ DO ~GiveItem("KestLeg",Protagonist)
~ GOTO 8
  IF ~  False()
~ THEN REPLY #59054 /* ~«Вот это похоже на настоящее дело. Пойду, поговорю с ним. Прощай».~ */ EXIT
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59055 /* ~«Думаю, что склонюсь к его стороне. Он должен получить все наследство».~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #59056 /* ~«ХА! Ха-ха-ха-ха! Я знал!» Он вкладывает в твои руки мешочек с деньгами. «Спасибо тебе, друг, приходи в любое время! Извини, но это событие нужно обмыть!»~ */
  IF ~~ THEN REPLY #59057 /* ~«Конечно. Прощай».~ */ JOURNAL #59004 /* ~Я разрешил спор между винокуром и кузнецом в пользу винокура. В качестве оплаты я получил мешочек с деньгами.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1 13.3 14.2
  SAY #59058 /* ~От злости его лицо багровеет. «ЧТО? АХ ТЫ ВШИВЫЙ ВОР! ВОН ИЗ МОЕГО МАГАЗИНА! ВОН!»~ */
  IF ~~ THEN REPLY #59059 /* ~«Ну хорошо, хорошо. Я ухожу».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY #59060 /* ~Он потерянно бормочет. «Но... но... это же... но... — он безнадежно вздыхает. — Ну хорошо. Я приму твои слова. Только теперь не жди от меня в этом магазине хорошего обращения». Недовольно хмурясь, он бросает тебе мешочек с монетами. «Я обещал это тебе, забирай».~ */
  IF ~~ THEN REPLY #59061 /* ~«Спасибо. Прощай».~ */ JOURNAL #61386 /* ~Я решил проблему с наследством, распорядившись разделить выручку поровну между обоими братьями.~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",6)
~ THEN BEGIN 18 // from:
  SAY #59062 /* ~«Добро пожаловать назад! Чем могу помочь?» Он явно находится в превосходном настроении.~ */
  IF ~~ THEN REPLY #59063 /* ~«Просто хотел взглянуть на твои товары».~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59064 /* ~«Ничего, спасибо. Прощай».~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("Mediate","GLOBAL",6)
~ THEN BEGIN 19 // from:
  SAY #59066 /* ~«Вон из моей лавки, пока не позвал стражу. Немедленно».~ */
  IF ~~ THEN REPLY #59067 /* ~«Хорошо. Я ухожу».~ */ EXIT
END

IF WEIGHT #1 ~  CreatureInArea("AR3016")
GlobalLT("Mob_Dead","AR3016",3)
~ THEN BEGIN 20 // from:
  SAY #67918 /* ~«Помоги мне! Останови их!»~ */
  IF ~~ THEN REPLY #67919 /* ~«Посмотрим, что я могу сделать...»~ */ EXIT
END
