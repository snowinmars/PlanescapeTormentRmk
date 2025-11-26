// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43002 /* ~Ta osoba niesie ze sobą plik papierów i rozwinięte zwoje; czasami przystaje, żeby je przejrzeć i część przeczytać na głos, ćwicząc w trakcie zawiłe ruchy rąk. Spogląda na ciebie, kiedy do niej podchodzisz. "Witaj..."~ */
  IF ~~ THEN REPLY #43003 /* ~"Witaj... co to za miejsce?"~ */ GOTO 1
  IF ~~ THEN REPLY #43004 /* ~"Tylko tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43005 /* ~"To miejsce, gdzie przyszli magowie mogą przyjść poćwiczyć i pouczyć się. Wielu czarnoksiężników, będąc jeszcze żółtodziobami, stawiało tutaj swoje pierwsze kroki w Sztuce."~ */
  IF ~  Global("Thorncombe","GLOBAL",0)
~ THEN REPLY #43006 /* ~"Gdzie jest nauczyciel?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",1)
~ JOURNAL #66871 /* ~Wszedłem do komnaty ćwiczebnej magów w Miejskim Gmachu Rozrywki, ale nie było tam wychowawcy. Jeden z kandydatów na czarodzieja poradził mi, abym szukał Pani Thorncombe, wychowawczyni magów, w którymś z sensoriów w Gmachu.~ */ GOTO 2
  IF ~  GlobalGT("Thorncombe","GLOBAL",0)
GlobalLT("Thorncombe","GLOBAL",3)
~ THEN REPLY #66870 /* ~"Gdzie jest nauczyciel?"~ */ GOTO 2
  IF ~~ THEN REPLY #43007 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43008 /* ~"Nie wiem dokąd wyszła Pani Thorncombe. Możesz poszukać jej w sensoriach... większość swojego czasu spędza właśnie tam..." Zniża swój głos, marszcząc brwi: "Zapewne zbyt wiele."~ */
  IF ~~ THEN REPLY #43009 /* ~"W sensoriach?"~ */ GOTO 3
  IF ~~ THEN REPLY #43010 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #43011 /* ~"Zapytaj Drzazgi, zaraz przy wejściu do Gmachu Rozrywki. Sam się tam nie dostaniesz, ale on cię tam zaprowadzi."~ */
  IF ~~ THEN REPLY #43012 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
