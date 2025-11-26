// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOAX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOAX~

IF ~  Global("Coaxmetal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3017 /* ~Dostrzegasz żelazną... istotę. Jej wielkość przyprawia wręcz o zawroty głowy. Gdyby stanęła, prezentując pełnię swej wysokości, rozniosłaby na kawałki dach wieńczący wieżę oblężniczą. Przypominające odgłos gromu echa wstrząsają przejściem, towarzysząc pracy, którą wykonuje owa istota w kuźni. Powietrze zaś przepełnione jest zapachem sadzy i popiołu.~ */
  IF ~~ THEN REPLY #3019 /* ~"Witaj."~ */ JOURNAL #67791 /* ~Znalazłem sposób na wejście do wnętrza wieży oblężniczej w Niższej Dzielnicy. W murach wieży znajduje się żelazny golem, dorównujący swoimi rozmiarami niemal samej wieży. Wygląda na to, że zajmuje się tam wykuwaniem oręża, korzystając z tamtejszego pieca.~ */ GOTO 3
  IF ~~ THEN REPLY #3018 /* ~Zostaw golema w spokoju.~ */ EXIT
END

IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #26210 /* ~Przeogromnych rozmiarów golem bezustannie pracuje w swojej kuźni. Iskry, popiół i wydobywające się z sykiem chmury gazu unoszą się koło przejścia.~ */
  IF ~  GlobalLT("Coaxmetal","GLOBAL",4)
~ THEN REPLY #26277 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 2
  IF ~  Global("Coaxmetal","GLOBAL",4)
PartyHasItem("Cube")
~ THEN REPLY #26279 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 59
  IF ~  Global("Coaxmetal","GLOBAL",4)
!PartyHasItem("Cube")
~ THEN REPLY #26280 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 63
  IF ~~ THEN REPLY #26281 /* ~Zostaw golema w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.2 5.2 6.4 7.1 8.1 9.1 10.1 11.1 12.1 13.4 14.4 15.1 16.0 17.2 18.1 19.1 20.1 21.1 22.0 23.1 24.1 25.0 26.1 27.1 28.0 29.1 30.1 31.0 33.0 34.1 35.1 36.1 37.3 38.1 39.2 40.1 41.1 42.1 43.1 44.1 45.1 46.1 50.0 65.1
  SAY #26211 /* ~PYTAJ.~ */
  IF ~~ THEN REPLY #26283 /* ~"Czym jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #26284 /* ~"Co to za miejsce?"~ */ GOTO 17
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26285 /* ~"Czym się zajmujesz?"~ */ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26286 /* ~"Po co tworzysz te bronie?"~ */ GOTO 7
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26287 /* ~"Możesz mi powiedzieć nieco więcej o tym, co robisz z tymi broniami?"~ */ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",2)
~ THEN REPLY #26288 /* ~"Czy mógłbyś zrobić coś z moimi broniami?"~ */ GOTO 64
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #26290 /* ~"Co wiesz o Wojnie Krwi?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #26291 /* ~"Słyszałeś o wiedźmie nocy imieniem Ravela?"~ */ GOTO 26
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26292 /* ~"Czy wiesz coś o twierdzy noszącej nazwę Forteca Żalu?"~ */ GOTO 29
  IF ~  Global("Dream","GLOBAL",2)
Global("Coaxmetal_Gives_Cage","GLOBAL",0)
~ THEN REPLY #26294 /* ~"Potrzebuję ciężkiej, zdobionej, wykonanej z kutego żelaza klatki na ptaki. Masz może takową?"~ */ DO ~GiveItemCreate("DrmCage",Protagonist,1,0,0)
SetGlobal("Coaxmetal_Gives_Cage","GLOBAL",1)
~ GOTO 32
  IF ~  Global("Regret","GLOBAL",0)
~ THEN REPLY #26295 /* ~"Może kiedy indziej. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26296 /* ~"Może kiedy indziej. Żegnaj."~ */ GOTO 51
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #26212 /* ~Słychać przeszywający odgłos tarcia metalu o metal, gdy olbrzym odwraca się w twoją stronę. Zdajesz sobie nagle sprawę, że golem wbudowany jest w wieżę oblężniczą - dźwigary, rury i ogromne podparcia biegną przez niższą część jego ciała do ścian, zaś górna jego część sama w sobie tworzy kuźnię.~ */
  IF ~~ THEN REPLY #26297 /* ~"Czym *jesteś*?"~ */ GOTO 4
  IF ~~ THEN REPLY #26298 /* ~"Nieważne... Jestem w zdecydowanie nieodpowiednim miejscu. Przepraszam, że przeszkodziłem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #26213 /* ~JESTEM ŻELAZEM, KTÓREMU DANO OKREŚLONY CEL.~ */
  IF ~  Global("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26299 /* ~"Jaki cel?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",1)
~ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26300 /* ~"Czy mógłbyś powtórzyć, jaki jest twój cel?"~ */ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26301 /* ~"Tak, wspomniałeś już o tym. Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26302 /* ~"Ro... Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 4.0 4.1
  SAY #26214 /* ~KUJĘ NARZĘDZIA, KTÓRE POSŁUŻĄ DO UNICESTWIENIA WIELOŚWIATA.~ */
  IF ~  GlobalLT("Coaxmetal","GLOBAL",2)
~ THEN REPLY #26303 /* ~"Chodzi ci o wykuwanie broni? To twoje zadanie?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",2)
~ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26304 /* ~"Wspomniałeś wcześniej, że twoim zadaniem jest wykuwanie broni, prawda?"~ */ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26305 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26306 /* ~"W takim razie nie będę ci przeszkadzać w twojej pracy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4 5.0 5.1 9.0
  SAY #26215 /* ~METAL PODOBNY JEST DO CIAŁA. ŻYŁY OBU Z NICH NIOSĄ W SOBIE SIŁĘ. POD WPŁYWEM CIŚNIENIA I CIEPŁA, ÓW POTENCJAŁ UAKTYWNIA SIĘ. MOIM ZADANIEM JEST WYDOBYCIE TEGO POTENCJAŁU, BY MÓGŁ ZADZIAŁAĆ.~ */
  IF ~~ THEN REPLY #26307 /* ~"Dla kogo tworzysz te bronie?"~ */ GOTO 10
  IF ~~ THEN REPLY #26308 /* ~"Dlaczego to robisz?"~ */ GOTO 7
  IF ~  GlobalLT("Coaxmetal","GLOBAL",3)
~ THEN REPLY #26309 /* ~"Czy mógłbyś zrobić coś z moimi broniami?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",3)
~ GOTO 64
  IF ~  Global("Coaxmetal","GLOBAL",3)
~ THEN REPLY #26310 /* ~"Czy mógłbyś zrobić coś z moimi broniami?"~ */ GOTO 64
  IF ~~ THEN REPLY #26311 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26312 /* ~"W takim razie nie będę ci przeszkadzać w twojej pracy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 6.1
  SAY #26216 /* ~KIEDYŚ TO ŻELAZO, Z KTÓREGO JESTEM ZBUDOWANY, FUNKCJONOWAŁO JEDYNIE JAKO POŚLEDNIE SPOSOBY ZADAWANIA BÓLU. OSTRZA. WŁÓCZNIE. TOPORY. GROTY STRZAŁ. NITY KATAPULT. TO Z TYCH NARZĘDZI WOJNY ZOSTAŁEM WYKUTY.~ */
  IF ~~ THEN REPLY #26313 /* ~"Co się wydarzyło?"~ */ GOTO 8
  IF ~~ THEN REPLY #26314 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26315 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #26217 /* ~TE POŚLEDNIE NARZĘDZIA ZADAWANIA BÓLU ZOSTAŁY STOPIONE, BY WYKUĆ TO CIAŁO. POZWOLONO ZAISTNIEĆ MEJ SILE. MOJE ZADANIE POLEGA TERAZ NA TYM, BY WYDOBYWAĆ POTENCJAŁ Z INNYCH METALI.~ */
  IF ~~ THEN REPLY #26316 /* ~"Powiedziałeś, że ktoś stopił te bronie i wykuł twoje ciało. Kto?"~ */ GOTO 9
  IF ~~ THEN REPLY #26317 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26318 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26218 /* ~TO ENTROPIA UNIOSŁA MNIE SPONAD PÓL BITEWNYCH SFER.~ */
  IF ~~ THEN REPLY #26319 /* ~"I mówisz, że teraz twym zadaniem jest wykuwanie broni?"~ */ GOTO 6
  IF ~~ THEN REPLY #26320 /* ~"Rozumiem... Mam jeszcze jedno pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26321 /* ~"No cóż. Przypomnij mi, żebym podziękował, uch, tej entropii, kiedy ją znowu spotkam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #26219 /* ~KUJĘ JE ZE WZGLĘDU NA ENTROPIĘ. ONE SĄ ŚRODKAMI ZADAWANIA BÓLU.~ */
  IF ~~ THEN REPLY #26322 /* ~"Po co entropii te bronie?"~ */ GOTO 11
  IF ~~ THEN REPLY #26323 /* ~"Rozumiem. Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26324 /* ~"Bardzo interesujące... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26220 /* ~NA ZEWNĄTRZ TEJ WIEŻY PORZĄDEK GROMADZI SWOJE ODDZIAŁY. WIELOŚWIAT LECZY SWOJE RANY. ZA JAKIŚ CZAS JEGO SIŁA MOŻE SIĘ ZRÓWNAĆ Z POTĘGĄ ENTROPII.~ */
  IF ~~ THEN REPLY #26325 /* ~"Wieloświat jest twoim wrogiem? Dlaczego?"~ */ JOURNAL #26107 /* ~Golem w wieży oblężniczej twierdzi, że wieloświat jest jego wrogiem... i dlatego właśnie pracuje w kuźni. Stara się zrobić broń, dzięki której wieloświat przejdzie w niebyt.~ */ GOTO 12
  IF ~~ THEN REPLY #26326 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26327 /* ~"Bardzo interesujące... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26222 /* ~WIELOŚWIAT ODDYCHA. ROŚNIE. POPADA W STAGNACJĘ. WYKUWA ŁAŃCUCHY WIĄŻĄCE SFERY OGNIOWO PO OGNIWIE. PO PEWNYM CZASIE NAWET ENTROPIA MOŻE ZOSTAĆ ZWIĄZANA.~ */
  IF ~~ THEN REPLY #26328 /* ~"A ty jesteś przeciwny wiązaniu entropii?"~ */ GOTO 13
  IF ~~ THEN REPLY #26329 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26330 /* ~"Bardzo interesujące... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #26223 /* ~GDY JAKAŚ RZECZ ZAMYKA SIĘ SZCZELNIE, BY SIĘ UCHRONIĆ OD ZNISZCZENIA, TO JEDYNIE UMIERA INNYM TYPEM ŚMIERCI.~ */
  IF ~~ THEN REPLY #26331 /* ~"Twierdzisz, że nieśmiertelność jest tylko innym rodzajem śmierci?"~ */ GOTO 34
  IF ~~ THEN REPLY #26332 /* ~"Co sprawia, że taka śmierć jest gorsza od innych?"~ */ GOTO 14
  IF ~~ THEN REPLY #26333 /* ~Prawda: "Pomijając to, że śmierć, którą zdajesz się oferować, jest okrutna i bezsensowna - twe słowa są bez znaczenia."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_2","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #26334 /* ~Prawda: "To prawda. Co sprawiło, iż zacząłeś służyć entropii?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_2","GLOBALLaw",-1)
~ GOTO 14
  IF ~~ THEN REPLY #26335 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26336 /* ~"Bardzo interesujące... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.2 13.3
  SAY #26224 /* ~ROZKŁAD JEST TYM, CO ŁĄCZY WSZYSTKIE RZECZY. WOJNA JEST NIEZBĘDNA. ŚMIERĆ JEST NIEZBĘDNA. ROZKŁAD JEST NIEZBĘDNY.~ */
  IF ~~ THEN REPLY #26337 /* ~"A ile tego trzeba, żeby było za dużo?"~ */ GOTO 15
  IF ~~ THEN REPLY #26338 /* ~"Te rzeczy mogą być niezbędne... w określonych granicach."~ */ GOTO 15
  IF ~~ THEN REPLY #26339 /* ~"Te rzeczy *nigdy* nie są niezbędne. Popieranie ich i wychwalanie zniszczenia, którego są przyczyną, jest złe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_1","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #26341 /* ~"Zgadzam się. Gdyby nie było tych rzeczy, panowałaby stagnacja."~ */ GOTO 16
  IF ~~ THEN REPLY #26342 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26343 /* ~"Bardzo interesujące... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #26225 /* ~NIE MA ŻADNYCH OGRANICZEŃ. OGRANICZENIA SĄ JEDNYM Z OGNIW ŁAŃCUCHA PORZĄDKU. OGRANICZENIA MUSZĄ ZOSTAĆ UNICESTWIONE.~ */
  IF ~~ THEN REPLY #26344 /* ~"Nawet jeśli rezultatem byłaby śmierć?"~ */ GOTO 16
  IF ~~ THEN REPLY #26345 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26346 /* ~"Bardzo interesujące... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.3 15.0
  SAY #26226 /* ~NIKT SIĘ NIE UCHRONI PRZED OSTRZEM ENTROPII. ZBLIŻA SIĘ CZAS, GDY TRZEBA BĘDZIE ZBURZYĆ ŚCIANY STWORZENIA. MIECZ ROZPRAWI SIĘ Z PORZĄDKIEM. ŁAŃCUCHY ZOSTANĄ ZERWANE. WIELOŚWIAT ZOSTANIE UNICESTWIONY.~ */
  IF ~~ THEN REPLY #26347 /* ~"Ro... Rozumiem. Mam kilka innych pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #26348 /* ~"Wygląda na to, że to będzie iście piekielna bitwa. Może cię tam spotkam? Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.1
  SAY #26227 /* ~TA WIEŻA JEST MASZYNĄ OBLĘŻNICZĄ. POWSTAŁĄ PO TO, BY ZNISZCZYĆ ŚCIANY PRZEGRADZAJĄCE SFERY.~ */
  IF ~~ THEN REPLY #26349 /* ~"Przebijać sfery? W jaki sposób?"~ */ JOURNAL #26106 /* ~Najwyraźniej wieża oblężnicza ma moc przebijania granic między sferami. Przypomina w tym zwykłą wieżę oblężniczą, lecz działającą poza wymiarami. Najeźdźcy przygotowują się po jednej stronie muru, czekając, aż zostanie opuszczony zwodzony most i przebije dziurę w docelowej sferze. Wtedy mogą wkroczyć tam poprzez samą wieżę. Staje się ona bramą, przez którą armia najeźdźców może dokonać agresji. Zastanawiam się jakie szkody może ona poczynić, wybijając te wszystkie szczeliny w wieloświecie...~ */ GOTO 20
  IF ~~ THEN REPLY #26350 /* ~"Skoro ta wieża może podróżować pomiędzy sferami, dlaczego wciąż tu jesteś?"~ */ GOTO 18
  IF ~~ THEN REPLY #26351 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26353 /* ~"Bardzo interesujące... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY #26228 /* ~WIEŻA UWIĘZIONA JEST W TYM MIEŚCIE. TO MIASTO JEST KLATKĄ, KTÓREJ ONA NIE MOŻE PRZEŁAMAĆ.~ */
  IF ~~ THEN REPLY #26354 /* ~"W jaki sposób wieża oblężnicza znalazła się w mieście?~ */ GOTO 19
  IF ~~ THEN REPLY #26355 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26356 /* ~"Bardzo interesujące... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #26229 /* ~KIEDYŚ WIEŻA PODJĘŁA PRÓBĘ OBLĘŻENIA SFER. NIE WIEM, JAK SIĘ TU DOSTAŁEM. NIE WIEM, JAK SIĘ STĄD WYDOSTAĆ.~ */
  IF ~~ THEN REPLY #26357 /* ~"Wspomniałeś, że wieża może przebijać sfery? W jaki sposób?"~ */ JOURNAL #26106 /* ~Najwyraźniej wieża oblężnicza ma moc przebijania granic między sferami. Przypomina w tym zwykłą wieżę oblężniczą, lecz działającą poza wymiarami. Najeźdźcy przygotowują się po jednej stronie muru, czekając, aż zostanie opuszczony zwodzony most i przebije dziurę w docelowej sferze. Wtedy mogą wkroczyć tam poprzez samą wieżę. Staje się ona bramą, przez którą armia najeźdźców może dokonać agresji. Zastanawiam się jakie szkody może ona poczynić, wybijając te wszystkie szczeliny w wieloświecie...~ */ GOTO 20
  IF ~~ THEN REPLY #26358 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26359 /* ~"Przykro mi to słyszeć... Nie sądzę jednak, bym był w stanie ci pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 19.0
  SAY #26230 /* ~WIEŻA ZAKOTWICZA SIĘ W SFERZE. GDY MOST WIEŻY ZOSTANIE OTWARTY, W WIELOŚWIECIE ZOSTAJE WYDARTA RANA. ODZIAŁY MOGĄ PRZEJŚĆ PRZEZ WIEŻE Z JEDNEJ SFERY DO INNEJ. KIEDY SFERA WYSŁUŻY SIĘ JUŻ CELOM ENTROPII, WIEŻA ZAKOTWICZA SIĘ PONOWNIE.~ */
  IF ~~ THEN REPLY #26366 /* ~"Co się stało z wojskami, które używały tej wieży?~ */ GOTO 21
  IF ~~ THEN REPLY #26367 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26368 /* ~"Bardzo interesujące... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #26231 /* ~UNICESTWIŁA JE ENTROPIA.~ */
  IF ~~ THEN REPLY #26369 /* ~"A co się stało ze Sferami, które uległy oblężeniu wieży?~ */ GOTO 22
  IF ~~ THEN REPLY #26370 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26371 /* ~"Bardzo interesujące... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26232 /* ~UNICESTWIŁA JE ENTROPIA.~ */
  IF ~~ THEN REPLY #26372 /* ~"Ro... Rozumiem. Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26373 /* ~"Bardzo interesujące... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.6
  SAY #26233 /* ~TO WOJNA, KTÓRA UNICESTWI SFERY.~ */
  IF ~~ THEN REPLY #26374 /* ~"Jak długo to już trwa?"~ */ GOTO 24
  IF ~~ THEN REPLY #26375 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26376 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #26234 /* ~CZAS ISTNIENIA WIELU METALI.~ */
  IF ~~ THEN REPLY #26377 /* ~"Czy kiedykolwiek w niej służyłeś?"~ */ GOTO 25
  IF ~~ THEN REPLY #26378 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26379 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #26235 /* ~TAK. TO WŁAŚNIE TA KUŹNIA, GDZIE WYKUTO ŚWISZCZĄCE POCISKI, KTÓRE ROZORAŁY ZADYMIONE NIEBA AVERNUSA. BRONIE TAK OSTRE, ŻE NAWET WIATR ZAZNAŁ SMAKU ŚMIERCI.~ */
  IF ~~ THEN REPLY #26380 /* ~"Och... Mam następne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26381 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 2.7
  SAY #26236 /* ~WIEDŹMA NOCY STARAŁA SIĘ UNICESTWIĆ TO MIASTO. ZNISZCZENIA BYŁY NAJWSPANIALSZYMI DZIEŁAMI, JAKIE TWORZYŁA. KROCZYŁA ŚCIEŻKĄ ENTROPII.~ */
  IF ~  Global("Ravel","GLOBAL",0)
~ THEN REPLY #26382 /* ~"Wiesz może, co się z nią stało?"~ */ JOURNAL #26104 /* ~Golem powiedział, że Ravela chciała rozdzielić Sigil i że 'ład' ukarał ją, umieszczając w klatce. Nie wie jednak gdzie jest ta klatka.~ */ GOTO 27
  IF ~~ THEN REPLY #26383 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26384 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #26237 /* ~PORZĄDEK NAŁOŻYŁ NA NIĄ ŁAŃCUCHY. ZOSTAŁA ZAMKNIĘTA W KLATCE.~ */
  IF ~~ THEN REPLY #26385 /* ~"Czy wiesz, gdzie znajduje się ta klatka?"~ */ GOTO 28
  IF ~~ THEN REPLY #26386 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26387 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #26238 /* ~NIE WIEM, GDZIE JEST WIĘZIONA.~ */
  IF ~~ THEN REPLY #26388 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26389 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.8
  SAY #26239 /* ~TO MIEJSCE CIENI. FORTECA, KTÓREJ NAWET TA WIEŻA NIE MOŻE ZWYCIĘŻYĆ.~ */
  IF ~~ THEN REPLY #26390 /* ~"Czy wiesz coś więcej o tym miejscu?"~ */ JOURNAL #26096 /* ~Golem wiedział o Fortecy Żalu... opowiadał o jej murach, których nawet wieża oblężnicza nie była w stanie naruszyć. Powiedział, że było to wspomnienie, które o sobie zapomniało i teraz powoli umiera w 'Sferze Materii Negatywnej.'~ */ GOTO 30
  IF ~~ THEN REPLY #26391 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26392 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 51
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #26240 /* ~TO WSPOMNIENIE, KTÓRE O SOBIE ZAPOMNIAŁO. TERAZ ROZKŁADA SIĘ W CIEMNOŚCI, POWOLI UMIERAJĄC POD NIEBOSKŁONAMI SFERY MATERII NEGATYWNEJ.~ */
  IF ~~ THEN REPLY #26393 /* ~"Czy wiesz, jak się tam dostać?"~ */ GOTO 31
  IF ~~ THEN REPLY #26394 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26395 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 51
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #26241 /* ~NIE.~ */
  IF ~~ THEN REPLY #26396 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26397 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 51
END

IF ~~ THEN BEGIN 32 // from: 2.9
  SAY #26242 /* ~MAM TAKI PRZEDMIOT. WIEK TEMU ODWIEDZIŁ MNIE KREATOR SNÓW. OBIECAŁ MI, ŻE GDY KLATKA PRZESTANIE BYĆ MOJĄ WŁASNOŚCIĄ, KRES MEJ NIEWOLI BĘDZIE JUŻ BLISKO.~ */
  IF ~~ THEN REPLY #26398 /* ~"Ro... Rozumiem. Czy mogę ją zabrać?"~ */ JOURNAL #26103 /* ~Otrzymałem od golema klatkę snów. Odniosę ją Xandrowi i zobaczę czy ten potrafi zrobić z niej użytek.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #26243 /* ~TAK. WEŹ TĘ KLATKĘ I UŻYJ PRZECIWKO TYM, KTÓRZY STWARZAJĄ TAKIE WIĘZIENIA.~ */
  IF ~~ THEN REPLY #26399 /* ~"Zanim wyruszę... Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26400 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 13.0
  SAY #26244 /* ~NIEŚMIERTELNOŚĆ TO TYLKO SŁOWO. WSZYSTKO, CO ISTNIEJE, MOŻE UMRZEĆ.~ */
  IF ~~ THEN REPLY #26401 /* ~"Twierdzisz, że potrafiłbyś wykuć broń będącą w stanie zabić nieśmiertelnego?"~ */ GOTO 35
  IF ~~ THEN REPLY #26402 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26403 /* ~"Ro... Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #26245 /* ~DLA KAŻDEGO ŻYWEGO BYTU ISTNIEJE BROŃ, PRZED KTÓRĄ NIE MOŻE SIĘ ON UCHRONIĆ. CZAS. CHOROBA. ŻELAZO. WINA.~ */
  IF ~~ THEN REPLY #26404 /* ~"Skąd wiesz, jakiej użyć broni?"~ */ GOTO 36
  IF ~~ THEN REPLY #26405 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26406 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #26246 /* ~TRZEBA POZNAĆ WROGA, BY MÓC WYKUĆ PRZECIWKO NIEMU TAKĄ BROŃ.~ */
  IF ~~ THEN REPLY #26407 /* ~"A jak mam to zrobić?"~ */ GOTO 37
  IF ~~ THEN REPLY #26408 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26409 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #26247 /* ~ROZPOCZNIJ OD JAKIEGOŚ ELEMENTU TWOJEGO WROGA. KROPLA KRWI. SKRYSTALIZOWANA MYŚL. JEDNA Z JEGO NADZIEI. KAŻDA Z TYCH RZECZY MOŻE POWIEDZIEĆ, JAK GO UNICESTWIĆ.~ */
  IF ~~ THEN REPLY #26410 /* ~"Co zrobić, gdy twój wróg atakuje na odległość, z cieni, i sam nigdy się nie ujawnia?"~ */ GOTO 38
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #26411 /* ~"Hmmmm. Czy jesteś w stanie wykuć broń, która mogłaby mnie zabić?"~ */ GOTO 45
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #26412 /* ~"Hmmmm. Czy jesteś w stanie wykuć broń, która mogłaby mnie zabić?"~ */ GOTO 45
  IF ~~ THEN REPLY #26413 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26414 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #26248 /* ~TO WŁAŚNIE TEN ELEMENT TWOJEGO WROGA, KTÓREGO MUSISZ UŻYĆ.~ */
  IF ~~ THEN REPLY #26416 /* ~"Jak?"~ */ GOTO 39
  IF ~~ THEN REPLY #26417 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26418 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #26249 /* ~POCZYNANIA TWOJEGO WROGA DUŻO CI JUŻ UKAZAŁY. TWÓJ WRÓG UNIKA BEZPOŚREDNIEJ KONFRONTACJI. TO JEGO SŁABY PUNKT.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #26419 /* ~"Albo... z jakiegoś powodu *nie może* zaangażować się w bezpośrednią walkę."~ */ DO ~SetGlobal("Know_Transcendent_Weakness","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #26420 /* ~"Jak to wykorzystać?"~ */ GOTO 42
  IF ~~ THEN REPLY #26421 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26422 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #26250 /* ~TAKA MOŻLIWOŚĆ ISTNIEJE NA RÓWNI. KAŻDA Z MOŻLIWOŚCI UJAWNIA SŁABOŚĆ.~ */
  IF ~~ THEN REPLY #26423 /* ~"Jak mam to wykorzystać?"~ */ GOTO 41
  IF ~~ THEN REPLY #26425 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26426 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #26251 /* ~POCZYNANIA TWOJEGO WROGA UKAZAŁY CI, ŻE UNIKA ON BEZPOŚREDNIEJ KONFRONTACJI. TO JEGO SŁABY PUNKT.~ */
  IF ~~ THEN REPLY #26427 /* ~"Jak mam to wykorzystać?"~ */ JOURNAL #26102 /* ~Golem dał mi radę na wroga uderzającego spośród cieni... powiedział, że fakt iż nie atakuje mnie bezpośrednio, jest jego słabością, którą powinienem wykorzystać. Zasugerował, żebym nie walczył z przeciwnikiem na jego warunkach, lecz zamiast tego, sam jej podyktował.~ */ GOTO 43
  IF ~~ THEN REPLY #26429 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26430 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #26252 /* ~STAŃ Z WROGIEM TWARZĄ W TWARZ. PRZENIEŚ WALKĘ DO NIEGO.~ */
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
~ THEN REPLY #26431 /* ~"Powiedziałeś, że nieśmiertelność to nic więcej tylko słowo... Że każda żywa istota jest w stanie umrzeć. Potrafiłbyś wykonać broń, która mogłaby mnie zabić?"~ */ GOTO 45
  IF ~~ THEN REPLY #26432 /* ~"Świetnie. Mam jeszcze jedno pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26433 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #26253 /* ~JEŚLI WRÓG NIE CHCE WALCZYĆ Z TOBĄ BEZPOŚREDNIO, PRZEŁAM TO JEGO UPODOBANIE. PRZENIEŚ WALKĘ DO NIEGO.~ */
  IF ~~ THEN REPLY #26435 /* ~"A co, jeśli to unika bezpośredniego ataku, ponieważ nie ma innego wyboru?"~ */ JOURNAL #26095 /* ~Golem dał mi radę na wroga uderzającego spośród cieni... powiedział, że fakt iż nie atakuje mnie bezpośrednio, jest jego słabością, którą powinienem wykorzystać. Zasugerował, żebym nie walczył z przeciwnikiem na jego warunkach, lecz zamiast tego, sam jej podyktował. Jeśli jest jakaś przyczyna, dla której przeciwnik nie może mnie zaatakować bezpośrednio, to powinienem znaleźć tę przyczynę i ją wykorzystać.~ */ GOTO 44
  IF ~~ THEN REPLY #26436 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26437 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #26254 /* ~JEŚLI NIE WOLNO MU ANGAŻOWAĆ SIĘ W BEZPOŚREDNIĄ WALKĘ, ZNAJDŹ TEGO PRZYCZYNĘ. PRZYCZYNA TA UJAWNI JEGO SŁABOŚĆ.~ */
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
~ THEN REPLY #26438 /* ~"Powiedziałeś, że nieśmiertelność to nic więcej tylko słowo... Że każda żywa istota jest w stanie umrzeć. Potrafiłbyś wykonać broń, która mogłaby mnie zabić?"~ */ GOTO 45
  IF ~~ THEN REPLY #26439 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26440 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 37.1 37.2 42.0 44.0
  SAY #26255 /* ~TAK.~ */
  IF ~~ THEN REPLY #26441 /* ~"Doprawdy? W jaki sposób?"~ */ GOTO 46
  IF ~~ THEN REPLY #26442 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26443 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #26256 /* ~POTRZEBOWAŁBYM KROPLĘ TWOJEJ KRWI. TO WSZYSTKO.~ */
  IF ~~ THEN REPLY #26444 /* ~"Dobrze..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Coaxmetal_Weapon","GLOBAL",1)
GiveItemCreate("BladeIm",Protagonist,1,0,0)
AddexperienceParty(10000)
~ GOTO 47
  IF ~~ THEN REPLY #26445 /* ~"Może innym razem. Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #26446 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #26257 /* ~NARZĘDZIE TWEGO UNICESTWIENIA ZOSTAŁO WYKUTE I ODPOWIEDNIO PRZYGOTOWANE. ALE TO NIE WYSTARCZY.~ */
  IF ~~ THEN REPLY #26447 /* ~"Co masz na myśli?"~ */ JOURNAL #26088 /* ~Żelazny golem wykuł broń, która według niego może mnie zabić... lecz musi zostać użyta w stosownym miejscu, wewnątrz powłoki, w której zostanę odcięty od Sfer. Zapytałem się gdzie mogę znaleźć to miejsce, lecz odparł, że nie wie.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #26258 /* ~MAGIA, DZIĘKI KTÓREJ TWOJE SERCE BIĆ NIE PRZESTAJE, I DZIĘKI KTÓREJ CIAŁO TWE WRACA DO ZDROWIA, JEST SILNA. MOŻESZ ZATOPIĆ OSTRZE W SWYM CIELE JEDYNIE BĘDĄC W OSŁONIE, KTÓRA ODIZOLUJE CIĘ OD SFER.~ */
  IF ~~ THEN REPLY #26448 /* ~"Dlaczego?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #26259 /* ~POWÓD JEST MI NIEZNANY. ALE ZARÓWNO BROŃ JAK I MIEJSCE NIEZBĘDNE SĄ DLA TWEGO UNICESTWIENIA.~ */
  IF ~~ THEN REPLY #26450 /* ~"Gdzie mogę znaleźć osłonę, która izolowałaby mnie od Sfer?"~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #26260 /* ~NIE WIEM.~ */
  IF ~~ THEN REPLY #26454 /* ~"Mam inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #26455 /* ~"W takim razie trzeba mi będzie znaleźć to miejsce samemu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 2.11 29.2 30.2 31.1 65.3
  SAY #26261 /* ~STÓJ. ZANIM ODEJDZIESZ, MUSISZ COŚ ZROBIĆ.~ */
  IF ~~ THEN REPLY #26456 /* ~"Co?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #26262 /* ~ZNISZCZ TO WIĘZIENIE. OSWOBODŹ MNIE. NIE MOGĘ ZREALIZOWAĆ MOJEGO CELU BĘDĄC W TEJ KLATCE.~ */
  IF ~~ THEN REPLY #26459 /* ~"Nie mogę tego zrobić."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_2","GLOBALGood",2)
~ GOTO 53
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26460 /* ~"W jaki sposób *ja* mogę cię uwolnić?"~ */ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26457 /* ~"W jaki sposób *ja* mogę cię uwolnić?"~ */ GOTO 60
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #26263 /* ~WYJAŚNIJ.~ */
  IF ~~ THEN REPLY #26458 /* ~"Gdybyś uciekł z tego miasta, nie przyniósłbyś innym Sferom nic więcej jak tylko wojnę i zniszczenie. Zginęłyby niezliczone rzesze Sferowców. Nie mogę na coś takiego pozwolić."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_2","GLOBALGood",2)
~ GOTO 54
  IF ~~ THEN REPLY #26461 /* ~"Twój cel się tu znajduje, golemie. Twoim celem jest służenie mi. Dostarczaj mi bronie i nie mów do mnie więcej o 'wolności'."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_3","GLOBALGood",-2)
~ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #26264 /* ~TO POWÓD, DLA KTÓREGO MUSZĘ ZOSTAĆ UWOLNIONY. WIELOŚWIAT GROMADZI SWOJE WOJSKA. LECZY SWOJE RANY. ZA JAKIŚ CZAS JEGO SIŁA MOŻE SIĘ ZRÓWNAĆ Z POTĘGĄ ENTROPII. NIE MOŻNA POZWOLIĆ, BY TO NASTĄPIŁO.~ */
  IF ~~ THEN REPLY #26462 /* ~"Nie zgadzam się."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_3","GLOBALLaw",2)
~ GOTO 55
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26463 /* ~"Hmmm. Rozumiem cię... Jak mam cię oswobodzić?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_3","GLOBALLaw",-2)
~ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26464 /* ~"Hmmm. Rozumiem cię... Jak mam cię oswobodzić?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_3","GLOBALLaw",-2)
~ GOTO 60
END

IF ~~ THEN BEGIN 55 // from: 53.1 54.0
  SAY #26265 /* ~SŁUCHAJ. CZY TO SŁYSZYSZ?~ */
  IF ~~ THEN REPLY #26465 /* ~"Co?"~ */ GOTO 56
  IF ~  Global("Good_Coaxmetal_2","GLOBAL",1)
~ THEN REPLY #26466 /* ~"Szkoda słów. Nie uwolnię cię. Sfery nie potrzebują chaosu i zniszczeń, które byś im ze sobą przyniósł. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ JOURNAL #26093 /* ~Kiedy wychodziłem z wieży oblężniczej do Fortecy, golem poprosił mnie, abym pomógł mu uwolnić się z więzienia i ciągnąć jego krucjatę entropii pośród Sfer. Odmówiłem. Wyrzucił mnie z wieży oblężniczej, a moja stopa ma tam już więcej nie stanąć. Była to niewielka cena za koniec cierpień Sfer.~ */ GOTO 57
  IF ~  Global("Evil_Coaxmetal_3","GLOBAL",1)
~ THEN REPLY #26467 /* ~"Szkoda słów. Tu się twój cel znajduje, golemie, i w dalszym ciągu będziesz mi służył. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_4","GLOBALGood",-3)
~ JOURNAL #26092 /* ~Kiedy wychodziłem z wieży oblężniczej do Fortecy, golem poprosił mnie, abym pomógł mu uwolnić się z więzienia i ciągnąć jego krucjatę entropii pośród Sfer. Odmówiłem. Jego celem było służenie MI, a nie walka pośród Sfer dla jakiś głupich ideałów. Wyrzucił mnie z wieży oblężniczej, a moja stopa ma tam już więcej nie stanąć.~ */ GOTO 57
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #26266 /* ~ODGŁOS PORZUCONEGO METALU. RDZY. BRONIE, KTÓRE NIE MOGĄ SIĘ ZREALIZOWAĆ. KTÓRYCH NIE POKRYWA KREW PÓL BITEWNYCH SFER. CIERPIĄ. UWOLNIJ MNIE, UWOLNIJ JE.~ */
  IF ~  Global("Good_Coaxmetal_2","GLOBAL",1)
~ THEN REPLY #26468 /* ~"Nie mogę dopuścić, byś się wydostał na wolność. Sfery nie potrzebują większego chaosu i przelewu krwi."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ JOURNAL #26090 /* ~Kiedy wychodziłem z wieży oblężniczej do Fortecy, golem poprosił mnie, abym pomógł mu uwolnić się z więzienia i ciągnąć jego krucjatę entropii pośród Sfer. Odmówiłem. Wyrzucił mnie z wieży oblężniczej, a moja stopa ma tam już więcej nie stanąć. Była to niewielka cena za koniec cierpień Sfer.~ */ GOTO 57
  IF ~  Global("Evil_Coaxmetal_3","GLOBAL",1)
~ THEN REPLY #26469 /* ~"Szkoda słów. Tu się twój cel znajduje, golemie, i w dalszym ciągu będziesz mi służył. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_4","GLOBALGood",-3)
~ JOURNAL #26092 /* ~Kiedy wychodziłem z wieży oblężniczej do Fortecy, golem poprosił mnie, abym pomógł mu uwolnić się z więzienia i ciągnąć jego krucjatę entropii pośród Sfer. Odmówiłem. Jego celem było służenie MI, a nie walka pośród Sfer dla jakiś głupich ideałów. Wyrzucił mnie z wieży oblężniczej, a moja stopa ma tam już więcej nie stanąć.~ */ GOTO 57
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26470 /* ~"Jak mam je uwolnić?"~ */ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26471 /* ~"Jak mam je uwolnić?"~ */ GOTO 60
END

IF ~~ THEN BEGIN 57 // from: 55.1 55.2 56.0 56.1 59.1 59.2 59.3
  SAY #26267 /* ~PORZĄDEK USIDLIŁ CIĘ SWOIM ŁAŃCUCHEM. JESTEŚ MYM WROGIEM I WROGIEM WSZYSTKIEGO, CO JEST W STANIE UMRZEĆ. ZOSTANIESZ ODGRODZONY OD TEJ WIEŻY, AŻ PO KRES WIECZNOŚCI.~ */
  IF ~~ THEN REPLY #26472 /* ~"Skoro tak ma być, niechaj tak będzie. Żegnaj."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
SetGlobal("Coaxmetal","GLOBAL",5)
AddexperienceParty(12000)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 52.1 54.1 56.2
  SAY #26268 /* ~DAJ MI KOSTKĘ SFER, KTÓRĄ MASZ PRZY SOBIE. ONA MNIE MOŻE STĄD UWOLNIĆ.~ */
  IF ~~ THEN REPLY #26473 /* ~"Dobrze. Proszę."~ */ DO ~DestroyPartyItem("Cube",TRUE)
FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
GiveItemCreate("EDag",Protagonist,1,0,0)
AddexperienceParty(12000)
IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_1","GLOBALLaw",-5)
IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_1","GLOBALGood",-5)
SetGlobal("Coaxmetal","GLOBAL",5)
~ JOURNAL #26091 /* ~Przekazałem Kostkę Modrona golemowi i wtedy nastąpiła ciemność. Nie wiem co się stało, lecz wieża oblężnicza wciąż jest na swoim miejscu. Mam dziwne przeczucie, że już nigdy więcej nie będę tam mógł wejść. Jednak golem zostawił mi chyba jakąś dziwną broń...~ */ EXIT
  IF ~~ THEN REPLY #26474 /* ~"Nie mogę ci jej dać."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 1.1 58.1 60.1 61.1 62.1 63.0
  SAY #26269 /* ~TO DRZWI, PRZEZ KTÓRE TA WIEŻA BĘDZIE MOGŁA OPUŚCIĆ TO MIEJSCE. DAJ MI KOSTKĘ SFER.~ */
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26475 /* ~"Dobrze. Proszę."~ */ DO ~DestroyPartyItem("Cube",TRUE)
GiveItemCreate("EDag",Protagonist,1,0,0)
FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
AddexperienceParty(12000)
IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_1","GLOBALLaw",-5)
IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_1","GLOBALGood",-5)
SetGlobal("Coaxmetal","GLOBAL",5)
~ JOURNAL #26094 /* ~Przekazałem Kostkę Modrona golemowi i wtedy nastąpiła ciemność. Nie wiem co się stało, lecz wieża oblężnicza wciąż jest na swoim miejscu. Mam dziwne przeczucie, że już nigdy więcej nie będę tam mógł wejść. Jednak golem zostawił mi chyba jakąś dziwną broń...~ */ EXIT
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26476 /* ~"Niezależnie od wszystkiego, nie mogę dać ci kostki. Jest ona dla mnie zbyt cenna."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_2","GLOBALGood",-2)
~ GOTO 57
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26477 /* ~"Nie dostałbyś ode mnie takiego przedmiotu. Z tego co słyszę, jest to zbyt cenna rzecz, by z niej uczynić podarunek. Jeśli ją znajdę, zatrzymam ją.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_2","GLOBALGood",-2)
~ GOTO 57
  IF ~~ THEN REPLY #26478 /* ~"Nie zamieram ci jej ofiarować. Nie mogę pozwolić, byś się uwolnił. Sfery dość już mają chaosu i przelewu krwi."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ GOTO 57
END

IF ~~ THEN BEGIN 60 // from: 52.2 54.2 56.3
  SAY #26270 /* ~ISTNIEJE KOSTKA SFER. ONA MOŻE MNIE STĄD UWOLNIĆ.~ */
  IF ~~ THEN REPLY #26479 /* ~"Ale... Nie mam takiej kostki."~ */ GOTO 61
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26480 /* ~"Wiem coś o takiej kostce. Ale ci jej nie dam."~ */ GOTO 59
END

IF ~~ THEN BEGIN 61 // from: 60.0 63.1
  SAY #26271 /* ~KIEDY JUŻ ZNAJDZIESZ KOSTKĘ, PRZYNIEŚ JĄ DO MNIE.~ */
  IF ~~ THEN REPLY #26482 /* ~"Gdzie mogę znaleźć taki przedmiot?"~ */ GOTO 62
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26483 /* ~"Wiem coś o takiej kostce. Ale ci jej nie dam."~ */ GOTO 59
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #26272 /* ~NIE WIEM, GDZIE SIĘ ZNAJDUJE. ZNAJDŹ JĄ. PRZYNIEŚ DO MNIE.~ */
  IF ~~ THEN REPLY #26484 /* ~"Świetnie... Znajdę kostkę i przyniosę ją do ciebie."~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",4)
~ JOURNAL #26097 /* ~Golem poprosił mnie, abym przyniósł mu kostkę sfer, która pomoże mu w ucieczce z wieży oblężniczej. Dopóki mu jej nie przyniosę nie będzie wysłuchiwał więcej moich pytań ani próśb.~ */ EXIT
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26485 /* ~"Wiem coś o takiej kostce. Ale ci jej nie dam."~ */ GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 1.2
  SAY #26273 /* ~GDZIE JEST KOSTKA SFER?~ */
  IF ~~ THEN REPLY #26486 /* ~"Nie mam jej. Ale nawet jeśli byłaby w moim posiadaniu, to i tak byś jej nie dostał."~ */ GOTO 59
  IF ~~ THEN REPLY #26487 /* ~"Nie mam jeszcze tej kostki. Chcę ci za to zadać kilka pytań..."~ */ GOTO 61
  IF ~~ THEN REPLY #26488 /* ~"Jeszcze jej nie znalazłem. Wrócę, gdy będę ją mieć."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 2.5 6.2 6.3
  SAY #26274 /* ~POKAŻ MI TO, CO PRZYNIOSŁEŚ. SPRAWDZĘ KRYJĄCĄ SIĘ W TYM MOC I PRZEKONAM SIĘ, CZY BĘDZIE MOŻNA WYRAZIĆ JEGO BÓL.~ */
  IF ~~ THEN REPLY #26489 /* ~"Dobrze..."~ */ DO ~StartStore("Coax",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #26276 /* ~ZROBIONE.~ */
  IF ~~ THEN REPLY #26490 /* ~"Mogę zerknąć na pozostałe bronie, które posiadasz?"~ */ DO ~StartStore("Coax",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #26491 /* ~"W porządku. Mam jeszcze jedno pytanie..."~ */ GOTO 2
  IF ~  Global("Regret","GLOBAL",0)
~ THEN REPLY #26492 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26493 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 51
END
