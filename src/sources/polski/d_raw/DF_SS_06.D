// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_06~

IF ~  !Global("S_Stone","AR0603",6)
!Global("S_Stone","AR0603",13)
~ THEN BEGIN 0 // from:
  SAY #34217 /* ~To niezwykły, fioletowy kamień. Jest bezpiecznie umocowany w cokole, na którym spoczywa.~ */
  IF ~~ THEN REPLY #47460 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",6)
~ THEN BEGIN 1 // from:
  SAY #47461 /* ~Przewodnik skierował cię do tego niezwykłego, fioletowego kamienia. Kryje się w nim doznanie 'Poddanie się wyczerpaniu'.~ */
  IF ~~ THEN REPLY #47462 /* ~Zacznij doznanie.~ */ GOTO 2
  IF ~~ THEN REPLY #47463 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47464 /* ~Dygocząc, szczękając zębami, jeszcze z nadzieją, choć bez szans, układasz się pod prześcieradłem śniegu by ocalić tę resztkę ciepła, która ci została. Walczysz, by nie zamknąć oczu - nie zasypiać - zdajesz sobie sprawę, że już nie czujesz rąk... nóg... lódu na twarzy... tylko zmęczenie... Jesteś tak zmęczony, że w końcu się poddajesz. Zamykasz oczy, gorzko witając sen, poczucie straty wyciska z bolących oczu jedną jedyną łzę - i tak skazaną na zamarznięcie, zanim nawet sięgnie policzka.~ */
  IF ~  Global("Sensation06","AR0603",0)
~ THEN REPLY #47465 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation06","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation06","AR0603",1)
~ THEN REPLY #47466 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",13)
~ THEN BEGIN 3 // from:
  SAY #47467 /* ~Przewodnik skierował cię do tego niezwykłego, fioletowego kamienia. Kryje się w nim doznanie 'Ponura determinacja'.~ */
  IF ~~ THEN REPLY #47468 /* ~Zacznij doznanie.~ */ GOTO 4
  IF ~~ THEN REPLY #47469 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47470 /* ~Cała sala jest już zrujnowana, a mimo to proces wciąż jeszcze postępuje, tuziny weteranów miotają bronią, magowie walczą desperacko, by jako ostatni trzymać się na nogach. Smugi gryzącego, zielonego dymu unoszą się znad stosu ciał, z którego się wyczołgałeś ledwo unikając jakiegoś czaru. Tam jest - po drugiej stronie, za tłumem walczących, poza całą tą krwawą bitwą, stoi nietknięta na ostatnim stole - twoja kwarta piwa! I odzyskasz ją, choćbyś musiał zabić, co do ostatniego wszystkich walczących klientów karczmy!~ */
  IF ~  Global("Sensation13","AR0603",0)
~ THEN REPLY #47471 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation13","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation13","AR0603",1)
~ THEN REPLY #47472 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47473 /* ~Wygląda na to, że to doznanie odkryło dawno zapomniane, trochę podobne wspomnienie w twoim własnym umyśle... czujesz jakbyś coś zyskał używając kamienia doznań.~ */
  IF ~~ THEN REPLY #47474 /* ~Odejdź.~ */ EXIT
END
