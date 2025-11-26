// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_08~

IF ~  !Global("S_Stone","AR0603",15)
!Global("S_Stone","AR0603",18)
~ THEN BEGIN 0 // from:
  SAY #34219 /* ~To niezwykły, czerwono-pomarańczowy kamień. Jest bezpiecznie umocowany w cokole, na którym spoczywa.~ */
  IF ~~ THEN REPLY #47490 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",15)
~ THEN BEGIN 1 // from:
  SAY #47491 /* ~Przewodnik skierował cię do tego niezwykłego, czerwono-pomarańczowego kamienia. Kryje się w nim doznanie 'Straszliwy żal'.~ */
  IF ~~ THEN REPLY #47492 /* ~Zacznij doznanie.~ */ GOTO 2
  IF ~~ THEN REPLY #47493 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47494 /* ~Stoisz na pokładzie swego okrętu flagowego, Boskiego Młota, gdy przelatuje nad kontynentem Agarheim. Krajobraz jest wstrząsany salwami, gdy twoja flota tysiąca okrętów, dział i bombard niczym mściwi bogowie miota swe czarnoksięskie płomienie w dół. Fale uderzeniowe zaczęły docierać do twego okrętu ledwie przed minutą - ciągłe wibracje są przenoszone przez cały kadłub starożytnego statku i twoje kości - towarzyszy im dudniący bas. Gdy góry zaczynają się topić, a morza gotować, staje obok ciebie twój pierwszy oficer.~ */
  IF ~~ THEN REPLY #47495 /* ~Kontynuuj doznanie.~ */ GOTO 3
  IF ~~ THEN REPLY #47496 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47497 /* ~"Lordzie Admirale... proszę o pozwolenie na zadanie pytania."

Kiwasz przyzwalająco głową, czujesz zimno w żołądku, kiedy zgadujesz treść pytania.

"Mój Lordzie... wybacz mi, ale dlaczego? Co daje nam prawo? Milion istnień..."~ */
  IF ~~ THEN REPLY #47498 /* ~Kontynuuj doznanie.~ */ GOTO 4
  IF ~~ THEN REPLY #47499 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47500 /* ~Odpowiadasz nie odwracając się, nie potrafisz oderwać wzroku od Rhumos, stolicy tego narodu, gdy ta paruje w rozrastającą się, dwunastomilową chmurę przegrzanych gazów. "Pierwszy Oficerze Felm, gdybyś tylko znał ogrom zdrady Agarytów. Ona przekracza ludzkie zdolności pojmowania... wtedy byś wiedział. Pytasz jakie mamy prawo, by ich zniszczyć? Nie mamy prawa pozwolić im żyć."~ */
  IF ~~ THEN REPLY #47501 /* ~Kontynuuj doznanie.~ */ GOTO 5
  IF ~~ THEN REPLY #47502 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47503 /* ~"Ale... sir? Zdrajcy, wszyscy z nich? Na pewno, pośród setek tysięcy. Ale ilu niewinnych..."

"Milczeć! Nie mów o tym więcej - nasz król przemówił, Jego wola zostanie wykonana. Przydzielone nam zadanie jest straszliwe, ale nie ma miejsca na rozmyślanie czy pytania. Nie ma miejsca na żal, nie ma miejsca na wyrzuty sumienia - jest tylko *służba*."~ */
  IF ~~ THEN REPLY #47504 /* ~Kontynuuj doznanie.~ */ GOTO 6
  IF ~~ THEN REPLY #47505 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47506 /* ~Stoicie obaj w milczeniu, obserwując ostatnie chwile Agarheimu. Wzdychasz po długiej chwili... cichy, przerywany wydech brzmi jakby coś w tobie się złamało. Pod brązową płytą, która pokrywa zniszczoną połowę twojej twarzy, twe martwe oko zaczyna płakać...~ */
  IF ~~ THEN REPLY #47507 /* ~Kontynuuj doznanie.~ */ GOTO 7
  IF ~~ THEN REPLY #47508 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47509 /* ~"Falm... mój przyjacielu... chciałbym byś zrozumiał. Teraz, gdy spojrzę w dół, na to co uczyniłem, wiem, że gdybym się zastanowił nad tym co zrobiłem... co *naprawdę* zrobiłem... oszalałbym. Taki czyn... cierpienie by mnie przygniotło, zniszczyło. Więc Pierwszy Oficerze Falm, musi być tak, że *nie było* w Agarheimie niewinnych... żadnych matek, żadnych dzieci, żadnych *ludzi*. Jedynie zdrajcy. Podli zdrajcy, którzy zasługują na cały gniew naszego Świętego Króla. Rozumiesz?"~ */
  IF ~~ THEN REPLY #47510 /* ~Kontynuuj doznanie.~ */ GOTO 8
  IF ~~ THEN REPLY #47511 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47512 /* ~"T-tak, mój Lordzie."

"Dobrze. A teraz odejdź... chcę zostać sam."

"Co tylko rozkażesz, Lordzie Admirale." Falm kłania się i wraca na niższy pokład pozostawiając cię samego nad końcem cywilizacji."~ */
  IF ~  Global("Sensation15","AR0603",0)
~ THEN REPLY #47513 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation15","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 13
  IF ~  Global("Sensation15","AR0603",1)
~ THEN REPLY #47514 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",18)
~ THEN BEGIN 9 // from:
  SAY #47515 /* ~Przewodnik skierował cię do tego niezwykłego, czerwono-pomarańczowego kamienia. Kryje się w nim doznanie 'Nieopisana frustracja'.~ */
  IF ~~ THEN REPLY #47516 /* ~Zacznij doznanie.~ */ GOTO 10
  IF ~~ THEN REPLY #47517 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47518 /* ~Teraz możesz ją zobaczyć, Koronę Haephon, błyszczącą na marmurowym piedestale. Jest nie więcej niż dwadzieścia kroków od ciebie... za jej pomocą mógłbyś wydrzeć kontrolę nad armiami Aethanopolis swemu zdradzieckiemu bratu i odzyskać królestwo swego ojca. Twój nieszczęsny brat był głupcem... uśmiechasz się do swych myśli... pozostawić przy życiu jedyną córkę króla, myśląc, że nie może mu zrobić krzywdy.~ */
  IF ~~ THEN REPLY #47519 /* ~Kontynuuj doznanie.~ */ GOTO 11
  IF ~~ THEN REPLY #47520 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #47521 /* ~Dźwięk! Szuranie skórzanych sandałów, najlżejszy syk... tam, koło trzeciego filaru! Jest już blisko... Polaphi Meduza, zazdrośnie strzeże korony, którą jej słudzy ukradli dawno temu. Czołgając się za grubym filarem zaciskasz dłoń na Potrójnie Błogosławionym Oszczepie. Ze swym Hełmem Szybkości i Tarczą Tysiąca Luster, nawet taka bestia nie jest dla ciebie wyzwaniem. Teraz już w każdej chwili może wyjść zza filaru i cię zauważyć. Nawet gdyby odwróciła wzrok od tarczy, twój oszczep na pewno znajdzie drogę do jej gardła...~ */
  IF ~~ THEN REPLY #47522 /* ~Kontynuuj doznanie.~ */ GOTO 12
  IF ~~ THEN REPLY #47523 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #47524 /* ~Nagle czujesz na ramieniu delikatny dotyk. Wydajesz jęk odwracając się by zobaczyć... Meduzę - oczywiście. Akceptując nieuniknione, masz tylko chwilę, by wydać wściekły ryk zanim twoje płuca... i cała reszta twojego ciała... zamienią się w zimny, szary kamień.~ */
  IF ~  Global("Sensation18","AR0603",0)
~ THEN REPLY #47525 /* ~Przerwij doznanie, odejdź.~ */ DO ~SetGlobal("Sensation18","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 13
  IF ~  Global("Sensation18","AR0603",1)
~ THEN REPLY #47527 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.0 12.0
  SAY #47526 /* ~Wygląda na to, że to doznanie odkryło dawno zapomniane, trochę podobne wspomnienie w twoim własnym umyśle... czujesz jakbyś coś zyskał używając kamienia doznań.~ */
  IF ~~ THEN REPLY #47528 /* ~Odejdź.~ */ EXIT
END
