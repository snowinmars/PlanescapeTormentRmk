// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33707 /* ~Ta uśmiechnięta kobieta w średnim wieku podbiega do ciebie i dyga "Witaj, o panie! Moje usługi oprowadzacza będą cię, panie, kosztowały zaledwie jednego miedziaka. Czyż jest jakieś miejsce, do którego mogłabym ci wskazać drogę?"~ */
  IF ~~ THEN REPLY #33717 /* ~"Usługi oprowadzacza?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33718 /* ~"Jasne... Proszę, oto i sztuka miedzi."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33719 /* ~"Na razie niczego mi nie potrzeba. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33708 /* ~Ta uśmiechnięta kobieta w średnim wieku radośnie wymachuje rękami na twój widok. "Witaj, panie! Moje usługi oprowadzacza będą cię, panie, kosztowały zaledwie jednego miedziaka. Czyż jest jakieś miejsce, do którego mogłabym ci wskazać drogę?"~ */
  IF ~~ THEN REPLY #33720 /* ~"Usługi oprowadzacza?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33721 /* ~"Jasne... Proszę, oto i sztuka miedzi."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33722 /* ~"Na razie niczego mi nie potrzeba. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33709 /* ~Kobieta patrzy na ciebie z niedowierzaniem, a potem wzrusza ramionami "Oprowadzacz to taki przewodnik, panie. Mogę ci pomóc, panie, przemierzyć tę część Ula."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33723 /* ~"Dobrze... Trzymaj sztukę miedzi."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33724 /* ~"Nie trzeba mi na razie żadnych wskazówek. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33710 /* ~Kobieta zgrabnie chwyta pieniądz i zgina się w ukłonie. "Ta część Ula posiada dwie bramy, jedną wiodącą na zachód i drugą na południe. Spośród miejsc godnych uwagi, warto nadmienić Kostnicę, karczmę 'Proch do Prochu', Pomnik Grabarzy oraz mauzoleum. Natomiast polecałabym panu trzymać się z daleka od pewnej alei, która prowadzi na południowy zachód. Wielu się tam kręci niebezpiecznych łotrów."~ */
  IF ~~ THEN REPLY #33725 /* ~"Gdzie jest Kostnica?"~ */ GOTO 4
  IF ~~ THEN REPLY #33726 /* ~"Gdzie jest gospoda 'Proch do Prochu'?"~ */ GOTO 5
  IF ~~ THEN REPLY #33727 /* ~"Gdzie jest Pomnik?"~ */ GOTO 6
  IF ~~ THEN REPLY #33728 /* ~"Gdzie jest mauzoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33729 /* ~"Dokąd prowadzi zachodnia brama?"~ */ GOTO 8
  IF ~~ THEN REPLY #33730 /* ~"Dokąd prowadzi południowa brama?"~ */ GOTO 9
  IF ~~ THEN REPLY #33731 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0 9.0
  SAY #33711 /* ~"Kostnica to ta olbrzymia, kopulasta budowla w północno-wschodniej części tej części Ula. Grabarze cię jednak tam nie wpuszczą, chyba że masz do nich jakiś interes. Albo że jesteś martwy." Kobieta obdarza cię uśmiechem.~ */
  IF ~~ THEN REPLY #33732 /* ~"Gdzie jest gospoda 'Proch do Prochu'?"~ */ GOTO 5
  IF ~~ THEN REPLY #33733 /* ~"Gdzie jest Pomnik?"~ */ GOTO 6
  IF ~~ THEN REPLY #33734 /* ~"Gdzie jest mauzoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33735 /* ~"Dokąd prowadzi zachodnia brama?"~ */ GOTO 8
  IF ~~ THEN REPLY #33736 /* ~"Dokąd prowadzi południowa brama?"~ */ GOTO 9
  IF ~~ THEN REPLY #33737 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33712 /* ~"Gospodę znajdziesz w południowo-zachodniej części tego obszaru... To kopulasty budynek o drzwiach wychodzących na południowy wschód. 'Proch do prochu' to jedna z bezpieczniejszych, spokojniejszych tawern w Ulu."~ */
  IF ~~ THEN REPLY #33738 /* ~"Gdzie jest Kostnica?"~ */ GOTO 4
  IF ~~ THEN REPLY #33739 /* ~"Gdzie jest Pomnik?"~ */ GOTO 6
  IF ~~ THEN REPLY #33740 /* ~"Gdzie jest mauzoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33741 /* ~"Dokąd prowadzi zachodnia brama?"~ */ GOTO 8
  IF ~~ THEN REPLY #33742 /* ~"Dokąd prowadzi południowa brama?"~ */ GOTO 9
  IF ~~ THEN REPLY #33743 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2 9.1
  SAY #33713 /* ~"Idź ku środkowi północnego fragmentu tej części dzielnicy... Tam zobaczysz otoczony murami dziedziniec o sklepionym przejściu, po jednym w każdej ze ścian. W pobliżu południowo-wschodniego wejścia do tego miejsca snuje się z reguły wielu Grabarzy, trawiąc czas na swych żałobnych modłach."~ */
  IF ~~ THEN REPLY #33744 /* ~"Gdzie jest Kostnica?"~ */ GOTO 4
  IF ~~ THEN REPLY #33745 /* ~"Gdzie jest gospoda 'Proch do Prochu'?"~ */ GOTO 5
  IF ~~ THEN REPLY #33746 /* ~"Gdzie jest mauzoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33747 /* ~"Dokąd prowadzi zachodnia brama?"~ */ GOTO 8
  IF ~~ THEN REPLY #33748 /* ~"Dokąd prowadzi południowa brama?"~ */ GOTO 9
  IF ~~ THEN REPLY #33749 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2 8.3 9.2
  SAY #33714 /* ~"Mauzoleum znajdziesz w północno-zachodnim narożniku tej części Ula. To wielki, kwadratowy budynek, z kształtu podobny do wieży."~ */
  IF ~~ THEN REPLY #33750 /* ~"Gdzie jest Kostnica?"~ */ GOTO 4
  IF ~~ THEN REPLY #33751 /* ~"Gdzie jest gospoda 'Proch do Prochu'?"~ */ GOTO 5
  IF ~~ THEN REPLY #33752 /* ~"Gdzie jest Pomnik?"~ */ GOTO 6
  IF ~~ THEN REPLY #33753 /* ~"Dokąd prowadzi zachodnia brama?"~ */ GOTO 8
  IF ~~ THEN REPLY #33754 /* ~"Dokąd prowadzi południowa brama?"~ */ GOTO 9
  IF ~~ THEN REPLY #33755 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.3 5.3 6.3 7.3 9.3
  SAY #33715 /* ~"Do innych części Ula, panie. Znajdziesz tam Zajazd, gdzie można odpocząć."~ */
  IF ~~ THEN REPLY #33756 /* ~"Gdzie jest Kostnica?"~ */ GOTO 4
  IF ~~ THEN REPLY #33757 /* ~"Gdzie jest gospoda 'Proch do Prochu'?"~ */ GOTO 5
  IF ~~ THEN REPLY #33758 /* ~"Gdzie jest Pomnik?"~ */ GOTO 6
  IF ~~ THEN REPLY #33759 /* ~"Gdzie jest mauzoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33760 /* ~"Dokąd prowadzi południowa brama?"~ */ GOTO 9
  IF ~~ THEN REPLY #33761 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.5 4.4 5.4 6.4 7.4 8.4
  SAY #33716 /* ~"Po prostu do dalszych części Ula, panie. Jest tam i salon tatuażu, i gospoda 'Pod Gorejącym Człekiem'. Wielu tam spotkasz twardzieli. Knajpa aż w szwach od nich pęka."~ */
  IF ~~ THEN REPLY #33762 /* ~"Gdzie jest Kostnica?"~ */ GOTO 4
  IF ~~ THEN REPLY #33763 /* ~"Gdzie jest Pomnik?"~ */ GOTO 6
  IF ~~ THEN REPLY #33764 /* ~"Gdzie jest mauzoleum?"~ */ GOTO 7
  IF ~~ THEN REPLY #33765 /* ~"Dokąd prowadzi zachodnia brama?"~ */ GOTO 8
  IF ~~ THEN REPLY #33766 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
