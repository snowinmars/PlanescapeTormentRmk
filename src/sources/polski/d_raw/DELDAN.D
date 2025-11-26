// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELDAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DELDAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57545 /* ~Widzisz starszego człowieka z rzadkimi białymi włosami. Jego ubranie nie jest nowe, ale nie są to też łachmany jakie noszą inni więźniowie. Zauważasz otaczające go książki i zwoje. Unosi brew gdy podchodzisz.~ */
  IF ~~ THEN REPLY #57546 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #57547 /* ~Zignoruj go.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57548 /* ~Ogląda cię od stóp do głów i uśmiecha się. "Hmm... co my tu mamy? Kiepsko wyglądasz, młody człowieku..." Jeszcze przez chwilę uważnie ci się przygląda, potem wzrusza ramionami. "Cóż takiego chcesz ode mnie?"~ */
  IF ~~ THEN REPLY #57549 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57550 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.0 6.1 7.0 8.0 9.0
  SAY #57551 /* ~"Może będę mógł ci pomóc. Zadaj pytania." Uśmiecha się.~ */
  IF ~~ THEN REPLY #57552 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #57553 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 6
  IF ~~ THEN REPLY #57554 /* ~"Powiedziano mi, że tu na dole jest Deva. Wiesz coś o tym?"~ */ GOTO 8
  IF ~~ THEN REPLY #57555 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57556 /* ~"Jestem Eldan. Człowiek o niewielkim znaczeniu, który ma kiepski okres..."~ */
  IF ~~ THEN REPLY #57557 /* ~"Dlaczego tu jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #57558 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57559 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57560 /* ~Marszczy brwi. "Mój pracodawca nie potrzebował już moich usług. Zamiast zakończyć moją pracę i życie, wolał mnie tu pochować."~ */
  IF ~~ THEN REPLY #57561 /* ~"Dlaczego miałby to zrobić?"~ */ GOTO 5
  IF ~~ THEN REPLY #57562 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57563 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57564 /* ~"Maczał palce w podejrzanych praktykach handlowych, a ja byłem jego księgowym. Umieścił mnie tutaj, by ukryć swoje tajemnice... i utrzymać mnie z dala od tych, którzy chcieliby poznać jego sekrety." Wzdycha. "Podejrzewam, że to lepsze niż śmierć, ale tylko trochę."~ */
  IF ~~ THEN REPLY #57565 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57566 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #57567 /* ~Wzrusza ramionami. "Nie wiem nic poza faktem, że jest to więzienie. Od czasu mojego przybycia siedzę w tej celi i nie widzę potrzeby badania czegoś, co z całą pewnością nie jest bezpiecznym miejscem."~ */
  IF ~~ THEN REPLY #57568 /* ~"Nigdy nie opuszczasz swojej celi?"~ */ GOTO 7
  IF ~~ THEN REPLY #57569 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57570 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57571 /* ~"Nie..." Patrzy w dal.~ */
  IF ~~ THEN REPLY #57572 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57573 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #57574 /* ~Marszczy brwi i patrzy na ciebie pytająco. "Deva? Nie potrafię sobie tego wyobrazić... Dlaczego Deva miałby być tu, na dole?" Wzrusza ramionami.~ */
  IF ~~ THEN REPLY #57576 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57577 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #57575 /* ~Widzisz Eldana. Uśmiecha się gdy podchodzisz. "Ponownie zaszczycasz mnie swoją obecnością. Dlaczego?"~ */
  IF ~~ THEN REPLY #57578 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57579 /* ~"Nieważne, żegnaj."~ */ EXIT
END
