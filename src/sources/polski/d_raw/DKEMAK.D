// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKEMAK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKEMAK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57593 /* ~Widzisz mężczyznę w lichym ubraniu. Gdy podchodzisz wykonuje niegrzeczny gest.~ */
  IF ~~ THEN REPLY #57594 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #57595 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57596 /* ~"Weź se kij i szpicuj się, trepie." Obserwuje cię.~ */
  IF ~~ THEN REPLY #57597 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57598 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57599 /* ~"Nic mnie obchodzisz ty i twoje stuknięte pytania. Kazałem ci się szpicować, więc zjeżdżaj!"~ */
  IF ~~ THEN REPLY #57600 /* ~"Chyba trzeba cię nauczyć dobrych manier."~ */ GOTO 3
  IF ~~ THEN REPLY #57601 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57602 /* ~Uśmiecha się przebiegle. "Spróbuj, trepie. Jestem tu, ponieważ z łatwością zabijam takich tępych skurli jak ty..."~ */
  IF ~~ THEN REPLY #57604 /* ~"Jestem tu, ponieważ tak chcę i pójdę, kiedy będę gotów."~ */ GOTO 4
  IF ~~ THEN REPLY #57606 /* ~Zaatakuj go: "Lubię takie wyzwania..."~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #57611 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57614 /* ~Patrzy na ciebie przez chwilę, ważąc twe słowa. Widzisz, jak przebiega oczami przez twe liczne blizny, a następnie patrzy ci prosto w oczy. Po chwili nerwowo przełyka ślinę. "Mówisz poważnie... no nie?" Czeka na odpowiedź, a potem wzrusza ramionami. "No, więc czego chcesz?"~ */
  IF ~~ THEN REPLY #57615 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #57617 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.0 8.0 9.1 10.0 11.0
  SAY #57618 /* ~"No to pytaj..."~ */
  IF ~~ THEN REPLY #57620 /* ~"Kim jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #57621 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 8
  IF ~~ THEN REPLY #57622 /* ~"Szukam deva. Podobno gdzieś tu jest."~ */ GOTO 9
  IF ~~ THEN REPLY #57623 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57625 /* ~Waha się odpowiedzieć. "Kemak. Ale wszyscy mówią mi Kem. Niezbyt to lubię."~ */
  IF ~~ THEN REPLY #57626 /* ~"Dlaczego tu jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #57627 /* ~"Mam parę pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #57629 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57631 /* ~"Pewnej nocy opiłem się i wdałem w bójkę. Mówią, że zabiłem jakiegoś skurla... nie wiem, nie pamiętam." Wzrusza ramionami.~ */
  IF ~~ THEN REPLY #57632 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #57634 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #57635 /* ~"Nie wiem za wiele, jestem tu od początku..." Przerywa i myśli. "Zbudowano to jako kręgi: zewnętrzny, środkowy i wewnętrzny. Im gorszą zbrodnię popełniłeś, tym dalej idziesz. Tu, w wewnętrznym kręgu znajdują się wszystkie niebezpieczne typy."~ */
  IF ~~ THEN REPLY #57638 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #57640 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #57642 /* ~"Naprawdę?" Patrzy zaskoczony. "Dlaczego miałby tu być deva... chyba że zrobił coś naprawdę okropnego." Patrzy z wyczekiwaniem.~ */
  IF ~~ THEN REPLY #57644 /* ~"Nie wiem. Słyszałeś coś na jego temat?"~ */ GOTO 10
  IF ~~ THEN REPLY #57646 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #57647 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #57649 /* ~Potrząsa głową. "Nie, nic." Obdarza cię dowcipnym uśmiechem. "Rzadko stąd wychodzę, sam rozumiesz."~ */
  IF ~~ THEN REPLY #57651 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #57652 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #57653 /* ~Widzisz Kemaka. Gdy podchodzisz marszczy czoło. "To znowu ty, jakże mi miło. Czego chcesz?"~ */
  IF ~~ THEN REPLY #57655 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #57657 /* ~"Nic. Żegnaj."~ */ EXIT
END
