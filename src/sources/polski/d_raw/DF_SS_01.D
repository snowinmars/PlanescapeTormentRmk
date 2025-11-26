// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_01~

IF ~  !Global("S_Stone","AR0603",1)
!Global("S_Stone","AR0603",8)
~ THEN BEGIN 0 // from:
  SAY #47094 /* ~To niezwykły, zielono-żólty kamień. Jest bezpiecznie umocowany w cokole, na którym spoczywa.~ */
  IF ~~ THEN REPLY #47095 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",1)
~ THEN BEGIN 1 // from:
  SAY #47096 /* ~To niezwykły, zielonkawo-żólty kamień, jest tym do którego skierował cię przewodnik. Kryje się w nim doznanie 'Nieunikniony ból'.~ */
  IF ~~ THEN REPLY #47097 /* ~Zacznij doznanie.~ */ GOTO 2
  IF ~~ THEN REPLY #47098 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47099 /* ~To krótkie i brutalne doznanie: walczysz z nieco od ciebie silniejszym mężczyzną, na brzegu płonącego strumienia płynnej lawy. Ręka w której trzymasz broń, nieuchronnie zbliża się do magmy. Krople potu parują, gdy tylko się pojawią; pod wpływem strasznego gorąca włosy na wierzchu twej dłoni najpierw czernieją, a potem zaczynają się tlić. W końcu od otaczających cię ścian kanionu odbija się echem twój krzyk, gdy twoja ręka wraz z trzymanym w niej toporem zanurza się w lawie, zwęglając się w ciągu kilku sekund agonii.~ */
  IF ~  Global("Sensation01","AR0603",0)
~ THEN REPLY #47100 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation01","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation01","AR0603",1)
~ THEN REPLY #47101 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",8)
~ THEN BEGIN 3 // from:
  SAY #47102 /* ~To niezwykły, zielonkawo-żólty kamień, jest tym do którego skierował cię przewodnik. Kryje się w nim doznanie 'Psychoza'.~ */
  IF ~~ THEN REPLY #47103 /* ~Zacznij doznanie.~ */ GOTO 4
  IF ~~ THEN REPLY #47104 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47105 /* ~To dość dziwne doznanie, bardzo poruszające... przyciskasz komuś do gardła nóż, usta przykryłeś mu dłonią, a kark ciężkim, gorącym oddechem. Zaczynasz naciskać... powoli. Nóż zagłębia się w skórze, w niektórych miejscach ją przebija. Na przedramieniu czujesz gorącą powódź krwi, słyszysz stłumione rzężenie, czujesz straszną, perwersyjną radość... i jest po wszystkim.~ */
  IF ~  Global("Sensation08","AR0603",0)
~ THEN REPLY #47106 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation08","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation08","AR0603",1)
~ THEN REPLY #47107 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47108 /* ~Wygląda na to, że to doznanie odkryło dawno zapomniane, trochę podobne wspomnienie w twoim własnym umyśle... czujesz jakbyś coś zyskał używając kamienia doznań.~ */
  IF ~~ THEN REPLY #47109 /* ~Odejdź.~ */ EXIT
END
