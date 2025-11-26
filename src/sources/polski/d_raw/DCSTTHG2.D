// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9902 /* ~Widzisz mężczyznę w zbroi, z mieczem przywieszonym u boku. Czujnie cię obserwuje, gdy się do niego zbliżasz.~ */
  IF ~~ THEN REPLY #9903 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #9904 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9905 /* ~Przytakuje ci, po czym mówi szybko. "I ty witaj. Czego chcesz?"~ */
  IF ~~ THEN REPLY #9906 /* ~"Chcę ci zadać kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #9907 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9908 /* ~"Dopiero co przybyłem do Klątwy, wątpię więc, czy będę potrafił odpowiedzieć na twoje pytania. Mimo wszystko spróbuję."~ */
  IF ~~ THEN REPLY #9909 /* ~"Czy słyszałeś o devie, który być może przebywa w tym mieście?"~ */ GOTO 3
  IF ~~ THEN REPLY #9910 /* ~"Jeśli wolno mi spytać - po co przybyłeś do Klątwy?"~ */ GOTO 5
  IF ~~ THEN REPLY #9911 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9912 /* ~Spogląda na ciebie zdziwiony. "Deva. Nie, muszę przyznać, że nie słyszałem. Po co deva miałby tu przybyć? Niewiele to ma - jeśli w ogóle ma - sensu."~ */
  IF ~~ THEN REPLY #9913 /* ~"Tak, cóż... Po co przybyłeś do Klątwy?"~ */ GOTO 5
  IF ~~ THEN REPLY #9914 /* ~"Nie mam pojęcia. Muszę już iść."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 5.2 6.1 7.0
  SAY #9915 /* ~"Cóż. Życzę ci powodzenia. Żegnaj."~ */
  IF ~~ THEN REPLY #9916 /* ~"Ja tobie również."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.0
  SAY #9917 /* ~"Z zawodu jestem najemnikiem. Powiedziano mi, że tu, w Klątwie, jest robota do wykonania. Przyszedłem więc, by się zwerbować. Jednakże przeważająca cześć tego cholernego miasta została zamknięta z powodu plagi, tak więc nie mogę dojść tam, gdzie potrzebuję."~ */
  IF ~~ THEN REPLY #9918 /* ~"Co wiesz o tej pladze?"~ */ GOTO 6
  IF ~~ THEN REPLY #9919 /* ~"A gdzie próbujesz się dostać?"~ */ GOTO 7
  IF ~~ THEN REPLY #9920 /* ~"Rozumiem. Czas mi już się pożegnać."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9921 /* ~Wzrusza ramionami. "Prawdę mówiąc nic. Powiedziano mi, że wybuchła niespodziewanie, ale została szybko opanowana poprzez odizolowanie wszystkich zarażonych części miasta." Klnie. "Cholerna przeszkoda. Nie mogę się teraz spotkać z moim łącznikiem."~ */
  IF ~~ THEN REPLY #9922 /* ~"Gdzie się musisz udać?"~ */ GOTO 7
  IF ~~ THEN REPLY #9923 /* ~"Dziękuję. Muszę już iść."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #9924 /* ~"Do karczmy 'U Poćwiartowanego'. To miejsce zebrań najemników. Ale teraz nie można się dostać do tej części miasta."~ */
  IF ~~ THEN REPLY #9925 /* ~"Rozumiem. Muszę już iść."~ */ GOTO 4
END
