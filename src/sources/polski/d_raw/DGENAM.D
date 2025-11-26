// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENAM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63563 /* ~Widzisz młodego człowieka o znudzonym wyrazie twarzy. Twoja obecność nie robi na nim żadnego wrażenia.~ */
  IF ~~ THEN REPLY #63564 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #63565 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63566 /* ~Kiedy wypowiadasz formułę powitania, młodzieniec wzdryga się i obraca do ciebie. "Co? Czego chcesz?"~ */
  IF ~~ THEN REPLY #63567 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #63568 /* ~"Niczego. Mniejsza o to."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63569 /* ~"Kilka pytań... Nie. Jestem zajęty."~ */
  IF ~~ THEN REPLY #63570 /* ~"Czy możesz poświęcić mi kilka chwil?"~ */ GOTO 3
  IF ~~ THEN REPLY #63571 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63572 /* ~"Mam to gdzieś." Wzrusza ramionami i odwraca się do ciebie plecami.~ */
  IF ~~ THEN REPLY #63573 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63574 /* ~Widzisz obserwującego tłum młodzieńca. Jest niemal całkowicie pochłonięty śledzeniem gawiedzi, ale kątem oka dostrzega twoje przybycie i pozdrawia cię skinięciem głowy.~ */
  IF ~~ THEN REPLY #63575 /* ~"Witaj."~ */ GOTO 5
  IF ~~ THEN REPLY #63576 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63577 /* ~"Och, witaj, przybyszu." Pomimo przyjemnego odzewu na twoje pytanie, mierzy cię podejrzliwym spojrzeniem od stóp do głów.~ */
  IF ~~ THEN REPLY #63578 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #63579 /* ~"Niczego. Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63581 /* ~"Więc proszę pytaj, o co chcesz."~ */
  IF ~~ THEN REPLY #63582 /* ~"Kim jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #63583 /* ~"Co tutaj robisz?"~ */ GOTO 8
  IF ~~ THEN REPLY #63584 /* ~"Co możesz mi powiedzieć o tej dzielnicy?"~ */ GOTO 9
  IF ~~ THEN REPLY #63585 /* ~"Czy w obrębie tej dzielnicy znajduje się coś szczególnie godnego uwagi?"~ */ GOTO 11
  IF ~~ THEN REPLY #63586 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63587 /* ~"Nikim ważnym. Czy chciałbyś mnie spytać o coś konkretnego?"~ */
  IF ~~ THEN REPLY #63588 /* ~"Tak. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #63589 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63590 /* ~"Obserwuję ten tłum. Lubię obserwować ludzi. To dla mnie fascynujące zajęcie."~ */
  IF ~~ THEN REPLY #63591 /* ~"Ach tak. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #63592 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63593 /* ~"Naprawdę niewiele. Ja osobiście przychodzę tu tylko po to, żeby obserwować tłum. Jest tu wiele placów targowych i ściąga tu wielu rozmaitych ludzi. A ja ich obserwuję, bo to lubię." Odwraca od ciebie spojrzenie.~ */
  IF ~~ THEN REPLY #63594 /* ~"A co można tutaj kupić?"~ */ GOTO 10
  IF ~~ THEN REPLY #63595 /* ~"Ach tak. Mam jeszcze kilka innych pytań."~ */ GOTO 6
  IF ~~ THEN REPLY #63597 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63598 /* ~Młodzieniec uśmiecha się. "Cóż. Niemal wszystko. Rozejrzyj się i rzuć w wir zakupów."~ */
  IF ~~ THEN REPLY #63599 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #63600 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63601 /* ~"Tak! Ci ludzie tutaj są niezwykle fascynujący. I tak różni... Ale wątpię, aby wiele osób podzielało moje zainteresowanie..."~ */
  IF ~~ THEN REPLY #63602 /* ~"Hmm. Mam jeszcze kilka innych pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #63603 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63604 /* ~Widzisz niespokojnego młodzieńca. Kiedy się do niego zbliżasz, posyła ci ciężkie spojrzenie.~ */
  IF ~~ THEN REPLY #63605 /* ~"Witaj."~ */ GOTO 13
  IF ~~ THEN REPLY #63606 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63607 /* ~Człowiek ten obrzuca cię znudzonym spojrzeniem. "Uch... Cześć."~ */
  IF ~~ THEN REPLY #63608 /* ~"Mam kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #63609 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63610 /* ~"Zatem poszukaj sobie oprowadzacza." Krzywi się.~ */
  IF ~~ THEN REPLY #63611 /* ~"Czy możesz poświęcić mi kilka chwil?"~ */ GOTO 15
  IF ~~ THEN REPLY #63612 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63613 /* ~Grymas na jego twarzy pogłębia się. "Doprawdy dbam o to tyle, co o szczurze łajno..."~ */
  IF ~~ THEN REPLY #63614 /* ~"A zatem nie zechcesz mi pomóc?"~ */ GOTO 16
  IF ~~ THEN REPLY #63615 /* ~"Ach tak. Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63616 /* ~Młodzieniec posyła ci nieprzyjemne spojrzenie, prycha i odwraca się. "Tępy skurl..."~ */
  IF ~~ THEN REPLY #63617 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63618 /* ~Widzisz uczestnika wyprzedaży. Kiedy próbujesz go zagadnąć, daje ci do zrozumienia niedwuznacznymi ruchami dłoni, abyś poszedł precz.~ */
  IF ~~ THEN REPLY #63619 /* ~Odejdź.~ */ EXIT
END
