// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #26110 /* ~Ten starszy, dobrze ubrany mężczyzna, bez wątpienia dokądś zdąża.~ */
  IF ~~ THEN REPLY #26111 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #26199 /* ~Zostaw go w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26112 /* ~Przystaje na chwilę, by ci się przyjrzeć. Marszczy i unosi brwi, gdy się do niego zbliżasz, po czym spogląda ci w oczy. "Mmm?"~ */
  IF ~~ THEN REPLY #26113 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26198 /* ~"Czyżby mój wygląd cię niepokoił?"~ */ GOTO 23
  IF ~~ THEN REPLY #26206 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0
  SAY #26114 /* ~Mówi zgorzkniałym, trochę protekcjonalnym tonem: "To wstyd... naprawdę. Nie mam czasu, by odpowiadać na twoje pytania. Żegnaj."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #26115 /* ~"Tylko jedno pytanie, dobrze?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #26188 /* ~"Tylko jedno pytanie, dobrze?"~ */ GOTO 20
  IF ~~ THEN REPLY #26192 /* ~"Postarasz się więc *wygospodarować* odrobinę czasu. Teraz odpowiedz na moje pytania."~ */ GOTO 6
  IF ~~ THEN REPLY #26193 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #26116 /* ~Uśmiecha się trochę szyderczo. "Heh, jako iż się bardzo spieszę... Rzuć swym 'pytaniem', byle szybko!"~ */
  IF ~~ THEN REPLY #26117 /* ~"Co to za miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #26132 /* ~"Czy jest tu coś godnego uwagi?"~ */ GOTO 8
  IF ~~ THEN REPLY #26139 /* ~"Gdzie można znaleźć tu jakąś pracę?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #26144 /* ~"Potrzebuję wskazówek, jak dojść..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #26179 /* ~"Co wiesz a Raveli Szaradnej?"~ */ GOTO 21
  IF ~~ THEN REPLY #26187 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #26118 /* ~"Powinienem był się domyślić, że się zgubiłeś. To Dzielnica Urzędników, 'panie'. Gdybyś miał zamiar wrócić do Niższej Dzielnicy - czy innej, z której tu przyszedłeś - bramę znajdziesz w północno-zachodniej części tej sekcji. Żegnaj."~ */
  IF ~~ THEN REPLY #26119 /* ~"Czekaj... Mam kilka innych pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #26131 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0 22.1 22.2
  SAY #26120 /* ~"Koniec tego wypytywania. Jeśli koniecznie musisz, znajdź sobie kogoś innego do zamęczania. Żegnaj."~ */
  IF ~~ THEN REPLY #26121 /* ~"Stój. Masz się zatrzymać i odpowiedzieć na moje pytania."~ */ GOTO 6
  IF ~~ THEN REPLY #26130 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #26122 /* ~Naburmusza się, świdruje cię wzrokiem i krzyczy. "Na żadne pytanie już ci *nie* odpowiem. Zabieraj się stąd, gburze, zanim wezwę odział strażników Harmonium, by wynieśli ten twój pokryty bliznami tyłek poza granice dzielnicy!"~ */
  IF ~~ THEN REPLY #26123 /* ~"Wątpię, czy komukolwiek uda się przybyć na czas, by cię uratować."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #26127 /* ~"Jeśli ci życie miłe, nawet nie próbuj wzywać kogokolwiek."~ */ GOTO 7
  IF ~~ THEN REPLY #26128 /* ~"Przyjmij me przeprosiny. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #26129 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #26124 /* ~"Straż! Straż!" Mężczyzna zaczyna się cofać.~ */
  IF ~~ THEN REPLY #26125 /* ~Zaatakuj go.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #26126 /* ~Spróbuj odejść, zanim ktokolwiek przybędzie.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #26133 /* ~Przewraca oczami. "Zdaje ci się 'panie', że jestem jakimś oprowadzaczem, czy co? Mam ważne sprawy do załatwienia." Mamrocze coś pod nosem, po czym kontynuuje: "Poszukaj lepiej Miejskiego Gmachu Rozrywki. Tam pewnie znajdziesz to, co będzie odpowiadało twoim zainteresowaniom."~ */
  IF ~~ THEN REPLY #26134 /* ~"Coś jeszcze?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26135 /* ~"Nie." Wydaje się, że się nad czymś zastanawia. "A może jednak... Nie jestem przekonany, czy to miejsce będzie ci odpowiadać, ale możesz się udać do Przybytku... Zaspokajania Żądz Intelektualnych."~ */
  IF ~~ THEN REPLY #26136 /* ~"Opowiedz mi o tym Przybytku."~ */ GOTO 5
  IF ~~ THEN REPLY #26137 /* ~"Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #26138 /* ~"Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #26140 /* ~Zdaje się być zaskoczony. "Co? Ty szukasz uczciwej pracy? Dobre... Spróbuj w aptece albo u adwokata... Wiesz, każdy powinien mieć jakieś zatrudnienie - dzięki temu społeczeństwo ma z niego jakiś pożytek."~ */
  IF ~~ THEN REPLY #26141 /* ~"Mam pytanie dotyczące jednego z miejsc, o których wspomniałeś..."~ */ GOTO 5
  IF ~~ THEN REPLY #26142 /* ~"Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #26143 /* ~"Dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #26145 /* ~"Dokąd? Chyba sobie kpisz ze mnie, człowieku!"~ */
  IF ~~ THEN REPLY #26146 /* ~"Dom adwokata."~ */ GOTO 12
  IF ~~ THEN REPLY #26150 /* ~"Apteka."~ */ GOTO 13
  IF ~~ THEN REPLY #26154 /* ~"Sklep z działami sztuki."~ */ GOTO 14
  IF ~~ THEN REPLY #26158 /* ~"Przybytek."~ */ GOTO 15
  IF ~~ THEN REPLY #26162 /* ~"Ciągnące się pod Dzielnicą katakumby."~ */ GOTO 16
  IF ~~ THEN REPLY #26166 /* ~"Miejski Gmach Rozrywki."~ */ GOTO 17
  IF ~~ THEN REPLY #26170 /* ~"Sklepik osobliwości."~ */ GOTO 18
  IF ~~ THEN REPLY #26174 /* ~"Warsztat krawiecki."~ */ GOTO 19
  IF ~~ THEN REPLY #26178 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26147 /* ~"Szukasz domu adwokata? Hmm... Skieruj się na południe od bramy prowadzącej do Dzielnicy Niższej. Znajdziesz go przy wschodniej stronie drogi."~ */
  IF ~~ THEN REPLY #26148 /* ~"Dzięki. Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #26149 /* ~"Rozumiem. Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #26151 /* ~"Podążaj tą drogą, która wiedzie na wschód od bramy do Dzielnicy Niższej. Gdy dojdziesz do miejsca, w którym droga rozwidla się i kieruje na północny wschód i południowy wschód, wybierz południową odnogę. Budynek będzie stał przy wschodniej stronie drogi. Na jego frontowej ścianie, wychodzącej na południe, znajdują się trzy witraże."~ */
  IF ~~ THEN REPLY #26152 /* ~"Dzięki. Pozwól mi teraz spytać o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #26153 /* ~"Rozumiem. Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #26155 /* ~"Podążaj tą drogą, która wiedzie na wschód od bramy do Dzielnicy Niższej. Gdy dojdziesz do miejsca, w którym droga rozwidla się i kieruje na północny wschód i południowy wschód, wybierz południową odnogę. Budynek będzie stał przy zachodniej stronie drogi. Jego przód wychodzi na południe i wieńczy go dach, którego dachówki przytrzymywane są przez sporych rozmiarów kamienie."~ */
  IF ~~ THEN REPLY #26156 /* ~"Dzięki. Pozwól, że spytam teraz o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #26157 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #26159 /* ~"To zaraz na wschód od bramy prowadzącej do Niższej Dzielnicy. To taki sporych rozmiarów, owalny budynek, którego wejście skierowane będzie na południe."~ */
  IF ~~ THEN REPLY #26160 /* ~"Dzięki. Chciałbym cię o coś jeszcze zapytać..."~ */ GOTO 5
  IF ~~ THEN REPLY #26161 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #26163 /* ~"Istnieją dwa wejścia. Pierwsze z nich znajduje się na wschód od bramy wiodącej do Niższej Dzielnicy - pomiędzy warsztatem krawieckim a Miejskim Gmachem Rozrywki. Drugie zaś można znaleźć dokładnie na południu od wspomnianej już wcześniej bramy."~ */
  IF ~~ THEN REPLY #26164 /* ~"Dziękuję. Pozwól, że spytam o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #26165 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #26167 /* ~"Miejski Gmach Rozrywki to taki masywny budynek znajdujący się w północno-wschodniej części tej sekcji. Jedynie ktoś zarówno ślepy jak i głupi mógłby go nie zauważyć."~ */
  IF ~~ THEN REPLY #26168 /* ~"Dzięki. Pozwól mi teraz spytać o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #26169 /* ~"Rozumiem, dziękuję za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #26171 /* ~"Hmm. Z tego co wiem, jest tam pewna kobieta, która zajmuje się importem i sprzedażą dóbr pochodzących z innych sfer... w głównej mierze z tych niższych. Jeśli interesują tego typu rzeczy, znajdziesz jej sklep w południowo-zachodniej części tej sekcji. Na jego dach prowadzić będę szerokie schody."~ */
  IF ~~ THEN REPLY #26172 /* ~"Dzięki. Spytałbym o coś jeszcze..."~ */ GOTO 5
  IF ~~ THEN REPLY #26173 /* ~"No tak. Dzięki za poświęcony czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #26175 /* ~"Udaj się na północny wschód od bramy wiodącej do Niższej Dzielnicy. Będzie to taki szeroki budynek z wejściem wychodzącym na południe."~ */
  IF ~~ THEN REPLY #26176 /* ~"Dzięki. Pozwól mi spytać o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #26177 /* ~"Rozumiem. Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #26180 /* ~Potrząsa przecząco głową i zaczyna cię odpędzać. "Jeśli koniecznie już musisz, znajdź sobie do dręczenia kogoś innego. Żegnaj."~ */
  IF ~~ THEN REPLY #26181 /* ~"Stój. Masz się zatrzymać i odpowiedzieć na moje pytania."~ */ GOTO 6
  IF ~~ THEN REPLY #26185 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #26182 /* ~Mężczyzna milczy przez chwilę. "Niewiele wiem. Znalazłem o niej jedynie parę wzmianek w przeczytanych przez mnie książkach."~ */
  IF ~~ THEN REPLY #26183 /* ~"Co mówiły o niej te książki?"~ */ GOTO 22
  IF ~~ THEN REPLY #26184 /* ~"Rozumiem. Spytałbym teraz o coś innego."~ */ GOTO 5
  IF ~~ THEN REPLY #26186 /* ~"Dziękuję. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26189 /* ~"Jedynie to, że istota ta jest kwintesencją zła. Co prawda wielu uważa, że opowieści o niej są tylko mitem, jednakże znaleźć można dowody potwierdzające jej istnienie. Prawdę mówiąc nieliczne, ale zawsze... Te, związane z podjętą przez nią próbą unicestwienia Sigil... Osobiście uważam, iż została ona zesłana do jednego z labiryntów Pani Bólu."~ */
  IF ~~ THEN REPLY #26190 /* ~"Opowiedz mi o Pani Bólu."~ */ GOTO 5
  IF ~~ THEN REPLY #26191 /* ~"Czy istnieje sposób, by się dostać do tych labiryntów?"~ */ GOTO 5
  IF ~~ THEN REPLY #26194 /* ~"Mam inne pytanie..."~ */ GOTO 5
  IF ~~ THEN REPLY #26207 /* ~"Dziękuję za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1
  SAY #26195 /* ~"Człowieku, spójrz tylko na siebie! Prawie... prawie... nagi, pokryty bliznami, włóczysz się po ulicach Sigil, zaczepiając mieszkańców. Czemu to? Wiesz, dane mi było spotkać biesy, które się mogły poszczycić lepszymi niż twoje manierami, lepiej też dbały o wygląd. Nie zamierzałem cię co prawda obrażać, nie oszczędzę ci jednak szczerej odpowiedzi."~ */
  IF ~~ THEN REPLY #26196 /* ~"Pytałem, jak sądzę. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26197 /* ~"Niczego więcej nie potrzebuję. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #26200 /* ~"Znowu ty! Nie mam dziś czasu, by odpowiadać na twoje pytania. Żegnaj!"~ */
  IF ~~ THEN REPLY #26201 /* ~"Poczekaj. Mam kilka pytań..."~ */ GOTO 25
  IF ~~ THEN REPLY #26205 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #26202 /* ~"Nie, żadnych pytań. Mam coś do załatwienia i nie pozwolę, by przeszkodziła mi w tym czyjaś ciekawość. Znajdź sobie inny obiekt do zamęczania, jeśli musisz. Żegnaj."~ */
  IF ~~ THEN REPLY #26203 /* ~"Stój. Masz się zatrzymać i odpowiedzieć na moje pytania."~ */ GOTO 6
  IF ~~ THEN REPLY #26204 /* ~"Żegnaj więc."~ */ EXIT
END
