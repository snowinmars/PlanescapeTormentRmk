// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVD~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33815 /* ~Ta atrakcyjna, skąpo odziana kobieta wzywa cię i zbliża się "Wybacz, dobry panie! Wybacz! Wydaje mi się, panie, że nieco zabłądziłeś, więc jeśli nie masz mi tego za złe, chciałabym posłużyć ci, panie, za oprowadzacza. To niewiele kosztuje. Ledwie jedną sztukę miedzi."~ */
  IF ~~ THEN REPLY #33824 /* ~"Oprowadzacz? Co to takiego?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33825 /* ~"Jasne... Proszę, oto i sztuka miedzi."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33826 /* ~"Na razie niczego mi nie potrzeba. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33816 /* ~"Nie trzeba ci może usług oprowadzacza, dobry panie? Będzie cię to kosztowało tylko jednego miedziaka..."~ */
  IF ~~ THEN REPLY #33827 /* ~"Oprowadzacz? Co to takiego?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33828 /* ~"Jasne... Proszę, oto i sztuka miedzi."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33829 /* ~"Na razie niczego mi nie potrzeba. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33817 /* ~"Oprowadzacz znaczy przewodnik, panie, który poprowadzi cię przez Ul."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33830 /* ~"Dobrze... Trzymaj sztukę miedzi."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33831 /* ~"Nie trzeba mi na razie żadnych wskazówek. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33818 /* ~"Dzięki, panie... Nie pożałujesz tego miedziaka." Kobieta pośpiesznie wpycha pieniądz do kieszeni. "Ta część Ula posiada dwie bramy, obie położone na zachodnim skraju, jedna z nich wiedzie na północ, a druga na południe. Dwa są miejsca tutaj, które możesz uznać za godne uwagi: gospoda 'Pod Gorejącym Człekiem' i salon tatuażu. Ponadto mamy też grupę zabudowań określaną mianem Kamienicy Łotrów, wielce, wielce niebezpieczne, panie."~ */
  IF ~~ THEN REPLY #33832 /* ~"Gdzie jest gospoda 'Pod Gorejącym Człekiem'?"~ */ GOTO 4
  IF ~~ THEN REPLY #33833 /* ~"Gdzie jest salon tatuażu?"~ */ GOTO 5
  IF ~~ THEN REPLY #33834 /* ~"Dokąd prowadzi północno-zachodnia brama?"~ */ GOTO 6
  IF ~~ THEN REPLY #33835 /* ~"Gdzie jest Kamienica Łotrów?"~ */ GOTO 8
  IF ~~ THEN REPLY #33836 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0
  SAY #33819 /* ~"To w samym środku tej części Ula, panie... kwadratowy budynek o kopulastym dachu. Pójdź drogą, najbardziej wysuniętą na południe z ciągnących się od wschodu do zachodu. Wnet obaczysz wejście skierowane ku południu."~ */
  IF ~~ THEN REPLY #33837 /* ~"Gdzie jest salon tatuażu?"~ */ GOTO 5
  IF ~~ THEN REPLY #33838 /* ~"Dokąd prowadzi północno-zachodnia brama?"~ */ GOTO 6
  IF ~~ THEN REPLY #33839 /* ~"Dokąd prowadzi południowo-zachodnia brama?"~ */ GOTO 7
  IF ~~ THEN REPLY #33840 /* ~"Gdzie jest Kamienica Łotrów?"~ */ GOTO 8
  IF ~~ THEN REPLY #33841 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33820 /* ~"Salon tatuażu położony jest we wschodniej części tego fragmentu Ula, panie... to kopulasty budynek, kryty siatką drucianą. Wejście do salonu jest w południowej ścianie."~ */
  IF ~~ THEN REPLY #33842 /* ~"Gdzie jest gospoda 'Pod Gorejącym Człekiem'?"~ */ GOTO 4
  IF ~~ THEN REPLY #33843 /* ~"Dokąd prowadzi północno-zachodnia brama?"~ */ GOTO 6
  IF ~~ THEN REPLY #33844 /* ~"Dokąd prowadzi południowo-zachodnia brama?"~ */ GOTO 7
  IF ~~ THEN REPLY #33845 /* ~"Gdzie jest Kamienica Łotrów?"~ */ GOTO 8
  IF ~~ THEN REPLY #33846 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2
  SAY #33821 /* ~"Do innej części Ula, gdzie położona jest Kostnica, panie. Jest tam również gospoda 'Proch do Prochu', Pomnik Grabarzy i mauzoleum."~ */
  IF ~~ THEN REPLY #33847 /* ~"Gdzie jest gospoda 'Pod Gorejącym Człekiem'?"~ */ GOTO 4
  IF ~~ THEN REPLY #33848 /* ~"Gdzie jest salon tatuażu?"~ */ GOTO 5
  IF ~~ THEN REPLY #33849 /* ~"Dokąd prowadzi południowo-zachodnia brama?"~ */ GOTO 7
  IF ~~ THEN REPLY #33850 /* ~"Gdzie jest Kamienica Łotrów?"~ */ GOTO 8
  IF ~~ THEN REPLY #33851 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.2 6.2 8.3
  SAY #33822 /* ~"Brama ta wiedzie to innej części Ula, gdzie znajduje się Biuro do Spraw Szkodników i Zapobiegania Chorobom, jak również niepoślednich rozmiarów Plac Targowy."~ */
  IF ~~ THEN REPLY #33852 /* ~"Gdzie jest gospoda 'Pod Gorejącym Człekiem'?"~ */ GOTO 4
  IF ~~ THEN REPLY #33853 /* ~"Gdzie jest salon tatuażu?"~ */ GOTO 5
  IF ~~ THEN REPLY #33854 /* ~"Dokąd prowadzi północno-zachodnia brama?"~ */ GOTO 6
  IF ~~ THEN REPLY #33855 /* ~"Gdzie jest Kamienica Łotrów?"~ */ GOTO 8
  IF ~~ THEN REPLY #33856 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 5.3 6.3 7.3
  SAY #33823 /* ~Kobieta kiwa głową "To skupisko budynków, położone wzdłuż północnego skrawka tej części Ula, panie... Nie sądzę wszakże, aby przyszła ci ochota tam zaglądać. Chyba że, czego nie wykluczam, szukasz zwady, panie."~ */
  IF ~~ THEN REPLY #33857 /* ~"Gdzie jest gospoda 'Pod Gorejącym Człekiem'?"~ */ GOTO 4
  IF ~~ THEN REPLY #33858 /* ~"Gdzie jest salon tatuażu?"~ */ GOTO 5
  IF ~~ THEN REPLY #33859 /* ~"Dokąd prowadzi północno-zachodnia brama?"~ */ GOTO 6
  IF ~~ THEN REPLY #33860 /* ~"Dokąd prowadzi południowo-zachodnia brama?"~ */ GOTO 7
  IF ~~ THEN REPLY #33861 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
