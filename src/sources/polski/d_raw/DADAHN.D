// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADAHN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DADAHN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3015 /* ~Mężczyzna przed tobą ma duże oczy i jest szczupły. Zdaje się być zagubiony i przestraszony widokiem pozostałych klientów, ale widząc ciebie zdaje się oddychać z ulgą.~ */
  IF ~~ THEN REPLY #3016 /* ~"Witaj?"~ */ GOTO 1
  IF ~~ THEN REPLY #13301 /* ~Zignoruj mężczyznę i odwróć się.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11268 /* ~Chichocze cicho i wywraca oczami, jakby mówiąc 'nie uwierzylibyście, co mi się stało', co wydaje ci się dziwnie znajome. "Rychło w czas, przyjacielu! Sądziłem, że może będę musiał czekać tu na ciebie cały dzień."~ */
  IF ~~ THEN REPLY #13302 /* ~"Ech... czy ja cię znam?"~ */ DO ~SetGlobal("Know_Adahn","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #11269 /* ~"Cóż, owszem." Wpatruje się w ciebie. - Przynajmniej tak mi się wydaje. Ja... ech... cóż... nie mogę przypomnieć sobie o tobie wszystkiego, ale..." Marszczy brwi w zamyśleniu, po czym wzrusza ramionami. "...tak czy inaczej, dobrze cię widzieć. Jestem Adahn. Zdaje mi się, że jesteśmy przyjaciółmi. Doskonale! Zdaje się, że przydałoby mi się więcej takich przyjaciół jak ty..." Rozgląda się wokół skonfundowany. "Ponieważ nie wydaje się, abym znał kogokolwiek w tych okolicach, a tym bardziej nie wiem, jak się tu znalazłem."~ */
  IF ~~ THEN REPLY #13303 /* ~"Skąd pochodzisz?"~ */ GOTO 3
  IF ~~ THEN REPLY #13304 /* ~"Adahn to po prostu ktoś, kogo wymyśliłem. Nie sądziłem, by istniał ktoś o tym imieniu."~ */ GOTO 5
  IF ~~ THEN REPLY #13305 /* ~"Cóż, muszę odejść. Żegnaj... Adahnie."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #13289 /* ~Adahn wydaje się być zaskoczony, a na jego twarzy ponownie pojawia się wyraz zdezorientowania. "Ja... hmm." Krzywi się. "Cóż, nie stąd, nie wydaje mi się... a może tak? Sądzę, że pamiętałbym takie miejsce. Właściwie to nie potrafię sobie przypomnieć, skąd pochodzę, ani dokąd zmierzam..."~ */
  IF ~~ THEN REPLY #13306 /* ~"Czy wiesz, kim jestem?"~ */ GOTO 4
  IF ~~ THEN REPLY #13307 /* ~"Cóż, muszę odejść. Żegnaj... Adahnie."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #13290 /* ~"Hmm... starym przyjacielem?" Wydaje się, jakby badał grunt. "Czyż nie?"~ */
  IF ~~ THEN REPLY #13308 /* ~"Tak, tak, jestem. Słuchaj, mam do ciebie parę pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #13309 /* ~"Adahn to po prostu ktoś, kogo wymyśliłem. Nie sądziłem, żeby istniał ktoś o tym imieniu, a już na pewno, że byłby moim przyjacielem."~ */ GOTO 5
  IF ~~ THEN REPLY #13310 /* ~"Cóż, było to interesujące, Adahnie, ale muszę iść. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.1 4.1
  SAY #13291 /* ~"Naprawdę?" Wzrusza ramionami, jakby nie było to ważne. "Cóż, nie wierzę, żebym to ja cię wymyślił, więc tu nie ma problemu... a może jest? Myślę, więc jestem. Tak myślę." Wygląda na zakłopotanego. "Czyż nie tak?~ */
  IF ~~ THEN REPLY #13311 /* ~"Chyba tak. Słuchaj, mam do ciebie parę pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #13312 /* ~"Tak właściwie to nie sądzę, żebym w ogóle chciał cię wymyślać. Czy to możliwe, że nie jesteś niczym więcej, niż wytworem mojej wyobraźni?"~ */ GOTO 6
  IF ~~ THEN REPLY #13313 /* ~"Cóż, było to interesujące, Adahnie, ale muszę iść. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #13292 /* ~Adahn wygląda na zaskoczonego, chce coś powiedzieć, po czym nagle znika.~ */
  IF ~~ THEN REPLY #36923 /* ~"Ech... Zatem żegnaj."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0
  SAY #13293 /* ~"Och, ja też miałem kilka do ciebie..." Marszczy się. "Tylko nie mogę ich sobie przypomnieć." Wzrusza ramionami. "Pytania - kto ich potrzebuje? Liczą się i tak tylko odpowiedzi. Tak myślę."~ */
  IF ~~ THEN REPLY #13314 /* ~"Cóż, było to interesujące, Adahnie, ale muszę iść. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.1 4.2 5.2 7.0
  SAY #13294 /* ~"Hej... ech..." Krzywi się. "Słuchaj, zanim odlecisz tam, gdzie się udajesz, mam coś dla ciebie... a przynajmniej tak myślę..."~ */
  IF ~~ THEN REPLY #13315 /* ~"Co to jest?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #13295 /* ~"Nie jestem pewien." Grzebie po kieszeniach i krzywi się. "Zbyt małe te cholerne kieszenie, by coś w nich trzymać..." Drapie się po głowie. "Może..." Podwija rękawy, najpierw lewy, potem prawy. Wygląda na wściekłego. Pozwala obu rękawom opaść z powrotem do pełnej długości.~ */
  IF ~~ THEN REPLY #13316 /* ~"Czy to zgubiłeś?"~ */ DO ~GiveItemCreate("AdRing",Protagonist,1,0,0)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13317 /* ~"Czemu nie sprawdzisz ponownie lewego rękawa? Wydaje mi się, że to może tam być."~ */ DO ~GiveItemCreate("AdRing2",Protagonist,1,0,0)
AddexperienceParty(250)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13318 /* ~"Czemu nie sprawdzisz ponownie lewego rękawa? Wydaje mi się, że to może tam być."~ */ DO ~GiveItemCreate("AdRing2",Protagonist,1,0,0)
AddexperienceParty(250)
~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #13296 /* ~"Nie, nie, daj mi tylko chwilę." Przeklina pod nosem, po czym ponownie podwija rękawy, najpierw prawy, potem lewy. Gdy to czyni, dostrzegasz paczuszkę przywiązaną do lewego nadgarstka. Adahn uśmiecha się z ulgą, odwiązuje ją i przekazuje tobie. "Dla ciebie, przyjacielu. Ode mnie dla ciebie... pewnego rodzaju podziękowanie!" Kiwa głową, podczas gdy ty bierzesz przedmiot. Przyglądasz mu się... wygląda jak jakiś pierścień.~ */
  IF ~~ THEN REPLY #13319 /* ~"Dzięki, Adahnie."~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 9.1 9.2
  SAY #13297 /* ~"Naprawdę?" Ponownie podwija lewy rękaw i tym razem dostrzegasz paczuszkę przywiązaną do nadgarstka. Adahn uśmiecha się z ulgą, odwiązuje ją i przekazuje tobie. "Dla ciebie, przyjacielu. Ode mnie dla ciebie... pewnego rodzaju podziękowanie!" Kiwa głową, podczas gdy ty bierzesz przedmiot. Przyglądasz mu się... wygląda jak jakiś pierścień.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #13320 /* ~"Czy nie było razem z tym trochę pieniędzy?"~ */ DO ~GiveGoldForce(100)
AddexperienceParty(500)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #13321 /* ~"Czy nie było razem z tym trochę pieniędzy?"~ */ DO ~GiveGoldForce(100)
AddexperienceParty(500)
~ GOTO 12
  IF ~~ THEN REPLY #13322 /* ~"Dzięki, Adahnie."~ */ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1
  SAY #13298 /* ~Strzela palcami. "Tak, było." Spogląda w dół na swój pas, gdzie teraz znajduje się sakwa. Odwiązuje ją i przekazuje ci ją. "Wszystko jest w środku. Cała setka miedziaków." Zabierasz sakwę i otwierasz ją. Wygląda na to, że wszystko tam jest.~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #13323 /* ~"Co z tym zaczarowanym przedmiotem, który chciałeś mi dać?"~ */ DO ~GiveItemCreate("AdDagger",Protagonist,1,0,0)
AddexperienceParty(1000)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #13324 /* ~"Co z tym zaczarowanym przedmiotem, który chciałeś mi dać?"~ */ DO ~GiveItemCreate("AdDagger",Protagonist,1,0,0)
AddexperienceParty(1000)
~ GOTO 13
  IF ~~ THEN REPLY #13325 /* ~"Dzięki, Adahnie."~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #13299 /* ~Wygląda przez chwilę na zaskoczonego, po czym uśmiecha się, jakby coś sobie przypomniał. "Cóż, tak, był tam, prawda?" Sięga do prawego rękawa i wyciąga długi, wąski sztylet. "Proszę."~ */
  IF ~~ THEN REPLY #13326 /* ~"Dzięki, Adahnie."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 10.0 11.2 12.2 13.0
  SAY #13300 /* ~Gdy podnosisz wzrok znad prezentu, by podziękować Adahnowi, nagle zauważasz, że zniknął. Nie słyszałeś nawet, jak odchodził.~ */
  IF ~~ THEN REPLY #36922 /* ~"Ech... Zatem żegnaj."~ */ DO ~DestroySelf()
~ EXIT
END
