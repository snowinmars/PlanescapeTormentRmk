// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_03~

IF ~  !Global("S_Stone","AR0603",3)
!Global("S_Stone","AR0603",10)
~ THEN BEGIN 0 // from:
  SAY #34214 /* ~To niezwykły, filoletowy kamień. Jest bezpiecznie umocowany w cokole, na którym spoczywa.~ */
  IF ~~ THEN REPLY #47414 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",3)
~ THEN BEGIN 1 // from:
  SAY #47415 /* ~Przewodnik skierował cię do tego niezwykłego, fioletowego kamienia. Kryje się w nim doznanie 'Paraliżująca umysł nuda'.~ */
  IF ~~ THEN REPLY #47428 /* ~Zacznij doznanie.~ */ GOTO 2
  IF ~~ THEN REPLY #47429 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47417 /* ~Doznanie nie mogło trwać dłużej niż kilka minut, ale zdaje się jakby minęły godziny... długa, nudna lektura w najbardziej dusznej, zakurzonej sali Uniwersytetu Chalm w Sigil. Patrzysz przez rozległą aulę w nadziei, że napotkasz czyjeś spojrzenie - ale wszyscy studenci albo śpią, albo apatycznie wpatrują się w przestrzeń. Upuszczasz swe gęsie pióro, podnosisz i jeszcze raz upuszczasz... tylko po to, by coś robić. Rozważasz włożenie go sobie do oka, tylko po to, by sprawdzić, czy twoje zmysły nie zostały sparaliżowane przez niewiarygodną wprost nudę..."~ */
  IF ~  Global("Sensation03","AR0603",0)
~ THEN REPLY #47418 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation03","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation03","AR0603",1)
~ THEN REPLY #47419 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",10)
~ THEN BEGIN 3 // from:
  SAY #47420 /* ~Przewodnik skierował cię do tego niezwykłego, fioletowego kamienia. Kryje się w nim doznanie 'Gorzka nienawiść'.~ */
  IF ~~ THEN REPLY #47421 /* ~Zacznij doznanie.~ */ GOTO 4
  IF ~~ THEN REPLY #47422 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47423 /* ~Trujące łzy bólu zbierają się w rogach twych żółtych, zmrużonych oczu, zbierasz z podłogi podarte resztki swych małych pokrytych łuską skrzydeł. Pokornie wycofujesz się z gabinetu Groby, zaciskając swe małe podobne do igieł zęby.

Pewnie, jesteś tylko spinagonem - najmniejszym spośród diabłów - ale to nie powód, by wyrywać ci skrzydła tylko dlatego, że nie spodobała mu się wiadomość, którą mu przyniosłeś! Co zrobi mistrz gelugonów? Na pewno nic nie powie Grobie, a jaki pożytek ze spinagona bez skrzydeł? Pewnie cię wrzucą do Dziury Ognia za 'niekompetencję'!

Zemsta nie wchodzi w rachubęm niewiele możesz zrobić poza potrząsaniem pazurzastą pięścią i nienawidzeniem, nienawidzeniem, NIENAWIDZENIEM Groby całym swoim małym, czarnym sercem...~ */
  IF ~  Global("Sensation10","AR0603",0)
~ THEN REPLY #47424 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation10","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation10","AR0603",1)
~ THEN REPLY #47425 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47426 /* ~Wygląda na to, że to doznanie odkryło dawno zapomniane, trochę podobne wspomnienie w twoim własnym umyśle... czujesz jakbyś coś zyskał używając kamienia doznań.~ */
  IF ~~ THEN REPLY #47427 /* ~Odejdź.~ */ EXIT
END
