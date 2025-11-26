// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARMOIRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DARMOIRE~

IF ~  Global("Armoire","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2879 /* ~Gdy zaczynasz przeszukiwać kredens, jego uchwyty nagle wyrywają się z twego uścisku, a szuflady zamykają się z trzaskiem. Pogardliwe *hmpf!* rozlega się z wnętrza mebla...~ */
  IF ~~ THEN REPLY #2880 /* ~"Halo?"~ */ DO ~SetGlobal("Armoire","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #42567 /* ~Po prostu odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7235 /* ~"Faktycznie 'halo'." Kredens wydaje z siebie kolejne *hmpf!* "A więc co my tu mamy? Łotrzyk szukający bogatej bielizny jakiejś pani, hmm?"~ */
  IF ~~ THEN REPLY #42568 /* ~"Ty *mówisz*?"~ */ GOTO 2
  IF ~~ THEN REPLY #42569 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #42570 /* ~"Co tu robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #42571 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42532 /* ~"Ja? Tak, mówię."~ */
  IF ~~ THEN REPLY #42572 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #42573 /* ~"Co tu robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #42574 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #42533 /* ~"Jestem Luis. A kim *ty* jesteś? Bezmyślnym chuliganem, myszkującym po rzeczach innych osób..."~ */
  IF ~~ THEN REPLY #42575 /* ~"Nieważne. Co tu robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #42576 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.0
  SAY #42534 /* ~"Cóż, panie, jeśli musisz wiedzieć... Jestem kredensem."~ */
  IF ~~ THEN REPLY #42577 /* ~"Ale *czemu* jesteś kredensem w tym przybytku?"~ */ GOTO 5
  IF ~~ THEN REPLY #42578 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 12.0
  SAY #42535 /* ~"Tak się składa, że jestem kredensem, bo *chcę* nim być, dzięki wielkie. *Nie* chodzi mi o przyglądanie się rozbierającym się pannom, ani o to, że wkładają swoją miękką, słodką bieliznę do moich szuflad, gdzie może ona ocierać się o moją skórę. Takie oskarżenia są obrazą dla osoby praktykującej sztukę magii... Po prostu wchłaniam doświadczenie tego, co *znaczy* być kredensem. Widoki, zapachy, doznania..."~ */
  IF ~~ THEN REPLY #42579 /* ~"Zatem wiedzą o tym wszystkie kobiety?"~ */ GOTO 6
  IF ~~ THEN REPLY #42580 /* ~"W porządku. Mam jeszcze pytanie..."~ */ GOTO 12
  IF ~~ THEN REPLY #42581 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42536 /* ~"Tak! Wiedzą i z całego serca zgadzają się... cóż, może nie do końca z całego serca. I pomimo iż nie *wyraziły* swojej akceptacji w mojej obecności - ponieważ nie do końca zdają sobie sprawę, że jestem kredensem - nie chciałbym, żeby dowiedziały się, że jestem czymś jeszcze, tak więc nie byłem w stanie wgłębić się w tę sprawę."~ */
  IF ~  CheckStatGT(Protagonist,14,DEX)
~ THEN REPLY #42582 /* ~"Daj mi coś, a nikomu o tym nie powiem."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,15,DEX)
~ THEN REPLY #42583 /* ~"Daj mi coś, a nikomu o tym nie powiem."~ */ GOTO 9
  IF ~~ THEN REPLY #42584 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #42585 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42537 /* ~"Bardzo dobrze! Pięknie! Otwórz trzecią szufladę, draniu." Gdy sięgasz dłonią do szuflady, ona zamyka się z wielką siłą - z ledwością udaje ci się wydostać palce na czas.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #42538 /* ~"Cha, cha! Kretyn! Idiota! 'Otwórz szufladę', powiedziałem, a ty sięgnąłeś do środka..." Uderza ponownie szufladą dla podkreślenia swoich słów, po czym zaczyna się trząść ze śmiechu.~ */
  IF ~~ THEN REPLY #42586 /* ~"Powiem im o tym teraz."~ */ GOTO 11
  IF ~~ THEN REPLY #42587 /* ~"Porąbię cię na opał."~ */ GOTO 10
  IF ~~ THEN REPLY #42588 /* ~"Zadziwiające. Mam kilka pytań, Luis..."~ */ GOTO 12
  IF ~~ THEN REPLY #42589 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #42539 /* ~"Bardzo dobrze! Pięknie! Otwórz trzecią szufladę, draniu." Gdy sięgasz dłonią do szuflady, ona zamyka się z wielką siłą. Porażający ból przebiega przez twoją dłoń, gdy wydostajesz swoje obite palce.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 8.1 11.0
  SAY #42540 /* ~"Nie uczynisz *nic* takiego! Cóż, nawet *najpośledniejsi* ludzie wiedzą, że w Przybytku nie można popełnić aktu przemocy... po prostu zostałbyś wyrzucony. A nawet, jeśli tak by się *nie* stało, to zapewniam cię, że moje umiejętności w Sztuce są dość imponujące."~ */
  IF ~~ THEN REPLY #42590 /* ~"Zatem dobrze... po prostu pójdę powiedzieć im o tobie."~ */ GOTO 11
  IF ~~ THEN REPLY #42591 /* ~"Zatem mam kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #42592 /* ~"W takim wypadku żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 10.0
  SAY #42541 /* ~"Po pierwsze, powiem ci jedną rzecz: pojawiam się i znikam z Przybytku od długiego czasu... Wiem dość sporo zarówno o jego mieszkańcach, jak i ich zwyczajach. Zapewniam cię, że rozpowiadanie o mnie jest całkiem bezużyteczne. Nie tylko stracisz we mnie potencjalne źródło informacji, ale też po prostu zniknę zanim ktokolwiek przyjdzie, by sprawdzić twoje zeznania, co sprawi, że wyjdziesz na głupca."~ */
  IF ~~ THEN REPLY #42593 /* ~"Może w takim razie po prostu porąbię cię na opał."~ */ GOTO 10
  IF ~~ THEN REPLY #42594 /* ~"Rozumiem. Zatem mam kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #42595 /* ~"Rozumiem. Zatem żegnaj, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1 6.2 8.2 10.1 11.1 13.0 14.0 15.0 16.0 17.0 18.0 19.1 20.0 21.0 32.0
  SAY #42542 /* ~"Tak?"~ */
  IF ~~ THEN REPLY #42596 /* ~"Zatem... czemu jesteś kredensem w tym przybytku?"~ */ GOTO 5
  IF ~~ THEN REPLY #42597 /* ~"Czy możesz powrócić do swojej prawdziwej postaci w każdej chwili?"~ */ GOTO 13
  IF ~~ THEN REPLY #42598 /* ~"Czy możesz opowiedzieć mi o tym miejscu?"~ */ GOTO 14
  IF ~  Global("Nenny_Hint2","AR0605",3)
~ THEN REPLY #42599 /* ~"Nenny powiedziała mi, że widziała mężczyznę opuszczającego pokój Kimasxi Żmijowego Języka... sądzę, że to byłeś ty, Luis."~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",4)
~ GOTO 36
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #42600 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 15
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #42601 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ GOTO 16
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #42602 /* ~"Usiłuję odnaleźć zapach Vivian... czy wiesz może, gdzie mógłby być?"~ */ GOTO 17
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #42603 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ GOTO 18
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42604 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ GOTO 19
  IF ~  GlobalGT("Vivian","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #42605 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 21
  IF ~~ THEN REPLY #42606 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #42543 /* ~Kredens zdaje się myśleć o tym przez chwilę. "Nie potrzebuję dzielić się takimi sekretami z tobie podobnymi! A poza tym, nie ma powodu, bym w tej chwili zmienił postać, ponieważ nie doświadczyłem jeszcze pełnych doznań związanych z byciem kredensem. To bardzo złożona sprawa, przetrzymywanie i sortowanie lubieżnych ciuszków, wąchanie wspaniałych kobiecych zapachów." Szuflada wysuwa się i zamyka, dźwiękiem naśladując westchnienie rozkoszy.~ */
  IF ~~ THEN REPLY #42607 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 12
  IF ~~ THEN REPLY #42608 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY #42544 /* ~"Raczej wolałbym, żeby każdy dowiedział się tego sam, niż z opowiadania... w końcu jest to połowa radości z całego doświadczenia. Powiem ci tylko to, co zapewne już i tak wiesz: nazywa się ono Przybytkiem Zaspokajania Żądz Intelektualnych, a znajdujące się w nim kurtyzany specjalizują się w sztukach języków i komunikacji."~ */
  IF ~~ THEN REPLY #42609 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 12
  IF ~~ THEN REPLY #42610 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.4
  SAY #42545 /* ~"Tak, Ecco. Wiesz, ona nie może być głucha od zawsze. W przeciwnym wypadku, jestem jak najbardziej pewien, że nauczyłaby się innych form komunikacji. To musiało się stać niedawno."~ */
  IF ~~ THEN REPLY #42611 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 12
  IF ~~ THEN REPLY #42612 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.5
  SAY #42546 /* ~"Nie posuwałbym się aż tak daleko, żeby nazywać ją córką *Raveli*, ale pewien jestem, że ona *jest* nocną wiedźmą. Zauważ jej skórę, oczy i pożądliwą naturę oraz jej irracjonalnego bzika na temat snów innych osób... wszystko to są znaki, pewne znaki. Niewątpliwie tylko żywy brak akceptacji przez Kesai jej prawdziwej natury jak do tej pory powstrzymał ją przed przemienieniem się w staruchę, którymi stają się wszystkie nocne wiedźmy."~ */
  IF ~~ THEN REPLY #42613 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 12
  IF ~~ THEN REPLY #42614 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.6
  SAY #42547 /* ~"Och, tak... *słyszałem* o tym. Co za pech! Czy miałeś kiedyś tę wyjątkową przyjemność wdychania jej zapachu?" Szuflady kredensu zdają się drżeć z rozkoszy. "Był absolutnie cudowny. Ale niestety nie wiem, gdzie można odnaleźć zapach pani Vivian."~ */
  IF ~~ THEN REPLY #42615 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 12
  IF ~~ THEN REPLY #66529 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.7
  SAY #42548 /* ~"Słyszałem, że chodziła w karmazynowym welonie, ale ostatnio zamknęła się w swoim pokoju i zaciemniła go. Nie wiedziałem, co się stało. A więc ten welon zaginął?"~ */
  IF ~~ THEN REPLY #42616 /* ~"Tak. Mam jeszcze inne pytanie..."~ */ GOTO 12
  IF ~~ THEN REPLY #42617 /* ~"Tak. Żegnaj, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.8
  SAY #42549 /* ~"Niewielu ludzi, którzy mieszkali w Sigil przez dłuższy czas, nie wie. Zastanawiam się, jednak, co o niej chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #42618 /* ~"Muszę ją znaleźć."~ */ GOTO 20
  IF ~~ THEN REPLY #42619 /* ~"Nieważne. Mam jeszcze inne pytanie..."~ */ GOTO 12
  IF ~~ THEN REPLY #42620 /* ~"Zapomnij, że o nią pytałem. Żegnaj, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #42550 /* ~"Jesteś szalony, wiesz... wybitnie szalony. 'Całkowicie zbzikowany', to jak mi się wydaje, jest na to powszechne określenie. Ravela została wygnana z Sigil dawno temu i jeśli jeszcze nie jest martwa, to z pewnością *ty* zapragniesz, aby tak było, o ile uda ci się w jakiś sposób ją znaleźć. Mówią, że pożarła wszystkich, którzy wcześniej jej szukali, a z tobą zapewne uczyni to samo. Pozostawiłbym ją w spokoju."~ */
  IF ~~ THEN REPLY #42621 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 12
  IF ~~ THEN REPLY #42622 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.9
  SAY #42551 /* ~"Nie ma dziesiątej uczennicy! O czym ty gadasz?"~ */
  IF ~~ THEN REPLY #42623 /* ~"Nieważne. Mam jeszcze inne pytanie..."~ */ GOTO 12
  IF ~~ THEN REPLY #42624 /* ~"Zapomnij o tym, Luis. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 35.0 36.0
  SAY #42552 /* ~Udaje ci się wyrwać ubranie - przezroczysty, karmazynowy welon - z kredensu. Chowając go, zauważasz, że został wyperfumowany delikatnym, egzotycznym i wybitnie przyjemnym zapachem.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 27.0 31.0
  SAY #42553 /* ~"Cholera! Ty chuliganie! Kanalio! Draniu! Oddaj mi to *w tej chwili*! To nie twoje! To wyjątkowo osobista bielizna, która należy do pani tego przybytku, a im niezbyt podobałoby się, że przebierasz ich prywatne rzeczy!"~ */
  IF ~~ THEN REPLY #42625 /* ~"Och, ale jak ty to robisz, to jest to w porządku, ty drewniany zboczeńcu?"~ */ GOTO 24
  IF ~~ THEN REPLY #42626 /* ~"Tak, tak... Żegnaj, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #42554 /* ~"Nie robię niczego tak sprzecznego z prawem i złego jak ty! Po prostu wchłaniam wrażenia potrzebne do mojego rozwoju jako jednostki."~ */
  IF ~~ THEN REPLY #42627 /* ~"Tak, tak... żegnaj, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 35.1 36.1
  SAY #42555 /* ~Nie jesteś w stanie tak szybko ruszać dłonią, by wyrwać karmazynowy welon z wnętrza Luisa... jedyne, co mógłbyś osiągnąć, to zmiażdżenie swoich palców.~ */
  IF ~~ THEN REPLY #42628 /* ~"Daj mi ten karmazynowy materiał."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42629 /* ~Otwórz szufladę, by zabrać materiał.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42630 /* ~Otwórz szufladę, by zabrać materiał.~ */ GOTO 28
  IF ~~ THEN REPLY #42631 /* ~Jęcz i błagaj o welon.~ */ GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 25.0 28.0 29.0 30.0
  SAY #42556 /* ~"Nie powinienem. Nie dam. Nigdy."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42632 /* ~Otwórz szufladę, by zabrać materiał.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42633 /* ~Otwórz szufladę, by zabrać materiał.~ */ GOTO 28
  IF ~~ THEN REPLY #42634 /* ~Jęcz i błagaj o welon.~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0 29.1 30.1
  SAY #42557 /* ~"*Mmmf*. Stój! Stój, mówię! Uważaj na rączki! Nie zarysuj lakieru! Niech cię cholera, ty podglądający śmieciu!" Kredens stawia dzielny opór, ale w końcu udaje ci się wyciągnąć przezroczysty, karmazynowy welon z jego wnętrza. Chowając go, zauważasz, że został wyperfumowany delikatnym, egzotycznym i wybitnie przyjemnym zapachem.~ */
  IF ~~ THEN DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 23
END

IF ~~ THEN BEGIN 28 // from: 25.2 26.1 28.1 30.2
  SAY #42558 /* ~Szuflada pozostaje zamknięta. Słyszysz, jak sapie i dyszy z wysiłku. "*Odejdź*, ty barbarzyńco!"~ */
  IF ~~ THEN REPLY #42635 /* ~"Daj mi ten karmazynowy materiał, Luis."~ */ GOTO 26
  IF ~~ THEN REPLY #42636 /* ~Otwórz szufladę, by zabrać materiał.~ */ GOTO 28
  IF ~~ THEN REPLY #42637 /* ~Jęcz i błagaj o welon.~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 25.3 26.2 28.2
  SAY #42559 /* ~"Och, proszę, przestań! To jest naprawdę męczące i przerasta każde znane znaczenie słowa *nuda*!"~ */
  IF ~~ THEN REPLY #42638 /* ~"Daj mi ten karmazynowy materiał."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42639 /* ~Otwórz szufladę, by zabrać materiał.~ */ GOTO 27
  IF ~~ THEN REPLY #42640 /* ~Jeszcze trochę pojęcz i pobłagaj.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.2
  SAY #42560 /* ~"Przestań! Jakie to przeraźliwie głupie! Sprawiasz, że chce mi się spać."~ */
  IF ~~ THEN REPLY #42641 /* ~"Daj mi ten karmazynowy materiał."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42642 /* ~Otwórz szufladę, by zabrać materiał.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42643 /* ~Otwórz szufladę, by zabrać materiał.~ */ GOTO 28
  IF ~~ THEN REPLY #42644 /* ~Jęcz i błagaj dalej.~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.3
  SAY #42561 /* ~Kredens ziewa, ukazując karmazynowy welon spoczywający spokojnie obok innej bielizny. Sięgasz błyskawicznie dłonią i wyciągasz go, zanim szuflada zdąży się zamknąć. Chowając materiał, zauważasz, że został wyperfumowany delikatnym, egzotycznym i wybitnie przyjemnym zapachem.~ */
  IF ~~ THEN DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 23
END

IF ~  Global("Armoire","GLOBAL",1)
~ THEN BEGIN 32 // from:
  SAY #42562 /* ~To jest Luis, gadający kredens.~ */
  IF ~~ THEN REPLY #42645 /* ~"Mam kilka pytań, Luis..."~ */ GOTO 12
  IF ~~ THEN REPLY #42646 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~  Global("Armoire","GLOBAL",2)
~ THEN BEGIN 33 // from:
  SAY #42563 /* ~To jest Luis, gadający kredens.~ */
  IF ~~ THEN REPLY #42647 /* ~"Mam kilka pytań, Luis..."~ */ GOTO 34
  IF ~~ THEN REPLY #42648 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #42564 /* ~Złowroga cisza otacza kredens. Nie ma odpowiedzi. Jesteś pewien, że to cały czas Luis - prawie *czujesz* nienawiść ziejącą od drewna - ale nie odzywa się on do ciebie ani słowem.~ */
  IF ~~ THEN REPLY #42649 /* ~"Do zobaczenia, Luis."~ */ EXIT
  IF ~~ THEN REPLY #42650 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 36.2
  SAY #42565 /* ~Czatujesz obok krawędzi kredensu. On cały czas nawija, ale nigdy nie otwiera się na tak długo, abyś mógł schwycić materiał.~ */
  IF ~  CheckStatGT(Protagonist,15,DEX)
~ THEN REPLY #42651 /* ~Spróbuj wsunąć dłoń, gdy szuflada będzie otwarta.~ */ DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #42652 /* ~Spróbuj schwycić go dłonią, gdy szuflada będzie otwarta.~ */ GOTO 25
END

IF ~~ THEN BEGIN 36 // from: 12.3
  SAY #42566 /* ~"Tak *sądzisz*? *SĄDZISZ?!* Jak możesz być tak porażająco niegrzeczny, tak śmiesznie impertynencki, żeby rzucać takie oskarżenie, nie będąc całkowicie *pewnym* swoich zarzutów?! Jak *śmiesz*! Impertynencki szczekający kundel! Cóż, chyba powinienem..."

Gdy Luis narzeka i przeklina, jego szuflady otwierają się i zamykają... zauważasz małą paczuszkę karmazynowego materiału złożoną obok innych ubrań. Jednakże ciągłe otwieranie i zamykanie się szuflad sprawia, że ciężko jest je złapać.~ */
  IF ~  CheckStatGT(Protagonist,15,DEX)
~ THEN REPLY #42653 /* ~Spróbuj wydostać materiał.~ */ DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #42654 /* ~Spróbuj wydostać materiał.~ */ GOTO 25
  IF ~~ THEN REPLY #42655 /* ~Poczekaj na okazję, aby wydostać materiał.~ */ GOTO 35
END
