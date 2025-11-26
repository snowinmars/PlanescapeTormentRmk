// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOWDEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOWDEN~

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_Lowden","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2883 /* ~Kiedy nadchodzisz, zniekształcone zwłoki Lowdena poruszają się niespokojnie. "Czego tam chce, co?"~ */
  IF ~~ THEN REPLY #2884 /* ~"Tylko odpowiedzi na kilka pytań, Lowdenie."~ */ GOTO 1
  IF ~~ THEN REPLY #20821 /* ~"Nic. Zapomnij o tym."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.2 3.1 4.1 5.0 6.0 7.0
  SAY #20822 /* ~"Może ci i powiem... a może i nie... Mów te swoje pytania..."~ */
  IF ~  Global("Know_Lowden","GLOBAL",0)
~ THEN REPLY #20823 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_BLDead","GLOBAL",1)
SetGlobal("Know_Lowden","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Know_Lowden","GLOBAL",1)
~ THEN REPLY #20824 /* ~"Opowiedz mi jeszcze raz o sobie."~ */ GOTO 2
  IF ~  Global("Know_Lowden","GLOBAL",1)
~ THEN REPLY #20825 /* ~"Co się stało z Grisem?"~ */ GOTO 4
  IF ~~ THEN REPLY #20826 /* ~"Jak umarłeś?"~ */ GOTO 3
  IF ~~ THEN REPLY #20827 /* ~"Opowiedz mi o katakumbach."~ */ GOTO 6
  IF ~~ THEN REPLY #20828 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #20829 /* ~"Jestem Lowden. Ja i Burt, od święta Gris, chociaż on, to nic ino dyspotyczny szpic, był z nami wtedy ostatnim razem - bylimy królami katakumb. Nie wim, gdzie jes Burt. Pewnie nie żyje."~ */
  IF ~~ THEN REPLY #20830 /* ~"Co ci się stało?"~ */ GOTO 3
  IF ~~ THEN REPLY #20831 /* ~"Co się stało z Grisem?"~ */ GOTO 4
  IF ~~ THEN REPLY #20832 /* ~"Niedobrze. Mam jeszcze kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #20833 /* ~"Prawdopodobnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0
  SAY #20834 /* ~"Źle sie zwrócilim, kiedy uciekalim z tego miejsca co wyrzucilim Grisa, przymkneli my tu, ale zanim zdalim se sprawe, że my źle zrobili, pocielimy sie i poprzecinali z góry na dół. Kawałki zleciały mi po kracie, a tera... heh... tera ani Grabarze nie zapłacom za te wszysko." Mokry chichot wydobywa się z jego ust, śmierdząc jak bagienne opary.~ */
  IF ~~ THEN REPLY #20835 /* ~"Co się stało z Grisem?"~ */ GOTO 4
  IF ~~ THEN REPLY #20836 /* ~"Och, ironio. Mam jeszcze kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #20837 /* ~"No nieźle, w porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.0
  SAY #20838 /* ~"Heh. Historia sama w sobie. Pomysł głównie mój, i z początku było w porząsiu - Burt nie kumał co robie. Rozejrzał sie dookoła, zwiedział sie, gdzie ghul sie ulokował, i wydumał, że tam zabierzem Grisa. Okazało sie, że z jednego ghula zrobiło sie więcej ghuli i prawie nas mieli. Wtaszczylim Grisa do środka i zmylim sie tak prędko jakbymy mieli Panią na karku. Bylim przekonani, że Gris nie żyje."~ */
  IF ~  Global("Know_Gris_Dead","GLOBAL",1)
~ THEN REPLY #20839 /* ~"Zgadza się."~ */ GOTO 5
  IF ~~ THEN REPLY #20840 /* ~"Prawdopodobnie. Mam jeszcze kilka innych pytań do ciebie."~ */ GOTO 1
  IF ~~ THEN REPLY #20841 /* ~"Wygląda na to, że ci się udało. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #20842 /* ~"Można by rzec, że szkoda, ale po mojemu to nie. Facet serce robaka miał, a dusze węża i dlatego nazwalim go Sęp. Skoro ja żem zginął, to fajnie, że jemu przytrafiło sie to samo."~ */
  IF ~~ THEN REPLY #20843 /* ~"Miło. Mam jeszcze kilka innych pytań do ciebie..."~ */ GOTO 1
  IF ~~ THEN REPLY #20844 /* ~"Miło. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY #20845 /* ~"Łkające Kamienie biorom swom nazwe od tego, że woda kapie z sufitu, a na ścianach som płaczące wizerunki. Na dole jes masa krypt, a złupilim jeszcze więcej. Szkoda ino, że my sie w nich zamotali, ale musiało tak być. Swego czasu znałem to miejsce jak własnom kieszeń, ale... teraz zaczynam mieć ścieme."~ */
  IF ~~ THEN REPLY #20846 /* ~"Odpowiedz mi jeszcze na kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #20847 /* ~"Miej więc dalej ścieme. Żegnaj."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #20848 /* ~To ciało zostało straszliwie zniekształcone. Wygląda jakby było spalone, poprzebijane nożem, poćwiartowane, utłuczone pałką i przeciśnięte przez kratę. Leży w dwóch kawałkach, w zaschniętej kałuży, zleżałej krwi. Jednak głos dochodzący z ciała jest właściwie łagodny, a przebija przez niego odcień szalonej radości. "No, trepie, czego tam chcesz?"~ */
  IF ~~ THEN REPLY #20849 /* ~"Odpowiedzi na kilka pytań.."~ */ GOTO 1
  IF ~~ THEN REPLY #20850 /* ~"Nic."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #20851 /* ~To ciało zostało straszliwie zniekształcone. Wygląda jakby było spalone, poprzebijane nożem, poćwiartowane, utłuczone pałką i przeciśnięte przez kratę. Leży w dwóch kawałkach, w zaschniętej kałuży, zleżałej krwi.~ */
  IF ~~ THEN REPLY #20852 /* ~"Nic, co? Trudno."~ */ EXIT
END
