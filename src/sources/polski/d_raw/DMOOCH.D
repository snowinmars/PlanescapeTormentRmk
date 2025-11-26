// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOOCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOOCH~

IF ~  Global("Mochai","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #3078 /* ~"Idę już, idę! Nie musisz mnie tak dręczyć!"~ */
  IF ~~ THEN REPLY #10577 /* ~"Tylko się upewniam. Ruszaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,INT)
~ THEN BEGIN 1 // from:
  SAY #10578 /* ~Widzisz osobę ubraną jak kobieta-Grabarz, która trzyma w prawej ręce na wpół wypełnioną szklankę. Kiedy do niej podchodzisz, woła do ciebie: "Mmm, ty. Podejdź tutaj..." Zauważasz, że dzieje się z nią coś złego... zaś twoje przejścia z Grabarzami pozwalają ci przypuścić, że jest ona po prostu zbyt pełna życia, aby mogła być prawdziwym członkiem tej frakcji.~ */
  IF ~~ THEN REPLY #10579 /* ~Podejdź do niej.~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10580 /* ~Zostaw ją w spokoju.~ */ GOTO 4
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10581 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #10582 /* ~Widzisz kobietę-Grabarza. Kiedy do niej podchodzisz, woła do ciebie: "Mmm, ty. Podejdź tutaj..."~ */
  IF ~~ THEN REPLY #10583 /* ~Podejdź do niej.~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10584 /* ~Zostaw ją w spokoju.~ */ GOTO 4
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10585 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Mooch","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #10586 /* ~"Mmm... czego chcesz?"~ */
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10587 /* ~"Barkis powiada, że czas uregulować rachunek. Płać."~ */ GOTO 9
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #10588 /* ~"Tak naprawdę nie należysz do Grabarzy, prawda?"~ */ GOTO 8
  IF ~  Global("Bribe_Mochai","GLOBAL",1)
~ THEN REPLY #10589 /* ~"Chcę więcej pieniędzy, abyś dalej mogła udawać Grabarza."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Mochai_Two","GLOBALGood",-1)
GivePartyGold(25)
~ GOTO 20
  IF ~  Global("Bribe_Mochai","GLOBAL",2)
~ THEN REPLY #10590 /* ~"Chcę jeszcze więcej pieniędzy, abyś dalej mogła udawać Grabarza."~ */ GOTO 21
  IF ~~ THEN REPLY #10591 /* ~"Pragnę poznać odpowiedź na kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10592 /* ~"Niczego."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #10593 /* ~"Za wysokie progi na nogi kogoś, kto wygląda na Grabarza, co? Postaw mi kolejkę, a ja dam ci spokój."~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10594 /* ~"Dobrze. Oto pięć monet. A teraz daj mi spokój."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #10595 /* ~"Tak naprawdę, nie należysz do Grabarzy, prawda?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10596 /* ~"Barkis powiada, że czas uregulować rachunek. Płać."~ */ GOTO 9
  IF ~~ THEN REPLY #10597 /* ~"Nie sądzę. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 2.0
  SAY #10598 /* ~"Hej, śmiałku... postawisz damie kolejkę?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10599 /* ~"Tak naprawdę nie należysz do Grabarzy, prawda?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10600 /* ~"Barkis powiada, że czas uregulować rachunek. Płać."~ */ GOTO 9
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10638 /* ~"Dobrze. Oto pięć monet."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~~ THEN REPLY #10601 /* ~"Kim jesteś?"~ */ GOTO 24
  IF ~~ THEN REPLY #10602 /* ~"Co to za miejsce?"~ */ GOTO 25
  IF ~~ THEN REPLY #10603 /* ~"Opowiedz mi o innych tutejszych klientach."~ */ GOTO 26
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10604 /* ~"Kim są tamten płonący truposz?"~ */ GOTO 27
  IF ~  PartyHasItem("Embalm")
Global("Mochai","GLOBAL",1)
CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #10605 /* ~Zatruj jej napój płynem balsamującym.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10606 /* ~Zatruj jej napój płynem balsamującym.~ */ GOTO 15
  IF ~~ THEN REPLY #10607 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.2 12.0
  SAY #10608 /* ~"Dzięki, śmiałku... obyś znalazł Prawdziwą Śmierć." Wkłada twoje pieniądze do kieszeni i nerwowo spoziera w kierunku baru.~ */
  IF ~~ THEN REPLY #10609 /* ~"A teraz kilka odpowiedzi w zamian za brzdęk."~ */ GOTO 7
  IF ~~ THEN REPLY #10610 /* ~"Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.4 6.0 9.2 10.1 12.1 13.3 13.4 14.3 14.4 15.2 18.0 19.0 20.1 21.0 24.0 25.0 26.0 27.0
  SAY #10611 /* ~"Co chcesz wiedzieć?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10612 /* ~"Tak naprawdę nie należysz do Grabarzy, prawda?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10613 /* ~"Barkis powiada, że czas uregulować rachunek. Płać."~ */ GOTO 9
  IF ~~ THEN REPLY #10614 /* ~"Kim jesteś?"~ */ GOTO 24
  IF ~~ THEN REPLY #10615 /* ~"Co to za miejsce?"~ */ GOTO 25
  IF ~~ THEN REPLY #10616 /* ~"Opowiedz mi o innych tutejszych klientach."~ */ GOTO 26
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10617 /* ~"Kim jest tamten płonący truposz?"~ */ GOTO 27
  IF ~  PartyHasItem("Embalm")
CheckStatGT(Protagonist,12,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10618 /* ~Zatruj jej napój płynem balsamującym.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10619 /* ~Zatruj jej napój płynem balsamującym.~ */ GOTO 15
  IF ~  Global("Bribe_Mochai","GLOBAL",1)
~ THEN REPLY #10620 /* ~"Chcę więcej pieniędzy, abyś dalej mogła udawać Grabarza."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Mochai_Two","GLOBALGood",-1)
GivePartyGold(25)
~ GOTO 20
  IF ~  Global("Bribe_Mochai","GLOBAL",2)
~ THEN REPLY #10621 /* ~"Chcę jeszcze więcej pieniędzy, abyś dalej mogła udawać Grabarza."~ */ GOTO 21
  IF ~~ THEN REPLY #10622 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 4.1 5.0 7.0
  SAY #10623 /* ~Rozgląda się nerwowo dokoła i wydaje się, że nagle wytrzeźwiała. "Dla... dlaczego tak sądzisz?"~ */
  IF ~~ THEN REPLY #10624 /* ~"Ponieważ nie zachowujesz się jak Grabarz i nie oferujesz kontraktów. Tak naprawdę to pobierasz pieniądze, zamiast je oferować za trupią pracę w Kostnicy."~ */ GOTO 10
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10625 /* ~"Ponieważ należę do Grabarzy."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 3.0 4.2 5.1 7.1
  SAY #10626 /* ~Podrywa się trochę, a jej napięcie nerwowe przeradza się w pełną trwogę. "Co masz zamiar uczynić?"~ */
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10627 /* ~"Poprosić cię, byś zapłaciła. Natychmiast."~ */ GOTO 11
  IF ~  GlobalGT("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10628 /* ~"Poprosić cię, byś zapłaciła. Natychmiast."~ */ GOTO 22
  IF ~~ THEN REPLY #10629 /* ~"Na razie nic. Odpowiedz mi na parę pytań."~ */ GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.1
  SAY #10630 /* ~Dusi w sobie okrzyk przerażenia i w pośpiechu wyjaśnia: "Nie, nie, nie. Nie jestem z frakcji Grabarzy. Po prostu znalazłam te szaty na ulicy, a nie miałam na tyle pieniędzy, aby kupić dobry strój. No i, hm, słyszałam, że kręci się tutaj jakiś złodziej należący do Grabarzy, ale możesz go prawdopodobnie znaleźć gdzieś w południowo-zachodniej części Ula. Widziałam go, ale schowałam się przed nim. Proszę, nie zrób mi krzywdy."~ */
  IF ~~ THEN REPLY #10631 /* ~"Daj mi trochę pieniędzy, a pozwolę ci odejść."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_One","GLOBALGood",-1)
IncrementGlobal("Bribe_Mochai","GLOBAL",1)
GivePartyGold(50)
~ GOTO 19
  IF ~~ THEN REPLY #10632 /* ~"Nie mam z tym związanych żadnych planów. Powinnaś wiedzieć, że kiepsko ci idzie. A teraz odpowiedz na kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10633 /* ~"Nie. Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #10634 /* ~"Hmm... nie stać mnie na to. Czy możesz skapnąć mi z dziesięć procent? Dam mu je i będzie wiedział, że zapłacę resztę."~ */
  IF ~~ THEN REPLY #10635 /* ~"Ile potrzebujesz?"~ */ GOTO 13
  IF ~~ THEN REPLY #10636 /* ~"Nie wydaje mi się. Nie jestem organizacją charytatywną. Czy potrafić wymyślić jakiś inny sposób, aby mu zapłacić?"~ */ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Mochai","GLOBAL",3)
~ THEN BEGIN 12 // from:
  SAY #10637 /* ~"Użyczysz kilka monet na napitek, śmiałku?"~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10638 /* ~"Dobrze. Oto pięć monet."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~~ THEN REPLY #10639 /* ~"Nie. Zamiast tego odpowiedz mi na kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10640 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0 22.0
  SAY #10641 /* ~"Hmm, myślę, że potrzebuję sto monet, aby rozpocząć spłatę tego długu."~ */
  IF ~  PartyHasItem("Embalm")
CheckStatGT(Protagonist,12,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10642 /* ~Zatruj jej napój płynem balsamującym.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10643 /* ~Zatruj jej napój płynem balsamującym.~ */ GOTO 15
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10644 /* ~"Pożyczę ci te pieniądze. Masz. Weź i zapłać. No już."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mochai_One","GLOBALGood",1)
TakePartyGold(100)
SetGlobal("Mochai","GLOBAL",2)
~ GOTO 23
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10650 /* ~Kłamstwo: "Pożyczyłbym ci te pieniądze, ale ja ich nie mam. Odpowiedz na parę innych pytań, dobrze?"~ */ GOTO 7
  IF ~  PartyGoldLT(100)
~ THEN REPLY #10651 /* ~Prawda: "Pożyczyłbym ci te pieniądze, ale ja ich nie mam. Odpowiedz na parę innych pytań, dobrze?"~ */ GOTO 7
  IF ~~ THEN REPLY #10652 /* ~"Wrócę tu z pieniędzmi."~ */ EXIT
  IF ~~ THEN REPLY #10645 /* ~"Czy jest jakiś inny sposób?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 11.1 13.6 22.1
  SAY #10646 /* ~"Inny sposób? Ba!" Uśmiecha się smutno. "Zawsze możesz mnie, hmm, zabić."~ */
  IF ~  PartyHasItem("Embalm")
~ THEN REPLY #10647 /* ~Odwróć jej uwagę: "Może, ale... co to jest, o tam?"~ */ GOTO 15
  IF ~~ THEN REPLY #10648 /* ~"Tak, ale raczej poszukamy innego rozwiązania."~ */ GOTO 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10649 /* ~"Po prostu pożyczę ci te pieniądze. Idź i zapłać."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mochai_One","GLOBALGood",1)
TakePartyGold(100)
SetGlobal("Mochai","GLOBAL",2)
~ GOTO 23
  IF ~  False()
PartyGoldGT(99)
~ THEN REPLY #10650 /* ~Kłamstwo: "Pożyczyłbym ci te pieniądze, ale ja ich nie mam. Odpowiedz na parę innych pytań, dobrze?"~ */ GOTO 7
  IF ~  False()
PartyGoldLT(100)
~ THEN REPLY #10651 /* ~Prawda: "Pożyczyłbym ci te pieniądze, ale ja ich nie mam. Odpowiedz na parę innych pytań, dobrze?"~ */ GOTO 7
  IF ~  False()
~ THEN REPLY #10652 /* ~"Wrócę tu z pieniędzmi."~ */ EXIT
  IF ~~ THEN REPLY #10653 /* ~"Wrócę później."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.7 5.8 7.6 7.7 13.0 13.1 14.0
  SAY #10654 /* ~"To znaczy gdzie?" Nagłym ruchem odwraca głowę, aby spojrzeć tam, gdzie wskazujesz, i nieruchomieje na chwilę w miarę jak usiłuje skupić na czymś swe zamglone od alkoholu oczy. "Nic nie widzę."~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
PartyHasItem("Embalm")
~ THEN REPLY #10655 /* ~Zatruj jej napój płynem balsamującym.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_Three","GLOBALGood",-1)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,DEX)
PartyHasItem("Embalm")
~ THEN REPLY #10655 /* ~Zatruj jej napój płynem balsamującym.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_Three","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #10656 /* ~"Nie szkodzi. Odpowiedz mi na kilka pytań, dobrze?"~ */ GOTO 7
  IF ~~ THEN REPLY #10657 /* ~"Pewnie mi się przywidziało. Nie ma o czym mówić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10658 /* ~Szybkim ruchem wlewasz płyn balsamujący do jej na wpół wypełnionej szklanicy w chwili, gdy ma odwrócony wzrok. Natychmiast rozchodzi się smród, ale ona chyba niczego nie spostrzegła. Odwraca się do ciebie i jednym łykiem wychyla swój zatruty napój. "O co chodzi? Co tam miałam zobaczyć?" Nagle zaczyna się krztusić.~ */
  IF ~~ THEN REPLY #10659 /* ~"Twoją śmierć. Żegnaj, Mokkai."~ */ DO ~Kill(Myself)
DestroyPartyItem("Embalm",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #10660 /* ~"Uch... co ty robisz?" Widzi, jak przygotowujesz butelkę balsamującego płynu i przygląda ci się podejrzliwie.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #10661 /* ~"Ja tylko kładę moją butelkę na stół. Chyba można przynieść własną szklanicę."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10662 /* ~"Ja tylko kładę moją butelkę na stół. Chyba można przynieść własną szklanicę."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10663 /* ~"Ja tylko kładę moją butelkę na stół. Chyba można przynieść własną szklanicę."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10664 /* ~"Daj spokój z tym wścibstwem. Przekopuję się przez własne rzeczy i przypominam sobie, co właściwie niosę."~ */ GOTO 18
  IF ~~ THEN REPLY #10665 /* ~"Nic, co by ciebie dotyczyło."~ */ GOTO 18
  IF ~~ THEN REPLY #10666 /* ~"Nic. Mam spotkanie gdzie indziej. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.1 17.0 17.1 17.2 17.3 17.4
  SAY #10667 /* ~Spogląda na ciebie chwilę dłużej, chwiejąc się na nogach, a następnie mówi: "Hmm, no dobrze. Czy pragniesz jeszcze czegoś?"~ */
  IF ~~ THEN REPLY #10668 /* ~"Tak. Kilku odpowiedzi."~ */ GOTO 7
  IF ~~ THEN REPLY #10669 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.0
  SAY #10670 /* ~"Mogę ci dać pięćdziesiąt monet. Proszę... nie mów nikomu."~ */
  IF ~~ THEN REPLY #10671 /* ~"Zobaczymy. A teraz odpowiedz mi na kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10672 /* ~"Pięćdziesiąt? Ja chcę więcej."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
GivePartyGold(25)
~ GOTO 20
  IF ~~ THEN REPLY #10673 /* ~"Zobaczymy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.2 7.8 19.1
  SAY #10674 /* ~"Hmm, chcesz więcej? Nie stać mnie, hm, nie stać mnie na tyle, co poprzednio. Choć mogę ci dać dwadzieścia pięć monet."~ */
  IF ~~ THEN REPLY #10675 /* ~"Chcę więcej."~ */ GOTO 21
  IF ~~ THEN REPLY #10676 /* ~"Tyle wystarczy... na razie. Tymczasem odpowiedz na jeszcze kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10677 /* ~"To będzie musiało wystarczyć... na razie. Powrócę tu."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.3 7.9 20.0
  SAY #10678 /* ~"No cóż, hmm, to fatalnie. Ponieważ nie mogę ci dać więcej. Po prostu, hmm, nie mam żadnych pieniędzy."~ */
  IF ~~ THEN REPLY #10679 /* ~"To fatalnie. Odpowiedz mi na kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10680 /* ~"To fatalnie. Zobaczymy co z tego wyniknie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 9.1
  SAY #10681 /* ~Spogląda na ciebie gorzko. "Nie mogę. Pewien, hmm, trep zabrał mi wszyskie pieniądze. Przydałaby mi się jakaś pożyczka, hmm, coś, z czego mogłabym mu zapłacić."~ */
  IF ~~ THEN REPLY #10682 /* ~"Ile potrzebujesz?"~ */ GOTO 13
  IF ~~ THEN REPLY #10683 /* ~"Nie wydaje mi się. Nie jestem organizacją charytatyną. Czy przychodzi ci do głowy, że istnieje inny sposób, aby mu zapłacić?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 13.2 14.2
  SAY #10684 /* ~Chowa do kieszeni twój brzdęk, patrzy przelotnie na drzwi, prawie tak, jakby rozważała szanse ucieczki, następnie ciężko wzdycha, jako że zdaje sobie sprawę z tego, nie ma żadnych szans. Przybita, idzie wolno do baru. "Hmm, winnam ci chyba podziękować."~ */
  IF ~~ THEN REPLY #10685 /* ~"Nie wspominaj o tym. I nawet nie myśl, aby ruszyć ku drzwiom, uprzednio nie zapłaciwszy."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3 7.2
  SAY #10686 /* ~"Ja? Jestem Mokkai. Lubię tutaj po prostu pić i, hmm..." Przez chwilę gubi tok myśli. "Jestem po prostu osobą, wiesz?"~ */
  IF ~~ THEN REPLY #10687 /* ~"Rozumiem. W takim razie odpowiedz mi na kolejne pytanie."~ */ GOTO 7
  IF ~~ THEN REPLY #10688 /* ~"Rozumiem. W takim razie żegnaj, Mokkai."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.4 7.3
  SAY #10689 /* ~"Gospoda 'Pod Gorejącym Człekiem'. Nie umisz czytać? Bardziej pijanyś niż ja?"~ */
  IF ~~ THEN REPLY #10690 /* ~"Zapomnij o tym. Powiedz mi coś jeszcze."~ */ GOTO 7
  IF ~~ THEN REPLY #10691 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.5 7.4
  SAY #10692 /* ~"Nie mam pojęcia. Oni są po prostu, hmm, ludźmi. Niewiele mam do czynienia z ludźmi. Chyba że stawiają mi kolejkę..." Spogląda na ciebie z nadzieją.~ */
  IF ~~ THEN REPLY #10693 /* ~"Rozumiem. Potrzebuję jeszcze paru odpowiedzi."~ */ GOTO 7
  IF ~~ THEN REPLY #10694 /* ~"Rozumiem, dlaczego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.6 7.5
  SAY #10695 /* ~"On nie jest, hmm, trupem. On jest kimś, hmm, w rodzaju szalonego czarodzieja. Popytaj się. Opowiedzą ci tę historię."~ */
  IF ~~ THEN REPLY #10696 /* ~"Znakomicie. W takim razie odpowiedz na kilka innych pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #10697 /* ~"Żegnaj."~ */ EXIT
END
