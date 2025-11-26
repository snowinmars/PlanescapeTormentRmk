// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGDRIX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGDRIX~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37412 /* ~Widzisz wysokiego mężczyznę w zbroi płytowej. Jest ona niezwykłej konstrukcji, naramienniki, nałokietniki i ochraniacze przedramion zakończone są kolcami. Kiwa głową, gdy podchodzisz. "Dzień dobry, obywatelu."~ */
  IF ~~ THEN REPLY #37413 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37414 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37415 /* ~"W czym mogę ci pomóc, obywatelu?" Obdarza cię przyjaznym spojrzeniem.~ */
  IF ~~ THEN REPLY #37416 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37417 /* ~"Myślę, że nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.0 7.2 8.1 9.0 11.0 12.0
  SAY #37418 /* ~Uśmiecha się. "Oczywiście, obywatelu."~ */
  IF ~~ THEN REPLY #37419 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37420 /* ~"Szukam kogoś, kto nazywa się Lotar, albo Pan Kości..."~ */ GOTO 7
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37421 /* ~"Miałem czaszkę, ale ktoś mi ją ukradł. Znasz kogoś, kto mógłby to zrobić?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #37422 /* ~"Muszę kupić broń."~ */ GOTO 11
  IF ~~ THEN REPLY #37423 /* ~"Muszę kupić magiczne przedmioty."~ */ GOTO 11
  IF ~~ THEN REPLY #37459 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37424 /* ~Kłania się lekko. "Jestem strażnikiem Harmonium i nazywam się Drixel. Pilnuję porządku, tu, na rynku."~ */
  IF ~~ THEN REPLY #37425 /* ~"Opowiedz mi o Harmonium."~ */ GOTO 4
  IF ~~ THEN REPLY #37426 /* ~"Mam też inne pytania..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37427 /* ~Staje na baczność. "Nasza wiara jest prosta: Jesteśmy światłem. Jesteśmy Drogą. Jesteśmy Porządkiem. Jesteśmy Prawdą." Jego twarz przybiera ostry wyraz. "Nawet się nie zastanawiałem, czy do nich wstąpić. Widzisz, niektóre trepy tylko gadają o bitwie, o przywróceniu porządku i harmonii, ale nie mają dość ikry by cokolwiek w tym kierunku zrobić. Tylko my, Harmonium, coś robimy. Utrzymujemy porządek na ulicach Sigil i w Sferach." Na poparcie swoich słów kiwa głową.~ */
  IF ~~ THEN REPLY #37428 /* ~"Mów dalej."~ */ GOTO 5
  IF ~~ THEN REPLY #37429 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37430 /* ~Gdy mówi, wydaje się jeszcze bardziej śmiały. "Nie utrzymujemy porządku słowami. Walczymy, walczymy ciężko, by utrzymać i narzucać porządek. Kanciarze, macherzy, Autonomi, Anarchiści, Kaosyci, psy tanar'ri... wszyscy niech lepiej uważają na Harmonium. Chaos istnieje tylko wtedy, gdy się go toleruje!"~ */
  IF ~~ THEN REPLY #37431 /* ~"Co możesz mi powiedzieć o innych frakcjach?"~ */ GOTO 6
  IF ~~ THEN REPLY #37432 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37433 /* ~Wygląda raczej na znudzonego, wzrusza ramionami. "Nic. Nie są częścią Prawdy, czyli Harmonium. Nie interesowałem się nimi."~ */
  IF ~~ THEN REPLY #37434 /* ~"Mam jeszcze inne pytania..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 2.1 10.0
  SAY #37435 /* ~Rzuca ci oniemiałe spojrzenie, zaczyna coś mówić, przestaje i znów zaczyna. "Ach, no dobrze... nikt nie wie na pewno gdzie jest Lotar, obywatelu. Nie złamał żadnych praw, które znamy, więc my, w Harmonium, dajemy mu spokój. Uch... lepiej byś zrobił to samo."~ */
  IF ~~ THEN REPLY #37436 /* ~"Dlaczego?"~ */ GOTO 8
  IF ~~ THEN REPLY #37437 /* ~"A jednak muszę go znaleźć."~ */ GOTO 9
  IF ~~ THEN REPLY #37438 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37439 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37440 /* ~Patrzy na ciebie z poirytowaniem. "Ponieważ, trepie. Nie zaczyna się z kimś tak potężnym jak Lotar bez powodu i wsparcia wielu przyjaciół! Oto dlaczego."~ */
  IF ~~ THEN REPLY #37441 /* ~"A jednak muszę go znaleźć."~ */ GOTO 9
  IF ~~ THEN REPLY #37442 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37443 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #37444 /* ~Przez jakiś czas patrzy na ciebie, potem odpowiada. "Bardzo dobrze. Znajdziesz wejście do jego leża w zniszczonym budynku tutaj, w tej dzielnicy." Uważnie cię studiuje.~ */
  IF ~~ THEN REPLY #37445 /* ~"Dziękuję. Mam jeszcze parę pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37446 /* ~Przez jakiś czas patrzy na ciebie, następnie odpowiada. "Wygląda to na coś, co zrobiłby Lotar, Pan Kości." Rozgląda się nerwowo, a potem zwraca się do ciebie. "Cóż, nie on sam, ale jeden z jego popleczników. Lotar zawsze ma czyste ręce."~ */
  IF ~~ THEN REPLY #37448 /* ~"Gdzie znajdę tego 'Lotara'?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 2.3 2.4
  SAY #37449 /* ~Pokazuje na rynek. "Mnóstwo tu kupców, obywatelu. Na pewno znajdziesz tu to, czego potrzebujesz."~ */
  IF ~~ THEN REPLY #37450 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37452 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #37454 /* ~Drixel kłania się lekko. "Witam ponownie, obywatelu. Czym mogę służyć?"~ */
  IF ~~ THEN REPLY #37455 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37456 /* ~"Nieważne. Żegnaj."~ */ EXIT
END
