// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKITLA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKITLA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #49453 /* ~Widzisz wysoką, zachwycającą kobietę. Stoi wpatrując się w ściany tawerny, ale wydaje się ich nie widzieć. Wciąż zaciska i rozluźnia dłonie. Gdy cię zauważa, przebiega wzrokiem po twym ubraniu i ekwipunku, a potem patrzy ci w oczy; rzuca ci drwiący uśmiech i odwraca się do ściany.~ */
  IF ~~ THEN REPLY #49454 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #49455 /* ~Przejdź dalej.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49456 /* ~Ponownie, krzywiąc się, spogląda na ciebie. "Czy masz w zwyczaju zawsze rozmawiać z obcymi?"~ */
  IF ~~ THEN REPLY #49457 /* ~"Jeśli muszę zadawać im pytania, to tak."~ */ GOTO 2
  IF ~~ THEN REPLY #49458 /* ~"Zwykle nie, ale pomyślałem, że porozmawiam z tobą."~ */ GOTO 2
  IF ~~ THEN REPLY #49459 /* ~"Nie. Żegnaj."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #49460 /* ~"Ależ ty musisz mieć fascynujące życie, skoro robisz coś takiego. Niestety dla ciebie, jestem zajęta. Byłabym ci wdzięczna, gdybyś zostawił mnie w spokoju."~ */
  IF ~~ THEN REPLY #49461 /* ~"Mam tylko kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #49462 /* ~"Więc zostawię cię samą. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 3 // from: 2.0
  SAY #49463 /* ~"Której części 'Jestem zajęta' nie zrozumiałeś? Zostaw... mnie... w... spokoju. Dziękuję." Ponownie skupia całą uwagę na sobie, pogrążając się w myślach. Zaczyna żuć swoją dolną wargę, na której pojawiają się kropelki krwi.~ */
  IF ~~ THEN REPLY #49464 /* ~"Żegnaj, więc."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Mediate","GLOBAL",0)
NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #49465 /* ~Widzisz wysoką, zachwycającą kobietę. Stoi wpatrując się w ściany tawerny, ale wydaje się ich nie widzieć. Wciąż zaciska i rozluźnia dłonie. Gdy cię zauważa, przebiega wzrokiem po twym ubraniu i ekwipunku, a potem patrzy ci w oczy; rzuca ci drwiący uśmiech i odwraca się do ściany. "Szukasz czegoś, śmiałku?" Mówi nie wciąż wpatrzona w ścianę.~ */
  IF ~~ THEN REPLY #49466 /* ~"Rozumiem, że jesteś następną osobą, z którą mam porozmawiać o tym kluczu."~ */ GOTO 5
  IF ~~ THEN REPLY #49467 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #49468 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #49469 /* ~"O kluczu, hmm?" Unosi brew. "Chcesz wiedzieć, co musisz za to zrobić, prawda? To dość proste, przyjacielu. Jesteś zainteresowany? Oczywiście, że tak; przecież dlatego przyszedłeś ze mną porozmawiać. Jednak chyba prawdziwe pytanie to, czy jesteś gotów mnie wysłuchać."~ */
  IF ~~ THEN REPLY #49471 /* ~"Powiedz mi, co mam zrobić."~ */ JOURNAL #49473 /* ~Kitla wyznaczyła mi zadanie, które sprowadza się do zdobycia zapisu majątkowego od dwóch mężczyzn Kruszypięścia i Kestera, bądź też na położeniu kresu ich kłótni. W zamian za to Kitla podaruje mi drugą część Klucza, który jest mi potrzebny, aby dostać się do devy.~ */ GOTO 6
  IF ~~ THEN REPLY #49472 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 9.0 10.7
  SAY #49474 /* ~"Jest tu dwóch mężczyzn, Kruszypięść i Kester. Kruszypięść to kowal, a Kester ma gorzelnię. Obaj są mi *dużo* winni. Są też winni sobie nawzajem, więc żaden mi nie płaci. Kłócą się o spadek. Zdobądź dla mnie ich zapisy. Wtedy będę mogła się z nimi *bardzo* skutecznie potargować. Jeśli ci się nie uda, spraw żeby rozwiązali swoje problemy - albo ich zabij - a dam ci drugą część Klucza."~ */
  IF ~  PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49487 /* ~"Mam zapisy ich obu."~ */ GOTO 11
  IF ~  PartyHasItem("CrumLeg")
!PartyHasItem("KestLeg")
~ THEN REPLY #49488 /* ~"Mam zapis Kruszypięścia."~ */ GOTO 17
  IF ~  !PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49489 /* ~"Mam zapis Kestera."~ */ GOTO 18
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
!Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49490 /* ~"Kruszypięść nie żyje."~ */ GOTO 21
  IF ~  !Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49491 /* ~"Kester nie żyje."~ */ GOTO 22
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66358 /* ~"Obaj nie żyją."~ */ GOTO 23
  IF ~~ THEN REPLY #3787 /* ~"Nie zrobię tego."~ */ GOTO 8
  IF ~  Global("Mediate","GLOBAL",0)
~ THEN REPLY #6018 /* ~"Oczywiście. Żegnaj."~ */ DO ~SetGlobal("Mediate","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("Mediate","GLOBAL",0)
~ THEN REPLY #6018 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 10.6
  SAY #49478 /* ~Obdarza cię figlarnym spojrzeniem. "Może porozmawiamy, kiedy uporasz się z tym małym zadaniem, hm? No idź już." Odwraca się do swojej szklanki.~ */
  IF ~~ THEN REPLY #49479 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.6
  SAY #49480 /* ~Uśmiecha się słodko. "W takim razie nie dostaniesz Klucza. Idź sobie."~ */
  IF ~~ THEN REPLY #49481 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",2)
Global("Mediate","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #49482 /* ~"Wróciłeś, hm? Wychodzi na to, że na coś się przydasz. Pomóż mi a ja pomogę tobie i oboje będziemy szczęśliwi."~ */
  IF ~~ THEN REPLY #49483 /* ~"Co mam zrobić?"~ */ JOURNAL #49485 /* ~Kitla wyznaczyła mi zadanie, które sprowadza się do zdobycia zapisu majątkowego od dwóch mężczyzn Kruszypięścia i Kestera, bądź też na położeniu kresu ich kłótni. W zamian za to Kitla podaruje mi drugą część Klucza, który jest mi potrzebny, aby dostać się do devy.~ */ GOTO 6
  IF ~~ THEN REPLY #49484 /* ~"Może później. Żegnaj."~ */ JOURNAL #49485 /* ~Kitla wyznaczyła mi zadanie, które sprowadza się do zdobycia zapisu majątkowego od dwóch mężczyzn Kruszypięścia i Kestera, bądź też na położeniu kresu ich kłótni. W zamian za to Kitla podaruje mi drugą część Klucza, który jest mi potrzebny, aby dostać się do devy.~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Mediate","GLOBAL",0)
!Global("Mediate","GLOBAL",6)
!Global("Mediate","GLOBAL",7)
!Global("Mediate","GLOBAL",8)
!Global("Mediate","GLOBAL",10)
~ THEN BEGIN 10 // from:
  SAY #49486 /* ~W półmroku tawerny jej oczy błyszczą. "Masz coś dla mnie, człowieku pokryty bliznami?"~ */
  IF ~  PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49487 /* ~"Mam zapisy ich obu."~ */ GOTO 11
  IF ~  PartyHasItem("CrumLeg")
!PartyHasItem("KestLeg")
~ THEN REPLY #49488 /* ~"Mam zapis Kruszypięścia."~ */ GOTO 17
  IF ~  !PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49489 /* ~"Mam zapis Kestera."~ */ GOTO 18
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
!Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49490 /* ~"Kruszypięść nie żyje."~ */ GOTO 21
  IF ~  Global("Kester_Dead_KAPUTZ","GLOBAL",1)
!Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49491 /* ~"Kester nie żyje."~ */ GOTO 22
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66358 /* ~"Obaj nie żyją."~ */ GOTO 23
  IF ~~ THEN REPLY #66359 /* ~"Teraz nic. Pracuję nad tym. Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #50063 /* ~"Jeszcze raz, co miałem zrobić?"~ */ GOTO 6
  IF ~~ THEN REPLY #49499 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0 10.0
  SAY #49492 /* ~"Naprawdę? Daj mi je, a ja dam ci drugą część Klucza."~ */
  IF ~~ THEN REPLY #49493 /* ~"Proszę."~ */ DO ~TakePartyItemNum("CrumLeg",1)
TakePartyItemNum("KestLeg",1)
SetGlobal("Mediate","GLOBAL",10)
AddexperienceParty(150000)
~ GOTO 12
  IF ~~ THEN REPLY #49494 /* ~"Wciąż próbuję to rozpracować. Daj mi szansę."~ */ GOTO 13
  IF ~~ THEN REPLY #49495 /* ~"Jeszcze nie. Żeganj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49496 /* ~Bierze je i śmieje się złośliwie. "TERAZ zobaczymy, czy będą mówić, że nie mogą mi zapłacić." Wkłada zapisy do torby przy pasie. "Jesteś gotów na drugą część klucza?"~ */
  IF ~~ THEN REPLY #49497 /* ~"Tak. Powiedz mi."~ */ GOTO 14
  IF ~~ THEN REPLY #49498 /* ~"Jeszcze nie. Najpierw odpowiedz na kilka pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #49499 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 17.1 18.1
  SAY #49500 /* ~Wzdycha. "Od twego gadania nie dostanę tych pieniędzy szybciej. No dalej... idź i przynieś je."~ */
  IF ~~ THEN REPLY #49501 /* ~"No dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 16.0 19.0 20.0 21.0 22.0 23.0
  SAY #49502 /* ~Przez chwilę koncentruje się, a potem mówi innym, głębszym głosem: "Tu im Więzienie sprawiono w bezbrzeżnych ciemnościach..." Przerywa i kontynuuje normalnym głosem. "Po trzecią część klucza idź do Nabata, tam." Ziewa szeroko. "Jestem bardzo zmęczona. Weź to i zostaw mnie samą na jakiś czas. Muszę przemyśleć mój następny ruch. Żegnaj."~ */
  IF ~~ THEN REPLY #49503 /* ~"Chcę tylko paru odpowiedzi..."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~Dostałem od Kitli drugą część Klucza. Znajdują się na niej słowa: "Tu im więzienie sprawiono w bezbrzeżnych ciemnościach...." Teraz muszę pomówić z człowiekiem o imieniu Nabat.~ */ GOTO 15
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49504 /* ~"Chcę się uczyć magii."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~Dostałem od Kitli drugą część Klucza. Znajdują się na niej słowa: "Tu im więzienie sprawiono w bezbrzeżnych ciemnościach...." Teraz muszę pomówić z człowiekiem o imieniu Nabat.~ */ GOTO 24
  IF ~~ THEN REPLY #67753 /* ~"Żegnaj."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~Dostałem od Kitli drugą część Klucza. Znajdują się na niej słowa: "Tu im więzienie sprawiono w bezbrzeżnych ciemnościach...." Teraz muszę pomówić z człowiekiem o imieniu Nabat.~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("Mediate","GLOBAL",5)
GlobalGT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 15 // from: 14.0 24.2 25.1
  SAY #49506 /* ~"Przyjdź później. Teraz mam trochę za dużo na głowie."~ */
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49507 /* ~"Czy nauczysz mnie magii?"~ */ GOTO 24
  IF ~~ THEN REPLY #67754 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY #49508 /* ~Wzdycha. "Słuchaj, muszę wszystko zaplanować... dam ci Klucz i jesteśmy kwita, dobrze?"~ */
  IF ~~ THEN REPLY #49509 /* ~"Dobrze. Podaj mi go."~ */ GOTO 14
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49510 /* ~"Chcę nauczyć się magii."~ */ GOTO 24
  IF ~~ THEN REPLY #67755 /* ~"Może później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.1 10.1
  SAY #49511 /* ~"Dasz mi to w końcu?" Wyciąga rękę. "Dzięki temu upewnię się, że Kruszypięść znajdzie sposób, żeby mi zapłacić."~ */
  IF ~~ THEN REPLY #49512 /* ~"Tak. Proszę."~ */ DO ~TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 19
  IF ~~ THEN REPLY #49513 /* ~"Wciąż próbuję to rozpracować. Daj mi szansę."~ */ GOTO 13
  IF ~~ THEN REPLY #49514 /* ~"Jeszcze nie. Żeganj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2 10.2
  SAY #49515 /* ~"Dasz mi to w końcu?" Wyciąga rękę. "Dzięki temu upewnię się, że Kester znajdzie sposób, żeby mi zapłacić."~ */
  IF ~~ THEN REPLY #49516 /* ~"Tak. Proszę."~ */ DO ~TakePartyItemNum("KestLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 19
  IF ~~ THEN REPLY #49517 /* ~"Wciąż próbuję to rozpracować. Daj mi szansę."~ */ GOTO 13
  IF ~~ THEN REPLY #49518 /* ~"Jeszcze nie. Żeganj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0
  SAY #49519 /* ~Wkłada zapis do torby przy pasie i śmieje się złośliwie. "Chcesz teraz drugą część Klucza?"~ */
  IF ~~ THEN REPLY #49520 /* ~"Tak. Powiedz mi."~ */ GOTO 14
  IF ~~ THEN REPLY #49521 /* ~"Jeszcze nie. Najpierw odpowiedz na kilka pytań."~ */ GOTO 20
  IF ~~ THEN REPLY #49522 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Mediate","GLOBAL",5)
Global("Curst_Key","GLOBAL",2)
~ THEN BEGIN 20 // from: 19.1
  SAY #49523 /* ~Wzdycha. "Dziękuję za rozwiązanie tej sprawy, ale... słuchaj, muszę wiele zaplanować. Dam ci ten Klucz i będziemy kwita, dobrze?"~ */
  IF ~~ THEN REPLY #49524 /* ~"No dobrze. Podaj mi go."~ */ GOTO 14
  IF ~~ THEN REPLY #49525 /* ~"Może później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.3 10.3
  SAY #66361 /* ~"Zabiłeś go? Też dobrze... ten stary kozioł zawsze mnie obmacywał. Jesteś gotów na drugą część Klucza?"~ */
  IF ~~ THEN REPLY #66362 /* ~"Daj mi go..."~ */ DO ~SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 22 // from: 6.4 10.4
  SAY #66363 /* ~"Dobrze. Nie znosiłam go. Jesteś gotów na drugą część Klucza?"~ */
  IF ~~ THEN REPLY #66364 /* ~"Daj mi go..."~ */ DO ~SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 6.5 10.5
  SAY #66365 /* ~"Och, witaj, zabójco! Nie o to mi chodziło, ale nie jestem też zupełnie rozczarowana. Jesteś gotów na drugą część Klucza?"~ */
  IF ~~ THEN REPLY #66366 /* ~"Daj mi go..."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 24 // from: 14.1 15.0 16.1
  SAY #67738 /* ~Jej oczy jaśnieją. "Och? Uczyłeś się wcześniej tej Sztuki?"~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #67756 /* ~"Tak. Muszę tylko odświeżyć pewne umiejętności."~ */ GOTO 25
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #67757 /* ~"Nie. Potrzebuję wskazówek."~ */ GOTO 27
  IF ~~ THEN REPLY #67758 /* ~"Nieważne. Odpowiedz mi tylko na kilka pytań."~ */ GOTO 15
  IF ~~ THEN REPLY #67759 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #67739 /* ~"I chcesz porzucić to, czym zajmujesz się teraz, żeby odzyskać swoje umiejętności?"~ */
  IF ~~ THEN REPLY #67760 /* ~"Tak."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 26
  IF ~~ THEN REPLY #67761 /* ~"Nie, nie zupełnie. Zamiast tego odpowiedz na kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #67762 /* ~"Nie, nie zupełnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #67740 /* ~Po chwili rozmowy o Sztuce, przytakuje i uśmiecha się. "Naprawdę masz dar. Masz wszystko, co potrzeba, żeby wrócić na mistyczną ścieżkę."~ */
  IF ~~ THEN REPLY #67763 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY #67741 /* ~"Najpierw zobaczymy, czy w ogóle jesteś uzdolniony." Przystępuje do testowania twojej inteligencji i umiejętności logicznego myślenia za pomocą długiej serii zadań logicznych...~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #67764 /* ~Odpowiedz na jej pytanie najlepiej jak potrafisz.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetGlobal("Mage_Training","GLOBAL",4)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #67765 /* ~Odpowiedz na jej pytanie najlepiej jak potrafisz.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #67742 /* ~"Przynajmniej twój umysł jakoś działa." Przygląda ci się. "Masz też księgę. Dobrze. Będziesz w niej zapisywał zaklęcia. Wszystkie zaklęcia muszą być przechowywane. Jest ich wiele i znacznie różnią się od siebie, ale w końcu muszą być zapisane, by mag mógł się uczyć. Rozumiesz?"~ */
  IF ~~ THEN REPLY #67766 /* ~"Tak. Potrzebuję księgi w której będę zapisywał zaklęcia, żeby móc się ich później nauczyć."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #67743 /* ~Powstrzymuje się, żeby nie roześmiać ci się w twarz, ale w jej oczach widać ślad pogardy. "Nie masz dość rozumu, żeby zostać magiem. Dla twojego umysłu zaklęcia byłyby niczym woda, przepływałyby przez twoje uszy, zanim zdołałbyś je pochwycić. Zostań przy mieczu, przy złodziejstwie. Nigdy nie będziesz dobry w rzucaniu zaklęć."~ */
  IF ~~ THEN REPLY #67767 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #67744 /* ~"A teraz pora na mały test. Popatrz." Wyciąga zwój. "Przeczytaj go i powiedz, co w nim jest." Znaki tańczą przed twoimi oczami, układają się w nic nie znaczące słowa.~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #67768 /* ~Zbadaj ten zwój.~ */ GOTO 31
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #67769 /* ~Zbadaj ten zwój.~ */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #67745 /* ~Instynktownie rozluźniasz się i prawie podświadomie wchłaniasz ich znaczenie, jak gdyby odezwała się jakaś dawno nie używana część twego mózgu. Są na nim tajemne formuły, składniki czarów, gesty i rytuały potrzebne do rzucenia czaru.~ */
  IF ~~ THEN REPLY #67770 /* ~"To czar poznania, prawda? Taki, który identyfikuje przedmioty."~ */ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #67746 /* ~Jakbyś nie próbował, nie możesz znaleźć w nich sensu. Za każdym razem, gdy ci się wydaje, że udało ci się je odczytać, rozpływają się, przyprawiając o ból głowy. W końcu, po wielu minutach intensywnej analizy, przestajesz czytać, gdyż łzawią ci oczy... i nagle, zawartość pergaminu staje się jasna. Są na nim tajemne formuły, składniki czarów, gesty i rytuały potrzebne do rzucenia czaru.~ */
  IF ~~ THEN REPLY #67771 /* ~"To czar poznania, prawda? Taki, który identyfikuje przedmioty."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 31.0 32.0
  SAY #67747 /* ~Kitla uśmiecha się. "Więc już wiesz jak czytać zwoje, co? Znaczy to, że już się tego kiedyś uczyłeś, nawet jeśli o tym zapomniałeś, bo tylko mag byłby w stanie odczytać te znaki. Znów się na to otworzyłeś. Oszczędziłeś sobie wielu lat nauki. Gratuluję."~ */
  IF ~~ THEN REPLY #67772 /* ~"Dzięki. Jaki jest następny krok?"~ */ JOURNAL #67774 /* ~Kitla, mag z karczmy "Brama Zdrajców" w Klątwie, pokazał mi magiczny zwój, a kiedy poprawnie go odczytałem, zawyrokował, że w którymś z moich poprzednich żywotów musiałem być magiem.~ */ GOTO 34
  IF ~~ THEN REPLY #67773 /* ~"Chyba znam już podstawy. Zajmijmy się nauką."~ */ JOURNAL #67774 /* ~Kitla, mag z karczmy "Brama Zdrajców" w Klątwie, pokazał mi magiczny zwój, a kiedy poprawnie go odczytałem, zawyrokował, że w którymś z moich poprzednich żywotów musiałem być magiem.~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #67748 /* ~"Masz już księgę, więc wszystko, co ci potrzeba to wiedza jak zapamiętać i rzucać czary. Zanim będziesz w stanie zapamiętywać zaklęcia, musisz dużo odpocząć i mieć czysty umysł. I coś bardzo ważnego: zanim odpoczniesz, wybierz zaklęcia, które chcesz zapamiętać i rozluźnij się. Kiedy się obudzisz, spędź trochę czasu nad swoimi zapiskami, a zaklęcia same wejdą ci do głowy."~ */
  IF ~~ THEN REPLY #67775 /* ~"Ile zaklęć będę znać?"~ */ GOTO 35
  IF ~~ THEN REPLY #67776 /* ~"Chyba znam już podstawy. Zajmijmy się nauką."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #67749 /* ~"Kiedy zaczniesz, będziesz znał niewiele zaklęć. Będziesz mógł rzucać pojedyncze zaklęcie, a może nawet trzy. Dobrze je wykorzystuj, ponieważ, gdy już ich użyjesz, będziesz musiał odpocząć, zanim zapamiętasz więcej zaklęć. Ale gdy będziesz robił postępy w Sztuce, zauważysz, że będziesz w stanie pamiętać więcej i więcej."~ */
  IF ~~ THEN REPLY #67777 /* ~"Dobrze. Mów dalej."~ */ GOTO 36
  IF ~~ THEN REPLY #67778 /* ~"Chyba znam już podstawy. Zajmijmy się nauką."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #67750 /* ~"Gdy rzucasz zaklęcie, zapominasz je. Jeśli będziesz chciał rzucić to samo zaklęcie dwa razy, będziesz je musiał dwa razy zapamiętać." Przerywa, myśląc. "Szukaj zaklęć. Można je znaleźć w wielu różnych miejscach i u wielu ludzi. Przybierają różne formy. Kiedy je odnajdziesz, przepisuj je do księgi, gdy to tylko możliwe. Naucz się ich i zapisz."~ */
  IF ~~ THEN REPLY #67779 /* ~"Dobrze. Czy to wszystko?"~ */ JOURNAL #67781 /* ~Kitla nauczył mnie podstaw magii. Zanim udam się na odpoczynek, będę musiał wybrać czary do zapamiętania. W tym celu muszę jej najpierw wybrać z księgi czarów. Jeżeli natomiast chcę posługiwać się danym czarem wielokrotnie, muszę wielokrotnie zapamiętać ten czar. Po każdym odpoczynku będę budził się następnego ranka mając w pamięci wybrane, gotowe do użytku czary, Na razie jednak, póki jeszcze nie jestem doświadczonym czarodziejem, będę mógł każdego dnia korzystać z bardzo ograniczonej liczby czarów.~ */ GOTO 37
  IF ~~ THEN REPLY #67780 /* ~"Chyba znam już podstawy. Zajmijmy się nauką."~ */ JOURNAL #67781 /* ~Kitla nauczył mnie podstaw magii. Zanim udam się na odpoczynek, będę musiał wybrać czary do zapamiętania. W tym celu muszę jej najpierw wybrać z księgi czarów. Jeżeli natomiast chcę posługiwać się danym czarem wielokrotnie, muszę wielokrotnie zapamiętać ten czar. Po każdym odpoczynku będę budził się następnego ranka mając w pamięci wybrane, gotowe do użytku czary, Na razie jednak, póki jeszcze nie jestem doświadczonym czarodziejem, będę mógł każdego dnia korzystać z bardzo ograniczonej liczby czarów.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 33.1 34.1 35.1 36.0 36.1
  SAY #67751 /* ~"Zrozumiałeś. Dobrze. Weź. Weź te zwoje i zapisz w księdze zaklęć. Powodzenia."~ */
  IF ~~ THEN REPLY #67752 /* ~"Dziękuję. Żegnaj."~ */ DO ~SetNamelessClass(MAGE)
GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,0,0,0)
GiveItemCreate("SPWI502",Protagonist,0,0,0)
GiveItemCreate("SPWI207",Protagonist,0,0,0)
~ EXIT
END
