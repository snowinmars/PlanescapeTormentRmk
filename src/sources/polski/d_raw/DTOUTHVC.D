// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVC~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33767 /* ~Ten człowiek o zbójeckim wyglądzie zbliża się do ciebie z odrobinę drwiącym uśmiechem "Witaj, krwawniku... Jak szanowne zdrowie? Jam jest tutejszy oprowadzacz, więc jeśli masz zbędnego miedziaka, mogę posłużyć ci wskazówkami i innymi cennymi radami."~ */
  IF ~~ THEN REPLY #33776 /* ~"Oprowadzacz? Co to takiego?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33777 /* ~"Dobrze... Trzymaj sztukę miedzi."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33778 /* ~"Na razie niczego mi nie potrzeba. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33768 /* ~"Witaj, krwawniku. Jak szanowne zdrowie? Jam jest tutejszy oprowadzacz, więc jeśli masz zbędnego miedziaka, mogę posłużyć ci wskazówkami i innymi cennymi radami."~ */
  IF ~~ THEN REPLY #33779 /* ~"Oprowadzacz? Co to takiego?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33780 /* ~"Jasne... Proszę, oto i sztuka miedzi."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33781 /* ~"Na razie niczego mi nie potrzeba. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33769 /* ~"Uch, na korzenie Wszelkich Mocy... Wygląda na to, żeś rzadziej bywał w Sigil, niż na to wyglądasz. Oprowadzacz to przewodnik, krwawniku."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33782 /* ~"Dobrze... Trzymaj sztukę miedzi."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33783 /* ~"Nie trzeba mi na razie żadnych wskazówek. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33770 /* ~Człowiek zręcznie wyjmuje monetę z twojej dłoni i mruga powiekami. "W porządku! Ta część ula posiada dwie bramy, jedna wiedzie na północ, a druga na południowy wschód. A gdybyś szukał solidnej zwady, znajdziesz ją w alei, wiodącej na północny wschód. Mamy tutaj także Biuro do Spraw Szkodników i Zapobiegania Chorobom, a także słusznych rozmiarów Plac Targowy."~ */
  IF ~~ THEN REPLY #33784 /* ~"Gdzie jest Biuro do Spraw Szkodników i Zapobiegania Chorobom?"~ */ GOTO 4
  IF ~~ THEN REPLY #33785 /* ~"Gdzie jest Plac Targowy?"~ */ GOTO 5
  IF ~~ THEN REPLY #33786 /* ~"Dokąd prowadzi północna brama?"~ */ GOTO 6
  IF ~~ THEN REPLY #33787 /* ~"Dokąd prowadzi południowo-wschodnia brama?"~ */ GOTO 7
  IF ~~ THEN REPLY #33788 /* ~"Możesz powiedzieć mi coś więcej o tej alei?"~ */ GOTO 8
  IF ~~ THEN REPLY #33789 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0
  SAY #33771 /* ~"W środku południowej połówki tej części Ula... Drzwi wychodzą na południe, więc po prostu pójdź najbardziej wysuniętą na południe z dróg wiodących ze wschodu na zachód, a niebawem je ujrzysz."~ */
  IF ~~ THEN REPLY #33790 /* ~"Gdzie jest Plac Targowy?"~ */ GOTO 5
  IF ~~ THEN REPLY #33791 /* ~"Dokąd prowadzi północna brama?"~ */ GOTO 6
  IF ~~ THEN REPLY #33792 /* ~"Dokąd prowadzi południowo-wschodnia brama?"~ */ GOTO 7
  IF ~~ THEN REPLY #33793 /* ~"Możesz powiedzieć mi coś więcej o tej alei?"~ */ GOTO 8
  IF ~~ THEN REPLY #33794 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33772 /* ~"W południowym narożniku budynku przypominającego literę 'L', położonego pośrodku północnej połówki tej części Ula. Jeśli pójdziesz najbardziej wysuniętą na północ z dróg wiodących ze wschodu na zachód, niebawem go zobaczysz. Mnóstwo tam ludzi, mnóstwo kupców i im podobnych."~ */
  IF ~~ THEN REPLY #33795 /* ~"Gdzie jest Biuro do Spraw Szkodników i Zapobiegania Chorobom?"~ */ GOTO 4
  IF ~~ THEN REPLY #33796 /* ~"Dokąd prowadzi północna brama?"~ */ GOTO 6
  IF ~~ THEN REPLY #33797 /* ~"Dokąd prowadzi południowo-wschodnia brama?"~ */ GOTO 7
  IF ~~ THEN REPLY #33798 /* ~"Możesz powiedzieć mi coś więcej o tej alei?"~ */ GOTO 8
  IF ~~ THEN REPLY #33799 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2
  SAY #33773 /* ~"Prowadzi ku dalszym częściom Ula, krwawniku. Jest tam Zajazd, wart odwiedzin, jeśliś zdrożony albo zbolały i chcesz uciąć sobie drzemkę."~ */
  IF ~~ THEN REPLY #33800 /* ~"Gdzie jest Biuro do Spraw Szkodników i Zapobiegania Chorobom?"~ */ GOTO 4
  IF ~~ THEN REPLY #33801 /* ~"Gdzie jest Plac Targowy?"~ */ GOTO 5
  IF ~~ THEN REPLY #33802 /* ~"Dokąd prowadzi południowo-wschodnia brama?"~ */ GOTO 7
  IF ~~ THEN REPLY #33803 /* ~"Możesz powiedzieć mi coś więcej o tej alei?"~ */ GOTO 8
  IF ~~ THEN REPLY #33804 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2 8.3
  SAY #33774 /* ~"Po prostu ku innym częściom Ula, krwawniku. Możesz tam wytatuować się, jeśli taka wola, albo znaleźć rozrywkę w przyzwoitej gospódce zwanej 'Pod Gorejącym Człekiem'."~ */
  IF ~~ THEN REPLY #33805 /* ~"Gdzie jest Biuro do Spraw Szkodników i Zapobiegania Chorobom?"~ */ GOTO 4
  IF ~~ THEN REPLY #33806 /* ~"Gdzie jest Plac Targowy?"~ */ GOTO 5
  IF ~~ THEN REPLY #33807 /* ~"Dokąd prowadzi północna brama?"~ */ GOTO 6
  IF ~~ THEN REPLY #33808 /* ~"Możesz powiedzieć mi coś więcej o tej alei?"~ */ GOTO 8
  IF ~~ THEN REPLY #33809 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.3 5.3 6.3 7.3
  SAY #33775 /* ~Człowiek wzrusza ramionami. "To po prostu miejsce, do którego możesz zajrzeć, jeśli brakuje ci porządnej bijatyki. Nic poza tym. Wyglądasz mi na zabijakę, stąd o tym wspomniałem. Jak już rzekłem, znajduje się na północny wschód stąd. Jeżeli rozróba ci nie smak, trzymaj się od tego miejsca z daleka."~ */
  IF ~~ THEN REPLY #33810 /* ~"Gdzie jest Biuro do Spraw Szkodników i Zapobiegania Chorobom?"~ */ GOTO 4
  IF ~~ THEN REPLY #33811 /* ~"Gdzie jest Plac Targowy?"~ */ GOTO 5
  IF ~~ THEN REPLY #33812 /* ~"Dokąd prowadzi północna brama?"~ */ GOTO 6
  IF ~~ THEN REPLY #33813 /* ~"Dokąd prowadzi południowo-wschodnia brama?"~ */ GOTO 7
  IF ~~ THEN REPLY #33814 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
