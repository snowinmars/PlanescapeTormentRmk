// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33670 /* ~Ten hałaśliwy, nie grzeszący przesadną czystością jegomość podchodzi do ciebie i wita cię pośpiesznym ukłonem "Witaj, śmiałku! Moje usługi oprowadzacza nie będą cię kosztować więcej jak jednego miedziaka. Dokąd więc mogę cię skierować?"~ */
  IF ~~ THEN REPLY #33678 /* ~"Kim jest oprowadzacz?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33679 /* ~"Dobrze... Trzymaj sztukę miedzi."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33680 /* ~"Na razie niczego mi nie potrzeba. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33671 /* ~Ten hałaśliwy, nie grzeszący przesadną czystością jegomość w mig odgadł, że ściągnął na siebie twoją uwagę. "Witaj, śmiałku! Moje usługi oprowadzacza nie będą cię kosztować więcej jak jednego miedziaka. Dokąd więc mogę cię skierować?"~ */
  IF ~~ THEN REPLY #33681 /* ~"Kim jest oprowadzacz?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33682 /* ~"Dobrze... Trzymaj sztukę miedzi."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33683 /* ~"Na razie niczego mi nie potrzeba. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33672 /* ~Człowiek podnosi brwi i wzrusza ramionami, "Twoim przewodnikiem, śmiałku. Sądzę, że chcesz przejść przez tę część Ula."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33684 /* ~"Dobrze... Trzymaj sztukę miedzi."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33685 /* ~"Nie trzeba mi na razie żadnych wskazówek. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33673 /* ~Człowiek zgrabnie łapie pieniądz i zgina się w ukłonie. "Ta część Ula posiada trzy bramy, jedną wiodącą na wschód, drugą na północ i trzecią na południowy zachód. Spośród miejsc godnych uwagi, warto nadmienić Zajazd, gdzie znużony krwawnik może rozprostować kości."~ */
  IF ~~ THEN REPLY #33686 /* ~"Gdzie jest Zajazd?"~ */ GOTO 4
  IF ~~ THEN REPLY #33687 /* ~"Dokąd prowadzi północna brama?"~ */ GOTO 5
  IF ~~ THEN REPLY #33688 /* ~"Dokąd prowadzi wschodnia brama?"~ */ GOTO 6
  IF ~~ THEN REPLY #33689 /* ~"Dokąd prowadzi południowo-zachodnia brama?"~ */ GOTO 7
  IF ~~ THEN REPLY #33690 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0
  SAY #33674 /* ~"Dokładnie pośrodku tej części Ula, śmiałku... długi, wąski budynek o drzwiach wychodzących na południowy wschód. Dobre miejsce, żeby się przekimać, jeśli się nie można na nogach utrzymać."~ */
  IF ~~ THEN REPLY #33691 /* ~"Dokąd prowadzi północna brama?"~ */ GOTO 5
  IF ~~ THEN REPLY #33692 /* ~"Dokąd prowadzi wschodnia brama?"~ */ GOTO 6
  IF ~~ THEN REPLY #33693 /* ~"Dokąd prowadzi południowo-zachodnia brama?"~ */ GOTO 7
  IF ~~ THEN REPLY #33694 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1
  SAY #33675 /* ~"Prowadzi do Placu Szmaciarzy, śmiałku... Tam nocują wszyscy Zbieracze."~ */
  IF ~~ THEN REPLY #33695 /* ~"Gdzie jest Zajazd?"~ */ GOTO 4
  IF ~~ THEN REPLY #33696 /* ~"Dokąd prowadzi wschodnia brama?"~ */ GOTO 6
  IF ~~ THEN REPLY #33697 /* ~"Dokąd prowadzi południowo-zachodnia brama?"~ */ GOTO 7
  IF ~~ THEN REPLY #33698 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2
  SAY #33676 /* ~"Prowadzi do innej części Ula, śmiałku. Jest tam Kostnica i gospoda 'Proch do Prochu', gdzie Grabarze zwykli pijać. Jest tam też Mauzoleum i wielki Pomnik Grabarzy."~ */
  IF ~~ THEN REPLY #33699 /* ~"Gdzie jest Zajazd?"~ */ GOTO 4
  IF ~~ THEN REPLY #33700 /* ~"Dokąd prowadzi północna brama?"~ */ GOTO 5
  IF ~~ THEN REPLY #33701 /* ~"Dokąd prowadzi południowo-zachodnia brama?"~ */ GOTO 7
  IF ~~ THEN REPLY #33702 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2
  SAY #33677 /* ~"Prowadzi do innej części Ula, śmiałku. Jest tam Biuro do Spraw Szkodników i Zapobiegania Chorobom, a także duży Plac Targowy."~ */
  IF ~~ THEN REPLY #33703 /* ~"Gdzie jest Zajazd?"~ */ GOTO 4
  IF ~~ THEN REPLY #33704 /* ~"Dokąd prowadzi północna brama?"~ */ GOTO 5
  IF ~~ THEN REPLY #33705 /* ~"Dokąd prowadzi wschodnia brama?"~ */ GOTO 6
  IF ~~ THEN REPLY #33706 /* ~"To już wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
