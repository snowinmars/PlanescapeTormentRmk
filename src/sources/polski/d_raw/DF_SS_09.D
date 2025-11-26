// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_09~

IF ~  !Global("S_Stone","AR0603",16)
!Global("S_Stone","AR0603",19)
~ THEN BEGIN 0 // from:
  SAY #34220 /* ~To niezwykły, filoletowy kamień. Jest bezpiecznie umocowany w cokole, na którym spoczywa.~ */
  IF ~~ THEN REPLY #47529 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",19)
~ THEN BEGIN 1 // from:
  SAY #47530 /* ~Przewodnik skierował cię do tego niezwykłego, fioletowego kamienia. Kryje się w nim doznanie 'Bardzo ważna tajemnica'.~ */
  IF ~~ THEN REPLY #47531 /* ~Zacznij doznanie.~ */ GOTO 2
  IF ~~ THEN REPLY #47532 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47533 /* ~Przed tobą uwija się sześciu imperialnych służących, otwierając na oścież złote wrota Pałacu Smoka.

"Niech żyje Cesarzowa!" Krzyczą zgodnie. "Tysiąc lat! Niech żyje Cesarzowa! Tysiąc lat!"~ */
  IF ~~ THEN REPLY #47534 /* ~Kontynuuj doznanie.~ */ GOTO 3
  IF ~~ THEN REPLY #47535 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47536 /* ~Za progiem czekają tuziny wiernych lordów, królów na własnych włościach. Padają na kolana, z szacunkiem skłaniają głowy niemalże do podłogi, gdy mijasz ich w drodze do Cesarskiego Tronu.~ */
  IF ~~ THEN REPLY #47537 /* ~Kontynuuj doznanie.~ */ GOTO 4
  IF ~~ THEN REPLY #47538 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47539 /* ~Gdy odwracasz twarz w stronę swych sługusów, usadawiając się na Cesarskim Tronie, pozwalasz, by na twych starannie uszminkowanych ustach pojawił się niewielki uśmiech. Ale jest tylko jedna myśl w twym umyśle:~ */
  IF ~~ THEN REPLY #47540 /* ~Kontynuuj doznanie.~ */ GOTO 5
  IF ~~ THEN REPLY #47541 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47542 /* ~...że ciało młodej Cesarzowej, Wu Tsun Sha leży zdruzgotane na dnie Studni Samotności, i że ty - Bai Wha, córka handlarza końmi - w końcu jesteś gotowa, by zachwiać Cesarstwem i skorumpować dynastię Wu aż po fundamenty.~ */
  IF ~  Global("Sensation19","AR0603",0)
~ THEN REPLY #47543 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation19","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 10
  IF ~  Global("Sensation19","AR0603",1)
~ THEN REPLY #47544 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",16)
~ THEN BEGIN 6 // from:
  SAY #47545 /* ~Przewodnik skierował cię do tego niezwykłego, fioletowego kamienia. Kryje się w nim doznanie 'Wstrząs i wrzenie mściwości'.~ */
  IF ~~ THEN REPLY #47546 /* ~Zacznij doznanie.~ */ GOTO 7
  IF ~~ THEN REPLY #47547 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47548 /* ~Stoisz gdzieś w niższych częściach Sfer, gorącym miejscu, gdzie ziemia jest z kutej miedzi, a niebo z brązu. Tutaj ciała grzeszników - interesantów w tym strasznym miejscu - są mieszane z żelaznymi jeżynami i skorpionami z brązu, aż z ich kości pozostanie czysty, szary proch.~ */
  IF ~~ THEN REPLY #47549 /* ~Kontynuuj doznanie.~ */ GOTO 8
  IF ~~ THEN REPLY #47550 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47551 /* ~Przez zmrużone oczy spoglądasz na horyzont, cuchnący rozkładem wiatr niesie jęki konających, unosi w powietrze pył z kości. W zasięgu wzroku nie ma nic poza płaską, metaliczną powierzchnią. Pył jest wszędzie, we wszystkim... kłuje w oczy, pokrywa warstwą wnętrze twoich ust. Wypluwasz go, wycierasz palcem, ale to nic nie daje: smak tego czegoś dokładnie wypełnił ci usta.~ */
  IF ~~ THEN REPLY #47552 /* ~Kontynuuj doznanie.~ */ GOTO 9
  IF ~~ THEN REPLY #47553 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #47554 /* ~Patrzysz na klucz, który trzymasz w ręku... malutka, platynowa kula... i wyobrażasz sobie twarz człowieka, który solennie przysięgał, że ten magiczny portal - który oczywiście już zniknął - prowadzi na zielone pola Dwutopii. Ktoś na wszystkie Moce i ich pełnomocników za to zapłaci.~ */
  IF ~  Global("Sensation16","AR0603",0)
~ THEN REPLY #47555 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation16","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 10
  IF ~  Global("Sensation16","AR0603",1)
~ THEN REPLY #47556 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.0 9.0
  SAY #47557 /* ~Wygląda na to, że to doznanie odkryło dawno zapomniane, trochę podobne wspomnienie w twoim własnym umyśle... czujesz jakbyś coś zyskał używając kamienia doznań.~ */
  IF ~~ THEN REPLY #47558 /* ~Odejdź.~ */ EXIT
END
