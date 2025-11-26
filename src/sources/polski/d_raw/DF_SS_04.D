// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_04~

IF ~  !Global("S_Stone","AR0603",4)
!Global("S_Stone","AR0603",11)
~ THEN BEGIN 0 // from:
  SAY #34215 /* ~To niezwykły, zielono-żólty kamień. Jest bezpiecznie umocowany w cokole, na którym spoczywa.~ */
  IF ~~ THEN REPLY #47430 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",4)
~ THEN BEGIN 1 // from:
  SAY #47431 /* ~Przewodnik skierował cię do tego niezwykłego, zielonkawo-żóltego kamienia. Kryje się w nim doznanie 'Prawdziwy zachwyt'.~ */
  IF ~~ THEN REPLY #47432 /* ~Zacznij doznanie.~ */ GOTO 2
  IF ~~ THEN REPLY #47433 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47434 /* ~Niepewnie otwierasz usta i bierzesz płytki oddech... woda wypełnia twe płuca, jak zimne powietrze. Opadając powoli na dno portu uśmiechasz się i bierzesz głęboki oddech, rozglądasz się na wszystkie strony. Tysiące kolorowych ryb przetaczają się przez pokręcone szlaki jasnych korali. Gdy twoje stopy dotykają dna patrzysz w górę, na kil swego okrętu i głośno śmiejesz się z radości, ku powierzchni wystrzela sznur bąbelków...~ */
  IF ~  Global("Sensation04","AR0603",0)
~ THEN REPLY #47435 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation04","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation04","AR0603",1)
~ THEN REPLY #47436 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",11)
~ THEN BEGIN 3 // from:
  SAY #47437 /* ~Przewodnik skierował cię do tego niezwykłego, zielonkawo-żóltego kamienia. Kryje się w nim doznanie 'Niezmącona radość'.~ */
  IF ~~ THEN REPLY #47438 /* ~Zacznij doznanie.~ */ GOTO 4
  IF ~~ THEN REPLY #47439 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47440 /* ~Tańczysz i pląsasz w rytm skocznej muzyki na święcie leśnych elfów, ty i tuzin innych tancerzy kręcicie się po lesie jak wirujący derwisze, śmiejąc się szaleńczo. Gdy świętujący mieszkańcy lasu wraz z tobą skaczą, klaszczą i tańczą, duszki przemykają w powietrzu nad waszymi głowami zostawiając migoczące śladu kolorowych świateł...~ */
  IF ~  Global("Sensation11","AR0603",0)
~ THEN REPLY #47441 /* ~Przerwij doznanie.~ */ DO ~SetGlobal("Sensation11","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation11","AR0603",1)
~ THEN REPLY #47442 /* ~Przerwij doznanie, odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47443 /* ~Wygląda na to, że to doznanie odkryło dawno zapomniane, trochę podobne wspomnienie w twoim własnym umyśle... czujesz jakbyś coś zyskał używając kamienia doznań.~ */
  IF ~~ THEN REPLY #47444 /* ~Odejdź.~ */ EXIT
END
