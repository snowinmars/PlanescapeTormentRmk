// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_CRTKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_CRTKR~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dgrace")
~ THEN BEGIN 0 // from:
  SAY #66521 /* ~Człowiek wygląda na lekko poruszonego twoim widokiem. Kiwa głową na przywitanie. "Witaj, panie! Można wiedzieć, jak się tutaj dostałeś?"~ */
  IF ~~ THEN REPLY #66522 /* ~"Po prostu zszedłem tu tamtymi schodami. I przeszedłem przez dziwne drzwi, które tam znalazłem."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66660 /* ~"Zatem chyba będę musiał się postarać, żeby były mniej widoczne." Mężczyzna odpręża się, wzrusza ramionami i uśmiecha się do ciebie. "Nawiasem mówiąc, jestem dozorcą Przybytku. Nie powinieneś tutaj przebywać, ale jeżeli już jesteś, to możesz się trochę rozejrzeć."~ */
  IF ~~ THEN REPLY #66665 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #66666 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("Dgrace")
~ THEN BEGIN 2 // from:
  SAY #66661 /* ~"Och witaj znowu! Słuchaj... Naprawdę lepiej byłoby, gdybyś wrócił z powrotem na górę. Nie wolno ci tutaj przebywać. W każdym razie nie baw tutaj zbyt długo, bo inaczej i ja, i ty, będziemy mieli spore kłopoty.~ */
  IF ~~ THEN REPLY #66667 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #66668 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #66662 /* ~Dozorca uśmiecha się nerwowo. "Właściwie to nie powinienem pozwolić ci tutaj przebywać, nie mówiąc już o prowadzeniu z tobą rozmów. Dlatego proszę, żadnych pytań."~ */
  IF ~~ THEN REPLY #66669 /* ~"Powiedz mi przynajmniej, co to za miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #66670 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #66663 /* ~"To miejsce, w którym gromadzone są kamienie doznań wszystkich tutejszych dam. Kamienie te służą im jako rodzaj pamiętników. Ale jeżeli sądzisz, że będziesz mógł do nich zajrzeć, to pozwól, że szybko pozbawię cię takich złudzeń... Musisz wiedzieć, że każdy kamień jest ściśle dostrojony do konkretnej uczennicy z Przybytku. I nikt inny poza tą osobą nie jest w stanie z takiego kamienia skorzystać."~ */
  IF ~~ THEN REPLY #66671 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ JOURNAL #66672 /* ~W obszernej komnacie niedaleko Przybytku spotkałem Dozorcę. W komnacie tej znajdują się prywatne kamienie doznań każdej z kurtyzan. Spełniają one role pamiętników tych dam. Dozorca zwrócił mi jednak uwagę, że kamienie te są ściśle dostrojone do konkretnej dziewczyny, więc nie mam co nawet myśleć o tym, że będę mógł zapoznać się z ich zawartością.~ */ EXIT
END

IF ~  NearbyDialog("Dgrace")
~ THEN BEGIN 5 // from:
  SAY #66664 /* ~"Witaj, panie." Mężczyzna odwraca się ku Nie-Sławie. "I witaj, Pani Sławo. Wedle poleceń, zajmę się teraz kamieniami doznań na czas twojej nieobecności." Mężczyzna odwraca się z powrotem do ciebie. "Wybacz, panie, ale czeka na mnie sporo sprawunków. Żegnaj."~ */
  IF ~~ THEN REPLY #66673 /* ~Odejdź.~ */ EXIT
END
