// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_07~

IF ~  !Global("S_Stone","AR0603",7)
!Global("S_Stone","AR0603",14)
~ THEN BEGIN 0 // from:
  SAY #34218 /* ~To niezwykły, jasnobłękitny kamień. Jest bezpiecznie umocowany w cokole, na którym spoczywa.~ */
  IF ~~ THEN REPLY #47475 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",7)
~ THEN BEGIN 1 // from:
  SAY #47476 /* ~Przewodnik skierował cię do tego niezwykłego, jasnobłękitnego kamienia. Kryje się w nim doznanie 'Nadnaturalna żądza'.~ */
  IF ~~ THEN REPLY #47477 /* ~Zacznij doznanie.~ */ GOTO 2
  IF ~~ THEN REPLY #47478 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47479 /* ~Spółkujesz z sukkubem, stworzeniem tak wielkiej, przekraczającej słowa urody, że nawet rogi i ogon ci nie przeszkadzają... Pożądasz jej tak bardzo, że cała twoja egzystencja skupia się wokół tego jednego celu. Kiedy życie z ciebie wybucha niczym gwiaździsty deszcz, słyszysz radosny śmiech sukkuba, gdy osusza twoje ciało, pozostawiając tylko bezduszne truchło...~ */
  IF ~  Global("Sensation07","AR0603",0)
~ THEN REPLY #47480 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation07","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation07","AR0603",1)
~ THEN REPLY #47481 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",14)
~ THEN BEGIN 3 // from:
  SAY #47482 /* ~Przewodnik skierował cię do tego niezwykłego, jasnobłękitnego kamienia. Kryje się w nim doznanie 'Całkowita konsternacja'.~ */
  IF ~~ THEN REPLY #47483 /* ~Zacznij doznanie.~ */ GOTO 4
  IF ~~ THEN REPLY #47484 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47485 /* ~Budzisz się z nieprzyjemnego snu i okazuje się, że w swej wilgotnej norze zostałeś zamieniony w dość małą, cielesną rzecz z czterema kończynami. Leżysz na całkowicie odsłoniętych plecach, bez muszli, a gdy podnosisz małą główkę, na której brakuje czułków - możesz nawet zobaczyć swoje podbrzusze, pokryte częściowo miękkimi poskręcanymi włosami, tak odmiennymi od czarnej szczeciny którą znasz. Twoje dwie - tylko dwie! - nogi wyrastają z końca tułowia, a nie z brzucha. Są grube i niezgrabne, leżą bezwładnie, nie próbując cię poruszać - dopiero odpowiednio się skupiając, możesz nimi poruszyć. Co ci się *stało*?~ */
  IF ~  Global("Sensation14","AR0603",0)
~ THEN REPLY #47486 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation14","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation14","AR0603",1)
~ THEN REPLY #47487 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47488 /* ~Wygląda na to, że to doznanie odkryło dawno zapomniane, trochę podobne wspomnienie w twoim własnym umyśle... czujesz jakbyś coś zyskał używając kamienia doznań.~ */
  IF ~~ THEN REPLY #47489 /* ~Odejdź.~ */ EXIT
END
