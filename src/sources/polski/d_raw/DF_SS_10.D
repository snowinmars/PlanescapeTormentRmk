// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_10~

IF ~  !Global("S_Stone","AR0603",17)
!Global("S_Stone","AR0603",20)
~ THEN BEGIN 0 // from:
  SAY #34221 /* ~To niezwykły, błękitno-purpurowy kamień. Jest bezpiecznie umocowany w cokole, na którym spoczywa.~ */
  IF ~~ THEN REPLY #47562 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",17)
~ THEN BEGIN 1 // from:
  SAY #47563 /* ~To niezwykły, błękitno-purpurowy kamień, jest tym, do którego skierował cię przewodnik. Kryje się w nim doznanie 'Powoli wzrastające przerażenie'.~ */
  IF ~~ THEN REPLY #47564 /* ~Zacznij doznanie.~ */ GOTO 2
  IF ~~ THEN REPLY #47565 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47566 /* ~"Jak dobre może to być?" Zastanawiasz się, przyglądając się uważnie cieczy podobnej do burgunda. Siedzący po drugiej stronie stołu stary człowiek uśmiecha się przebiegle.

"Proszę, niech pan spróbuje." Szepce przytłumionym głosem. "Przekona się pan, że przerasta to pańskie oczekiwania, jestem pewien."~ */
  IF ~~ THEN REPLY #47567 /* ~Kontynuuj doznanie.~ */ GOTO 3
  IF ~~ THEN REPLY #47568 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47569 /* ~Kiwasz na niego głową i unosisz w górę kryształowy kielich, obserwując poprzez karmazynowy płyn grę świateł. Przebyłeś dla tego napoju długą drogę... długo i zawzięcie szukałeś tego starca... i byłbyś przeklęty, gdyby cokolwiek ci teraz przeszkodziło. Tą chwilą masz się delektować.~ */
  IF ~~ THEN REPLY #47570 /* ~Kontynuuj doznanie.~ */ GOTO 4
  IF ~~ THEN REPLY #47571 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47572 /* ~Unosisz kielich do ust, wdychasz aromat płynu. Bukiet jest lekki, słodki, upajający... przyprawia niemal o zawrót głowy. Kosztowałeś niezliczonej ilości trunków... podczas swych podróży przez Sfery napisałeś o nich całe tomy, o ich smakach, zapachach, sposobach wytwarzania. Ale ten... ten miał być legendarny. Nie znalazłeś nikogo, kto by go skosztował. Opowieści były niedorzeczne - nic nie mogło smakować tak dobrze - ale jeśli była w nich choć najmniejsza cząstka prawdy, byłby to naprawdę wyśmienity trunek.~ */
  IF ~~ THEN REPLY #47573 /* ~Kontynuuj doznanie.~ */ GOTO 5
  IF ~~ THEN REPLY #47574 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47575 /* ~W końcu pijesz z kielicha, ostrożny łyczek...~ */
  IF ~~ THEN REPLY #47576 /* ~Kontynuuj doznanie.~ */ GOTO 6
  IF ~~ THEN REPLY #47577 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47578 /* ~Niesamowite! Nie do opisania! Gdy smak rozchodzi się w ustach, przechodzi cię dreszcz rozkoszy. Nic... *nic*, czego smakowałeś w swoim życiu, nie może się z tym równać. Podnosisz wzrok na starca, zaskoczony, że twój kielich jest pusty - wysączyłeś wszystko jednym łykiem. Przecierasz oczy wierzchem dłoni, nie jesteś całkiem pewien kiedy zacząłeś płakać.~ */
  IF ~~ THEN REPLY #47579 /* ~Kontynuuj doznanie.~ */ GOTO 7
  IF ~~ THEN REPLY #47580 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47581 /* ~"Łzy radości, ha?" Starzec śmieje się cicho. "Całkiem przyjemne dla języka, czyż nie? Może masz chęć na więcej?" Znowu się do ciebie uśmiecha.

"Tak... tak, jeśli mogę..."~ */
  IF ~~ THEN REPLY #47582 /* ~Kontynuuj doznanie.~ */ GOTO 8
  IF ~~ THEN REPLY #47583 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47584 /* ~"Oczywiście." Odpowiada napełniając twój kielich. Próbujesz, ale nie możesz powstrzymać się przed wychyleniem wszystkiego jednym łykiem. Wkładasz do kielicha palec szukając ostatniej, ukrytej kropli trunku. Jeszcze wiele razy starzec napełnia kielich i za każdym razem pochłaniasz jego zawartość jak umierający z głodu człowiek jadło, niezdolny do zapanowania nad sobą, nie potrafisz odmówić sobie następnej jego porcji.~ */
  IF ~~ THEN REPLY #47585 /* ~Kontynuuj doznanie.~ */ GOTO 9
  IF ~~ THEN REPLY #47586 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #47587 /* ~Znowu cicho chichocze. "Dla takiego napoju... człowiek zrobiłby dla niego wszystko, co?"

Bez wahania kiwasz głową. "Tak, człowiek zrobiłby wszystko..." Gdy tak na niego patrzysz jego przebiegły uśmiech nabiera nowego znaczenia. Obezwładnia cię uczucie przerażenia, gdy boleśnie odczuwasz pragnienie, by skosztować więcej krwistoczerwonego trunku...~ */
  IF ~~ THEN REPLY #47588 /* ~Kontynuuj doznanie.~ */ GOTO 10
  IF ~~ THEN REPLY #47589 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47590 /* ~"Tak, tak..." Starzec uśmiecha się szeroko, jego żółte oczy świecą. "Człowiek zrobiłby *wszystko* by go skosztować... nawet najstraszliwszy, najbardziej ohydny czyn... zresztą sam się przekonasz, mój nowy sługo."~ */
  IF ~  Global("Sensation17","AR0603",0)
~ THEN REPLY #47591 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation17","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 18
  IF ~  Global("Sensation17","AR0603",1)
~ THEN REPLY #47592 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",20)
~ THEN BEGIN 11 // from:
  SAY #47593 /* ~To niezwykły, błękitno-purpurowy kamień, jest tym, do którego skierował cię przewodnik. Kryje się w nim doznanie 'Likantropia'.~ */
  IF ~~ THEN REPLY #47594 /* ~Zacznij doznanie.~ */ GOTO 12
  IF ~~ THEN REPLY #47595 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #47596 /* ~Nagle zdajesz sobie sprawę, że ta godzina już niemal wybiła, wyskakujesz z łóżka i uciekasz ze swego domku do otaczającego go lasu. Potykając się w ciemnościach odnajdujesz małą, rozjaśnioną światłem księżyca polanę... tę którą znalazłeś tydzień temu i postanowiłeś, że dzisiaj z niej skorzystasz. Pospiesznie wyzbywasz się ubrania, siadasz w wysokiej trawie i czekasz.~ */
  IF ~~ THEN REPLY #47597 /* ~Kontynuuj doznanie.~ */ GOTO 13
  IF ~~ THEN REPLY #47598 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #47599 /* ~Zamykasz oczy, słuchasz cichego cykania świerszczy, gardłowego rechotu ropuch z pobliskiego strumienia, szelestu głaskanej przez wiatr trawy. Co ktoś by pomyślał patrząc twoimi oczami, *doświadczając* tej chwili i tego co ma po niej nastąpić? Wkrótce wyruszysz do miasta, znajdziesz kapłana, który uwolni cię od Klątwy... ale teraz, możesz zrobić najlepszą z rzeczy. Zacierasz z niecierpliwością ręce, szczerzysz się jak brodaty, ognistowłosy gigant, szaleniec, samotnie siedzący nago na polance w lesie, w samym środku nocy.~ */
  IF ~~ THEN REPLY #47600 /* ~Kontynuuj doznanie.~ */ GOTO 14
  IF ~~ THEN REPLY #47601 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #47602 /* ~Przez twą skórę przebiega mrowienie, twoje zmysły gwałtownie się wyostrzają. Oddychasz przez nos, wdychając otaczające cię zapachy; pot na ubraniu, które zrzuciłeś, oposa, który w strachu przyczepił się do drzewa za tobą...~ */
  IF ~~ THEN REPLY #47603 /* ~Kontynuuj doznanie.~ */ GOTO 15
  IF ~~ THEN REPLY #47604 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #47605 /* ~Otwierasz oczy i spoglądasz na swe przedramiona. Nikłe światło księżyca ukazuje przechodzące po ich powierzchni słabe drgania... ale w przeciągu paru chwil całe ciało zaczyna się strasznie prężyć, wyrastają kępki grubego, brązowego futra. Z potwornym trzaskiem - jakby miażdżonych stawów i łamanych kości - twoje plecy i ramiona zaczynają rosnąć... nieprzyjemne, ale niezbyt bolesne. Twoje mięśnie - całe twoje ciało, podwaja swą wielkość, potraja i wciąż rośnie.~ */
  IF ~~ THEN REPLY #47606 /* ~Kontynuuj doznanie.~ */ GOTO 16
  IF ~~ THEN REPLY #47607 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #47608 /* ~Wciąż zafascynowany przemianą patrzysz jak twoje palce więdną, dłonie zamieniają się w umięśnione łapy, z których wyrasta futro i potężne, czarne pazury. Noc staje się jaśniejsza, gdy twoje oczy przechodzą zmianę, dostosowując się do ciemności... w polu widzenia pojawia się duży pysk, chichocząc do samego siebie delikatnie dotykasz swego wilgotnego, węszącego nosa. Podczas następnej przemiany, myślisz, będę musiał spojrzeć w lustro, albo w staw... zobaczyć jak twarz wykrzywia się i zmienia, jak traci swój naturalny wygląd, by zmienić się w pysk niedźwiedzia.~ */
  IF ~~ THEN REPLY #47609 /* ~Kontynuuj doznanie.~ */ GOTO 17
  IF ~~ THEN REPLY #47610 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #47611 /* ~Wkrótce, skupienie się na czymś innym niż podstawowe żądze staje się niemożliwe... teraz byś coś zjadł. Tak, jedzenie - może będziesz miał szczęście i znajdziesz w strumieniu ładną, tłustą rybę. Podnosisz się na potężne łapy z głośnym *sapnięciem* i zaczynasz się przedzierać przez las w kierunku strumienia idąc na wszystkich czterech łapach.~ */
  IF ~  Global("Sensation20","AR0603",0)
~ THEN REPLY #47612 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation20","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 18
  IF ~  Global("Sensation20","AR0603",1)
~ THEN REPLY #47613 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0 17.0
  SAY #47614 /* ~Wygląda na to, że to doznanie odkryło dawno zapomniane, trochę podobne wspomnienie w twoim własnym umyśle... czujesz jakbyś coś zyskał używając kamienia doznań.~ */
  IF ~~ THEN REPLY #47615 /* ~Odejdź.~ */ EXIT
END
