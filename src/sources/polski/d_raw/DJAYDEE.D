// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJAYDEE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DJAYDEE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58535 /* ~Widzisz pracownika składu. Wydaje się być skupiony na pracy. Jeszcze cię nie zauważył.~ */
  IF ~~ THEN REPLY #58537 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #58540 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58542 /* ~Przerywa pracę i odwraca się. "W czym mogę pomóc?"~ */
  IF ~~ THEN REPLY #58543 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58547 /* ~"Nie, nie bardzo. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58549 /* ~Marszczy czoło. "Mam dużo pracy, nie mam czasu na pogaduszki. Przykro mi." Odwraca się.~ */
  IF ~~ THEN REPLY #58551 /* ~"Tylko jedno, krótkie pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #58553 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58554 /* ~Odwracając się wzdycha. "Jedno, krótkie pytanie... Wiesz ile razy dziennie to słyszę?" Przygląda ci się.~ */
  IF ~~ THEN REPLY #58556 /* ~"Uch... nie."~ */ GOTO 4
  IF ~~ THEN REPLY #58557 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58559 /* ~"Dobra, powiem ci... zbyt wiele! Za każdym razem jak jakiś skurlowaty trep wkurza mnie jak samo Baator, bo choć widzi, że jesteś zajęty, nie potrafi się powstrzymać i zadaje swoje cholerne, głupie pytanie. I zawsze jest to *krótkie* pytanie!" Obserwuje cię ze złością. "I wiesz co?"~ */
  IF ~~ THEN REPLY #58560 /* ~"Uch... nie. Co?"~ */ GOTO 5
  IF ~~ THEN REPLY #58562 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58563 /* ~Podnosi głos, zaczyna machać rękami. "Kłamie! Wie, że to nie będzie *krótkie* pytanie! Wie, że odpowiedź będzie skurlowato długa, jak esej, to znaczy jeśli ma być porządna. Ale! Mówi, że będzie krótkie! Wiesz dlaczego?"~ */
  IF ~~ THEN REPLY #58564 /* ~"Uch... nie. Dlaczego?"~ */ GOTO 6
  IF ~~ THEN REPLY #58566 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58567 /* ~"Bo myśli, że jesteś GŁUPI! Myśli, że nie zauważysz, że odpowiedź zajmuje ci niezwykle dużo czasu. Och nie! Powiedział, że to krótkie pytanie, więc nie ma znaczenia, że na odpowiedź tracisz pół godziny! Jesteś GŁUPI i tego nie zauważysz!"~ */
  IF ~~ THEN REPLY #58568 /* ~"Może przyjdę później..."~ */ GOTO 7
  IF ~~ THEN REPLY #58569 /* ~"Przepraszam, że przeszkadzam, widzę, że jesteś zajęty..."~ */ GOTO 9
  IF ~~ THEN REPLY #58571 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0
  SAY #58572 /* ~"Dlaczego? Już i tak mi przeszkodziłeś i przerwałeś myśli! Zadaj mi to skurlowate pytanie, zabierz godzinę mego cennego czasu i niech to się skończy." Patrzy na ciebie.~ */
  IF ~~ THEN REPLY #58573 /* ~"Szukam devy. Powiedziano mi, że jest w Klątwie."~ */ GOTO 8
  IF ~~ THEN REPLY #58574 /* ~"Chyba już pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58575 /* ~"Taaa, to też już słyszałem. Plotka głosi, że jest w więzieniu. Jeśli o to chodzi, musisz iść do budynku administracyjnego na rynku i o niego spytać. A teraz daj mi spokój..." Odwraca się.~ */
  IF ~~ THEN REPLY #58576 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #58577 /* ~Przerywa i spogląda na ciebie. "Zajęty? Widziałeś mój rozkład zajęć? Nie masz pojęcia, co znaczy zajęty, trepie." Pociąga nosem. "I do tego cholerstwo wciąż się zmienia, to najlepsza część skurlowatego rozkładu zajęć! Każdego dnia coś tam przybywa lub ubywa tak, żeby mogło znaleźć się tam coś innego."~ */
  IF ~~ THEN REPLY #58578 /* ~"Rozumiem. Chyba powinienem już iść..."~ */ GOTO 7
  IF ~~ THEN REPLY #58579 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #58580 /* ~Widzisz wzburzonego pracownika składu. Wydaje się być skupiony na pracy, dopóki cię nie zauważa. "Och, to znowu ty. Niech zgadnę, znów masz *krótkie* pytanie."~ */
  IF ~~ THEN REPLY #58581 /* ~"Nie, chyba już pójdę. Żegnaj."~ */ EXIT
END
