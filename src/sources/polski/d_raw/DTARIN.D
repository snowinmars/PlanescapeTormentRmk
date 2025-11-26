// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTARIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTARIN~

IF ~  GlobalLT("Elyce","AR0400",4)
~ THEN BEGIN 0 // from:
  SAY #33625 /* ~To jeden z pary mężczyzn nieustannie wrzeszczących na siebie i wymachujących orężem. Masz wrażenie, że w każdej chwili gotowi są skoczyć sobie do gardeł...~ */
  IF ~~ THEN REPLY #33636 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #33637 /* ~Trzymaj się od nich z dala.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33626 /* ~Mężczyzna o twarzy poczerwieniałej od ciskania najgorszych przekleństw pod adresem swego przeciwnika obraca ku tobie twarz. "Czego chcesz. Nie widzisz, że jestem *zajęty*, skurlu?"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33638 /* ~"Twoja siostra prosiła, abym położył kres waszej kłótni."~ */ GOTO 4
  IF ~~ THEN REPLY #33639 /* ~"Zastanawiałem się tylko, cóż to za powód skłania was do tak zażartej kłótni."~ */ GOTO 2
  IF ~~ THEN REPLY #33640 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #33627 /* ~"Nie twój interes, trepie. Szpicuj się!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33641 /* ~"Twoja siostra prosiła, abym położył kres waszej kłótni."~ */ GOTO 4
  IF ~~ THEN REPLY #33643 /* ~"Nie ma więc sposobu, aby zakończyć wasz spór?"~ */ GOTO 3
  IF ~~ THEN REPLY #33644 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #33628 /* ~"Nie, nie ma. Ten suczysyn potraktował moją siostrę jak szmatę, a teraz za to zapłaci. To nie twoja rzecz, tedy trzymaj się z dala!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33645 /* ~"Twoja siostra prosiła, abym położył kres waszej kłótni."~ */ GOTO 4
  IF ~~ THEN REPLY #33646 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #33629 /* ~Mężczyzna momentalnie cichnie. "Wysłała cię tutaj Elicja? Zaprawdę nie wiem, kim jesteś, trepie, ale nie sądzę, aby ci się udało powstrzymać nas!"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33647 /* ~"Piorąc wam obu skórę, jeśli będzie trzeba."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33648 /* ~"Piorąc wam obu skórę, jeśli będzie trzeba."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33650 /* ~"Piorąc wam obu skórę, jeśli będzie trzeba."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33652 /* ~"Piorąc wam obu skórę, jeśli będzie trzeba."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33654 /* ~"Słuchaj, Elicja nie chce, aby żadnemu z was stała się jakakolwiek krzywda. Czyż nie możecie w inny sposób rozstrzygnąć swego sporu, bez doprowadzania jej do szaleństwa?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33656 /* ~"Słuchaj, Elicja nie chce, aby żadnemu z was stała się jakakolwiek krzywda. Czyż nie możecie w inny sposób rozstrzygnąć swego sporu, bez doprowadzania jej do szaleństwa?"~ */ GOTO 6
  IF ~~ THEN REPLY #33658 /* ~"Ja też nie sądzę. Żegnaj."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.2 4.3 6.1 6.2 6.3
  SAY #33630 /* ~"Czyś jest szalony, śmiałku? Spójrz na siebie. Możesz być dobry i możesz być cały w szramach, ale ja nie dbam o to. Więc przestań kłapać jadaczką i szpicuj się stąd, ale już!"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33659 /* ~"Słuchaj, Elicja nie chce, aby żadnemu z was stała się jakakolwiek krzywda. Czyż nie możecie w inny sposób rozstrzygnąć swego sporu, bez doprowadzania jej do szaleństwa?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33660 /* ~"Słuchaj, Elicja nie chce, aby żadnemu z was stała się jakakolwiek krzywda. Czyż nie możecie w inny sposób rozstrzygnąć swego sporu, bez doprowadzania jej do szaleństwa?"~ */ GOTO 6
  IF ~~ THEN REPLY #33661 /* ~"Dobrze... Żegnaj."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.5 5.1
  SAY #33631 /* ~"Pilnuj własnych spraw. Nie pchaj nosa do cudzego prosa, trepie."~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33662 /* ~"Jeżeli nie przestaniecie się kłócić, jak mi bogowie mili, spiorę wam obu skórę."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33663 /* ~"Jeżeli nie przestaniecie się kłócić, jak mi bogowie mili, spiorę wam obu skórę."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33664 /* ~"Jeżeli nie przestaniecie się kłócić, jak mi bogowie mili, spiorę wam obu skórę."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33665 /* ~"Jeżeli nie przestaniecie się kłócić, jak mi bogowie mili, spiorę wam obu skórę."~ */ GOTO 5
  IF ~~ THEN REPLY #33666 /* ~"Dobrze... A teraz żegnaj."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 6.0
  SAY #33632 /* ~Mężczyzna przez chwilę mierzy cię spojrzeniem. "Ech... Myślę, że w sumie można lepiej załatwić sprawę z tym parszywcem... Poza tym, to tylko ucieszy Elicję."~ */
  IF ~~ THEN REPLY #33667 /* ~"Cieszę się, że doszedłeś do takiego wniosku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.4 5.0
  SAY #33633 /* ~Mężczyzna przez chwilę marszczy brwi, a potem kiwa głową. "Masz rację, śmiałku... Próbowałem bronić jej spraw, a potem wszakże zignorowałem jej błagania." Wzdycha. "Myślę, że w sumie można lepiej załatwić sprawę z tym parszywcem."~ */
  IF ~~ THEN REPLY #33668 /* ~"Cieszę się, że doszedłeś do takiego wniosku. Żegnaj."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 9 // from:
  SAY #33634 /* ~Brat Elicji kiwa głową z aprobatą. "Dzięki, żeś mi dopomógł załatwić całą sprawę. Niezgorszy z ciebie śmiałek. Niechaj trupem padnę, jeśli się mylę."~ */
  IF ~~ THEN REPLY #33669 /* ~"Dzięki. Żegnaj."~ */ EXIT
END
