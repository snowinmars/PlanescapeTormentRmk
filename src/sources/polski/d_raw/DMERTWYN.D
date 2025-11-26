// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERTWYN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERTWYN~

IF ~  Global("Mertwyn","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2960 /* ~Jest jasne, że coś bardzo *złego* dzieje się z tym człowiekiem. A to zatacza się, potrącając wszystko na swej drodze, a to znów wpatruje się niewidomym wzrokiem gdzieś hen, daleko. Podchodząc doń, nareszcie rozumiesz jego ciężkie położenie... nie ma głowy. To, co dźwiga na swych ramionach, jest po prostu zręcznie rzeźbioną drewnianą protezą... fałszywym czerepem.~ */
  IF ~  !PartyHasItem("Mertwyn")
~ THEN REPLY #2961 /* ~"Witaj..."~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
Global("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42316 /* ~"Witaj..."~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
GlobalGT("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42317 /* ~"To pewnie jest ciało Mertwyna..."~ */ EXTERN ~DMHEAD~ 12
  IF ~~ THEN REPLY #42318 /* ~Zostaw je w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 17.0 17.1
  SAY #42320 /* ~Bezgłowe ciało przestaje się wiercić na chwilę i zamiera w bezruchu. Jego ręce zaczynają się wyciągać, próbując jak gdyby wyczuć miejsce, w którym się znajdujesz.~ */
  IF ~~ THEN REPLY #42321 /* ~Daj mu się dotknąć.~ */ GOTO 2
  IF ~~ THEN REPLY #42322 /* ~Złap je za rękę.~ */ GOTO 3
  IF ~~ THEN REPLY #42323 /* ~Odejdź od niego na kilka kroków.~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42324 /* ~Po chwili jeden palec ociera się o twoje przedramię. Kurczowo chwyta twą rękę i przesuwa się do ramienia, a potem do głowy. Próbuje wyczuć twoją twarz i głowę, jego ręce ocierają się o twoją szyję, jak gdyby coś chciały sprawdzić. W końcu łapie cię za rękę i energicznie nią potrząsa w geście powitania. Zauważasz, że ma zimną i nieco wilgotną skórę.~ */
  IF ~~ THEN REPLY #42325 /* ~"Czy mnie rozumiesz?"~ */ GOTO 4
  IF ~~ THEN REPLY #42326 /* ~"Pójdę już sobie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #42327 /* ~Bezgłowa postać nagle podskakuje, następnie mocno ściska cię za rękę i potrząsa nią... Ciało wydaje się być dość przyjaźnie nastawione. Ma silny uścisk, ale jego skóra jest zimna i nieco wilgotna.~ */
  IF ~~ THEN REPLY #42328 /* ~"Gdzie jest twoja głowa? Czy mnie w ogóle rozumiesz?"~ */ GOTO 4
  IF ~~ THEN REPLY #42329 /* ~"Pójdę już sobie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #42330 /* ~Postać gestykuluje przez chwilę, następnie czeka na odpowiedź. Wygląda, jak gdyby chciała zadać pytanie.~ */
  IF ~~ THEN REPLY #42331 /* ~"Co? Nie rozumiem..."~ */ GOTO 5
  IF ~~ THEN REPLY #42332 /* ~"Pójdę już sobie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42333 /* ~Bezgłowa postać przez krótką chwilę trąca się w nogę i drapie podbródek swej fałszywej głowy. Nagle unosi w górę palec, jak gdyby doznała olśnienia. Wskazuje palcem na ciebie, a potem na oczy swego drewnianego czerepu, następnie znowu na ciebie. Z kolei obiema rękami pokazuje na swą drewnianą głowę, wzrusza ramionami, a potem znów wskazuje na ciebie.~ */
  IF ~~ THEN REPLY #42334 /* ~"Hmm... nie. Nigdzie nie widziałem twojej głowy."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.2 5.0
  SAY #42335 /* ~Bezgłowa postać wzrusza ramionami, kurcząc się nieco, a następnie powoli się oddala.~ */
  IF ~~ THEN REPLY #42336 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #42337 /* ~Postać podchodzi do ciebie, powłócząc nogami i wyciągając ręce w kierunku stalowej skrzyni zawierającej głowę Mertwyna.~ */
  IF ~~ THEN REPLY #42338 /* ~Pozwól Mertwynowi wziąć swą głowę.~ */ DO ~AddexperienceParty(8000)
SetGlobal("Mertwyn","GLOBAL",2)
DestroyPartyItem("Mertwyn",FALSE)
GivePartyGold(200)
~ JOURNAL #56738 /* ~Udało mi się doprowadzić do połączenia głowy Mertwyna z jego ciałem i całość sprawia bardzo zadowalające wrażenie.~ */ GOTO 8
  IF ~~ THEN REPLY #42339 /* ~Trzymaj głowę z dala od ciała.~ */ EXTERN ~DMHEAD~ 13
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #42340 /* ~"Taak, o wiele lepiej... Dziękuję ci, dobry panie! Zdaje się, że moje ciało zaczęło się trochę niecierpliwić beze mnie." Postać przytula mocno stalową skrzynkę. "Tak, i mnie było tęskno..." Postać wsuwa skrzynkę pod pachę i kłania ci się. "A co do ciebie, dobry panie... z pewnością należy ci się *jakaś* nagroda za fatygę. Zobaczmy, co my tu mamy..." Postać grzebie za czymś po kieszeniach i, gdy nic nie znalazła, zaczyna grzebać w tunice. Na koniec obdarowuje cię kilkoma garściami miedziaków.~ */
  IF ~~ THEN REPLY #42341 /* ~"Dziękuję, Mertwynie. Mam parę pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #42342 /* ~"Dziękuję. Żegnaj, Mertwynie."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.1 11.0 12.1 13.0 14.2 15.1 16.0 18.0
  SAY #42343 /* ~"Oczywiście. Pytaj o co tylko chcesz!"~ */
  IF ~~ THEN REPLY #42344 /* ~"Jak to się stało, że... jesteś taki, jaki jesteś?"~ */ GOTO 10
  IF ~~ THEN REPLY #42345 /* ~"Co tutaj robisz?"~ */ GOTO 12
  IF ~~ THEN REPLY #42346 /* ~"Czy możesz mi coś opowiedzieć o tym miejscu?"~ */ GOTO 14
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42347 /* ~"Co ci wiadomo na temat Raveli Szaradnej?"~ */ GOTO 16
  IF ~~ THEN REPLY #42348 /* ~"Nic nie szkodzi, Mertwynie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #42349 /* ~"No, sam nie wiem... ciało me spoczęło w sali wykładowej... a następnie ktoś uciekł ze mną! Następną rzeczą, jaką pamiętam, było to, że mnie podniosłeś."~ */
  IF ~~ THEN REPLY #42350 /* ~"Chodziło mi raczej o to, w jaki sposób straciłeś *głowę*."~ */ GOTO 11
  IF ~~ THEN REPLY #42351 /* ~"Mam następne pytanie."~ */ GOTO 9
  IF ~~ THEN REPLY #42352 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #42353 /* ~Ciało wyraźnie sztywnieje. "No, nie lubimy o tym mówić. Tak naprawdę to jest to okropne... co się stało, to się stało; nie ma potrzeby tego odgrzebywać. Choć zaznaczę tutaj, że znajduję się w tej skrzynce, gdyż moja głowa nie prezentuje się tak doskonale, jak moje ciało - jeżeli wiesz, co mam na myśli."~ */
  IF ~~ THEN REPLY #42354 /* ~"Mam następne pytanie."~ */ GOTO 9
  IF ~~ THEN REPLY #42355 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #42356 /* ~"Głównie łażę w pobliżu Gmachu Rozrywki. Wiesz, to tu, to tam. Pamiętaj, że nie jestem Czuciowcem, ale po prostu lubię tak sobie oglądać, jak ludzie dreptają w te i we wte."~ */
  IF ~~ THEN REPLY #42357 /* ~"Czuciowcem?"~ */ GOTO 13
  IF ~~ THEN REPLY #42358 /* ~"Mam następne pytanie."~ */ GOTO 9
  IF ~~ THEN REPLY #42359 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.1 15.0
  SAY #42360 /* ~Ciało delikatnie kołysze stalową skrzynką, przez co głowa w skrzynce rytmicznie się kiwa. "Taak, znasz ich, to całe Stronnictwo Doznań. Gnają wszędzie, próbując wszystkiego doświadczyć, bo im się wydaje, że w końcu natrafią na jakiś wielki cień wieloświata, jeśli tylko będą odpowiednio długo szukać." Ciało wzrusza ramionami.~ */
  IF ~~ THEN REPLY #42361 /* ~"Mam następne pytanie."~ */ GOTO 9
  IF ~~ THEN REPLY #42362 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2
  SAY #42363 /* ~Mertwyn wydaje się zmieszany. "Czy nie każdy wie o Gmachu Rozrywki? Hmm... cóż, to taka kwatera odłamu Czuciowców. I, co istotne, mieszczą się tam ich sensoria."~ */
  IF ~~ THEN REPLY #42364 /* ~"Opowiedz mi o tych sensoriach..."~ */ GOTO 15
  IF ~~ THEN REPLY #42365 /* ~"Czuciowców?"~ */ GOTO 13
  IF ~~ THEN REPLY #42366 /* ~"Mam następne pytanie."~ */ GOTO 9
  IF ~~ THEN REPLY #42367 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #42368 /* ~"Tutejszy odźwierny potrafi to wyjaśnić lepiej niż ja, panie... ale są tam komnaty, gdzie swe schronienie znalazło mnóstwo zaczarowanych kamieni, które z kolei zawierają zapisy rozmaitych doświadczeń i odczuć. Publiczne sensoria są otwarte dla każdego, chociaż za ich użycie trzeba wnieść drobną opłatę. Sensoria prywatne są dostępne tylko dla członków Stronnictwa Doznań - Czuciowców."~ */
  IF ~~ THEN REPLY #42369 /* ~"Czuciowców?"~ */ GOTO 13
  IF ~~ THEN REPLY #42370 /* ~"Mam następne pytanie."~ */ GOTO 9
  IF ~~ THEN REPLY #42371 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.3
  SAY #42372 /* ~"Raveli? Nie wydaje mi się, abym ją sobie przypominał..."~ */
  IF ~~ THEN REPLY #42373 /* ~"Mam w takim razie następne pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #42374 /* ~"W takim razie - żegnaj."~ */ EXIT
END

IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN BEGIN 17 // from:
  SAY #42375 /* ~Bezgłowy mężczyzna wciąż szarpie się i zatacza, wpadając na ściany, kolumny i tym podobne. Jego fałszywa, drewniana głowa kołysze się niebezpiecznie na ramionach, w miarę jak czowiek ten się porusza.~ */
  IF ~  !PartyHasItem("Mertwyn")
~ THEN REPLY #42376 /* ~"Witaj...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
Global("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42377 /* ~"Witaj...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
GlobalGT("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42378 /* ~"To pewnie jest ciało Mertwyna..."~ */ EXTERN ~DMHEAD~ 12
  IF ~~ THEN REPLY #42379 /* ~Zostaw je w spokoju.~ */ EXIT
END

IF ~  Global("Mertwyn","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #42381 /* ~Stoi tutaj ciało Mertwyna, niedbale bębniące palcami o stalową skrzynkę, w której znajduje się jego głowa. Gdy podchodzisz, przechyla skrzynkę w twoją stronę. "Witam raz jeszcze, dobry panie!"~ */
  IF ~~ THEN REPLY #42382 /* ~"Witaj. Mam parę pytań, Mertwynie..."~ */ GOTO 9
  IF ~~ THEN REPLY #42383 /* ~"Akurat przygnało mnie w te strony, Mertwynie. Żegnaj."~ */ EXIT
END
