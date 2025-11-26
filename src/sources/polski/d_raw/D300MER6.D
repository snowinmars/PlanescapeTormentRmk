// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER6~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17604 /* ~Starszy kupiec ma wygląd światowca. Ma głęboki, łagodny ale pewny siebie głos. "Ach, witaj. Czy jesteś gotów popróbować najwyśmienitszych rzeczy w Sferach, mój dobry człowieku?"~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22180 /* ~"Mebbet, znachorka z Placu, potrzebuje ziół, które mają takie ziarna. Możesz mi pomóc?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17627 /* ~"Co masz na sprzedaż?"~ */ GOTO 3
  IF ~~ THEN REPLY #17628 /* ~"Nie, ale mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17629 /* ~"Nie, tylko przechodzę. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17605 /* ~"Znów się spotykamy. Może trochę morskich śliwek? Ziaren ognistych z Arborei?"~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22188 /* ~"Mebbet, znachorka z Placu, potrzebuje ziół, które mają takie ziarna. Możesz mi pomóc?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17630 /* ~"Co masz na sprzedaż?"~ */ GOTO 3
  IF ~~ THEN REPLY #17631 /* ~"Nie, ale mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17632 /* ~"Nie, jestem tu przypadkiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.2 5.1 6.8 6.10 7.2 8.2 9.2 10.2 11.2 12.2 13.2 15.1 16.1 17.1 18.1 19.1 20.1 21.1
  SAY #17606 /* ~Macha głową. "Proponuję ci, żebyś poszukał odpowiedzi gdzieś indziej, panie. Sprzedaję tylko egzotyczną żywność, przyprawy i zioła. Nie mam ani czasu, ani ochoty, na coś innego."~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22194 /* ~"Mebbet, znachorka z Placu, potrzebuje ziół, które mają takie ziarna. Możesz mi pomóc?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17633 /* ~"W takim razie, co masz na sprzedaż?"~ */ GOTO 3
  IF ~~ THEN REPLY #17634 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.1 24.0
  SAY #17607 /* ~"Wszystko, co daje rozkosz podniebieniu, mój dobry człowieku. Ogniste nasiona z Arborei, korzeń Gar-Bar, Elizjańskie gruszki, karmazynowe płatki lotosu, chleb Dwutopiańskich pasterzy, przyprawa z chaosu Limbo, i morskie śliwki to wszystko, co teraz mam. Za pięć miedziaków możesz spróbować czego tylko chcesz."~ */
  IF ~~ THEN REPLY #17635 /* ~Zapytaj o smak, któregoś z towarów.~ */ GOTO 4
  IF ~~ THEN REPLY #17636 /* ~Kup coś.~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17608 /* ~"Hmm?"~ */
  IF ~~ THEN REPLY #17637 /* ~"Jak smakują ogniste nasiona?"~ */ GOTO 5
  IF ~~ THEN REPLY #17638 /* ~"Jak smakuje korzeń Gar-Bar?"~ */ GOTO 5
  IF ~~ THEN REPLY #17639 /* ~"Jak smakują te gruszki?"~ */ GOTO 5
  IF ~~ THEN REPLY #17640 /* ~"Jak smakują te płatki?"~ */ GOTO 5
  IF ~~ THEN REPLY #17641 /* ~"Jak smakuje ten chleb?"~ */ GOTO 5
  IF ~~ THEN REPLY #17642 /* ~"Jak smakuje ta przyprawa?"~ */ GOTO 5
  IF ~~ THEN REPLY #17643 /* ~"Jak smakują morskie śliwki?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.2 4.3 4.4 4.5 4.6
  SAY #17609 /* ~"Mogę ci tylko polecić, żebyć sam spróbował, dobry człowieku."~ */
  IF ~~ THEN REPLY #17644 /* ~Kup coś.~ */ GOTO 6
  IF ~~ THEN REPLY #17645 /* ~"Tak naprawdę to mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17646 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 5.0 7.1 8.1 9.1 10.1 11.1 12.1 13.1 15.0 16.0 17.0 18.0 19.0 20.0 21.0
  SAY #17610 /* ~"Hmm?"~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17647 /* ~"Spróbuję ognistych nasion."~ */ GOTO 7
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17649 /* ~"Spróbuję korzenia Gar-Bar."~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17650 /* ~"Spróbuję gruszkę."~ */ GOTO 9
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17651 /* ~"Spróbuję tych płatków."~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17652 /* ~"Spróbuję trochę chleba."~ */ GOTO 11
  IF ~  PartyGoldGT(4)
!NearbyDialog("DDakkon")
~ THEN REPLY #17653 /* ~"Spróbuję tej przyprawy."~ */ GOTO 12
  IF ~  PartyGoldGT(4)
NearbyDialog("DDakkon")
~ THEN REPLY #17654 /* ~"Spróbuję tej przyprawy."~ */ GOTO 14
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17655 /* ~"Spróbuję morskich śliwek."~ */ GOTO 13
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17656 /* ~"Nie chcę niczego. Mam tylko kilka pytań..."~ */ GOTO 2
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17657 /* ~"Po namyśle, nie potrzebuję niczego. Żegnaj."~ */ EXIT
  IF ~  PartyGoldLT(5)
~ THEN REPLY #17658 /* ~"Nie mam na to pieniędzy. Ale mam kilka pytań."~ */ GOTO 2
  IF ~  PartyGoldLT(5)
~ THEN REPLY #17659 /* ~"Nie mam na to pieniędzy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #17611 /* ~"Nie połykaj ich; po prostu wypluj, kiedy przestaniesz czuć mrowienie." Uśmiecha się i podaje ci garść małych, czerwonych nasion.~ */
  IF ~~ THEN REPLY #17661 /* ~Włóż je do ust.~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~~ THEN REPLY #17664 /* ~"Chyba nie będzie mi smakować. Spróbuję czegoś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #17666 /* ~"Zmieniłem zdanie. Ale mam parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17667 /* ~"Chyba tego nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #17612 /* ~Podaje ci małą, czerwoną kostkę czegoś, co wygląda na jak gumiaste warzywo. "Można go żuć... nie połykaj go, ale wypluj, gdy już straci smak."~ */
  IF ~~ THEN REPLY #17668 /* ~Włóż go do ust.~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~~ THEN REPLY #17670 /* ~"Chyba nie będzie mi smakować. Spróbuję czegoś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #17672 /* ~"Zmieniłem zdanie. Ale mam parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17674 /* ~"Chyba tego nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #17613 /* ~Ofiarowuje ci największą, najbardziej soczystą gruszkę, jaką kiedykolwiek widziałeś. "To moje ulubione." chichocze. "Takie słodkie! Przypominają mi młodość."~ */
  IF ~~ THEN REPLY #17675 /* ~Zjedz gruszkę.~ */ DO ~TakePartyGold(5)
~ GOTO 17
  IF ~~ THEN REPLY #17681 /* ~"Chyba nie będzie mi smakować. Spróbuję czegoś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #17682 /* ~"Zmieniłem zdanie. Ale mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17683 /* ~"Chyba tego nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY #17614 /* ~Starzec ofiarowuje ci małe, brązowawo-czerwone płatki. Po uważnym przyjrzeniu się, okazują się to być suszone płatki kwiatowe. "Możesz mieć po nich lekkie zawroty głowy, więc uważaj, gdy już je zjesz."~ */
  IF ~~ THEN REPLY #17684 /* ~Włóż je do ust.~ */ DO ~TakePartyGold(5)
~ GOTO 18
  IF ~~ THEN REPLY #17686 /* ~"Chyba nie będzie mi smakować. Spróbuję czegoś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #17687 /* ~"Zmieniłem zdanie. Ale mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17688 /* ~"Chyba tego nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.4
  SAY #17615 /* ~Podaje ci dwa grube płaty przyprawionego chleba orzechowego. Są bardzo aromatyczne, pachną marchewką i migdałami.~ */
  IF ~~ THEN REPLY #17689 /* ~Zjedz chleb.~ */ DO ~TakePartyGold(5)
~ GOTO 19
  IF ~~ THEN REPLY #17690 /* ~"Chyba nie będzie mi smakować. Spróbuję czegoś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #17692 /* ~"Zmieniłem zdanie. Ale mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17693 /* ~"Chyba tego nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.5
  SAY #17616 /* ~Macha ci przed nosem małą papierową torebką. "Zwilż palec, włóż go do środka i po prostu obliż go. Za każdym razem powinno smakować trochę inaczej."~ */
  IF ~~ THEN REPLY #17694 /* ~Spróbuj.~ */ DO ~TakePartyGold(5)
~ GOTO 20
  IF ~~ THEN REPLY #17696 /* ~"Chyba nie będzie mi smakować. Spróbuję czegoś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #17697 /* ~"Zmieniłem zdanie. Ale mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17698 /* ~"Chyba tego nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.7
  SAY #17617 /* ~Daje ci małą śliwkę w dziwnym, zielononiebieskim kolorze. "Nie martw się, nie mają pestek. Zjedz ją całą."~ */
  IF ~~ THEN REPLY #17699 /* ~Zjedz morską śliwkę.~ */ DO ~TakePartyGold(5)
~ GOTO 21
  IF ~~ THEN REPLY #17701 /* ~"Chyba nie będzie mi smakować. Spróbuję czegoś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #17702 /* ~"Zmieniłem zdanie. Ale mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17703 /* ~"Chyba tego nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.6
  SAY #17618 /* ~Macha ci przed nosem małą papierową torebką. "Zwilż palec, włóż go do środka i po prostu obliż go. Za każdym razem powinno smakować trochę inaczej."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 76
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #17619 /* ~Nasiona, słodkie i smakujące jak cynamon, stają się ciepłe. Zaczynasz czuć mrowienie w ustach... po chwili orientujesz się, że dosłownie płoną ci w ustach. Wkrótce jednak, wrażenie zanika, a ty wypluwasz nasiona do rynsztoka.~ */
  IF ~~ THEN REPLY #17457 /* ~"Daj mi spróbować czegoś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #17704 /* ~"Chyba już wystarczy. Mam parę pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #17706 /* ~"Niczego więcej nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0
  SAY #17620 /* ~Korzeń, na początku raczej twardy, tak że trudno go było żuć, ma słodki, lepki smak. Wkrótce staje się miękki i gumiasty, a ty zdajesz sobie sprawę, że z zadowolenia aż cmokasz. W końcu, gdy już nie ma smaku, wypluwasz kleistą, brązową masę do rynsztoka.~ */
  IF ~~ THEN REPLY #17707 /* ~"Daj mi spróbować czegoś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #17708 /* ~"Chyba już wystarczy. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #17709 /* ~"Niczego więcej nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.0
  SAY #17621 /* ~W smaku gruszki nie ma nic niezwykłego, ale lepszej chyba nigdy nie jadłeś.~ */
  IF ~~ THEN REPLY #17710 /* ~"Daj mi spróbować czegoś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #17711 /* ~"Chyba już wystarczy. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #17712 /* ~"Niczego więcej nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0
  SAY #17622 /* ~Płatki szybko topnieją na języku, zostawiając po sobie dziwny, ale całkiem przyjemny posmak, którego z niczym nie możesz skojarzyć. Jednak pomimo ostrzeżeń sprzedawcy, nie czujesz się w żaden sposób zdezorientowany. Jest chyba lekko rozczarowany nie widząc żadnego efektu.~ */
  IF ~~ THEN REPLY #17713 /* ~"Daj mi spróbować czegoś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #17714 /* ~"Chyba już wystarczy. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #17715 /* ~"Niczego więcej nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.0
  SAY #17623 /* ~Chleb smakuje, mniej więcej tak, jak się tego spodziewałeś, marchewką i migdałami. Jest trochę słodkawy i sprawia, że masz ochotę na więcej.~ */
  IF ~~ THEN REPLY #17716 /* ~"Daj mi spróbować czegoś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #17717 /* ~"Chyba już wystarczy. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #17718 /* ~"Niczego więcej nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.0
  SAY #17624 /* ~Po dziesięciu 'liźnięciach' paczuszka jest pusta. Tak jak kupiec obiecywał, za każdym razem czułeś inny smak.~ */
  IF ~~ THEN REPLY #17719 /* ~"Daj mi spróbować czegoś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #17720 /* ~"Chyba już wystarczy. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #17721 /* ~"Niczego więcej nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.0
  SAY #17625 /* ~Skórka śliwki jest lekko gorzkawa i bardzo kwaśna - wystarczająco, byś się skrzywił i wzdrygnął - ale miąższ jest niezwykle słodki. Obydwa smaki świetnie ze sobą współgrają.~ */
  IF ~~ THEN REPLY #17722 /* ~"Daj mi spróbować czegoś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #17723 /* ~"Chyba już wystarczy. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #17724 /* ~"Niczego więcej nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 0.0 1.0 2.0
  SAY #22184 /* ~Mężczyzna bierze ziarno i patrzy na nie krytycznym wzrokiem... gdy ściska je pomiędzy palcem wskazującym i kciukiem, krzywi się, a na kciuku pojawia się kropelka krwi. "Ach! To ziarenko naprawdę gryzie..."~ */
  IF ~~ THEN REPLY #22199 /* ~"Zauważyłem. Czy masz zioła, o których mówiła?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",2)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #22186 /* ~Nie potrafi oderwać od niego oczu. "Młodzieńcze, nie wiem, czy jest *ktokolwiek* kto miałby to, czego szukasz... dokładnie rzecz biorąc, nigdy przedtem takiego nie widziałem. Musiałbyś znaleźć kogoś, kto je hoduje. Ja ich nie mam."~ */
  IF ~  !Dead("MFTree")
Global("Mourns","GLOBAL",0)
~ THEN REPLY #22204 /* ~"Dobra... gdzie znajdę kogoś takiego?"~ */ JOURNAL #21906 /* ~Kupiec na rynku powiedział, że będę musiał znaleźć ogrodnika do pomocy przy wyhodowaniu rośliny z nasienia. Musi być taki *gdzieś* w Ulu. Widziałem drzewa przy niektórych ulicach, tak więc ktoś na pewno się nimi zajmuje.~ */ GOTO 24
  IF ~  !Dead("MFTree")
GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #22206 /* ~"Dobra... gdzie znajdę kogoś takiego?"~ */ JOURNAL #21907 /* ~Kupiec na rynku powiedział, że będę musiał znaleźć ogrodnika do pomocy przy wyhodowaniu rośliny z nasienia - może poproszę o pomoc Opłakującego Drzewa.~ */ GOTO 24
  IF ~  Dead("MFTree")
~ THEN REPLY #22208 /* ~"Dobra... gdzie znajdę kogoś takiego?"~ */ JOURNAL #21908 /* ~Kupiec na rynku powiedział, że będę musiał znaleźć ogrodnika do pomocy przy wyhodowaniu rośliny z nasienia. Zabiłem jednak Opłakującego Drzewa, a założę się, że tylko on mógłby mi tu pomóc. Lepiej wrócę do Mebbet i spróbuję uratować sytuację.~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1 23.2
  SAY #22187 /* ~"Nie mam zielonego pojęcia, przyjacielu." Oddaje ci ziarno. "Ciężko ci będzie znaleźć w Ulu ogrodnika..."~ */
  IF ~  !Dead("MFTree")
~ THEN REPLY #22213 /* ~"Rozumiem. Pokaż mi, co masz na sprzedaż."~ */ GOTO 3
  IF ~  !Dead("MFTree")
Global("Mourns","GLOBAL",0)
~ THEN REPLY #22220 /* ~"Wygląda na to, że będę musiał. Dzięki za pomoc. Żegnaj."~ */ EXIT
  IF ~  !Dead("MFTree")
GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #22222 /* ~"Hmm. Może Opłakujący Drzewa mógłby mi pomóc... Żegnaj."~ */ EXIT
  IF ~  Dead("MFTree")
~ THEN REPLY #22225 /* ~"Jedyny, którego widziałem... nie żyje. Nieważne. Żegnaj."~ */ EXIT
END
