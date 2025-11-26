// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARMGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DARMGRD~

IF ~~ THEN BEGIN 0 // from:
  SAY #64550 /* ~"Hej! To jest teren zastrzeżony! Nie możesz tutaj wchodzić!"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64555 /* ~"A jak można sobie wyrobić pozwolenie na wejście?"~ */ GOTO 1
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #64556 /* ~Pokaż strażnikowi żeton. "Mam przy sobie żeton."~ */ GOTO 2
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64557 /* ~Kłamstwo: "Posiadam upoważnienie do wstępu do tej części budynku."~ */ GOTO 3
  IF ~~ THEN REPLY #64558 /* ~"W takim razie zapomnij o tym."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #64551 /* ~"Możesz albo poprosić o pozwolenie któregoś z wysoko postawionych dygnitarzy, albo możesz spróbować zmierzyć się z nami." Strażnik posyła ci ponury uśmieszek. "Chociaż osobiście nie polecałbym ci tego drugiego rozwiązania."~ */
  IF ~~ THEN REPLY #64559 /* ~"Mimo wszystko spróbuję."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64560 /* ~"No dobrze, już dobrze. Zaraz odejdę."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 4.1
  SAY #64552 /* ~Strażnik uważnie sprawdza podany mu żeton. "Proszę o wybaczenie, panie. Może mógłbym ci w czymś pomóc?"~ */
  IF ~~ THEN REPLY #64561 /* ~"Nie. Miłego dnia życzę."~ */ DO ~SetDoorLocked("AR0502d3",FALSE)
OpenDoor("AR0502d3")
~ EXIT
  IF ~~ THEN REPLY #64562 /* ~"Nie."~ */ DO ~SetDoorLocked("AR0502d3",FALSE)
OpenDoor("AR0502d3")
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2
  SAY #64553 /* ~"No to pokaż mi czym prędzej to upoważnienie." Strażnik czeka przez chwilę na twoją reakcję, a ponieważ nic nie robisz, odzywa się znowu i tonem jeszcze mniej sympatycznym niż poprzednio. "Jeżeli masz zamiar bawić się tutaj w głupie gierki, to wiedz, że moja cierpliwość nie jest zbyt wielka. A moja niecierpliwość może przybrać bardzo bolesne formy."~ */
  IF ~~ THEN REPLY #64563 /* ~"Zatem może powinieneś poddać się jakiejś uspokajającej kuracji?"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64564 /* ~"Dobrze. Po co ta wrogość? Do zobaczenia."~ */ EXIT
END

IF ~  True()
~ THEN BEGIN 4 // from:
  SAY #64554 /* ~"W czym mogę służyć, panie?"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64565 /* ~"Jak mogę przejść przez te drzwi?"~ */ GOTO 1
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #64566 /* ~Pokaż strażnikowi żeton. "Mam przy sobie żeton."~ */ GOTO 2
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64567 /* ~Kłamstwo: "Posiadam upoważnienie do przejścia przez te drzwi."~ */ GOTO 3
  IF ~~ THEN REPLY #64568 /* ~"W takim razie zapomnij o tym."~ */ EXIT
END
