// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37758 /* ~Widzisz człowieka o smutnej twarzy. Kiedy go mijasz, patrzy się na ciebie wzrokiem pełnym beznadziei.~ */
  IF ~~ THEN REPLY #37770 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37771 /* ~Zignoruj go.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37759 /* ~Spogląda wokoło, po czym jego wzrok spoczywa na tobie. "Chciałeś czegoś, trepie?"~ */
  IF ~~ THEN REPLY #37772 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37773 /* ~"Mniejsza z tym. Żegnaj."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37760 /* ~Potrząsa odmownie głową. "Wiesz co, trepie? Niby dlaczego mam odpowiadać na twoje głupie pytania. Odszpicuj się!"~ */
  IF ~~ THEN REPLY #37774 /* ~"Dlaczego, co się tu dzieje?"~ */ GOTO 3
  IF ~~ THEN REPLY #37775 /* ~"Rozumiem, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37761 /* ~Spogląda na ciebie. "To blok aukcyjny, Tępaku. Sprzedają mnie jako niewolnika! Teraz spadaj w ślepaki."~ */
  IF ~~ THEN REPLY #37776 /* ~"Dlaczego cię sprzedają?"~ */ GOTO 4
  IF ~~ THEN REPLY #37777 /* ~"Co to znaczy spadać w ślepaki?"~ */ GOTO 9
  IF ~~ THEN REPLY #37778 /* ~"Rozumiem, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 9.0
  SAY #37762 /* ~Obdarza cię sfrustrowanym wzrokiem. "Mam taką świetną osobowość, że zdecydowałem się sprzedać sam siebie i w ten sposób zarobić trochę brzdęku. Może byś się już ode mnie odchrzanił, ty parszywy skurlu!"~ */
  IF ~~ THEN REPLY #37779 /* ~"Chcę znać prawdziwy powód, dlaczego cię sprzedają."~ */ GOTO 5
  IF ~~ THEN REPLY #37780 /* ~"Rozumiem, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37763 /* ~Zaczyna się unosić, ale potem się poddaje. "Nieco wykrwawiłem jakiegoś skurla. Trochę sobie popiłem, posprzeczaliśmy się i włożyłem mu kosę między żebra." Wzdycha. "Dzięki mocom, że nie umarł. Gdybym go zabił, już siedziałbym w pace."~ */
  IF ~~ THEN REPLY #37781 /* ~"Co to jest kosa?"~ */ GOTO 6
  IF ~~ THEN REPLY #37782 /* ~"W pace?"~ */ GOTO 7
  IF ~~ THEN REPLY #37783 /* ~"Rozumiem. Więc sprzedają cię, bo się z kimś posprzeczałeś?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37764 /* ~Nieznajomy marszczy brwi. "Jesteś jakimś tępym skurlem, co? Kosa to nóż, idioto." Odwraca od ciebie swój wzrok. "Nie będę już odpowiadał na twoje pytania. Idź sobie stąd."~ */
  IF ~~ THEN REPLY #37784 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #37765 /* ~Nieznajomy marszczy brwi. "Tak, w pace. Jeśli cię tam poślą, to spędzisz tam większość swojego życia, i nie będzie to przyjemne. Jako niewolnik, nie będę miał tak źle, a poza tym w końcu zostanę wyzwolony." Odwraca od ciebie swój wzrok. "Nie będę już odpowiadał na twoje pytania. Idź sobie stąd."~ */
  IF ~~ THEN REPLY #37785 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #37766 /* ~Nieznajomy marszczy brwi. "Tak... Ten skurl, którego pochlastałem, był moim przyjacielem, więc nie wniósł skargi. Ale i tak musiałem szwędać się po sądach, no i skazali mnie na blok." Odwraca od ciebie swój wzrok. "Nie będę już odpowiadał na twoje pytania. Idź sobie stąd."~ */
  IF ~~ THEN REPLY #37786 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY #37767 /* ~Nieznajomy obdarza cię uśmiechem. "To znaczy: wybierz się na długi spacer przez jednostronny portal i nie wracaj stamtąd!"~ */
  IF ~~ THEN REPLY #37787 /* ~"Rozumiem. Dlaczego cię sprzedają?"~ */ GOTO 4
  IF ~~ THEN REPLY #37788 /* ~"Rozumiem, żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37768 /* ~Widzisz człowieka o smutnej twarzy. Kiedy go mijasz, patrzy się na ciebie wzrokiem pełnym beznadziei. "Tylko nie znowu ty. Dlaczego nie zostawisz mnie w spokoju?"~ */
  IF ~~ THEN REPLY #37789 /* ~"Mam kilka pytań..."~ */ GOTO 11
  IF ~~ THEN REPLY #37790 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #37769 /* ~Nieznajomy patrzy na ciebie ze złością. "Nie będę odpowiadał na twoje pytania. Szpicuj się, trepie!"~ */
  IF ~~ THEN REPLY #37791 /* ~"Rozumiem, żegnaj."~ */ EXIT
END
