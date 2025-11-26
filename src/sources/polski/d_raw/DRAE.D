// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58663 /* ~Widzisz starszą kobietę. Zauważywszy jak się zbliżasz, kobieta marszczy brwi i potrząsa głową.~ */
  IF ~~ THEN REPLY #58664 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #58665 /* ~Zignoruj ją.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58666 /* ~Kobieta parska. "Knebel, trepie. Zachowaj dla siebie te fantazyjne *powitanie* i mów czego chcesz?"~ */
  IF ~~ THEN REPLY #58667 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58668 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.0 7.1 8.1 9.1 10.0 11.0
  SAY #58669 /* ~"Więc pytaj." Przygląda ci się.~ */
  IF ~~ THEN REPLY #58670 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #58671 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 4
  IF ~~ THEN REPLY #58672 /* ~"Wiesz coś o devie znajdującym się tu, w podziemiach?"~ */ GOTO 7
  IF ~~ THEN REPLY #58673 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58674 /* ~"A niech mnie... ależ jesteś towarzyski. Mam na imię Rae, choć nie na wiele ci się to przyda."~ */
  IF ~~ THEN REPLY #58675 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58676 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58677 /* ~Kobieta spogląda wokół i wzrusza ramionami. "To jest więzienie. Podzielone na trzy sektory. W zewnętrznym znajdują się pospolici przestępcy. Środek przeznaczony jest dla gorszych typów oraz tych, którzy dopiero się tu zjawią. Tutaj, w wewnętrznym sektorze, znajdują się prawdziwi kryminaliści." Uśmiecha się do ciebie.~ */
  IF ~~ THEN REPLY #58678 /* ~"O jakiego rodzaju przestępstwach mowa?"~ */ GOTO 5
  IF ~~ THEN REPLY #58679 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58680 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58681 /* ~"W części zewnętrznej znajdują się drobni złodziejaszkowie i im podobni. W środkowej, głównie zbóje. Wypełniona jest ona zbirami, mięśniakami i podobnym elementem. Tutaj w części wewnętrznej znajdują się mordercy, bezwzględne rzezimieszki, konspiratorzy i jeszcze niebezpieczniejsze typy." Uśmiecha się.~ */
  IF ~~ THEN REPLY #58682 /* ~"Dlaczego tu jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #58683 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58684 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58685 /* ~Nagle wybucha śmiechem. "Ponieważ zrobiłam coś złego! W przeciwnym razie, co bym tutaj robiła."~ */
  IF ~~ THEN REPLY #58686 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58687 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #58688 /* ~Potrząsa głową. "Nie ma go tutaj, przebywa w specjalnej celi... a przynajmniej przebywał."~ */
  IF ~~ THEN REPLY #58689 /* ~"Co masz na myśli?"~ */ GOTO 8
  IF ~~ THEN REPLY #58690 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58691 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58692 /* ~"Więzienie rozbudowywane jest zazwyczaj przez więźniów z części zewnętrznej. To oni kopią wszystkie nowe pomieszczenia." Robi przerwę. Pewnego dnia przekopali się do pewnej komnaty, w której znajdował się twój deva. Przypuszczam, że wciąż tam jest."~ */
  IF ~~ THEN REPLY #58693 /* ~"Gdzie mogę go znaleźć?"~ */ GOTO 9
  IF ~~ THEN REPLY #58694 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58695 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58696 /* ~Kobieta marszczy brwi. "Właśnie ci powiedziałam, jembecylu. Znajduje się w części zewnętrznej!"~ */
  IF ~~ THEN REPLY #58697 /* ~"Kto to jest jembecyl?"~ */ GOTO 10
  IF ~~ THEN REPLY #58698 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58699 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58700 /* ~Kobieta kłuje cię w pierś kościstym palcem. "To ty, trepie. Najdoskonalszy przykład jembecyla, jaki dotąd widziałam."~ */
  IF ~~ THEN REPLY #58701 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58702 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #58703 /* ~Widzisz Rae. Śmieje się widząc jak się zbliżasz. "Czego chcesz tym razem, trepie?"~ */
  IF ~~ THEN REPLY #58704 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58705 /* ~"Nic. Żegnaj."~ */ EXIT
END
