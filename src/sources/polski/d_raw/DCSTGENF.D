// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTGENF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTGENF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63249 /* ~Twoim oczom ukazuje się kobieta o znudzonej minie. Kiedy podchodzisz, podnosi na ciebie oczy i krzywi się."~ */
  IF ~~ THEN REPLY #63250 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #63251 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63252 /* ~Kobieta ciężko wzdycha i spogląda dookoła i wreszcie decyduje się poświęcić ci nieco uwagi. "Witaj, witaj... Czegóż chcesz?"~ */
  IF ~~ THEN REPLY #63253 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #63254 /* ~"Niczego. Mniejsza o to."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63255 /* ~Grymas na jej twarzy pogłębia się. "Ha! Kilka pytań. Zapamiętaj to sobie, trepie. Nie jestem oprowadzaczem, ani nie planuję nim zostać. Szpicuj się!"~ */
  IF ~~ THEN REPLY #63256 /* ~"To zajmie tylko chwilę..."~ */ GOTO 3
  IF ~~ THEN REPLY #63257 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63258 /* ~"Nie mam dla ciebie żadnych chwil." Kobieta milknie, sięga za pazuchę i wyciąga sztylet. "A co byś powiedział, gdybym zamiast kilku chwil, zafundowała ci kilka pchnięć przednią baatoriańską stalą?"~ */
  IF ~~ THEN REPLY #63259 /* ~Zaatakuj ją.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #63260 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63261 /* ~Twoim oczom ukazuje się kobieta o znudzonej minie. Kiedy podchodzisz, podnosi na ciebie oczy i krzywi się."~ */
  IF ~~ THEN REPLY #63262 /* ~"Witaj."~ */ GOTO 5
  IF ~~ THEN REPLY #63263 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63264 /* ~Kobieta uśmiecha się, ale jednocześnie nerwowo rozgląda dookoła. "Oczywiście. Witaj i... całe te ceregiele... Chcesz czegoś ode mnie?"~ */
  IF ~~ THEN REPLY #63265 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #63266 /* ~"Nie. Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63267 /* ~Kobieta krzywi się i wzdycha. "Jeżeli to konieczne, to proszę. Tylko streszczaj się."~ */
  IF ~~ THEN REPLY #63268 /* ~"Kim jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #63269 /* ~"Co tutaj robisz?"~ */ GOTO 8
  IF ~~ THEN REPLY #63270 /* ~"Co możesz mi powiedzieć o Klątwie?"~ */ GOTO 9
  IF ~~ THEN REPLY #63271 /* ~"Czy wiadomo ci coś na temat devy?"~ */ GOTO 11
  IF ~~ THEN REPLY #63272 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63273 /* ~"To, kim jestem jest bez znaczenia. Zadawaj swoje pytania. Może będę umiała na nie odpowiedzieć..." Kobieta obrzuca cię niecierpliwym spojrzeniem.~ */
  IF ~~ THEN REPLY #63274 /* ~"Dobrze. Kolejne pytanie..."~ */ GOTO 6
  IF ~~ THEN REPLY #63275 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63276 /* ~"To, czym się zajmuję nie jest rzeczą godną twojej uwagi. No, zadawaj swoje pytania, proszę."~ */
  IF ~~ THEN REPLY #63277 /* ~"Dobrze. Kolejne pytanie..."~ */ GOTO 6
  IF ~~ THEN REPLY #63278 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63279 /* ~"Klątwa to miasto kłamców, oszustów i skrytobójców. Jedyna osoba, której możesz tu zaufać, to ty sam, a i co do tego można mieć wątpliwości." Kobieta wzrusza ramionami. "Trzymaj się tego, to tutaj nie zginiesz."~ */
  IF ~~ THEN REPLY #63280 /* ~"Kłamcy. oszuści... Czy ty także do nich należysz?"~ */ GOTO 10
  IF ~~ THEN REPLY #63281 /* ~"Ach tak. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #63282 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63283 /* ~Kobieta uśmiecha się złośliwie "Ależ oczywiście."~ */
  IF ~~ THEN REPLY #63284 /* ~"Ach tak. Mam jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #63285 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63286 /* ~Kobieta marszczy brwi w zamyśleniu. "Nie. Nic nie wiem o devie." Wzrusza ramionami. "Zapytaj kogoś w budynku administracyjnym w środku miasta."~ */
  IF ~~ THEN REPLY #63287 /* ~"Będę o tym pamiętać. A póki co, chciałbym zadać ci jeszcze kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #63288 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63289 /* ~Twoim oczom ukazuje się kobieta o znudzonej minie. Kiedy podchodzisz, podnosi na ciebie oczy i krzywi się."~ */
  IF ~~ THEN REPLY #63290 /* ~"Witaj."~ */ GOTO 13
  IF ~~ THEN REPLY #63291 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63292 /* ~Kobieta patrzy na ciebie wzrokiem pełnym obawy. "Ech... Czołem. Słuchaj, czegokolwiek chcesz, nie mam nic, co by cię mogło interesować." Kobieta rozgląda się niespokojnie.~ */
  IF ~~ THEN REPLY #63293 /* ~"Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #63294 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63295 /* ~"Hmm... Niech się dzieje, co chce, ale nie chcę mieć z tobą nic do czynienia. Odejdź." Kobieta krzywi się.~ */
  IF ~~ THEN REPLY #63296 /* ~"Czy możesz mi poświęcić kilka chwil?"~ */ GOTO 15
  IF ~~ THEN REPLY #63297 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63298 /* ~Kobieta kładzie ręce na biodrach i grymas na jej twarzy pogłębia się. "Dobra, widzę, że nie rozumiesz, kiedy ci się grzecznie odmawia. Czy muszę to zrobić mniej grzecznie, a bardziej dosadnie?"~ */
  IF ~~ THEN REPLY #63299 /* ~"Tak, chyba musisz."~ */ GOTO 16
  IF ~~ THEN REPLY #63300 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63301 /* ~Kobieta uśmiecha się niemiło. "Zatem dobrze. Idź, klepnij zadkiem na szczycie nieostruganego pala i siedź tam dopóki nie dotkniesz dupą ziemi. A jak już jej dotkniesz, to się zakręć dookoła!" Kobieta wykonuje pod twoim adresem obsceniczny gest. "Szpicuj się, stuknięty bękarcie!"~ */
  IF ~~ THEN REPLY #63302 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63303 /* ~Twoim oczom ukazuje się kobieta o znudzonej minie. Kiedy do niej podchodzisz, podnosi na ciebie oczy i krzywi się. "Myśmy już sobie dość porozmawiali. Spadaj!" Odwraca się od ciebie nieuprzejmie i wszystko wskazuje na to, że nie poświęci ci już ani cienia uwagi.~ */
  IF ~~ THEN REPLY #63304 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 18 // from:
  SAY #63305 /* ~Fakt przebywania w murach więzienia chyba wyjątkowo wyprowadził tę osobę z równowagi. Choćbyś nie wiadomo jak próbował, nie jesteś w stanie wydobyć z niej ani słowa.~ */
  IF ~~ THEN REPLY #63306 /* ~Odejdź.~ */ EXIT
END
