// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUELL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUELL~

IF ~  Global("Quell","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #29455 /* ~Ten starszy człowiek przeżuwa coś, mamrocząc cicho pod nosem... po chwili rozlega się *TRZASK*, gdy rozgryza, a następnie połyka jakiś przedmiot. Jego krzaczaste, metalicznie białe brwi marszczą się na chwilę, wznoszą, po czym znowu marszczą. "Hmmm..."~ */
  IF ~~ THEN REPLY #29456 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #29457 /* ~Zostaw mężczyznę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #29458 /* ~Nie patrząc na ciebie, człowiek sięga do tuniki, wyciąga czerwono-brązową kulę, przygląda się jej z zaciekawieniem i wrzuca sobie do ust.~ */
  IF ~~ THEN REPLY #29459 /* ~"Powiedziałem 'witaj'."~ */ GOTO 2
  IF ~~ THEN REPLY #29460 /* ~Zostaw mężczyznę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #29461 /* ~Człowiek marszczy brwi i ruchem ręki karze ci odejść, później kiwa w zamyśleniu głową, rozkoszując się zapachem czegoś, co włożył do ust.~ */
  IF ~~ THEN REPLY #29462 /* ~"Mam... kilka pytań..."~ */ DO ~SetGlobal("Quell","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #29463 /* ~Zostaw mężczyznę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #29464 /* ~Człowiek uśmiecha się mile, z lekceważeniem stuka paznokciem o brzeg zębów i nagle przestaje... jego policzki nadymają się, po czym nagłym ruchem wypluwa wielką, czarną muchę, która zaczyna hałaśliwie krążyć po komnacie. "Niech piekło pochłonie cukierki Minaurosa!" wykrzykuje grożąc owadowi pięścią. Obraca się w twoją stronę. "Czego?!"~ */
  IF ~~ THEN REPLY #29465 /* ~"Mam kilka pytań na twój temat..."~ */ GOTO 4
  IF ~~ THEN REPLY #29466 /* ~"Mam kilka pytań na temat tego miejsca..."~ */ GOTO 4
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29467 /* ~"Co wiesz o Raveli Szaradnej?"~ */ GOTO 4
  IF ~~ THEN REPLY #29468 /* ~"Nic, żegnaj."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2 5.0
  SAY #29469 /* ~Mężczyzna wkłada do ust małego, czerwonego cukierka. "Zawsze tak męczysz potężnych czarodziejów swoją bezsensowną paplaniną?! Paplanina, pusta gadanina, bełkot, SZCZĘKANIE ZĘBAMI!" Przy 'bełkocie' cukierek wylatuje z jego ust wysoko w powietrze i pada na ziemię z mokrym *plaśnięciem*. Człowiek przygląda mu się ze smutkiem.~ */
  IF ~~ THEN REPLY #68083 /* ~"Moje pytanie...?"~ */ GOTO 6
  IF ~~ THEN REPLY #29470 /* ~"Jest mi, hm, przykro z powodu twojego cukierka."~ */ GOTO 6
  IF ~~ THEN REPLY #29471 /* ~Podnieś go i zjedz.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Quell_1","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY #29473 /* ~Mężczyzna wydaje z siebie niewyobrażalny jęk i uderza się w czoło. "Nic? *ŻEGNAJ*?"~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 4.0 4.1
  SAY #29474 /* ~"Był taki *smaczny*..." mówi kwiląc. Nagle, warcząc spogląda w górę. "PRZEPRASZAM?! Powinno ci być przykro, ty żuczku! Czarodzieje zasługują na szacunek, a tacy hultaje jak ty powinni znać swoje właściwe miejsce!" Zaczyna podskakiwać w górę i w dół. "Właściwe miejsce! Właściwe miejsce!"~ */
  IF ~~ THEN REPLY #29475 /* ~"Uspokój się, chcę tylko zadać ci parę pytań..."~ */ GOTO 11
  IF ~~ THEN REPLY #29476 /* ~Porwij cukierka czarodzieja i zjedz go.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Quell_1","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.1
  SAY #29478 /* ~Chwytasz cukierka i wkładasz do ust; jest słodki i orzeźwiająco ostry. Czarodziejowi opada szczęka. "Mój... mój bosko smaczny Dwutopijny cukierek owocowy!"~ */
  IF ~~ THEN REPLY #29479 /* ~"Dobre było. Mogę dostać jeszcze jednego?"~ */ GOTO 8
  IF ~~ THEN REPLY #29480 /* ~"Uspokój się, chcę tylko zadać ci parę pytań..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #29483 /* ~"Jeszcze jednego?! *Jeszcze* jednego?! Co za zuchwalstwo! Dlaczego myślisz, że *zasługujesz* na jeszcze jednego cukierka, ty niewychowana, tępa głowo?!"~ */
  IF ~~ THEN REPLY #29484 /* ~"Nie *zasługuję* na niego, *chcę* go. Dawaj."~ */ GOTO 12
  IF ~~ THEN REPLY #29485 /* ~"Nie bądź taki... daj jednego."~ */ GOTO 9
  IF ~~ THEN REPLY #29486 /* ~"Zapomnij o tym."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.1 12.0
  SAY #29487 /* ~"Nie dam ci nic! I tobie się to *spodoba*." Dla potwierdzenia swych słów wkłada do ust cukierka. "Mmmmmm. *Taaaaaki* dobry." Obraca go w ustach z zamkniętymi oczami, jakby był wniebowzięty z rozkoszy. "*Taaaaaki* pyszny."~ */
  IF ~~ THEN REPLY #29488 /* ~"*Chcę* jednego, a ty mi go *dasz*. Dawaj w tej chwili."~ */ GOTO 12
  IF ~~ THEN REPLY #29489 /* ~"Świetnie, a zatem... Zapomnij o tym."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 8.2 9.1 12.1
  SAY #29490 /* ~"Zrobię tak! Zapomniałem! Nie ma, ty ptasi móżdżku! Teraz żegnam."~ */
  IF ~~ THEN REPLY #29491 /* ~"Ale... Miałem kilka pytań..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 6.0 7.1 10.0 13.1
  SAY #29493 /* ~"*NIE* obchodzi mnie to, ty napuszony, tępy głąbie!" Mężczyzna wybałusza oczy, ze złością wskazując na ciebie palcem: "Nie ma cię tu! JUŻ! WYNOCHA!" I nie wracaj tutaj dopóki nie będziesz gotów okazywać właściwego szacunku... przyjdź z daniną - podarunkiem!" Nagle podchodzi do ciebie blisko i szepcze jedną stroną ust: "Mile widziane cukierki lub czekolada. Ale nic pospolitego, zapamiętaj sobie - przynieś coś *egzotycznego*. A teraz, zmiataj stąd!"~ */
  IF ~  PartyHasItem("ChocoQ")
~ THEN REPLY #29494 /* ~"Zaczekaj... mam tę importowaną czekoladę. Mógłbym ci ją dać jako prezent..."~ */ GOTO 14
  IF ~~ THEN REPLY #68057 /* ~"W porządku... rozejrzę się zatem po tej dzielnicy za czymś odpowiednim."~ */ JOURNAL #68058 /* ~Pewien cokolwiek ekscentryczny mag imieniem Quell odmawia rozmowy ze mną, twierdząc, że nie oddałem mu należnego szacunku, bo nie ofiarowałem mu żadnego podarunku. Quell życzy sobie czekolady albo innych słodyczy, ale łakocie te nie mogą być zwykłe a 'egzotyczne'. Obiecałem mu, że poszukam czegoś w Dzielnicy Urzędniczej, gdzie nieraz sprzedają takie rzeczy.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.0
  SAY #29495 /* ~"Jak *śmiesz* tak niewdzięcznie *żądać* ode mnie cukierka, jak gdyby było to jakieś boskie prawo, dane ci przez największą z Mocy! Powinienem się *ugiąć* wobec twojej zachcianki, o Wielki? Przekazać moje cenne cukierki w twoje świętokradcze ręce? A może bym tak najpierw namaścił je drogocennymi olejkami i pobłogosławił?" Przy każdym słowie uderza nogą o ziemię" "Nie! Nie! Nie! Nic z tego!"~ */
  IF ~~ THEN REPLY #29496 /* ~"Nie bądź taki... daj jednego."~ */ GOTO 9
  IF ~~ THEN REPLY #29497 /* ~"Świetnie, więc. Zapomnij o tym."~ */ GOTO 10
END

IF ~  Global("Quell","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #29498 /* ~Czarodziej śledzi twoje nadejście i jego twarz nieruchomieje. "Nie do wiary! Zdecydowałeś się po raz kolejny zakłócić mój spokój swoją ohydną osobą, ty niedorobiony, śmierdzący skurlu?" Wstrzymuje na chwilę swoją orację, aby zjeść małego miętowego cukierka. "Żywię nadzieję, że nauczyłeś się *manier*!"~ */
  IF ~  PartyHasItem("ChocoQ")
~ THEN REPLY #29499 /* ~"Mam dla ciebie w podarunku trochę importowanej czekolady."~ */ GOTO 14
  IF ~~ THEN REPLY #29500 /* ~"Właściwie, to mam kilka pytań..."~ */ GOTO 11
  IF ~~ THEN REPLY #29501 /* ~"Pójdę już sobie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0 13.0
  SAY #29502 /* ~"Och?" Jego zachowanie zmienia się w jednej chwili. "Bardzo uprzejmie z twojej strony, bardzo elegancko! Mogę rzucić okiem?"~ */
  IF ~~ THEN REPLY #29503 /* ~Pokaż mu czekoladę.~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29504 /* ~"Tak naprawdę, to nie."~ */ GOTO 15
  IF ~~ THEN REPLY #29505 /* ~"To będzie musiało zaczekać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #29506 /* ~Cofa się, całkowicie zdumiony. "CO?!"~ */
  IF ~~ THEN REPLY #29507 /* ~"Tylko się droczyłem. Oto ona..."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29508 /* ~"Naprawdę nie wydaje mi się, żebyś na nią zasługiwał. Byłeś taki nieuprzejmy."~ */ GOTO 16
  IF ~~ THEN REPLY #29509 /* ~"Przyniosę ją później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #29510 /* ~"Ty... ty *co*?" Mężczyzna zaczyna podskakiwać wkoło. "Absurdalne! Komiczne! Śmieszne! *Niegrzecznym* byłoby zamienienie cię w miskę fasolki z Baator, zjedzenie i rozrzucenie po całym Sigil w postaci śmierdzących kłębów prosto z mojego tyłka! *TO* byłoby naprawdę niegrzeczne, zapewniam cię!"~ */
  IF ~~ THEN REPLY #29511 /* ~"Tak czy inaczej, nie dostaniesz dopóki nie przeprosisz."~ */ GOTO 17
  IF ~~ THEN REPLY #29512 /* ~"Tylko się droczyłem. Oto ona..."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29513 /* ~"Być może przyniosę ją później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #29514 /* ~Natychmiast milknie, a jego oczy zwężają się podejrzliwie. "Pozwoliłbyś mi przynajmniej wcześniej *zobaczyć* ten podarunek?"~ */
  IF ~~ THEN REPLY #29515 /* ~Pokaż mu czekoladę tylko na moment.~ */ GOTO 18
  IF ~~ THEN REPLY #29516 /* ~"Naprawdę tylko żartowałem. Oto ona..."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29517 /* ~"Być może przyniosę ją później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #29518 /* ~Nakrycie głowy mężczyzny wystrzeliwuje w powietrze z odbijającym się echem hukiem i ląduje z powrotem dokładnie na jego głowie. "Och... a niech to. Czy to... czy to jest...?" Oblizuje usta sięgając ostrożnie po czekoladę.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #29519 /* ~"Och, nie. Przeprosiny. Natychmiast."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #29520 /* ~"Och, nie. Przeprosiny. Natychmiast."~ */ GOTO 20
  IF ~~ THEN REPLY #29521 /* ~Niech ją weźmie.~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29522 /* ~"Być może przyniosę ją później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #29523 /* ~Mężczyzna wykrzywia twarz i zagryza usta, potrząsając w milczeniu pięścią. W końcu przestaje, powoli wygładza ubranie i wolno wypuszcza powietrze. "Dobrze więc, panie. Przepraszam." Zauważasz, że trzyma jedną rękę za plecami.~ */
  IF ~~ THEN REPLY #29524 /* ~"Hmm. W porządku, oto ona: tabliczka czekolady."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29525 /* ~"Być może przyniosę ją później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #29526 /* ~Wykrzywia twarz i zagryza usta, potrząsając w milczeniu pięścią. W końcu przestaje, powoli wygładza ubranie i wolno wypuszcza powietrze. "Dobrze więc, panie. Przepraszam." Zauważasz, że trzyma jedną rękę za plecami.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 290
END

IF ~~ THEN BEGIN 21 // from:
  SAY #29527 /* ~"Cisza, ty bełkoczący... och! To znaczy, niby dlaczego, nie robię nic takiego?" Czarodziej uśmiecha się niewinnie pokazując ci swoje ręce.~ */
  IF ~~ THEN REPLY #29528 /* ~"Hmm. W porządku, oto ona: tabliczka czekolady."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29529 /* ~"Być może przyniosę ją później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0 16.1 17.1 18.2 19.0 21.0
  SAY #29530 /* ~Mężczyzna bierze je z twoich rąk. "Och... są rzadko spotykane i najsmaczniejsze." Odgryza duży kęs i wtyka resztę pod tunikę.~ */
  IF ~~ THEN REPLY #29531 /* ~"Mam kilka pytań..."~ */ GOTO 23
  IF ~~ THEN REPLY #29532 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #29533 /* ~Nie zdejmując z ciebie wzroku, mężczyzna marszczy brwi i zlizuje z palców resztki czekolady. "Kto kazał ci dręczyć mnie głupimi pytaniami?!" Przygląda ci się z wyrzutem. "Podejdź teraz... powiedz, z czym mi się naprzykrzasz, albo sobie idź!" Wyciąga z rękawa kulkę słodu i zjada ją.~ */
  IF ~~ THEN REPLY #29534 /* ~"Kim jesteś?"~ */ GOTO 25
  IF ~  Global("Quell_Spells","AR0604",1)
~ THEN REPLY #29535 /* ~"Chciałbym kupić kilka zaklęć."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~  Global("Quell_Candy","AR0604",0)
~ THEN REPLY #29537 /* ~"Mogę dostać cukierka?"~ */ GOTO 30
  IF ~  Global("Quell_Candy","AR0604",1)
~ THEN REPLY #29539 /* ~"Chciałbym kupić parę cukierków."~ */ DO ~StartStore("Quell_C",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29540 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 33
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29541 /* ~"Co wiesz o Raveli Szaradnej?"~ */ GOTO 34
  IF ~~ THEN REPLY #29542 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 26.2 27.0 28.1 29.0 30.1 32.1 33.0 34.1 35.5 36.2 38.2 39.1 40.1 41.2 42.1 43.1 46.0 47.1 48.2 49.0 50.1 51.2 52.1 53.4 54.1 55.1 56.0 57.3
  SAY #29538 /* ~Mężczyzna przewraca oczami, nakazując ci ruchem ręki, żebyś mówił dalej.~ */
  IF ~~ THEN REPLY #29543 /* ~"Kim jesteś?"~ */ GOTO 25
  IF ~  Global("Quell_Spells","AR0604",1)
~ THEN REPLY #29544 /* ~"Chciałbym kupić kilka zaklęć."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~  Global("Quell_Candy","AR0604",0)
~ THEN REPLY #29546 /* ~"Mogę dostać cukierka?"~ */ GOTO 30
  IF ~  Global("Quell_Candy","AR0604",1)
~ THEN REPLY #29547 /* ~"Chciałbym kupić parę cukierków."~ */ DO ~StartStore("Quell_C",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29548 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 33
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29549 /* ~"Co wiesz o Raveli Szaradnej?"~ */ GOTO 34
  IF ~~ THEN REPLY #29550 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #29551 /* ~"Jestem... Quell." Majestatycznie unosi do góry rękę, jak gdyby chcąc powstrzymać cię przed przedstawieniem się. "...i daruj sobie przedstawianie się: musisz być tym najbezczelniejszym, najbardziej upierdliwym robakiem po tej stronie Sigil, o jakim tyle słyszałem!"~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #29552 /* ~"Sama *przyjemność* cię spotkać. Podziękuj Mocom, że nie poczekały, aż się skurczysz i umrzesz, oszczędzając mi w ten sposób bólu, jakim był przymus kpienia z ciebie! Z chęcią zamieniłbym moje wspaniałe magiczne moce za choćby lichy czar, który przekłułby twoją grubą czaszkę i zaszczepił w niej przynajmniej znajomość dobrych 'manier'!"~ */
  IF ~~ THEN REPLY #29553 /* ~"Dobre wychowanie? A co z czekoladą, którą dostałeś?"~ */ GOTO 27
  IF ~~ THEN REPLY #29554 /* ~"Wspaniałe moce magiczne? Mógłbyś mnie nauczyć?"~ */ GOTO 48
  IF ~~ THEN REPLY #29555 /* ~"Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29556 /* ~"To wszystko, czego chciałem się dowiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #29557 /* ~Mężczyzna podnosi palec, otwiera usta, aby przemówić, i zatrzymuje się. "Hmm. Tu mnie masz, panie." Wzrusza ramionami i je kolejnego cukierka.~ */
  IF ~~ THEN REPLY #29558 /* ~"Tak jak myślałem. Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29559 /* ~"Tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #29560 /* ~Mężczyzna wygląda na zdumionego. "Ja? Kapelusz? Namotałeś mi... nie noszę kapelusza!" Ściąga usta i z przymrużonymi oczami mierzy cię od stóp do głów podejrzliwym spojrzeniem.~ */
  IF ~~ THEN REPLY #29561 /* ~"Jeśli to nie kapelusz, to co lśni na twojej głowie?"~ */ GOTO 29
  IF ~~ THEN REPLY #29562 /* ~"Nie, ale chcę zadać inne pytania..."~ */ GOTO 24
  IF ~~ THEN REPLY #29563 /* ~"W porządku... nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #29564 /* ~"Całkowite szaleństwo! Nie mam nic na głowie... nic, mówię! I więcej nie będę rozmawiał na ten temat, dziękuję."~ */
  IF ~~ THEN REPLY #29565 /* ~"Hmm. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29566 /* ~"W porządku... nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.2 24.2
  SAY #29567 /* ~"Cukierka?! Jeszcze raz, żebyśmy się dobrze zrozumieli: *cukierka*?! Dlaczego, chciałbym usłyszeć, myślisz, że *dałbym* cukierka takiemu nędznemu, zuchwałemu dyniogłowemu jak ty, ha?" Stoi, przytupując nogą, ze skrzyżowanym na piersi rękami i oczekuje twojej odpowiedzi.~ */
  IF ~~ THEN REPLY #29568 /* ~"Czy w takim razie *sprzedałbyś* kilka?"~ */ DO ~SetGlobal("Quell_Candy","AR0604",1)
~ GOTO 31
  IF ~~ THEN REPLY #29569 /* ~"Nic. Mam inne pytanie..."~ */ GOTO 24
  IF ~~ THEN REPLY #29570 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #29571 /* ~"Otóż... otóż *mógłbym*. Ale ostrzegam cię! Nie sprzedaję zwykłych cukierków, ale czekoladki... *mocy*!" Przeciąga ostatnie słowo i zaciera chciwie ręce...~ */
  IF ~~ THEN REPLY #29572 /* ~"Czekoladki... mocy?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #29573 /* ~Mężczyzna kiwa głową. "W rzeczy samej. Miej na uwadze, że nie są *tanie*, więc gdyby przypadkiem zabrakło ci brzdęku, proponuję, abyś *natychmiast* zaniechał tematu. Chcesz zobaczyć, co mogę ci zaoferować, ha?" Zadziera do góry głowę i patrzy na ciebie chytrze.~ */
  IF ~~ THEN REPLY #29574 /* ~"Tak."~ */ DO ~StartStore("Quell_C",Protagonist)
~ JOURNAL #28833 /* ~W prywatnym sensorium Gmachu Rozrywki spotkałem maga imieniem Quell. Sprzedaje on różnorakie magiczne czekoladki. Każda z nich obłożona jest różnorakimi zaklęciami, które zaczynają działać po zjedzeniu.~ */ EXIT
  IF ~~ THEN REPLY #29575 /* ~"Nie, ale chcę zadać kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29576 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.4 24.4
  SAY #29577 /* ~"Znajdujesz się w murach Gmachu Rozrywki, w ekskluzywnym... *bardzo* ekskluzywnym, dopóki *ty* się nie przyplątałeś... Prywatnym Sensorium. Na wypadek, gdybyś miał więcej głupich pytań na temat tego miejsca, porozmawiaj z Drzazgą. Znajdziesz go w przedsionku Gmachu."~ */
  IF ~~ THEN REPLY #29578 /* ~"Pozwól, że zapytam o coś innego..."~ */ GOTO 24
  IF ~~ THEN REPLY #29579 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.5 24.5
  SAY #29580 /* ~Na wspomnienie jej imienia, mężczyzna połyka cukierka, którego ssał, wydając przy tym głośny odgłos i krzywiąc się z bólu. "Co powiedzieć?! Dlaczego w ogóle mówić? Takie rzeczy, takie opowieści najlepiej przechowywać w zakurzonych księgach i zakamarkach umysłów starych ludzi! Źle, źle! Takie imię, takie imię... a tak mroczne opowieści krążą wokół niego, jak sępy nad padliną."~ */
  IF ~~ THEN REPLY #29581 /* ~"Obojętne, musisz mi powiedzieć."~ */ GOTO 35
  IF ~~ THEN REPLY #29582 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29583 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #29584 /* ~Mężczyzna przewraca oczyma i wrzuca do ust kolejnego cukierka. "To jest nocna wiedźma, mój chłopcze, która przybyła do Sigil... pełna zła i nieustannie gderająca; była, obfitując w magię cienia, gotowa stanąć w szranki z Panią Bólu. Świrnięta, świrnięta, świrnięta stara wiedźma... której jedynie udało się to, że została uwięziona w labiryncie. Prawdopodobnie w tej chwili jest już martwa."~ */
  IF ~~ THEN REPLY #29585 /* ~"Magię cienia?"~ */ GOTO 36
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29586 /* ~"Jak mogę ją znaleźć?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29587 /* ~"Jak mogę ją znaleźć?"~ */ GOTO 38
  IF ~~ THEN REPLY #29588 /* ~"Uwięziona w labiryncie?"~ */ GOTO 57
  IF ~~ THEN REPLY #29589 /* ~"Panią Bólu?"~ */ GOTO 57
  IF ~~ THEN REPLY #29590 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29591 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0 38.1 57.0
  SAY #29592 /* ~"Tak, tak, tak..." Wydaje się, że mówienie o niej jest dla niego kłopotliwe. "Ravela interesowała się... nie, nie interesowała się, ale *wspaniale* opanowała wszystkie szkoły magii. Znała magię cienia, magię iluzji i substancję cienia, cienie, naturę martwych rzeczy."~ */
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29593 /* ~"Jak mogę ją znaleźć?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29594 /* ~"Jak mogę ją znaleźć?"~ */ GOTO 38
  IF ~~ THEN REPLY #29595 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29596 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1 36.0 57.1
  SAY #29597 /* ~"Jak mógłbyś CO?!" Cukierek wypada mu z ust i spada prosto na posadzkę. Zanim masz okazję choćby mu się przyjrzeć, on go chwyta i wkłada sobie z powrotem do ust, rzucając ci złe spojrzenie.~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 35.2 36.1 37.0 57.2
  SAY #29598 /* ~"Po cóż... po cóż miałbyś *prosić* o taką rzecz? Jesteś *SZALONY?* Co mógłbyś w ogóle chcieć od tak złej istoty?"~ */
  IF ~~ THEN REPLY #29599 /* ~"Ona coś wie o mojej przeszłości."~ */ GOTO 39
  IF ~~ THEN REPLY #29600 /* ~"Mniejsza o to - co mówiłeś o 'magii cienia'?"~ */ GOTO 36
  IF ~~ THEN REPLY #29601 /* ~"Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29602 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #29603 /* ~"Wątpliwe... została zamknięta w labiryncie wieki temu. Przepadła - wpisana jest do księgi umarłych. A nawet gdyby z jakiegoś powodu i *jakimś sposobem* wciąż trzymała się życia swoimi przyczernionymi, krwawymi szponami, co mogłaby wiedzieć o *tobie*? To znaczy, gdyby nie była zwierciadlanym odbiciem gderającego zła i gdyby była choćby *chętna* ci pomóc..."~ */
  IF ~~ THEN REPLY #29604 /* ~"Pozostaje mi mieć nadzieję, że ona żyje i mi pomoże."~ */ GOTO 40
  IF ~~ THEN REPLY #29605 /* ~"Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29606 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #29607 /* ~"Na sześć cycków i wydęty brzuch Leshe, cóż to za migocząca iskierka nadziei, ciśnięta między wyjące wiatry Pandemonium! Nie bądź większym głupcem niż to konieczne!"~ */
  IF ~~ THEN REPLY #29608 /* ~"Pomimo tego muszę jej szukać, niezależnie od tego, czy żyje, czy nie."~ */ GOTO 41
  IF ~~ THEN REPLY #29609 /* ~"Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29610 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #29611 /* ~"Tak więc jeśli jest martwa - a najprawdopodobniej jest - czy wolno zapytać jaki jest twój plan? Wszystkiego już się domyśliłeś, nieprawdaż? Quell jedynie rzuca słowa na wiatr, nonsens! Co zamierzasz zrobić, jeśli ona znajduje się w księdze umarłych, he?"~ */
  IF ~~ THEN REPLY #29612 /* ~"Nie wiem. Coś wymyślę."~ */ GOTO 42
  IF ~~ THEN REPLY #29613 /* ~"Co według ciebie powinienem zrobić?"~ */ GOTO 47
  IF ~~ THEN REPLY #29614 /* ~"Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29615 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #29616 /* ~"A niech mnie, to jest najlepszy plan, jaki kiedykolwiek słyszałem! Czysty, olśniewający geniusz! Nie wiadomo jak dostać się do labiryntu, nie wiadomo jak się z niego wydostać, nie wiadomo co zrobić jeśli jest martwa, a już na pewno nie wiadomo, co zrobić jeśli żyje. Sądząc po wszystkich świrniętych bzdurach, jakie wygadujesz, równie dobrze mógłbym mówić do lemura!"~ */
  IF ~~ THEN REPLY #29617 /* ~"Możesz mi powiedzieć jak dostać się do labiryntu, w którym jest więziona?"~ */ GOTO 43
  IF ~~ THEN REPLY #29618 /* ~"Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29619 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 47.0
  SAY #29620 /* ~"Świr! Szaleniec! Pomyleniec! Nie słuchałeś tego, co mówię?! Jest uwięziona w wielowymiarowym *labiryncie* za próbę pokonania *PANI BÓLU*! Znaczy to, że jest co najmniej dziesięć razy głupsza i co najmniej sto razy potężniejsza od ciebie! Jest również najprawdopodobniej martwa, martwa, martwa, po trzykroć martwa i... jeśli za sprawą jakiś okoliczności nie jest martwa... to sprawi, że *ty* będziesz!"~ */
  IF ~~ THEN REPLY #29621 /* ~"Rozumiem, ale naprawdę potrzebuję twojej pomocy. Możesz mi powiedzieć jak się do niej dostać, czy nie?"~ */ GOTO 44
  IF ~~ THEN REPLY #29622 /* ~"Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29623 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #29624 /* ~Quell milknie, zagryzając usta. Po chwili przetrząsa tunikę w poszukiwaniu cukierka miętowego, którego następnie wkłada do ust. "Mówisz poważnie? W tej chwili? Dlaczego, aż tak poważnie, tak typowo dla Baator, tak uparcie jak osioł?" Wzdycha. "Cóż, urodziłeś się Tępy, umrzesz Tępy."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #29625 /* ~"Tak...?"~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",1)
~ JOURNAL #28832 /* ~Mag imieniem Quell powiedział mi, że dziwnym trafem, klucz do portalu prowadzącego do labiryntu Raveli to część jej samej.~ */ GOTO 45
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #18041 /* ~"Tak...?"~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #29626 /* ~"Wszystkie labirynty posiadają portale; *wiem*, że przynajmniej to jest prawdą. Jedno wejście, jedno wyjście... zgodnie z upodobaniem Pani. Nie znam portalu - jego położenia, czy choćby formy - ale mówiono mi, że klucz do niego... to część Raveli."~ */
  IF ~~ THEN REPLY #29627 /* ~"Część Raveli? Ale jeśli ona jest UWIĘZIONA W LABIRYNCIE, to jak mam..."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #29628 /* ~"Musisz improwizować. Znajdź coś, co nosi ślad Raveli, być może... to wszystko co wiem! Wszystko! Nie pytaj mnie już o to! Jeśli chcesz nagabywać kogoś o takie rzeczy, udaj się do Przybytku Zaspokajania Żądz Intelektualnych - jedna z przebywających tam dam z pewnością spotkała kogoś lub wie coś, co może pomóc."~ */
  IF ~~ THEN REPLY #29629 /* ~"Dziękuję. Mam jeszcze kilka pytań..."~ */ JOURNAL #66703 /* ~Quell zasugerował, abym w poszukiwaniu kluczy do Labiryntu Raveli udał się do Przybytku Zaspokajania Żądz Intelektualnych. Quell stwierdził, że jedna z tamtejszych dam, będzie wedle wszelkiego prawdopodobieństwo wiedziała o kimś, albo też o czymś, co może być dla moich wędrówek pomocne.~ */ GOTO 24
  IF ~~ THEN REPLY #29630 /* ~"Wielkie dzięki za twoją pomoc. Żegnaj."~ */ JOURNAL #66703 /* ~Quell zasugerował, abym w poszukiwaniu kluczy do Labiryntu Raveli udał się do Przybytku Zaspokajania Żądz Intelektualnych. Quell stwierdził, że jedna z tamtejszych dam, będzie wedle wszelkiego prawdopodobieństwo wiedziała o kimś, albo też o czymś, co może być dla moich wędrówek pomocne.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 41.1
  SAY #29631 /* ~"Pierwsze wspaniałe pytanie, jakie zadałeś! Ja? *Ja* myślę, że powinieneś zaniechać tego beznadziejnego pomysłu wchodzenia do labiryntu i rozmawiania z nocną wiedźmą i wpełznąć z powrotem do krypty, z której wylazłeś! To o wiele rozsądniejsze od narażania się na gniew Pani, naprawdę."~ */
  IF ~~ THEN REPLY #29632 /* ~"Możesz mi powiedzieć jak dostać się do labiryntu, w którym jest więziona?"~ */ GOTO 43
  IF ~~ THEN REPLY #29633 /* ~"Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29634 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 26.1
  SAY #29635 /* ~"*Nauczyć* cię?! Ha! Jesteś choćby *magiem*?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #29636 /* ~"Tak, jestem."~ */ GOTO 50
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #29637 /* ~"Nie, ale miałem nadzieję, że pomożesz mi się nim stać."~ */ GOTO 49
  IF ~~ THEN REPLY #29638 /* ~"Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29639 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #29640 /* ~Mężczyzna szyderczo się do ciebie uśmiecha. "NIE! Z pewnością *nie* zrobię z ciebie maga, ty powsinogo o rozmiękczonym mózgu! Postąpienie w ten sposób byłoby obrazą Sztuki!"~ */
  IF ~~ THEN REPLY #29641 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29642 /* ~"Mniejsza o to, zatem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #29643 /* ~"Och! Jakież cudy czekają dzisiaj na Quella w tym wieloświecie! Podejdź i pozwól mi obejrzeć twoją księgę czarów."~ */
  IF ~~ THEN REPLY #29644 /* ~Pozwól mu na nią spojrzeć.~ */ GOTO 51
  IF ~~ THEN REPLY #29645 /* ~"Myślę, że nie. Pozwól, że zapytam o co innego..."~ */ GOTO 24
  IF ~~ THEN REPLY #29646 /* ~"Być może innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #29647 /* ~Mężczyzna wydziera ci ją z rąk i przygląda jej się z wściekłością. "Co to za śmieć?! Powiem ci: gówno! Gówno, gówno, gówno! Jak ty w ogóle możesz rzucać zaklęcia z tych poplamionych stronic... Musiałeś używać tej księgi jako ściery przy barze, tak nasączona jest alkoholem, mazią i krwią! Nie dbasz o własną księgę zaklęć?! Jak mogę uczyć kogoś, kto nie szanuje Sztuki?!"~ */
  IF ~~ THEN REPLY #29648 /* ~"Dlaczego istotny jest jej wygląd?"~ */ GOTO 52
  IF ~~ THEN REPLY #29649 /* ~"Kryje w sobie moje zaklęcia. Jej wygląd się nie liczy."~ */ GOTO 53
  IF ~~ THEN REPLY #29650 /* ~"Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29651 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 54.0
  SAY #29652 /* ~"Wygląd księgi zaklęć powinien odzwierciedlać twój szacunek dla mocy jaką w sobie kryje. Ta żałosna mała księga nadaje się jedynie do najpodlejszych ze słów! *Prawdziwe* zaklęcia powinny być zapisane niespotykanym, drogocennym atramentem na kartach z pergaminu, zdobionych złotym liściem! Wszystko ma być na swoim miejscu, albo niech całkiem przepadnie!" Zaczyna podskakiwać w około jak opętany. "Właściwe miejsce! Właściwe miejsce!"~ */
  IF ~~ THEN REPLY #29653 /* ~"Rozumiem... Możesz mnie nauczyć, czy nie?"~ */ DO ~SetGlobal("Quell_Spells","AR0604",1)
~ GOTO 55
  IF ~~ THEN REPLY #29654 /* ~"Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29655 /* ~"Zapomnij, że kiedykolwiek pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #29656 /* ~"Śmieszne! Absurdalne! Najśmieszniejszy pomysł, jaki kiedykolwiek słyszałem! Któż *uczył* cię Sztuki?"~ */
  IF ~  Global("Mage_Training","GLOBAL",1)
~ THEN REPLY #29657 /* ~"Znachorka na Placu Szmaciarzy imieniem Mebbet."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",2)
~ THEN REPLY #50720 /* ~"Pani Thorncombe, tutaj w Gmachu Rozrywki."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",3)
~ THEN REPLY #67160 /* ~"Pewien mag, którego spotkałem w Niższej Dzielnicy, Sebastion."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",4)
~ THEN REPLY #67161 /* ~"Pewna kobieta, którą spotkałem w Klątwie, Kitla."~ */ GOTO 54
  IF ~~ THEN REPLY #29658 /* ~"Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29659 /* ~"Zapomnij, że kiedykolwiek pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1 53.2 53.3
  SAY #29660 /* ~"Niech hańba okryje ich imiona za rozsiewanie tak nieopisanej paplaniny! I spójrz na te zaklęcia! Cóż to za czerstwe bzdury oni wygadują, zaśmiecając magię nazwami voodoo i nonsensownym mamrotaniem! Trywialne, delikatne, słabe jak płomyk na wietrze czary z imponującymi nazwami!"~ */
  IF ~~ THEN REPLY #29661 /* ~"Dlaczego więc jej wygląd ma znaczenie?"~ */ GOTO 52
  IF ~~ THEN REPLY #29662 /* ~"Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29663 /* ~"Zapomnij, że kiedykolwiek pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.0
  SAY #29664 /* ~Mężczyzna zamyka oczy i masuje sobie przez chwilę skronie. W końcu przemawia zimnym, beznamiętnym głosem: "Oczywistym jest, że nie mogę cię niczego nauczyć. Prawdopodobnie mam jednak kilka zaklęć, które być może będziesz chciał *kupić* ode mnie. Chcesz je zobaczyć? Hmmm?"~ */
  IF ~~ THEN REPLY #29665 /* ~"Tak."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29666 /* ~"Nie teraz. Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29667 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~  Global("Quell","GLOBAL",2)
~ THEN BEGIN 56 // from:
  SAY #29668 /* ~Gdy podchodzisz, Quell rozgląda się wkoło. "Cholera! Nie ma gdzie się schować!" Głośno wzdycha. "Cóż, do diabła z tym! Czego *teraz* ode mnie chcesz, hmm?" Wrzuca do ust cukierka i przygląda ci się z wyczekiwaniem.~ */
  IF ~~ THEN REPLY #29669 /* ~"Mam kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29670 /* ~"Nic, tylko przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 35.3 35.4
  SAY #29671 /* ~Mężczyzna smutno kiwa głową. "Pani Bólu... 'rządzi' miastem Sigil; utrzymuje Moce z daleka. Jedną z kar, jakie przygotowała dla tych, którzy z nią zadrą jest umieszczenie w labiryncie... odrywa część Sigil, wykręcając ją i skazując na wygnanie do niewiadomodokąd wraz z uwięzionym w środku winowajcą. Przepadają, przepadają, przepadają wtedy bez śladu w sferach!"~ */
  IF ~~ THEN REPLY #29672 /* ~"Wspomniałeś 'magię cienia'?"~ */ GOTO 36
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29673 /* ~"Jak mógłbym znaleźć Ravelę?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29674 /* ~"Jak mógłbym znaleźć Ravelę?"~ */ GOTO 38
  IF ~~ THEN REPLY #29675 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 24
  IF ~~ THEN REPLY #29676 /* ~"To wszystko, czego chciałem się dowiedzieć. Żegnaj."~ */ EXIT
END
