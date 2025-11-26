// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCREED.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCREED~

IF ~  Global("Creeden","AR0300",0)
~ THEN BEGIN 0 // from:
  SAY #10080 /* ~Ten paskudnie wyglądający mężczyzna szybko się orientuje, że przyciągnął twoją uwagę. Po chwili jest już przy tobie, wychwalając swoje 'towary'. Taszczy za sobą długi drewniany kij, z którego zwisają dziesiątki pozbawionych skóry i przyrządzonych szczurów. Mówiąc, wskazuje on na nie swoją szeroką, pokrytą brudem ręką, i przez cały czas szczerzy swoje pożółkłe, wyszczerbione uzębienie. "Hej, śmiałku. Jak tam? Czyżbyśmy w tak piękny dzionek mieli chentke na trochie przeee-pysznych szczurków?"~ */
  IF ~~ THEN REPLY #12628 /* ~Przyjrzyj się 'szczurkom' dokładniej.~ */ GOTO 2
  IF ~~ THEN REPLY #12629 /* ~"Wolałbym już zjeść odpady."~ */ GOTO 4
  IF ~~ THEN REPLY #12630 /* ~"Jakie rodzaje... 'szczurków' masz na sprzedaż?"~ */ GOTO 5
  IF ~~ THEN REPLY #12631 /* ~"Nie dzisiaj... Mam jednak pytanie do ciebie..."~ */ GOTO 15
  IF ~~ THEN REPLY #12632 /* ~"Żadne z nich mnie nie interesują, dzięki. Żegnaj."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~  Global("Creeden","AR0300",1)
~ THEN BEGIN 1 // from:
  SAY #12560 /* ~"Hej tam, śmiałku, rad żem cię znów widzieć. "Masz chentke na pare smacznych szczurków Kridena?~ */
  IF ~~ THEN REPLY #12633 /* ~"Czemu nie... A jakie masz rodzaje?"~ */ GOTO 5
  IF ~~ THEN REPLY #12634 /* ~"Prędzej zjem własne wnętrzności niż takie ścierwo!"~ */ GOTO 4
  IF ~~ THEN REPLY #12635 /* ~"Nie, nie tym razem. Mam jednakże kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12636 /* ~"Nie, dzięki. Żegnaj."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #12561 /* ~Każdy szczur został pozbawiony skóry i oprawiony. Usunięto im łapy i ogony. Zwisają z kija powieszone na hakach przebijających ich szyje. Gdy się tak przyglądasz, na jak rozmaite sposoby zostały one przygotowane, dostrzegasz, że ich głowy są odrobinę zniekształcone - na każdej z czaszek znajduje się pokryta fałdami bulwiasta narośl - co wygląda na tkankę mózgową.~ */
  IF ~~ THEN REPLY #12637 /* ~"Te szczury wyglądają bardzo dziwnie."~ */ GOTO 3
  IF ~~ THEN REPLY #12638 /* ~"Wezmę jednego."~ */ GOTO 5
  IF ~~ THEN REPLY #12639 /* ~"Nie jadam takiego chłamu."~ */ GOTO 4
  IF ~~ THEN REPLY #12640 /* ~"Ani jednego, dzięki. Mam jednakże do pytanie do ciebie..."~ */ GOTO 15
  IF ~~ THEN REPLY #12641 /* ~"Żadnego szczura, dzięki. Żegnaj."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9344 /* ~"Ach, masz celne oko, śmiałku! Wszystkie te, które sprzedajem, należą do mózgoszkodników, o tak. Mniemam, że smakują one znacznie lepiej niż zwykłe szczury. Całkiem niezłe, naprawdę!" Proponuje ponownie, machając kusząco kijem przed twarzą... Szczury kołyszą się tam i z powrotem, wisząc niczym kawałki wołowiny.~ */
  IF ~~ THEN REPLY #12642 /* ~"Mózgoszkodniki?"~ */ GOTO 22
  IF ~~ THEN REPLY #12643 /* ~"Spróbuję jakiegoś."~ */ GOTO 5
  IF ~~ THEN REPLY #12644 /* ~"Obrzydlistwo. Prędzej zjem odpadki niż taki chłam."~ */ GOTO 4
  IF ~~ THEN REPLY #12645 /* ~"Ciekawe. Mam pytanie do ciebie..."~ */ GOTO 15
  IF ~~ THEN REPLY #12646 /* ~"To wszystko, co chciałem usłyszeć. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.2 3.2 5.4 6.1 7.1 8.1 9.1 59.1 60.1
  SAY #12562 /* ~Najwyraźniej wcale go to nie martwi. Zamiast tego mruga do ciebie i uśmiecha się wesoło. "Rzekne ci coś, śmiałku - nawet nie wiesz, co tracisz! Bednem tu, jeśli zmienisz zdanie..." Mężczyzna powraca do zachwalania swych szczurów przechodniom.~ */
  IF ~~ THEN DO ~SetGlobal("Creeden","AR0300",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.0 2.1 3.1 10.1 11.1 12.1 13.1 15.11 59.0 60.0 61.0
  SAY #12563 /* ~"Świetnie, śmiałku, świetnie! Jakiego byś se życzył?" Wskazuje na nie po kolei poczerniałym paznokciem. "Mam zapieczone, w ziołach, gotowane i smażone! Wszystkie świeżutkie, wszystkie pyszniutkie... i tylko trzy miedziaki za dwie sztuki!"~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12647 /* ~"Pieczonego."~ */ DO ~TakePartyGold(3)
~ GOTO 6
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12648 /* ~"W ziołach."~ */ DO ~TakePartyGold(3)
~ GOTO 7
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12649 /* ~"Gotowanego."~ */ DO ~TakePartyGold(3)
~ GOTO 8
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12650 /* ~"Smażonego."~ */ DO ~TakePartyGold(3)
~ GOTO 9
  IF ~~ THEN REPLY #12651 /* ~"Pyszniutkie? Wątpliwe. Kto by jadł tego typu odpady?"~ */ GOTO 4
  IF ~  PartyGoldLT(3)
~ THEN REPLY #12652 /* ~"Nie mam tyle... Mam za to parę pytań..."~ */ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #12653 /* ~"Nie mam tyle... Żegnaj."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12654 /* ~"Zastanowiwszy się ponownie, nie chce żadnego. Mam jednak pytanie do ciebie..."~ */ GOTO 15
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12655 /* ~"Gdyby się tak zastanowić, to prawdę mówiąc nie czuję głodu. Żegnaj."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12564 /* ~Wręczasz mu miedziaki, a on, szybkim ruchem, sięga drewnianym kijkiem po dwa zapieczone, odhacza je, i kładzie na twojej dłoni. Mruga do ciebie: "Smacznego, śmiałku!"~ */
  IF ~~ THEN REPLY #12656 /* ~Zjedz 'szczurka'.~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #12657 /* ~Odrzuć to z obrzydzeniem.~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #12565 /* ~Wręczasz mu miedziaki, a on, szybkim ruchem, sięga drewnianym kijkiem po dwa w ziołach, odhacza je, i kładzie na twojej dłoni. Mruga do ciebie: "Smacznego, śmiałku!"~ */
  IF ~~ THEN REPLY #12658 /* ~Zjedz 'szczurka'.~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #12659 /* ~Odrzuć to z obrzydzeniem.~ */ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #12566 /* ~Wręczasz mu miedziaki, a on, szybkim ruchem, sięga drewnianym kijkiem po dwa gotowane, odhacza je, i kładzie na twojej dłoni. Mruga do ciebie: "Smacznego, śmiałku."~ */
  IF ~~ THEN REPLY #12660 /* ~Zjedz 'szczurka'.~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #12661 /* ~Odrzuć to z obrzydzeniem.~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #12567 /* ~Wręczasz mu miedziaki, a on, szybkim ruchem, sięga drewnianym kijkiem po dwa smażone, odhacza je, i kładzie na twojej dłoni. Mruga do ciebie: "Smacznego, śmiałku."~ */
  IF ~~ THEN REPLY #12662 /* ~Zjedz 'szczurka'.~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #12663 /* ~Odrzuć to z obrzydzeniem.~ */ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #12568 /* ~Szczurze mięso jest miękkie i soczyste. Łatwo odchodzi od kości i roztapia się w twoich ustach. Jest ździebko tłuste i raczej pożywne, smakuje zaś jak... pewne inne mięso... które - masz pewność - dane ci było wcześniej kosztować. Mężczyzna spogląda na ciebie wyczekująco. "Smakuje? Może jeszcze?"~ */
  IF ~~ THEN REPLY #12664 /* ~"Smaczne było, ale mam do ciebie kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12665 /* ~"Dobrze. Wezmę jeszcze jednego."~ */ GOTO 5
  IF ~~ THEN REPLY #12666 /* ~"Nie, to było straszne."~ */ GOTO 14
  IF ~~ THEN REPLY #12667 /* ~"Ani jednego więcej. Żegnaj."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #12569 /* ~Szczurze mięso pachnie bogato i jest dość mocno przyprawione. Najwyraźniej moczono je przed upieczeniem w jakiejś ziołowej marynacie. Jest ździebko tłuste i raczej pożywne, smakuje zaś jak... pewne inne mięso... które - masz pewność - dane ci było wcześniej kosztować. Mężczyzna spogląda na ciebie wyczekująco. "Smakuje? Może jeszcze?"~ */
  IF ~~ THEN REPLY #12668 /* ~"Smaczne było, ale mam do ciebie kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12669 /* ~"Dobrze. Wezmę jeszcze jednego."~ */ GOTO 5
  IF ~~ THEN REPLY #12670 /* ~"Nie, to było straszne."~ */ GOTO 14
  IF ~~ THEN REPLY #12671 /* ~"Ani jednego więcej. Żegnaj."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0
  SAY #12570 /* ~Przyrządzone w ten sposób szczurze mięso jest raczej mdłe i gumowate. Smakuje z lekka jak... pewne inne mięso... które - masz pewność - dane ci było wcześniej kosztować. Uważasz, iż byłoby ono znacznie smaczniejsze, gdyby je przygotowano w inny sposób. Nie potrafisz zrozumieć, jak *ktokolwiek* może jeść gotowane mięso. Mężczyzna spogląda na ciebie wyczekująco. "Smakuje? Może jeszcze?"~ */
  IF ~~ THEN REPLY #12672 /* ~"Smaczne było, ale mam do ciebie kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12673 /* ~"Dobrze. Wezmę jeszcze jednego."~ */ GOTO 5
  IF ~~ THEN REPLY #12674 /* ~"Nie, to było straszne."~ */ GOTO 14
  IF ~~ THEN REPLY #12675 /* ~"Ani jednego więcej. Żegnaj."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #12571 /* ~Szczur jest przypalony, z zewnątrz otacza go twarda skórka, w środku jednak kryje się miękkie i soczyste mięso. Jest ździebko tłuste i raczej pożywne, smakuje zaś jak... pewne inne mięso... które - masz pewność - dane ci było wcześniej kosztować. Mężczyzna spogląda na ciebie wyczekująco. "Smakuje? Może jeszcze?"~ */
  IF ~~ THEN REPLY #12676 /* ~"Smaczne było, ale mam do ciebie kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12677 /* ~"Dobrze. Wezmę jeszcze jednego."~ */ GOTO 5
  IF ~~ THEN REPLY #12678 /* ~"Nie, to było straszne."~ */ GOTO 14
  IF ~~ THEN REPLY #12679 /* ~"Ani jednego więcej. Żegnaj."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2 12.2 13.2 61.1
  SAY #12572 /* ~Wygląda na szczerze zaskoczonego. "Smutno mi to słyszeć, śmiałku. Miłego dnia." Zdaje się być gotowy do odejścia.~ */
  IF ~~ THEN REPLY #12680 /* ~"Czekaj. Mam pytanie do ciebie..."~ */ GOTO 15
  IF ~~ THEN REPLY #12681 /* ~Pozwól mu odejść.~ */ DO ~SetGlobal("Creeden","AR0300",3)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.3 1.2 2.3 3.3 5.5 5.7 10.0 11.0 12.0 13.0 14.0 16.1 17.1 18.2 19.2 20.0 21.1 22.1 23.3 24.1 25.2 26.2 27.2 28.2 29.2 30.2 33.1 34.1 35.2 36.2 37.2 38.1 39.5 40.2 41.3 42.1 43.2 44.1 45.0 46.1 47.3 48.3 49.0 50.0 51.2 52.2 53.1 54.0 55.1 56.1 57.1 58.1 60.2 61.2 62.1 63.0
  SAY #12573 /* ~Z łatwością zarzuca sobie kij ze szczurami na ramię. "Co masz za pytanie, śmiałku?"~ */
  IF ~  Global("RP_Portal","GLOBAL",2)
~ THEN REPLY #48399 /* ~"Powiedziano mi, żebym zapytał mężczyznę o imieniu Kriden, stojącego przed Biurem do Spraw Szkodników i Zapobiegania Chorobom, o wypełnione śmieciami przejście znajdujące się na Placu Szmaciarzy. Możesz mi pomóc?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",3)
~ JOURNAL #47844 /* ~Kriden powiedział mi, że jeśli chcę przejść przez wypełnioną śmieciami bramę na Placu Szmaciarzy, powinienem porozmawiać o tym z kobietą o imieniu Nalls. Dodał, że znajdę ją na północny wschód od Biura do Spraw Szkodników, gdzie zwykle szpera w stercie rupieci.~ */ GOTO 63
  IF ~~ THEN REPLY #12682 /* ~"Kim jesteś?"~ */ GOTO 21
  IF ~~ THEN REPLY #12683 /* ~"Chcę z tobą porozmawiać o szczurach..."~ */ GOTO 23
  IF ~~ THEN REPLY #12684 /* ~"Co to za budynek, ten za tobą?"~ */ GOTO 17
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #12685 /* ~"Możesz mi opowiedzieć o tym... mieście?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #12686 /* ~"Możesz mi opowiedzieć o Sigil?"~ */ GOTO 28
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #12687 /* ~"Możesz mi opowiedzieć o tych slumsach?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 35
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #12688 /* ~"Możesz mi opowiedzieć o Ulu?"~ */ GOTO 36
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #12689 /* ~"Możesz mi opowiedzieć o Pani Bólu?"~ */ GOTO 50
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12690 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 51
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12691 /* ~"Zaginął mi mój dziennik. Nie widziałeś jakiegoś?~ */ GOTO 54
  IF ~~ THEN REPLY #12692 /* ~"Wezmę jednego z tych twoich szczurów, które tam masz."~ */ GOTO 5
  IF ~~ THEN REPLY #12693 /* ~"Nic. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 16 // from: 23.0
  SAY #12574 /* ~"Co? Te?" Potrząsa kijem, przez co oprawione szczury zaczynają podskakiwać niczym w makabrycznym tańcu. "Sam je łapiem. W piwnicach i alejkach Ula."~ */
  IF ~~ THEN REPLY #12694 /* ~"Rozumiem. Opowiedz mi o tym 'Ulu'."~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #12695 /* ~"Mam do ciebie kolejne pytanie."~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12696 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 17 // from: 15.3
  SAY #12575 /* ~Spogląda przez ramię. "To Biuro do Spraw Szkodników i Zapobiegania Chorobom, śmiałku. Wymieniam tam moje szczurze ogonki za pieniążki, a resztę przyrzondzam i sprzedajem."~ */
  IF ~~ THEN REPLY #12697 /* ~"Ktoś płaci za ogony tych szczurów?"~ */ GOTO 18
  IF ~~ THEN REPLY #12698 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #12699 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 18 // from: 17.0 26.1 47.1 48.2 57.0
  SAY #12576 /* ~"Tak jest, śmiałku! Taki trep tam jest, w Biurze do Spraw Szkodników i Zapobiegania Chorobom, co się zowie Lort, który płaci za nie nagrodem. Miedziaka za głowem - ech, ogon - tak. Ale to muszom być mózgoszkodniki, a nie zwykłe szczurki."~ */
  IF ~~ THEN REPLY #12700 /* ~"Powiedz mi coś więcej o tym Lorcie."~ */ GOTO 19
  IF ~~ THEN REPLY #12701 /* ~"Mózgoszkodniki?"~ */ GOTO 22
  IF ~~ THEN REPLY #12702 /* ~"Ciekawe. Odpowiedz mi na inne pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #12703 /* ~"Rozumiem. Jak na razie to już wszystko. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #12577 /* ~"Zwie sie Fineasz. Fineasz Lort. Myślem, że był niewygodnym typkiem, został wykolegowany przez jakiegoś konkurenta i przerzucono go tu, na zadupie Sigil. Trep siedzi se tam sam całymi dniami i nocami. Czeka cały czas na tych, co mu przynoszą szczurze ogony, by im zapłacić nagrodę. Wiesz, co jest w tym najlepsze? Biedak najpewniej uczulony jest na szczury, ponieważ cały czas ma potworną wysypkę! Ho, ho! Chwalem siły wyższe, żem nie jest na miejscu tego typka."~ */
  IF ~~ THEN REPLY #12704 /* ~"'Wykolegowany'? Jaki mógłby być ku temu powód?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #12705 /* ~"Sigil?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #12706 /* ~"Dobrze. Mam jeszcze inne pytanie..."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12707 /* ~"Być może złoże mu kiedyś wizytę. Żegnaj."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #12578 /* ~"No, jest całkiem gadatliwy. Potrafi godzinami kłapać swą jadaczką, jakiż to on mondry i takie tam. Może ma to z tym jakiś zwionzek?" Wzrusza ramionami.~ */
  IF ~~ THEN REPLY #12708 /* ~"Rozumiem. Kolejne pytanie."~ */ GOTO 15
  IF ~~ THEN REPLY #12709 /* ~"Być może pójdę z nim porozmawiać. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 21 // from: 15.1
  SAY #12579 /* ~"Co? Ja? Przecie żem Kriden, zwany z czasa Krid - Szczurzy Rzeźnik!" Uśmiecha się dumnie, ukazując nierówne rzędy swych pożółkłych, wyszczerbionych i krzywych zębów.~ */
  IF ~~ THEN REPLY #12710 /* ~"Ty niewątpliwie wydajesz się być... milszym... niż reszta wokół."~ */ GOTO 49
  IF ~~ THEN REPLY #12711 /* ~"Miło cię znowu widzieć, Kriden. Mam do ciebie kolejne pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #12712 /* ~"Być może znowu kiedyś sobie porozmawiamy, Kriden. Żegnaj.~ */ GOTO 59
END

IF ~~ THEN BEGIN 22 // from: 3.0 18.1 23.2 47.2
  SAY #12580 /* ~"Ta, śmiałku, mózgoszkodniki. Okropne stworzenia. Normalne szczury zżerajom jedynie nagromadzone zapasy, mnożom się i roznoszom choroby, to wszystko. Nic poza tym. Ale *czaszko* szczury - mózgoszkodniki, na które *ja* polujem - toż to utrapienie. Gdy się tego cholerstwa zbierze wienksza ilość, robiom się mondre, czasami *naprawdę* mondre.~ */
  IF ~~ THEN REPLY #12713 /* ~"Stają się bardziej inteligentne?"~ */ GOTO 24
  IF ~~ THEN REPLY #12714 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12715 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 23 // from: 15.2
  SAY #12581 /* ~Śmieje się głośno; jego nieświeży oddech cuchnie cebulą. "Trochę żem ekspert w tym jest! Co masz za pytanie, śmiałku?"~ */
  IF ~~ THEN REPLY #12716 /* ~"Skąd masz te wszystkie szczury?"~ */ GOTO 16
  IF ~~ THEN REPLY #12717 /* ~"Gdzie najlepiej łapać szczury?"~ */ GOTO 62
  IF ~~ THEN REPLY #12718 /* ~"Opowiedz mi o szczurach, które łapiesz."~ */ GOTO 22
  IF ~~ THEN REPLY #12719 /* ~"Nic. Pozwól mi spytać o coś innego..."~ */ GOTO 15
  IF ~~ THEN REPLY #12720 /* ~"Mniejsza z tym. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 24 // from: 22.0
  SAY #12582 /* ~"Mówiem ci, jako przed tobom stojem, że tak! Gdybym napotkał wiencej niż dwie dwudziestki, uciekłbym na wypadek, by mnie *to*..." Pstryka palcami, by pokreślić, o co mu chodzi. "...oj uciekłbym! Jeśli się pojawiom w wienkszej grupie, och, och... stajom się mondruśkie niczym człowiek, oj stajom!~ */
  IF ~~ THEN REPLY #12721 /* ~"Kontynuuj..."~ */ GOTO 25
  IF ~~ THEN REPLY #12722 /* ~"Ciekawe. Pozwól mi spytać o coś innego..."~ */ GOTO 15
  IF ~~ THEN REPLY #12723 /* ~"Rozumiem. To wszystko, co jest mi na razie potrzebne. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #12583 /* ~"Oto najlepsza rada, jakom ci mogem udzielić, śmiałku... Jeśli się zdecydujesz łapać mózgoszkodniki, trzym się mniejszych grup. Z tuzin lub jakoś tak, nie wiencej. Powiem ci jednak..." Przysuwa się bliżej, zionąc ci w twarz, i przemawia cicho. "Jeśli się natkniesz na wiencej... wiencej niż kilkanaście... to, to jakbyś się już znalazł w cieniu Pani!" Odsuwa się od ciebie ponownie.~ */
  IF ~~ THEN REPLY #12724 /* ~"Dlaczego? Czego tu się bać?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #12725 /* ~"Pani?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #12726 /* ~"W takim razie będę na nie uważać. Mam inne pytanie..."~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12727 /* ~"Zapamiętam to sobie. Żegnaj."~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12584 /* ~"Magia, śmiałku... magia! Sporo istnieje takich istot piekielnych, które posiadły jakowe moce udziwnione. Mogom sprawić, że każdemu hultajowi mózg wypłynie uszami, oj mogom! Wyjątkowo przerażajonce. Coś tu nie tak, mówiem ci. Dlatego to Sigil tak usilnie stara się ich pozbyć... No, nagroda i takie tam."~ */
  IF ~~ THEN REPLY #12728 /* ~"Sigil?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #12729 /* ~"Nagroda? Ktoś płaci za szczurze ogony?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #12730 /* ~"Rozumiem. Pozwól mi spytać o coś..."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12731 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 27 // from: 15.4
  SAY #12585 /* ~"Sigil, o to ci biega? Co byś chciał, bym ci o tej starej Klatce powiedział, śmiałku?"~ */
  IF ~~ THEN REPLY #12732 /* ~"Dlaczego nazywasz je Klatką?"~ */ GOTO 29
  IF ~~ THEN REPLY #12733 /* ~"Gdzie dokładnie znajduje się to miejsce?"~ */ GOTO 42
  IF ~~ THEN REPLY #12734 /* ~"W zasadzie nic. Mam jednak parę innych pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12735 /* ~"Nic... Mniejsza z tym. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 28 // from: 15.5 19.1 26.0
  SAY #12586 /* ~"Ta, Sigil... Klatka... Co chcesz wiedzieć, śmiałku?"~ */
  IF ~~ THEN REPLY #12736 /* ~"Dlaczego nazywasz je Klatką?"~ */ GOTO 29
  IF ~~ THEN REPLY #12737 /* ~"Gdzie dokładnie znajduje się to miejsce?"~ */ GOTO 42
  IF ~~ THEN REPLY #12738 /* ~"Nic, prawdę mówiąc. Mam jednak inne pytania..."~ */ GOTO 15
  IF ~~ THEN REPLY #12739 /* ~"Nic... Mniejsza z tym. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #12587 /* ~Potrząsa głową i śmieje się, przez co wiszące na kiju mózgoszkodniki zaczynają wirować. "Widzisz, śmiałku, wszystko przez te drzwi. Sporo ludu zwie Sigil 'Miastem Drzwi'... Magicznych drzwi. Są wszendzie i wszystkie wszendzie prowadzom. Podkreślem: *wszendzie*! Takiż jednak problem, że wszystkie... wszystkie są zamknięte. Tego też jest ono bardziej Klatkom niż czym innym... Możesz wejść tylko wtedy, gdy masz odpowiedni klucz."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12740 /* ~"Opowiedz mi o tych drzwiach i kluczach."~ */ GOTO 30
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12741 /* ~"Opowiedz mi o tych drzwiach i kluczach."~ */ GOTO 31
  IF ~~ THEN REPLY #12742 /* ~"Rozumiem. Pozwól mi zadać ci inne pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #12743 /* ~"To już wszystko, o co chciałem zapytać. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0
  SAY #12588 /* ~"Hej-hoo! Chcesz się o śpiewki wszelakie dowiedzieć? Oj chcesz... Cóż, dam ci najkrótszą z nich: Klatka pełna jest drzwi. Te drzwi znajdujom się wszendzie, w każdym miejscu Sigil... Ale nie potrafisz ich dostrzec, jeśli nie masz odpowiedniego klucza. Każde z drzwi ma swój własny klucz i każdy klucz jest inny. Jeden z nich może być prawdziwym kluczem, z bronzu - i takie tam... Jarzysz? Ale inny może być, powiedzmy... - gotowanym szczurem. Albo wesołom melodiom, jakom, zanucisz stojonc przede drzwiami. Gdy masz już odpowiedni klucz, możesz przez nie przejść i dostać się tam, gdzie cię one zaniosom."~ */
  IF ~~ THEN REPLY #12744 /* ~"Skąd wiadomo, dokąd prowadzą drzwi?"~ */ GOTO 33
  IF ~~ THEN REPLY #12745 /* ~"Jak się dowiedzieć, który klucz otwiera jakie drzwi?"~ */ GOTO 34
  IF ~~ THEN REPLY #12746 /* ~"Interesujące. Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12747 /* ~"Dzięki za informacje. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #12589 /* ~Szczurołap wpatruje się zdziwiony w unoszącego się obok ciebie Mortego. "Śmiełek by se pewnie pomyślał, że powinieneś spytać swojego mimira o cień tej sprawy, oj tak..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 155
END

IF ~~ THEN BEGIN 32 // from:
  SAY #12590 /* ~Szczurołap, zarówno wpatrując się w ciebie zmieszany, jak i drapiąc po głowie, orientuje się nagle, iż po raz kolejny przyciąga twoją uwagę. Pozbywa się więc zmieszanego wyrazu twarzy i zbiera się w sobie.~ */
  IF ~~ THEN REPLY #12748 /* ~Pozwól mu mówić.~ */ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 30.0 34.0
  SAY #12591 /* ~Marszczy brwi i deliberuje nad odpowiedzią. "Jest szansa, że znajonc klucz, będziesz znać też miejsce, do którego wiodom drzwi. Jeśli otworzysz któreś z nich przez przypadek, musisz się mieć na baczności, oj musisz. Możesz spróbować wetknąć w nie głowę, by rzucić okiem... Tyle, że niektóre drzwi po prostu wsysajom cię do środka. Możesz się znaleźć w okropnych miejscach, śmiałku. Zachowaj me słowa w pamienci."~ */
  IF ~~ THEN REPLY #12749 /* ~"Skąd wiadomo, jaki klucz otwiera które drzwi?"~ */ GOTO 34
  IF ~~ THEN REPLY #12750 /* ~"Ciekawe. Pozwól, że spytam o coś innego..."~ */ GOTO 15
  IF ~~ THEN REPLY #12751 /* ~"Rozumiem. Dziękuję ci za odpowiedzi. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 34 // from: 30.1 33.0
  SAY #12592 /* ~Wzrusza ramionami i szarpie kijem, ponownie wprawiając ugotowane szkodniki w ruch. "Musisz po prostu zapytać odpowiednich ludzi. Ludzi, którzy znajom cienie dotyczące takich rzeczy, jak mniemam. Wiedz, że niektóre drzwi pozostajom wciąż w tym samym miejscu, inne zaś się przemieszczajom... Prendzej cię szlag trafi, niż ci się uda wyśledzić pozycję ich wszystkich. Ja nie używam drzwi zbyt czensto, za bardzo ci wienc pomóc nie mogem.~ */
  IF ~~ THEN REPLY #12752 /* ~"Skąd wiadomo, dokąd prowadzą drzwi?"~ */ GOTO 33
  IF ~~ THEN REPLY #12753 /* ~"Ciekawe. Pozwól mi spytać cię o coś innego..."~ */ GOTO 15
  IF ~~ THEN REPLY #12754 /* ~"Rozumiem. Dziękuję ci za odpowiedzi. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 35 // from: 15.6
  SAY #12593 /* ~Przez chwilę zdaje się być zmieszany. "Co? O Ulu? A co byś tu chciał znaleźć, śmiałku?"~ */
  IF ~~ THEN REPLY #12755 /* ~"Czy wiesz, od czego pochodzi nazwa Ul?"~ */ GOTO 37
  IF ~~ THEN REPLY #12756 /* ~"Jest tu coś godnego uwagi?"~ */ GOTO 39
  IF ~~ THEN REPLY #12757 /* ~"Nic, mniejsza z tym. Chcę o coś jeszcze zapytać..."~ */ GOTO 15
  IF ~~ THEN REPLY #12758 /* ~"Mniejsza z tym. To już wszystko. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 36 // from: 15.7 16.0
  SAY #12594 /* ~"Mój dom rodzinny i miejsce pracy! A co byś tu chciał znaleźć, śmiałku?"~ */
  IF ~~ THEN REPLY #12759 /* ~"Czy wiesz, od czego pochodzi nazwa Ul?"~ */ GOTO 37
  IF ~~ THEN REPLY #12760 /* ~"Jest tu coś godnego uwagi?"~ */ GOTO 39
  IF ~~ THEN REPLY #12761 /* ~"Nic, mniejsza z tym. Chcę spytać o coś jeszcze..."~ */ GOTO 15
  IF ~~ THEN REPLY #12762 /* ~"Mniejsza z tym. To już wszystko. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #12595 /* ~"Hrm..." Szczurołap drapie się po podbródku, jego palce pozostawiają na nim tłuste ślady. "Sporo jest o tym opowieści, o tak... Z tego, co pamientam, znajdowało się tu gdzieś skupisko budynków, gonszcz zaniedbanych chałup i ruder, które służyły za pewnego rodzaju miejsce spotkań. Nazwano je Ulem i to od tego te slumsy... cała dzielnica... wzięła swoją nazwę."~ */
  IF ~~ THEN REPLY #12763 /* ~"Teren spotkań? Czyj?"~ */ GOTO 38
  IF ~~ THEN REPLY #12764 /* ~"Rozumiem. Jest tu coś godnego uwagi?"~ */ GOTO 39
  IF ~~ THEN REPLY #12765 /* ~"Hmmm. Mam kilka innych pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12766 /* ~"Dzięki za informacje. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #12596 /* ~Jego przyjazne zachowanie przeistacza się gniew: "Wichrzycieli, śmiałku. Nawet gdyby ci się udało znaleźć to miejsce, radzem ci się trzymać od niego z daleka, oj tak. To tyle, co mogem na ten temat powiedzieć." Wysmarkuje swój nos dla pokreślenia, iż już skończył. Gniew znika z jego twarzy.~ */
  IF ~~ THEN REPLY #12767 /* ~"Rozumiem. Jest tu coś godnego uwagi?"~ */ GOTO 39
  IF ~~ THEN REPLY #12768 /* ~"Rozumiem. Pozwól mi więc spytać o coś innego..."~ */ GOTO 15
  IF ~~ THEN REPLY #12769 /* ~"Dobrze. Żegnaj więc."~ */ GOTO 59
END

IF ~~ THEN BEGIN 39 // from: 35.1 36.1 37.1 38.0
  SAY #12597 /* ~"Żem niezbyt pewien, co cię interesuje, śmiałku. Powiedz mi, może ci Kriden bendzie mógł wskazać właściwy kierunek."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12770 /* ~"Szukam rozrywki."~ */ EXTERN ~DMORTE~ 159
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12771 /* ~"Szukam rozrywki."~ */ GOTO 40
  IF ~~ THEN REPLY #12772 /* ~"Szukam pracy."~ */ GOTO 47
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12773 /* ~"Szukam mężczyzny o imieniu Farod."~ */ GOTO 51
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12774 /* ~"Poszukuję dziennika. Nie widziałeś czasem jakiegoś?"~ */ GOTO 54
  IF ~~ THEN REPLY #12775 /* ~"Zapomnij o tym. Mam parę innych pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12776 /* ~"Mniejsza z tym. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #12598 /* ~"Parę mniej niebezpiecznych miejsc, do których możesz się udać... to karczmy 'Proch do Prochu' i 'Pod Gorejącym Człekiem'. Nic innego ci nie polecę, śmiałku."~ */
  IF ~~ THEN REPLY #12777 /* ~"Czy mógłbyś mi powiedzieć, gdzie znaleźć te miejsca?"~ */ GOTO 55
  IF ~~ THEN REPLY #12778 /* ~"Niebezpiecznych?"~ */ GOTO 41
  IF ~~ THEN REPLY #12779 /* ~"Dzięki. Mam jeszcze jedno pytanie."~ */ GOTO 15
  IF ~~ THEN REPLY #12780 /* ~"Być może wpadnę do któregoś z tych miejsc. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 41 // from: 40.1 55.0
  SAY #12599 /* ~Zastanawia się chwilę, nim udziela odpowiedzi. "Cóż, śmiałku, zrozum... Dobrze się tu nie dzieje. Cienżkie życie, oj tak. To miejsce desperacji pełne zdesperowanych. Powiem ci, że niektórzy gotowi są podjonć się wszystkiego, co im tylko wpadnie w ręce, nie przejmujonc się losem innych trepów. Łatwo jest się zgubić w Ulu, oj tak."~ */
  IF ~~ THEN REPLY #12781 /* ~"Ty jednakże wydajesz się być przyjaźnie nastawionym..."~ */ GOTO 49
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12782 /* ~"Zgubić?"~ */ EXTERN ~DMORTE~ 160
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12783 /* ~"Zgubić?"~ */ GOTO 56
  IF ~~ THEN REPLY #12784 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12785 /* ~"Dzięki za informacje. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 42 // from: 27.1 28.1
  SAY #12600 /* ~"Heh... A gdzie ono nie jest, śmiałku. Skoro Sigil dotyka wszystkiego... Chcem powiedzieć, że... nie ma takiego miejsca, w którym by nie było. To znaczy nie jestem całkiem pewny, czy istnieje ono w zwykłym znaczeniu tego słowa... gdzieś w jednym miejscu. Tak uważam. Większość krwawników powie ci jednak, że znajduje się ono w Krainach Zewnentrznych."~ */
  IF ~~ THEN REPLY #12786 /* ~"Krainach Zewnętrznych?"~ */ GOTO 43
  IF ~~ THEN REPLY #12787 /* ~"Dziwne. Chcę cię zapytać o coś innego..."~ */ GOTO 15
  IF ~~ THEN REPLY #12788 /* ~"Sądzę, że rozumiem. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #12601 /* ~"Ta, śmiałku. Miejsce, w którym leży Sigil, to tak zwane Centrum Sfer. Tu jednak jest pies pogrzebany: gdyś już jest w Sigil, nie możesz się wydostać bez użycia magicznych drzwi. Nie ma 'zwykłego' sposobu, by wyjść stąd do Krain Zewnentrznych.~ */
  IF ~~ THEN REPLY #12789 /* ~"Kontynuuj..."~ */ GOTO 44
  IF ~~ THEN REPLY #12790 /* ~"Drzwi?"~ */ GOTO 46
  IF ~~ THEN REPLY #12791 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12792 /* ~"Reszty wysłucham może innym razem. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 44 // from: 43.0 46.0
  SAY #12602 /* ~"Jasne. A gdy już jesteś na zewnątrz Sigil, w Krainach Zewnętrznych, to... nie możesz wejść do Sigil. W centrum Krain Zewnentrznych znajduje się niekończonca się kamienna iglica wybijająca się ponad chmury. Uważa się, że Sigil znajduje się na jej szczycie!"~ */
  IF ~~ THEN REPLY #12793 /* ~"Tak... Kontynuuj..."~ */ GOTO 45
  IF ~~ THEN REPLY #12794 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12795 /* ~"Reszty wysłucham może innym razem. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #12603 /* ~Przytakuje. "Powiedz mi teraz, śmiałku: skoro nie możesz po prostu przejść z Sigil do Krain Zewnentrznych, a z Krain Zewnentrznych wejść do Sigil... To czy można powiedzieć, że fizycznie rzeczywiście ono gdzieś istnieje?" Kiwa głową niczym mędrzec, zadowolony z tak kłopotliwego pytania. "Sondzem, że Sigil ciongnie się poprzez wszystkie Sfery. Jest Wszendzie i Nigdzie zarazem."~ */
  IF ~~ THEN REPLY #12796 /* ~"Może. Mam kilka innych pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12797 /* ~"Ciekawa teoria. Zastanowię się nad nią. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 46 // from: 43.1
  SAY #12604 /* ~"Ta, śmiałku, drzwi. Objaśniem to troszke: Klatka pełna jest drzwi. Drzwi znajdujom się wszędzie, wszerz i wzdłuż Sigil... Ale ich nie widzisz, dopóki nie masz odpowiedniego klucza. Każde drzwi majom swój własny klucz - i każdy klucz jest inny. Gdy już posiadasz właściwy klucz, przechodzisz przez drzwi, by znaleźć się tam, gdzie zabiorom cię drzwi."~ */
  IF ~~ THEN REPLY #12798 /* ~"W porządku. Kontynuuj."~ */ GOTO 44
  IF ~~ THEN REPLY #12799 /* ~"Zanim odejdziesz, pozwól mi spytać o coś jeszcze..."~ */ GOTO 15
  IF ~~ THEN REPLY #12800 /* ~"Reszty wysłucham może innym razem. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 47 // from: 39.2
  SAY #12605 /* ~"Mało tu, w Ulu, do roboty. Naprawdę... Wienkszość ludu zajenta jest zdobywaniem jedzenia i nie dawaniem się zabić. Możesz szukać truposzy, tak jak Zbieracze... Albo polować na mózgoszkodniki dla nagrody."~ */
  IF ~~ THEN REPLY #12801 /* ~"Zbieracze?"~ */ GOTO 48
  IF ~~ THEN REPLY #12802 /* ~"Ludzie płacą za martwe szczury?"~ */ GOTO 18
  IF ~~ THEN REPLY #12803 /* ~"Mózgoszkodniki?"~ */ GOTO 22
  IF ~~ THEN REPLY #12804 /* ~"Rozumiem. Chcę spytać o coś innego..."~ */ GOTO 15
  IF ~~ THEN REPLY #12805 /* ~"Dobrze. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 48 // from: 47.0 52.0 58.0
  SAY #12606 /* ~Przytakuje. "Trep może zbierać truposze i targać je do Kostnicy. Grabarze płacom miedziaka od sztuki, jak mniemam. Zbieracze z tego żyjom, zarówno plondrujonc zwłoki świeżo zabitych, jak i sprzedajonc ich ciała. Słyszałem..." Ścisza głos i rozgląda się wokół "...że niektórzy z nich umyślnie pomagajom trepom się zgubić - jeśli wiesz, co mam na myśli. Świrnienci ludzie, doprawdy."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12806 /* ~"Zgubić?"~ */ EXTERN ~DMORTE~ 161
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12807 /* ~"Zgubić?"~ */ GOTO 57
  IF ~~ THEN REPLY #12808 /* ~"Co mówiłeś o ludziach płacących za martwe szczury?"~ */ GOTO 18
  IF ~~ THEN REPLY #12809 /* ~"Ciekawe. Chcę o coś innego zapytać..."~ */ GOTO 15
  IF ~~ THEN REPLY #12810 /* ~"Dobrze. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 49 // from: 21.0 41.0 56.0
  SAY #12607 /* ~"Cóż, śmiałku... Staram się. To efekt mojej pracy, jak sondzem... Wienkszość okolicznego ludu nastawiona jest niewontpliwie wrogo, chcem cię jednak zapewnić, śmiałku, że Kriden zawsze ich ciepło powita i będzie miał dla nich świeżo upieczone szczurki." Mruga do ciebie.~ */
  IF ~~ THEN REPLY #12811 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12812 /* ~"To zrozumiałe. Żegnaj, Kriden."~ */ GOTO 59
END

IF ~~ THEN BEGIN 50 // from: 15.8 25.1
  SAY #12608 /* ~"A, Władczyni Sigil. Nie gadam na temat Pani, śmiałku... A i ty o to nie powinieneś rozpytywać. Przyniesie ci to pecha, oj tak." Zakreśla na swej klatce piersiowej znak w kształcie półokręgu.~ */
  IF ~~ THEN REPLY #12813 /* ~"W takim razie pozwól mi spytać o coś innego."~ */ GOTO 15
  IF ~~ THEN REPLY #12814 /* ~"Odejdę więc już. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 51 // from: 15.9 39.3
  SAY #12609 /* ~Zdaje się być nieco zaskoczony. "Farod? Niby po co jakiś śmiałek miałby szukać takiego człowieka?"~ */
  IF ~~ THEN REPLY #12815 /* ~"To długa historia - po prostu potrzebuję się z nim spotkać."~ */ GOTO 52
  IF ~~ THEN REPLY #12816 /* ~"To nie twoja sprawa, szczurołapie."~ */ GOTO 53
  IF ~~ THEN REPLY #12817 /* ~"Zapomnij o tym pytaniu. Odpowiedz mi na inne..."~ */ GOTO 15
  IF ~~ THEN REPLY #12818 /* ~"Zapomnij o tym. Mniejsza z tym. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 52 // from: 51.0 53.0
  SAY #12610 /* ~"To szef grupki Zbieraczy. On... przemieszcza się cały czas, najpewniej po to, by uniknonć kłopotów. Prawdopodobnie dowodzi skondś na Placu Szmaciarzy. Całkiem zdolny gościu ten Farod. Lepiej dla śmiałków, by się od niego trzymali z dala."~ */
  IF ~~ THEN REPLY #12819 /* ~"Zbieraczy?"~ */ GOTO 48
  IF ~~ THEN REPLY #12820 /* ~"Gdzie jest ten Plac Szmaciarzy?"~ */ GOTO 58
  IF ~~ THEN REPLY #12821 /* ~"W porządku. Mam więcej pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12822 /* ~"Dzięki za informacje. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #12611 /* ~Kriden marszczy brwi. "No cóż, śmiałku. To nie moja sprawa, gdzie się ktoś taki może podziewać."~ */
  IF ~~ THEN REPLY #12823 /* ~"Odszukanie go jest dla mnie bardzo ważną rzeczą... Wybacz mi me nieuprzejme słowa. Możesz mi pomóc?"~ */ GOTO 52
  IF ~~ THEN REPLY #12824 /* ~"No dobrze. Może mi na coś innego odpowiesz..."~ */ GOTO 15
  IF ~~ THEN REPLY #12825 /* ~"Dobra. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 54 // from: 15.10 39.4
  SAY #12612 /* ~"Przykro mi śmiałku - nie powiem, że jakiegoś z nich widziałem."~ */
  IF ~~ THEN REPLY #12826 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12827 /* ~"W takim razie muszę kontynuować poszukiwania. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 55 // from: 40.0
  SAY #12613 /* ~"Jasne, śmiałku. Karczma 'Proch do Prochu' znajduje się zaraz naprzeciwko Kostnicy, a 'Pod Gorejącym Człekiem' leży na wschód stond."~ */
  IF ~~ THEN REPLY #12828 /* ~"Dzięki. Wspomniałeś o niebezpiecznych miejscach?"~ */ GOTO 41
  IF ~~ THEN REPLY #12829 /* ~"Dziękuję ci. Mam jednak jeszcze inne pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #12830 /* ~"Być może zawadzę o któreś z tych miejsc. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 56 // from: 41.2
  SAY #12614 /* ~"Tak, śmiałku. Zgubić się. W księdze umarłych."~ */
  IF ~~ THEN REPLY #12831 /* ~"Rozumiem... Ty jednakże wydajesz się być przyjaźnie nastawionym..."~ */ GOTO 49
  IF ~~ THEN REPLY #12832 /* ~"Rozumiem. Kolejne pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #12833 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 48.1
  SAY #12615 /* ~"Tak, śmiałku. Zgubić się. W księdze zmarłych."~ */
  IF ~~ THEN REPLY #12834 /* ~"Rozumiem. Co mówiłeś o tych ludziach płacących za szczurze ogony?"~ */ GOTO 18
  IF ~~ THEN REPLY #12835 /* ~"Rozumiem. Mam pytanie dotyczące czegoś innego..."~ */ GOTO 15
  IF ~~ THEN REPLY #12836 /* ~"Dobrze. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 52.1 62.0
  SAY #12616 /* ~"Wskażę ci, śmiałku - pokaż mi no tylko swoją mapę." Mężczyzna wskazuje palcem, pozostawiając w rezultacie wielgachny, tłusty odcisk.~ */
  IF ~~ THEN REPLY #12837 /* ~"Dzięki. Wspomniałeś o Zbieraczach?"~ */ GOTO 48
  IF ~~ THEN REPLY #12838 /* ~"Dziękuję. Mam więcej pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12839 /* ~"Dzięki za informacje. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 3.4 15.12 16.2 17.2 18.3 19.3 20.1 21.2 22.2 23.4 24.2 25.3 26.3 27.3 28.3 29.3 30.3 33.2 34.2 35.3 36.3 37.3 38.2 39.6 40.3 41.4 42.2 43.3 44.2 45.1 46.2 47.4 48.4 49.1 50.1 51.3 52.3 53.2 54.1 55.2 56.2 57.2 58.2 62.2 63.1
  SAY #12617 /* ~Dotyka twojej ręki. "Widzę, że już się zbierasz, śmiałku... Nim jednak odejdziesz, nie masz może ochoty na milutkiego, smaaaacznego szczurka? Jeden na drogę, co ty na to?"~ */
  IF ~~ THEN REPLY #12840 /* ~"Czemu nie..."~ */ GOTO 5
  IF ~~ THEN REPLY #12841 /* ~"Prędzej zjem własny język."~ */ GOTO 4
  IF ~~ THEN REPLY #12842 /* ~"Nie, dziękuję. Żegnaj."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~  Global("Creeden","AR0300",2)
~ THEN BEGIN 60 // from:
  SAY #12618 /* ~"Hej tam, śmiałku. Miło cię znowu widzieć. Czyżbyś zmienił zdanie? Wracasz po jednego z przeeepysznych szczurków Kridena?" Macha kusząco kijem ze szczurami.~ */
  IF ~~ THEN REPLY #12843 /* ~"Czemu nie... Jakie masz rodzaje?"~ */ GOTO 5
  IF ~~ THEN REPLY #12844 /* ~"Prędzej zjem własny język."~ */ GOTO 4
  IF ~~ THEN REPLY #12845 /* ~"Nie, nie dzisiaj. Mam jednakże parę pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12846 /* ~"Nie, dzięki. Żegnaj."~ */ DO ~SetGlobal("Creeden","AR0300",2)
~ EXIT
END

IF ~  Global("Creeden","AR0300",3)
~ THEN BEGIN 61 // from:
  SAY #12619 /* ~"Hej tam, śmiałku. Miło cię znowu widzieć. Mogem cię nakłonić, byś rozważył spróbowanie jeszcze jednego szczurka? Wiem, że ten poprzedni ci nie smakował, ale mam tu takie, których smak może ci bardziej przypaść do gustu..."~ */
  IF ~~ THEN REPLY #12847 /* ~"Czemu nie... Jakie masz rodzaje?"~ */ GOTO 5
  IF ~~ THEN REPLY #12848 /* ~"Nie interesują mnie one, szczurołapie."~ */ GOTO 14
  IF ~~ THEN REPLY #12849 /* ~"Nie, nie dzisiaj. Mam jednakże parę pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #12850 /* ~"Nie, dzięki. Żegnaj."~ */ DO ~SetGlobal("Creeden","AR0300",3)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 23.1
  SAY #12620 /* ~"Nie jest mi łatwo udzielić ci takowej odpowiedzi, jakom bym ci kiedyś dał... Rozumiesz... Bydlaków tych jest ostatnio coraz mniej. Kiedyś bez problemu łapałem je w ciemnych uliczkach i w piwnicach... Może jednak ździebko za dużo na nie polowałem. Możesz spróbować na Placu Szmaciarzy. Wszystkie znajdujonce się tam hałdy śmieci stanowią odpowiednie miejsce dla szczurzych wojaży."~ */
  IF ~~ THEN REPLY #12851 /* ~"Gdzie jest ten 'Plac Szmaciarzy'?"~ */ GOTO 58
  IF ~~ THEN REPLY #12852 /* ~"Dzięki. Mam kolejne pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #12853 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 15.0
  SAY #48396 /* ~Zastanowia się przez chwilę. "Ta. Wiem, o czym mówisz. Była pewna dziewczyna o imieniu Nalls, co jom tam widziałem. Przeszła tamtendy raz, gdy szukałem szczurków. Nie wiem jednak, jak to zrobiła. Najpewniej możesz ją znaleźć na północny wschód stond, krenconcom się wokół sterty drewna w poszukiwaniu gwoździ i takich tam."~ */
  IF ~~ THEN REPLY #48397 /* ~"Dzięki. Mam inne pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #48398 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 59
END
