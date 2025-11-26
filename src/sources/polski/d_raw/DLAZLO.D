// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLAZLO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLAZLO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3026 /* ~Widzisz młodego chłopca, o bladej, żółtawej skórze. Jego ubranie jest brudne i zniszczone. Dogląda teraz pieca.~ */
  IF ~~ THEN REPLY #3027 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #36385 /* ~Zignoruj go.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36348 /* ~Odwraca się i na wpół uśmiecha, odstawiając robotę. "Witam... trza ci co pomóc?"~ */
  IF ~~ THEN REPLY #36386 /* ~"Tak, mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36387 /* ~"Nie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.3 7.2 8.2 9.2 10.1 11.2 12.1 13.1 14.1 15.1 16.1 18.1 19.0 22.0 24.0 25.2 26.1 27.2 28.1 29.1 30.1 32.1 33.0 34.0
  SAY #36349 /* ~"No, no, jakbym móg to bym ci pomóg..." Chłopak jest zadowolony, że oderwał się od roboty przy piecu. "O co chcesz mie spytać?"~ */
  IF ~~ THEN REPLY #36388 /* ~"Co to za miejsce?"~ */ GOTO 3
  IF ~~ THEN REPLY #36389 /* ~"Czy możesz mi opowiedzieć o tej dzielnicy?"~ */ GOTO 10
  IF ~~ THEN REPLY #36391 /* ~"Co możesz mi powiedzieć o mieście Sigil?"~ */ GOTO 20
  IF ~~ THEN REPLY #36392 /* ~"Dlaczego wszyscy tutaj w okolicy mają żółtą skórę?"~ */ GOTO 23
  IF ~~ THEN REPLY #36393 /* ~"Czy jest tutaj coś, co warto by było zobaczyć?"~ */ GOTO 25
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36394 /* ~"Szukam czaszki... znasz kogoś komu mogłoby się coś takiego przydać?"~ */ GOTO 31
  IF ~~ THEN REPLY #36395 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36350 /* ~Rozgląda się dokoła. "To Targ Pod Gołym Niebem. Przychodzi tu kupa kupujących i handlarzy, co by zrobić se leże na jeden dzień. Jezdem tu doś dugo, robie chwile pod okiem mojego starego." Wygląda jakby myślami był gdzieś indziej. "Kiedyś mógbym prowadzić jego stragan, oj mógbym."~ */
  IF ~~ THEN REPLY #36396 /* ~"Co tu robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #36398 /* ~"Mam kilka pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36351 /* ~Z dumą pokazuje na piec. "Ten piec jes do..." Wzrusza ramionami. "Nie wiem do czego jes, ale mój stary mówi, że trza pamiętać, żeby do niego dorzucać i polić jak trza."~ */
  IF ~~ THEN REPLY #36399 /* ~"Czy twój ojciec jest jednym z kupców?"~ */ GOTO 5
  IF ~~ THEN REPLY #36400 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36401 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36352 /* ~Potakuje głową. "Na imie mu Anze, o tam jes stragan mojego starego." Pokazuje na stragan, który jest po prawej stronie pieca. "Jak nie bedzie u niego co ci potrza, to cie skieruje w odpowiednie miejsce."~ */
  IF ~~ THEN REPLY #36402 /* ~"Co tu można kupić?"~ */ GOTO 6
  IF ~~ THEN REPLY #61999 /* ~"Rozumiem. Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #62001 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36353 /* ~Myśli przez chwilę. "Można pokupować sporo rzeczy: jedzenie, picie, magie, broń... patrzysz może za kupnem jakichś zapasów?"~ */
  IF ~~ THEN REPLY #36411 /* ~"Gdzie mogę kupić coś z magii?"~ */ GOTO 7
  IF ~~ THEN REPLY #36412 /* ~"Gdzie mogę kupić broń?"~ */ GOTO 8
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36413 /* ~"Gdzie mogę kupić poduszkę do trumny?"~ */ GOTO 9
  IF ~~ THEN REPLY #36414 /* ~"Mam kilka innych pytań do ciebie..."~ */ GOTO 2
  IF ~~ THEN REPLY #36415 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0 9.0
  SAY #36354 /* ~"Ano, możno pokupić coś z magii." Rozgląda się dokoła, po czym wskazuje w kierunku oddalonego straganu. "Tamten stragan przynależy do Aaleka i on może mieć coś z tych rzeczy."~ */
  IF ~~ THEN REPLY #36416 /* ~"Gdzie mogę kupić jakąś broń?"~ */ GOTO 8
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36417 /* ~"Gdzie mogę kupić poduszkę do trumny?"~ */ GOTO 9
  IF ~~ THEN REPLY #36418 /* ~"Mam kilka innych pytań do ciebie..."~ */ GOTO 2
  IF ~~ THEN REPLY #36419 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0 9.1
  SAY #36355 /* ~"Mój stary mógby ci pomóc, jego stragan jest o tam." Wskazał na stragan obok, po prawej stronie pieca. "Zowiom go Anze."~ */
  IF ~~ THEN REPLY #36420 /* ~"Gdzie mogę kupić coś z magii?"~ */ GOTO 7
  IF ~  Global("Dream","GLOBAL",3)
~ THEN REPLY #36421 /* ~"Gdzie mogę kupić poduszkę do trumny?"~ */ GOTO 9
  IF ~~ THEN REPLY #36422 /* ~"Mam kilka innych pytań do ciebie..."~ */ GOTO 2
  IF ~~ THEN REPLY #36423 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 7.1 8.1
  SAY #36356 /* ~Popatrzył dziwnie na ciebie i wzruszył ramionami. "Potrza ci tedy iś do Hamrysa. Zdaje mnie sie, że jego sklep jest na pónocny wschód stąd."~ */
  IF ~~ THEN REPLY #36424 /* ~"Gdzie mogę kupić coś z magii?"~ */ GOTO 7
  IF ~~ THEN REPLY #36425 /* ~"Gdzie mogę kupić broń?"~ */ GOTO 8
  IF ~~ THEN REPLY #36426 /* ~"Mam kilka innych pytań do ciebie..."~ */ GOTO 2
  IF ~~ THEN REPLY #36427 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #36357 /* ~Kiwa głową. "Ano tak, to jes Niższa Dzielnica. Zwykłe ludziska tu mieszkajom, takie jak ja abo mój stary." Źrenice rozszerzają mu się lekko; wygląda na ożywionego. "Wisz czemu nazywa sie to Niższa Dzielnica?"~ */
  IF ~~ THEN REPLY #36428 /* ~"Nie, dlaczego?"~ */ GOTO 11
  IF ~~ THEN REPLY #36429 /* ~"Nie obchodzi mnie dlaczego. Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36430 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36358 /* ~"Ano, jak sie przypuszcza, dzielnica ma kupę portali, które wiodom do Sfer Niższych poprzedziurawianych jak ser, nic innego, więc tak się mnie zdaje, że stąd sie wzieła nazwa." Uśmiecha się z dumą.~ */
  IF ~~ THEN REPLY #36431 /* ~"Dlaczego jest tu tak dużo portali do Niższych Sfer?"~ */ GOTO 12
  IF ~~ THEN REPLY #36432 /* ~"Czy z tych portali wychodzą jakieś stwory?"~ */ GOTO 13
  IF ~~ THEN REPLY #36433 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #62003 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36359 /* ~Wzrusza ramionami. "Jak i mnie tak i tobie jest to tajemnicom, śmiałku. Ni mom pewności po co som te Portale ani tyż skąd sie ony wzieły. Mogło się zdarzyć, że takom wole miała Pani, albo sie mi zdaje że móg to być zwykły przypadek." Znowu wzrusza ramionami.~ */
  IF ~~ THEN REPLY #62005 /* ~"Czy z tych portali wychodzą jakieś stwory?"~ */ GOTO 13
  IF ~~ THEN REPLY #62007 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #62009 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.0
  SAY #36360 /* ~Źrenice rozszerzają mu się nieco. "Ano. Większuś jes tu przejazdem..." Nerwowo przełyka ślinę; wygląda na strapionego.~ */
  IF ~~ THEN REPLY #36435 /* ~"Wyglądasz na zdenerwowanego, widziałeś to na własne oczy?"~ */ GOTO 14
  IF ~~ THEN REPLY #62013 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #62014 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #36361 /* ~"Ano, widziałem był." Przerywa i znowu przełyka. "Było to w zeszłem tygodniu, czy coś koło tego, kiedy widziałem był kilku abiszai jak przechodzom przez portal... Troche pogadali, a potem jeden z nich przeszedł był z powrotem. Ten co był został, ciągle tam jes..." Marszczy brwi.~ */
  IF ~~ THEN REPLY #62097 /* ~"O czym mówili?"~ */ GOTO 15
  IF ~~ THEN REPLY #36437 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #62098 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #36362 /* ~"Ni jezdem pewien, dla mnie to było jakby syczenie, ale wydaje mnie sie, że rozprawiali cuś o Wieży." Wzrusza ramionami.~ */
  IF ~~ THEN REPLY #62099 /* ~"Wieży?"~ */ JOURNAL #36020 /* ~Ten cały chłopak, Lazlo, twierdzi, że zna portal w pobliżu wieży oblężniczej. Znajduje się na on zwodzonym moście, lub przypominającym to urządzeniu - opis był niezbyt jasny. Ciekawe gdzie prowadzi ten portal?~ */ GOTO 16
  IF ~~ THEN REPLY #62100 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #62101 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36363 /* ~"Ano, to jeden z najdziwniejszych widoków w Dzielnicy. Nikt naprawde ni wie jak dugo ta stara pokiereszowano wieża tu stoi... ni możesz tam wejś, wiesz? Zaryglowana bardziej niźli pas cnoty. Ciekawym jes, co tam jes w środku..." Myśli przez chwilę. "Ten abiszai pokazywał był na Wieże i portal. Założem sie, że szukali byli klucza."~ */
  IF ~~ THEN REPLY #62102 /* ~"Jakiego klucza?"~ */ GOTO 17
  IF ~~ THEN REPLY #36440 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36441 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #36364 /* ~"Klucza do portalu, który prowadzi do Wieży. Do każdego portalu, żeby gdzieś wejś, potrza klucza. Tem kluczem może być ruch rękom, jakaś informacja, abo nawet myśl... wielu włożyło mnóstwo wysiłku, żeby dostać sie do Wieży. Jakby sie nie próbowało, to nigdy sie nie udaje."~ */
  IF ~~ THEN REPLY #62103 /* ~"Może tajemnica dostania się tam polega na tym, żeby nie chcieć tam wejść..."~ */ DO ~SetGlobal("Know_Tower_Key","GLOBAL",1)
~ JOURNAL #66276 /* ~W Niższej Dzielnicy znajduje się zamknięta na cztery spusty wieża oblężnicza. Z tego, co się dowiedziałem, wiele osób chciałoby dostać pozwolenie na wejście do środka, ale nikomu jeszcze się to nie udało, choćby poruszał w tym celu niebo i ziemię. Może to trochę dziwne, ale odnoszę wrażenie, że dostać się do środka wieży może tylko ten, który wcale o tym nie marzy...~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36365 /* ~Wzrusza ramionami. "Nie wim, śmiałku. Możliwe..."~ */
  IF ~~ THEN REPLY #62104 /* ~"Powiedz mi gdzie położony jest ten portal."~ */ JOURNAL #66280 /* ~Chłopak o imieniu Lazlo zdradził mi, że na urządzeniu przypominającym zwodzony most, usytuowanym na południe od placu targowego, znajduje się portal, który może prowadzić do wieży oblężniczej. Może powinienem to sprawdzić?~ */ GOTO 19
  IF ~~ THEN REPLY #36444 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36445 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #36366 /* ~Przerywa, żeby pomyśleć przez chwilę. "Z tyłu Wieży, na wschód od targu, jes taka maszyneria, jakby most zwodzony. Tam właśnie jes..." Spogląda w oddal.~ */
  IF ~~ THEN REPLY #36446 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36447 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.2
  SAY #36367 /* ~"Centrum Sfer, miasto gdzie prawie wszystko sie przecina. Ni można się nudzić, naprawde. Pani Bólu jes prawem, a reszta z nas próbuje, w jej cieniu, związać koniec z końcem." Śmieje się warkliwie, kaszląc.~ */
  IF ~~ THEN REPLY #36448 /* ~"Co możesz mi powiedzieć o Pani Bólu?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #36449 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #36368 /* ~"Niewiele o niej wim... trzyma Moce i biesów z dala od Sigil, z nikim ani nie gada ani sie nie zadaje... no może prócz dabusów. Zapisałaby cie w Księdze Umarłych bardzo prędziutko, jeśli przyszłoby ci do głowy oddać jej uwielbienie albo wyrządzić jakąś krzywde Sigil. Jej lico i ostrza dokoła byłyby ostatnią rzeczą jaką twe oczy byłyby zobaczyły..."~ */
  IF ~  Global("Evil_Rchasr_1","GLOBAL",0)
~ THEN REPLY #36450 /* ~"Ciekawe..."~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetGlobal("Evil_Rchasr_1","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Evil_Rchasr_1","GLOBAL",1)
~ THEN REPLY #68424 /* ~"Ciekawe..."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #36369 /* ~Gdy chłopak opowiada o twarzy otoczonej przez ostrza, twoja świadomość napełnia się wspomnieniem. Przez chwilę stoisz w pogrążającej się w mroku alei, ciężko oddychając. W ciemnościach podchodzi do ciebie osobliwie piękna kobieta, z twarzą okrytą ostrzami i o chłodnym spojrzeniu... nagle, wspomnienie blednie i znowu zaczynasz rozmawiać z chłopcem.~ */
  IF ~~ THEN REPLY #36451 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36452 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.3
  SAY #36370 /* ~"To choroba, nie co inno. Przez te zepsute powietrze. Przy tem dymie i całym tem smogu z fabryki, prawie ni można tu oddychać." Wzrusza ramionami. "Czasami, nie dobrze jes wychodzić, kiedy dym trzyma sie za dugo... Można se poparzyc oczy tam w czaszce, tam mówiom."~ */
  IF ~~ THEN REPLY #36453 /* ~"Czy nie można z tym nic zrobić?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36371 /* ~"Nie wim. Czasem wiatry idom od Iglicy i czyszczom powietrze ze smogu, ale nie jes to tak często, jak by sie chciało." Zaczyna mrugać i zerkać dokoła, po czym wzrusza ramionami. "Z woli Pani, jak sie mi zdaje. Troche bez sensu, ale co ma sens, jak sie na to patrzy tak dugo."~ */
  IF ~~ THEN REPLY #36454 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36455 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 2.4
  SAY #36372 /* ~"Niewiele jes tu do zobaczenia... Wielka Kuźnia robi wrażenie, jakby nie było, można by sie tam przejś... do domu Wyznawców, no wisz." Przerywa, żeby pomyśleć. "Większoś niezwykłych widoków jes w Wyższej Dzielnicy. Lepiej by było tam ci sie rozejrzeć... Podobno jes tam jakiś Przybytek, Gmach Rozrywki i pare innych miejsc, do których warto zajrzeć. Nie wim na pewno. Tu jezdem całe moje życie."~ */
  IF ~~ THEN REPLY #36456 /* ~"Opowiedz mi o Kuźni."~ */ GOTO 26
  IF ~~ THEN REPLY #36457 /* ~"Opowiedz mi o Wyznawcach."~ */ GOTO 27
  IF ~~ THEN REPLY #36458 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36459 /* ~"Mam kilka innych pytań..."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0 30.0
  SAY #36373 /* ~"W centrum dzielnicy, mniej więcy. Imponująca budowla, ni ma co. Pewnikiem trafisz, idź tyko na pónoc. Poznasz po wielkich wrotach." Zaznacza ci to na mapie.~ */
  IF ~~ THEN REPLY #36460 /* ~"Opowiedz mi o Wyznawcach."~ */ GOTO 27
  IF ~~ THEN REPLY #36461 /* ~"Rozumiem. Mam inne pytania."~ */ GOTO 2
  IF ~~ THEN REPLY #36462 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #36374 /* ~"Różniaście sie nazywajom: Wyznawcy, Bogowcy, Wyznawcy Źródła... przeważnie mówimy na nich Bogowcy. Majom swe leże w Wielkiej Kuźni i całkiem nieźle sie im wiedzie. To miła grupa. Wierzom, że każdy potrafi być wspaniałym, nawet tak wspaniałym jak Moce, jeśli sie tyko wystarczajonco chce. Znaczyć to może, że można zaczynać życie wiele razy, ale w końcu uda sie to to osiongnonć."~ */
  IF ~~ THEN REPLY #36463 /* ~"Opowiedz mi o Kuźni."~ */ GOTO 26
  IF ~~ THEN REPLY #36464 /* ~"Są więc kolejną frakcją. Do jakiej frakcji ty należysz?"~ */ GOTO 28
  IF ~~ THEN REPLY #36465 /* ~"Ciekawe. Mam inne pytania..."~ */ GOTO 2
  IF ~~ THEN REPLY #36466 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #36375 /* ~Uśmiecha się. "Ach, ja... i Stary... jezdeśmy Autonomami... jezdeśmy frakcją co to naprawde nie jes frakcją... jezdeśmy frakcją, która wierzy, że ludzie som wolni i mogom robić co chcom. Jezdeśmy w zasadzie wolnom grupą i nie bardzo nam sie uśmiecha tworzyć albo suchać innych frakcji."~ */
  IF ~~ THEN REPLY #36467 /* ~"Co jest celem tych wszystkich frakcji?"~ */ GOTO 29
  IF ~~ THEN REPLY #36468 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36469 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #36376 /* ~Zerka na ciebie. "Frakcje rządzom większom częściom Sigil i codziennymi interesami. Som różne grupy: som Martwi, Grabarze, co to zajmujom sie wszyskimi trupami z ulic, i w końcu som Guwernaci co tworzom prawo, i Czuciowcy... jes dużo frakcji. Tu w Niższej Dzielnicy, zadajem sie głównie z Wyznawcami, Bogowcami. Majom swe leże w Wielkiej Kuźni i som doś miłom grupom."~ */
  IF ~~ THEN REPLY #36470 /* ~"Co możesz mi powiedzieć o innych frakcjach?"~ */ GOTO 30
  IF ~~ THEN REPLY #36471 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36472 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #36377 /* ~Wzrusza ramionami. "Nic, naprawde. Nigdy mnie nie zależało, co by być Autonomem i w ogóle. W domach frakcji jes wiele ludzi co ci powiedzom co jes w śpiewce. Idź ich zapytaj."~ */
  IF ~~ THEN REPLY #36473 /* ~"Co możesz mi powiedzieć o tej Kuźni?"~ */ GOTO 26
  IF ~~ THEN REPLY #36474 /* ~"Rozumiem. Mam do ciebie inne pytania..."~ */ GOTO 2
  IF ~~ THEN REPLY #36475 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.5
  SAY #36378 /* ~Ożywia się trochę. "Szukasz czaszki! Założem sie, że wiem co sie z niom stało... w Dzielnicy jes pewien koleś, mag albo kapłan, o ile wierzyć śpiewce, który zbiera głowy i układa se na półkach jak książki. Mimo, że nie żyjom, majom takom magie, że odpowiadajom mu na jego pytania, mimo że som w Księdze Umarłych."~ */
  IF ~~ THEN REPLY #36476 /* ~"Gdzie mogę znaleźć tego kolesia?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #36379 /* ~Marszczy brwi. "Nie jezdem pewien, naprawde. Słyszałem był śpiewke, że ma swoje leże w jednym ze zniszczonych budynków gdzieś tu w okolicy, ale nigdym tam nie był." Pstryka palcami. "Jednak inni mogom wiedzieć... można by o to spytać Sebastiona."~ */
  IF ~~ THEN REPLY #36477 /* ~"Gdzie mogę znaleźć Sebastiona?"~ */ GOTO 33
  IF ~~ THEN REPLY #36478 /* ~"Rozumiem. Mam inne pytania..."~ */ GOTO 2
  IF ~~ THEN REPLY #36479 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #36380 /* ~Wskazuje niedbale na zachód. "Idź tam na plac i kieruj sie troche na pónocny zachód. Sebastion zmajstrował był se tam leże, przy takiej maszynerii, jakby moście zwodzonym."~ */
  IF ~~ THEN REPLY #36480 /* ~"Dziękuję. Mam inne pytania..."~ */ GOTO 2
  IF ~~ THEN REPLY #36481 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 34 // from:
  SAY #36381 /* ~"Znowu sie widzim. Masz może jakie zapytania, co bym ci z nimi móg pomóc?"~ */
  IF ~~ THEN REPLY #36482 /* ~"Tak..."~ */ GOTO 2
  IF ~~ THEN REPLY #36483 /* ~"Nie, żegnaj."~ */ EXIT
END
