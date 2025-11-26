// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSABAST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSABAST~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #6 /* Triggers after states #: 37 38 39 40 60 43 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37465 /* ~Widzisz starszego mężczyznę w eleganckim płaszczu. Ma jasne oczy i ciepły uśmiech. Gdy podchodzisz lekko się kłania. "Dzień dobry, śmiałku. Jestem Sebastion, czym mogę służyć?"~ */
  IF ~~ THEN REPLY #37466 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37467 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 60.0
  SAY #37468 /* ~"Witam cię, śmiałku..." Przerywa wpół zdania widząc twoje blizny. Widzisz, jak jego oczy przebiegają po nich; ze zdumienia unosi brwi. Spogląda ci w oczy. "Miałem cię spytać, co mogę dla ciebie zrobić, ale chyba nie trzeba. Chyba wiem, dlaczego tu jesteś, śmiałku."~ */
  IF ~~ THEN REPLY #37469 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37470 /* ~"Właściwie, chcę z tobą porozmawiać o Dimtrim."~ */ GOTO 20
  IF ~  Global("Snuff_Grosuk","GLOBAL",0)
~ THEN REPLY #37471 /* ~"Co... chcesz powiedzieć, że możesz mi pomóc pozbyć się tych blizn?"~ */ GOTO 28
  IF ~~ THEN REPLY #37472 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.1 5.1 6.2 7.1 8.2 9.1 11.1 14.1 15.0 16.0 18.1 19.1 28.1 29.1 30.1 35.1 36.0 45.0 50.1 51.1 52.0 53.0 55.0 56.1 58.0
  SAY #37473 /* ~Uśmiecha się szerzej i lekko się kłania. "Pytaj, śmiałku."~ */
  IF ~~ THEN REPLY #37474 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #37475 /* ~"Co to za miejsce?"~ */ GOTO 6
  IF ~~ THEN REPLY #37476 /* ~"Co tu się dzieje?"~ */ GOTO 16
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37477 /* ~"Miałem gadającą czaszkę, ale została porwana. Możesz mi pomóc?"~ */ GOTO 17
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37478 /* ~"Właściwie chcę z tobą porozmawiać o Dimtrim."~ */ GOTO 20
  IF ~  GlobalLT("Snuff_Grosuk","GLOBAL",1)
~ THEN REPLY #37479 /* ~"Mam wrażenie, że możesz poradzić coś na te blizny."~ */ GOTO 28
  IF ~~ THEN REPLY #37480 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37481 /* ~"Nazywam się Sebastion, jestem... swego rodzaju magiem. Wynajmuję się tym, którzy mogą sobie na to pozwolić."~ */
  IF ~~ THEN REPLY #37482 /* ~"Jakiego rodzaju usługi proponujesz?"~ */ GOTO 4
  IF ~~ THEN REPLY #37483 /* ~"Wahasz się użyć słowa *mag*. Dlaczego?"~ */ GOTO 5
  IF ~~ THEN REPLY #37484 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37485 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37486 /* ~Uśmiecha się lekko i wzrusza ramionami. "Wykonuję pewne poufne zadania, śmiałku. Jestem znany z dyskrecji i tego, że wypełniam to, czego się podemuję. Ludzie dają mi rożne zadania. Jeśli mogę je wykonać, biorę je. Jeśli nie, to nie. Ale w każdym przypadku zachowuję milczenie."~ */
  IF ~~ THEN REPLY #37487 /* ~"Wahasz się użyć słowa *mag*. Dlaczego?"~ */ GOTO 5
  IF ~~ THEN REPLY #37488 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37489 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #37490 /* ~Kiwa głową. "Tak... nie jestem magiem, śmiałku, ale na swój sposób posługuję się Sztuką. Porzuciłem zwykłe studiowanie magii i poszedłem własną ścieżką." Przerywa i wzrusza ramionami. "Łatwiej jednak nazywać mnie magiem, niż roztrząsać ten problem."~ */
  IF ~~ THEN REPLY #37491 /* ~"Czym się zajmujesz?"~ */ GOTO 4
  IF ~~ THEN REPLY #37492 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37493 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #37494 /* ~Rzuca ci zagadkowe spojrzenie. "Chodzi ci o rynek, czy tę dzielnicę?"~ */
  IF ~~ THEN REPLY #37495 /* ~"O rynek."~ */ GOTO 7
  IF ~~ THEN REPLY #37496 /* ~"O tę dzielnicę."~ */ GOTO 8
  IF ~~ THEN REPLY #37497 /* ~"Nieważne. Mam jeszcze inne pytania..."~ */ GOTO 2
  IF ~~ THEN REPLY #37498 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #37499 /* ~"To zwykły rynek, śmiałku. Jest tu wiele towarów. Zaklęcia, napoje magiczne, informacje, kobiety, mężczyźni... Właściwie wszystko, jeśli tylko masz czym zapłacić."~ */
  IF ~~ THEN REPLY #37500 /* ~"Opowiedz mi o tej dzielnicy."~ */ GOTO 8
  IF ~~ THEN REPLY #37501 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37502 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #37503 /* ~"To Niższa Dzielnica, śmiałku, dom zwykłych ludzi i dzielnica przemysłowa. Nie są to slumsy Ula, ale nie jest tu tak wspaniale, jak w Dzielnicy Pani."~ */
  IF ~~ THEN REPLY #37504 /* ~"Opowiedz mi o rynku."~ */ GOTO 7
  IF ~~ THEN REPLY #37506 /* ~"Dlaczego jej nazwa to Niższa Dzielnica?"~ */ GOTO 9
  IF ~~ THEN REPLY #37507 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37508 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #37509 /* ~Śmieje się i wzrusza ramionami. "Zależy od punktu widzenia, śmiałku. Bogaci mówią, że ponieważ jest to dom pospolitych ludzi, lub tak zwanej *niższej* klasy. Jeśli spytasz tutejszych mieszkańców, powiedzą ci, że to z powodu portali... i tego wypadku."~ */
  IF ~~ THEN REPLY #37510 /* ~"Wypadku?"~ */ GOTO 10
  IF ~~ THEN REPLY #37511 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37512 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #37513 /* ~"Tak..." Myśląc, marszczy czoło. "Dawno temu, to miejsce nazywano Pierwszą Dzielnicą. Umieszczano tu nowych mieszkańców, którzy nie mieli wstępu do całego Sigil. Nakładano też na nich inne restrykcje... Uraziło to jakiegoś trepa, który zdecydował się na powstanie... Oczywiście nic to nie dało, dopóki nie dokonał fascynującego odkrycia..."~ */
  IF ~~ THEN REPLY #37514 /* ~"Mów dalej."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #37515 /* ~"Widzisz, w tym rejonie miasta znajduje się wiele portali, większość z których prowadzi do Niższych Sfer. I cóż, ten kopnięty trep znalazł sposób jak otworzyć wszystkie na raz. Umożliwił wstęp do miasta *wszystkiemu*, co chciało przez nie przejść. Rozpętała się rzeź; wywiązała się straszna wojna. Tak czy inaczej, oto dlaczego ta dzielnica zwie się *niższą*. Z powodu portali."~ */
  IF ~~ THEN REPLY #37516 /* ~"Sebastionie, w jaki sposób udało mu się otworzyć wszystkie bramy?"~ */ GOTO 12
  IF ~~ THEN REPLY #37517 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37518 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #37519 /* ~"Użył przedmiotu, który albo zamówił, albo wykonał sam. Jak to się nazywało..." Przerywa, by pomyśleć. "Ach, już wiem, Klucz Źródłocienia..." Na wspomnienie klucza zaczynasz mieć zawroty głowy, świat wokół ciebie jak gdyby stanął i stracił kolory. Czujesz, że jakieś wspomnienie próbuje dostać się do twej świadomości.~ */
  IF ~  Global("Shadow_Key_Mem","GLOBAL",0)
~ THEN REPLY #37520 /* ~Rozluźnij się i przyjmij ją.~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetGlobal("Shadow_Key_Mem","GLOBAL",1)
GiveExperience(Protagonist,500)
~ JOURNAL #37522 /* ~Przypomniało mi się coś na temat buntu w Niższej Dzielnicy. Albo go spowodowałem, albo odgrywałem w nim znaczącą rolę. Dokładnie nie wiem.~ */ GOTO 46
  IF ~  Global("Shadow_Key_Mem","GLOBAL",1)
~ THEN REPLY #37521 /* ~Rozluźnij się i przyjmij ją.~ */ GOTO 46
  IF ~~ THEN REPLY #65508 /* ~Skoncentruj się i stłum wspomnienie.~ */ GOTO 56
END

IF ~~ THEN BEGIN 13 // from: 50.0 56.0
  SAY #37523 /* ~Wzrusza ramionami. "Nikt nie wie. Ten klucz zaginął dość dawno temu. Wielu wierzy, wzięła go Pani Bólu, żeby nikt nigdy nie mógł już go użyć."~ */
  IF ~~ THEN REPLY #37524 /* ~"No i jak się to skończyło?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #37525 /* ~Zastanawia się. "No cóż... Wszyscy, oprócz przywódcy, znaleźli się w księdze umarłych. Przywódca i inne istoty po prostu pewnego dnia zniknęły. To z pewnością robota Pani. Ci, którzy przeżyli, uciekli z dzielnicy. Widzisz, zło z Niższych Sfer zanieczyściło powietrze. Tak czy inaczej, dzielnica pozostała opuszczona, dopóki nie wybudowano Kuźni."~ */
  IF ~~ THEN REPLY #37526 /* ~"Opowiedz mi o Kuźni?"~ */ GOTO 15
  IF ~~ THEN REPLY #37527 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37528 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #37529 /* ~Marszczy czoło. "To dom Bogowców, śmiałku. Jeśli masz jakieś pytania na ich temat, idź do Kuźni."~ */
  IF ~~ THEN REPLY #37530 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37531 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.2
  SAY #37532 /* ~Przygląda ci się podejrzliwie. "Co masz na myśli, śmiałku?" Rozgląda się i rozchyla ramiona jak gdyby chciał objąć całą dzielnicę. "Życie, śmiałku. Jak zwykle życie, nic więcej."~ */
  IF ~~ THEN REPLY #37533 /* ~"W porządku. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37534 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3
  SAY #37535 /* ~Uważnie ci się przygląda i odpowiada. "Czaszka... no cóż, gdybym miał zaryzykować i zgadywać, powiedziałbym, że jest teraz własnością Pana Kości. A to znaczy, że musisz sobie znaleźć nową."~ */
  IF ~~ THEN REPLY #37536 /* ~"Opowiedz mi o Panu Kości."~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #37537 /* ~"Gdzie mogę znaleźć tego Pana Kości?"~ */ GOTO 19
  IF ~~ THEN REPLY #37538 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.0
  SAY #37539 /* ~Marszczy czoło rozglądając się. "Nazywa się Lotar i nie lubi, jak się na niego zwraca uwagę. Nic o nim nie wiem, i nie mogę odpowiedzieć na żadne pytania, które go dotyczą." W jego oczach zauważasz cień strachu. "Porozmawiajmy o czymś innym, śmiałku."~ */
  IF ~~ THEN REPLY #37540 /* ~"Gdzie mogę znaleźć tego Pana Kości?"~ */ GOTO 19
  IF ~~ THEN REPLY #37541 /* ~"Dobra, mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37542 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #37543 /* ~Rozgląda się nerwowo. "Gdzieś w tej dzielnicy znajduje się zrujnowany dom, który prowadzi do jego królestwa. Nic więcej nie wiem." W jego oczach zauważasz cień strachu. "Porozmawiajmy o czymś innym, śmiałku."~ */
  IF ~~ THEN REPLY #37544 /* ~"Opowiedz mi o Panu Kości."~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #37545 /* ~"Dobra, mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37546 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.1 2.4 37.0 38.0 39.0 43.0
  SAY #37547 /* ~Przygląda ci się przez chwilę i wzdycha. "Co z Dimtrim, śmiałku?"~ */
  IF ~~ THEN REPLY #37548 /* ~"Chce, by ktoś zdjął z niego klątwę."~ */ GOTO 21
  IF ~~ THEN REPLY #37549 /* ~"Chcę ci tylko pogratulować dobrej roboty."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_2","GLOBALLaw",-1)
~ GOTO 51
  IF ~~ THEN REPLY #37550 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #37551 /* ~Obdarza cię zaskoczonym spojrzeniem, a następnie odprawia gestem. "Trudno mi w to uwierzyć, śmiałku. Dimtri nie ma dość silnego umysłu, żeby czegokolwiek chcieć." Przez chwilę marszczy czoło. "Czy to ten idiota, Hamrys, namówił cię do tego?"~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #37552 /* ~"Nie."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #37554 /* ~"Pomyśl o tym, Sebastionie. Hamrys nie wie, że Dimtri to zombie, ani nawet kto go stworzył. Zgadza się?"~ */ GOTO 23
  IF ~~ THEN REPLY #37555 /* ~"Co za różnica?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #37556 /* ~Przez chwilę przygląda ci się w zamyśleniu. "Hmm. Hamrys nie ma dość rozumu, by mógł dojść do tego, kto to mógł zrobić." Wzdycha i zły wzrusza ramionami. "Co oznacza, że ten biedny Dimtri wie więcej, niż mi się wydawało." Odwraca wzrok, pogrążając się w myślach.~ */
  IF ~~ THEN REPLY #37557 /* ~"No więc jak. Uwolnisz go?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY #37558 /* ~Wzdycha, pogrążony w myślach. "Tak... oczywiście, masz rację. Hamrys nie mógł cię przysłać. Myślę, że biedny Dimtri rzeczywiście wie więcej, niż mi się wydawało. A żeby mnie tak dopadła zaraza za moją głupotę!"~ */
  IF ~~ THEN REPLY #37559 /* ~"No więc jak. Uwolnisz go?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.0 54.0
  SAY #37560 /* ~Przez chwilę przygląda ci się, na jego twarzy odbijają się sprzeczne emocje. Wzdycha i ze złością wyrzuca w górę ramiona. "Nie mogę, przykro mi." Obdarza cię proszącym spojrzeniem. "Zwróć uwagę, że chcę, ale nie mogę. Miałem kontrakt na stworzenie Dimtriego i nie mogę złamać jego warunków, nieważne czy słusznie, czy nie. Nigdy nie łamię danego słowa, muszę dbać o reputację."~ */
  IF ~~ THEN REPLY #37561 /* ~Prawda: "Rozumiem twój dylemat i zgadzam się. Czy zamiast tego ja mógłbym go uwolnić?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sebastion_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #37562 /* ~Prawda: "Tak naprawdę kontrakty obchodzą mnie tyle, co szczurzy tyłek. To, co stworzyłeś jest złe i należy to uwolnić."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #37563 /* ~"Kto cię wynajął? Może namówię go, żeby zgodził się go uwolnić."~ */ GOTO 27
  IF ~~ THEN REPLY #37564 /* ~"Tak, no cóż, tak naprawdę w ogóle mnie to nie obchodzi. Po prostu zgodziłem się spróbować mu pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 27.0 27.1
  SAY #37565 /* ~"To może być trudne..." Odwraca się i zaczyna wpatrywać w skrzynię w pobliżu. PO chwili zdejmuje księgę, którą kładzie przed tobą. "Przede wszystkim musisz mieć pewne zdolności magiczne. Po drugie, musisz być w stanie poprawnie wymawówić słowa, które znajdziesz na stronie dwudziestej trzeciej."~ */
  IF ~~ THEN REPLY #37566 /* ~"Mów dalej."~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #37567 /* ~"W końcu, musisz dotknąć Dimtriego, jak tylko poczujesz, że wypełnia cię moc zaklęcia." Odwraca się i zaczyna szperać w innej skrzyni. "Jednakże, nie mogłem pozwolić ci przeczytać tej księgi. Byłoby to równoznaczne ze złamaniem mojego słowa, poprzez działania kogoś innego." Wciąż grzebie w skrzyni, ignorując cię.~ */
  IF ~~ THEN REPLY #37569 /* ~Przeczytaj księgę i odejdź.~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",4)
AddexperienceParty(4000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #37571 /* ~Nauczyłem się inkantacji, potrzebnej do uwolnienia Dimtriego. Sebastion pozwolił mi nauczyć się jej ze swej księgi, choć udawał, że nie widzi co robię.~ */ EXIT
  IF ~~ THEN REPLY #37570 /* ~Nie zwracaj uwagi na księgę i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY #37572 /* ~Uśmiecha się. "Jestem magicznie zobowiązany nie wyjawiać takich informacji, śmiałku. Dlatego właśnie ludzie przychodzą do mnie. Wiedzą, że jeśli przyjmę kontrakt, wypełnię go dyskretnie."~ */
  IF ~~ THEN REPLY #37573 /* ~Prawda: "Rozumiem, że w ten właśnie sposób należy prowadzić interesy. Czy zamiast tego ja mogę go uwolnić?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sebastion_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #37574 /* ~Prawda: "Tak naprawdę kontrakty obchodzą mnie tyle, co szczurzy tyłek. To, co stworzyłeś jest złe i należy to uwolnić."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #37575 /* ~"Nieważne. Właściwie nie chcę mieć z tym nic wspólnego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 1.2 2.5
  SAY #37576 /* ~Uśmiecha się wzruszając ramionami. "Możliwe, śmiałku, możliwe." Nachyla się i zaczyna uważnie badać twoje blizny. Przez kilka z nich przejeżdża palcem, coś do siebie mamrocząc. W końcu patrzy ci w oczy. "Tak, śmiałku. Mogę ci pomóc. Nie mogę cię uleczyć, ale mogę złagodzić najgorszą... przypadłość."~ */
  IF ~~ THEN REPLY #37577 /* ~"A jaka jest twoja cena?"~ */ GOTO 29
  IF ~~ THEN REPLY #37578 /* ~"Jasne. Mam jeszcze kilka pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #37580 /* ~"Ach, tak... cena." Przyglądając ci się głaszcze się w policzek. Masz wrażenie, że w jakiś sposób ocenia cię. Wydaje się, że podjął już decyzję. "Mam pewne zadanie, które chyba mógłbyś wypełnić."~ */
  IF ~~ THEN REPLY #37581 /* ~"Mów dalej."~ */ GOTO 30
  IF ~~ THEN REPLY #37582 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37583 /* ~"To mnie nie interesuje. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #37584 /* ~"Podpisałem kontrakt z pewną istotą. Nie mogę go już wypełnić; on... przekracza moje możliwości. Ale ten ktoś nie chce mnie z niego zwolnić. Zamiast tego zagroził mi śmiercią, jeśli go nie wypełnię."~ */
  IF ~~ THEN REPLY #37585 /* ~"Niech zgadnę: chcesz, żebym rozwiązał ten problem."~ */ GOTO 31
  IF ~~ THEN REPLY #37587 /* ~"To mnie nie interesuje. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37589 /* ~"Nie podoba mi się ta rozmowa. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #37591 /* ~Wzdycha. "Tak. Ja sam nie mogę tego zrobić. Moja reputacja wymaga, żebym albo wypełnił go, albo przyjął konsekwencje. W tej sprawie zdaję się na twoją łaskę. Pomożesz mi?"~ */
  IF ~~ THEN REPLY #37593 /* ~"Co to za istota?"~ */ GOTO 32
  IF ~~ THEN REPLY #37595 /* ~"Co miałeś zrobić?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.0 33.0
  SAY #37597 /* ~"Abiszai, który nazywa się Grosuk, śmiałku." Przerywa i czeka na twoją reakcję. "Wiem, że to trudne zadanie, ale myślę, że możesz się z nim uporać. Poza tym, oferuję ci wspaniałą zapłatę." Pokazuje twoje blizny.~ */
  IF ~~ THEN REPLY #37599 /* ~"Co miałeś zrobić?"~ */ GOTO 33
  IF ~~ THEN REPLY #37600 /* ~"Rozumiem. Ciekawa propozycja."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0
  SAY #37601 /* ~Kiwa głową. "Nie mogę ci tego zdradzić, śmiałku. Jestem magicznie zobowiązany tego nie robić. Dlatego właśnie ludzie przychodzą do mnie. Wiedzą, że jeśli przyjmę kontrakt, wypełnię go dyskretnie."~ */
  IF ~~ THEN REPLY #37602 /* ~"Co to za istota?"~ */ GOTO 32
  IF ~~ THEN REPLY #37603 /* ~"Rozumiem. Ciekawa propozycja."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 32.1 33.1
  SAY #37604 /* ~Przygląda ci się z nadzieją. "Zrobisz to, śmiałku?"~ */
  IF ~  Global("Grosuk_DEAD_KAPUTZ","GLOBAL",1)
~ THEN REPLY #37605 /* ~"Już go zabiłem."~ */ JOURNAL #37609 /* ~Mag o imieniu Sebastion chce, żebym zabił dla niego pewnego abiszai. W zamian za to pomoże mi coś zrobić z moimi bliznami. Na całe szczęście już to zrobiłem, a Sebastion pomógł mi i tak z wdzięczności.~ */ GOTO 57
  IF ~~ THEN REPLY #37606 /* ~"Tak, podaj mi szczegóły."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ JOURNAL #37610 /* ~Mag Sebastion chce, żebym zabił dla niego abiszai. W zamian za to pomoże mi coś zrobić z moimi bliznami. Zgodziłem się na to.~ */ GOTO 35
  IF ~~ THEN REPLY #37607 /* ~"Nie, nie chcę się w to mieszać."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",2)
~ GOTO 36
  IF ~~ THEN REPLY #37608 /* ~"Nie wiem, ale wezmę to pod uwagę."~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY #37611 /* ~Uśmiecha się i wzdycha z ulgą. "Dziękuję, śmiałku. Ta istota, to abiszai o imieniu Grosuk. Żeby dać mu radę będziesz potrzebował magicznej broni, więc zajrzyj do któregoś ze sklepów, jeśli nie masz własnej. Można go też pokonać czarami. Znajdziesz go na wschodzie, za wieżą oblężniczą."~ */
  IF ~~ THEN REPLY #37612 /* ~"Wieżą oblężniczą?"~ */ GOTO 55
  IF ~~ THEN REPLY #37613 /* ~"W porządku, ale mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37614 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.2 34.3
  SAY #37615 /* ~Uśmiechem próbuje ukryć rozczarowanie. "Rozumiem, śmiałku. Czy jeszcze w czymś mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #37616 /* ~"Tak, mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37617 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 38 39 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",1)
~ THEN BEGIN 37 // from:
  SAY #37618 /* ~Uśmiecha się, gdy podchodzisz. "Dzień dobry, śmiałku. Czy przemyślałeś moją propozycję i zdecydowałeś się ją przyjąć?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37619 /* ~"Właściwie chcę z tobą pogadać o Dimtrim."~ */ GOTO 20
  IF ~~ THEN REPLY #37620 /* ~"Tak, podaj mi szczegóły."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #37621 /* ~"Wciąż nad tym myślę. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 39 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #37622 /* ~Uśmiecha się, gdy podchodzisz. "Dzień dobry, śmiałku. Powiedz mi proszę, że zmieniłeś zdanie i pomożesz mi rozwiązać mój problem."~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37623 /* ~"Właściwie chcę z tobą pogadać o Dimtrim."~ */ GOTO 20
  IF ~~ THEN REPLY #37624 /* ~"Tak, podaj mi szczegóły."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #37625 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN BEGIN 39 // from:
  SAY #37626 /* ~Uśmiecha się, gdy podchodzisz. "Dzień dobry, śmiałku. Czy wykonałeś zadanie?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37627 /* ~"Właściwie chcę z tobą pogadać o Dimtrim."~ */ GOTO 20
  IF ~~ THEN REPLY #37628 /* ~"Nie, pracuję nad tym."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 60 43 even though they appear after this state */
~  Global("Grosuk_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 40 // from:
  SAY #37629 /* ~Uśmiecha się, gdy podchodzisz. "Dzień dobry, śmiałku. Czy wykonałeś zadanie?"~ */
  IF ~~ THEN REPLY #37630 /* ~"Tak i przyszedłem po to, co mi się należy."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #37631 /* ~"Chwileczkę, śmiałku." Sebastion sięga do płaszcza i wyciąga z niego małą, kryształową kulę. Patrzy w nią przez chwilę, a potem zwraca się do ciebie. "Nie wiem, jak ci dziękować, śmiałku. Pozwól, że wypełnię swoją część umowy. Jesteś gotów?"~ */
  IF ~~ THEN REPLY #37632 /* ~"Tak."~ */ DO ~AddexperienceParty(4000)
PermanentStatChange(Protagonist,CHR,RAISE,2)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #37633 /* ~"Zrobione, śmiałku. Jeszcze raz, dziękuję ci ." Sebastion nisko się kłania.~ */
  IF ~~ THEN REPLY #37634 /* ~"Dziękuję i żegnaj, Sebastionie."~ */ DO ~SetGlobal("Kill_Grosuk","GLOBAL",4)
SetGlobal("Snuff_Grosuk","GLOBAL",4)
~ JOURNAL #66544 /* ~Wykonałem polecenie Sebastiona i zgładziłem abiszai Grosuka. Zgodnie z umową w zamian za zlikwidowanie abiszai, Sebastion zajął się moimi bliznami. Faktycznie, teraz wyglądam znacznie lepiej.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Snuff_Grosuk","GLOBAL",4)
~ THEN BEGIN 43 // from:
  SAY #37635 /* ~Sebastion uśmiecha się. "Dzień dobry, śmiałku. Jak mogę ci pomóc?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37636 /* ~"Właściwie chcę z tobą pogadać o Dimtrim."~ */ GOTO 20
  IF ~  
!Class(Protagonist,MAGE)
~ THEN REPLY #64548 /* ~"Czy mógłbyś nauczyć mnie Sztuki, Sebastionie?"~ */ GOTO 59
  IF ~~ THEN REPLY #64549 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 37.1 38.1
  SAY #37638 /* ~Uśmiecha się i wzdycha z ulgą. "Dziękuję, śmiałku. Ta istota, to abiszai o imieniu Grosuk. Znajdziesz go na wschodzie, za wieżą oblężniczą."~ */
  IF ~~ THEN REPLY #37639 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 60 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 45 // from:
  SAY #37640 /* ~Sebastion uśmiecha się na twój widok. "Dzień dobry, śmiałku. Dobrze znów cię widzieć."~ */
  IF ~~ THEN REPLY #37641 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~  
!Class(Protagonist,MAGE)
~ THEN REPLY #37642 /* ~"Czy mógłbyś nauczyć mnie Sztuki, Sebastionie?"~ */ GOTO 59
  IF ~~ THEN REPLY #37643 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 12.0 12.1
  SAY #37644 /* ~Świat wokół ciebie rozmywa się - znajdujesz się na zacienionych ulicach Sigil. Serce wali ci w piersi, jak gdyby próbowało wyskoczyć ci z piersi; oddychasz nierówno, gwałtownie. Wydaje się, że biegłeś godzinami i wciąż nie możesz się zatrzymać...~ */
  IF ~~ THEN REPLY #37645 /* ~Kontynuuj.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #37646 /* ~Za rogiem skręcasz i wchodzisz do alejki, zwalniając. Czujesz jak twa siła słabnie, opierasz się o ścianę i próbujesz złapać oddech. Na dłoni czujesz obecność czegoś twardego. Otwierając dłoń, spoglądasz na nią i widzisz klejnot wtopiony w twoje ciało.~ */
  IF ~~ THEN REPLY #37647 /* ~Kontynuuj.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #37648 /* ~Opadasz na ścianę, aż czujesz na czole dotyk zimnej, wilgotnej powierzchni. Zamykasz oczy i zmuszasz się do zaczerpnięcia kilku spokojnych, głębokich oddechów. Czujesz jak powracają ci siły i nagle, słysząc jakiś słaby dźwięk, stajesz się czujny. Odwracasz się i spoglądasz w głąb alei.~ */
  IF ~~ THEN REPLY #37649 /* ~Kontynuuj.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #37650 /* ~Najpierw nie widzisz niczego, oprócz nocnych cieni. Już masz się odwrócić, gdy nagle dostrzegasz drobny ruch. Powoli, zza rogu wychodzi kobieta, zatrzymuje się i odwraca w twoją stronę. Przebiegasz oczami od jej szczupłej talii i pełnego biustu, aż do otoczonej ostrzami twarzy. Nawet w ciemności dostrzegasz jej zimne, pozbawione uczuć oczy...~ */
  IF ~~ THEN REPLY #37651 /* ~Kontynuuj.~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #37652 /* ~Wspomnienie rozmywa się I wraca ci wzrok. Stoisz na rynku, tuż przed Sebastionem. Przygląda się tobie z troską, ale widząc, że wszystko w porządku, przestaje. "Przez chwilę myślałem, że cię stracę, śmiałku."~ */
  IF ~~ THEN REPLY #37653 /* ~"Co stało się z Kluczem Źródłocienia?"~ */ GOTO 13
  IF ~~ THEN REPLY #37654 /* ~"Ciekawe. Mam jeszcze kilka pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 51 // from: 20.1
  SAY #37655 /* ~Jest rozpromieniony. "To ja dziękuję tobie, śmiałku. Zawsze miło jest poznać kogoś, kto potrafi dojrzeć coś śmiesznego w takiej sytuacji."~ */
  IF ~~ THEN REPLY #37656 /* ~"Powiedz mi, dlaczego w ogóle to zrobiłeś?"~ */ GOTO 52
  IF ~~ THEN REPLY #37657 /* ~"Tak... Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37658 /* ~"No cóż, muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 21.2 51.0
  SAY #37659 /* ~"Och..." Śmieje się kiwając głową, a następnie próbuje przybrać poważniejsze oblicze. "Hamrys kocha dźwięk swojego głosu, śmiałku. Godzinami potrafi chodzić po rynku i męczyć ludzi swym ciągłym paplaniem. Upadł tu już niejeden interes. Dimtri chętnie słucha jego historii i, co najważniejsze, dzięki niemu, Hamrys nie opuszcza sklepu."~ */
  IF ~~ THEN REPLY #37660 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 53 // from:
  SAY #37661 /* ~"Och..." Śmieje się kiwając głową, a następnie próbuje przybrać poważniejsze oblicze. "Hamrys kocha dźwięk swojego głosu, śmiałku. Godzinami potrafi chodzić po rynku i męczyć ludzi swym ciągłym paplaniem. Upadł tu już niejeden interes, tak wiali od niego klienci. Dimtri chętnie słucha jego historii i, co najważniejsze, dzięki niemu, Hamrys nie opuszcza sklepu."~ */
  IF ~~ THEN REPLY #37662 /* ~"Rozumiem. Cóż, w takim razie, nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37663 /* ~"Niech będzie, co ma być. To, co zrobiłeś jest złe. Musisz uwolnić Dimtriego."~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #37664 /* ~Wzdycha, pogrążony w myślach. "Tak... oczywiście, masz rację. A żeby mnie tak dopadła zaraza za moją głupotę!"~ */
  IF ~~ THEN REPLY #37665 /* ~"I wtedy go uwolnisz?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 55 // from: 35.0
  SAY #37666 /* ~"Tak, tam, za rynkiem. Cholerstwo pojawiło się pewnego dnia, kilka lat temu. Nikt nie wie dlaczego ani jak dostać się do środka."~ */
  IF ~~ THEN REPLY #37667 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37668 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 12.2
  SAY #37669 /* ~Koncentrujesz się. Z wolna, świat odzyskuje kolory i ruch. Wspomnienie zaciera się...~ */
  IF ~~ THEN REPLY #37670 /* ~"Co stało się z Kluczem Źródłocienia?"~ */ GOTO 13
  IF ~~ THEN REPLY #37671 /* ~"Ciekawe. Mam jeszcze kilka pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 57 // from: 34.0
  SAY #37672 /* ~"Chwileczkę, śmiałku." Sebastion sięga do płaszcza I wyciąga z niego małą, kryształową kulę. Patrzy w nią przez chwilę, a potem zwraca się do ciebie. "Nie wiem, jak ci dziękować, śmiałku. Mimo tego, że nie udało nam się dojść do porozumienia, pomogę ci. Jesteś gotów?"~ */
  IF ~~ THEN REPLY #37673 /* ~"Tak. Dziękuję."~ */ DO ~SetGlobal("Kill_Grosuk","GLOBAL",4)
PermanentStatChange(Protagonist,CHR,RAISE,2)
SetGlobal("Snuff_Grosuk","GLOBAL",4)
~ JOURNAL #66545 /* ~Zabiłem abiszai o imieniu Grosuk. Zdaje się, że śmierć tego stwora z pewnych powodów była na rękę Sebastionowi. W podzięce Sebastion zajął się moimi bliznami. Faktycznie, teraz wyglądam znacznie lepiej.~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #37674 /* ~Uśmiecha się. "Zrobione, śmiałku. Jeszcze raz, dziękuję ci."~ */
  IF ~~ THEN REPLY #37676 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37677 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 43.1 45.1
  SAY #37678 /* ~"Jesteś pewien, że chcesz porzucić swe obecne zajęcie, nauczyć się Sztuki i zostać magiem?"~ */
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #52386 /* ~"Tak..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",3)
~ GOTO 61
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #52387 /* ~"Tak..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 63
  IF ~~ THEN REPLY #58936 /* ~"Nie, muszę się zastanowić. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Grosuk_Dead_KAPUTZ","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 60 // from:
  SAY #50446 /* ~Widzisz starszego mężczyznę w eleganckim płaszczu. Ma jasne oczy i ciepły uśmiech. Gdy podchodzisz lekko się kłania. "Dzień dobry, śmiałku. Jestem Sebastion, czym mogę służyć?"~ */
  IF ~~ THEN REPLY #50447 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #50448 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #52388 /* ~"Nie jest to coś, czego zwykle się podejmuję. Jednakże, pokaż mi, co potrafisz, a ja dam ci kilka wskazówek." Uważnie obserwuje, gdy pokazujesz mu, co umiesz. Kilka razy przerywa ci i pokazuje jak poprawić twoje umiejętności. Po kilku godzinach wydaje ci się, że wiesz już wystarczająco dużo.~ */
  IF ~~ THEN REPLY #62180 /* ~"Dziękuję ci, Sebastionie."~ */ DO ~GiveExperience(Protagonist,5000)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #62174 /* ~"Proszę bardzo, przyjacielu. Weź też te dwa zaklęcia; przydają się. A teraz zechciej mi wybaczyć, mam coś do zrobienia."~ */
  IF ~~ THEN REPLY #62177 /* ~"Żegnaj."~ */ DO ~GiveItemCreate("Spwi101",Protagonist,1,1,0)
GiveItemCreate("Spwi102",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.1
  SAY #64650 /* ~"Nie jest to coś, czego zwykle się podejmuję. Jednakże, pokaż mi, co potrafisz, a ja dam ci kilka wskazówek." Uważnie obserwuje, gdy pokazujesz mu, co umiesz. Kilka razy przerywa ci i pokazuje jak poprawić twoje umiejętności. Po kilku godzinach wydaje ci się, że wiesz już wystarczająco dużo.~ */
  IF ~~ THEN REPLY #64651 /* ~"Dziękuję ci, Sebastionie."~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #64652 /* ~"Proszę bardzo, przyjacielu. A teraz zechciej mi wybaczyć, mam coś do zrobienia."~ */
  IF ~~ THEN REPLY #64653 /* ~"Żegnaj."~ */ EXIT
END
