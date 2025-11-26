// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCODEXI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCODEXI~

IF ~  Global("CodexI","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50399 /* ~To, co początkowo bierzesz za pospolitą, zapieczętowaną przy pomocy mosiężnego zamka księgę, w rzeczywistości okazuje się być woluminem zamkniętym w wykonanych z dziwnych skór i brązu okowach. Nosi on nieskomplikowany tytuł: 'Księga Rzeczy Niepojętych'.~ */
  IF ~~ THEN REPLY #50400 /* ~Otwórz... i przeczytaj!~ */ DO ~SetGlobal("CodexI","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 1
  IF ~~ THEN REPLY #50401 /* ~Odłóż księgę zachowując należny jej respekt.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50402 /* ~Rozwierasz okalające księgę okowy i otwierasz ją. Gdy dostrzegasz, co zawiera ten wolumin, z wrażenia odbiera ci mowę. Niczym zahipnotyzowany, zaczynasz przeglądać kolejne strony. Zwykłe słowa wydają się jednak niewładne, by opisać wszystkie te wspaniałości, które w tym tomie zawarto.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #50403 /* ~"To... To było... Ja..."~ */ EXTERN ~DMORTE~ 500
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #50405 /* ~"To... To było... Ja..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #50406 /* ~Gdy spoglądasz na Księgę, popadasz w chwilową zadumę. Zaraz potem zamykasz ją i, z pełną czci ostrożnością, odkładasz.~ */
  IF ~~ THEN REPLY #50407 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("CodexI","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #50408 /* ~Księga Rzeczy Niepojętych oprawiona jest w wykonaną z niezwykłych skór i inkrustowaną brązem okładkę. Ciężko jednakże opisać to, co kryje ona w swym wnętrzu. Zwykłe słowa wydają się być niewładne, by przedstawić zawarte w niej wspaniałości.~ */
  IF ~~ THEN REPLY #50409 /* ~Odłóż księgę zachowując należny jej respekt.~ */ EXIT
END
