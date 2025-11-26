// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDIMTREE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDIMTREE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 20 22 14 16 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2907 /* ~Widzisz wysokiego, szczupłego mężczyznę o szklistych oczach. Zdaje się być pochłonięty opowiadaną przez karczmarza opowieścią. Co jakiś czas przytakuje, sam jednakże nie wtrąca żadnych komentarzy.~ */
  IF ~~ THEN REPLY #2908 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #35923 /* ~Zignoruj mężczyznę.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 13.0
  SAY #35922 /* ~Mężczyzna odwraca się nieznacznie na twe powitanie - wystarczająco, by ciebie dostrzec. Zauważasz, iż ma on nieco bladą karnację i wygląda na wychudzonego. Wpatruje się w ciebie obojętnym wzrokiem. Sprzedawca zdaje się tego nie zauważać i dalej zalewa go potokiem swej beznadziejnej paplaniny.~ */
  IF ~~ THEN REPLY #35924 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #35925 /* ~"Wszystko z tobą... w porządku?"~ */ GOTO 3
  IF ~~ THEN REPLY #35926 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #35927 /* ~Powolnym ruchem mężczyzna ponownie kieruje swą uwagę na sprzedawcę i przytakuje głową. Wydaje ci się, iż jego skinięcie następuje w tej rozmowie zbyt późno, jednakże sprzedawca nie jest tego świadomy. Mężczyzna powoli kieruje swą uwagę z powrotem na ciebie i zaczyna wpatrywać się w ciebie obojętnie.~ */
  IF ~~ THEN REPLY #35928 /* ~"Wszystko z tobą... w porządku?"~ */ GOTO 3
  IF ~~ THEN REPLY #35929 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #35930 /* ~Mężczyzna w dalszym ciągu ci się przypatruje i powoli przytakuje. Czekasz na jakąś dalszą reakcję, ale nic on nie mówi - jedynie się gapi na ciebie. Masz już zamiar odejść sfrustrowany. I wtedy to zwracasz uwagę na towarzyszący mężczyźnie dziwny zatęchły smród.~ */
  IF ~~ THEN REPLY #35931 /* ~Podejdź bliżej i powąchaj dokładniej.~ */ GOTO 4
  IF ~~ THEN REPLY #35932 /* ~Zignoruj mężczyzną i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #35933 /* ~Przybliżasz się do niego i pociągasz nosem, niepewny, co odkryjesz. Gdy to robisz, twe zmysły wypełnia odór - odór, który sobie przypominasz z pobytu w kostnicy. To zapach zakonserwowanego przez magię martwego ciała.~ */
  IF ~  !Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35934 /* ~"Jesteś zombie, czyż nie?"~ */ DO ~SetGlobal("Dimtree_zombie","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35935 /* ~"Jesteś zombie, czyż nie?"~ */ DO ~SetGlobal("Dimtree_zombie","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #35936 /* ~Mężczyzna powolnym ruchem przytakuje, po czym koncentruje swą uwagę na sprzedawcy. Ignoruje wszelkie kolejne próby nawiązania z nim kontaktu.~ */
  IF ~~ THEN REPLY #35937 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #35938 /* ~Istota nadal przypatruje ci się pustym wzrokiem. Powoli, tak jakby kosztowało ją to mnóstwo wysiłku, zaczyna udzielać ci odpowiedzi. Jedynie dzięki swej umiejętności rozmawiania ze zmarłymi jesteś w stanie ją zrozumieć. "Tak... Być... Dimtri."~ */
  IF ~~ THEN REPLY #35939 /* ~"Dlaczego tu jesteś, Dimtri?"~ */ GOTO 7
  IF ~~ THEN REPLY #35940 /* ~"Mam kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #35941 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #35942 /* ~Dimtri - powolnym ruchem - zaczyna zerkać na sprzedawcę i czyni w jego kierunku nieznaczne gesty. Sprzedawca, traktując to jako oznakę zainteresowania, podwaja swe wysiłki w opowiadaniu powieści, którą przedstawia biednemu stworzeniu. Dimtri spogląda na ciebie ponownie. "Hamrys... On mówić... Hamrys nigdy nie przestawać... Włóczyć miasto... denerwować mistrz, denerwować wszyscy... Mistrz stworzyć Dimtri... Powiedzieć Dimtri mówić Hamrys... Teraz Hamrys zostać w sklep... Mistrz szczęśliwy... Miasto szczęśliwy. Dimtri smutny..."~ */
  IF ~~ THEN REPLY #35943 /* ~"Czy jest coś, co mogę dla ciebie zrobić, Dimtri?"~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #35944 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #35945 /* ~"Żegnaj, Dimtri."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #35946 /* ~Istota przerywa, po czym wznawia swą powolną rozmowę z tobą. W jej głosie możesz wyczuć wręcz błagalny ton. "Tak... Znaleźć mistrz... Sebastion... Spytać on uwolnić mnie... Prosić..." Skupia momentalnie swą uwagę na Hamrysie. "Prosić..."~ */
  IF ~~ THEN REPLY #35947 /* ~"Czemu nie mogę cię w bezpośredni sposób wybawić z nieszczęścia?"~ */ GOTO 9
  IF ~~ THEN REPLY #35948 /* ~"Nie wiem... Zastanowię się nad tym. Mam kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #35949 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #35950 /* ~Dimtri potrząsa głową z trudem. "Nie... Mistrz ożywić... Musieć spytać mistrz... Sebastion... prosić." Czeka na twoją odpowiedź.~ */
  IF ~~ THEN REPLY #35951 /* ~"Jasne, Dimtri. Zobaczę, co mogę dla ciebie zrobić..."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~Zgodziłem się pomóc zombie Dimtriemu. Muszę znaleźć kogoś o imieniu Sebastion i poprosić go o uwolnienie Dimtriego z obecnego stanu.~ */ GOTO 10
  IF ~~ THEN REPLY #35952 /* ~"Przykro mi, Dimtri. To nie moja sprawa, rozumiesz?"~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #35953 /* ~"Nie wiem... Zastanowię się nad tym. Mam kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #35954 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #35956 /* ~Prawie wyczuwasz emanujące z zombie uczucie ulgi. "Dimtri... dziękować... ty przyjaciel..."~ */
  IF ~~ THEN REPLY #35957 /* ~"Proszę bardzo. Mam kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #35958 /* ~"Żegnaj, Dimtri."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #35959 /* ~Wyczuwasz w powietrzu falę niezadowolenia, gdy Dimtri odwraca się od ciebie. Zaczyna ponownie przytakiwać sprzedawcy, który ani razu w czasie twej rozmowy nie zmniejszył ulewy słów.~ */
  IF ~~ THEN REPLY #35960 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.1 8.1 9.2 10.0 13.2
  SAY #35961 /* ~Istota ledwo zauważalnie wzrusza ramionami. "Nic... nie wiedzieć... Dimtri być wezwać... przez mistrz... Znać ciemność... spokój... spoczynek... Potem Hamrys... Przykro... pomóc ty... jeśli móc..."~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #35962 /* ~"Wiesz, gdzie mogę znaleźć Sebastiona?"~ */ GOTO 15
  IF ~~ THEN REPLY #35963 /* ~"Rozumiem... W takim razie żegnaj."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 20 22 14 16 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #35964 /* ~Wysoki, mizerny mężczyzna w dalszym ciągu zakleszczony jest w rozmowie ze sprzedawcą. Cały ciężar mówienia spoczywa jednak jedynie na tym drugim.~ */
  IF ~  Global("Dimtree_zombie","GLOBAL",0)
~ THEN REPLY #35965 /* ~"Witaj."~ */ GOTO 1
  IF ~  GlobalGT("Dimtree_zombie","GLOBAL",0)
!Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35966 /* ~"Pomyślałam po prostu, że złożę moje uszanowanie... Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Dimtree_zombie","GLOBAL",0)
Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35967 /* ~"Mam kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #35968 /* ~Zignoruj go.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  Global("Release_Dimtree","GLOBAL",3)
~ THEN BEGIN 14 // from:
  SAY #35969 /* ~Dimtri odwraca się nieznacznie w twoją stronę, gdy się zbliżasz. W otaczającym go powietrzu wyczuwasz oczekiwanie. "Ty... znaleźć mistrz? Dimtri wolny?"~ */
  IF ~~ THEN REPLY #35970 /* ~"Wiesz, gdzie mogę znaleźć Sebastiona?"~ */ GOTO 15
  IF ~~ THEN REPLY #35971 /* ~"Jeszcze nie, Dimtri. Będę kontynuować starania. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0 14.0 21.0
  SAY #35972 /* ~Istota przerwała. "Nie wiedzieć... Pamiętać głos... dawać rozkaz być tu... Chodzić... Hamrys... Nic więcej... Przykro."~ */
  IF ~~ THEN REPLY #35973 /* ~"Rozumiem... W takim razie żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Release_Dimtree","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #35974 /* ~Dimtri odwraca się nieznacznie w twoją stronę, gdy się zbliżasz. Wyczuwasz oczekiwanie w otaczającym go powietrzu. "Ty... znaleźć mistrz? Dimtri wolny?"~ */
  IF ~~ THEN REPLY #35975 /* ~"Tak, Dimtri. Wiem już, jak cię uwolnić."~ */ GOTO 17
  IF ~~ THEN REPLY #35976 /* ~"Nie teraz. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #35977 /* ~Dimtri odwraca się przodem do ciebie i wskazuje w twym kierunku. "Prosić przyjaciel..."~ */
  IF ~~ THEN REPLY #35978 /* ~Wypowiedz słowa, które nauczył cię Sebastion.~ */ GOTO 18
  IF ~~ THEN REPLY #35979 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #35980 /* ~Przerywasz, by zebrać myśli, po czym z ostrożnością wymawiasz słowa, których nauczył się Sebastion. Następnie wyciągasz rękę i delikatnie dotykasz Dimtriego w czoło.~ */
  IF ~~ THEN REPLY #35981 /* ~"Odpoczywaj w pokoju, Dimtri."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",5)
Kill(Myself)
AddexperienceParty(4000)
~ JOURNAL #66526 /* ~Rzuciłem na Dimtriego czar, którego nauczyłem się u Sebastiona. Teraz spoczywa w spokoju i nie musi więcej słuchać paplaniny Hamrysa.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #35982 /* ~Z westchnięciem na ustach zombie upada u twych stop. Zdaje ci się, że słyszysz *dziękować ci, przyjaciel*, gdy ulega on unicestwieniu.~ */
  IF ~~ THEN REPLY #35983 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Release_Dimtree","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #35984 /* ~Dimtri odwraca się twarzą co ciebie. "Prosić... ty pomóc? Ty... znależć Sebastion... uwolnić ja..."~ */
  IF ~~ THEN REPLY #35985 /* ~"Tak, pomogę ci."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~Zgodziłem się pomóc zombie Dimtriemu. Muszę znaleźć kogoś o imieniu Sebastion i poprosić go o uwolnienie Dimtriego z obecnego stanu.~ */ GOTO 21
  IF ~~ THEN REPLY #35986 /* ~"Nie, to nie moja sprawa."~ */ EXIT
  IF ~~ THEN REPLY #35987 /* ~"Nie wiem... Zastanowię się nad tym. Żegnaj..."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 22.0
  SAY #35989 /* ~Wręcz wyczuwasz emanujące z zombie uczucie ulgi. "Dimtri... dziękować... ty przyjaciel..."~ */
  IF ~~ THEN REPLY #35990 /* ~"Gdzie mogę znaleźć Sebastiona?"~ */ GOTO 15
  IF ~~ THEN REPLY #35991 /* ~"Proszę bardzo. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Release_Dimtree","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #35992 /* ~Dimtri odwraca się twarzą do ciebie. "Czemu ty tu... Ty odmówić pomoc... Ty zmienić zdanie... znależć Sebastion... uwolnić mnie... prosić?"~ */
  IF ~~ THEN REPLY #35993 /* ~"Tak, pomogę ci."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~Zgodziłem się pomóc zombie Dimtriemu. Muszę znaleźć kogoś o imieniu Sebastion i poprosić go o uwolnienie Dimtriego z obecnego stanu.~ */ GOTO 21
  IF ~~ THEN REPLY #35994 /* ~"Nie, to nie moja sprawa."~ */ EXIT
  IF ~~ THEN REPLY #35995 /* ~"Nie wiem... Zastanowię się nad tym. Żegnaj..."~ */ EXIT
END
