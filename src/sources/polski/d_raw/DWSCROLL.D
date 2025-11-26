// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWSCROLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DWSCROLL~

IF ~  !Class(Protagonist,MAGE)
~ THEN BEGIN 0 // from:
  SAY #62359 /* ~Cały zwój pokrywają faliste, zagadkowe symbole runiczne. Musisz przyznać, że nie masz zielonego pojęcia, o czym mówi to pismo. Może jakiś czarodziej mógłby ci pomóc?~ */
  IF ~~ THEN REPLY #62360 /* ~Odłóż zwój na miejsce.~ */ EXIT
END

IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN BEGIN 1 // from:
  SAY #62361 /* ~Cały zwój pokrywają faliste, zagadkowe symbole runiczne. Kiedy twój wzrok pada na te faliste kształty, czujesz w głębi ducha nagły przypływ mocy. Ale sprawy, o których mówi tajemnicze pismo przekraczają twoje aktualne możliwości umysłowe.~ */
  IF ~~ THEN REPLY #62362 /* ~Odłóż zwój na miejsce.~ */ EXIT
END

IF ~  ClassLevelLT(Protagonist,MAGE,12)
~ THEN BEGIN 2 // from:
  SAY #62363 /* ~Cały zwój pokrywają faliste, zagadkowe symbole runiczne. Kiedy twój wzrok pada na te faliste kształty, czujesz w głębi ducha nagły przypływ mocy. Nagle ogarnia cię świadomość, że to, co widzisz, to zwój zaklęcia 'Życzenie'. Nie posiadasz wszakże odpowiedniego doświadczenia, które pozwoliłoby skorzystać z tego zwoju.~ */
  IF ~~ THEN REPLY #62364 /* ~Odłóż zwój na miejsce.~ */ EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY #62365 /* ~Cały zwój pokrywają faliste, zagadkowe symbole runiczne. Kiedy twój wzrok pada na te faliste kształty, czujesz w głębi ducha nagły przypływ mocy. Nagle ogarnia cię świadomość, że to, co widzisz, to zwój zaklęcia 'Życzenie'. A zatem, jakie jest twoje życzenie?~ */
  IF ~~ THEN REPLY #62366 /* ~"Chciałbym zwiększyć jedną z moich cech..."~ */ GOTO 4
  IF ~~ THEN REPLY #62367 /* ~"Chciałbym otrzymać przedmiot mocy..."~ */ DO ~GiveItemCreate("Wring",Protagonist,1,0,0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 6
  IF ~~ THEN REPLY #62368 /* ~"Chciałbym stać się bogaty, abym mógł spełnić swoje marzenia..."~ */ DO ~GiveGoldForce(10000)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 7
  IF ~  False()
~ THEN REPLY #62369 /* ~"Chciałbym zdobyć wiedzę i doświadczenie, bo to one są kluczami do prawdziwej mocy..."~ */ DO ~PermanentStatChange(Protagonist,LEVEL,RAISE,1)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 8
  IF ~~ THEN REPLY #62370 /* ~"Chciałbym, aby ja i moi towarzysze wrócili do pełni sił..."~ */ DO ~FullHeal(Player1)
FullHeal(Player2)
FullHeal(Player3)
FullHeal(Player4)
FullHeal(Player5)
FullHeal(Player6)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 9
  IF ~~ THEN REPLY #62371 /* ~"Chciałbym poznać wiedzę tajemną i moc, która się w niej kryje..."~ */ DO ~GiveItemCreate("SPWI705",Protagonist,1,1,0)
GiveItemCreate("SPWI802",Protagonist,1,1,0)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
DestroyPartyItem("Wscroll",TRUE)
~ GOTO 10
  IF ~~ THEN REPLY #62372 /* ~Odłóż zwój na miejsce.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #62373 /* ~Znaki runiczne zaczynają błyszczeć i tętnić życiem. Twój umysł wypełnia się wizją samego siebie, a wizję tę możesz kształtować według własnego uznania. A więc na której cesze chcesz się skoncentrować?"~ */
  IF ~~ THEN REPLY #62374 /* ~Siła.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,STR,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62375 /* ~Inteligencja.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,INT,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62376 /* ~Mądrość.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,WIS,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62377 /* ~Zręczność.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,DEX,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62378 /* ~Kondycja.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,CON,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62379 /* ~Charyzma.~ */ DO ~DestroyPartyItem("Wscroll",TRUE)
PermanentStatChange(Protagonist,CHR,RAISE,2)
~ GOTO 5
  IF ~~ THEN REPLY #62380 /* ~Odłóż zwój na miejsce.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.2 4.3 4.4 4.5
  SAY #62381 /* ~W głębi swojego umysłu dostrzegasz samego siebie. Widzisz samego siebie, takiego, jakim jesteś i takiego, jakim chciałbyś być. Moc tkwiąca w zwoju przenika całe twoje jestestwo, a rzeczywistość poczyna dostosowywać się do ideału, który wytworzył twój umysł. W jednym oszałamiającym blasku mocy, zwój zajmuje się mistycznym ogniem i znika.~ */
  IF ~~ THEN REPLY #62382 /* ~Gotowe.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #62383 /* ~W głębi swojego umysłu zaciskasz silnie swoją pięść. W twoim uścisku tkwi moc, która przybrała formę przedmiotu. Przedmiot ten uczyni cię lepszym niż jesteś. Moc tkwiąca w zwoju przenika całe twoje jestestwo, a rzeczywistość poczyna dostosowywać się do ideału, który wytworzył twój umysł. W jednym oszałamiającym blasku mocy, zwój zajmuje się mistycznym ogniem i znika.~ */
  IF ~~ THEN REPLY #62384 /* ~Gotowe.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #62385 /* ~W głębi swojego umysłu widzisz samego siebie, skąpanego w kosztownościach, otoczonego królewskimi klejnotami. Moc tkwiąca w zwoju przenika całe twoje jestestwo, a rzeczywistość poczyna dostosowywać się do ideału, który wytworzył twój umysł. W jednym oszałamiającym blasku mocy, zwój zajmuje się mistycznym ogniem i znika.~ */
  IF ~~ THEN REPLY #62386 /* ~Gotowe.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3
  SAY #62387 /* ~W głębi swojego umysłu widzisz samego siebie, doświadczającego wielu rozmaitych rzeczy. Obrazy te przewijają się zbyt szybko, aby można je było uchwycić, ale wciąż potrafisz je rozróżnić i czerpać z nich korzyść. Moc tkwiąca w zwoju przenika całe twoje jestestwo, a rzeczywistość poczyna dostosowywać się do ideału, który wytworzył twój umysł. W jednym oszałamiającym blasku mocy, zwój zajmuje się mistycznym ogniem i znika.~ */
  IF ~~ THEN REPLY #62388 /* ~Gotowe.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4
  SAY #62389 /* ~W głębi swojego umysłu widzisz samego siebie, cierpiącego od wielu ran, jakie ci zadano. Nagle jednak wszystkie rany znikają i powraca do ciebie zdrowie. Moc tkwiąca w zwoju przenika całe twoje jestestwo, a rzeczywistość poczyna dostosowywać się do ideału, który wytworzył twój umysł. W jednym oszałamiającym blasku mocy, zwój zajmuje się mistycznym ogniem i znika.~ */
  IF ~~ THEN REPLY #62390 /* ~Gotowe.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.5
  SAY #62391 /* ~W głębi swojego umysłu dostrzegasz starożytną bibliotekę wypełnioną wiedzą arcymaga. Z niekończących się regałów wyjmujesz kilka zwojów. Moc tkwiąca w zwoju przenika całe twoje jestestwo, a rzeczywistość poczyna dostosowywać się do ideału, który wytworzył twój umysł. W jednym oszałamiającym blasku mocy, zwój zajmuje się mistycznym ogniem i znika.~ */
  IF ~~ THEN REPLY #62392 /* ~Gotowe.~ */ EXIT
END
