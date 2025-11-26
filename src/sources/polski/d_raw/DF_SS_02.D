// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_02~

IF ~  !Global("S_Stone","AR0603",2)
!Global("S_Stone","AR0603",9)
~ THEN BEGIN 0 // from:
  SAY #47110 /* ~To niezwykły, jasnobłękitny kamień. Jest bezpiecznie umocowany w cokole, na którym spoczywa.~ */
  IF ~~ THEN REPLY #47111 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",2)
~ THEN BEGIN 1 // from:
  SAY #47112 /* ~Przewodnik skierował cię do tego jasnobłękitnego kamienia. W nim ukryte zostało doznanie 'Czuła miłość'.~ */
  IF ~~ THEN REPLY #47113 /* ~Zacznij doznanie.~ */ GOTO 2
  IF ~~ THEN REPLY #47114 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47115 /* ~Masz zamknięte oczy; stoisz na palcach, delikatnie do czegoś przyciśnięty. Delikatne, miękkie usta ocierają się o twoje, całując cię najłagodniejszym z pocałunków... twoje serce zdaje się trzepotać w piersi, czujesz, że mógłbyś po prostu zrobić krok wstecz i poszybować w przestrzeń...~ */
  IF ~  Global("Sensation02","AR0603",0)
~ THEN REPLY #47116 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation02","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation02","AR0603",1)
~ THEN REPLY #47117 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",9)
~ THEN BEGIN 3 // from:
  SAY #47118 /* ~Przewodnik skierował cię do tego jasnobłękitnego kamienia. W nim ukryte zostało doznanie 'Jątrząca się zazdrość'.~ */
  IF ~~ THEN REPLY #47119 /* ~Zacznij doznanie.~ */ GOTO 4
  IF ~~ THEN REPLY #47120 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47121 /* ~Krzywisz usta, gdy młody, jasnowłosy bohater w lśniącej jak srebrne lustro zbroi ponownie wkracza do twojej karczmy. Wieszając na ściennym wieszaku swój aksamitny płaszcz obserwuje klientów świecącymi jak klejnoty oczami, jego uśmiech sprawia, że usługujące dziewki mdleją. Głośno uderzasz o blat kuflem, który właśnie wycierałeś i myślisz jak by to było, gdybyś go sponiewierał i wepchnął do beczki na deszczówkę...~ */
  IF ~  Global("Sensation09","AR0603",0)
~ THEN REPLY #47122 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation09","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation09","AR0603",1)
~ THEN REPLY #47123 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47124 /* ~Wygląda na to, że to doznanie odkryło dawno zapomniane, trochę podobne wspomnienie w twoim własnym umyśle... czujesz jakbyś coś zyskał używając kamienia doznań.~ */
  IF ~~ THEN REPLY #47125 /* ~Odejdź.~ */ EXIT
END
