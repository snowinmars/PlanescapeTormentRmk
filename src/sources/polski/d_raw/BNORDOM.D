// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BNORDOM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~BNORDOM~

IF ~  LastPersonTalkedTo("Morte")
Global("Nordom_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31490 /* ~"Uwaga: Morte. Czy wiesz, że mam sześć ścian?"~ [NOR311] */
  IF ~~ THEN EXTERN ~DMORTE~ 623
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #63630 /* ~"Pytanie, Morte. Co sprawia, że się unosisz?~ [NOR286A] */
  IF ~~ THEN EXTERN ~DMORTE~ 624
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63631 /* ~"Rozważę to."~ [NOR286B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",3)
InParty("Dakkon")
~ THEN BEGIN 3 // from:
  SAY #63632 /* ~"Milczenie Dak'kona wydaje się być najbardziej wydajnym użyciem języka."~ [NOR287] */
  IF ~~ THEN EXTERN ~DMORTE~ 625
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",4)
InParty("Annah")
NearbyDialog("DANNAH")
~ THEN BEGIN 4 // from:
  SAY #63633 /* ~"Morte, wytłumacz mi znowu dlaczego z wielką chęcią 'podgryzłbyś Annę'. Czy nie sprowokowałbyś tym ataku?"~ [NOR288] */
  IF ~~ THEN EXTERN ~DMORTE~ 626
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",5)
InParty("Annah")
~ THEN BEGIN 5 // from:
  SAY #63634 /* ~"Uwaga: Morte. Mam pytanie. Czy masz jakieś przeznaczenie? Cel?"~ [NOR313A] */
  IF ~~ THEN EXTERN ~DMORTE~ 627
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63635 /* ~"Potwierdzam."~ [NOR313B] */
  IF ~~ THEN EXTERN ~DMORTE~ 628
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 7 // from:
  SAY #63636 /* ~"Uwaga: Morte. Czy wiesz, że mam osiemnaście punktów artykulacji?"~ [NOR312] */
  IF ~~ THEN EXTERN ~DMORTE~ 629
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",7)
~ THEN BEGIN 8 // from:
  SAY #63637 /* ~"Uwaga: Morte. Mam pytanie. Czy mam wolną wolę?"~ [NOR317A] */
  IF ~~ THEN EXTERN ~DMORTE~ 630
END

IF ~~ THEN BEGIN 9 // from:
  SAY #63638 /* ~"Wydaje mi się, że wolna wola nie przynosi modronom wielu korzyści."~ [NOR317B] */
  IF ~~ THEN EXTERN ~DMORTE~ 631
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",8)
InParty("Grace")
~ THEN BEGIN 10 // from:
  SAY #63639 /* ~"Uwaga: Morte. Mam pytanie. Czy masz jakieś przeznaczenie? Cel?"~ [NOR313A] */
  IF ~~ THEN EXTERN ~DMORTE~ 632
END

IF ~~ THEN BEGIN 11 // from:
  SAY #63640 /* ~"Zaprzeczam."~ [NOR310A] */
  IF ~~ THEN EXTERN ~DMORTE~ 633
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",9)
InParty("Grace")
InParty("Annah")
~ THEN BEGIN 12 // from:
  SAY #63641 /* ~"Uwaga: Morte. Mam pytanie. Czym jest Reguła Trójek?"~ [NOR319A] */
  IF ~~ THEN EXTERN ~DMORTE~ 634
END

IF ~~ THEN BEGIN 13 // from:
  SAY #63642 /* ~"To kłóci się z kilkoma innymi definicjami."~ [NOR319B] */
  IF ~~ THEN EXTERN ~DMORTE~ 635
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",10)
InParty("Annah")
~ THEN BEGIN 14 // from:
  SAY #63643 /* ~"Uwaga: Morte. Mam pytanie. Czym jest przeznaczenie?"~ [NOR321A] */
  IF ~~ THEN EXTERN ~DMORTE~ 636
END

IF ~~ THEN BEGIN 15 // from:
  SAY #63644 /* ~"Zrozumiano."~ [NOR321B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",10)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",11)
~ THEN BEGIN 16 // from:
  SAY #63645 /* ~"Morte, czy to prawda, że..."~ [NOR289A] */
  IF ~~ THEN EXTERN ~DMORTE~ 637
END

IF ~~ THEN BEGIN 17 // from:
  SAY #63646 /* ~"Wydajesz mi się bardzo niekontent."~ [NOR289B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",11)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",12)
~ THEN BEGIN 18 // from:
  SAY #63647 /* ~"Uwaga: Morte. Chcę zapytać o twoje ciało."~ [NOR324A] */
  IF ~~ THEN EXTERN ~DMORTE~ 638
END

IF ~~ THEN BEGIN 19 // from:
  SAY #63648 /* ~"Twoje ciało. Mam pytanie dotyczące jego miejsca pobytu. Gdzie ono jest?"~ [NOR324B] */
  IF ~~ THEN EXTERN ~DMORTE~ 639
END

IF ~~ THEN BEGIN 20 // from:
  SAY #63649 /* ~"Jak głowa mogła się oddzielić od ciała bez twojej wiedzy?"~ [NOR324C] */
  IF ~~ THEN EXTERN ~DMORTE~ 640
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",13)
InParty("Grace")
NearbyDialog("DGRACE")
InParty("Annah")
~ THEN BEGIN 21 // from:
  SAY #63650 /* ~"Uwaga: Morte. Czy osiągnęliśmy już stan przyjaznej zażyłości?"~ [NOR323] */
  IF ~~ THEN EXTERN ~DMORTE~ 641
END

IF ~  LastPersonTalkedTo("Annah")
Global("Nordom_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #63651 /* ~"Anno, czy twój ogon pomaga ci w utrzymaniu równowagi?"~ [NOR291A] */
  IF ~~ THEN EXTERN ~DANNAH~ 310
END

IF ~~ THEN BEGIN 23 // from:
  SAY #63652 /* ~"Tak, to całkiem logiczne."~ [NOR291B] */
  IF ~~ THEN EXTERN ~DANNAH~ 311
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #63653 /* ~"Anno, czy zadaniem twojego ogona jest pokazywanie aktualnego poziomu wrogości?"~ [NOR292A] */
  IF ~~ THEN EXTERN ~DANNAH~ 312
END

IF ~~ THEN BEGIN 25 // from:
  SAY #63654 /* ~"Moja analiza okazała się trafna: Zagrożenie! Zagrożenie!"~ [NOR292B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Annah","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",3)
InParty("Morte")
NearbyDialog("DMorte")
~ THEN BEGIN 26 // from:
  SAY #63655 /* ~"Anno, czy to prawda, że 'czujesz miętę' do Mortego?"~ [NOR293] */
  IF ~~ THEN EXTERN ~DANNAH~ 313
END

IF ~  LastPersonTalkedTo("Grace")
Global("Nordom_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 27 // from:
  SAY #63656 /* ~"Szacuję, że Nie-Sława wydaje się atrakcyjna osobnikom płci męskiej ponad 321023 gatunków... plus minus trzy."~ [NOR290A] */
  IF ~~ THEN EXTERN ~DGRACE~ 374
END

IF ~~ THEN BEGIN 28 // from:
  SAY #63657 /* ~"Nie potrafię odpowiedzieć na to pytanie. Nie wiem."~ [NOR290B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",2)
InParty("Morte")
NearbyDialog("DMORTE")
~ THEN BEGIN 29 // from:
  SAY #63658 /* ~"Nie-Sławo, czy to prawda, że 'każda laska sądzi, że latająca czaszka jest bardzo seksowna?'"~ [NOR294] */
  IF ~~ THEN EXTERN ~DGRACE~ 375
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",3)
InParty("Morte")
NearbyDialog("DMORTE")
~ THEN BEGIN 30 // from:
  SAY #63659 /* ~"Uwaga: Nie-Sławo. Czy stosujesz jakieś przyciąganie optyczne?"~ [NOR325A] */
  IF ~~ THEN EXTERN ~DGRACE~ 376
END

IF ~~ THEN BEGIN 31 // from:
  SAY #63660 /* ~"Zauważyłem, że wytwarzasz pole siłowe, które zmusza innych, by podążali za tobą wzrokiem. Brak kontroli mięśniowej, by się odwrócić."~ [NOR325B] */
  IF ~~ THEN EXTERN ~DMORTE~ 645
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 32 // from:
  SAY #63661 /* ~"Uwaga: Nie-Sławo. Chcę zapytać o twoje ciało."~ [NOR326A] */
  IF ~~ THEN EXTERN ~DGRACE~ 377
END

IF ~~ THEN BEGIN 33 // from:
  SAY #63662 /* ~"O twoje ciało. Twoją formę. O powód, dla którego ją wybrałaś. Dlaczego?"~ [NOR326B] */
  IF ~~ THEN EXTERN ~DGRACE~ 378
END

IF ~~ THEN BEGIN 34 // from:
  SAY #63663 /* ~"W twoim przypadku bardziej praktyczne byłoby przybranie formy modrona. To poprawia wydajność o 13,27%. Mogę mylić się o jakieś plus, minus 5,2%."~ [NOR326C] */
  IF ~~ THEN EXTERN ~DGRACE~ 379
END

IF ~~ THEN BEGIN 35 // from:
  SAY #63664 /* ~"Nigdy nie zamierzałem wszczynać przeciw tobie postępowania sądowego..."~ [NOR326D] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Grace","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Vhail")
Global("Nordom_Talked_Vhail","GLOBAL",0)
~ THEN BEGIN 36 // from:
  SAY #63665 /* ~"Powiedziano mi, że Sprawiedliwość jest ślepa. Czy dlatego istnieją Łaskobójcy?"~ [NOR295] */
  IF ~~ THEN EXTERN ~DVHAIL~ 157
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",13)
~ THEN BEGIN 37 // from:
  SAY #64219 /* ~"Uwaga: Morte. Czy wiesz, że mam sześć ścian?"~ [NOR311] */
  IF ~~ THEN EXTERN ~DMORTE~ 623
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",3)
~ THEN BEGIN 38 // from:
  SAY #64220 /* ~"Anno, czy twój ogon pomaga ci w utrzymaniu równowagi?"~ [NOR291A] */
  IF ~~ THEN EXTERN ~DANNAH~ 310
END
