// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGSPIRIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGSPIRIT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #32434 /* ~Postać, niczym duch wychodzi z mroku korytarza na wprost i szybko próbuje zajść ci drogę. Unosi się przed tobą. Jej niegdyś ludzkie rysy wykrzywiają się z wściekłości. "Plugawicielu! Natychmiast opuść to miejsce!"~ */
  IF ~~ THEN REPLY #32444 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #32445 /* ~Odejdź jak najszybciej.~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #32435 /* ~Gdy pojawia się Duch Opiekuńczy, powietrze wokół ciebie nagle staje się lodowato zimne. Ponownie unosi się przed tobą. Jego strój trzepocze niczym poruszany eterycznym wiatrem.~ */
  IF ~  Global("Spirit_Quest","GLOBAL",0)
~ THEN REPLY #32446 /* ~"Zaczekaj. Mam kilka pytań..."~ */ GOTO 4
  IF ~  Global("Spirit_Quest","GLOBAL",1)
~ THEN REPLY #32447 /* ~"Zaczekaj. Chcę pomóc ci pozbyć się tego intruza, o którym mówiłeś."~ */ GOTO 8
  IF ~~ THEN REPLY #32448 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #32436 /* ~"Odejdź stąd!" Jego grzmiący głos odbija się echem w salach. "Żyjący nie mogą tu wchodzić. Odejdź, póki możesz."~ */
  IF ~~ THEN REPLY #32449 /* ~"Najpierw odpowiedz na parę pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #32450 /* ~"Pójdę, gdzie mi się podoba... Odsuń się, duchu."~ */ GOTO 3
  IF ~~ THEN REPLY #32451 /* ~"Jak chcesz. Żegnaj."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 4.1
  SAY #32437 /* ~"Cóż za zuchwałość!" Ryk, jaki wydaje z siebie zmusza cię do zakrycia uszu. "Zostałeś ostrzeżony... nie mogę znów pozwolić, by ktoś zakłócał spokój tego miejsca."~ */
  IF ~~ THEN REPLY #32452 /* ~"Znów? Czy ktoś już tu jest?"~ */ GOTO 5
  IF ~~ THEN REPLY #32453 /* ~"Taa, taa. Bajki dla dzieci."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32454 /* ~"Po pewnym namyśle... chyba sobie pójdę. Żegnaj."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0
  SAY #32438 /* ~"Poszukaj odpowiedzi gdzie indziej. To miejsce to sanktuarium umarłych. Nie pozwolę, by jeszcze jeden bezczelny śmiertelnik zakłócał im sen!"~ */
  IF ~~ THEN REPLY #32455 /* ~"Jeszcze jeden? Czy ktoś już tu jest?"~ */ GOTO 5
  IF ~~ THEN REPLY #32456 /* ~"Pójdę, gdzie mi się podoba... Odsuń się, duchu."~ */ GOTO 3
  IF ~~ THEN REPLY #32457 /* ~"Jak sobie chcesz. Żegnaj."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #32439 /* ~"Jeśli już musisz wiedzieć... tak, jest jeszcze jeden intruz, który nawet teraz zakłóca świętość tych sal." Zło stopniowo znika z jego głosu. Wydaje się cokolwiek zasmucony twoją wizytą. "Dusze mych braci i sióstr żądają spokoju."~ */
  IF ~~ THEN REPLY #32458 /* ~"Kim jest ten intruz?"~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #32459 /* ~"Dlaczego go nie przepędzisz?"~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #32460 /* ~"Po pewnym namyśle... chyba sobie pójdę. Żegnaj."~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #32440 /* ~"To złośliwy tchórz, który dzierży władzę nad umarłymi. Czegoś tu szuka... czego lub po co to robi, nie umiem powiedzieć."~ */
  IF ~~ THEN REPLY #32461 /* ~"Dlaczego go nie przepędzisz?"~ */ GOTO 7
  IF ~~ THEN REPLY #32462 /* ~"Po pewnym namyśle... chyba sobie pójdę. Żegnaj."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #32441 /* ~"Nie mogę. Ten tchórz zamknął się w wewnętrznej komnacie Mauzoleum. Postawił potężnych strażników, którzy nie pozwalają mi tam wejść. To tam używa swych ciemnych mocy, by budzić mych braci i zmuszać ich, by składali hołd jego złej woli."~ */
  IF ~~ THEN REPLY #32463 /* ~"Możliwe, że mogę ci pomóc..."~ */ GOTO 8
  IF ~~ THEN REPLY #32464 /* ~"Wygląda na to, że chcesz, aby jeden intruz przepędził drugiego."~ */ GOTO 8
  IF ~~ THEN REPLY #32465 /* ~"Po pewnym namyśle... chyba sobie pójdę. Żegnaj."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1 7.0 7.1
  SAY #32442 /* ~Duch nie odzywa się przez dłuższą chwilę. Prawie czujesz ciężar jego pozbawionego życia spojrzenia. "Tak... może uda ci się zwyciężyć tam, gdzie ja zawiodłem. Jeśli przyrzekniesz, że uwolnisz mnie od czarnego strażnika, dam ci przejść. Co ty na to?"~ */
  IF ~~ THEN REPLY #32466 /* ~"Zrobię to."~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",2)
~ JOURNAL #31881 /* ~Przyrzekłem pomóc duchowi, który strzeże Mauzoleum. Wygląda na to, że spokój tego miejsca zakłócił Nekromanta, który zamknął się w komnacie wewnętrznej, rzucając potężne zaklęcia strażnicze, by zabezpieczyć się przed duchem. To na pewno on jest odpowiedzialny za "chodzących umarłych", o których martwił się Norochj.~ */ GOTO 9
  IF ~~ THEN REPLY #32467 /* ~"Po pewnym namyśle... chyba sobie pójdę. Żegnaj."~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #32443 /* ~"Niech i tak będzie." Duch powoli znika, po chwili słyszysz tylko echo jego bezcielesnego głosu. "Uważaj... stąpaj lekko, abyś nie połączył się z innymi w wiecznym śnie."~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Dead("Strahan")
~ THEN BEGIN 10 // from:
  SAY #32468 /* ~Duch opiekuńczy materializuje się, gdy wchodzisz do korytarza. Wita cię życzliwie. "Dziękuję ci. Oddałeś mi wielką przysługę. Dusze, którymi się opiekuję, znów śpią w spokoju. Idź w pokoju... przyjacielu." Zjawa znika, zostawiając cię samego w opuszczonych salach Mauzoleum.~ */
  IF ~~ THEN REPLY #32469 /* ~Odejdź.~ */ DO ~AddexperienceParty(2000)
SetGlobal("Spirit_Quest","GLOBAL",4)
SetGlobal("Mausoleum_Quest","GLOBAL",2)
~ JOURNAL #37705 /* ~Zabiłem nekromantę, który zakłócał spokój zmarłych. Wraz ze złamaniem jego mocy, martwi nie chodzą już po korytarzach Mauzoleum. Norochj będzie zadowolony.~ */ EXIT
END
