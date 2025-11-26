// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTGENM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTGENM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #64432 /* ~Widzisz mężczyznę o zmartwionej minie. Kiedy się do niego zbliżasz, obrzuca cię pustym spojrzeniem i krzywi się.~ */
  IF ~~ THEN REPLY #64433 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #64434 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64435 /* ~Mężczyzna wzdycha i odwraca się do ciebie. "Witaj, witaj... Czego ci potrzeba?"~ */
  IF ~~ THEN REPLY #64436 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #64437 /* ~"Niczego. Mniejsza o to."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64438 /* ~Mężczyzna krzywi się. "Kilka pytań... Wsadź je sobie, trepie. Szpicuj się."~ */
  IF ~~ THEN REPLY #64439 /* ~"To zajmie tylko chwilę..."~ */ GOTO 3
  IF ~~ THEN REPLY #64440 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64441 /* ~"Nie mam dla ciebie żadnych chwil." Mężczyzna milknie, sięga za pas i wyciąga stamtąd sztylet. "A co byś powiedział, gdybym zamiast kilku chwil, zafundował ci kilka pchnięć przednią baatoriańską stalą?"~ */
  IF ~~ THEN REPLY #64442 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #64443 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #64444 /* ~Widzisz młodego człowieka. Kiedy zbliżasz się do niego, obrzuca się pustym spojrzeniem i krzywi się.~ */
  IF ~~ THEN REPLY #64445 /* ~"Witaj."~ */ GOTO 5
  IF ~~ THEN REPLY #64446 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64447 /* ~Mężczyzna uśmiecha się, ale jednocześnie nerwowo rozgląda dookoła. "Oczywiście. Witaj i... całe te ceregiele... Chcesz czegoś ode mnie?"~ */
  IF ~~ THEN REPLY #64448 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #64449 /* ~"Nie. Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #64450 /* ~Mężczyzna krzywi się i wzdycha ciężko, "Jeżeli to koniecznie, to proszę."~ */
  IF ~~ THEN REPLY #64451 /* ~"Kim jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #64452 /* ~"Co tutaj robisz?"~ */ GOTO 8
  IF ~~ THEN REPLY #64453 /* ~"Co możesz mi powiedzieć o Klątwie?"~ */ GOTO 9
  IF ~~ THEN REPLY #64454 /* ~"Czy wiadomo ci coś na temat devy?"~ */ GOTO 11
  IF ~~ THEN REPLY #64455 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64456 /* ~"To, kim jestem jest bez znaczenia. Zadawaj lepiej swoje pytania..." Mężczyzna obrzuca cię niecierpliwym spojrzeniem.~ */
  IF ~~ THEN REPLY #64457 /* ~"Dobrze. Następne pytanie..."~ */ GOTO 6
  IF ~~ THEN REPLY #64458 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #64459 /* ~"To, czym się zajmuję nie jest rzeczą godną twojej uwagi. No, zadawaj swoje pytania."~ */
  IF ~~ THEN REPLY #64460 /* ~"Dobrze. Następne pytanie..."~ */ GOTO 6
  IF ~~ THEN REPLY #64461 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #64462 /* ~"O Klątwie..." Mężczyzna milknie i patrzy spod oka. "Nie ufaj tutaj nikomu. To wszystko, co trzeba ci wiedzieć, żeby utrzymać się przy życiu. Po prosto nie ufaj nikomu..."~ */
  IF ~~ THEN REPLY #64463 /* ~"Siebie również zaliczasz do tych niegodnych zaufania?"~ */ GOTO 10
  IF ~~ THEN REPLY #64464 /* ~"Ach tak. Mam jeszcze inne pytania..."~ */ GOTO 6
  IF ~~ THEN REPLY #64465 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64466 /* ~Mężczyzna uśmiecha się złośliwie "Ależ oczywiście."~ */
  IF ~~ THEN REPLY #64467 /* ~"Ach tak. Mam jeszcze inne pytania..."~ */ GOTO 6
  IF ~~ THEN REPLY #64468 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #64469 /* ~Mężczyzna marszczy brwi w zamyśleniu. "Nie. Nic nie wiem o devie." Wzrusza ramionami. "Zapytaj kogoś w budynku administracyjnym w środku miasta."~ */
  IF ~~ THEN REPLY #64470 /* ~"Będę o tym pamiętam. A póki co, chciałbym zadać ci jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #64471 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #64472 /* ~Twoim oczom ukazuje się mężczyzna o gniewnej minie. Kiedy do niego podchodzisz, podnosi na ciebie oczy i krzywi się."~ */
  IF ~~ THEN REPLY #64473 /* ~"Witaj."~ */ GOTO 13
  IF ~~ THEN REPLY #64474 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #64475 /* ~Mężczyzna patrzy na ciebie wzrokiem pełnym obawy. "Ech... Czołem. Słuchaj, czegokolwiek chcesz, nie mam nic, co by cię mogło interesować. Cokolwiek chcesz mi sprzedać, nie jest to mi do niczego potrzebne. A teraz zostaw mnie w spokoju." Mężczyzna patrzy na ciebie znacząco.~ */
  IF ~~ THEN REPLY #64476 /* ~"Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #64477 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #64478 /* ~"Hmm... Jak miło! Masz kilka pytań. Słuchaj, niech się dzieje, co chce, ale chcę, żebyś dał mi święty spokój. Odejdź już." Mężczyzna krzywi się.~ */
  IF ~~ THEN REPLY #64479 /* ~"Czy możesz mi poświęcić kilka chwil?"~ */ GOTO 15
  IF ~~ THEN REPLY #64480 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #64481 /* ~Mężczyzna wzdycha i trzęsie rękoma w geście najwyższego poirytowania. "Dobra, widzę, że nie rozumiesz, kiedy ci się grzecznie odmawia. Czy muszę to zrobić mniej grzecznie, a bardziej dosadnie?"~ */
  IF ~~ THEN REPLY #64482 /* ~"Tak, chyba musisz."~ */ GOTO 16
  IF ~~ THEN REPLY #64483 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #64484 /* ~Mężczyzna uśmiecha się niemiło. "Zatem dobrze. Wsadź sobie głowę między nogi i zaśpiewaj swoje pytania prosto we własny tyłek. A potem cierpliwie poczekaj, bo odpowiedź pewnikiem rychło buchnie ci w gębę." Mężczyzna wykonuje pod twoim adresem obsceniczny gest. "Szpicuj się, trepie!"~ */
  IF ~~ THEN REPLY #64485 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #64486 /* ~Twoim oczom ukazuje się mężczyzna o znudzonej minie. Kiedy do niego podchodzisz, podnosi na ciebie oczy i krzywi się. "Myśmy już sobie dość porozmawiali. Spadaj!" Odwraca się od ciebie nieuprzejmie i wszystko wskazuje na to, że nie poświęci ci już ani cienia uwagi.~ */
  IF ~~ THEN REPLY #64487 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 18 // from:
  SAY #64488 /* ~Fakt przebywania w murach więzienia chyba wyjątkowo wyprowadził tę osobę z równowagi. Choćbyś nie wiadomo jak próbował, nie jesteś w stanie wydobyć z niej ani słowa.~ */
  IF ~~ THEN REPLY #64489 /* ~Odejdź.~ */ EXIT
END
