// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLSRGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLSRGR~

IF ~  Global("Sharegrave","GLOBAL",0)
!Global("Pox","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #18194 /* ~Ten wysoki i szczupły mężczyzna o bladej skórze i ponurym wyglądzie roztacza wokół siebie atmosferę władzy, choć jednocześnie wydaje się być trochę niezdarny. Brakuje mu dużego kawałka lewego ucha. W tym miejscu znajduje się tylko poszarpana, zabliźniona rana, jakby ktoś to ucho odgryzł, a nie odciął. Patrząc na jego zwężone oczy zdajesz sobie sprawę, że ich posiadacz musi być bardzo sprytny... i niebezpieczny.~ */
  IF ~~ THEN REPLY #18195 /* ~"Witaj..."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #18196 /* ~Zostaw mężczyznę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #18197 /* ~Mężczyzna spogląda na ciebie złowrogo i wyrzuca z siebie odpowiedź: "Nie znam cię, trepie. Czego chcesz? Odpowiadaj szybko, zanim zdążę wezwać kilku ludzi, żeby się tobą zajęli."~ */
  IF ~~ THEN REPLY #18198 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #18199 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18200 /* ~"Nic. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18201 /* ~"Nic. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2 3.4 4.3 5.2 5.3 7.3 8.2 9.2 10.6 11.5 12.1 14.4 17.1 19.1 20.2 21.1 22.4 25.3 50.1 57.1
  SAY #18202 /* ~"W takim razie szpicuj się, trepie. Jak jeszcze raz zachce ci się tu przystawać, to lepiej tego nie rób, zrozumiałeś? Inaczej wezwę kilku moich ludzi, żeby cię załatwili."~ */
  IF ~~ THEN REPLY #18203 /* ~Odejdź.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #18204 /* ~Mężczyzna spogląda na ciebie z pogardą i niedowierzaniem. "To kim ja jestem, nie ma znaczenia. Powinieneś wiedzieć, zanim się zdecydowałeś przywlec tu swoje posznytowane, przypominające zwłoki ciało."~ */
  IF ~~ THEN REPLY #18205 /* ~"A co ma znaczenie?"~ */ GOTO 4
  IF ~~ THEN REPLY #18206 /* ~"Uspokój się. Nie miałem na myśli nic złego."~ */ GOTO 5
  IF ~~ THEN REPLY #18207 /* ~"Jeśli nie chcesz, żebym ci coś zrobił, to lepiej trochę spuść z tonu."~ */ GOTO 6
  IF ~~ THEN REPLY #18208 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18209 /* ~"W takim razie zapomnij o tym. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18210 /* ~"W takim razie przepraszam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #18211 /* ~"To że nie cierpię gości i nienawidzę obcych. Ty zaliczasz się do obu tych kategorii." Mężczyzna uśmiecha się szyderczo i puka się palcem w skroń. "Reszty sam się domyśl."~ */
  IF ~~ THEN REPLY #18212 /* ~"Uspokój się. Nie miałem na myśli nic złego."~ */ GOTO 5
  IF ~~ THEN REPLY #18213 /* ~"Jeśli nie chcesz, żebym ci coś zrobił, to lepiej trochę spuść z tonu."~ */ GOTO 6
  IF ~~ THEN REPLY #18214 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18215 /* ~"W takim razie, żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18216 /* ~"W takim razie przepraszam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #18217 /* ~"Och, *nie gadaj*! I niby przez to jesteś lepszy, co? Powtórzę ci jeszcze raz, zanim twój tyłek znajdzie się na ziemi - najpewniej w kilku częściach - czego *chcesz?*"~ */
  IF ~~ THEN REPLY #18218 /* ~"Jeśli nie chcesz, żebym ci coś zrobił, to lepiej trochę spuść z tonu."~ */ GOTO 6
  IF ~~ THEN REPLY #18219 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18220 /* ~"Nic. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18221 /* ~"Nic. Przepraszam za najście... Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.0
  SAY #18222 /* ~"No cóż, tego by było na tyle." Mężczyzna spogląda ci prosto w oczy. Na jego twarzy nie ma ani cienia uśmiechu, kiedy woła: "Krwawniki! Zabić tego człowieka!"~ */
  IF ~~ THEN REPLY #18223 /* ~Odeprzyj atak.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18224 /* ~Uciekaj.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 3.3 4.2 5.1 50.0
  SAY #18225 /* ~Mężczyzna milczy przez chwilę, a potem kiwa głową. "Tak? Na przykład?"~ */
  IF ~~ THEN REPLY #18226 /* ~"Opowiedz mi o Sigil."~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18227 /* ~"Szukam człowieka imieniem Farod."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18228 /* ~"Szukam dziennika, który gdzieś zgubiłem."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18229 /* ~"Mniejsza z tym. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18230 /* ~"Mniejsza z tym. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #18231 /* ~Mężczyzna unosi w górę ręce, jakby stanęła przed nim wizja czegoś wspaniałego. "Miasto drzwi, gdzie ulice są wybrukowane złotem i..." Potem nagle powraca do swego zwykłego tonu. "...truposzami. Nie wyglądasz aż na takiego świra, żeby przychodzić tu i pytać mnie o Sigil... Więc o co naprawdę ci chodzi? I bez żadnych gierek, trepie - zaczynam tracić cierpliwość."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18232 /* ~"Prawdę mówiąc, szukam człowieka imieniem Farod."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18233 /* ~"Prawdę mówiąc, szukam dziennika, który gdzieś zgubiłem."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18234 /* ~"To tyle. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18235 /* ~"Już nic. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.2 8.1
  SAY #18236 /* ~"Nic o tym nie wiem." Mężczyzna marszczy czoło, a potem spogląda na ciebie ponurym wzrokiem. "A powinienem?"~ */
  IF ~~ THEN REPLY #18237 /* ~"Nie. Opowiedz mi o Sigil."~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18238 /* ~"Nie. Szukam też człowieka imieniem Farod."~ */ GOTO 10
  IF ~~ THEN REPLY #18239 /* ~"Nie. Żegnaj."~ */ GOTO 2
  IF ~~ THEN REPLY #18240 /* ~"Nie. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 8.0 9.1 57.0
  SAY #18241 /* ~Nagle napięcie w pomieszczeniu się zwiększa. "Dziwne zadajesz pytania. Niby dlaczego tak się interesujesz starym krwawnikiem Farodem?"~ */
  IF ~~ THEN REPLY #18242 /* ~"Coś mi ukradł i chcę to odzyskać."~ */ GOTO 17
  IF ~~ THEN REPLY #18243 /* ~"Ma coś, co należy do mnie, a ja chcę to odzyskać."~ */ GOTO 17
  IF ~~ THEN REPLY #18244 /* ~"Ma pewne informacje, które są mi potrzebne."~ */ GOTO 12
  IF ~~ THEN REPLY #18245 /* ~"Chcę się z nim po prostu spotkać."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18246 /* ~"To mój przyjaciel."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18247 /* ~"To mój przyjaciel."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18248 /* ~"Zapomnij, że o to pytałem. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18249 /* ~"Nic takiego. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.3
  SAY #18250 /* ~"Phy! Z tą kupą krowiego łajna!" Potem jego oczy zwężają się. "Dlaczego?"~ */
  IF ~~ THEN REPLY #18251 /* ~"Coś mi ukradł i chcę to odzyskać."~ */ GOTO 17
  IF ~~ THEN REPLY #18252 /* ~"Ma coś, co należy do mnie, a ja chcę to odzyskać."~ */ GOTO 17
  IF ~~ THEN REPLY #18253 /* ~"Ma pewne informacje, które są mi potrzebne."~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18254 /* ~"To mój przyjaciel."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18255 /* ~"To mój przyjaciel."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18256 /* ~"Zapomnij, że o to pytałem. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18257 /* ~"Nic takiego. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.2 14.2
  SAY #18258 /* ~"Naprawdę? Na przykład?"~ */
  IF ~~ THEN REPLY #18259 /* ~"Na przykład kim jestem."~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18260 /* ~"Nic takiego. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18261 /* ~"Nic takiego. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.4 11.3 14.3
  SAY #18269 /* ~"Och?" Na twarzy mężczyzny pojawia się złowrogi uśmieszek. "W takim razie możesz mu przekazać ode mnie tę wiadomość..." Nagle zaczyna krzyczeć: "Krwawniki! Zabić tego człowieka!"~ */
  IF ~~ THEN REPLY #18270 /* ~Odeprzyj ich atak.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18271 /* ~Uciekaj.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.5 11.4
  SAY #18272 /* ~Kiedy już masz przemówić, nagle z tyłu czaszki zaczynasz odczuwać dziwne doznanie i wstrzymujesz swój język. W oczach Współgrobca jest coś, co mówi ci, że on i Farod nie są najlepszymi przyjaciółmi... zdecydowanie nie.~ */
  IF ~~ THEN REPLY #18273 /* ~"Coś mi ukradł i chcę to odzyskać."~ */ GOTO 17
  IF ~~ THEN REPLY #18274 /* ~"Ma coś, co należy do mnie, a ja chcę to odzyskać."~ */ GOTO 17
  IF ~~ THEN REPLY #18275 /* ~"Ma pewne informacje, które są mi potrzebne."~ */ GOTO 12
  IF ~~ THEN REPLY #18276 /* ~"To mój przyjaciel."~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18277 /* ~"Zapomnij, że o to pytałem. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18278 /* ~"Nic takiego. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0
  SAY #18279 /* ~Po chwili niezręcznej ciszy, mężczyzna mówi: "Jesteś świrnięty, trepie. Lepiej się z tobą nie zadawać. Spadaj stąd, i to szybko."~ */
  IF ~~ THEN REPLY #18280 /* ~"Ale mam do ciebie parę innych pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #18281 /* ~Odejdź.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 23.0 26.1 32.0 34.0 46.0 48.0 54.1
  SAY #18282 /* ~"Naprawdę? Hmm. Interesujące." Nagle mężczyzna zaczyna wołać: "Krwawniki! Zabić tego człowieka!"~ */
  IF ~~ THEN REPLY #18283 /* ~Odeprzyj ich atak.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18284 /* ~Uciekaj.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0 10.1 11.0 11.1 14.0 14.1
  SAY #18285 /* ~Mężczyzna na chwilę milknie, a potem na jego ustach pojawia się uśmiech. "On nas okrada, prawda, i za życia i po śmierci?" Typ zaczyna chichotać.~ */
  IF ~~ THEN REPLY #18286 /* ~"Co masz na myśli?"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18287 /* ~"Może tak. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18288 /* ~"Może. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #18289 /* ~"Naszym głównym źródłem... utrzymania... są martwi. Kapujesz?"~ */
  IF ~~ THEN REPLY #18290 /* ~"Nie bardzo."~ */ GOTO 19
  IF ~~ THEN REPLY #18291 /* ~"Jesteś Zbieraczem."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #18292 /* ~"Moje krwawniki i ja zarabiamy trochę brzdęku, zbierając w Ulu zwłoki i sprzedając je Grabarzom. Teraz rozumiesz?"~ */
  IF ~~ THEN REPLY #18293 /* ~"Jesteś Zbieraczem."~ */ GOTO 20
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18294 /* ~"Tak. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18295 /* ~"Dobrze. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1 19.0
  SAY #18296 /* ~"Masz rację." Mężczyzna spogląda na ciebie, jakby nad czymś myślał. "Truposzy jest zawsze mniej więcej tyle samo. Moi ludzie i ja możemy ich zebrać. Jeśli ktoś jeszcze zbiera truposzy, to do naszych kieszeni wpada mniej brzdęku."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #18297 /* ~"Czy Farod także zbiera ciała?"~ */ GOTO 21
  IF ~~ THEN REPLY #18298 /* ~"Więc..."~ */ JOURNAL #17089 /* ~Człowiek na Placu Łachmaniarzy powiedział mi, że Farod w jakiś sposób odkrył niewyczerpane źródło ciał. Jest tym zdenerwowany, ponieważ też się zajmuje zbieraniem trupów i chce wiedzieć jak Farod to robi.~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18299 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18300 /* ~"Rozumiem. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #18301 /* ~"Tak."~ */
  IF ~~ THEN REPLY #18302 /* ~"Więc..."~ */ JOURNAL #17089 /* ~Człowiek na Placu Łachmaniarzy powiedział mi, że Farod w jakiś sposób odkrył niewyczerpane źródło ciał. Jest tym zdenerwowany, ponieważ też się zajmuje zbieraniem trupów i chce wiedzieć jak Farod to robi.~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18303 /* ~"To ciekawe. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18304 /* ~"Rozumiem. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1 21.0
  SAY #18305 /* ~"Problem w tym, że on znalazł prawdziwą żyłę truposzy. A nie słyszałem, żeby w Sigil doszło ostatnio do jakichkolwiek masakr." Mężczyzna marszczy czoło i zaczyna pocierać podbródek. "Więc bardzo mnie ciekawi, skąd pochodzą te wszystkie ciała."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18306 /* ~"Prawdę mówiąc, już to wiem."~ */ GOTO 52
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18307 /* ~"Jeśli chcesz, to mogę się tego dla ciebie dowiedzieć."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sharegrave_1","GLOBALGood",1)
~ GOTO 24
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18308 /* ~"Mógłbym się tego dla ciebie dowiedzieć... za odpowiednią cenę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sharegrave_1","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #18309 /* ~"To dziwne. Ale mniejsza z tym. Mam do ciebie parę innych pytań..."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18310 /* ~"Może kiedyś się tego dowiesz. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18311 /* ~"No to powodzenia w szukaniu odpowiedzi. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.3
  SAY #18312 /* ~Mężczyzna uśmiecha się szyderczo, a potem nagle wpada w gniew. "Mam cię już dość. Wynoś się stąd zanim zawołam moich ludzi, żeby ci pokazali drogę."~ */
  IF ~~ THEN REPLY #18313 /* ~"Ale mam do ciebie jeszcze parę pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #18314 /* ~Odejdź.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1
  SAY #18315 /* ~"Och, tak? A niby jak miałbyś to zrobić?"~ */
  IF ~~ THEN REPLY #18316 /* ~"Muszę go tylko znaleźć. Potem zajmę się resztą."~ */ JOURNAL #18449 /* ~Zgodziłem się pomóc mężczyźnie z Placu Szmaciarzy w dowiedzeniu się czegoś na temat tego, skąd Farod ciągle bierze zwłoki. Zaproponował, że zapłaci mi za tę informację. Powiedział mi także, że jeśli chcę znaleźć Faroda, to będę musiał przejść po platformach nad placem. Mam iść na północ i na zachód, aż dojdę do bramy. Zaprowadzi mnie ona do 'nory' Faroda.~ */ GOTO 49
END

IF ~~ THEN BEGIN 25 // from: 22.2
  SAY #18317 /* ~Mężczyzna spogląda na ciebie przez chwilę, pocierając pozostałości po swojej lewej małżowinie. "W porządku... Wymień tylko cenę, a zawrzemy układ."~ */
  IF ~~ THEN REPLY #18318 /* ~"Trzysta miedziaków."~ */ GOTO 26
  IF ~~ THEN REPLY #18319 /* ~"Dwieście miedziaków."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",5)
~ JOURNAL #18450 /* ~Na Placu Szmaciarzy spotkałem mężczyznę, który zapłaci mi, jeśli dowiem się skąd Farod bierze tyle martwych ciał.~ */ GOTO 27
  IF ~~ THEN REPLY #18320 /* ~"Sto miedziaków."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ JOURNAL #18450 /* ~Na Placu Szmaciarzy spotkałem mężczyznę, który zapłaci mi, jeśli dowiem się skąd Farod bierze tyle martwych ciał.~ */ GOTO 28
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18321 /* ~"Mniejsza z tym. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18322 /* ~"Zrobimy to innym razem. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #18323 /* ~Mężczyzna uśmiecha się szyderczo. "Aż tak bardzo mi na tym nie zależy. Wynoś się stąd, zanim zawołam moich ludzi, żeby ci pokazali drogę."~ */
  IF ~~ THEN REPLY #18324 /* ~"Czekaj! W takim razie sto miedziaków."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ JOURNAL #18450 /* ~Na Placu Szmaciarzy spotkałem mężczyznę, który zapłaci mi, jeśli dowiem się skąd Farod bierze tyle martwych ciał.~ */ GOTO 27
  IF ~~ THEN REPLY #18325 /* ~"Ale mam do ciebie jeszcze parę pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #18326 /* ~Odejdź.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #18327 /* ~Mężczyzna myśli przez chwilę, ale w końcu przytakuje. "Zgoda. Wróć tu z cieniem tej sprawy, a dostaniesz brzdęk. Chcesz wiedzieć, gdzie szukać starego Faroda?"~ */
  IF ~~ THEN REPLY #18328 /* ~"Tak."~ */ GOTO 29
  IF ~~ THEN REPLY #18329 /* ~"Nie."~ */ GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY #18330 /* ~"Stoi. Chcesz wiedzieć, gdzie szukać starego Faroda?"~ */
  IF ~~ THEN REPLY #18331 /* ~"Tak."~ */ JOURNAL #18451 /* ~Człowiek na placu Szmaciarzy powiedział mi, że jeśli chcę znaleźć Faroda, to będę musiał przejść po platformach nad placem. Mam iść na północ i na zachód, aż dojdę do bramy. Zaprowadzi mnie ona do 'nory' Faroda.~ */ GOTO 29
  IF ~~ THEN REPLY #18332 /* ~"Nie."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #18333 /* ~"Wyjdź na platformy, idź nimi na północny-zachód, a dojdziesz do wrót prowadzących do kryjówki Faroda. Do ciebie należy wejście tam i zdobycie informacji. Jak ktoś będzie pytał, to mnie nie znasz i nigdy nie było tej rozmowy, zrozumiano?"~ */
  IF ~~ THEN REPLY #18334 /* ~"Kim *ty* jesteś?"~ */ GOTO 31
  IF ~~ THEN REPLY #18335 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 28.1
  SAY #18336 /* ~"Zatem w porządku. Jak ktoś będzie pytał, to mnie nie znasz i nigdy nie było tej rozmowy, zrozumiano?"~ */
  IF ~~ THEN REPLY #18337 /* ~"Kim *ty* jesteś?"~ */ GOTO 31
  IF ~~ THEN REPLY #18338 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 49.0
  SAY #18339 /* ~"Jak na takiego sprytnego śmiałka, nie słuchasz zbyt uważnie."~ */
  IF ~~ THEN REPLY #18340 /* ~"Ee..."~ */ EXIT
  IF ~~ THEN REPLY #18341 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",2)
~ THEN BEGIN 32 // from:
  SAY #18342 /* ~Mężczyzna nie wydaje się być zachwycony, że cię znowu widzi. "Nie mam zamiaru z tobą gadać, trepie. Wynocha, zanim zawołam moich ludzi, żeby ci pokazali drogę."~ */
  IF ~~ THEN REPLY #18343 /* ~"Ale mam do ciebie parę pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #18344 /* ~Odejdź.~ */ EXIT
END

IF ~  GlobalGT("Sharegrave","GLOBAL",4)
~ THEN BEGIN 33 // from:
  SAY #18345 /* ~Mężczyzna skłania się lekko w powitaniu. "Zrobiłeś, o co cię prosiłem? Dowiedziałeś się, co on knuje?"~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18346 /* ~"Tak. Farod bierze ciała z katakumb, które znajdują się pod Sigil. W ten sposób zarabia dużo brzdęku, odsprzedając Grabarzom zwłoki, które oni już wcześniej pogrzebali."~ */ DO ~GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18455 /* ~Spotkałem człowieka, dla którego zgodziłem się rozpracować tajemnicę Faroda, i przekazałem mu to co chciał wiedzieć. Zostałem odpowiednio wynagrodzony.~ */ GOTO 35
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18347 /* ~"Tak. Farod bierze ciała z katakumb, które znajdują się pod Sigil. W ten sposób zarabia dużo brzdęku, odsprzedając Grabarzom zwłoki, które oni już wcześniej pogrzebali."~ */ DO ~GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18455 /* ~Spotkałem człowieka, dla którego zgodziłem się rozpracować tajemnicę Faroda, i przekazałem mu to co chciał wiedzieć. Zostałem odpowiednio wynagrodzony.~ */ GOTO 35
  IF ~~ THEN REPLY #18348 /* ~Kłamstwo: "Farod ma po prostu szczęście do znajdywania umarłych. To wszystko."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sharegrave_1","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #18349 /* ~"Jeszcze nie."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.3 49.1
  SAY #18350 /* ~"Idź i dowiedz się tego, na czym mi zależy... I nie wracaj tutaj zanim tego nie będziesz wiedział. Idź zanim zawołam moich ludzi, żeby ci pokazali drogę."~ */
  IF ~~ THEN REPLY #18351 /* ~"Ale mam do ciebie parę pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #18352 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.0 33.1 53.0 55.0
  SAY #18353 /* ~Oczy mężczyzny rozszerzają się ze zdziwienia: "Na Baator, jak on się tam dostał?! Co za szpicowany bękart!"~ */
  IF ~~ THEN REPLY #18354 /* ~"Jego 'kryjówka' to w gruncie rzeczy system pieczar, które prowadzą do małego bloku w mieście zakopanym pod Placem Szmaciarzy. Tam znajduje się wejście do katakumb."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 36
  IF ~  Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18355 /* ~"Jeśli chcesz się dowiedzieć jak, to będzie cię to kosztowało ekstra."~ */ GOTO 39
  IF ~  Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18356 /* ~"Jeśli chcesz się dowiedzieć jak, to będzie cię to kosztowało ekstra."~ */ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 35.0 39.0 40.0 41.0 42.0
  SAY #18357 /* ~"Jakoś nie mogę uwierzyć, że ten bękart ma takie szczęście."~ */
  IF ~  Dead("Pharod")
~ THEN REPLY #18358 /* ~"Prawdę mówiąc, to szczęście go chyba opuściło. Nie żyje."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 37
  IF ~  !Dead("Pharod")
~ THEN REPLY #18359 /* ~"Teraz, gdy jego tajemnica się wydała, jak długo będzie jeszcze mógł to robić?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 44
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #18360 /* ~"Co?!" Ta wieść powoli dociera do jego umysłu. "Och, Pani mnie dzisiaj błogosławi! Oto twój brzdęk, śmiałku. Niech ci się przyda."~ */
  IF ~~ THEN REPLY #18361 /* ~"Dziękuję. Mam do ciebie parę pytań..."~ */ GOTO 38
  IF ~~ THEN REPLY #18362 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 44.0
  SAY #18363 /* ~"Co? Wybacz mi, śmiałku - ale nie mam teraz dla ciebie czasu. Może innym razem. Lepiej sobie już idź. Muszę obmyślić plan."~ */
  IF ~~ THEN REPLY #18364 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 35.1
  SAY #18365 /* ~"W porządku. Dołożę ci o połowę zapłaty więcej do tego, co już ustaliliśmy: razem trzysta miedziaków. Umowa stoi?"~ */
  IF ~~ THEN REPLY #18366 /* ~"Stoi. Jego 'kryjówka' to w gruncie rzeczy system pieczar, które prowadzą do małego bloku w mieście zakopanym pod Placem Szmaciarzy. Tam znajduje się wejście do katakumb."~ */ DO ~GivePartyGold(100)
~ JOURNAL #18458 /* ~Zdołałem wyciągnąć jeszcze pięćdziesiąt procent od człowieka, który zapłacił mi za informację o tym skąd Farod bierze zwłoki. W zamian powiedziałem mu jak dojść do katakumb pod Sigil.~ */ GOTO 36
  IF ~~ THEN REPLY #18367 /* ~"Daj dwa razy tyle i umowa stoi."~ */ GOTO 41
  IF ~~ THEN REPLY #18368 /* ~"Nic z tego. Zapomnij o tym."~ */ GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 35.2
  SAY #18369 /* ~"W porządku. Dołożę ci o połowę zapłaty więcej do tego, co już ustaliliśmy: razem sto pięćdziesiąt miedziaków. Umowa stoi?"~ */
  IF ~~ THEN REPLY #18370 /* ~"Stoi. Jego 'kryjówka' to w gruncie rzeczy system pieczar, które prowadzą do małego bloku w mieście zakopanym pod Placem Szmaciarzy. Tam znajduje się wejście do katakumb."~ */ DO ~GivePartyGold(50)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~Zdołałem wyciągnąć jeszcze pięćdziesiąt procent od człowieka, który zapłacił mi za informację o tym skąd Farod bierze zwłoki. W zamian powiedziałem mu jak dojść do katakumb pod Sigil.~ */ GOTO 36
  IF ~~ THEN REPLY #18371 /* ~"Daj dwa razy tyle i umowa stoi."~ */ GOTO 42
  IF ~~ THEN REPLY #18372 /* ~"Nic z tego. Zapomnij o tym."~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #18373 /* ~"Połowa tego, co ci płacę i ani miedziaka więcej. Lepiej zastanów się *bardzo* dobrze nad tym, co teraz powiesz, trepie."~ */
  IF ~~ THEN REPLY #18374 /* ~"Stoi. Jego 'kryjówka' to w gruncie rzeczy system pieczar, które prowadzą do małego bloku w mieście zakopanym pod Placem Szmaciarzy. Tam znajduje się wejście do katakumb."~ */ DO ~GivePartyGold(100)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~Zdołałem wyciągnąć jeszcze pięćdziesiąt procent od człowieka, który zapłacił mi za informację o tym skąd Farod bierze zwłoki. W zamian powiedziałem mu jak dojść do katakumb pod Sigil.~ */ GOTO 36
  IF ~~ THEN REPLY #18375 /* ~"Nic z tego. Zapomnij o tym."~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 40.1
  SAY #18376 /* ~"Połowa tego, co ci płacę i ani miedziaka więcej. Lepiej zastanów się *bardzo* dobrze nad tym, co teraz powiesz, trepie."~ */
  IF ~~ THEN REPLY #18377 /* ~"Stoi. Jego 'kryjówka' to w gruncie rzeczy system pieczar, które prowadzą do małego bloku w mieście zakopanym pod Placem Szmaciarzy. Tam znajduje się wejście do katakumb."~ */ DO ~GivePartyGold(50)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~Zdołałem wyciągnąć jeszcze pięćdziesiąt procent od człowieka, który zapłacił mi za informację o tym skąd Farod bierze zwłoki. W zamian powiedziałem mu jak dojść do katakumb pod Sigil.~ */ GOTO 36
  IF ~~ THEN REPLY #18378 /* ~"Nic z tego. Zapomnij o tym."~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 39.2 40.2 41.1 42.1
  SAY #18379 /* ~"Wystarczy. Mam cię już dość." Mężczyzna nagle zaczyna wołać: "Krwawniki! Chodźcie tutaj i zabijcie tego człowieka!"~ */
  IF ~~ THEN REPLY #18380 /* ~Odeprzyj atak.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18381 /* ~Uciekaj.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.1
  SAY #18382 /* ~"Hmm. Cha, cha, cha!" Mężczyzna zaczyna się śmiać. "Masz rację! Oto twój brzdęk, śmiałku. Niech ci się przyda."~ */
  IF ~~ THEN REPLY #18383 /* ~"Dziękuję. Mam do ciebie parę pytań..."~ */ GOTO 38
  IF ~~ THEN REPLY #18384 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 33.2
  SAY #18385 /* ~"Nie wierzę ci. Niby skąd oni pochodzą?"~ */
  IF ~~ THEN REPLY #18386 /* ~"Nie wiem."~ */ GOTO 46
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #18387 /* ~"Z innej Sfery?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0 47.0
  SAY #18388 /* ~"Zjeżdżaj stąd i nie pokazuj mi się już więcej. Nie mamy już ze sobą żadnych układów. Szpicuj się stąd zanim zawołam moich ludzi, żeby się tobą zajęli."~ */
  IF ~~ THEN REPLY #18389 /* ~"Ale mam do ciebie parę pytań..."~ */ JOURNAL #18462 /* ~Spróbowałem okłamać człowieka, który zapłacił mi za informację o tym skąd Farod bierze zwłoki. Wściekł się i nie chce już więcej ze mną rozmawiać.~ */ GOTO 16
  IF ~~ THEN REPLY #18390 /* ~Odejdź.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ JOURNAL #18462 /* ~Spróbowałem okłamać człowieka, który zapłacił mi za informację o tym skąd Farod bierze zwłoki. Wściekł się i nie chce już więcej ze mną rozmawiać.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #18391 /* ~Mężczyzna zamyśla się na chwilę, pocierając to, co zostało z jego małżowiny. "Może... ale jak? Z jakiej Sfery?"~ */
  IF ~~ THEN REPLY #18392 /* ~"Nie wiem."~ */ GOTO 46
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18393 /* ~"Może z pól śmierci Szarego Pustkowia?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18465 /* ~Okłamałem człowieka, który zapłacił mi za informację o tym skąd Farod bierze zwłoki. Coś podejrzewał, ale i tak mi zapłacił... Zdaje mi się jednak, że nie będę więcej u niego mile widziany.~ */ GOTO 48
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18394 /* ~"Może z pól śmierci Szarego Pustkowia?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18465 /* ~Okłamałem człowieka, który zapłacił mi za informację o tym skąd Farod bierze zwłoki. Coś podejrzewał, ale i tak mi zapłacił... Zdaje mi się jednak, że nie będę więcej u niego mile widziany.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1 47.2
  SAY #18395 /* ~"Hmm." Mężczyzna spogląda na ciebie z powątpiewaniem. "Oto twój brzdęk, trepie. Teraz wynoś się stąd zanim stracę cierpliwość i poślę za tobą moich ludzi."~ */
  IF ~~ THEN REPLY #18396 /* ~"Ale mam do ciebie parę pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #18397 /* ~Odejdź.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0
  SAY #18398 /* ~"Hmm. Zgoda. Dam ci sto miedziaków. Wyjdź na platformy, idź nimi na północny-zachód, a dojdziesz do wrót prowadzących do kryjówki Faroda. Do ciebie należy wejście tam i zdobycie informacji. Jak ktoś będzie pytał, to mnie nie znasz i nigdy nie było tej rozmowy, zrozumiano?"~ */
  IF ~~ THEN REPLY #18399 /* ~"Kim *ty* jesteś?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 31
  IF ~~ THEN REPLY #18400 /* ~"Oczywiście. Mam do ciebie parę pytań..."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #18401 /* ~"Oczywiście. Żegnaj."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",1)
~ THEN BEGIN 50 // from:
  SAY #18402 /* ~Mężczyzna wygląda, jakby był lekko zdziwiony twoim przybyciem. "Ha! Nie myślałem, że cię jeszcze zobaczę, trepie. Czego ode mnie chcesz?"~ */
  IF ~~ THEN REPLY #18403 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18404 /* ~"Nic. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18405 /* ~"Nic. Przepraszam za najście... Żegnaj."~ */ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #18406 /* ~Mężczyzna wydaje się lekko zaskoczony tym, że znowu cię widzi. "Przykro mi, śmiałku - nie mam teraz dla ciebie czasu. Może innym razem. Lepiej sobie już idź. Muszę obmyślić plan."~ */
  IF ~~ THEN REPLY #18407 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 22.0
  SAY #18408 /* ~"W takim razie sto monet za śpiewkę. Umowa stoi?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18409 /* ~"Daj trzy razy tyle i umowa stoi."~ */ GOTO 54
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18410 /* ~"Daj dwa razy tyle i umowa stoi."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",5)
~ GOTO 53
  IF ~~ THEN REPLY #18411 /* ~"Stoi."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY #18412 /* ~"Dobra: dwieście miedziaków. Zgoda?"~ */
  IF ~~ THEN REPLY #18413 /* ~"Farod bierze ciała z katakumb, które znajdują się pod Sigil. W ten sposób zarabia dużo brzdęku, odsprzedając Grabarzom zwłoki, które oni już wcześniej pogrzebali."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18468 /* ~Człowiek na placu Szmaciarzy zapłacił mi za informację o tym, skąd Farod ciągle bierze zwłoki.~ */ GOTO 35
END

IF ~~ THEN BEGIN 54 // from: 52.0
  SAY #18414 /* ~Mężczyzna uśmiecha się szyderczo. "Aż tak bardzo mi na tym nie zależy. Wynoś się stąd, zanim zawołam moich ludzi, żeby ci pokazali drogę."~ */
  IF ~~ THEN REPLY #18415 /* ~"Czekaj! W takim razie sto miedziaków."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 55
  IF ~~ THEN REPLY #18416 /* ~"Ale ja mam do ciebie parę innych pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #18417 /* ~Odejdź.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.2 54.0
  SAY #18418 /* ~"W porządku: niech będzie sto miedziaków. Zgoda?"~ */
  IF ~~ THEN REPLY #18419 /* ~"Farod bierze ciała z katakumb, które znajdują się pod Sigil. W ten sposób zarabia dużo brzdęku, odsprzedając Grabarzom zwłoki, które oni już wcześniej pogrzebali."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18468 /* ~Człowiek na placu Szmaciarzy zapłacił mi za informację o tym, skąd Farod ciągle bierze zwłoki.~ */ GOTO 35
END

IF ~  Global("Sharegrave","GLOBAL",0)
Global("Pox","GLOBAL",2)
~ THEN BEGIN 56 // from:
  SAY #18420 /* ~Ten wysoki i szczupły mężczyzna o bladej skórze i ponurym wyglądzie roztacza wokół siebie atmosferę władzy, choć jednocześnie wydaje się być trochę niezdarny. Brakuje mu dużego kawałka lewego ucha. W tym miejscu znajduje się tylko poszarpana, zabliźniona rana, jakby ktoś to ucho odgryzł, a nie odciął. Patrząc na jego zwężone oczy zdajesz sobie sprawę, że ich posiadacz musi być bardzo sprytny... i niebezpieczny.~ */
  IF ~~ THEN REPLY #18421 /* ~"Czyżbyś to ty był Współgrobcem?"~ */ GOTO 57
  IF ~~ THEN REPLY #18422 /* ~Zostaw mężczyznę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #18423 /* ~Mężczyzna rzuca w odpowiedzi: "Nie znam cię, trepie." Potem spogląda na ciebie ze złością. "A kimże ty jesteś, że pytasz o Współgrobca?"~ */
  IF ~~ THEN REPLY #18424 /* ~"Człowiek imieniem Syf powiedział, żebym poszukał Współgrobca. Podobno on wie, gdzie można znaleźć kogoś o imieniu Farod."~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18425 /* ~"Zapomnij, że o to pytałem. Żegnaj."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18426 /* ~"Nikt. Przepraszam za najście... Żegnaj."~ */ EXIT
END
