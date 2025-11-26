// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRANGEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DRANGEL~

IF ~  GlobalGT("Krystall","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #34502 /* ~"Wpisałeś na czerwono imię Zgniłego Williama do Księgi Umarłych, śmiałku. Oznacza to, że możesz przebyć terytorium Kolczastych Aniołów bez żadnych opłat."~ */
  IF ~~ THEN REPLY #34503 /* ~"Dzięki. Żegnaj."~ */ DO ~BitSet("0301_Status","AR0301",BIT4)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Krystall","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #34504 /* ~Ten mieszkaniec alei wita cię z przesadną uprzejmością, kłaniając się głęboko w pół. "Witaj, nieznajomy. Wybrałeś, uch, pomyślny dzień, aby przemierzyć nasze ziemie. Myto wyniesie cię jedynie dziesięć monet."~ */
  IF ~~ THEN REPLY #34505 /* ~"Dziesięć monet? To rozbój w biały dzień!"~ */ GOTO 2
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34506 /* ~"Właśnie zapłaciłem tym trepom stojącym nieopodal!"~ */ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34507 /* ~"Dziesięć? W porządku. Oto one."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_RA","AR0301",1)
~ GOTO 4
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34508 /* ~"Już zapłaciłem."~ */ GOTO 5
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34509 /* ~Blef: "Już zapłaciłem."~ */ GOTO 6
  IF ~~ THEN REPLY #34510 /* ~"Będziesz musiał wziąć je siłą."~ */ GOTO 2
  IF ~~ THEN REPLY #34511 /* ~"Najpierw musisz mnie złapać."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.5 7.0 7.5
  SAY #34512 /* ~"To jedynie dziesięć monet. To nasze terytorium. Jestem pewien, że wiedziałeś, że to nie miejsce dla słabeuszy. Przybyłeś tu ze swojej własnej woli. Teraz musisz zapłacić, w jeden sposób lub inny: monety lub krew. Co wybierasz?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34513 /* ~"Monety. Oto one."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34514 /* ~"Krew."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34515 /* ~"Może spróbujecie mnie najpierw złapać?"~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #34516 /* ~"Ano, a te trepy nie są naszymi sprzymierzeńcami. Kosy są naszymi śmiertelnymi wrogami. Teraz albo wyrównasz z nami rachunki albo polegniesz."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34517 /* ~"Dobrze. Weź pieniądze."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34518 /* ~"Wcześniej umrzesz, przyjacielu."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34519 /* ~"Może spróbujecie mnie najpierw złapać?"~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.0 3.0 6.0 7.2
  SAY #34520 /* ~"Masz podziękowania od Kolczastych Aniołów. Odejdź w pokoju, podróżniku."~ */
  IF ~~ THEN REPLY #34521 /* ~"Dzięki. Trepie. Żegnaj."~ */ DO ~SetGlobal("Paid_RA","AR0301",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 7.3
  SAY #34522 /* ~Kolczasty Anioł spogląda na chwilę w kierunku cieni, czyni ręką jakiś znak i kiwa głową. "Zapłaciłeś. Idź więc dalej. Odbierzemy swoje myto następnym razem, gdy będziesz tędy przechodził."~ */
  IF ~~ THEN REPLY #34523 /* ~"Z pewnością. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 7.4
  SAY #34524 /* ~Kolczasty Anioł spogląda na chwilę w kierunku cieni, czyni ręką jakiś znak i kiwa głową. "Nie zapłaciłeś. To jest ostatnie ostrzeżenie jakie otrzymujesz. Dziesięć monet albo ta zimna ziemia."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34525 /* ~"Dobrze. Weź pieniądze."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34526 /* ~"Spróbuj mi je odebrać, trepie."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34527 /* ~"Najpierw musisz mnie złapać."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Krystall","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #34528 /* ~"Widzę, że powróciłeś. Cena za przejście jest taka sama jak przedtem. Dziesięć monet, mój przyjacielu, i możesz przejść wraz ze wszystkimi uroczymi bliznami jakie nosisz."~ */
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34529 /* ~"Dziesięć monet? To rozbój w biały dzień!"~ */ GOTO 2
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34530 /* ~"Właśnie zapłaciłem tym trepom stojącym nieopodal!"~ */ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34531 /* ~"Dziesięć? W porządku. Oto one."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_RA","AR0301",1)
~ GOTO 4
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34532 /* ~"Już zapłaciłem."~ */ GOTO 5
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34533 /* ~Blef: "Już zapłaciłem."~ */ GOTO 6
  IF ~~ THEN REPLY #34534 /* ~"Będziesz musiał wziąć je siłą."~ */ GOTO 2
  IF ~~ THEN REPLY #34535 /* ~"Najpierw musisz mnie złapać."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("Krystall","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #34536 /* ~"Słyszałem, że wykonujesz pewne zadanie dla Krystal. Dobrze. Uwiń się z tym szybko, słyszysz mnie? Och... zanim zapomnę, musisz zapłacić myto. Ponieważ jesteś z nami, będzie to pół ceny: jedyne pięć monet."~ */
  IF ~~ THEN REPLY #34537 /* ~"Ale ja pracuję dla Krystal!"~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34538 /* ~"Proszę."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34539 /* ~"Właśnie zapłaciłem tym trepom stojącym nieopodal!"~ */ GOTO 12
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34540 /* ~"Już zapłaciłem."~ */ GOTO 13
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34541 /* ~Blef: "Już zapłaciłem."~ */ GOTO 14
  IF ~~ THEN REPLY #34542 /* ~"Wcześniej umrzesz, przyjacielu."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34543 /* ~"Najpierw musisz mnie złapać."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Krystall","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #34544 /* ~"Nie zabiłeś jeszcze Zgniłego Williama, nieprawdaż? Dopóki Krystal nie zadecyduje inaczej, płacisz pięć monet."~ */
  IF ~~ THEN REPLY #34545 /* ~"Ale ja pracuję dla Krystal!"~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34546 /* ~"Proszę."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34547 /* ~"Właśnie zapłaciłem tym trepom stojącym nieopodal!"~ */ GOTO 12
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34548 /* ~"Już zapłaciłem."~ */ GOTO 13
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34549 /* ~Blef: "Już zapłaciłem."~ */ GOTO 14
  IF ~~ THEN REPLY #34550 /* ~"Wcześniej umrzesz, przyjacielu."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #34551 /* ~"Najpierw musisz mnie złapać."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #34552 /* ~"Tak samo jak ja. Wszyscy mamy gęby do wyżywienia, więc będziesz żywił nasze. Pięć monet albo cię obedrę ze skóry."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34553 /* ~"Proszę."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34554 /* ~"Wcześniej umrzesz, przyjacielu."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34555 /* ~"Najpierw musisz mnie złapać."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.0 14.0
  SAY #34556 /* ~"Miło było. Powodzenia z tym bękartem Zgniłym Williamem."~ */
  IF ~~ THEN REPLY #34557 /* ~"Klawo, dzięki."~ */ DO ~SetGlobal("Paid_RA","AR0301",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2 9.2
  SAY #34558 /* ~"Owszem i zapewne będziesz musiał ich zabić, aby to odzyskać. Ale oni to oni, a my to my. Płać coś winien, przyjacielu."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34559 /* ~"Proszę."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34560 /* ~"Dlaczego nie spróbujesz mi ich odebrać? Jestem gotów."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34561 /* ~"Nie ma mowy. Spadam."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.3
  SAY #34562 /* ~Kolczasty Anioł spogląda w kierunku cieni, szukając potwierdzenia. Odwraca się. "Ano, jestem winien przeprosiny. Idź więc."~ */
  IF ~~ THEN REPLY #34563 /* ~"Dzięki."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.4 9.4
  SAY #34564 /* ~Kolczasty Anioł spogląda w kierunku cieni, szukając potwierdzenia. Odwraca się. "Nie, nie zapłaciłeś. Zapłać, przyjacielu, albo nie otrzymasz swej szansy ze Zgniłym Williamem."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34565 /* ~"Proszę."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34566 /* ~"Zabiję go jak tylko skończę z tobą."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34567 /* ~"Nie wydaje mi się, abyś był w stanie mnie złapać."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END
