// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGUARD~

IF ~  NumTimesTalkedTo(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #27728 /* ~Ogromna postać w czerwonej zbroi stoi w miejscu, najwyraźniej pilnując schodów, które są za nią. Przypominasz sobie, że ta ozdobna zbroja oznacza, że jest członkiem Harmonium, jednym z tych, którzy w mieście egzekwują prawo.~ */
  IF ~~ THEN REPLY #27898 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #27900 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #27923 /* ~Mężczyzna jakby od niechcenia cofa się w kierunku ulicy. "Ruszaj dalej, panie."~ */
  IF ~~ THEN REPLY #27924 /* ~"Co tutaj robisz?"~ */ GOTO 11
  IF ~~ THEN REPLY #27925 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #27926 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 11.1 12.1 13.1 14.0
  SAY #27927 /* ~"Pytania nie mają sensu, panie. Ruszaj dalej."~ */
  IF ~~ THEN REPLY #27928 /* ~"Co tutaj robisz?"~ */ GOTO 11
  IF ~~ THEN REPLY #27929 /* ~"Potrzebuję tylko kilku odpowiedzi..."~ */ GOTO 3
  IF ~~ THEN REPLY #27930 /* ~"Potrzebuję twojej pomocy..."~ */ GOTO 4
  IF ~~ THEN REPLY #27931 /* ~"A co, jeśli chcę sobie tu tylko postać?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27932 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #27933 /* ~Kiwa głową. "Więc porozmawiaj z jakimś obywatelem. Jestem na służbie... i nie będę rozmawiał ani z tobą, ani z nikim innym. A teraz odjedź."~ */
  IF ~~ THEN REPLY #27934 /* ~"Czy przynajmniej możesz mi powiedzieć, co tutaj robisz?"~ */ GOTO 11
  IF ~~ THEN REPLY #27935 /* ~"Ale potrzebuję twojej pomocy..."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 4
  IF ~~ THEN REPLY #27936 /* ~"A co, jeśli mam ochotę tu postać?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27937 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1
  SAY #27938 /* ~Unosi broń. "Potrzebujesz pomocy? Czy popełniono zbrodnię?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #27939 /* ~"Cóż... nie. Mam tylko parę pytań."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #27940 /* ~"Cóż... nie. Mam tylko parę pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #27941 /* ~"Nie, nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27942 /* ~Wzdycha. "Rozumiem, że masz pytania i w innym miejscu, w innym czasie, byłbym skłonny ci pomóc. Ale..." Przestaje, podejrzliwie patrząc w dół schodów. "...ale teraz... po prostu odejdź, panie. Natychmiast."~ */
  IF ~~ THEN REPLY #27943 /* ~"Czy przynajmniej możesz mi powiedzieć, co tutaj robisz?"~ */ GOTO 11
  IF ~~ THEN REPLY #27944 /* ~"A co, jeśli mam ochotę tu postać?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27945 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #27946 /* ~"Słuchaj, trepie, mam..." Przestaje podejrzliwie patrząc w dół schodów. "...mam pewne obowiązki i nie mogę ich wykonywać, kiedy rozmawiam z jakimś pomylonym skurlem, który albo szuka takiego i owakiego, albo chce, by mu pokazać drogę cholera wie gdzie. Odejdź."~ */
  IF ~~ THEN REPLY #27947 /* ~"Czy przynajmniej możesz mi powiedzieć, co tutaj robisz?"~ */ GOTO 11
  IF ~~ THEN REPLY #27948 /* ~"A co, jeśli mam ochotę tu postać?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27949 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.2 5.1 6.1
  SAY #27950 /* ~Wzrusza ramionami, słychać brzęk jego zbroi. "Wolno ci tu stać, ale nie możesz łamać prawa. Sugeruję abyś odszedł, zanim będą... kłopoty. Żegnaj."~ */
  IF ~~ THEN REPLY #27951 /* ~"Czy przynajmniej możesz mi powiedzieć, co tutaj robisz?"~ */ GOTO 11
  IF ~~ THEN REPLY #27952 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 8 // from:
  SAY #27953 /* ~Wygląda na to, że ten funkcjonariusz Harmonium pilnuje schodów, które są za nim. Wydaje ci się, że spotkałeś już tego człowieka, ale przez wielkie hełmy i identyczne zbroje, ciężko jest odróżnić jednego od drugiego.~ */
  IF ~~ THEN REPLY #27954 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #27955 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 9 // from:
  SAY #27956 /* ~Rozpoznajesz go jako członka Harmonium, frakcji, która ostatnio się tobą interesowała. Chyba jeszcze cię nie zauważył.~ */
  IF ~~ THEN REPLY #27957 /* ~"Witaj..."~ */ GOTO 10
  IF ~~ THEN REPLY #27958 /* ~Odejdź, zanim cię zauważy.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27959 /* ~W otworach hełmu widać jego rozszerzone oczy. "To on!" Przygotowuje się do ataku, rycząc: "Brać go, żywego lub martwego!"~ */
  IF ~~ THEN REPLY #27960 /* ~Broń się.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.0 2.0 3.0 5.0 6.0 7.0
  SAY #27961 /* ~Pokazuje drzwi za sobą, które wydają się schodzić pod miasto. "Pilnuję tych schodów, panie."~ */
  IF ~~ THEN REPLY #27962 /* ~"Dlaczego? Dokąd prowadzą?"~ */ GOTO 12
  IF ~~ THEN REPLY #27963 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #27964 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #27965 /* ~"Do Krainy Poniżej." Widząc wyraz twej twarzy, kontynuuje. "PodSigil, być może słyszałeś już tę nazwę."~ */
  IF ~~ THEN REPLY #27966 /* ~"Czy jest jakiś powód, dla którego nie chcesz, by ludzie tam wchodzili?"~ */ GOTO 13
  IF ~~ THEN REPLY #27967 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #27968 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #27969 /* ~Chichocze, płyty jego zbroi grzechoczą. "Uważam na wszystko, co wychodzi *stamtąd*, panie. Na to, co nie *pasuje* do Sigil."~ */
  IF ~~ THEN REPLY #27970 /* ~"Co jest tam w dole?"~ */ GOTO 14
  IF ~~ THEN REPLY #27971 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #27972 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #27973 /* ~"Nie interesuj się tym." Przez chwilę patrzy na ciebie z zaciekawieniem. "Myślisz o tym, aby zejść na dół, prawda? No cóż, bądź ostrożny. Plotki mówią o najstraszniejszych potworach, które mieszkają Na Dole."~ */
  IF ~~ THEN REPLY #27974 /* ~"Dzięki. Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #27975 /* ~"Dzięki za ostrzeżenie. Żegnaj."~ */ EXIT
END
