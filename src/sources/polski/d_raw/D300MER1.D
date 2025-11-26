// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17240 /* ~Mężczyzna o surowej twarzy sprzedaje różnego rodzaju uzbrojenie. "Ach, podejdź tu! Chodź, zobacz moje ostrza."~ */
  IF ~~ THEN REPLY #17302 /* ~"Dobrze."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17303 /* ~"Nie, ale mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #17304 /* ~"Nie, jestem tu przypadkowo. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17244 /* ~"No i znowu się spotykamy, śmiałku. Przyszedłeś kupić najlepsze wyroby ze stali, jakie można dostać w Sigil?"~ */
  IF ~~ THEN REPLY #17305 /* ~"Tak."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17306 /* ~"Nie, ale mam parę pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #17309 /* ~"Nie, jestem tu przypadkiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #17246 /* ~"Mam swoją robotę, panie..." Nagle odwraca głowę i kaszle w dłoń. "Przepraszam. Tak jak mówiłem, nie mogę przestać sprzedawać tylko po to, aby z tobą pomówić."~ */
  IF ~~ THEN REPLY #17311 /* ~"Źle się czujesz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Merch1_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #17316 /* ~"Pokaż mi więc swoje towary."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17317 /* ~"A więc zapłacę za twój czas."~ */ GOTO 3
  IF ~~ THEN REPLY #17318 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY #17254 /* ~Stary sprzedawca rozgląda się przez chwilę. Gdy jest już pewien, że w pobliżu nie ma żadnych potencjalnych klientów, wyciąga do ciebie dłoń.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #17319 /* ~Daj mu trzy miedziaki.~ */ DO ~TakePartyGold(3)
~ GOTO 4
  IF ~~ THEN REPLY #17353 /* ~"Nieważne. Pokaż mi swoje towary."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17355 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17256 /* ~Przytakuje, chowając trzy miedziaki. "O co więc chcesz spytać, śmiałku?"~ */
  IF ~~ THEN REPLY #17357 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17359 /* ~"Szukam kogoś, kto nazywa się Farod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17361 /* ~"Szukam dziennika, który zgubiłem."~ */ GOTO 7
  IF ~~ THEN REPLY #17362 /* ~"Nieważne. Pokaż mi swoje towary."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17363 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.1 8.1 9.0
  SAY #17263 /* ~"To? Jeszcze jedno targowisko w Ulu, najgorszej dzielnicy naszego błogosławionego Sigil." Gorzko się uśmiecha, wzruszając ramionami. "Tak długo, jak uważasz na siebie i spędzasz noce w bezpiecznym miejscu, nie jest to tu tak źle - to znaczy, jeśli chodzi o slumsy."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17364 /* ~"Szukam kogoś, kto nazywa się Farod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17365 /* ~"Szukam dziennika, który zgubiłem."~ */ GOTO 7
  IF ~~ THEN REPLY #17366 /* ~"Pokaż mi swoje towary."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17367 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 7.2 8.2 9.1
  SAY #17265 /* ~"Hmm. Nie. Nic mi to nie mówi. Przykro mi, śmiałku."~ */
  IF ~  !Global("Good_Merch1_1","GLOBAL",1)
~ THEN REPLY #17368 /* ~"Nie bardzo mi pomogłeś..."~ */ GOTO 8
  IF ~~ THEN REPLY #17215 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17217 /* ~"Szukam dziennika, który zgubiłem."~ */ GOTO 7
  IF ~~ THEN REPLY #17218 /* ~"Nieważne. Pokaż mi swoje towary."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17220 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.1 6.2 8.3 9.2
  SAY #17267 /* ~"Ostatnio żadnego nie widziałem, przykro mi. Jeśli potrzebny ci nowy dziennik, być może inni kupcy ci go sprzedadzą." Wzrusza ramionami.~ */
  IF ~  !Global("Good_Merch1_1","GLOBAL",1)
~ THEN REPLY #17221 /* ~"Nie bardzo mi pomogłeś..."~ */ GOTO 8
  IF ~~ THEN REPLY #17222 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17223 /* ~"Szukam kogoś, kto nazywa się Farod."~ */ GOTO 6
  IF ~~ THEN REPLY #17268 /* ~"Nieważne. Pokaż mi swoje towary."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17310 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #17272 /* ~Stary kupiec chichocze, potem odkasłuje w dłoń. "Zapłaciłeś za mój czas, nie za odpowiedzi, śmiałku. Gdybym mógł, pomógłbym ci, naprawdę. Czy chcesz teraz zobaczyć mój towar?"~ */
  IF ~~ THEN REPLY #17324 /* ~"Tak."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17332 /* ~"Nie teraz. Opowiedz mi o tym miejscu."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17356 /* ~"Nie, ale szukam kogoś, kto nazywa się Farod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17358 /* ~"Nie, nie teraz. Szukam dziennika, który zgubiłem."~ */ GOTO 7
  IF ~~ THEN REPLY #17360 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #17275 /* ~"Ho ho! Nie, śmiałku. To tylko starość. Ale dziękuję za troskę." Uśmiecha się.~ */
  IF ~~ THEN REPLY #17369 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17370 /* ~"Szukam kogoś, kto nazywa się Farod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17371 /* ~"Szukam dziennika, który zgubiłem."~ */ GOTO 7
  IF ~~ THEN REPLY #17372 /* ~"Czy mogę zobaczyć twoje towary?"~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17373 /* ~"Uważaj na siebie. Żegnaj."~ */ EXIT
END
