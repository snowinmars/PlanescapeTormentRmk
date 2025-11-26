// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHIV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHIV~

IF ~  GlobalGT("RW","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #3796 /* ~"Załatwiłeś tę wiedźmę, Krystal, co? I wydaje ci się, że przez to nie będziesz musiał płacić? Co za szkoda, że masz rację. Przechodź."~ */
  IF ~~ THEN REPLY #3797 /* ~"Dzięki. Żegnaj."~ */ DO ~BitSet("0301_Status","AR0301",BIT3)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("RW","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #3798 /* ~"Witaj, nieznajomy. Wygląda na to, że jesteś teraz na terytorium Kos z Ciemnej Alei. A w dodatku twoja sakiewka aż się prosi, żeby ją odciążyć. Módl się, żeby w niej było wystarczająco dużo brzdęku."~ */
  IF ~~ THEN REPLY #3799 /* ~"Muszę porozmawiać z waszym przywódcą."~ */ GOTO 2
  IF ~~ THEN REPLY #3800 /* ~"Ile potrzebujesz?"~ */ GOTO 3
  IF ~~ THEN REPLY #34436 /* ~"Ciekawe, czy ci się uda cokolwiek zabrać, gdy cię podziurawię."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34437 /* ~"Już płaciłem za przejście."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34438 /* ~Blef: "Już płaciłem za przejście."~ */ GOTO 8
  IF ~~ THEN REPLY #34439 /* ~Uciekaj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 9.0
  SAY #34440 /* ~"Szukasz Zgniłego Williama? Pozwolę ci z nim pogadać, jak tylko pozwolisz mi zajrzeć do swojej sakiewki."~ */
  IF ~~ THEN REPLY #34441 /* ~"Nic z tego. Prędzej zaczniesz krwawić."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34442 /* ~"Ile potrzebujesz?"~ */ GOTO 3
  IF ~~ THEN REPLY #34443 /* ~"Nie. To nie jest dla mnie aż tak ważne."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 9.1
  SAY #34444 /* ~"Wcale nie dużo. Przepuszczę cię za jedyne dziesięć brzdęków."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34445 /* ~"Zgoda."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 5
  IF ~~ THEN REPLY #34446 /* ~"Nic z tego."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #34447 /* ~"W takim razie przekonasz się, że to nie jest aż tak ważne, kiedy zaczniesz krwawić."~ */
  IF ~~ THEN REPLY #34448 /* ~Walcz.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34449 /* ~Uciekaj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #34450 /* ~Mężczyzna bierze twoje pieniądze, chowa do kieszeni i mówi: "Teraz zjeżdżaj stąd."~ */
  IF ~~ THEN REPLY #34451 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #34452 /* ~"W takim razie nie wyjdziesz stąd żywy." Mężczyzna wyjmuje swój nóż i rozpoczyna atak!~ */
  IF ~~ THEN REPLY #34453 /* ~Walcz.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34454 /* ~Uciekaj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3 9.3 10.5 11.5 14.4
  SAY #34455 /* ~Mężczyzna spogląda w kierunku cieni, potem wykonuje gest ręką i jego wzrok powraca do ciebie. "Dobra. Przechodź, trepie."~ */
  IF ~~ THEN REPLY #34456 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 9.4 10.6 11.6 14.5
  SAY #34457 /* ~Mężczyzna spogląda w kierunku cieni, potem wykonuje gest ręką i jego wzrok powraca do ciebie. "Nie. Zaraz umrzesz."~ */
  IF ~~ THEN REPLY #34458 /* ~Walcz.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34459 /* ~Uciekaj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("RW","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #34460 /* ~"Co, to znowu ty? Czy już nigdy nie będziesz miał dość płacenia nam brzdęku? Chyba nie, inaczej byś tu nie przyszedł. Dawaj dziesiątaka i możesz jeszcze tu wpaść któregoś dnia."~ */
  IF ~~ THEN REPLY #34461 /* ~"Muszę porozmawiać z waszym przywódcą."~ */ GOTO 2
  IF ~~ THEN REPLY #34462 /* ~"Ile potrzebujesz?"~ */ GOTO 3
  IF ~~ THEN REPLY #34463 /* ~"Ciekawe, czy ci się uda cokolwiek zabrać, gdy cię podziurawię."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34464 /* ~"Już płaciłem za przejście."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34465 /* ~Blef: "Już płaciłem za przejście."~ */ GOTO 8
  IF ~~ THEN REPLY #34466 /* ~Uciekaj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("RW","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #34467 /* ~"Słyszałem, że Zgniły William wysłał cię, żebyś kogoś zabił, co? Dopóki tego nie zrobisz, musisz mi zapłacić dziesięć brzdęków."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34468 /* ~"W porządku. Trzymaj."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34469 /* ~"Nie mam tyle."~ */ GOTO 13
  IF ~~ THEN REPLY #34470 /* ~"Ale ja pracuję dla Zgniłego Williama!"~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34471 /* ~"Przecież nie chcesz ode mnie tego brzdęku."~ */ GOTO 15
  IF ~~ THEN REPLY #34472 /* ~"Możesz sobie zabrać ten brzdęk, ale po moim trupie."~ */ GOTO 16
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34473 /* ~"Już płaciłem za przejście."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34474 /* ~Blef: "Już płaciłem za przejście."~ */ GOTO 8
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("RW","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #34475 /* ~"Jeszcze nie zrobiłeś tego, co ci zlecił Zgniły William. Za takie opóźnienie trzeba zapłacić. Dawaj dziesiątaka i możesz iść dalej."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34476 /* ~"W porządku. Trzymaj."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34477 /* ~"Nie mam tyle."~ */ GOTO 13
  IF ~~ THEN REPLY #34478 /* ~"Ale ja pracuję dla Zgniłego Williama!"~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34479 /* ~"Przecież nie chcesz ode mnie tego brzdęku."~ */ GOTO 15
  IF ~~ THEN REPLY #34480 /* ~"Możesz sobie zabrać ten brzdęk, ale po moim trupie."~ */ GOTO 16
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34481 /* ~"Już płaciłem za przejście."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34482 /* ~Blef: "Już płaciłem za przejście."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.0 14.0
  SAY #34483 /* ~"Do dla mnie przyjemność. Wpadnij do mnie, kiedy wrócisz, dobra?" Wydaje ci się, że mężczyzna mrugnął do ciebie okiem.~ */
  IF ~~ THEN REPLY #34484 /* ~"Bardzo śmieszne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 14.1
  SAY #34485 /* ~"To szkoda. Zgniły William będzie bardzo nieszczęśliwy, kiedy się dowie, że wpadłeś komuś na nóż." Mężczyzna wyciąga broń i przygotowuje się do ataku.~ */
  IF ~~ THEN REPLY #34486 /* ~Walcz.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34487 /* ~Uciekaj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2
  SAY #34488 /* ~"Ja też. Co ty na to? Płacisz i zostajesz, czy wolisz się wykrwawić?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34489 /* ~"Zapłacę."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34490 /* ~"Nie mam tyle."~ */ GOTO 13
  IF ~~ THEN REPLY #34491 /* ~Walcz.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34492 /* ~Uciekaj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34493 /* ~"Już płaciłem za przejście."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34494 /* ~Blef: "Już płaciłem za przejście."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34495 /* ~"Przecież nie chcesz ode mnie tego brzdęku."~ */ GOTO 15
  IF ~~ THEN REPLY #34496 /* ~"Możesz sobie zabrać ten brzdęk, ale po moim trupie."~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 10.3 11.3 14.6
  SAY #34497 /* ~"Mężczyzna spogląda na ciebie uważnie i zastanawia się nad twoim słowami. "Tym razem ci daruję. Wynoś się stąd."~ */
  IF ~~ THEN REPLY #34498 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.4 11.4 14.7
  SAY #34499 /* ~"Nie masz pojęcia, jak bardzo chciałem to usłyszeć." Mężczyzna wyciąga nóż i rzuca się do ataku.~ */
  IF ~~ THEN REPLY #34500 /* ~Walcz.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34501 /* ~Uciekaj.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END
