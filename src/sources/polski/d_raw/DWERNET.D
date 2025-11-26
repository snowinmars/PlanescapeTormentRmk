// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWERNET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DWERNET~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58937 /* ~Widzisz krzepkiego rzezimieszka. Jego upstrzona wieloma bliznami facjata snuje długą historię o jego niezliczonych łotrostwach. Jego głos brzmi jak zgrzytanie morskiego żwiru. "Czegóż chcesz, trepie?"~ */
  IF ~  Global("Caretaker","GLOBAL",2)
~ THEN REPLY #66327 /* ~"Przyszedłem tutaj, żeby porozmawiać z tobą o Kyse, dozorcy śmietniska."~ */ DO ~SetGlobal("Caretaker","GLOBAL",3)
~ GOTO 2
  IF ~~ THEN REPLY #66328 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #66329 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #66324 /* ~"Cóż znowu?" Mężczyzna beka nieprzystojnie.~ */
  IF ~  Global("Caretaker","GLOBAL",2)
~ THEN REPLY #66330 /* ~"Przyszedłem tutaj, żeby porozmawiać z tobą o Kyse, dozorcy śmietniska."~ */ DO ~SetGlobal("Caretaker","GLOBAL",3)
~ GOTO 2
  IF ~~ THEN REPLY #66331 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #66332 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #66325 /* ~"Czyżby ten człowieczek usłyszał, że przychodzimy po jego pieniążki?" Mężczyzna drapie się. "Wracaj i powiedz mu, że albo odda wszystko, albo pożegna się z życiem. No, pośpiesz się."~ */
  IF ~~ THEN REPLY #66333 /* ~"Najpierw chciałbym zadać kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #66334 /* ~"Dobrze. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #66326 /* ~"Nie jestem żadnym plugawym oprowadzaczem. Jak szukasz kogoś do odpowiadania na twoje pytania, to znajdź sobie kogoś, kogo takie zajęcie będzie ciekawić. A teraz zmiataj stąd, póki nie rozeźlę się na dobre i napuszczę na ciebie moich chłopaków."~ */
  IF ~  Global("Caretaker","GLOBAL",3)
~ THEN REPLY #66335 /* ~"Zatem dobrze. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
  IF ~  GlobalLT("Caretaker","GLOBAL",3)
~ THEN REPLY #66336 /* ~"Zatem dobrze. Żegnaj."~ */ EXIT
END
