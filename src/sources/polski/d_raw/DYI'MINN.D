// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYI'MINN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DYI'MINN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #44367 /* ~Ten dziko wyglądający człowiek o żółtej skórze mierzy cię przez chwilę badawczym wzrokiem. Jego oczy nagle rozszerzają się i z okrzykiem "Pies! Kochanek psów githzerai!" mężczyzna wyciąga miecz i rzuca się na ciebie!~ */
  IF ~~ THEN REPLY #44368 /* ~Zaatakuj.~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44369 /* ~Uciekaj.~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",0)
~ THEN BEGIN 1 // from:
  SAY #44372 /* ~Człowiek ten ma szorstką, stwardniałą skórę o bladożółtym odcieniu, pokrytą plątaniną tatuaży i blizn. Rysy jego twarzy świadczą o znacznym wycieńczeniu. Twarz ma kanciastą, nos niewielki, wysoko usadowiony i wąskie uszy. Jego ubiór składa się z dziwnych, krzykliwych skórzanych szat, zdatnych chyba bardziej do ozdoby, niż autentycznie przydatnych w walce. Kiedy się doń zbliżasz, przygląda ci się bacznie. Jego oczy lśnią jak dwa czarne kamyki. "To tyś jest tym człowiekiem, który chce odzyskać pamięć." mówi bez emocji w głosie. "Mogę ci pomóc."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44375 /* ~"Tyś jest githyanki, czyż nie?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44378 /* ~"Kim jesteś, bądź też czym jesteś?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44380 /* ~"Witaj, dzierżący-miecz."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44385 /* ~"Skąd to wiesz?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 6
  IF ~~ THEN REPLY #44388 /* ~"Na czym miałaby polegać twoja pomoc?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 7
  IF ~~ THEN REPLY #44390 /* ~"Dziękuję. Nie jestem zainteresowany. Żegnaj."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 8
END

IF WEIGHT #3 /* Triggers after states #: 39 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",0)
~ THEN BEGIN 2 // from:
  SAY #44391 /* ~Człowiek ten ma szorstką, stwardniałą skórę o bladożółtym odcieniu, pokrytą plątaniną tatuaży i blizn. Rysy jego twarzy świadczą o znacznym wycieńczeniu. Twarz ma kanciastą, nos niewielki, wysoko usadowiony i wąskie uszy. Jego ubiór składa się z dziwnych, krzykliwych skórzanych szat, zdatnych chyba bardziej do ozdoby, niż autentycznie przydatnych w walce. Kiedy się doń zbliżasz, przygląda ci się bacznie. Jego oczy lśnią jak dwa czarne kamyki. "To tyś jest tym człowiekiem, który chce odzyskać pamięć." mówi bez emocji w głosie. "Mogę ci pomóc."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"Tyś jest githyanki, czyż nie?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Kim jesteś, bądź też czym jesteś?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Witaj, dzierżący-miecz."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"Skąd to wiesz?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"Na czym miałaby polegać twoja pomoc?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 7
  IF ~~ THEN REPLY #44402 /* ~"Dziękuję. Nie jestem zainteresowany. Żegnaj."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 21.0 22.0
  SAY #44404 /* ~"Mam przyjemność należeć do tego ludu." W jego głosie nie ma emocji. "Czy chciałbyś, abym ci pomógł odzyskać pamięć?"~ */
  IF ~~ THEN REPLY #44405 /* ~"Kim jesteś, bądź też czym jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #44406 /* ~"Hmm. Może nie dzisiaj. Dzięki."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.0 6.0 21.1 22.1
  SAY #44407 /* ~"Jestem Yi'minn, poławiacz z rasy githyanki. Mój lud to niekwestionowani władcy Sfery Astralnej, miejsca, gdzie bogowie przybywają, aby umrzeć, a wspomnienia zmarłych zaścielają ziemię jak liście drzew na jesieni. To do mnie należy odzyskiwanie wspomnień zmarłych i udzielanie im wyjaśnień. Mogę przywrócić ci twoją pamięć. Ale będziesz musiał za to zapłacić."~ */
  IF ~~ THEN REPLY #44408 /* ~"A jakaż to cena?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #44410 /* ~"Dziękuję. Nie jestem zainteresowany. Żegnaj."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 21.2 22.2
  SAY #44413 /* ~Jego twarz natychmiast tężeje, a mięśnie prężą się. Dłoń odruchowo dotyka rękojeści miecza. "Użyłeś w mojej obecności obrzydłego języka psów githzerai. Czy to dowód twej ignorancji czy jawna zniewaga mojej osoby?"~ */
  IF ~~ THEN REPLY #44416 /* ~"Ignorancja."~ */ GOTO 12
  IF ~~ THEN REPLY #44417 /* ~"Zniewaga."~ */ GOTO 11
  IF ~~ THEN REPLY #44419 /* ~"Nie jesteś githzerai?"~ */ GOTO 14
  IF ~~ THEN REPLY #44422 /* ~"Ani jedno, ani drugie."~ */ GOTO 19
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3 21.3 22.3
  SAY #44425 /* ~"Wyglądasz na takiego. Uprawiając swój zawód, mam często do czynienia z istotami twojego pokroju."~ */
  IF ~~ THEN REPLY #44432 /* ~"Kim jesteś, bądź też czym jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #44434 /* ~"Zostaw mnie w spokoju. Nie ciekawią mnie twoje gusła."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.4 2.4 21.4 22.4
  SAY #44437 /* ~"Czy nie jestem githyanki? Czyż nie przemieszkujemy pośród krain Sfery Astralnej? Jestem poławiaczem uciekających wspomnień. Wiem, jak je wabić. Wiem, jak je łapać." Milknie i pochyla się ku tobie w geście konspiracyjnego zwierzenia. "Wiem, jak je odzyskiwać. Wystarczy tylko, że zapłacisz."~ */
  IF ~~ THEN REPLY #44439 /* ~"A jakaż to cena?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #44441 /* ~"Co możesz mi powiedzieć o Sferze Astralnej?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #44445 /* ~"Nie jestem zainteresowany. Żegnaj."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.5 2.5 3.1 4.1 6.1 7.2 9.1 10.1 16.1 18.1 20.1
  SAY #44447 /* ~"Pamiętaj o mojej propozycji, człowieku. Jeśli będziesz szukał swoich wspomnień, zawsze znajdziesz mnie tutaj. Pamiętaj moje słowa."~ */
  IF ~~ THEN REPLY #44450 /* ~"Zrobię tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 7.0 16.0 18.0 20.0 21.5 22.5 23.0
  SAY #44455 /* ~"To kwestia zaledwie kilku miedziaków. Cena jest do utargowania. Możemy zacząć od stu. Ocenisz wartość swoich wspomnień, a kiedy je odnajdę, zapłacisz mi według własnego uznania."~ */
  IF ~~ THEN REPLY #44457 /* ~"To brzmi obiecująco. A co muszę zrobić?"~ */ GOTO 10
  IF ~~ THEN REPLY #44458 /* ~"Może innym razem. Póki co, żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.0 23.1
  SAY #44459 /* ~"Jeżeli mam zwabić do siebie twoje wspomnienia, muszę mieć garść wspomnień, które już posiadasz. Muszę mieć również do dyspozycji spokojne, odludne miejsce, gdzie mógłbym się skoncentrować. Pójdź za mną, a zaprowadzę cię w takie okolice. Ale idziesz sam, bez żadnych towarzyszy."~ */
  IF ~~ THEN REPLY #44460 /* ~"Zgoda. Ruszajmy."~ */ DO ~SetGlobal("Yiminn_Trap","AR0500",1)
StartCutSceneMode()
StartCutSceneEx("Yiminn",FALSE)
~ EXIT
  IF ~~ THEN REPLY #44461 /* ~"Może innym razem."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #44462 /* ~"Węszę w tym twój nędzny podstęp, psie githyanki. Wasi panowie z rasy *illithidów* powinni nigdy nie spuszczać was z łańcucha."~ */ DO ~AddexperienceParty(1000)
~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 5.1 10.2 12.3 13.2 19.1 25.2 26.1 27.0
  SAY #44463 /* ~Nie uroniwszy jednego słowa, poławiacz błyskawicznie dobywa broni i rzuca się na ciebie!~ */
  IF ~~ THEN REPLY #44464 /* ~Walcz.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44465 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 19.0
  SAY #44466 /* ~"Możesz teraz błagać o przebaczenie." Stoi nieruchomo jak posąg, a jego oczy omiatają twoją postać.~ */
  IF ~~ THEN REPLY #44467 /* ~"Przyjmij moje przeprosiny."~ */ GOTO 18
  IF ~~ THEN REPLY #44468 /* ~"Mam błagać? Ciebie?"~ */ GOTO 13
  IF ~~ THEN REPLY #44469 /* ~"A co? Nie lubisz, jak się na ciebie mówi githzerai?"~ */ GOTO 14
  IF ~~ THEN REPLY #44470 /* ~"Nie do pomyślenia."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #44471 /* ~"Tak." Uśmiecha się bez cienia wesołości. "Usłyszałem z twoich ust niemal śmiertelną zniewagę. Możesz błagać o przebaczenie."~ */
  IF ~~ THEN REPLY #44472 /* ~"Przyjmij moje przeprosiny."~ */ GOTO 18
  IF ~~ THEN REPLY #44473 /* ~"A co? Nie lubisz, jak się na ciebie mówi githzerai?"~ */ GOTO 14
  IF ~~ THEN REPLY #44474 /* ~"Nie do pomyślenia."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 5.2 12.2 13.1
  SAY #44475 /* ~"Jestem githyanki. Nie mam nic wspólnego z psami githzerai. Czy możesz powiedzieć to samo o sobie?"~ */
  IF ~~ THEN REPLY #44476 /* ~Prawda: "Znam paru githzerai. Całkiem miłe istoty."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #44477 /* ~Kłamstwo: "Znam paru githzerai. Całkiem miłe istoty."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  Global("Yiminn_zerai","AR0500",0)
~ THEN REPLY #44478 /* ~Prawda: "Nie, githzerai nic dla mnie nie znaczą."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 16
  IF ~  Global("Yiminn_zerai","AR0500",0)
~ THEN REPLY #44479 /* ~Kłamstwo: "Nie, githzerai nic dla mnie nie znaczą."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~  Global("Yiminn_zerai","AR0500",1)
~ THEN REPLY #44480 /* ~Prawda: "Nie, githzerai nic dla mnie nie znaczą."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 17
  IF ~  Global("Yiminn_zerai","AR0500",1)
~ THEN REPLY #44481 /* ~Kłamstwo: "Nie, githzerai nic dla mnie nie znaczą."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 17.0
  SAY #44483 /* ~"A więc darzysz przyjaźnią psy githzerai? Dobrze, zaraz zabierzesz swoją przyjaźń w zaświaty!" Mężczyzna wyciąga miecz i rzuca się na ciebie!~ */
  IF ~~ THEN REPLY #44484 /* ~Walcz.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44488 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 14.3
  SAY #44490 /* ~"Wobec tego nieważne. Porozmawiajmy o innych rzeczach. Chcesz odzyskać wspomnienia, a ja mogę ci w tym pomóc. Musimy tylko pomówić o cenie."~ */
  IF ~~ THEN REPLY #44491 /* ~"A jakaż to cena?"~ */ GOTO 9
  IF ~~ THEN REPLY #44492 /* ~"W tym momencie nie jestem zainteresowany."~ */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 14.4 14.5
  SAY #44493 /* ~Wściekły grymas nie schodzi mu z twarzy, a bitewna czujność nie opuszcza jego ciała. "Mówisz, że nic do ciebie nie znaczą, a powitałeś mnie w ich parszywym języku. Co jest więc prawdą?"~ */
  IF ~~ THEN REPLY #44494 /* ~"Złapałeś mnie. To nie są złe istoty."~ */ GOTO 15
  IF ~~ THEN REPLY #44495 /* ~"Są dla mnie niczym. Przyznaję swoją ignorancję, przyznaję, że się przejęzyczyłem i przepraszam. Czy tak lepiej?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 12.0 13.0 17.1
  SAY #44496 /* ~"Dobrze. Krew githzerai rzadka jest jak woda, a ich nasienie grząskie jak błoto. Porozmawiajmy o innych rzeczach. Chcesz odzyskać wspomnienia, a ja mogę ci w tym pomóc. Musimy tylko ustalić cenę."~ */
  IF ~~ THEN REPLY #44497 /* ~"A jaka to cena?"~ */ GOTO 9
  IF ~~ THEN REPLY #44498 /* ~"Pozwól, że jeszcze poruszę z tobą ten temat."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 5.3
  SAY #44499 /* ~"Te słowa musiały być dyktowane albo wyrachowaniem, albo ignorancją. Jednym z dwojga. Więc czym?"~ */
  IF ~~ THEN REPLY #44500 /* ~"Tak. To kwestia ignoracji."~ */ GOTO 12
  IF ~~ THEN REPLY #44501 /* ~"To była zamierzona zniewaga."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 7.1
  SAY #44502 /* ~"To miejsce niematerialne, miejsce pomiędzy miejscami, gdzie jedyną rzeczą, jaka się liczy, jest umysł. To ojczyzna mojego ludu. Kiedy ludzie umierają, ich dusze fruną ku Sferom Zewnętrznym. Kiedy zaś mijają Sferę Astralną, gubią swoje wspomnienia i zrzucają je w odmęty Srebrnego Morza. Wiem, jak trafić na wybrzeża tego morza. Wiem jak wyłowić z jego wód cudze wspomnienia. Teraz wystarczy, jeśli tylko pomówimy o cenie."~ */
  IF ~~ THEN REPLY #44503 /* ~"A jakaż to cena?"~ */ GOTO 9
  IF ~~ THEN REPLY #44505 /* ~"Pozwól, że jeszcze poruszę z tobą ten temat."~ */ GOTO 8
END

IF WEIGHT #4 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",1)
~ THEN BEGIN 21 // from:
  SAY #44504 /* ~"Poszukujesz wspomnień, czyż nie, człowieku? Mogę ci pomóc je odzyskać, bo twoje zagubienie zdaje się rosnąć z każdą chwilą. Nie obawiaj się, nie zapłacisz zbyt wiele za ten bezcenny kawałek własnej pamięci."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"Tyś jest githyanki, czyż nie?"~ */ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Kim jesteś, bądź też czym jesteś?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Witaj, dzierżący-miecz."~ */ DO ~SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"Skąd to wiesz?"~ */ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"Na czym miałaby polegać twoja pomoc?"~ */ GOTO 7
  IF ~~ THEN REPLY #44506 /* ~"A co to za cena?"~ */ GOTO 9
  IF ~~ THEN REPLY #44507 /* ~"Powiedz mi jeszcze coś o twoim ludzie."~ */ GOTO 23
  IF ~~ THEN REPLY #44508 /* ~"Może nie dzisiaj. Dzięki."~ */ GOTO 24
END

IF WEIGHT #5 /* Triggers after states #: 39 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",1)
~ THEN BEGIN 22 // from:
  SAY #44509 /* ~"Poszukujesz wspomnień, czyż nie, człowieku? Mogę ci pomóc je odzyskać, bo twoje zagubienie zdaje się rosnąć z każdą chwilą. Nie obawiaj się, nie zapłacisz zbyt wiele za ten bezcenny kawałek własnej pamięci."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"Tyś jest githyanki, czyż nie?"~ */ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Kim jesteś, bądź też czym jesteś?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Witaj, dzierżący-miecz."~ */ DO ~SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"Skąd to wiesz?"~ */ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"Na czym miałaby polegać twoja pomoc?"~ */ GOTO 7
  IF ~~ THEN REPLY #44510 /* ~"A co to za cena?"~ */ GOTO 9
  IF ~~ THEN REPLY #44511 /* ~"Powiedz mi jeszcze coś o twoim ludzie."~ */ GOTO 23
  IF ~~ THEN REPLY #44512 /* ~"Może nie dzisiaj. Dzięki."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 21.6 22.6
  SAY #44513 /* ~"Odpowiedź na to znajdziesz w swoich zgubionych wspomnieniach. Zacznijmy tylko, a dowiesz się wszystkiego."~ */
  IF ~~ THEN REPLY #44514 /* ~"A co to za cena?"~ */ GOTO 9
  IF ~~ THEN REPLY #44515 /* ~"Z czym się to łączy?"~ */ GOTO 10
  IF ~~ THEN REPLY #44516 /* ~"Nie wydaje mi się, aby mnie to interesowało."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 21.7 22.7 23.2
  SAY #44517 /* ~"Gdybyś zmienił zdanie, a zmienisz, człowieku, zmienisz na pewno, możesz tutaj powrócić."~ */
  IF ~~ THEN REPLY #44518 /* ~"Jasne. Żegnaj."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Know_Yiminn","AR0500",0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 25 // from:
  SAY #44519 /* ~Człowiek ten ma szorstką, stwardniałą skórę o bladożółtym odcieniu, pokrytą plątaniną tatuaży i blizn. Rysy jego twarzy świadczą o znacznym wycieńczeniu. Twarz ma kanciastą, nos niewielki, wysoko usadowiony i wąskie uszy. Jego ubiór składa się z dziwnych, krzykliwych skórzanych szat, zdatnych chyba bardziej do ozdoby, niż autentycznie przydatnych w walce. Kiedy się doń zbliżasz, przygląda ci się bacznie. Jego oczy lśnią jak dwa czarne kamyki. Otwierasz usta, aby się go przywitać, ale człowiek ucisza się gestem dłoni "Nie wysłucham cię, człowieku. Nie szukaj pomocy u męża z Ludu."~ */
  IF ~~ THEN REPLY #44520 /* ~"O czym ty mówisz?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 27
  IF ~~ THEN REPLY #44521 /* ~"Chciałbym po prostu zadać ci kilka pytań..."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 27
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44522 /* ~"Twój 'Lud' to psy, które nie powinny nigdy porzucać łańcuchów waszych panów *illithidów*."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 11
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44523 /* ~"Mam po prostu kilka pytań do wielmożnego githyanki."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 28
  IF ~~ THEN REPLY #44524 /* ~"W porządku."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Know_Yiminn","AR0500",1)
!NearbyDialog("DDakkon")
~ THEN BEGIN 26 // from:
  SAY #44525 /* ~"Powiedziałem, żebyś się do mnie nie odzywał. Czy wszyscy ludzie są tak słabi na umyśle?"~ */
  IF ~~ THEN REPLY #44526 /* ~"Chciałbym, żebyś po prostu odpowiedział na kilka moich pytań."~ */ GOTO 27
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44527 /* ~"Twój 'Lud' to psy, które nie powinny nigdy porzucać łańcuchów waszych panów *illithidów*."~ */ GOTO 11
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44528 /* ~"Mam po prostu kilka pytań do wielmożnego githyanki."~ */ GOTO 28
  IF ~~ THEN REPLY #44529 /* ~"W takim razie zapomnij o tym."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0 25.1 26.0
  SAY #44530 /* ~Spogląda na ciebie surowo, z ustami ściągniętymi w wąską szparę.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44531 /* ~"Twój 'Lud' to psy, które nie powinny nigdy porzucać łańcuchów waszych panów *illithidów*."~ */ GOTO 11
  IF ~~ THEN REPLY #44532 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.3 26.2
  SAY #44533 /* ~Milknie na chwilę i patrzy ci głęboko w oczy. "Nie chcę ci w niczym uchybić, lecz mam wrażenie, że moja wiedza będzie dla ciebie, niczym dzban wody dla zdrożonego wędrowca."~ */
  IF ~~ THEN REPLY #44534 /* ~"Możesz mi powiedzieć coś o sobie?"~ */ GOTO 29
  IF ~~ THEN REPLY #44535 /* ~"Możesz mi powiedzieć coś o twoim ludzie?"~ */ GOTO 30
  IF ~~ THEN REPLY #44536 /* ~"Możesz mi powiedzieć coś o githzerai?"~ */ GOTO 31
  IF ~~ THEN REPLY #44537 /* ~"W porządku. Żegnaj."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #44538 /* ~"Jestem Yi'minn, poławiacz. Wyławiam wspomnienia zmarłych uwięzione w Sferze Astralnej."~ */
  IF ~~ THEN REPLY #44539 /* ~"Mógłbyś pomóc mi odzyskać moje wspomnienia?"~ */ GOTO 32
  IF ~~ THEN REPLY #44540 /* ~"Co możesz mi powiedzieć o Sferze Astralnej?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #44541 /* ~"Jeżeli odczuwasz szacunek do mojego ludu, czemu więc nic ci o nas nie wiadomo?"~ */
  IF ~~ THEN REPLY #44542 /* ~"Chciałbym po prostu wiedzieć więcej, niż wiem teraz."~ */ GOTO 38
  IF ~~ THEN REPLY #44543 /* ~"Po prostu chciałbym, żebyś zechciał poświęcić mi nieco uwagi."~ */ GOTO 38
END

IF ~~ THEN BEGIN 31 // from: 28.2
  SAY #44544 /* ~"Oni są nieczystościami naszego świata. Często jęczą o litość, ale nie są jej godni. Ich krew jest rzadka jak woda i takie same są ich umysły." Odsłania zęby. "Przynosić bolesna zagładę im i ich sojusznikom to dla mnie obowiązek i osobista przyjemność."~ */
  IF ~~ THEN REPLY #44545 /* ~"To miło. A czy mógłbyś odpowiedzieć mi jeszcze na kilka innych pytań?~ */ JOURNAL #38976 /* ~Odkryłem rywalizację pomiędzy githyanki a githzerai. Najwidoczniej tworzyli kiedyś jedną rasę, ale tysiące lat temu rozdzielili się. Teraz zaś czują do siebie zajadłą nienawiść.~ */ GOTO 35
  IF ~~ THEN REPLY #44546 /* ~"Zatem żegnaj."~ */ JOURNAL #38976 /* ~Odkryłem rywalizację pomiędzy githyanki a githzerai. Najwidoczniej tworzyli kiedyś jedną rasę, ale tysiące lat temu rozdzielili się. Teraz zaś czują do siebie zajadłą nienawiść.~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #44556 /* ~"Tak. Możemy pomówić o cenie."~ */
  IF ~~ THEN REPLY #44558 /* ~"A co to za cena?"~ */ GOTO 36
  IF ~~ THEN REPLY #44559 /* ~"Zapłacę, ile będzie trzeba."~ */ GOTO 36
  IF ~~ THEN REPLY #44560 /* ~"Możemy się jeszcze o coś potargować?"~ */ GOTO 36
  IF ~~ THEN REPLY #44561 /* ~"Nieważne. Odpowiedz na kilka moich pytań."~ */ GOTO 35
  IF ~~ THEN REPLY #44562 /* ~"Zapomnij o tym. Żegnaj."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #44563 /* ~"To miejsce niematerialne, miejsce pomiędzy miejscami, gdzie jedyną rzeczą, jaka się liczy, jest umysł. To ojczyzna mojego ludu. Kiedy ludzie umierają, ich dusze fruną ku Sferom Zewnętrznym. Kiedy zaś mijają Sferę Astralną, gubią swoje wspomnienia i zrzucają je w odmęty Srebrnego Morza."~ */
  IF ~~ THEN REPLY #44564 /* ~"Ach tak. A czy mógłbyś odpowiedzieć mi jeszcze na kilka innych pytań?~ */ GOTO 35
  IF ~~ THEN REPLY #44565 /* ~"Dzięki. Żegnaj."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 28.3 31.1 32.4 33.1 35.0
  SAY #44566 /* ~"Już raz odpowiedziałem na twoje pytania. Nie przychodź do mnie ciągle z tym samym."~ */
  IF ~~ THEN REPLY #44567 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 31.0 32.3 33.0 36.1 36.2
  SAY #44568 /* ~"Nie odpowiem już na żadne twoje pytanie. Już raz pogwarzyliśmy sobie uprzejmie i na tym koniec."~ */
  IF ~~ THEN REPLY #44569 /* ~"Hm, jeżeli faktycznie tak musi być... Żegnaj."~ */ GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 32.0 32.1 32.2
  SAY #44570 /* ~"Moja cena to dwieście miedziaków. Innej sobie nie wyobrażam."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #44571 /* ~"Proszę. Pieniądze są twoje."~ */ DO ~TakePartyGold(200)
~ GOTO 37
  IF ~~ THEN REPLY #44572 /* ~"To trochę za dużo. Może mógłbyś odpowiedzieć mi jeszcze na kilka innych pytań?~ */ GOTO 35
  IF ~~ THEN REPLY #44573 /* ~"Zapomnij o tym. Żegnaj."~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #44574 /* ~Poławiacz githyanki skrzętnie chowa miedziaki i mówi: "Powróć tu za jakiś tydzień. Wtedy będę miał twoje wspomnienia. A nie spóźnij się."~ */
  IF ~~ THEN REPLY #44577 /* ~"Bardzo dobrze. Żegnaj."~ */ DO ~EscapeArea()
DestroySelf()
~ JOURNAL #39452 /* ~Właśnie dobiłem targu z githyanki Yi'minnem. Odzyska dla mnie wspomnienia ze Sfery Astralnej. Powiedział, żebym ponownie spotkał się z nim za tydzień w Niższej Dzielnicy.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 30.0 30.1
  SAY #44579 /* ~"Myślisz, że nie dostrzegam twoich nędznych podstępów? Odejdź. Już raz pogwarzyliśmy sobie uprzejmie i na tym koniec."~ */
  IF ~~ THEN REPLY #44580 /* ~"Bardzo dobrze. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Yiminn_Trap","AR0500",1)
~ THEN BEGIN 39 // from:
  SAY #44583 /* ~Usposobienie githyanki, już od samego początku niespecjalnie ci przychylne, tym razem przeobraża się w niemal nieskrępowaną wrogość "A teraz, człowieku, odłóż swoją malowaną tarczę i powiedz nam o tym, jakie zadania powierzyły ci te psy githzerai, warujące w ścianach Sigil."~ */
  IF ~~ THEN REPLY #44586 /* ~"Nie mieliśmy się zająć moimi wspomnieniami?"~ */ GOTO 40
  IF ~~ THEN REPLY #44588 /* ~"Nie powiem ci."~ */ GOTO 41
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #44590 /* ~"Po prostu ukoiłem ból kobiety githzerai."~ */ GOTO 42
  IF ~~ THEN REPLY #44594 /* ~"Chciałbym po prostu zadać kilka pytań."~ */ GOTO 43
  IF ~~ THEN REPLY #44596 /* ~"Skłamałem, aby ich zmylić."~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #44598 /* ~"Do Sfery Astralnej dotrzesz tylko jako niewolnik, człowieku. Daję ci jeszcze jedną szansę na to, abyś opowiedział mi o tym, jakie zadania powierzyły ci te psy githzerai, warujące w ścianach Sigil."~ */
  IF ~~ THEN REPLY #44601 /* ~"Nie powiem ci."~ */ GOTO 41
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #44603 /* ~"Po prostu ukoiłem ból kobiety githzerai."~ */ GOTO 42
  IF ~~ THEN REPLY #44605 /* ~"Chciałbym po prostu zadać kilka pytań."~ */ GOTO 42
  IF ~~ THEN REPLY #44606 /* ~"Skłamałem, aby ich zmylić."~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.0
  SAY #44607 /* ~"Wobec tego umrzesz." Poławiacz wyciąga broń i rzuca się na ciebie.~ */
  IF ~~ THEN REPLY #44608 /* ~Walcz.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44610 /* ~Pozwól im, aby cię zabili.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 42 // from: 39.2 40.1 40.2
  SAY #44611 /* ~"Kłamiesz jak pies githzerai, człowieku. Jesteś ich sprzymierzeńcem i ich pijawką. Dlatego uwolnię Sfery od twojej nędznej osoby tym oto ostrzem." W dłoniach poławiacza natychmiast pojawia się miecz.~ */
  IF ~~ THEN REPLY #44612 /* ~Walcz.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44613 /* ~Pozwól im, aby cię zabili.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 39.3 40.3
  SAY #44614 /* ~"Nieprawda. Przyglądałeś się i podsłuchiwałeś. Twoje słowa i twoje serce zdradzają cię, człowieku. Przygotuj się na śmierć."~ */
  IF ~~ THEN REPLY #44615 /* ~Walcz.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44616 /* ~Pozwól im, aby cię zabili.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 39.4 41.1 42.1 43.1
  SAY #44617 /* ~Ostrze Yi'minna tnie twoje gardło i upadasz na ziemię, zalany krwią. Poławiacze stoją nad tobą i zaczynają rozmawiać. "Czy naprawdę niczego nie wiedział, Al-midil?"~ */
  IF ~~ THEN DO ~IncrementGlobal("Death","GLOBAL",1)
~ EXTERN ~DALMIDIL~ 0
END

IF ~~ THEN BEGIN 45 // from:
  SAY #44618 /* ~"Jeżeli uważasz, że nasza wiedza jest dostateczna, odejdziemy. Zwołaj wojowników i dołączmy do naszego oddziału w Limbo."~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
StartCutSceneMode()
StartCutSceneEx("0500cut4",FALSE)
~ EXIT
END

IF WEIGHT #8 ~  NearbyDialog("DDakkon")
~ THEN BEGIN 46 // from:
  SAY #44619 /* ~Człowiek ten ma szorstką, stwardniałą skórę o bladożółtym odcieniu, pokrytą plątaniną tatuaży i blizn. Rysy jego twarzy świadczą o znacznym wycieńczeniu. Twarz ma kanciastą, nos niewielki, wysoko usadowiony i wąskie uszy. Jego ubiór składa się z dziwnych, krzykliwych skórzanych szat, zdatnych chyba bardziej do ozdoby, niż autentycznie przydatnych w walce. Kiedy się doń zbliżasz, przygląda ci się bacznie. Jego oczy lśnią jak dwa czarne kamyki. Zanim do niego docierasz, Dak'kon zatrzymuje się.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 149
END

IF ~~ THEN BEGIN 47 // from:
  SAY #44620 /* ~Jakkolwiek githyanki obserwował wasze nadejście z dużą uwagą, nie ma najmniejszej ochoty na prowadzenie z tobą rozmów "Oto i Dak'kon-zawodzący-u-ścian-Shrak'at'lor. Jakaż miła niespodzianka." W oka mgnieniu wyciąga broń.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXTERN ~DDAKKON~ 154
END

IF ~~ THEN BEGIN 48 // from:
  SAY #44621 /* ~Kiedy się od niego odwracacie, githyanki, który cały czas uważnie was obserwował, odzywa się. "Odwracasz się do mnie plecami, Dak'konie-zawodzący-u-ścian-Shrak'at'lor? Albo staniesz do mnie twarzą w twarz, albo uznam, żeś podszyty sigilijskim tchórzem." Wyciąga broń.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXTERN ~DDAKKON~ 155
END

IF ~~ THEN BEGIN 49 // from: 50.1 51.1 52.2
  SAY #44622 /* ~Githyanki i Dak'kon natychmiast ścierają się w pojedynku.~ */
  IF ~~ THEN REPLY #44623 /* ~Zaatakuj githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44624 /* ~Pozwól, aby się starli.~ */ DO ~ForceAttack("Dakkon",Myself)
Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #44625 /* ~Kiedy Dak'kkon kiwa głową, githyanki parska suchym śmiechem. "Jesteś kundlem tego człowieka, psie. Najpierw zdrajca, teraz zaś niewolnik."~ */
  IF ~~ THEN REPLY #44626 /* ~"Albo będziesz milczał dobrowolnie, albo wyrwę ci język."~ */ GOTO 51
  IF ~~ THEN REPLY #44627 /* ~"Dak'konie, zabij go."~ */ GOTO 49
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #44628 /* ~Githyanki pochyla się i posyła Dak'konowi uśmieszek wyższości. "Nie trzeba nam więcej o tym mówić. Zaniosę swojemu ludowi wieść o upokorzeniu twojego niewolnika. Sprawi im to niezmierną rozkosz."~ */
  IF ~~ THEN REPLY #44629 /* ~"Dość już tej gadaniny. Czekam na swoje wspomnienia."~ */ GOTO 52
  IF ~~ THEN REPLY #44630 /* ~"Dość już. Dak'konie, zabij go."~ */ GOTO 49
  IF ~~ THEN REPLY #44631 /* ~"Dość już. Żegnaj."~ */ GOTO 55
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #44632 /* ~"Wspomnienia? Odnajduję wspomnienia, błądzące w Sferze Astralnej. Z przyjemnością odzyskam je dla ciebie... Za pewna cenę."~ */
  IF ~~ THEN REPLY #44633 /* ~"A jakaż to cena?"~ */ GOTO 53
  IF ~~ THEN REPLY #44634 /* ~"Zapomnij o tym. Odchodzimy."~ */ GOTO 55
  IF ~~ THEN REPLY #44635 /* ~"Dak'konie, zabij go."~ */ GOTO 49
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #44636 /* ~"Moja cena to dwieście miedziaków. Innej ceny sobie nie wyobrażam."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #44637 /* ~"Proszę. Pieniądze są twoje."~ */ DO ~TakePartyGold(200)
~ GOTO 56
  IF ~~ THEN REPLY #44638 /* ~"Obawiam się, że nie mam dość pieniędzy. W takim układzie, chyba już czas na nas."~ */ GOTO 55
  IF ~~ THEN REPLY #44639 /* ~"Zapomnij o tym. Idziemy stąd."~ */ GOTO 55
END

IF ~~ THEN BEGIN 54 // from:
  SAY #44640 /* ~"Cały wieloświat jest placem naszego boju, psie. Nie ma tu żadnych enklaw. Żadnych azylów. Trwa wojna. Giń." Githyanki rzuca się do ataku!~ */
  IF ~~ THEN REPLY #44641 /* ~Zaatakuj githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44642 /* ~Pozwól, aby się starli.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.2 52.1 53.1 53.2
  SAY #44643 /* ~"Chcesz odejść? Nie! Ktoś o sercu zdrajcy spod Shrak'at'lor nie odejdzie stąd żywy." Githyanki rzuca się do ataku!~ */
  IF ~~ THEN REPLY #44644 /* ~Zaatakuj githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44645 /* ~Pozwól, aby się starli.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 53.0
  SAY #44646 /* ~"Chodź tedy za mną, a swojemu psu każ zostać na miejscu."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 157
END

IF ~~ THEN BEGIN 57 // from:
  SAY #44647 /* ~"Poznasz istotę jednego z nich, kiedy z tobą skończę."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 158
END

IF ~~ THEN BEGIN 58 // from:
  SAY #44648 /* ~"Przekonamy się o tym, psie githzerai!" Githyanki z furią naciera na Dak'kona.~ */
  IF ~~ THEN REPLY #44649 /* ~Zaatakuj githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44650 /* ~Pozwól, aby się starli.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END
