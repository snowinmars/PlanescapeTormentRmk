// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHPATROL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHPATROL~

IF ~  NumTimesTalkedTo(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #27619 /* ~Wielka postać w czerwonej zbroi stoi w miejscu, uważnie obserwując przechodniów. Przypominasz sobie, że ta ozdobna zbroja oznacza, że jest członkiem Harmonium, jednym z tych, którzy w mieście egzekwują prawo.~ */
  IF ~~ THEN REPLY #27632 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #27620 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #27621 /* ~Gdy mówi, jego oczy obserwują raczej przechodniów niż ciebie: "Odejdź."~ */
  IF ~~ THEN REPLY #27633 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #27634 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #27622 /* ~Chociaż i tak zwraca uwagę głównie na przechodniów, przez chwilę patrzy ci w oczy. "Nie ma tu nic dla ciebie. Odejdź."~ */
  IF ~~ THEN REPLY #27635 /* ~"Potrzebuję tylko paru odpowiedzi..."~ */ GOTO 3
  IF ~~ THEN REPLY #27636 /* ~"Potrzebuję twojej pomocy..."~ */ GOTO 4
  IF ~~ THEN REPLY #27637 /* ~"A co, jeśli mam ochotę tu postać?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27638 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27623 /* ~Potrząsa głową. "Więc porozmawiaj z jakimś obywatelem. Jestem na służbie... i nie będę rozmawiał ani z tobą, ani z nikim innym. A teraz odejdź."~ */
  IF ~~ THEN REPLY #27639 /* ~"Ale potrzebuję twojej pomocy..."~ */ GOTO 4
  IF ~~ THEN REPLY #27640 /* ~"A co, jeśli mam ochotę tu postać?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27641 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #27624 /* ~Unosi broń. "Potrzebujesz pomocy? Czy popełniono zbrodnię?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #27642 /* ~"Cóż... nie. Po prostu mam kilka pytań."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #27643 /* ~"Cóż... nie. Po prostu mam kilka pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #27644 /* ~"Nie, nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27625 /* ~Wzdycha. "Rozumiem, że masz pytania i w innym miejscu, w innym czasie, byłbym skłonny ci pomóc. Ale..." Przestaje, przez chwilę podejrzliwie patrzy na jakiegoś przechodnia,. "...ale teraz... po prostu odejdź, panie. Natychmiast."~ */
  IF ~~ THEN REPLY #27645 /* ~"A co jeśli mam tu ochotę postać?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27646 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #27626 /* ~"Słuchaj, trepie, mam..." Przerywa, podejrzliwie patrzy na jakiegoś przechodnia. "...mam pewne obowiązki i nie mogę ich wykonywać, kiedy rozmawiam z jakimś pomylonym skurlem, który albo szuka takiego i owakiego, albo chce, by mu pokazać drogę cholera wie gdzie. Odejdź."~ */
  IF ~~ THEN REPLY #27647 /* ~"A co jeśli mam tu ochotę postać?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27648 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2 3.1 5.0 6.0
  SAY #27627 /* ~Wzrusza ramionami, słychać brzęk jego zbroi. "Wolno ci tu stać, ale nie możesz łamać prawa. Sugeruję abyś odszedł, zanim będą... kłopoty. Żegnaj."~ */
  IF ~~ THEN REPLY #27649 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 8 // from:
  SAY #27628 /* ~Wygląda na to, że ten oficer Harmonium obserwuje ulicę i przechodniów, szukając jakiejkolwiek oznaki kłopotów. Wydaje ci się, że spotkałeś już tego człowieka, ale przez wielkie hełmy i identyczne zbroje, ciężko jest odróżnić jednego od drugiego.~ */
  IF ~~ THEN REPLY #27650 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #27651 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 9 // from:
  SAY #27629 /* ~Rozpoznajesz go jako członka Harmonium, frakcji, która ostatnio się tobą interesowała. Chyba jeszcze cię nie zauważył.~ */
  IF ~~ THEN REPLY #27631 /* ~"Witaj..."~ */ GOTO 10
  IF ~~ THEN REPLY #27652 /* ~Odejdź, zanim cię zauważy.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27630 /* ~W otworach hełmu widać jego rozszerzone oczy. "To on!" Przygotowuje się do ataku, rycząc: "Brać go, żywego lub martwego!"~ */
  IF ~~ THEN REPLY #27653 /* ~Broń się.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END
