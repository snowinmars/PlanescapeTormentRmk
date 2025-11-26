// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR5~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38105 /* ~Z powodu mojego zabójcy straciłem całe pokolenia. Nie potrafię go zgubić, więc muszę go zabić. Próbowałem zamazać tropy. Zostawiałem fałszywe zwłoki, przygotowane tak, aby go zadowolić. Wędrowałem po najdalszych sferach, mając nadzieję, że odległość będzie moją tarczą. Zbudowałem grobowiec pełen pułapek, by zabić swego prześladowcę. Kryłem się.~ */
  IF ~~ THEN REPLY #53727 /* ~Kontynuuj.~ */ GOTO 1
  IF ~~ THEN REPLY #53728 /* ~Odwróć się od inskrypcji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53729 /* ~Wszystko, co udało mi się uzyskać, to czas. Za każdym razem ataki znowu się zaczynają, jeszcze gwałtowniejsze niż poprzednio. Podstępy nic nie dają. Zabójca w jakiś sposób zawsze wie, że żyję. I nie ma znaczenia w jakiej sferze się skryję. Znajduje mnie. Zawsze.~ */
  IF ~  Global("Inscr_5","GLOBAL",0)
~ THEN REPLY #53730 /* ~Obejrzyj płytę.~ */ DO ~SetGlobal("Know_Player_Killer","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53731 /* ~Odwróć się od inskrypcji.~ */ DO ~SetGlobal("Know_Player_Killer","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53732 /* ~Płyta wygląda jak gdyby mogła wchodzić w ścianę.~ */
  IF ~~ THEN REPLY #53733 /* ~Wciśnij płytę.~ */ DO ~SetGlobal("Inscr_5","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #53734 /* ~Nie dotykaj płyty.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53735 /* ~Płyta lekko wchodzi w ścianę. W sarkofagu za sobą słyszysz stuknięcie.~ */
  IF ~~ THEN REPLY #53736 /* ~Odwróć się od inskrypcji.~ */ EXIT
END
