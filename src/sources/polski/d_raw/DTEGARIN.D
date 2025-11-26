// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEGARIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEGARIN~

IF ~  InParty("Annah")
InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3058 /* ~Twoim oczom ukazuje się łuskowaty bies, wielce zresztą podobny do innego, który stoi tuż obok niego. Stwory mają sylwetki raczej gadzie, skórę barwy czerwonawej, przekłute uszy, a na plecach dźwigają po parze złożonych nietoperzych skrzydeł. Bliższy z biesów ma pod lewym okiem niewielką bliznę. Spogląda na Annę i Nie-Sławę stojące u twojego boku i wydaje niezbyt miłe dla uszu zgrzytliwe i syczące dźwięki. "Zabierz ode mnie to robactwo z Otchłani, a będziemy mogli pogadać. Do tego czasu, ani słowa." Stwór pieczętuje swoją mowę soczystym splunięciem.~ */
  IF ~~ THEN REPLY #12396 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~  InParty("Annah")
!InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3060 /* ~Twoim oczom ukazuje się łuskowaty bies, wielce zresztą podobny do innego, który stoi tuż obok niego. Stwory mają sylwetki raczej gadzie, skórę barwy czerwonawej, przekłute uszy, a na plecach dźwigają po parze złożonych nietoperzych skrzydeł. Bliższy z biesów ma pod lewym okiem niewielką bliznę. Spogląda na Annę stojącą u twojego boku i wydaje niezbyt miłe dla uszu zgrzytliwe i syczące dźwięki. "Zabierz ode mnie tę diablicę z Otchłani, a będziemy mogli pogadać. Do tego czasu, ani słowa." Stwór pieczętuje swoją mowę soczystym splunięciem.~ */
  IF ~~ THEN REPLY #12397 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~  !InParty("Annah")
InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12398 /* ~Twoim oczom ukazuje się łuskowaty bies, wielce zresztą podobny do innego, który stoi tuż obok niego. Stwory mają sylwetki raczej gadzie, skórę barwy czerwonawej, przekłute uszy, a na plecach dźwigają po parze złożonych nietoperzych skrzydeł. Bliższy z biesów ma pod lewym okiem niewielką bliznę. Spogląda na Nie-Sławę stojącą u twojego boku i wydaje niezbyt miłe dla uszu zgrzytliwe i syczące dźwięki. "Zabierz ode mnie ten pomiot z Otchłani, a będziemy mogli pogadać. Do tego czasu, ani słowa." Stwór pieczętuje swoją mowę soczystym splunięciem.~ */
  IF ~~ THEN REPLY #12399 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #12400 /* ~Twoim oczom ukazuje się łuskowaty bies, wielce zresztą podobny do innego, który stoi tuż obok niego. Stwory mają sylwetki raczej gadzie, skórę barwy czerwonawej, przekłute uszy, a na plecach dźwigają po parze złożonych nietoperzych skrzydeł. Bliższy z biesów ma pod lewym okiem niewielką bliznę. "Witaj, stary kamracie. Zaiste wielka to dla mnie uciecha widzieć cię ponownie."~ */
  IF ~~ THEN REPLY #12401 /* ~"Ponownie?"~ */ GOTO 10
END

IF ~  InParty("Annah")
InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #12402 /* ~Abiszai cofa się, kiedy się zbliżacie. "Zabierz ode mnie te szczury Chaosu." mówi wskazując nad Nie-Sławę i Annę. "Uczynisz to, wtedy możemy pogawędzić. Do tego czasu, ani słowa."~ */
  IF ~~ THEN REPLY #12403 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~  InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #12404 /* ~Abiszai cofa się, kiedy się zbliżacie. "Zabierz ode mnie tego szczura Chaosu." mówi wskazując Annę. "Uczynisz to, wtedy możemy pogawędzić. Do tego czasu, ani słowa."~ */
  IF ~~ THEN REPLY #12405 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~  !InParty("Annah")
InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #12406 /* ~Abiszai cofa się, kiedy się zbliżacie. "Zabierz ode mnie tego szczura Chaosu." mówi wskazując Nie-Sławę. "Uczynisz to, wtedy możemy pogawędzić. Do tego czasu, ani słowa."~ */
  IF ~~ THEN REPLY #12407 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
!PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 7 // from:
  SAY #12408 /* ~"Powrót syna marnotrawnego, co?" Bies zdobywa się na kwaśny uśmieszek, a z kącików jego ust buchają obrzydliwe gazy. "Czyż wróciła ci już pamięć, stary druhu?"~ */
  IF ~~ THEN REPLY #12409 /* ~"Co masz na myśli?"~ */ GOTO 10
  IF ~~ THEN REPLY #14280 /* ~"Mam kilka pytań..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14281 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #12410 /* ~"Ano, tak, Etelgrinie, ano tak. Ale ślepia jego straciły już swój dawny blask. Jak myślisz, cóż takiego sprawiło, że do nas powrócił? Cóż TAKIEGO znowuż sprowadza cię do nas, przyjacielu?"~ */
  IF ~~ THEN REPLY #12411 /* ~"Kim jesteś?"~ */ GOTO 9
  IF ~~ THEN REPLY #12412 /* ~"Co tutaj robicie?"~ */ EXTERN ~DAETHEL~ 12
  IF ~~ THEN REPLY #12413 /* ~"Co to za miejsce?"~ */ GOTO 14
  IF ~~ THEN REPLY #12414 /* ~"Opowiedzcie mi o biesach."~ */ EXTERN ~DAETHEL~ 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12415 /* ~"Czy znacie Zbieracza o imieniu Farod?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12416 /* ~"Szukam dziennika."~ */ EXTERN ~DAETHEL~ 14
  IF ~~ THEN REPLY #12417 /* ~"Nic. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #12418 /* ~"Och, Etelgrinie, czas zdewastował pamięć naszego towarzysza! Naprawdę nas nie poznajesz? Jeśli tak, zasmucasz mnie do łez."~ */
  IF ~~ THEN REPLY #12419 /* ~"Ale..."~ */ EXTERN ~DAETHEL~ 9
END

IF ~~ THEN BEGIN 10 // from: 3.0 7.0
  SAY #12420 /* ~"Mówię o tym, drogi przyjacielu, że czas, nasz stary wróg uczynił ci niedźwiedzią przysługę. Obrabował cię ze wspomnień i skradł twoja przeszłość. Jeżeli nas nie rozpoznajesz, znaczy to, że padłeś ofiarą jednej ze słabości ludzi śmiertelnych. Jesteśmy twoimi starymi przyjaciółmi, w rzeczy samej. Cóż możemy dla ciebie uczynić?"~ */
  IF ~~ THEN REPLY #12421 /* ~"Mam kilka pytań..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12423 /* ~"Nic. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #12422 /* ~"Dobrze powiedziane. Stary druhu, jesteśmy parą abiszai wracających z Baator, gdzie pełniliśmy pewną misję. Ja jestem Tegar'in Po Trzykroć Przeklęty, nazwany tak, bowiem z każdej sytuacji czerpię to, co jest w niej najlepsze. Oto jest Etelgrin. Żadnego przydomku obok jego imienia nie uświadczysz, aleć nie powód to, żeby sądzić, iż nań sobie zasłużyć nie próbował.~ */
  IF ~~ THEN REPLY #12424 /* ~"Nie próbował? Co przez to rozumiesz?"~ */ EXTERN ~DAETHEL~ 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY #12425 /* ~Tegar'in ignoruje cię i zwraca się do swego kamrata: "Jeszcze raz utrzymuję, że lepiej jest być postrzeganym w jakikolwiek sposób, niżli wcale." Abiszai odwraca się do ciebie "Stary przyjacielu, zali dobra to odpowiedź na pytanie zadane przez ciebie, a tyczące naszych tożsamości?"~ */
  IF ~~ THEN REPLY #12426 /* ~"Będzie musiało mi to wystarczyć. Mam kilka innych pytań..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12427 /* ~"Będzie musiało mi to wystarczyć. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #12428 /* ~"Mówiąc bardziej przyziemnymi słowy, czerpiemy radość z tego rozkosznego... przybytku. I oczywiście, świętujemy powrót naszego druha. Jakkolwiek, smrodliwy wietrzyk, który częstokroć unosi tu zapach dobra, deprymuje nas nieco, czyniąc fizycznie, umysłowo i duchowo słabszymi. Na szczęście w powietrzu tej dzielnicy nie brakuje posmaku bólu i upokorzenia. Czyż nie?" Bies znowu uśmiecha się szeroko.~ */
  IF ~~ THEN REPLY #12429 /* ~"Mam kilka innych pytań..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12430 /* ~"W istocie. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY #12431 /* ~"To gospoda 'Pod Gorejącym Człekiem', jeden z najprzyjemniejszych przybytków tego rodzaju w całym mieście. Cóż za poetycka wizja sprawiedliwości wyobrażona została w tym płonącym jegomościu u progu tego domostwa! Tak, to robi duże wrażenie. Czyż jest jeszcze coś innego, co chciałbyś wiedzieć?"~ */
  IF ~~ THEN REPLY #12432 /* ~"Tak, mam kilka innych pytań...~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12433 /* ~"Nie. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #12434 /* ~"Tanar'ri to według nas główni winowajcy wybuchu Wojny Krwi! Gdyby nie oni, w pokoju osiedlilibyśmy się w Niższych Sferach, bez brzemienia tego przebrzydłego konfliktu. A i te nieszczęsne przechylenia ku innym sferom nie byłyby takim orzechem do zgryzienia dla tych wszystkich niezdecydowanych reformatorów. Tanar'ri są bezpośrednio odpowiedzialni za smutny stan spraw w Wieloświecie."~ */
  IF ~~ THEN REPLY #12435 /* ~"Właściwie nie o to mi chodziło. Chciałem wiedzieć, czym różnicie się od innych?"~ */ GOTO 16
  IF ~~ THEN REPLY #12436 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12437 /* ~"Rozumiem. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12438 /* ~Bies milknie na chwilę, zaś potem rozpromienia się. "Och tak. Trzeba ci wiedzieć, że reprezentujemy siły ładu i porządku. Ci, którzy łamią prawa, nie unikną kary. Jeśli nie ma prawa, jest tylko anarchia, a widziałeś na własne oczy, co Anarchia uczyniła z Otchłanią. Spłodziła tam grozę, przekraczającą rozmachem płody wszelkiej wyobraźni. Wszelkie nadużycia, jakich, wedle baatezu, dopuszczamy się, mają na celu jedynie przeciwstawienie się rosnącej fali chaosu, której sprawcami są tanar'ri. Nie chcemy nikogo skrzywdzić, chcemy po prostu, aby wiadomym było, jakich granic przekraczać nie wolno.~ */
  IF ~~ THEN REPLY #12439 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12440 /* ~"Rozumiem. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.4
  SAY #12441 /* ~"Farod? Słyszałem gdzieś to imię. Czy to nie mędrzec albo ktoś w tym rodzaju? Czy też zaklinacz zmarłych? A może któryś z pomylonych proroków? Słyszałem o nim, przyjacielu, ale przyjemności jego towarzystwa jak na razie bogowie mi oszczędzili. Może powinieneś spytać o niego jakiegoś innego gościa tej tawerny."~ */
  IF ~~ THEN REPLY #12442 /* ~"Być może. Mam kilka innych pytań..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12443 /* ~"Być może. Póki co, żegnajcie.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #12444 /* ~"Ponieważ, przyjacielu, łatwo jest popełnić błąd przeznaczając dobre słowo potomności, a jeszcze łatwiej zaufanemu druhowi,", mówi bies posyłając Etelgrinowi jadowite spojrzenie, "aby zaraz potem stwierdzić, że wykorzystał je i użył go przeciwko tobie. W istocie, dojść może nawet do sytuacji równoznacznych z dezercją. Porzucając albo gubiąc pamiętnik możesz wystawić swój byt na poważne niebezpieczeństwo."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12445 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ EXTERN ~DMORTE~ 152
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12446 /* ~"Ach tak. Mam kilka pytań..."~ */ EXTERN ~DAETHEL~ 8
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12447 /* ~"Rozumiem. Żegnajcie."~ */ EXTERN ~DMORTE~ 152
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12448 /* ~"Rozumiem. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #14690 /* ~"On ma na myśli Szczękołapa, czyż nie?~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 15
END

IF ~~ THEN BEGIN 20 // from:
  SAY #14691 /* ~"On pyta o niego... czyżby nasz przyjaciel chciałby nas wybadać? Czyż może tego nie wiedzieć? A może to tylko niejakie podejrzenia..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 16
END

IF ~~ THEN BEGIN 21 // from:
  SAY #14692 /* ~"A ty zastanawiasz się Etelgrinie, dlaczego przy twoim imieniu nie ma chlubnego dopełnienia?" Bies odwraca się z powrotem do ciebie. "Wyjaśnię ci to z ogromną przyjemnością."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 18
END

IF ~~ THEN BEGIN 22 // from:
  SAY #14693 /* ~"Złożyłem przysięgę, lecz nie taką jak ty! O sprawie tej nie będę rozmawiał z żadnym z Tanar'ri. Ale zdaje mi się, że nasz stary przyjaciel nie należy do tego plemienia."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 19
END

IF ~~ THEN BEGIN 23 // from:
  SAY #14694 /* ~"I to jak!" Bies raz jeszcze zwraca się ku tobie. "Ten Zbieracz, mój przyjacielu to diabeł, obłożony klątwą świętego męża. Urodziwy młody człowiek, którego widziałeś u jego boku, jest niewolnikiem Zbieracza, chociaż nie zdaje sobie z tego sprawy."~ */
  IF ~~ THEN REPLY #14767 /* ~"Nie przerywaj..."~ */ EXTERN ~DAETHEL~ 20
END

IF ~~ THEN BEGIN 24 // from:
  SAY #14695 /* ~"Czy mógłbym, Etelgrinie? Nie sądzę."~ */
  IF ~~ THEN REPLY #14768 /* ~"Jaki medalion?"~ */ GOTO 25
  IF ~~ THEN REPLY #14769 /* ~"Posłucham waszych opowieści następnym razem. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #14696 /* ~"Ów bies ma medalion, magiczny przedmiot, w którego posiadanie weszlibyśmy z ogromną radością. Podkreślam, przyjacielu, że dla ciebie cacko to użyteczne jest mało albo i wcale. Tedy, może..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 21
END

IF ~~ THEN BEGIN 26 // from:
  SAY #14697 /* ~"...*wszystko*..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 23
END

IF ~~ THEN BEGIN 27 // from:
  SAY #14698 /* ~"...prosimy tylko o medalion. Dzięki temu medalionowi będziemy mogli wyposażyć cię w obiecaną moc."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 24
END

IF ~~ THEN BEGIN 28 // from:
  SAY #14699 /* ~"Niestety, nawet ja nie jestem w stanie uniknąć orzeczenia. Tkwimy w tym po szyję, przyjacielu."~ */
  IF ~~ THEN REPLY #14770 /* ~"A jaka moc kryje się w medalionie?"~ */ EXTERN ~DAETHEL~ 26
  IF ~~ THEN REPLY #14771 /* ~"Zgoda. Stoi umowa."~ */ EXTERN ~DAETHEL~ 30
  IF ~~ THEN REPLY #14772 /* ~"Nie. Nie zgadzam się."~ */ EXTERN ~DAETHEL~ 29
END

IF ~~ THEN BEGIN 29 // from:
  SAY #14700 /* ~"Zupełnie nic, przyjacielu."~ */
  IF ~~ THEN REPLY #14773 /* ~"Powiedzcie mi, albo nie będzie żadnego układu."~ */ GOTO 30
  IF ~~ THEN REPLY #14774 /* ~"Dlaczego sami go nie odbierzecie?"~ */ EXTERN ~DAETHEL~ 25
  IF ~~ THEN REPLY #14775 /* ~"Zgoda. Stoi umowa."~ */ EXTERN ~DAETHEL~ 30
  IF ~~ THEN REPLY #14776 /* ~"Nie. Nie zgadzam się."~ */ EXTERN ~DAETHEL~ 29
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14701 /* ~"Chwyta dusze, kiedy te opuszczają swoje skorupy."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 27
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14702 /* ~"Co byś zrobił z takim przedmiotem. Sprzedałbyś go za odrobinę złota? Ozdobiłbyś nim gzyms kominka?"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 28
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14703 /* ~"Tak, Etelgrinie, to wstyd. Pozostaniemy tutaj, stary przyjacielu, na wypadek, gdyby ci przyszło odmienić zdanie."~ */
  IF ~~ THEN REPLY #14777 /* ~Mam kilka innych pytań..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14778 /* ~"Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14704 /* ~"Ten Zbieracz to Erynia. Przekroczyła wszelako dozwolone granice. Gnana niezdrową ambicją próbowała nas zwieść."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 31
END

IF ~~ THEN BEGIN 34 // from:
  SAY #14705 /* ~"Erynie nie są wielkimi wojownikami..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 32
END

IF ~~ THEN BEGIN 35 // from:
  SAY #14706 /* ~Bies obraca się ku swemu kompanowi. "Tak, w rzeczy samej." Spogląda znów na ciebie i syczy "Jak już rzekłem, bez magicznego powroza, który mają wszystkie jej siostry i zwykłych diabelskich zabezpieczeń, może łatwo zginąć. Naturalnie, jeżeli nie będzie w pobliżu jej pełnego fantazji młodego przyjaciela."~ */
  IF ~~ THEN REPLY #14779 /* ~"Jak mógłbym do niej dotrzeć?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #14707 /* ~"Och właśnie do tego zmierzałem, stary druhu. Odnajdziesz ją ukrytą w alei, położonej na północ od tego przybytku, pomiędzy dwoma budowlami. Poszukuj jej tam, koło anty-szczytu."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 33
END

IF ~~ THEN BEGIN 37 // from:
  SAY #14708 /* ~"Och, ale układem pozostaje układ. Wszak już się zgodziłeś, pamiętasz? My wypełniliśmy naszą część umowy, czyż więc zdolny byłbyś złamać swoją obietnicę i okazać tak daleko idącą bezduszność i lekceważenie wobec naszej starożytnej znajomości?"~ */
  IF ~~ THEN REPLY #14780 /* ~"Masz rację."~ */ EXTERN ~DAETHEL~ 34
  IF ~~ THEN REPLY #14781 /* ~"Tak."~ */ EXTERN ~DAETHEL~ 35
END

IF ~~ THEN BEGIN 38 // from:
  SAY #14709 /* ~"W istocie, Etelgrinie." Bies odwraca się ku tobie, wyglądając na mocno zafrasowanego. "Czyż już zapomniałeś o mocy, którą ci obiecaliśmy? Talizman w naszych dłoniach sprawić może, że staniesz się silniejszy, przyjacielu."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 36
END

IF ~~ THEN BEGIN 39 // from:
  SAY #14710 /* ~"Jesteś pewien, że chcesz nas tak zostawić?"~ */
  IF ~~ THEN REPLY #14782 /* ~"Masz rację."~ */ EXTERN ~DAETHEL~ 34
  IF ~~ THEN REPLY #14783 /* ~"Tak, po prostu nie mogę tego zrobić."~ */ EXTERN ~DAETHEL~ 37
END

IF ~~ THEN BEGIN 40 // from:
  SAY #14711 /* ~"Byłem głupcem, Etelgrinie. Powinienem był spisać umowę, ale zrobiłem ogromny błąd uwzględniając naszą przyjaźń w tym interesie." Odwraca się ku tobie. "Bądź przeklęty, nieszczęsny człecze... Pożałujesz tego. Wiedz, że z tą chwilą Tegar'in Po Trzykroć Przeklęty będzie nastawał nie tylko na twoje ciało, ale na twoją duszę. Kiedy zatriumfuję, będziesz jak markietanka na szlakach Wojny Krwi, jak niewolnik najpodlejszych istot piekielnych!"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 38
END

IF ~~ THEN BEGIN 41 // from:
  SAY #14712 /* ~"Nie, nie teraz. Pozwól mu pozostać na jego szlaku. W końcu mamy całą wieczność na knucie spisków..." Dwa biesy wymieniają złośliwe uśmiechy i odwołują cię skinieniem dłoni.~ */
  IF ~~ THEN REPLY #14784 /* ~"Poczekajcie! Poczekajcie! Zmieniłem zdanie!"~ */ EXTERN ~DAETHEL~ 39
  IF ~~ THEN REPLY #14785 /* ~Odejdź.~ */ DO ~SetGlobal("2Devils","AR0402",3)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #14713 /* ~"Zamilknij, Etelgrinie! Wszyscy popełniamy błędy." Tegar'in spogląda na ciebie, uśmiechając się pogardliwie "Wiesz teraz, czego od ciebie oczekujemy. Większość ran z czasem się goi. Może kiedy wypełnisz swoją część umowy, nasza przyjaźń przybierze dawny kształt. Póki co, żegnaj."~ */
  IF ~~ THEN REPLY #14786 /* ~Odejdź.~ */ DO ~SetGlobal("2Devils","AR0402",2)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 53.0 54.0
  SAY #14714 /* ~"Użyjemy tej mocy medalionu, która będzie dla ciebie ożywcza. Poczujesz, że czyni się silniejszym i odporniejszym fizycznie. Efekt będzie nieodwracalny... póki będziesz żył, rzecz jasna, ale lepiej nie poruszajmy tak smutnych tematów jak twój zgon, stary druhu."~ */
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14787 /* ~"Oto i medalion."~ */ EXTERN ~DAETHEL~ 40
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14788 /* ~"Mam kilka innych pytań..."~ */ GOTO 44
  IF ~  !PartyHasItem("SkulPend")
~ THEN REPLY #14789 /* ~"Mam kilka innych pytań..."~ */ EXTERN ~DAETHEL~ 8
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14790 /* ~"To wszystko, co chciałem wiedzieć. Żegnajcie."~ */ GOTO 44
  IF ~  !PartyHasItem("SkulPend")
~ THEN REPLY #14791 /* ~"To wszystko, co chciałem wiedzieć. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.1 43.3
  SAY #14715 /* ~"Poczekaj... Najpierw musimy mieć medalion."~ */
  IF ~~ THEN REPLY #14792 /* ~"Oto i medalion."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14793 /* ~"Zdecydowałem się zatrzymać medalion."~ */ EXTERN ~DAETHEL~ 44
END

IF ~~ THEN BEGIN 45 // from:
  SAY #14716 /* ~"Tak Etelgrinie, zaiste. A teraz niechaj medalion obdarzy cię mocą, towarzyszu dawnych dni... Bies ściska medalion w pazurach, a jego oczy zajmują się złowieszczym ogniem. Wokół medalionu pojawia się przez moment aureola mocy. Poza tym nic więcej się nie dzieje.~ */
  IF ~~ THEN REPLY #14794 /* ~"Co się stało?"~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #14717 /* ~"Doprawdy nie wiem tego, stary druhu!". Tegar'in wydaje się autentycznie zaskoczony, ale Etelgrin uśmiecha się złowieszczo. "Zdaje się... zdaje się, że jakaś dziwna magia tobą rządzi. Czary, które dziwnym trafem sprawiają, że medalion nie jest w stanie napełnić cię mocą."~ */
  IF ~~ THEN REPLY #14795 /* ~"Co? Czy wiedziałeś o tym już wcześniej?"~ */ EXTERN ~DAETHEL~ 41
END

IF ~~ THEN BEGIN 47 // from:
  SAY #14718 /* ~"Nie, mój stary przyjacielu. Zdecydowanie, nie. Etelgrinie?" Bies oddaje medalion swojemu kompanowi.~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 42
END

IF ~~ THEN BEGIN 48 // from:
  SAY #14719 /* ~"Jest mi naprawdę bardzo przykro, najdroższy przyjacielu. Może kiedy pozbędziesz się tych dziwnych czarów, będziemy mogli użyć medalionu dla twej korzyści. Jeśli ci się to uda, wiesz, gdzie nas szukać." Diabeł uśmiecha się.~ */
  IF ~~ THEN REPLY #14796 /* ~"Zatem oddaj mi medalion. Przyniosę go znowu, kiedy złe czary mnie opuszczą."~ */ GOTO 49
  IF ~~ THEN REPLY #14797 /* ~Zaatakuj biesy.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14798 /* ~"Hmm... Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #14720 /* ~Tegar'in smutno kręci głową.~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 43
END

IF ~~ THEN BEGIN 50 // from:
  SAY #14721 /* ~"W myśl umowy to już nasza własność. Pamiętaj o naszym układzie, wieloletni przyjacielu."~ */
  IF ~~ THEN REPLY #14799 /* ~"Dobrze. Oto i medalion."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14800 /* ~"Nie. Sądzę, że na razie go zatrzymam."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #14722 /* ~"Och to takie smutne. Naprawdę byłbyś zdolny odrzucać naszą przyjaźń tak bezmyślnym czynem? Proszę, nie, zaklinam cię, nie sprzeniewierzaj się tak starożytnej zażyłości."~ */
  IF ~~ THEN REPLY #14801 /* ~"Dobrze. Oto i medalion."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14802 /* ~"Nie. Nie oddam medalionu."~ */ EXTERN ~DAETHEL~ 45
END

IF ~~ THEN BEGIN 52 // from:
  SAY #14723 /* ~"Tak."~ */
  IF ~~ THEN REPLY #14803 /* ~Walcz z nimi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14804 /* ~Bierz medalion i uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #14724 /* ~"No cóż..." Biesy wymieniają uśmiechy, a potem kiwają głowami "W takim wypadku..."~ */
  IF ~~ THEN REPLY #14805 /* ~"Poczekaj - jaki rodzaj mocy chcesz mi przekazać?"~ */ GOTO 43
  IF ~~ THEN REPLY #14806 /* ~"Oto i medalion."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14807 /* ~"Zdecydowałem się zatrzymać medalion."~ */ EXTERN ~DAETHEL~ 44
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 54 // from:
  SAY #14725 /* ~"Patrz, on wrócił, i ma ze sobą medalion!"~ */
  IF ~~ THEN REPLY #14808 /* ~"Poczekaj - jaki rodzaj mocy chcesz mi przekazać?"~ */ GOTO 43
  IF ~~ THEN REPLY #14809 /* ~"Oto i medalion."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14810 /* ~"Zdecydowałem się zatrzymać medalion."~ */ EXTERN ~DAETHEL~ 44
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",2)
~ THEN BEGIN 55 // from:
  SAY #14726 /* ~"O patrz, kto wrócił. Niezwykle nam przykro, przyjacielu, ale nie będziemy z tobą rozmawiać, dopóki nie znajdziesz naszego medalionu. Żegnaj."~ */
  IF ~~ THEN REPLY #14811 /* ~Odejdź.~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",3)
~ THEN BEGIN 56 // from:
  SAY #14727 /* ~"Proszę, proszę. Zdrajca Przyjaciół!"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 46
END

IF ~~ THEN BEGIN 57 // from:
  SAY #14728 /* ~Po twoich słowach, biesy spoglądają na ciebie chłodno przez długą, niewygodną chwilę milczenia. Wreszcie Tegar'in odzywa się. "A więc to tak. To wstyd... przyjacielu."~ */
  IF ~~ THEN REPLY #14812 /* ~"Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("2Devils","AR0402",5)
~ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14813 /* ~"To wszystko. Żegnajcie."~ */ DO ~SetGlobal("2Devils","AR0402",5)
~ EXIT
END
