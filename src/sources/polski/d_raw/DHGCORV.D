// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGCORV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGCORV~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 22 20 21 33 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37282 /* ~Widzisz wysokiego mężczyznę w zbroi płytowej. Jest ona niezwykłej konstrukcji, naramienniki, nałokietniki i ochraniacze przedramion zakończone są kolcami. Kiwa głową, gdy podchodzisz i zaraz zwraca oczy na rynek. "Dzień dobry, obywatelu."~ */
  IF ~~ THEN REPLY #37283 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37284 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37285 /* ~"Jak mogę ci pomóc, obywatelu?" Obdarza cię przyjaznym spojrzeniem, ale jednocześnie spogląda gdzieś ponad twoim ramieniem.~ */
  IF ~~ THEN REPLY #37286 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37287 /* ~"Myślę, że nie. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.0 6.2 8.1 9.0 11.0 12.0 13.1 14.2 16.0 17.0 18.0 19.0 22.0 23.0 25.1 26.0 28.2 29.1 30.0 31.2 33.0 34.0 35.4 36.0 42.0 43.1 44.0
  SAY #37288 /* ~Kiwa głową. "Pomogę ci, jeśli tylko będę mógł, obywatelu." Z wyczekiwaniem wpatruje się w rynek.~ */
  IF ~~ THEN REPLY #37289 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37290 /* ~"Szukam kogoś, kto nazywa się Lotar, albo Pan Kości..."~ */ GOTO 6
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37291 /* ~"Miałem czaszkę, ale ktoś mi ją ukradł. Znasz kogoś, kto mógłby zrobić coś takiego?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Know_Lenny","GLOBAL",1)
!Global("Byron_Arrested","GLOBAL",1)
~ THEN REPLY #37292 /* ~"Znasz kogoś, kto nazywa się Lenny?"~ */ GOTO 24
  IF ~  Global("Know_Byron","GLOBAL",1)
!Global("Byron_Arrested","GLOBAL",1)
~ THEN REPLY #37293 /* ~"Znasz kogoś, kto nazywa się Byron Szpicer?"~ */ GOTO 27
  IF ~  Global("Know_Anarchists","GLOBAL",1)
~ THEN REPLY #37294 /* ~"Czy wiesz, że w składzie zebrali się anarchiści?"~ */ GOTO 35
  IF ~~ THEN REPLY #37295 /* ~"Muszę kupić broń."~ */ GOTO 11
  IF ~~ THEN REPLY #37296 /* ~"Muszę kupić magiczne przedmioty."~ */ GOTO 12
  IF ~  Global("Karina_Friend","GLOBAL",1)
~ THEN REPLY #37297 /* ~Spróbuj sprawdzić, na co patrzy.~ */ GOTO 13
  IF ~  Global("Karina_Friend","GLOBAL",0)
~ THEN REPLY #37298 /* ~Spróbuj sprawdzić, na co patrzy.~ */ GOTO 19
  IF ~  !Global("Byron_Arrested","GLOBAL",1)
Global("Corvus_Zac","GLOBAL",1)
~ THEN REPLY #24718 /* ~"Chciałbym z tobą porozmawiać o kupcu, który nazywa się Zak."~ */ JOURNAL #66255 /* ~Korvus, strażnik Harmonium, poszukuje dowodów, które wskażą sprawcę zabójstwa kupca o nazwisku Zac. Może i ja powinienem trzymać oczy i uszy szeroko otwarte?~ */ GOTO 42
  IF ~~ THEN REPLY #66254 /* ~"Dziękuję ci. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37299 /* ~Kłania się lekko. "Jestem strażnikiem Harmonium, nazywam się Korvus, obywatelu. Pilnuję porządku, tu, na rynku." Rozgląda się przez chwilę, potem patrzy na ciebie.~ */
  IF ~~ THEN REPLY #37300 /* ~"Opowiedz mi o Harmonium."~ */ GOTO 4
  IF ~~ THEN REPLY #37301 /* ~"Mam inne pytania..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37302 /* ~"Nasza wiara jest prosta: Jesteśmy światłem. Jesteśmy Drogą. Jesteśmy Porządkiem. Jesteśmy Prawdą. Zajmujemy się pilnowaniem i egzekwowaniem porządku w Sigil. Patrolujemy miasto." Znowu się rozgląda.~ */
  IF ~~ THEN REPLY #37303 /* ~"Co możesz mi powiedzieć o innych frakcjach?"~ */ GOTO 5
  IF ~~ THEN REPLY #37304 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37305 /* ~"Nie wiem o nich zbyt wiele, obywatelu. Przykro mi, ale będziesz musiał zapytać przedstawiciela ich bractwa." Uśmiecha się, następnie zaczyna się rozglądać.~ */
  IF ~~ THEN REPLY #37306 /* ~"Mam też inne pytania..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 2.1 10.0
  SAY #37307 /* ~Patrzy na ciebie i marszczy czoło. "Radziłbym ci nie przeszkadzać Lotarowi, obywatelu. Wątpię, czy naprawdę chcesz go odnaleźć."~ */
  IF ~~ THEN REPLY #37308 /* ~"Dlaczego?"~ */ JOURNAL #66533 /* ~Rozmawiałem na temat Lotara z Korvusem, strażnikiem z Harmonium. Ostrzegł mnie, że Lotar jest bardzo potężny i nie należy z nim igrać. Niech się dzieje, co chce, i tak muszę dotrzeć do Lotara.~ */ GOTO 7
  IF ~~ THEN REPLY #37309 /* ~"A jednak muszę go odnaleźć."~ */ JOURNAL #66534 /* ~Korvus powiedział, że Lotara można znaleźć w zrujnowanym domu w Niższej Dzielnicy.~ */ GOTO 9
  IF ~~ THEN REPLY #37310 /* ~"Rozumiem... mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37311 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37312 /* ~Marszczy czoło, patrząc w dal. "Jestem realistą, obywatelu, ale i funkcjonariuszem Harmonium. Jako realista wiem, że są tacy, co stoją ponad prawem. Smutna rzeczywistość." Przerywa.~ */
  IF ~~ THEN REPLY #37313 /* ~"Mów dalej."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37314 /* ~"Niektórzy ludzie nie boją się prawa, ponieważ mają powiązania w mieście, inni, ponieważ mają władzę i budzą w ludziach strach. Lotar to władza, z którą należy się liczyć, obywatelu. Jest nietykalny, jeśli wiesz, co mam na myśli."~ */
  IF ~~ THEN REPLY #37315 /* ~"A jednak muszę go odnaleźć."~ */ JOURNAL #66534 /* ~Korvus powiedział, że Lotara można znaleźć w zrujnowanym domu w Niższej Dzielnicy.~ */ GOTO 9
  IF ~~ THEN REPLY #37316 /* ~"Rozumiem... mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37317 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #37318 /* ~Patrząc na rynek, wzdycha. "Bardzo dobrze, obywatelu. Jego leże jest gdzieś na południe stąd, w zrujnowanym domu. Powodzenia."~ */
  IF ~~ THEN REPLY #37319 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37320 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37321 /* ~Gapi się na ciebie przez jakiś czas, potem odpowiada. "Brzmi jak coś, co zrobiłby Lotar, Pan Kości."~ */
  IF ~~ THEN REPLY #37322 /* ~"Gdzie znajdę tego 'Lotara'?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 2.6
  SAY #37323 /* ~"Musisz porozmawiać z Anze, obywatelu. On może ci pomóc. Jest tam, koło pieca."~ */
  IF ~~ THEN REPLY #37324 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37325 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.7
  SAY #37326 /* ~"Musisz porozmawiać z Aalekiem, obywatelu. On może ci pomóc. Jest tam, po drugiej stronie rynku."~ */
  IF ~~ THEN REPLY #37327 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37328 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.8 18.1
  SAY #37329 /* ~Patrzysz przez ramię i widzisz przechodzącą w pobliżu Karinę. Masz wrażenie, że Korvus wpatruje się w nią.~ */
  IF ~~ THEN REPLY #37330 /* ~"Nazywa się Karina."~ */ GOTO 14
  IF ~~ THEN REPLY #37331 /* ~Nie zwracaj na to uwagi.~ */ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #37332 /* ~Znów zwraca się do ciebie. "Przepraszam, znasz ją, obywatelu?" Znów na nią patrzy. "Anielski głos i taka piękna i młoda..."~ */
  IF ~~ THEN REPLY #37333 /* ~"Tak i wiem, że jest też samotna... Jestem pewien, że z radością przyjęłaby towarzystwo dżentelmena..."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Karina_Friend","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Corvus_1","GLOBALGood",1)
~ JOURNAL #36027 /* ~Korvus, strażnik Harmonium wydaje się być zadurzony w młodej kobiecie o imieniu Karina. Powiedziałem mu, że jest samotna i potrzebuje przyjaciela.~ */ GOTO 15
  IF ~~ THEN REPLY #37334 /* ~"Oczywiście. Jestem pewien, że wszyscy zalotnicy mówią to samo..."~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaotic_Corvus_1","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #37335 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 14.0 18.3
  SAY #37336 /* ~Patrzy na ciebie i znów na Karinę. "Przepraszam na chwilę, obywatelu." Obchodzi cię wkoło i kieruje się w jej stronę.~ */
  IF ~~ THEN REPLY #37342 /* ~"W porządku."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #37343 /* ~Korvus wraca do ciebie, szeroko się uśmiechając. "Dziękuję ci, przyjacielu. Wspaniała, młoda dama..." Ma trochę nieobecne spojrzenie.~ */
  IF ~~ THEN REPLY #37344 /* ~"Cała przyjemność po mojej stronie. Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37345 /* ~"Żegnaj, Korvusie."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY #37346 /* ~Wzdycha i kieruje na ciebie uwagę. Nie wygląda na zbyt zadowolonego. "Co mówiłeś, obywatelu?"~ */
  IF ~~ THEN REPLY #37347 /* ~"Mam parę pytań..."~ */ GOTO 2
END

IF WEIGHT #6 /* Triggers after states #: 22 20 21 33 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #37348 /* ~Widzisz Korvusa, strażnika Harmonium. "Witaj znowu, obywatelu. Czym mogę ci służyć?" Patrzy nad twoim ramieniem i wydaje się kogoś wypatrywać.~ */
  IF ~~ THEN REPLY #37349 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~  Global("Karina_Friend","GLOBAL",1)
~ THEN REPLY #37350 /* ~Spróbuj dojrzeć, na co patrzy.~ */ GOTO 13
  IF ~  Global("Karina_Friend","GLOBAL",0)
~ THEN REPLY #37351 /* ~Spróbuj dojrzeć na co patrzy.~ */ GOTO 19
  IF ~  Global("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37352 /* ~"Wiem, że Karina z nikim się nie spotyka. Myślę, że ucieszyłoby ją towarzystwo dżentelmena..."~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Corvus_1","GLOBALGood",1)
~ JOURNAL #36027 /* ~Korvus, strażnik Harmonium wydaje się być zadurzony w młodej kobiecie o imieniu Karina. Powiedziałem mu, że jest samotna i potrzebuje przyjaciela.~ */ GOTO 15
  IF ~~ THEN REPLY #37353 /* ~"Myślę, że niczym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.9 18.2
  SAY #37354 /* ~Patrzysz przez ramię i widzisz młodą kobietę przechadzającą się po rynku. Korvus wydaje się nie odrywać od niej wzroku.~ */
  IF ~~ THEN REPLY #37355 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37356 /* ~"Wydajesz się być zajęty. Na co tak patrzysz?"~ */ GOTO 43
  IF ~~ THEN REPLY #66273 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 33 even though they appear after this state */
~  Dead("Karina")
~ THEN BEGIN 20 // from:
  SAY #37357 /* ~Widzisz strażnika Harmonium. Wydaje się wściekły, prawie nie potrafi się kontrolować. "Wybacz mi, obywatelu. Nie mogę teraz z tobą rozmawiać... Spotkała mnie strata i chcę by pozostawiono mnie w spokoju."~ */
  IF ~~ THEN REPLY #37358 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 33 even though they appear after this state */
~  Dead("Karina")
NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from:
  SAY #37359 /* ~Widzisz Korvusa, strażnika Harmonium. Wydaje się wściekły, prawie nie może się kontrolować. "Wybacz mi, obywatelu. Nie mogę teraz z tobą rozmawiać... Spotkała mnie strata i chcę by pozostawiono mnie w spokoju."~ */
  IF ~~ THEN REPLY #37360 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 33 even though they appear after this state */
~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #37361 /* ~Widzisz Korvusa, strażnika Harmonium. Uśmiecha się i gdy podchodzisz lekko się kłania. "Witaj, przyjacielu. Mam nadzieję, że u ciebie wszystko w porządku."~ */
  IF ~~ THEN REPLY #37362 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37363 /* ~"Co u ciebie i Kariny?"~ */ GOTO 23
  IF ~~ THEN REPLY #37364 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY #37365 /* ~Szeroko się uśmiecha. "U nas wszystko w porządku, dziękuję. Jestem twoim dłużnikiem, przyjacielu."~ */
  IF ~~ THEN REPLY #37366 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37367 /* ~"Cała przyjemność po mojej stronie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.3
  SAY #37368 /* ~Myśląc, marszczy czoło. "Lenny... tak, znam złodzieja, który tak się nazywa. Zwykle można go spotkać przy wieży oblężniczej."~ */
  IF ~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37369 /* ~"Co możesz mi o nim powiedzieć?"~ */ JOURNAL #36025 /* ~Korvus twierdzi, że Lenny to mistrz złodziejski, który już wielokrotnie uniknął złapania. Powiedział również, że Lenny wydaje się być porządnym człowiekiem, który nikogo by nie skrzywdził.~ */ GOTO 25
  IF ~  GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #37370 /* ~"Co możesz mi o nim powiedzieć?"~ */ GOTO 30
  IF ~~ THEN REPLY #37371 /* ~"Dziękuję ci. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #37373 /* ~"Oficjalnie, nic." Przerywa na chwilę, potem odpowiada. "Nieoficjalnie, jest złodziejem i to dobrym - powiedziałbym mistrzem. I choć nim jest, wydaje się mieć swoją etykę, nigdy nie podejrzewano go o napaść lub morderstwo. Wiele razy udało mu się uniknąć kary..." Przerywa.~ */
  IF ~~ THEN REPLY #37374 /* ~"Coś jeszcze?"~ */ JOURNAL #36024 /* ~Korvus powiedział mi, że ufa Lenny'emu na tyle, by móc bez obaw odwrócić się do niego plecami.~ */ GOTO 26
  IF ~~ THEN REPLY #37375 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37376 /* ~"Dziękuję ci. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #37377 /* ~"Tak... Nie bałbym się odwrócić do niego plecami. Jest niewielu ludzi, o których mógłbym tak powiedzieć i Lenny jest jednym z nich." Wzrusza ramionami. "To wszystko, przyjacielu."~ */
  IF ~~ THEN REPLY #37378 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37379 /* ~"Dziękuję ci. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 2.4
  SAY #37380 /* ~Marszczy czoło i kiwa głową. "Tak, znam Byrona."~ */
  IF ~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37381 /* ~"Co możesz mi o nim powiedzieć?"~ */ JOURNAL #36023 /* ~Korvus twierdzi, że Byron Szpicer jest podejrzanym kryminalistą. Uważa się, że stoi za większością przestępstw popełnianych na rynku Niższej Dzielnicy.~ */ GOTO 28
  IF ~  GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #37382 /* ~"Co możesz mi o nim powiedzieć?"~ */ GOTO 30
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37383 /* ~"Mam dowody, które mówią, że jest zamieszany w przestępstwa w Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #37384 /* ~"Dziękuję ci. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #37385 /* ~"Oficjalnie nic." Przerywa na chwilę, potem odpowiada. "Nieoficjalnie, podejrzany jest o to, że stoi za większą częścią przestępstw na rynku. Uważamy, że jest odpowiedzialny za zamordowanie kupca imieniem Zak. Lista zbrodni, o które się go podejrzewa jest całkiem długa." Przerywa.~ */
  IF ~~ THEN REPLY #37386 /* ~"Coś jeszcze?"~ */ JOURNAL #37391 /* ~Korvus twierdzi, że bałby odwrócić się plecami do Byrona Szpicera, albo zostać z nim sam na sam.~ */ GOTO 29
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37387 /* ~"Mam dowody, które mówią, że jest zamieszany w przestępstwa w Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #37388 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37389 /* ~"Dziękuję ci. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #37392 /* ~"Tak... Nie odwróciłbym się do niego plecami i dwa razy bym pomyślał, zanim miałbym się z nim znaleźć sam na sam." Wzrusza ramionami. "To wszystko, przyjacielu."~ */
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37393 /* ~"Mam dowody, które mówią, że jest zamieszany w przestępstwa w Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #37394 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37395 /* ~"Dziękuję ci. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.1 27.1
  SAY #37396 /* ~Obdarza cię surowym spojrzeniem. "Wszystko, co mi wiadomo o tej osobie, to sprawa Harmonium, obywatelu. Nie mogę o tym rozmawiać z obcymi. Może później, jak poznam cię lepiej..."~ */
  IF ~~ THEN REPLY #37397 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37398 /* ~"Dziękuję ci. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2 28.1 29.0
  SAY #37399 /* ~Patrzy na ciebie z zainteresowaniem. "Naprawdę? Czy mogę zobaczyć te dowody?"~ */
  IF ~  !Dead("Byron")
~ THEN REPLY #37400 /* ~Daj mu papiery.~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",5)
AddexperienceParty(2000)
TakePartyItemNum("Evidence",1)
~ JOURNAL #37403 /* ~Wręczyłem Korvusowi, strażnikowi Harmonium, dowody na to, że Byron Szpicer jest przestępcą. Aresztował Byrona i dopilnuje, żeby stanął on przed sądem.~ */ GOTO 32
  IF ~  Dead("Byron")
~ THEN REPLY #37401 /* ~Daj mu papiery.~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",5)
AddexperienceParty(2000)
TakePartyItemNum("Evidence",1)
~ JOURNAL #37403 /* ~Wręczyłem Korvusowi, strażnikowi Harmonium, dowody na to, że Byron Szpicer jest przestępcą. Aresztował Byrona i dopilnuje, żeby stanął on przed sądem.~ */ GOTO 34
  IF ~~ THEN REPLY #37402 /* ~"Pozwól, że się zastanowię. Mam parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #39441 /* ~"Chyba już pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #37404 /* ~Dokładnie studiuje papiery, potem zwija je i odkłada. Kiwa głową i uśmiecha się. "Wspaniała robota, obywatelu. Te dokumenty są bardzo szczegółowe. Osobiście dopilnuję, żeby Byron Szpicer trafił przed sąd." Salutuje, potem odwraca się, by odejść. "Niedługo wrócę."~ */
  IF ~~ THEN REPLY #37405 /* ~"W porządku."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Byron_Arrested","GLOBAL",1)
~ GOTO 33
END

IF WEIGHT #1 ~  Global("Byron_Arrested","GLOBAL",3)
~ THEN BEGIN 33 // from: 32.0
  SAY #37406 /* ~Wkrótce powraca uśmiechając się. "Sprawa załatwiona. Szpicer został usunięty z ulicy, dowody zostały przedstawione w sądzie i wkrótce odbędzie się proces." Kłania ci się lekko. "Jeszcze raz dziękuję ci."~ */
  IF ~~ THEN REPLY #37407 /* ~"Cała przyjemność po mojej stronie. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37408 /* ~"Dziękuję. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1
  SAY #39442 /* ~Dokładnie studiuje papiery, potem zwija je i odkłada. Kiwa głową i uśmiecha się. "Wspaniała robota, obywatelu. Te dokumenty są bardzo dokładne. Osobiście dopilnuję, żeby trafiły do sądu i żeby wszyscy mogli dowiedzieć się o niesławnych czynach Byrona." Marszczy czoło. "Jednakże, Byron Szpicer nie żyje i teraz stoi przed sądem o wiele wyższej instancji."~ */
  IF ~~ THEN REPLY #39443 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #39444 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 2.5
  SAY #43033 /* ~Marszczy czoło, myśląc. "Cóż, mamy tutaj anarchistów, obywatelu. Ale dopóki nie złamią prawa, nie można im wiele zrobić."~ */
  IF ~  Global("Kill_Vorten","GLOBAL",0)
~ THEN REPLY #43034 /* ~"Sądziłem, że są niebezpiecznym elementem, którym należy się zająć, zanim zaczną sprawiać kłopoty."~ */ GOTO 36
  IF ~  Global("Kill_Vorten","GLOBAL",1)
!Dead("Vorten")
~ THEN REPLY #43035 /* ~"Ich przywódca poprosił mnie, bym zabił funkcjonariusza Harmonium, który nazywa się Narzędnik 3 Vorten."~ */ GOTO 37
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
Dead("Vorten")
GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #43036 /* ~"Cóż, wiem z pewnego źródła, że są odpowiedzialni za śmierć Narzędnika 3 Vortena."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",5)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
AddexperienceParty(2000)
~ GOTO 40
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
Dead("Vorten")
GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #43037 /* ~"Cóż, wiem z pewnego źródła, że są odpowiedzialni za śmierć Narzędnika 3 Vortena."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",6)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
AddexperienceParty(2000)
~ GOTO 41
  IF ~~ THEN REPLY #43038 /* ~"Rozumiem. Mam parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #43039 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #43040 /* ~Wzdycha. "Zgadzam się z tą opinią, obywatelu. Jednakże, osobiście nie jestem za bieganiem i rozwalaniem łbów bez dowodów winy. Jeśli dasz mi dobry powód, dopilnuję, żeby zajęto się tymi anarchistami. W innym razie, mają prawo do zgromadzeń i rozmów."~ */
  IF ~~ THEN REPLY #43041 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #43042 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY #43043 /* ~Obdarza cię zamyślonym spojrzeniem. "To bardzo poważne oskarżenie, obywatelu. Czy jesteś pewien tego, co mówisz?"~ */
  IF ~~ THEN REPLY #43044 /* ~"Tak."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",4)
AddexperienceParty(2000)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
~ JOURNAL #66535 /* ~Powiedziałem Korvusowi, że anarchista poprosił mnie, abym zgładził Narzędnika 3 Vortena. Korvus obiecał mi, że dopilnuje tego, żeby kwestia anarchistów została jak najszybciej rozwiązana.~ */ GOTO 38
  IF ~~ THEN REPLY #43045 /* ~"Nie, chyba nie."~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #43046 /* ~"Bardzo dobrze. Dopilnuję, żeby się nimi zajęto. Wspaniała robota, obywatelu." Uśmiecha się.~ */
  IF ~~ THEN REPLY #43047 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #43048 /* ~Wzrusza ramionami. "A więc nie musimy już o tym dyskutować."~ */
  IF ~~ THEN REPLY #43049 /* ~"Bardzo dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 35.2
  SAY #43050 /* ~"Skąd o tym wiesz... chyba że jakoś jesteś w to zamieszany?" Patrzy na ciebie przez jakiś czas. "Ponieważ jesteś przyjacielem, zapomnę, od kogo to usłyszałem. Tymczasem, dopilnuję, by zajęto się anarchistami. Dobrego dnia, obywatelu."~ */
  IF ~~ THEN REPLY #43052 /* ~"Żegnaj."~ */ JOURNAL #66536 /* ~Powiedziałem Korvusowi, że anarchiści są odpowiedzialni za śmierć Narzędnika 3 Vortena. On natychmiast nabrał podejrzeń o mój współudział w tej sprawie, ale nie roztrząsał tego w mojej obecności. Myślę, że ze względu na naszą przyjaźń, nie będzie drążył tej sprawy. Zapowiedział natomiast że kwestia anarchistów zostanie jak najszybciej rozwiązana.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 35.3
  SAY #43053 /* ~Skąd o tym wiesz... chyba że jakoś jesteś w to zamieszany?" Patrzy na ciebie przez jakiś czas. "Dopilnuję, by zajęto się anarchistami. Dobrego dnia, obywatelu."~ */
  IF ~~ THEN REPLY #43054 /* ~"Żegnaj."~ */ DO ~Enemy()
~ JOURNAL #66537 /* ~Powiedziałem Korvusowi, że anarchiści są odpowiedzialni za śmierć Narzędnika 3 Vortena. On natychmiast nabrał podejrzeń o mój współudział w tej sprawie, ale nie roztrząsał tego w mojej obecności. Z drugiej jednak strony sprawiał wrażenie, jakby nie zamierzał już ze mną utrzymywać znajomości.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 2.10
  SAY #66251 /* ~"Wszystko, co o tym wiem, to sprawa Harmomium, obywatelu. Nie mogę o tym rozmawiać..." Przerywa. "Wszystko, co mogę ci powiedzieć, to że Zak został zamordowany i prowadzone jest śledztwo. Gdybyś odkrył coś, co może w nim pomóc, daj mi o tym znać."~ */
  IF ~~ THEN REPLY #66252 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #66253 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 19.1
  SAY #66266 /* ~Zwraca się do ciebie. "Przepraszam, obywatelu. Przepraszam..." Jego oczy znów śledzą młodą kobietę, gdy mówi, niemal szepce. "Ma anielski głos i jest tak młoda i piękna..." Wzdycha.~ */
  IF ~~ THEN REPLY #66267 /* ~"Idź i porozmawiaj z nią. Wydajesz się być w niej zadurzony..."~ */ JOURNAL #66539 /* ~Zdaje się, że Korvus jest zadurzony w młodej kobiecie z placu targowego. Poradziłem mu, abym porozmawiał z nią o swoich uczuciach, ale on uważa, że ona jest poza jego zasięgiem. Może powinien porozmawiać z nią i dowiedzieć kto ona zacz.~ */ GOTO 44
  IF ~~ THEN REPLY #66268 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #66269 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #66270 /* ~Robi się niezręcznie cicho. W końcu zwraca się do ciebie. "Ja... nie mogę. To znaczy, taka kobieta... cóż, musi być..." Wzdycha i na chwilę przerywa. "Czy jeszcze w czymś mogę ci pomóc obywatelu?"~ */
  IF ~~ THEN REPLY #66271 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #66272 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END
