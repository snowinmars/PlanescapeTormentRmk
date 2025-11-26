// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMIMEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMIMEM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49756 /* ~Na twarzy tego mężczyzny, obserwującego w skupieniu występy jakiegoś artysty, zarysowuje się zmieszanie.~ */
  IF ~~ THEN REPLY #49757 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #49758 /* ~Pozostaw mężczyznę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49759 /* ~Mężczyzna obraca się w twym kierunku, uwagę jego jednak wciąż w znacznej mierze przykuwa występ artysty. "Dziwne, nie? Biedny człowiek."~ */
  IF ~~ THEN REPLY #49760 /* ~"Co się dzieje?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49761 /* ~"Zapomnijmy o tym. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #49762 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #49763 /* ~Kontynuując obserwowanie milczącego, ubranego na czarno mężczyzny, kiwa ci w odpowiedzi przecząco. "Nie teraz, panie, proszę. Żegnaj."~ */
  IF ~~ THEN REPLY #49764 /* ~"Poczekaj... Powiedz mi przynajmniej, co tu się dzieje."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49765 /* ~"Tylko parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #49766 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #49767 /* ~"Doprawdy, panie, odejdź. Jestem pewien, iż możesz tu znaleźć wielu innych ludzi, z którymi miast mnie będziesz mógł porozmawiać. Odejdź więc i pozwól mi obejrzeć w spokoju to przedstawienie, dobrze? Żegnam."~ */
  IF ~~ THEN REPLY #49768 /* ~"Poczekaj... Powiedz mi przynajmniej, co tu się dzieje."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49769 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #49770 /* ~"Heh, wiesz... Mężczyzna ów daje tu pewien pokaz. Jego przedstawienie polega na udawaniu rozmaitych czynności... Zarówno tych posiadających fizyczną naturę, jak choćby podciąganie się na linie, próby wydostania się z niewidzialnego pudła oraz z naśladowania przypadkowych gapiów. Raz udało mu się w idealny sposób sparodiować sposób chodzenia pewnego maga, przez co został najpewniej obłożony klątwą... Teraz, w rzeczy samej, uwięziony *jest* w niewidzialnym pudle... Stracił też zdolność mówienia. Paradoksalne, nieprawdaż?"~ */
  IF ~~ THEN REPLY #49771 /* ~"Odrobinę, tak. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #49772 /* ~"Dziwne to. W porządku. Żegnaj."~ */ EXIT
END
