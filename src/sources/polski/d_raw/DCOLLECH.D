// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLLECH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLLECH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #25492 /* ~Mężczyzna ten odziany jest w zabrudzone i postrzępione brązowe szaty. Sporych rozmiarów kaptur przysłania przeważającą część jego twarzy.~ */
  IF ~~ THEN REPLY #25493 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #25596 /* ~Zostaw go w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25494 /* ~Dostrzegasz, że jego oczy, przysłaniane przez kaptur, zwężają się. On sam zaś się cofa. "Czego chcesz?"~ */
  IF ~~ THEN REPLY #25495 /* ~"Czym się zajmujesz?"~ */ GOTO 2
  IF ~~ THEN REPLY #25593 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~~ THEN REPLY #25594 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #25595 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 20.0
  SAY #25496 /* ~"Wyszukiwaniem cholernych ciał... Oto, czym się zajmuję. Nie myśl sobie tylko, że Martwe Moce zabrały swoje graty i ulotniły się ze Sfer i mało kto chorza ostatnio i takie tam." W jego oczach pojawia się nagle błysk. "Mieliśmy zarazę miesiąc temu. Cudeńki okres... Oj tak... Ten wznoszący się pod niebiosa odorek cuchnących ciał... No i sporo brzdęku zarazem."~ */
  IF ~~ THEN REPLY #25497 /* ~"W jakim celu szukasz tych ciał?"~ */ GOTO 3
  IF ~~ THEN REPLY #25590 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~~ THEN REPLY #25591 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #25592 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #25498 /* ~Wygląda na zdziwionego. "No, taszczysz ścierwa do Kostnicy, gadasz z Grabarzami, wytargowujesz ździebko i zgarniasz trochę brzdęku."~ */
  IF ~~ THEN REPLY #25499 /* ~"Dlaczego Grabarze skupują ciała?"~ */ GOTO 4
  IF ~~ THEN REPLY #25587 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~~ THEN REPLY #25588 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #25589 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25500 /* ~"Zbierają ciała zmarłych... Taka ich praca. Płacą nam za przeszukiwanie terenu i przytaszczenie każdego trupa, jakiego tylko znajdziemy. Potem upewniają się, by dusze tych psubratów trafiły do odpowiednich dla nich miejsc lub zostały spopielone. Traktują to bardzo poważnie, ale ja mam w nosie tę ich pokręconą filozofię. Dla mnie to jedynie więcej brzdęku." Mruga okiem.~ */
  IF ~~ THEN REPLY #25501 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~~ THEN REPLY #25585 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #25586 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 20.1
  SAY #25502 /* ~Marszczy brew. "Żeś w Ulu, rzecz jasna. W najbardziej zasyfionej części Sigil. Skądżeś się urwał, śmiałku? Z Pierwszaka, czy co?"~ */
  IF ~~ THEN REPLY #25503 /* ~"Nie. W jakim celu szukasz tych ciał?~ */ GOTO 3
  IF ~~ THEN REPLY #25504 /* ~"Nie. Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #25584 /* ~"Nie. To wszystko, co mi było potrzebne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 3.2 4.1 5.1 20.2
  SAY #25505 /* ~Unosi brew. "W takim razie ja też mam parę do ciebie, choćby: co chcesz wiedzieć i jak bardzo tego chcesz?"~ */
  IF ~~ THEN REPLY #25506 /* ~"Co masz na myśli?"~ */ GOTO 7
  IF ~~ THEN REPLY #25579 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25580 /* ~"Szukam mężczyzny imieniem Farod."~ */ GOTO 7
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25581 /* ~"Szukam dziennika, który mi zginął."~ */ GOTO 7
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25582 /* ~"Co wiesz o Mebbet?"~ */ GOTO 7
  IF ~~ THEN REPLY #25583 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2 6.3 6.4
  SAY #25507 /* ~"Rozejrzyj się, śmiałku... Nie będę się na twe pytania darmo produkował. Chcesz śpiewkę, to sypnij trochę brzdękiem."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #25508 /* ~Daj mu kilka monet.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25575 /* ~Rzuć mu pięć miedziaków.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25576 /* ~Wciśnij mu do ręki dziesięć miedziaków.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25577 /* ~"Nic nie dostaniesz. Masz odpowiedzieć na moje pytania."~ */ GOTO 19
  IF ~~ THEN REPLY #25578 /* ~"W takim razie nie ważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 19.1
  SAY #25509 /* ~Szydzi. "Nawet Grabarze płacą więcej, niż ty, śmiałku. Pewno się nie chcesz za dużo dowiedzieć."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25510 /* ~Rzuć mu pięć miedziaków.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25560 /* ~Wciśnij mu do ręki dziesięć miedziaków.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25567 /* ~"Nic nie dostaniesz. Masz odpowiedzieć na moje pytania."~ */ GOTO 19
  IF ~~ THEN REPLY #25574 /* ~"W takim razie nie ważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 19.2
  SAY #25511 /* ~Trzymając monety w dłoniach, przygląda się im dokładnie. "Ech." Zręcznie wsuwa je do kieszeni. "Pytaj."~ */
  IF ~~ THEN REPLY #25512 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25556 /* ~"Szukam mężczyzny imieniem Farod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25557 /* ~"Szukam dziennika, który mi zginął."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25558 /* ~"Co wiesz o Mebbet?"~ */ GOTO 16
  IF ~~ THEN REPLY #25559 /* ~"Mniejsza z tym. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.2 12.2 13.1 14.1 15.0 16.0 18.0
  SAY #25513 /* ~"Ja... my... żyjemy zbieraniem truposzy z ulic Sigil i dostarczaniem ich sztywnych tyłków do Kostnicy. Nie najlepszy to sposób coby zarabiać, acz to tak na początek. To wszystko, co chciałeś wiedzieć, śmiałku?" Patrzy na ciebie dziwnie.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25514 /* ~"Szukam mężczyzny imieniem Farod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25553 /* ~"Szukam dziennika, który mi zginął."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25554 /* ~"Co wiesz o Mebbet?"~ */ GOTO 16
  IF ~~ THEN REPLY #25555 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 15.1 16.1 18.1
  SAY #25515 /* ~Jego oczy zwężają się nagle. "Farod... co o nim?"~ */
  IF ~~ THEN REPLY #25516 /* ~"Najwyraźniej cię to przestraszyło... Czemu?"~ */ GOTO 12
  IF ~~ THEN REPLY #25548 /* ~"Czy wiesz, gdzie on jest?"~ */ GOTO 14
  IF ~~ THEN REPLY #25549 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25550 /* ~"Szukam też dziennika, który mi zginął."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25551 /* ~"Co wiesz o Mebbet?"~ */ GOTO 16
  IF ~~ THEN REPLY #25552 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 12 // from: 11.0 14.0
  SAY #25517 /* ~"Farod! Tfu!" Spluwa, jego usta przybierają pogardliwy grymas. "Tutaj, na Placu Rzezimieszków, rządzi Współgrobiec, mój szef. Farod i jego kundle wpadli tu kiedyś i próbowali nas wykurzyć. Daliśmy im łupnia i teraz gdzieś się kryją. Co jakiś czas udaje nam się tu złapać któregoś z jego chłopców. Zazwyczaj wykańczamy ich od razu i targamy do Kostnicy, by zgarnąć za nich trochę grosza. Cholerne skurle."~ */
  IF ~~ THEN REPLY #25518 /* ~"Powiedz mi coś o Współgrobcu."~ */ GOTO 13
  IF ~~ THEN REPLY #25543 /* ~"Czy wiesz, gdzie znajdę Faroda?"~ */ GOTO 14
  IF ~~ THEN REPLY #25544 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25545 /* ~"Szukam też dziennika, który mi zginął."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25546 /* ~"Co wiesz o Mebbet?"~ */ GOTO 16
  IF ~~ THEN REPLY #25547 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #25519 /* ~"To mój szef... Sprawuje piecze nad całością Zbieraczy, oj tak. Radzę ci, trzym się od niego z dala, jeśli nie masz *dobrego* powodu, by z nim porozmawiać." Ja sam nigdy z nim nie gadałem."~ */
  IF ~~ THEN REPLY #25520 /* ~"Czy wiesz, gdzie znajdę Faroda?"~ */ GOTO 14
  IF ~~ THEN REPLY #25539 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25540 /* ~"Szukam też dziennika, który mi zginął."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25541 /* ~"Co wiesz o Mebbet?"~ */ GOTO 16
  IF ~~ THEN REPLY #25542 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 11.1 12.1 13.0
  SAY #25521 /* ~"Wiem, gdzie nie ma tego szczurzego bękarta... Nie ma go w miejscu, które większość Zbieraczy zwie swą noclegownią - na Placu Szmaciarzy. Chodzi jednak śpiewka, że kręci się gdzieś w pobliżu."~ */
  IF ~~ THEN REPLY #25522 /* ~"Czy wszyscy Zbieracze podzielają twą opinię odnośnie Faroda?~ */ GOTO 12
  IF ~~ THEN REPLY #25523 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25524 /* ~"Szukam też dziennika, który mi zginał."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25537 /* ~"Co wiesz o Mebbet?"~ */ GOTO 16
  IF ~~ THEN REPLY #25538 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 9.2 10.1 11.3 12.3 13.2 14.2 16.2 18.2
  SAY #25525 /* ~Potrząsa jedynie głową, zmieszany.~ */
  IF ~~ THEN REPLY #25526 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25527 /* ~"Szukam też mężczyzny o imieniu Farod."~ */ GOTO 11
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25528 /* ~"Co wiesz o Mebbet?"~ */ GOTO 16
  IF ~~ THEN REPLY #25536 /* ~"W takim razie, żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 9.3 10.2 11.4 12.4 13.3 14.3 15.2 18.3
  SAY #25529 /* ~"O znachorce? Bez mała nawet miła kobieta - pomaga, gdyś chory i takie tam. Mieszka w chacie położonej przy jednej z platform na Placu Szmaciarzy - jeśli chcesz się z nią spotkać."~ */
  IF ~~ THEN REPLY #25530 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25531 /* ~"Szukam mężczyzny imieniem Farod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25532 /* ~"Szukam dziennika, który mi zginął."~ */ GOTO 15
  IF ~~ THEN REPLY #25533 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 9.4 10.3 11.5 12.5 13.4 14.4 15.3 16.3 18.4
  SAY #25534 /* ~"No, trzym sie śmiałku. Jeśli cię znajdę na ulicy, obejdę się łaskawie z twoimi zwłokami."~ */
  IF ~~ THEN REPLY #25535 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 7.2 8.1 19.3
  SAY #25561 /* ~"Pytaj. Nie mówię, że będę mógł pomóc, ale spróbuję."~ */
  IF ~~ THEN REPLY #25562 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25563 /* ~"Szukam mężczyzny imieniem Farod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25564 /* ~"Szukam dziennika, który mi zginął."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25565 /* ~"Co wiesz o Mebbet?"~ */ GOTO 16
  IF ~~ THEN REPLY #25566 /* ~"Mniejsza z tym. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 7.3 8.2
  SAY #25568 /* ~"Nic nie wiem, hultaju. I radziłbym ci poszukać odpowiedzi gdzie indziej."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #25569 /* ~Złap go i trochę nim potrząśnij.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #25570 /* ~Daj mu kilka monet.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25571 /* ~Rzuć mu pięć miedziaków.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25572 /* ~Wciśnij mu do ręki dziesięć miedziaków.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25573 /* ~"W takim razie nie ważne. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #25597 /* ~Mężczyzna cofa się krok i patrzy na ciebie podejrzliwie spod swego kaptura.
"Znowu, co? Czego chcesz?"~ */
  IF ~~ THEN REPLY #25598 /* ~"Czym się zajmujesz?"~ */ GOTO 2
  IF ~~ THEN REPLY #25599 /* ~"Co to za miejsce?"~ */ GOTO 5
  IF ~~ THEN REPLY #25600 /* ~"Mam kilka pytań..."~ */ GOTO 6
  IF ~~ THEN REPLY #25601 /* ~"Nic. Żegnaj."~ */ EXIT
END
