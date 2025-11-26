// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUSTFER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUSTFER~

IF ~  Global("Current_Lower_Planes","GLOBAL",1)
GlobalLT("Justifier_Lower_Planes","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #47616 /* ~"Co? Czego chcesz? Kiedy poleje się krew?"~ */
  IF ~~ THEN REPLY #47617 /* ~"A co to za podejście?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47618 /* ~"Co stało się z twoim łagodnym usposobieniem?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #47619 /* ~"Wkrótce. Musisz mi jeszcze odpowiedzieć na kilka pytań."~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #47620 /* ~"Za chwilę. Śpij."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ EXIT
END

IF ~  Global("Current_Lower_Planes","GLOBAL",1)
Global("Justifier_Lower_Planes","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #47621 /* ~"Co? Czego chcesz? Kiedy poleje się krew?"~ */
  IF ~~ THEN REPLY #47622 /* ~"A co to za podejście?"~ */ GOTO 9
  IF ~~ THEN REPLY #47623 /* ~"Co stało się z twoim łagodnym usposobieniem?"~ */ GOTO 7
  IF ~~ THEN REPLY #47624 /* ~"Wkrótce. Musisz mi jeszcze odpowiedzieć na kilka pytań."~ */ GOTO 8
  IF ~~ THEN REPLY #47625 /* ~"Za chwilę. Śpij."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 2 // from:
  SAY #47626 /* ~"Co? Czego chcesz? Kiedy poleje się krew?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47627 /* ~"A co to za podejście?"~ */ GOTO 9
  IF ~~ THEN REPLY #47628 /* ~"Co stało się z twoim łagodnym usposobieniem?"~ */ GOTO 7
  IF ~~ THEN REPLY #47629 /* ~"Wkrótce. Musisz mi jeszcze odpowiedzieć na kilka pytań."~ */ GOTO 8
  IF ~~ THEN REPLY #47630 /* ~"Za chwilę. Śpij."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #47631 /* ~"Co? Czego chcesz? Kiedy poleje się krew?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47632 /* ~"A co to za podejście?"~ */ GOTO 9
  IF ~~ THEN REPLY #47633 /* ~"Co stało się z twoim łagodnym usposobieniem?"~ */ GOTO 7
  IF ~~ THEN REPLY #47634 /* ~"Wkrótce. Musisz mi jeszcze odpowiedzieć na kilka pytań."~ */ GOTO 8
  IF ~~ THEN REPLY #47635 /* ~"Za chwilę. Śpij."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #47636 /* ~"Co? Czego chcesz? Kiedy poleje się krew?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47637 /* ~"A co to za podejście?"~ */ GOTO 9
  IF ~~ THEN REPLY #47638 /* ~"Co stało się z twoim łagodnym usposobieniem?"~ */ GOTO 7
  IF ~~ THEN REPLY #47639 /* ~"Wkrótce. Musisz mi jeszcze odpowiedzieć na kilka pytań."~ */ GOTO 8
  IF ~~ THEN REPLY #47640 /* ~"Za chwilę. Śpij."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 5 // from:
  SAY #47641 /* ~"Co? Czego chcesz? Kiedy poleje się krew?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47642 /* ~"A co to za podejście?"~ */ GOTO 9
  IF ~~ THEN REPLY #47643 /* ~"Co stało się z twoim łagodnym usposobieniem?"~ */ GOTO 7
  IF ~~ THEN REPLY #47644 /* ~"Wkrótce. Musisz mi jeszcze odpowiedzieć na kilka pytań."~ */ GOTO 8
  IF ~~ THEN REPLY #47645 /* ~"Za chwilę. Śpij."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 6 // from:
  SAY #47646 /* ~"Co? Czego chcesz? Kiedy poleje się krew?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47648 /* ~"A co to za podejście?"~ */ GOTO 9
  IF ~~ THEN REPLY #47649 /* ~"Co stało się z twoim łagodnym usposobieniem?"~ */ GOTO 7
  IF ~~ THEN REPLY #47650 /* ~"Wkrótce. Musisz mi jeszcze odpowiedzieć na kilka pytań."~ */ GOTO 8
  IF ~~ THEN REPLY #47651 /* ~"Za chwilę. Śpij."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1 1.1 2.1 3.1 4.1 5.1 6.1
  SAY #47652 /* ~"To było wtedy. Teraz jest teraz. Mam już dość obijania i tego całego, mdłego szpicowania. Zabijmy kogoś, co?"~ */
  IF ~~ THEN REPLY #47653 /* ~"Chcę wiedzieć, co się z tobą stało."~ */ GOTO 9
  IF ~~ THEN REPLY #47654 /* ~"Najpierw odpowiedz na parę pytań."~ */ GOTO 8
  IF ~~ THEN REPLY #47655 /* ~"Zapomnij. Porozmawiamy później."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.2 2.2 3.2 4.2 5.2 6.2 7.1 9.1 13.0 14.0 15.0 16.0 17.1 18.0 19.2 20.0 21.1 22.0 41.2
  SAY #47656 /* ~"Pod warunkiem, że jak pogadamy to kogoś zabijemy."~ */
  IF ~~ THEN REPLY #47657 /* ~"Co ci się stało?"~ */ GOTO 9
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #47658 /* ~"Co możesz powiedzieć o Mortem?"~ */ GOTO 12
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #47659 /* ~"Co możesz powiedzieć o Annie?"~ */ GOTO 13
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #47660 /* ~"Co możesz powiedzieć o Dak'konie?"~ */ GOTO 14
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #47661 /* ~"Co możesz powiedzieć o Nie-Sławie?"~ */ GOTO 15
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #47662 /* ~"Co możesz powiedzieć o Vhailorze?"~ */ GOTO 16
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #47663 /* ~"Co możesz powiedzieć o Ignusie?"~ */ GOTO 16
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #47664 /* ~"Co możesz powiedzieć o Nordonie?"~ */ GOTO 16
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47665 /* ~"Co możesz powiedzieć o sobie?"~ */ GOTO 17
  IF ~  Global("Justifier","GLOBAL",1)
~ THEN REPLY #47666 /* ~"Co możesz powiedzieć o sobie?"~ */ GOTO 18
  IF ~  GlobalGT("Justifier","GLOBAL",1)
~ THEN REPLY #47667 /* ~"Co możesz powiedzieć o sobie?"~ */ GOTO 19
  IF ~~ THEN REPLY #47668 /* ~"Zapomnij. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0
  SAY #47669 /* ~"Powiedzmy, że powietrze tutaj sprzyja nienawiści i tyle, dobra? Naprawdę *nienawidzę* Niższych Sfer, a one mnie."~ */
  IF ~~ THEN REPLY #47670 /* ~"Dlaczego?"~ */ GOTO 10
  IF ~~ THEN REPLY #47671 /* ~"Więc odpowiedz mi na parę pytań."~ */ GOTO 8
  IF ~~ THEN REPLY #47672 /* ~"Dość dobrze. Jesteś wolny."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47673 /* ~"Ponieważ raz mnie zepsuły, ale to się już nigdy nie powtórzy, trepie! A teraz zamknij się i chodźmy kogoś zabić!"~ */
  IF ~~ THEN REPLY #47674 /* ~"Najpierw odpowiedz na kilka pytań..."~ */ GOTO 11
  IF ~~ THEN REPLY #47675 /* ~"Na razie dość gadania."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #47676 /* ~Nastaje ponura cisza.~ */
  IF ~~ THEN DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY #47677 /* ~"Jest złym, kantującym trepem i nie dopuszczałbym go na odległość rąk... gdybym miał ręce. Radzę ci dobrze, przyjmuj jego rady *naprawdę* z przymrużeniem oka. Chcę przez to powiedzieć, że nie powinieneś mu ufać - znam ten typ - dźgnąłby cię nożem w plecy."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 488
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY #47678 /* ~"Nic o niej nie wiem. Ma w sobie krew potwora. Nie można ufać potworom. Mówię ci, pozbądź się jej jak najszybciej. Poza tym, to dzieciak. Możesz sobie znaleźć kogoś o wiele bardziej... doświadczonego... jeśli wiesz, o co chodzi."~ */
  IF ~~ THEN REPLY #47679 /* ~"Dziękuję za radę. Jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #47680 /* ~"Dzięki."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.3
  SAY #47681 /* ~"Ten? Oschły, nieugięty, bez wyrazu? Mniej więcej tyle z niego pożytku, co ze zbliżenia z modronem. To wszystko, co mam do powiedzenia."~ */
  IF ~~ THEN REPLY #47682 /* ~"Dziękuję za radę. Jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #47683 /* ~"Dzięki."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4
  SAY #47684 /* ~"Jasne, ufaj jej, czemu nie. Zawsze jest dobrze ufać tanar'ri. To, że rodzą się źli nie znaczy, że są źli. Nawiasem mówiąc to, co tu węszysz to sarkazm. Właśnie na niego wlazłeś."~ */
  IF ~~ THEN REPLY #47685 /* ~"Dziękuję za radę. Jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #47686 /* ~"Dzięki."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.5 8.6 8.7
  SAY #47687 /* ~"Nie mam pojęcia. Nigdy go nie widziałem."~ */
  IF ~~ THEN REPLY #47688 /* ~"Dziękuję za radę. Jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #47689 /* ~"Dzięki."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.8
  SAY #47690 /* ~"Jestem Rozgrzeszyciel. I to przez duże R. 'ROZGRZESZYCIEL'. Nie 'rozgrzeszyciel'. Zostałem wykuty pod auspicjami Horusa w Arkadii. Słuchaj, wyglądasz znajomo... Nazwali mnie tak, ponieważ potrafię znaleźć usprawiedliwienie właściwie dla wszystkiego. Dodatkowo, po paru chwilach ze mną ludzie zdają sobie sprawę, że wszystko, co mówią ma swoje uzasadnienie."~ */
  IF ~~ THEN REPLY #47691 /* ~"Jak to znajomo?"~ */ GOTO 20
  IF ~~ THEN REPLY #47692 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #47693 /* ~"Dobrze. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.9
  SAY #47694 /* ~"Wciąż jestem Rozgrzeszycielem... wiesz, jest w tobie coś znajomego, co doprowadza mnie do szaleństwa... coś o tanar'ri i... ach, nieważne. Jestem twym najlepszym przyjacielem lub najgorszym nocnym koszmarem. Zależy, o którą stronę pytasz, trepie. Zwą mnie Rozgrzeszyciel. ROZGRZESZYCIEL. Nie zapomnij."~ */
  IF ~~ THEN REPLY #47695 /* ~"Wciąż nie wiesz skąd mnie znasz. No dobrze. Jeszcze parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #47696 /* ~"Wciąż nie wiesz, co? Żegnaj, więc."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.10
  SAY #47697 /* ~"Teraz już pamiętam, kim jesteś. Kiedyś myślałeś, że masz mnie na własność. Twoje blizny mnie zmyliły, ale poznaję twoją twarz. Wiesz co? Kiedy zginąłeś walcząc z tymi vrokami, one mnie wypaczyły. To twoja wina. Ale wiesz, krew idzie twym śladem. Jeśli z tobą zostanę, na pewno się upaprzę."~ */
  IF ~~ THEN REPLY #47698 /* ~"Czym są vroki?"~ */ JOURNAL #47796 /* ~Właśnie odkryłem, że Rozgrzeszyciel, mówiąca wekiera, był kiedyś moją bronią. Nie pamięta wiele z mojej przeszłości, ale najwyraźniej wyruszyliśmy do Otchłani w poszukiwaniu czegoś, a ja zginąłem.~ */ GOTO 21
  IF ~~ THEN REPLY #47699 /* ~"Wypaczyły cię? Jak?"~ */ JOURNAL #47796 /* ~Właśnie odkryłem, że Rozgrzeszyciel, mówiąca wekiera, był kiedyś moją bronią. Nie pamięta wiele z mojej przeszłości, ale najwyraźniej wyruszyliśmy do Otchłani w poszukiwaniu czegoś, a ja zginąłem.~ */ GOTO 22
  IF ~~ THEN REPLY #47700 /* ~"Zapomnij. Jeszcze kilka pytań..."~ */ JOURNAL #47796 /* ~Właśnie odkryłem, że Rozgrzeszyciel, mówiąca wekiera, był kiedyś moją bronią. Nie pamięta wiele z mojej przeszłości, ale najwyraźniej wyruszyliśmy do Otchłani w poszukiwaniu czegoś, a ja zginąłem.~ */ GOTO 8
  IF ~~ THEN REPLY #47701 /* ~"Zapomnij."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ JOURNAL #47796 /* ~Właśnie odkryłem, że Rozgrzeszyciel, mówiąca wekiera, był kiedyś moją bronią. Nie pamięta wiele z mojej przeszłości, ale najwyraźniej wyruszyliśmy do Otchłani w poszukiwaniu czegoś, a ja zginąłem.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #47702 /* ~"Nie wiem. Przypomnę sobie. Nie truj mi, a będę to wiedział."~ */
  IF ~~ THEN REPLY #47703 /* ~"Wspaniale. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #47704 /* ~"Wspaniale. Baw się dobrze. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #47705 /* ~"Czym sa vroki? Nic nie pamiętasz, no nie? To sępy - demony tanar'ri. Myślisz, że jakby ci rozszarpali pierś tymi swoimi włóczniami, to pamiętałbyś taki błahy szczegół. Walczyliśmy, zabijaliśmy je, ale jeden z nich miał szczęście i umieścił cię w księdze umarłych... a potem zabrały mnie i wypaczyły."~ */
  IF ~~ THEN REPLY #47706 /* ~"Jak cię wypaczyły?"~ */ GOTO 22
  IF ~~ THEN REPLY #47707 /* ~"Wspaniale. Jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #47708 /* ~"Niedobrze. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1 21.0
  SAY #47709 /* ~Jego głos brzmi niemal desperacko, tak bardzo próbuje pozbyć się tych wspomnień. "Nie chcesz tego wiedzieć. Ich umysły są obce i zupełnie złe. A jak jeszcze mają je takie istoty..." Drży. "Nie jest to coś, co chce się pamiętać. Powiem tyle - są pomysłowi, jeśli chodzi o tortury."~ */
  IF ~~ THEN REPLY #47710 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #47711 /* ~"No jasne. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Justifier_Lower_Planes","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #47712 /* ~Rozgrzeszyciel brzmi jakby czuł się zażenowany. "W Niższych Sferach stałem się trochę szalony, szefie. Przepraszam. Postaram się, żeby to się więcej nie powtórzyło."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47713 /* ~"Co się stało?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47714 /* ~"Co się stało?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #47715 /* ~"Nie ma sprawy. Odpowiedz tylko na kilka pytań."~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 31
  IF ~~ THEN REPLY #47716 /* ~"Nie ma sprawy. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
SetGlobal("Justifier_Lower_Planes","GLOBAL",0)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 24 // from:
  SAY #47717 /* ~Rozgrzeszyciel brzmi jakby czuł się zażenowany. "W Niższych Sferach stałem się trochę szalony, szefie. Przepraszam. Postaram się, żeby to się więcej nie powtórzyło."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47718 /* ~"Co się stało?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47719 /* ~"Co się stało?"~ */ GOTO 30
  IF ~~ THEN REPLY #47720 /* ~"Nie ma sprawy. Odpowiedz tylko na kilka pytań."~ */ GOTO 31
  IF ~~ THEN REPLY #47721 /* ~"Nie ma sprawy. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #47722 /* ~Rozgrzeszyciel brzmi jakby czuł się zażenowany. "W Niższych Sferach stałem się trochę szalony, szefie. Przepraszam. Postaram się, żeby to się więcej nie powtórzyło."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47723 /* ~"Co się stało?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47724 /* ~"Co się stało?"~ */ GOTO 30
  IF ~~ THEN REPLY #47725 /* ~"Nie ma sprawy. Odpowiedz tylko na kilka pytań."~ */ GOTO 31
  IF ~~ THEN REPLY #47726 /* ~"Nie ma sprawy. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #47727 /* ~Rozgrzeszyciel brzmi jakby czuł się zażenowany. "W Niższych Sferach stałem się trochę szalony, szefie. Przepraszam. Postaram się, żeby to się więcej nie powtórzyło."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47729 /* ~"Co się stało?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47730 /* ~"Co się stało?"~ */ GOTO 30
  IF ~~ THEN REPLY #47731 /* ~"Nie ma sprawy. Odpowiedz tylko na kilka pytań."~ */ GOTO 31
  IF ~~ THEN REPLY #47732 /* ~"Nie ma sprawy. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #47728 /* ~Rozgrzeszyciel brzmi jakby czuł się zażenowany. "W Niższych Sferach stałem się trochę szalony, szefie. Przepraszam. Postaram się, żeby to się więcej nie powtórzyło."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47733 /* ~"Co się stało?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47734 /* ~"Co się stało?"~ */ GOTO 30
  IF ~~ THEN REPLY #47735 /* ~"Nie ma sprawy. Odpowiedz tylko na kilka pytań."~ */ GOTO 31
  IF ~~ THEN REPLY #47736 /* ~"Nie ma sprawy. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 28 // from:
  SAY #47737 /* ~Rozgrzeszyciel brzmi jakby czuł się zażenowany. "W Niższych Sferach stałem się trochę szalony, szefie. Przepraszam. Postaram się, żeby to się więcej nie powtórzyło."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47738 /* ~"Co się stało?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47739 /* ~"Co się stało?"~ */ GOTO 30
  IF ~~ THEN REPLY #47740 /* ~"Nie ma sprawy. Odpowiedz tylko na kilka pytań."~ */ GOTO 31
  IF ~~ THEN REPLY #47741 /* ~"Nie ma sprawy. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 29 // from:
  SAY #47742 /* ~Rozgrzeszyciel brzmi jakby czuł się zażenowany. "W Niższych Sferach stałem się trochę szalony, szefie. Przepraszam. Postaram się, żeby to się więcej nie powtórzyło."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47743 /* ~"Co się stało?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47744 /* ~"Co się stało?"~ */ GOTO 30
  IF ~~ THEN REPLY #47745 /* ~"Nie ma sprawy. Odpowiedz tylko na kilka pytań."~ */ GOTO 31
  IF ~~ THEN REPLY #47746 /* ~"Nie ma sprawy. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1 24.1 25.1 26.1 27.1 28.1 29.1
  SAY #47747 /* ~"Dawno temu, kiedy byłem z moim właścicielem, poszliśmy do Otchłani coś tam znaleźć. Nie pamiętam, co. Myśleliśmy, że jesteśmy na tyle twardzi, że damy sobie radę z wszystkimi przybyszami. Myliliśmy się. Mój właściciel został zabity, a ja zostałem pojmany... i wtedy *wypaczyli* mnie. Czasami, gdy ktoś mi przypomni o Niższych Sferach, znów staję się niemiły."~ */
  IF ~~ THEN REPLY #47748 /* ~"Niedobrze. Mam jeszcze parę pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #47749 /* ~"Niedobrze. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.2 24.2 25.2 26.2 27.2 28.2 29.2 30.0 32.0 33.0 34.0 35.0 36.0 37.0 38.0 39.1 40.0 42.0 43.1 44.0 45.0 46.0
  SAY #47750 /* ~"Co chciałbyś wiedzieć, szefie?"~ */
  IF ~  GlobalGT("Justifier_Lower_Planes","GLOBAL",0)
~ THEN REPLY #47751 /* ~"Co ci się stało?"~ */ GOTO 33
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #47752 /* ~"Co możesz powiedzieć o Mortem?"~ */ GOTO 34
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #47753 /* ~"Co możesz powiedzieć o Annie?"~ */ GOTO 35
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #47754 /* ~"Co możesz powiedzieć o Dak'konie?"~ */ GOTO 36
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #47755 /* ~"Co możesz powiedzieć o Nie-Sławie?"~ */ GOTO 37
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #47756 /* ~"Co możesz powiedzieć o Vhailorze?"~ */ GOTO 38
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #47757 /* ~"Co możesz powiedzieć o Ignusie?"~ */ GOTO 38
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #47758 /* ~"Co możesz powiedzieć o Nordonie?"~ */ GOTO 38
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47759 /* ~"Co możesz powiedzieć o sobie?"~ */ GOTO 39
  IF ~  Global("Justifier","GLOBAL",1)
~ THEN REPLY #47760 /* ~"Co możesz powiedzieć o sobie?"~ */ GOTO 40
  IF ~  GlobalGT("Justifier","GLOBAL",1)
~ THEN REPLY #47761 /* ~"Co możesz powiedzieć o sobie?"~ */ GOTO 41
  IF ~~ THEN REPLY #47762 /* ~"Zapomnij. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.0 24.0 25.0 26.0 27.0 28.0 29.0
  SAY #47763 /* ~"Dawno temu, kiedy byłeś moim właścicielem, poszliśmy do Otchłani coś tam znaleźć. Nie pamiętam, co. Myśleliśmy, że jesteśmy na tyle twardzi, że damy sobie radę z wszystkimi przybyszami. Myliliśmy się. Wpadliśmy na vroki - demony tanar'ri - i choć zabiliśmy paru, jeden miał szczęście i rozszarpał ci serce. Zabrali mnie i... *wypaczyli*. Czasami, gdy ktoś mi przypomni o Niższych Sferach, znów staję się niemiły."~ */
  IF ~~ THEN REPLY #47764 /* ~"To okropne. Mam jeszcze kilka pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #47765 /* ~"Niedobrze. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.0
  SAY #47766 /* ~Wydaje się być zażenowany. "Straciłem kontrolę nad tą częścią, którą spaczyli tanar'ri, gdy zagubiłem się w Otchłani. Zwykle potrafię utrzymać ją w ryzach. Przepraszam, szefie."~ */
  IF ~~ THEN REPLY #47767 /* ~"Nie ma sprawy. Odpowiedz jeszcze na kilka pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #47768 /* ~"Nie ma sprawy. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1
  SAY #47769 /* ~Masz uczucie, że Oko wekiery przesuwa się do przodu i do tyłu. Rozgrzeszyciel szepcze: "Mam złe przeczucia, co do niego, szefie, ale nie umiem tego wyrazić. Ta czaszka wydaje się znajoma i związana z wieloma złymi wspomnieniami. Ale nie umiem powiedzieć dlaczego, ponieważ nie pamiętam..."~ */
  IF ~~ THEN REPLY #47770 /* ~"Może później. Mam jeszcze kilka pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #47771 /* ~"Może później. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 31.2
  SAY #47772 /* ~"Szczerze? Cóż, jest trochę ognista... ale myślę, że ma coś dla ciebie. Ukrywa to, ale... chyba możesz jej zaufać, dopóki jej nie zdradzisz."~ */
  IF ~~ THEN REPLY #47773 /* ~"Dzięki. Jeszcze parę pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #47774 /* ~"Dzięki. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 31.3
  SAY #47775 /* ~"Jest powód dla którego z tobą podróżuje, szefie. I nie jestem pewien, czy wyjdzie ci to na dobre. Znasz tych githzerai - trzymają się razem, a kiedy dołączają do innych, zawsze mają w tym jakiś cel. Będę miał na niego Oko."~ */
  IF ~~ THEN REPLY #47776 /* ~"Dzięki. Jeszcze kilka pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #47777 /* ~"Dzięki za troskę. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.4
  SAY #47778 /* ~Wekiera szepcze gorączkowo. "Szefie! Co ty robisz z tanar'ri? Dwa słowa. Tanar'ri. Sukkub. Ona jest zła. Jej krew zrobiona jest z esencji samego zła. Nie można jej ufać. Potrafi udawać miłą, ale to nic nie znaczy. Może ci powiedzieć, że się nawróciła, ale to tylko następne kłamstwo. Jej rasa zawsze przędzie nić zdrady. Zawsze. Taka jest ich natura."~ */
  IF ~~ THEN REPLY #47779 /* ~"Dzięki za twoją opinię. Jeszcze kilka pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #47780 /* ~"Dzięki za twoją opinię. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.5 31.6 31.7
  SAY #47781 /* ~"Tylko... cóż, tylko nic. Nie znam tego gościa, szefie."~ */
  IF ~~ THEN REPLY #47782 /* ~"Dobrze. Więc odpowiedz na kilka pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #47783 /* ~"Dobrze. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 31.8
  SAY #47784 /* ~"Jestem Rozgrzeszyciel. Nazwali mnie tak, ponieważ potrafię znaleźć usprawiedliwienie właściwie dla wszystkiego. Dodatkowo, po paru chwilach ze mną ludzie zdają sobie sprawę, że wszystko, co mówią ma swoje uzasadnienie." Stworzył mnie jeden z kowali pod auspicjami Horusa w sferach Heliopolis w Arkadii. Powiedz no... wydajesz mi się znajomy..."~ */
  IF ~~ THEN REPLY #47785 /* ~"Jak to znajomy?"~ */ GOTO 42
  IF ~~ THEN REPLY #47786 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #47787 /* ~"Dobrze. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 31.9
  SAY #47788 /* ~"A co tu można wiedzieć? Jestem bronią dobra i światła i dobrze jest mieć mnie w walce. Wiesz, wciąż widzę w tobie coś znajomego a to doprowadza mnie do szaleństwa... coś o tanar'ri i... ach, nieważne. Jestem twym najlepszym przyjacielem i najgorszym nocnym koszmarem. Zależy, o którą stronę pytasz." Głośno śmieje się z własnego żartu.~ */
  IF ~~ THEN REPLY #47789 /* ~"Wciąż nie wiesz skąd mnie znasz. No dobrze. Jeszcze parę pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #47790 /* ~"Wciąż nie wiesz, co? Żegnaj, więc."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 31.10
  SAY #47791 /* ~"Teraz już pamiętam, kim jesteś. Kiedyś, dawno temu, byłeś moim właścicielem. Niezbyt dobrze pamiętam tamte czasy, ale... tak. To ty. To twoje blizny mnie zmyliły. Wydajesz się o wiele bardziej ponury. Musiało być ci ciężko - po tym jak obudziłeś się po śmierci, byłem twoim doradcą, ale kiedy zginąłeś w Otchłani walcząc z vrokami, zabrali mnie z sobą, a ciebie zostawili żebyś zgnił."~ */
  IF ~~ THEN REPLY #47792 /* ~"Czym są vroki?"~ */ JOURNAL #47796 /* ~Właśnie odkryłem, że Rozgrzeszyciel, mówiąca wekiera, był kiedyś moją bronią. Nie pamięta wiele z mojej przeszłości, ale najwyraźniej wyruszyliśmy do Otchłani w poszukiwaniu czegoś, a ja zginąłem.~ */ GOTO 43
  IF ~  False()
~ THEN REPLY #47793 /* ~"Wypaczyły cię? Jak?"~ */ JOURNAL #47796 /* ~Właśnie odkryłem, że Rozgrzeszyciel, mówiąca wekiera, był kiedyś moją bronią. Nie pamięta wiele z mojej przeszłości, ale najwyraźniej wyruszyliśmy do Otchłani w poszukiwaniu czegoś, a ja zginąłem.~ */ GOTO 44
  IF ~~ THEN REPLY #47794 /* ~"Zapomnij. Jeszcze parę pytań..."~ */ JOURNAL #47796 /* ~Właśnie odkryłem, że Rozgrzeszyciel, mówiąca wekiera, był kiedyś moją bronią. Nie pamięta wiele z mojej przeszłości, ale najwyraźniej wyruszyliśmy do Otchłani w poszukiwaniu czegoś, a ja zginąłem.~ */ GOTO 8
  IF ~~ THEN REPLY #47795 /* ~"Zapomnij."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ JOURNAL #47796 /* ~Właśnie odkryłem, że Rozgrzeszyciel, mówiąca wekiera, był kiedyś moją bronią. Nie pamięta wiele z mojej przeszłości, ale najwyraźniej wyruszyliśmy do Otchłani w poszukiwaniu czegoś, a ja zginąłem.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.0
  SAY #47797 /* ~"Przykro mi, ale nie mogę sobie przypomnieć... daj mi trochę więcej czasu, a na pewno wróci mi pamięć."~ */
  IF ~~ THEN REPLY #47798 /* ~"Wspaniale. Mam jeszcze parę pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #47799 /* ~"Wspaniale. Baw się dobrze. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #47800 /* ~"To demony tanar'ri. Walczyłeś mężnie, ale było ich zbyt wiele. Miały szczęście, przedarły się przez twą obronę i rozszarpały ci serce kolczastą włócznią, a potem zostawiły krwawiącego. A potem zabrały mnie i wypaczyły... to było okropne..."~ */
  IF ~~ THEN REPLY #47801 /* ~"Jak to cię wypaczyły?"~ */ GOTO 44
  IF ~~ THEN REPLY #47802 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #47803 /* ~"Niedobrze. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 41.1 43.0
  SAY #47804 /* ~Jego głos brzmi niemal desperacko, tak bardzo próbuje pozbyć się tych wspomnień. "Nie chcesz tego wiedzieć. Ich umysły są obce i zupełnie złe. A jak jeszcze mają je takie istoty..." Drży. "Nie jest to coś, co chce się pamiętać. Powiem tyle - są pomysłowi, jeśli chodzi o tortury."~ */
  IF ~~ THEN REPLY #47805 /* ~"Jeszcze kilka pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #47806 /* ~"No jasne. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Justifier","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #47808 /* ~Jest to oko - dokładnie Oko - wyrzeźbione w twardym metalu, z którego zrobiono tę wekierę. Mówiąc miga na niebiesko, przekazując ci emocje i myśli. "Witaj. Musisz być moim nowym panem."~ */
  IF ~~ THEN REPLY #47809 /* ~"Zgadza się. Mam parę pytań..."~ */ GOTO 31
END

IF ~  GlobalGT("Justifier","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #47810 /* ~"Witaj znowu. Czego chesz ode mnie?"~ */
  IF ~~ THEN REPLY #47811 /* ~"Chcę tylko odpowiedzi na kilka pytań..."~ */ GOTO 31
  IF ~~ THEN REPLY #47812 /* ~"Nic. Żegnaj."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END
