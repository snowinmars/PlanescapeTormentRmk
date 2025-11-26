// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHILAND.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHILAND~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 1 2 3 4 16 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45742 /* ~"A niech to! Prawie mi się udało. Nie wiesz, że to niebezpieczne przerywać rzucanie czaru? Na szczęście tylko ćwiczyłam. Czego chcesz?"~ */
  IF ~  Global("FedEx","Global",3)
PartyHasItem("DBox")
~ THEN REPLY #45743 /* ~"Chcę dowiedzieć się czegoś więcej o tej skrzynce..."~ */ GOTO 5
  IF ~~ THEN REPLY #45744 /* ~"Przepraszam, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 2 3 4 16 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45745 /* ~"I znowu ktoś mi przeszkadza! Człowiek nie może nawet znaleźć spokoju we własnym domu. Proszę, odejdź zanim zawołam straże... albo wypróbuję na tobie nowe zaklęcie."~ */
  IF ~  Global("FedEx","Global",3)
PartyHasItem("DBox")
~ THEN REPLY #45748 /* ~"Chcę dowiedzieć się czegoś więcej o tej skrzynce..."~ */ GOTO 5
  IF ~~ THEN REPLY #45749 /* ~"Przepraszam, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 4 16 even though they appear after this state */
~  GlobalGT("FedEx","Global",3)
~ THEN BEGIN 2 // from:
  SAY #45750 /* ~"Zabrałeś już wystarczająco dużo mojego czasu. Odejdź proszę."~ */
  IF ~~ THEN REPLY #45751 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 16 even though they appear after this state */
~  GlobalGT("Demonbox","Global",2)
~ THEN BEGIN 3 // from:
  SAY #45752 /* ~"Po Ulu krąży plotka, że zabiłeś biesa uwięzionego w Skrzynce Moridora. Pewnie nie udało ci się zebrać żadnych jej kawałków?"~ */
  IF ~~ THEN REPLY #45753 /* ~"Kimże ty jesteś, że zbierasz takie rzeczy?"~ */ GOTO 15
  IF ~~ THEN REPLY #45754 /* ~"Ee... nie."~ */ GOTO 15
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 4 // from:
  SAY #45755 /* ~"Plotka niesie, że udało ci się zniszczyć Skrzynkę Moridora. Chyba należą ci się gratulacje. Szkoda tylko, że nie zdołałam odszyfrować wszystkich zaklęć, których użyto do uwięzienia biesa."~ */
  IF ~~ THEN REPLY #45756 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.0
  SAY #45757 /* ~Wyciągasz Skrzynkę Moridora i pokazujesz ją Szilandrze. "Ach tak! Dobrze ją pamiętam. Miałam ją jakiś czas temu. Co chcesz o niej wiedzieć?"~ */
  IF ~  Global("Q1","Global",0)
~ THEN REPLY #45758 /* ~"Od kogo ją dostałaś?"~ */ DO ~SetGlobal("Q1","Global",1)
~ GOTO 7
  IF ~  Global("Q2","Global",0)
~ THEN REPLY #45759 /* ~"Wygląda na to, że znasz się na magii. Możesz mi powiedzieć, jakie zaklęcia rzucono na tę skrzynkę?"~ */ DO ~SetGlobal("Q2","Global",1)
~ GOTO 8
  IF ~  Global("Q4","Global",0)
~ THEN REPLY #45760 /* ~"Czy wiesz, jaka jest historia tej skrzynki?"~ */ DO ~SetGlobal("Q4","Global",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 7.1 9.0 10.0 11.1 12.0 13.0
  SAY #45761 /* ~"Co jeszcze chcesz wiedzieć?"~ */
  IF ~  Global("Q1","Global",0)
~ THEN REPLY #45762 /* ~"Od kogo ją dostałaś?"~ */ DO ~SetGlobal("Q1","Global",1)
~ GOTO 7
  IF ~  Global("Q2","Global",0)
~ THEN REPLY #45763 /* ~"Wygląda na to, że znasz się na magii. Możesz mi powiedzieć, jakie zaklęcia rzucono na tę skrzynkę?"~ */ DO ~SetGlobal("Q2","Global",1)
~ GOTO 8
  IF ~  Global("Q3","Global",0)
Global("Q2","Global",1)
~ THEN REPLY #45764 /* ~"Czy możesz bezpiecznie usunąć zaklęcia z tej skrzynki?"~ */ DO ~SetGlobal("Q3","Global",1)
~ GOTO 10
  IF ~  Global("Q4","Global",0)
~ THEN REPLY #45765 /* ~"Czy wiesz, jaka jest historia tej skrzynki?"~ */ DO ~SetGlobal("Q4","Global",1)
~ GOTO 13
  IF ~  Global("Q1","Global",1)
Global("Q2","Global",1)
Global("Q3","Global",1)
Global("Q4","Global",1)
~ THEN REPLY #45766 /* ~"Czy jest jakiś sposób, żeby pozbyć się Skrzynki Moridora i nikomu nie zrobić krzywdy?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #45767 /* ~"Hmmm... Daj mi pomyśleć. Nie przypominam sobie, od kogo ją dostałam. Pamiętam tylko, że chodziłam po targu i szukałam składników do zaklęć, kiedy ktoś zaoferował mi tę skrzynkę. Gdy ją przetestowałam, okazało się, że jest przeklęta, ale zaintrygowały mnie zaklęcia, które w nią wpleciono, więc i tak ją kupiłam."~ */
  IF ~~ THEN REPLY #45768 /* ~"Jeśli ta skrzynka tak cię intrygowała, to co cię skłoniło, żeby się jej pozbyć?"~ */ GOTO 11
  IF ~~ THEN REPLY #45769 /* ~"Chcę ci zadać jeszcze parę pytań..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.1
  SAY #45770 /* ~"Przez wiele lat badałam tę skrzynkę i próbowałam poznać jej tajemnice. Wpleciono w nią wiele czarów, zaklęcie po zaklęciu. Ku mojemu zdziwieniu, moje badania wykazały, że wszystkie zaklęcia należą do tych, których używa się do uwięzienia biesów."~ */
  IF ~~ THEN REPLY #45771 /* ~"Biesów? Chcesz powiedzieć, że w tej skrzynce są uwięzione biesy?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45772 /* ~"Nie! Nie biesy. Bies. A sądząc z zaawansowania i mocy tych zaklęć, to ten bies musi być bardzo ważny i potężny."~ */
  IF ~~ THEN REPLY #45773 /* ~"Chcę ci zadać jeszcze parę pytań..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #45774 /* ~"Chcesz się uwolnić od tej skrzynki, co? To zaklęcie jest najgorsze ze wszystkich. Krótko mówiąc, wyciąga ono energię z tego, kto posiada skrzynkę, i używa jej do zasilania jednego z zaklęć, które więzi biesa. To nie jest jeszcze najgorsze. Uwięziony bies może wyczuć tę energię, a jeśli uda mu się wydostać, zacznie tropić tego, od kogo ona pochodziła. W tej sytuacji nie ma wyjścia. Albo zaklęcie wyczerpie całą twoją energię, albo zabije cię uwolniony bies."~ */
  IF ~~ THEN REPLY #45775 /* ~"Rozumiem. Jeśli nie masz nic przeciwko temu, chcę ci zadać jeszcze parę pytań..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #45776 /* ~"Byłam wtedy młoda i niecierpliwa. W poszukiwaniu wiedzy, niebacznie usunęłam jedno z zaklęć. Przyjrzyj się tej skrzynce dokładnie. Kiedy ja ją miałam, wyglądała jak nowa. Ślady rozpadu to oznaka, że zaklęcia są coraz słabsze. Zorientowałam się, że jeśli nie pozbędę się tej skrzynki, to moje życie będzie zagrożone, więc zorganizowałam zawody, żeby się jej pozbyć."~ */
  IF ~~ THEN REPLY #45777 /* ~"Zawody?"~ */ GOTO 12
  IF ~~ THEN REPLY #45778 /* ~"Chcę ci zadać jeszcze parę pytań..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45779 /* ~"To był najlepszy sposób, żeby się jej pozbyć. Po prostu zaprosiłam wszystkich śmiałków z Ula, żeby walczyli ze sobą i w ten sposób wybrali najlepszego. Śmiałkowie słyną z tego, że mają duże muskuły, ale niewiele oleju w głowie. Przybyli jak muchy do miodu. Jako nagrodę zaoferowałam trochę pieniędzy i tę skrzynkę. Z tego co pamiętam, to zawody wygrał śmiałek imieniem Brasken."~ */
  IF ~~ THEN REPLY #45780 /* ~"Chcę ci zadać jeszcze parę pytań..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 5.2 6.3
  SAY #45781 /* ~"Udało mi się tylko dowiedzieć, jak się ona nazywa. To Skrzynka Moridora. Niestety, nie wiem, kim był ten Moridor ani w jakich okolicznościach ją zrobiono."~ */
  IF ~~ THEN REPLY #45782 /* ~"Chcę ci zadać jeszcze parę pytań..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 6.4
  SAY #45783 /* ~"Nie mam wystarczająco dużo siły, żeby walczyć z takim potworem albo go wypędzić. Minęły wieki od czasu gdy tam byłam, ale kiedyś w środkowej części Alei Niebezpiecznych Węgłów znajdowała się katedra. Może kapłan albo ktoś, kto czerpie moc z wyższego źródła, będzie mógł ci pomóc."~ */
  IF ~~ THEN REPLY #45784 /* ~"Bardzo mi pomogłaś. Żegnaj."~ */ DO ~SetGlobal("FedEx","Global",4)
SetGlobal("Delta","Global",2)
SetGlobal("Epsilon","Global",1)
AddexperienceParty(250)
~ JOURNAL #60388 /* ~Shilandra opowiedziała mi wiele o Skrzynce Moridora... Znacznej części tej opowieści wolałbym nigdy nie usłyszeć. Wygląda na to, że w skrzynce mieszka bies i to bies zajmujący poczesne miejsce w piekielnej hierarchii. Żeby było jeszcze weselej, więzy krępujące biesa bliskie są zerwania. Obawiam się, że bies wkrótce opuści swoje więzienie i pierwszą rzeczą, którą uczyni, będzie dotkliwa zemsta za długie upokorzenie. Shilandra poradziła mi, abym złożył wizytę w katedrze, znajdującej się w środkowej części Alei Niebezpiecznych Węgłów. Być może znajdę tam wyższą moc, która przepędzi biesa.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.0 3.1
  SAY #45785 /* ~"Obawiam się, że ktoś, kto nie zna sztuk magicznych, nie potrafi tego zrozumieć. Pewne części są bardzo poszukiwane jako składniki do tworzenia zaklęć. Teraz wybacz, ale muszę jeszcze trochę poćwiczyć to zaklęcie."~ */
  IF ~~ THEN REPLY #45786 /* ~"Żegnaj."~ */ DO ~SetGlobal("Shil","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Shil","Global",1)
~ THEN BEGIN 16 // from:
  SAY #45787 /* ~"Nie mam ci już nic więcej do powiedzenia."~ */
  IF ~~ THEN REPLY #45788 /* ~"Żegnaj."~ */ EXIT
END
