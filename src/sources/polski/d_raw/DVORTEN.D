// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVORTEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DVORTEN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42519 /* ~Widzisz urzędnika Harmonium. Na twój widok posyła ci znudzone spojrzenie.~ */
  IF ~~ THEN REPLY #44833 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #44834 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42520 /* ~Urzędnik posyła ci znudzone spojrzenie. "Witaj, obywatelu. Narzędnik 3 Vorten jest do twoich usług."~ */
  IF ~~ THEN REPLY #44838 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44839 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 5.0
  SAY #44835 /* ~Urzędnik wzdycha. "Nie chciałbym, żeby to zabrzmiało niegrzecznie, ale jestem w pracy i nie mam czasu na odpowiadanie na żadne pytania." Milknie na chwilę. "Jeżeli szukasz informacji, idź porozmawiaj z Ebbem Skrzypiącym."~ */
  IF ~~ THEN REPLY #44836 /* ~"Kim jest ten Ebb Skrzypiący?"~ */ GOTO 3
  IF ~~ THEN REPLY #44837 /* ~"A gdzie można go spotkać?"~ */ GOTO 4
  IF ~~ THEN REPLY #44840 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44841 /* ~"To mój stary przyjaciel. Myślę, że ma się za kogoś w rodzaju oprowadzacza, więc zapewne nie poskąpi ci śpiewki na temat dosłownie wszystkiego."~ */
  IF ~~ THEN REPLY #44842 /* ~"A gdzie można go spotkać?"~ */ GOTO 4
  IF ~~ THEN REPLY #44843 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #44844 /* ~Urzędnik zastanawia się przez moment. "Kiedy go ostatnim razem widziałem, biesiadował w gospodzie 'Pod Gorejącym Człekiem'. Znajdziesz tę knajpę w Ulu."~ */
  IF ~~ THEN REPLY #44845 /* ~"Dzięki. Bywaj zdrów."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #44846 /* ~Widzisz Narzędnika 3 Vortena, funkcjonariusza Harmonium. Vorten wita cię nieznacznym skinięciem głowy. "Witaj ponownie."~ */
  IF ~~ THEN REPLY #44847 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #44848 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END
