// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10146 /* ~Widzisz kobietę przywdzianą w lichą sukienkę. Górna część jej stroju jest stanowczo za ciasna, co sprawia, że jej sporych rozmiarów biust wylewa się poza obręby szaty.~ */
  IF ~~ THEN REPLY #10147 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #10148 /* ~Zignoruj ją.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10149 /* ~Rzuca ci pojedyncze spojrzenie i przybiera znudzoną minę. "Wyglądasz trochę zbyt brutalnie jak na mój gust. Nawet się nie fatyguj, śmiałku."~ */
  IF ~~ THEN REPLY #10150 /* ~"O czym ty mówisz?"~ */ GOTO 2
  IF ~~ THEN REPLY #10151 /* ~"Chcę ci jedynie zadać kilka pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #10152 /* ~"Ech... Taak. Żegnaj."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10153 /* ~Spogląda na ciebie przebiegle, po czym nachyla się nad tobą. "Zastanów się, trepie. Jak sądzisz, jakim typem działalności się zajmuję? Spogląda na swoje piersi, po czym mruga do ciebie. "Widzisz coś, co ci się podoba?"~ */
  IF ~~ THEN REPLY #10154 /* ~"Skoro uważasz, że nie odpowiadam twoim gustom, czemu aż tak eksponujesz swoje 'atrybuty'?" Nie potrafisz znaleźć odpowiedniego słowa.~ */ GOTO 3
  IF ~~ THEN REPLY #10155 /* ~"Chcę ci jedynie zadać parę pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #10156 /* ~"Ta... Ile mnie to będzie kosztować?"~ */ GOTO 23
  IF ~~ THEN REPLY #10157 /* ~"Nie bardzo. Muszę już iść."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10158 /* ~Chichocze, po czym wyprostowuje się. "Odrobina rozrywki, to wszystko. Chcesz czegoś?"~ */
  IF ~~ THEN REPLY #10159 /* ~"Chcę ci jedynie zadać parę pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #10160 /* ~"Ta... Ile mnie to będzie kosztować?"~ */ GOTO 23
  IF ~~ THEN REPLY #10161 /* ~"Nie bardzo. Muszę już iść."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY #10162 /* ~Obrzuca cię gniewnym spojrzeniem. "Hej! Szpicuj się, trepie. Jestem najlepszą, jaką kiedykolwiek dane ci będzie znaleźć na ulicach."~ */
  IF ~~ THEN REPLY #10163 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #10164 /* ~Uśmiecha się do ciebie. "W takim razie życzę ci miłego dnia."~ */
  IF ~~ THEN REPLY #10166 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 2.1 3.0 7.1 8.1 9.2 10.0 11.0 15.1 16.0 20.0 22.0 23.0 25.0 26.0
  SAY #10165 /* ~Wzdycha i obrzuca cię znudzonym spojrzeniem. "Czego się chcesz dowiedzieć?"~ */
  IF ~~ THEN REPLY #10167 /* ~"Szukam devy. Powiedziano mi, że jest w Klątwie."~ */ GOTO 7
  IF ~~ THEN REPLY #10168 /* ~"Co nowego słychać?"~ */ GOTO 12
  IF ~~ THEN REPLY #10169 /* ~"Kto tu rządzi?"~ */ GOTO 20
  IF ~~ THEN REPLY #10170 /* ~"Co możesz mi powiedzieć o Klątwie?"~ */ GOTO 21
  IF ~~ THEN REPLY #10171 /* ~"Jak masz na imię?"~ */ GOTO 25
  IF ~~ THEN REPLY #10172 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10173 /* ~Wydyma wargi i marszczy brwi, zastanawiając się. Po chwili uśmiecha się. "Tak, pamiętam. Jest w więzieniu." Marszczy brwi ponownie. "Dziwne miejsce jak na devę, nie sądzisz?"~ */
  IF ~~ THEN REPLY #10174 /* ~"W więzieniu? Jesteś tego pewna?"~ */ DO ~SetGlobal("Know_Deva_Prison","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #10175 /* ~"Rozumiem. Mogę ci zadać kolejne pytanie?"~ */ GOTO 6
  IF ~~ THEN REPLY #10176 /* ~"Niezmiernie mi pomogłaś. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10177 /* ~Zerka gniewnie. "Oczywiście, że jestem pewna. Usłyszałam to od jednego ze strażników. Ten deva jest wyjątkowo dobrze zamknięty. Kopacze poszerzali teren więzienia i, gdy nie tak dawno temu otworzyli kamienną kopułę, on tam był. Jest wręcz świetnie strzeżony."~ */
  IF ~~ THEN REPLY #10178 /* ~"Hmm. W takim razie ciężko się będzie z nim zobaczyć."~ */ GOTO 9
  IF ~~ THEN REPLY #10179 /* ~"Kolejne pytanie."~ */ GOTO 6
  IF ~~ THEN REPLY #10180 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10181 /* ~Wyciąga dłoń i uśmiecha się do ciebie przebiegle. "Brzdęk? Brzdęk?"~ */
  IF ~  PartyGoldGT(1)
~ THEN REPLY #10182 /* ~Wręcz jej kilka monet.~ */ DO ~TakePartyGold(2)
~ GOTO 10
  IF ~  PartyGoldGT(0)
~ THEN REPLY #10183 /* ~Kłamstwo: "Przykro mi, nie mam pieniędzy."~ */ GOTO 11
  IF ~~ THEN REPLY #10184 /* ~"Pozwól mi zadać ci inne pytanie."~ */ GOTO 6
  IF ~~ THEN REPLY #10185 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #10186 /* ~Uśmiecha się słodko, po czym nachyla się - dając ci możliwość przyjrzenia się jej pokaźnym piersiom po raz kolejny. "Udaj się do gospody 'Brama Zdrajców' i trochę popytaj. Tam znajdziesz ludzi, którzy mogą ci pomóc."~ */
  IF ~~ THEN REPLY #10187 /* ~"Dzięki. Zrobię tak. Teraz jednak chciałbym spytać o coś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #67907 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #10188 /* ~Wzdycha i obrzuca cię ponurym spojrzeniem. "Pewnie postradałam zmysły... Pomogę ci jednak. Udaj się do gospody 'Brama Zdrajców' i trochę popytaj. Tam znajdziesz ludzi, którzy mogą ci pomóc."~ */
  IF ~~ THEN REPLY #10189 /* ~"Dzięki. Zrobię tak. Teraz jednak chciałbym spytać o coś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #67908 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY #10190 /* ~"Cóż... Zaraza została opanowana. Odizolowano parę części miasta, by uniemożliwić jej rozprzestrzenianie się. Musiano nawet zamknąć, znajdującą się na rynku, bramę wiodącą do Tartaru." Przerywa, by się zastanowić.~ */
  IF ~~ THEN REPLY #10191 /* ~"Kontynuuj."~ */ GOTO 13
  IF ~~ THEN REPLY #10192 /* ~"Wybacz. Zaraza?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #10193 /* ~"Jestem ci wdzięczny za pomoc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 17.0 24.0
  SAY #10194 /* ~"Córka Plugawego Barsa zaginęła. On bardzo to przeżywa i poszukuje typków gotowych pomóc w jej odnalezieniu."~ */
  IF ~~ THEN REPLY #10195 /* ~"Kontynuuj."~ */ GOTO 14
  IF ~~ THEN REPLY #10196 /* ~"Kim jest ten Plugawy Bars i gdzie mogę go znaleźć?"~ */ GOTO 18
  IF ~~ THEN REPLY #10197 /* ~"Dziękuję ci. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.0
  SAY #10198 /* ~"Jakiś biedny skurl straci dziś swoją głowę. Czeka na niego szafot na rynku. Doprawdy, obrzydliwe." Marszczy brwi i odwraca głowę w innym kierunku.~ */
  IF ~~ THEN REPLY #10199 /* ~"Kontynuuj."~ */ GOTO 15
  IF ~~ THEN REPLY #10200 /* ~"Co zrobił?"~ */ GOTO 19
  IF ~~ THEN REPLY #10201 /* ~"Dziękuję, pani. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 19.0
  SAY #10202 /* ~Zamyśla się na chwilę. "Nic więcej nie przychodzi mi do głowy." Wzrusza ramionami.~ */
  IF ~~ THEN REPLY #10203 /* ~"Zdaje się, żeś całkiem nieźle poinformowana. Jestem pod wrażeniem."~ */ GOTO 16
  IF ~~ THEN REPLY #10204 /* ~"Jeśli mogę, chcę cię spytać o coś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #10205 /* ~"Jestem ci wdzięczny. Żegnaj, pani."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10206 /* ~Uśmiecha się, nachyla do przodu, i mruga do ciebie ponętnie. "Ludzie się przy mnie otwierają. Nie rozumiem, dlaczego." Wyprostowuje się i zaczyna chichotać.~ */
  IF ~~ THEN REPLY #10207 /* ~"Uch... Tak, ciekawi mnie, dlaczego. Mimo to chciałbym cię spytać o coś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #10208 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #10209 /* ~"Tak. Nie musisz się jednak obawiać. Została opanowana, gdy odizolowano zainfekowane części miasta."~ */
  IF ~~ THEN REPLY #10210 /* ~"Rozumiem. Mów dalej."~ */ GOTO 13
  IF ~  Global("Know_Deva_Prison","Global",1)
~ THEN REPLY #10211 /* ~"Czy ta zaraza wybuchła mniej więcej wtedy, gdy dokopano się do więzienia devy?"~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #10212 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.1
  SAY #10213 /* ~"To karczmarz z gospody 'Brama Zdrajców'. Sądzę, że to gdzieś tam." Wskazuje w dół ulicy.~ */
  IF ~~ THEN REPLY #10214 /* ~"Kontynuuj."~ */ GOTO 14
  IF ~~ THEN REPLY #10215 /* ~"Dziękuję za pomoc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #10216 /* ~Marszczy brwi i na moment odwraca od ciebie wzrok. Po chwili wzrusza ramionami. "Prawdę mówiąc nie wiem. Żaden z mych... informatorów nie podał mi przyczyny."~ */
  IF ~~ THEN REPLY #10217 /* ~"Kontynuuj."~ */ GOTO 15
  IF ~~ THEN REPLY #10218 /* ~"Byłaś mi bardzo pomocna. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 6.2
  SAY #10219 /* ~Chichocze. "To Tovus, Tovus Giljaf. Lubi robić to dość... intensywnie, ale zawsze jest wobec mnie miły i nieźle płaci." Waha się i dochodzi do niej to, co właśnie robi. "Nie powinnam jednak mówić o Tovusie. Możesz go znaleźć w biurze administracyjnym w rynku."~ */
  IF ~~ THEN REPLY #10220 /* ~"Świetnie, kolejne pytanie."~ */ GOTO 6
  IF ~~ THEN REPLY #10221 /* ~"Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.3
  SAY #10222 /* ~"Klątwa..." Wzdycha i zdaje się być zasmucona. "To miasto to dla samotników klatka. Skurle, których możesz tu spotkać, doszli do swych pozycji poprzez przekupstwo i zdradę. Teraz żyją z dnia na dzień w niepewności, nie wiedząc nigdy, komu mogą zaufać i kogo traktować jako przyjaciela."~ */
  IF ~~ THEN REPLY #10223 /* ~"Ty również?~ */ GOTO 22
  IF ~~ THEN REPLY #10224 /* ~"Ciekawe. Sądzę, że czas mi już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #10225 /* ~Spogląda tęsknie w dal. "Dokonałam wyboru i teraz przyszło mi tego żałować." Ponownie odwraca cię w twoją stronę. "Jeśli mogę udzielić ci porady za darmo, niech to będą takie słowa: Cokolwiek w życiu robisz, upewnij się, że będziesz potrafił sobie przebaczyć."~ */
  IF ~~ THEN REPLY #10226 /* ~"Zapamiętam to sobie. Mogę cię spytać o coś innego?"~ */ GOTO 6
  IF ~~ THEN REPLY #10227 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.2 3.1
  SAY #10228 /* ~Lustruje cię od stóp do głowy po raz kolejny. "Cóż... jeśli obiecasz, że będziesz mnie dobrze traktować i nie wyrządzisz mi krzywdy... dziesięć monet."~ */
  IF ~~ THEN REPLY #10229 /* ~"Wręcz nie mogę się powstrzymać... Ale nie teraz. Pozwolisz, że spytam o coś innego?"~ */ GOTO 6
  IF ~~ THEN REPLY #10230 /* ~"Przykro mi, ale muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.1
  SAY #10231 /* ~Marszczy brwi w zadumie, po czym przez chwilę patrzy gdzieś w dal. W końcu znów koncentruje na tobie swoją uwagę. "Wiesz, nie zastanawiałam się nad tym wcześniej, ale sądzę, że masz racje. Te zdarzenia - odnalezienie devy i zaraza - nie były od siebie zbyt odległe w czasie."~ */
  IF ~~ THEN REPLY #10232 /* ~"Rozumiem. Mów dalej."~ */ GOTO 13
  IF ~~ THEN REPLY #10233 /* ~"Byłaś mi bardzo pomocna. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.4
  SAY #10234 /* ~Uśmiecha się do ciebie słodko. "Na imię mam Sharlena, ale wszyscy przyjaciele mówią mi Shara."~ */
  IF ~~ THEN REPLY #10235 /* ~"Ładne imię - Shara. Pozwól mi spytać o coś innego."~ */ GOTO 6
  IF ~~ THEN REPLY #10236 /* ~"Byłaś mi bardzo pomocna. Żegnaj, Sharo."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 26 // from:
  SAY #63238 /* ~Widzisz Sharlenę, prostytutkę. Obdarza cię ona słodkim uśmiechem. "Witaj ponownie, śmiałku. Co mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #63239 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #63240 /* ~Nic, żegnaj.~ */ EXIT
END
