// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRNGHCP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DRNGHCP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38437 /* ~Ta ghulica zachowuje się, jakby była ważniejsza od pozostałych. Jej spojrzenie wydaje się być bardziej przejrzyste. "W... w czym mogę ci pomóc, mięsaku?"~ */
  IF ~~ THEN REPLY #38438 /* ~"Kim jesteś? Co tu robisz?"~ */ GOTO 1
  IF ~~ THEN REPLY #38439 /* ~"Co to za miejsce?"~ */ GOTO 2
  IF ~~ THEN REPLY #38440 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #38441 /* ~"Ja? Jesssstem... Alaina. To są moje ghule. Jesteśmy zwiadowcami i myśliwymi. Szzzzzukamy nowych terytoriów... nowego *pożywienia*. A teraz, kiedy ja już odpowiedziałam na twoje pytania... ccccco TY tu robisz?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38442 /* ~"Szukam pewnej kuli z brązu."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38443 /* ~"Szukam karafki z wodą."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38444 /* ~"Szukam pewnej krypty, w której aż roi się od pułapek."~ */ GOTO 5
  IF ~~ THEN REPLY #38445 /* ~"Tylko sobie spaceruję."~ */ GOTO 6
  IF ~~ THEN REPLY #38446 /* ~"Nie wiem."~ */ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.1 8.1
  SAY #38447 /* ~"To Zzzatopione Ziemie. Dla nasss to teren polowań. Tu rządzzzimy my, myśliwi. Czego tutaj chcesz?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38448 /* ~"Szukam pewnej kuli z brązu."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38449 /* ~"Szukam karafki z wodą."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38450 /* ~"Szukam pewnej krypty, w której aż roi się od pułapek."~ */ GOTO 5
  IF ~~ THEN REPLY #38451 /* ~"Tylko sobie spaceruję."~ */ GOTO 6
  IF ~~ THEN REPLY #38452 /* ~"Nie wiem."~ */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 8.2
  SAY #38453 /* ~"Kuli... z brązzzu? Nic takiego nie... zznaleźliśmy. Poszukaj w bardziej oddalonych częściach, a może zznajdziesz to, czego szukasz."~ */
  IF ~~ THEN REPLY #38454 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #38455 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 8.3
  SAY #38456 /* ~"Nie znaleźliśmy tu źródła wody, ale wygląda na to, że najwilgotniej jest na wschodzie. Poszukaj tam, a może coś znajdziesz."~ */
  IF ~~ THEN REPLY #38457 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #38458 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 8.4
  SAY #38459 /* ~"Krypty otaczają nas ze wszystkich stron, a my ochraniamy tych, którzy w nich mieszkają... Nic ci nie powiem."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #38460 /* ~"Bardzo mi zależy, żeby ją znaleźć."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #38461 /* ~"Bardzo mi zależy, żeby ją znaleźć."~ */ GOTO 10
  IF ~~ THEN REPLY #38462 /* ~"No cóż. W takim razie odpowiedz mi na kilka innych pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #38463 /* ~"No cóż. W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3
  SAY #38464 /* ~"To... to nie jest dobre miejssssce na ssspacery. Tu bardzo niebezpiecznie. Moje ghule zaznaczyły granice strefy bezpieczeństwa, ustawiając totemy... nie zapuszczaj się poza nie, to nic ci się nie powinno stać. Wystrzegaj się tubylców - mogą być bardzo niebezpieczni, a ostatnio jest ich coraz więcej."~ */
  IF ~~ THEN REPLY #38465 /* ~"A kto miałby tu mieszkać?"~ */ GOTO 11
  IF ~~ THEN REPLY #38466 /* ~"Dziękuję. Mam jeszcze parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #38467 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.4 2.4
  SAY #38468 /* ~"Nie wiesz? Nie wiesz? Może... powinieneś sobie stąd iść. To miejsce jest... niebezpieczne... dla mięsaków."~ */
  IF ~~ THEN REPLY #38469 /* ~"Niebezpieczne? Dlaczego?"~ */ GOTO 11
  IF ~~ THEN REPLY #38470 /* ~"Mam tylko kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #38471 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0 4.0 5.2 6.1 7.1 9.0 10.0 11.0 12.0
  SAY #38472 /* ~"Powiem ci... co tylko będę mogła."~ */
  IF ~~ THEN REPLY #38473 /* ~"Kim jesteś i co tu robisz?"~ */ GOTO 1
  IF ~~ THEN REPLY #38474 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 2
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38475 /* ~"Szukam pewnej kuli z brązu."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38476 /* ~"Szukam karafki z wodą."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38477 /* ~"Szukam pewnej krypty, w której aż roi się od pułapek."~ */ GOTO 5
  IF ~~ THEN REPLY #38478 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #38479 /* ~Przywódczyni ghuli spogląda na ciebie zimnym wzrokiem, jakby cię oceniała. "Posssszzukaj na południowym-wschodzie. Nie mąć spokoju mieszkańców krypt, bo gorzko tego pożałujesz."~ */
  IF ~~ THEN REPLY #38480 /* ~"Dziękuję. Mam jeszcze parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #38481 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #38482 /* ~Przywódczyni ghuli spogląda na ciebie, a w jej oczach pojawia się gniew. "*Nic* mnie nie obchodzi, że bardzo ci na tym zależy. *Nic* ci nie powiem."~ */
  IF ~~ THEN REPLY #38483 /* ~"Dobrze, dobrze. Odpowiedz mi tylko na kilka pytań."~ */ GOTO 8
  IF ~~ THEN REPLY #38484 /* ~"Gadaj albo zginiesz."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38485 /* ~"No cóż, dziękuję, że poświęciłaś mi swój czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0 7.0
  SAY #38486 /* ~"To miejsce aż roi się... od trokopotaków, białych, rogatych stworzeń o nieograniczonym apetycie i skłonności do okrucieństwa. Oprócz tego mieszka tu wiele wargulców, a jest ich coraz więcej, od kiedy przybyło głupców, którzy zapuszczają się tak głęboko w katakumby."~ */
  IF ~~ THEN REPLY #38487 /* ~"Rozumiem... Możesz mi odpowiedzieć na kilka pytań?"~ */ GOTO 8
  IF ~~ THEN REPLY #38488 /* ~"Dziękuję za rady. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #38489 /* ~"Wróciłeś. Czego chcesz?"~ */
  IF ~~ THEN REPLY #38490 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #38491 /* ~"Nic. Żegnaj."~ */ EXIT
END
