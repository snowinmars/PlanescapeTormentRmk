// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDYLANA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDYLANA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57455 /* ~Widzisz kobietę w średnim wieku noszącą postrzępione ubranie. Gdy się do nie zbliżasz, przygląda ci się z otwartą wrogością.~ */
  IF ~~ THEN REPLY #57456 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #57457 /* ~Zignoruj ją.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57458 /* ~"Szpicuj się, trepie. Zmiataj stąd jak najszybciej..." Wpatruje się w ciebie.~ */
  IF ~~ THEN REPLY #57459 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #57460 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57461 /* ~Rzuciła ci gniewne spojrzenie. "Żeś ciemny czy kompletnie durny? Rzekłam ci, byś się szpicował. Mam gdzieś ciebie te i twoje pytania!"~ */
  IF ~~ THEN REPLY #57462 /* ~"Jeśli mi odpowiesz na kilka pytań, to sobie pójdę..."~ */ GOTO 3
  IF ~~ THEN REPLY #57463 /* ~"Nie podoba mi się twoja postawa. Będę chyba musiał pięścią uzyskać te odpowiedzi."~ */ GOTO 11
  IF ~~ THEN REPLY #57464 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.1 5.1 6.0 7.0 8.1 9.1 10.0 11.0 12.0
  SAY #57465 /* ~Spojrzała na ciebie wściekle. "Dobra, ale się streszczaj."~ */
  IF ~~ THEN REPLY #57466 /* ~"Kim jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #57467 /* ~"Co mogłabyś mi powiedzieć o tym miejscu?"~ */ GOTO 7
  IF ~~ THEN REPLY #57468 /* ~"Szukam devy. Jak rozumiem, jest gdzieś tu na dole."~ */ GOTO 8
  IF ~~ THEN REPLY #57469 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57470 /* ~"Nie wiem, co cię to..." Przerwała. "Dylana."~ */
  IF ~~ THEN REPLY #57471 /* ~"Dlaczego tu jesteś?"~ */ GOTO 5
  IF ~~ THEN REPLY #57472 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #57473 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57474 /* ~Westchnęła. "Pracowałam z takim szmuglerem jednym, co to piwo i takie tam do miasta sprowadzał. Jednej nocki straże nas przydybały. On se drogę na wolność wykupił, a mnie zostawił, bym sczezła." Wzruszyła ramionami. "No i jestem tu."~ */
  IF ~~ THEN REPLY #57475 /* ~"Zdaje się, że jesteś mu coś dłużna."~ */ GOTO 6
  IF ~~ THEN REPLY #57476 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #57477 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57478 /* ~Uśmiechnęła się. "Ta. A tak w ogóle to ma na imię Voorsha. Jeśli się kiedyś na niego nadziejesz, pilnuj się."~ */
  IF ~~ THEN REPLY #57479 /* ~"Będę. Mam kilka innych pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #57480 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY #57481 /* ~"A co tu można rzec? Niech mnie Baator, toż to więzienie! Zlatuje ci życie w celi i modlisz się o dzień, w którym znów ujrzysz światło dzienne."~ */
  IF ~~ THEN REPLY #57482 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #57483 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY #57484 /* ~Zamyśliwszy się, patrzyła na ciebie pochmurnie. "Nie, skądże. Nie twierdzę, że każdy tu jest mi znajomy, ale devę to raczej trudno przegapić. Gdyby był w tym kręgu, to bym o tym wiedziała."~ */
  IF ~~ THEN REPLY #57485 /* ~"Tym kręgu?"~ */ GOTO 9
  IF ~~ THEN REPLY #57486 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #57487 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57488 /* ~"Ta. Więzienie ustawiono jako serię trzech kręgów: zewnętrznego, centralnego i wewnętrznego. Im gorsza zbrodnia, tym głębiej leziesz."~ */
  IF ~~ THEN REPLY #57489 /* ~"Który to krąg?"~ */ GOTO 10
  IF ~~ THEN REPLY #57490 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #57491 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #57492 /* ~"Centralny. Gorzej niż w zewnętrznym, acz nie tak źle jak w wewnętrznym."~ */
  IF ~~ THEN REPLY #57493 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #57494 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #57495 /* ~Zaczęła mówić coś do ciebie, po czym przerwała. "Ta... Masz wygląd takiego, co może to zrobić."~ */
  IF ~~ THEN REPLY #57496 /* ~"No? Zamierzasz odpowiedzieć na moje pytania?"~ */ GOTO 3
  IF ~~ THEN REPLY #57497 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #57498 /* ~Dostrzegasz Dylanę. Nie wydaje się być zbytnio szczęśliwa widząc cię. "Znowu ty... Czemu?"~ */
  IF ~~ THEN REPLY #57499 /* ~"Mam kilka pytań..."~ */ GOTO 3
END
