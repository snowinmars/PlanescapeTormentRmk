// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DJAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0701")
GlobalGT("Skatch_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57140 /* ~Młoda kobieta - włosy potargane, ubranie w nieładzie - próbuje uśmiechać się przez łzy. "Dziękuję ci! Tak *bardzo* ci dziękuję! Nazywam się Jasilia. Słuchaj... muszę już iść, nieznajomy, ale jeszcze raz dziękuję!"~ */
  IF ~~ THEN REPLY #57141 /* ~"Nie ma sprawy."~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0900")
Global("Benny","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #57142 /* ~Kobieta patrzy na ciebie. "Ocaliłeś mnie... tak *bardzo* ci dziękuję! Gdyby nie ty, byłabym martwa, albo gorzej..." Rozkłada ramiona i przysuwa się, chcąc cię objąć.~ */
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #57143 /* ~Przyciągnij ją i pocałuj.~ */ GOTO 6
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #57144 /* ~Przyciągnij ją i pocałuj.~ */ GOTO 8
  IF ~~ THEN REPLY #57145 /* ~Pozwól jej objąć się.~ */ GOTO 2
  IF ~~ THEN REPLY #57146 /* ~Odsuń się.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #57147 /* ~Ściska cię mocno. Czujesz jak wtula swój mokry od łez policzek w twoją pierś. Po chwili, odsuwa się i z uśmiechem patrzy na ciebie. "Muszę już iść... ale pozwól mi powiedzieć 'dziękuję'. Nigdy nie zapomnę tego, co zrobiłeś. Żegnaj, podróżniku."~ */
  IF ~  NearbyDialog("Dannah")
~ THEN EXTERN ~DANNAH~ 279
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #57148 /* ~"Żegnaj."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #57149 /* ~Ze wstydu dostaje rumieńców, patrzy pod nogi. "Och... nie chciałam... cóż..." Z uśmiechem spogląda na ciebie. "Żegnaj, nieznajomy, *naprawdę* dziękuję! Nigdy nie zapomnę tego, co zrobiłeś."~ */
  IF ~~ THEN REPLY #57150 /* ~"W porządku. Żegnaj."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0704")
~ THEN BEGIN 4 // from:
  SAY #57151 /* ~Gdy podchodzisz, Jasilia uśmiecha się i przestaje sprzątać. "Znowu się spotykamy, mój ponury wybawco! I znów dziękuję ci. Co mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #57152 /* ~"Szukam miejsca, w którym mógłbym spędzić noc."~ */ GOTO 5
  IF ~~ THEN REPLY #57154 /* ~"W tej chwili nic. Żegnaj, Jasilio."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57155 /* ~Uśmiecha się. "Och... więc będziesz musiał porozmawiać z moim ojcem."~ */
  IF ~~ THEN REPLY #57156 /* ~"Dzięki. Żegnaj, Jasilio."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0
  SAY #57157 /* ~Gdy przytula się do ciebie, obejmujesz ją i dotykasz ustami jej ust.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 280
END

IF ~~ THEN BEGIN 7 // from:
  SAY #57158 /* ~Jasilja wzdraga się lekko i delikatnie uwalnia się z twego uścisku. Obdarza cię lekko szalonym, nerwowym uśmiechem. "Uch... żegnaj, nieznajomy i dziękuję. Ja... nie zapomnę tego, co zrobiłeś."~ */
  IF ~~ THEN REPLY #57159 /* ~"W porządku. Żegnaj."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY #57160 /* ~Gdy przytula się do ciebie, obejmujesz ją i dotykasz ustami jej ust.
Jasilja wzdraga się lekko i delikatnie uwalnia się z twego uścisku. Obdarza cię lekko szalonym, nerwowym uśmiechem. "Uch... żegnaj, nieznajomy i dziękuję. Ja... nie zapomnę tego, co zrobiłeś."~ */
  IF ~~ THEN REPLY #57161 /* ~"W porządku. Żegnaj."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0900")
Global("Benny","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #67818 /* ~Kobieta jest spocona i dyszy. "Proszę... proszę... ratuj mnie przed nimi."~ */
  IF ~~ THEN REPLY #67819 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0701")
Global("Skatch_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #68097 /* ~"Pomóż mi! Proszę zabij ich, zanim mnie zniewolą!"~ */
  IF ~~ THEN REPLY #68098 /* ~"Zrobię, co będę mógł..."~ */ EXIT
END
