// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGILTSP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGILTSP~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #45541 /* ~Widzisz rumianego, hałaśliwego człowieka. Krzyczy i zachowuje się, jak gdyby miała nadejść wojna, albo jak gdyby coś utkwiło mu w żołądku, albo... no cóż, jak gdyby był za bardzo podniecony, by móc mówić normalnym głosem.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 483
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #45542 /* ~Widzisz rumianego, hałaśliwego człowieka. Krzyczy i zachowuje się, jak gdyby miała nadejść wojna, albo jak gdyby coś utkwiło mu w żołądku, albo... no cóż, jak gdyby był za bardzo podniecony, by móc mówić normalnym głosem.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 484
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 2 // from:
  SAY #45543 /* ~Widzisz rumianego, hałaśliwego człowieka. Krzyczy i zachowuje się, jak gdyby miała nadejść wojna, albo jak gdyby coś utkwiło mu w żołądku, albo... no cóż, jak gdyby był za bardzo podniecony, by móc mówić normalnym głosem.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 485
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 3 // from:
  SAY #45544 /* ~Widzisz rumianego, hałaśliwego człowieka. Krzyczy i zachowuje się, jak gdyby miała nadejść wojna, albo jak gdyby coś utkwiło mu w żołądku, albo... no cóż, jak gdyby był za bardzo podniecony, by móc mówić normalnym głosem. Mówi tak gwałtownie i szybko, że trudno jest go zrozumieć. "Hej tam, panie! Wyglądasz jakbyś mógł z czegoś skorzystać! Jeszcze nie jestem pewien z czego, ale daj mi trochę czasu, jeszcze trochę, a natychmiast do tego dojdę! Trzeba ci pokoju? Mam pokoje! Potrzebujesz zapasów? Mam trochę!"~ */
  IF ~~ THEN REPLY #45545 /* ~"Co sprzedajesz?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45546 /* ~"Najpierw odpowiedz na kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #45547 /* ~"Chciałbym ci coś sprzedać."~ */ GOTO 6
  IF ~~ THEN REPLY #45548 /* ~"Dzięki, że poświęciłeś mi swój czas, ale... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45549 /* ~Mówi tak gwałtownie i szybko, że trudno jest go zrozumieć. "Hej tam, panie! Wyglądasz jakbyś mógł z czegoś skorzystać! Jeszcze nie jestem pewien z czego, ale daj mi trochę czasu, jeszcze trochę, a natychmiast do tego dojdę! Trzeba ci pokoju? Mam pokoje! Potrzebujesz zapasów? Mam trochę!"~ */
  IF ~~ THEN REPLY #45550 /* ~"Co sprzedajesz?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45551 /* ~"Najpierw odpowiedz na kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #45552 /* ~"Chciałbym ci coś sprzedać."~ */ GOTO 6
  IF ~~ THEN REPLY #45553 /* ~"Dzięki, że poświęciłeś mi swój czas, ale... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 6.8 7.1 8.2 9.0 9.1 10.0 11.1 12.3 14.3 15.1 16.1 17.0 18.2 19.2 21.0 22.1 23.0 24.0 25.0 26.0 27.0
  SAY #45554 /* ~"Wszystko, czego ci trzeba, przyjacielu! Czas i słowa to pieniądz, więc śpiesz się!"~ */
  IF ~  !Global("Know_Lothar","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #45555 /* ~"Szukam czaszki, która unosi się w powietrzu. Ktoś mi ją ukradł. Nie wiesz, gdzie mógłbym ją znaleźć?"~ */ GOTO 11
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #45556 /* ~"Opowiedz mi o Panu Kości..."~ */ GOTO 14
  IF ~~ THEN REPLY #45557 /* ~"Kim jesteś i czym się zajmujesz?"~ */ GOTO 18
  IF ~~ THEN REPLY #45558 /* ~"Co to za miejsce? Opowiedz mi o nim."~ */ GOTO 19
  IF ~~ THEN REPLY #45559 /* ~"Opowiedz mi o Bogowcach."~ */ GOTO 20
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45560 /* ~"Nie wiesz czegoś o jakiejś pracy?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45561 /* ~"Ogłoszenie wydrukowane."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ JOURNAL #66517 /* ~Powiedziałem Giltspurowi, że dostarczyłem jego kwit Pennowi Szydercy.~ */ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45562 /* ~"Doręczyłem wiadomość."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ JOURNAL #66518 /* ~Powiedziałem Giltspurowi, że dostarczyłem jego wiadomość Keldorowi w Wielkiej Kuźni.~ */ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45563 /* ~"Ogłoszenie jest już w gospodzie Pod Gorejącym Człekiem."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ JOURNAL #66519 /* ~Powiedziałem Giltspurowi, że umieściłem jego wiadomość w Gospodzie "Pod Gorejącym Człekiem".~ */ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45564 /* ~"Masz jeszcze jakieś zadanie?"~ */ GOTO 27
  IF ~~ THEN REPLY #45565 /* ~"Co sprzedajesz?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45566 /* ~"Chciałbym ci coś sprzedać."~ */ GOTO 6
  IF ~~ THEN REPLY #45567 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2 5.11 7.2 18.0
  SAY #45568 /* ~"No to przyszedłeś do odpowiedniego człowieka! Kupuję, sprzedaję, wynajmuję pokoje! Mogę załatwić prawie wszystko! Co masz?"~ */
  IF ~  PartyHasItem("S_Limlim")
Global("Know_An_Pass","GLOBAL",0)
~ THEN REPLY #45569 /* ~"Mam kamiennego Lim-Lima. Co dasz mi w zamian?"~ */ GOTO 8
  IF ~  PartyHasItem("S_Limlim")
GlobalGT("Know_An_Pass","GLOBAL",0)
~ THEN REPLY #45570 /* ~"Mam kamiennego Lim-Lima. Co dasz mi w zamian?"~ */ GOTO 9
  IF ~~ THEN REPLY #45571 /* ~"Wymieńmy się."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45572 /* ~"Masz jakieś zadanie, które mógłbym wykonać?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45573 /* ~"Ogłoszenie wydrukowane."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ JOURNAL #66517 /* ~Powiedziałem Giltspurowi, że dostarczyłem jego kwit Pennowi Szydercy.~ */ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45574 /* ~"Doręczyłem wiadomość."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ JOURNAL #66518 /* ~Powiedziałem Giltspurowi, że dostarczyłem jego wiadomość Keldorowi w Wielkiej Kuźni.~ */ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45575 /* ~"Ogłoszenie jest już w gospodzie Pod Gorejącym Człekiem."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ JOURNAL #66519 /* ~Powiedziałem Giltspurowi, że umieściłem jego wiadomość w Gospodzie "Pod Gorejącym Człekiem".~ */ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45576 /* ~"Masz jeszcze jakieś zadanie?"~ */ GOTO 27
  IF ~~ THEN REPLY #45577 /* ~"Chyba nie w tej chwili. Odpowiedz jeszcze na kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #45578 /* ~"W tej chwili nic. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #45579 /* ~"Znowu! Znowu! Znowu do mnie przyszedłeś! Musi być coś, co mogę dla ciebie zrobić, a czego nie może mój brat Deran, co? Ha!"~ */
  IF ~~ THEN REPLY #45580 /* ~"Chciałbym coś kupić."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45581 /* ~"Mam do ciebie kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #45926 /* ~"Pogadajmy o interesach."~ */ GOTO 6
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45583 /* ~"Masz jakieś zadanie, które mógłbym wykonać?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45584 /* ~"Ogłoszenie wydrukowane."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45585 /* ~"Doręczyłem wiadomość."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45586 /* ~"Ogłoszenie jest już w gospodzie Pod Gorejącym Człekiem."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45587 /* ~"Masz jeszcze jakieś zadanie?"~ */ GOTO 27
  IF ~~ THEN REPLY #45588 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45589 /* ~Jego twarz przybiera posępny wyraz. "Mogę wyjawić ci sekretne hasło i powiedzieć, gdzie go użyć. I co ty na to?"~ */
  IF ~~ THEN REPLY #45590 /* ~"Powiedz mi hasło."~ */ DO ~SetGlobal("Know_An_Pass","GLOBAL",1)
TakePartyItemNum("S_Limlim",1)
~ GOTO 10
  IF ~~ THEN REPLY #45591 /* ~"Czy zamiast tego mógłbyś mi dać trochę pieniędzy?"~ */ GOTO 9
  IF ~~ THEN REPLY #45592 /* ~"To nie brzmi zachęcająco. Zamiast tego odpowiedz na kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #45593 /* ~"Nie interesuje mnie to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.1
  SAY #45594 /* ~"Mogę ci dać za niego dwadzieścia pięć miedziaków. Weź je, albo daj temu spokój, przyjacielu!"~ */
  IF ~~ THEN REPLY #45595 /* ~"Biorę. Odpowiedz jeszcze na kilka pytań..."~ */ DO ~GivePartyGold(75)
TakePartyItemNum("S_Limlim",1)
~ GOTO 5
  IF ~~ THEN REPLY #45596 /* ~"Nie, dzięki. Odpowiedz jeszcze na kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #45597 /* ~"Biorę. Żegnaj."~ */ DO ~GivePartyGold(75)
TakePartyItemNum("S_Limlim",1)
~ EXIT
  IF ~~ THEN REPLY #45598 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #45614 /* ~Zręcznie wyrywa ci wapiennego Lim-Lima i szepcze ci do ucha: "Hasło brzmi 'zaćmienie'. Dzięki niemu możesz wejść do Skarbca Dziewiątego Świata. Są tam Anarchiści. Użyj hasła - ale nie mów, kto ci je podał!"~ */
  IF ~~ THEN REPLY #45616 /* ~"'Zaćmienie'. Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #45622 /* ~"'Zaćmienie'. Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #45625 /* ~"Czaszka, co? Co? Ha! Znam tylko jeden rynek, w którym możesz znaleźć coś takiego! Ale..." Zniża głos, "Nie mogę ci powiedzieć, gdzie się znajduje... chyba że..."~ */
  IF ~~ THEN REPLY #45627 /* ~"Chyba że?"~ */ GOTO 12
  IF ~~ THEN REPLY #45628 /* ~"Nieważne. Odpowiedz jeszcze na kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #45630 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45632 /* ~"Nie mogę ci powiedzieć, przyjacielu, gdyż byłoby to dla ciebie niebezpieczne. Nie, panie, życie nas obu jest zbyt cenne, żeby je tracić za tak banalny kąsek wiedzy!"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #45633 /* ~"Czy zmienisz zdanie za dziesięć miedziaków?"~ */ DO ~TakePartyGold(10)
SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~  PartyGoldLT(10)
~ THEN REPLY #45637 /* ~"A co, jeśli dam ci to, co mam w torbie?"~ */ DO ~TakePartyGold(10)
SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #45640 /* ~"Może powinienem cię postraszyć?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #45642 /* ~"W takim razie, nieważne. Odpowiedz jeszcze na kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #45644 /* ~"W takim razie, nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 12.2
  SAY #45647 /* ~"To wystarczy." mówi. "Posłuchaj mnie uważnie." Pochyla się w twoją stronę i szepcze prosto do ucha. "Znam tylko jednego człowieka, który ośmiela się handlować takimi tajemnicami. Z nim nie ma żartów! Niebezpieczeństwo wprost bije od niego i niewielu ośmiela się wymawiać jego imię! Mówię o..." Przerywa i syczy melodramatycznie, "Lotarze, Panu Kości!"~ */
  IF ~~ THEN REPLY #45650 /* ~"O kim?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 5.1 13.0
  SAY #45652 /* ~"Panu Kości! Władcy Kości i Nocy, właścicielu najbardziej potwornej biblioteki po tej stronie domu Seta! Na jego półkach siedzą czaszki, szeptem wyjawiając swe sekrety Lotarowi i wszystkim, którzy mają czelność stanąć przed nimi. Można się tam wiele nauczyć... jeśli tylko wcześniej samo miejsce nie doprowadzi cię do *szaleństwa*!"~ */
  IF ~~ THEN REPLY #45653 /* ~"Powiesz w końcu, o co chodzi?"~ */ GOTO 15
  IF ~~ THEN REPLY #45655 /* ~"Gdzie jest to miejsce?"~ */ GOTO 16
  IF ~~ THEN REPLY #45656 /* ~"Co robi z tymi czaszkami?"~ */ GOTO 17
  IF ~~ THEN REPLY #45658 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #45659 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #45660 /* ~Chrząka. "Przepraszam, że próbowałem to uatrakcyjnić. Chciałem dodać tylko trochę smaczku. Trzeba iść na iglicę - *może* tam być spalony budynek. *Możliwe*, że znajdziesz tam drabinę zrobioną z ludzkich ścięgien - albo może po prostu z drewna - która prowadzi w dół, w dół, w dół, w dół do serca Sigil - a kiedy znów postawisz stopę na ziemi... *być może* znajdziesz się twarzą w twarz z samym Lotarem!"~ */
  IF ~~ THEN REPLY #45661 /* ~"Co robi z tymi czaszkami?"~ */ GOTO 17
  IF ~~ THEN REPLY #45662 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #45663 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #45664 /* ~"To w stronę iglicy - *możliwe*, że natkniesz się na spalony budynek. *Możliwe*, że znajdziesz tam drabinę zrobioną z ludzkich ścięgien, która prowadzi w dół, w dół do serca Sigil i ta właśnie drabina *być może* zaprowadzi cię do Gabinetu Czaszek i pozwoli spotkać samego Lotara!"~ */
  IF ~~ THEN REPLY #45665 /* ~"Co robi z tymi czaszkami?"~ */ GOTO 17
  IF ~~ THEN REPLY #45666 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #45667 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2 15.0 16.0
  SAY #45668 /* ~"Mówią, że umarli nie opowiadają historii... ale nie w gabinecie Lotara. Tam martwi odkrywają swoje sekrety wszystkim chętnym! Im bardziej martwi, tym więcej historii, więcej i więcej... tym bardziej są otwarci na samo serce wieloświata!" Dla podkreślenia rusza brwiami.~ */
  IF ~~ THEN REPLY #45669 /* ~"::westchnienie:: Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #45670 /* ~"::westchnienie:: Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.2
  SAY #45671 /* ~"Ja? Jestem Giltspur, licytator, do usług! Kupuję, sprzedaję, zapewniam usługi i miejsca pracy!"~ */
  IF ~~ THEN REPLY #45672 /* ~"Chciałbym coś sprzedać."~ */ GOTO 6
  IF ~~ THEN REPLY #45673 /* ~"Chciałbym coś kupić."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45674 /* ~"Odpowiesz mi na parę pytań?"~ */ GOTO 5
  IF ~~ THEN REPLY #45675 /* ~"Wspaniale, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.3
  SAY #45676 /* ~"To? To przecież jest Niższa Dzielnica! Dom Bogowców, Wielkiej Kuźni i centrum usługowe! Mamy wszystko, czego ci trzeba!"~ */
  IF ~~ THEN REPLY #45677 /* ~"Opowiedz mi o Bogowcach."~ */ GOTO 20
  IF ~~ THEN REPLY #45678 /* ~"Opowiedz mi o Kuźni."~ */ GOTO 22
  IF ~~ THEN REPLY #45679 /* ~"Odpowiedz jeszcze na kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #45680 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 5.4 19.0 22.0
  SAY #45681 /* ~"Ach, grupa ludzi bliska memu sercu. Mówią, że jesteśmy swoimi własnymi bogami i że w naszych duszach jest potencjał boskości. Od żebraka do najwyższego króla, wszyscy nosimy w sobie boga! Czy jest coś lepszego?"~ */
  IF ~~ THEN REPLY #45682 /* ~"Harmonium."~ */ GOTO 21
  IF ~~ THEN REPLY #45683 /* ~"Anarchiści."~ */ GOTO 21
  IF ~~ THEN REPLY #45684 /* ~"Czuciowcy."~ */ GOTO 21
  IF ~~ THEN REPLY #45685 /* ~"Grabarze."~ */ GOTO 21
  IF ~~ THEN REPLY #45686 /* ~"Łaskobójcy."~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4
  SAY #45687 /* ~"Tak, dobrze! Dobra odpowiedź!" Chichocze.~ */
  IF ~~ THEN REPLY #45688 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #45689 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY #45690 /* ~"Dla mnie, Kuźnia to nic więcej niż okazja! Miejsce, gdzie można się wykazać, sprawdzić duszę i ugasić pragnienie wiedzy - albo rozpaść w obliczu prawdy!" Przez chwilę mówi normalnym głosem. "W każdym razie tak mówią Bogowcy."~ */
  IF ~~ THEN REPLY #45691 /* ~"Opowiedz mi o Bogowcach."~ */ GOTO 20
  IF ~~ THEN REPLY #45692 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #45693 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5 6.3 7.3
  SAY #45694 /* ~"Oczywiście, przyjacielu! Mam dla ciebie małe zadanie, oczywiście, jeśli chcesz je przyjąć! Przyniesie ci na czysto pięćdziesiąt miedziaków! Wszystko, co masz zrobić to zanieść to ogłoszenie do drukarni i poprosić Penna Szydercę, żeby zrobił dla mnie sto kopii! Masz! Weź!" Wpycha ci w dłoń pogięty skrawek papieru.~ */
  IF ~~ THEN REPLY #45695 /* ~"W porządku. Mam jeszcze kilka pytań."~ */ DO ~GiveItemCreate("GiltBill",Protagonist,1,0,0)
~ JOURNAL #39510 /* ~Giltspur licytator poprosił mnie, bym w zamian za pięćdziesiąt monet dostarczył notatkę drukarzowi, Pennowi Szydercy.~ */ GOTO 5
  IF ~~ THEN REPLY #45696 /* ~"Dziękuję, chyba. Żegnaj."~ */ DO ~GiveItemCreate("GiltBill",Protagonist,1,0,0)
~ JOURNAL #39510 /* ~Giltspur licytator poprosił mnie, bym w zamian za pięćdziesiąt monet dostarczył notatkę drukarzowi, Pennowi Szydercy.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.6 6.4 7.4
  SAY #45697 /* ~"Wydrukował? Wspaniale! Wiedziałem, że można ci powierzyć to zadanie! Masz, zanieś tę wiadomość do Kuźni, do Keldora z Durian. Jestem pewien, że to go ucieszy, a tobie wpadnie za to sto miedziaków."~ */
  IF ~~ THEN REPLY #45698 /* ~"W porządku. Mam jeszcze kilka pytań."~ */ DO ~GiveItemCreate("GiltNote",Protagonist,1,0,0)
~ JOURNAL #39509 /* ~Gdy już zaniosłem przesyłkę Pennowi Szydercy, Giltspur licytator poprosił mnie, bym w zamian za sto monet dostarczył wiadomość Keldorowi z Durian. Znajdę go w Wielkiej Kuźni.~ */ GOTO 5
  IF ~~ THEN REPLY #45699 /* ~"Dziękuję, chyba. Żegnaj."~ */ DO ~GiveItemCreate("GiltNote",Protagonist,1,0,0)
~ JOURNAL #39509 /* ~Gdy już zaniosłem przesyłkę Pennowi Szydercy, Giltspur licytator poprosił mnie, bym w zamian za sto monet dostarczył wiadomość Keldorowi z Durian. Znajdę go w Wielkiej Kuźni.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.7 6.5 7.5
  SAY #45700 /* ~"Szybko to załatwiłeś, prawda? Dziękuję, dziękuję, przyjacielu. Jeszcze tylko jedno zadanie i to za sumę dokładnie dwustu miedziaków! Zanieś to ogłoszenie Barkisowi w gospodzie Pod Gorejącym Człekiem i poproś go, by je umieścił gdzieś na widoku. To mój stary przyjaciel i na pewno się ucieszy!"~ */
  IF ~~ THEN REPLY #45701 /* ~"W porządku. Mam jeszcze kilka pytań."~ */ DO ~GiveItemCreate("GiltPost",Protagonist,1,0,0)
~ JOURNAL #39508 /* ~Gdy już dostarczyłem wiadomość Keldorowi, licytator Giltspur poprosił mnie o zaniesienie ulotki Barkisowi do gospody Pod Gorejącym Człekiem. W zamian dostanę dwieście monet.~ */ GOTO 5
  IF ~~ THEN REPLY #45702 /* ~"Dziękuję, chyba. Żegnaj."~ */ DO ~GiveItemCreate("GiltPost",Protagonist,1,0,0)
~ JOURNAL #39508 /* ~Gdy już dostarczyłem wiadomość Keldorowi, licytator Giltspur poprosił mnie o zaniesienie ulotki Barkisowi do gospody Pod Gorejącym Człekiem. W zamian dostanę dwieście monet.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.8 6.6 7.6
  SAY #45703 /* ~"Nie mam już więcej zadań, przyjacielu. Dziękuję ci!" Odwraca się w stronę tłumu i zaczyna nagabywać.~ */
  IF ~~ THEN REPLY #45704 /* ~"Mam jeszcze kilka pytań..."~ */ JOURNAL #67155 /* ~Kiedy tylko dostarczyłem kwit do gospody "Pod Gorejącym Człekiem", powróciłem do Giltspura, a on powiedział, że nie ma już dla mnie żadnych innych zajęć.~ */ GOTO 5
  IF ~~ THEN REPLY #45705 /* ~"W takim razie, żegnaj."~ */ JOURNAL #67155 /* ~Kiedy tylko dostarczyłem kwit do gospody "Pod Gorejącym Człekiem", powróciłem do Giltspura, a on powiedział, że nie ma już dla mnie żadnych innych zajęć.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.9 6.7 7.7
  SAY #45706 /* ~"Przyjmij moje przeprosiny, przyjacielu. Nie mam nic więcej... wykonałeś wszystkie zadania jakie miałem!" Śmieje się.~ */
  IF ~~ THEN REPLY #45707 /* ~"Może odpowiesz na jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #45708 /* ~"W takim razie, dziękuję. Żegnaj."~ */ EXIT
END
