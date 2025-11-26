// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHOCITF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHOCITF~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19696 /* ~Ta ghulica cuchnie krwią i gnijącym mięsem. Po jej długich, pozlepianych włosach łażą żuki i robaki. Zauważasz, jak swoimi szponami odgarnia sobie włosy znad żółtych oczu. Jej pokryte ropiejącymi wrzodami ciało ma chorobliwy, zielony kolor.~ */
  IF ~~ THEN REPLY #19705 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #19706 /* ~Zostaw tę ghulicę w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #19697 /* ~Ghulica zwęża oczy i warczy na ciebie. Wysuwa swój język - nie krótszy niż dwie ręce - żeby oblizać swoje spierzchnięte wargi.~ */
  IF ~~ THEN REPLY #19707 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #19708 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19698 /* ~Ghulica nieprzerwanie wpatruje się w ciebie głodnym wzrokiem. Raz po raz zaciska i rozluźnia pięści, jakby biła się z myślami, czy się na ciebie nie rzucić.~ */
  IF ~~ THEN REPLY #19709 /* ~"Uspokój się i odpowiedz mi na kilka pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #19710 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #19699 /* ~Ghulica warczy do ciebie: "Cicho, mięcho! Żadnego gadania! Ja nie słuchać mięsaków! Słyszem tylko twoje serce, krew w twoich żyłach, słodką, przepyszną krew... smaczny serco-mięsaku..." Z jej ust wycieka ślina i spada na zakurzoną podłogę. "ŻADNEGO GADANIA!"~ */
  IF ~~ THEN REPLY #19711 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #19700 /* ~Kiedy się do niej zbliżasz, ghulica warczy: "Wynoś się stąd! Wynocha! Nie *gadam* z mięsakami, nie *słucham* mięsa! WYNOCHA!"~ */
  IF ~~ THEN REPLY #19712 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",0)
~ THEN BEGIN 5 // from:
  SAY #19701 /* ~Ta ghulica cuchnie krwią i gnijącym mięsem. Po jej długich, pozlepianych włosach łażą żuki i robaki. Zauważasz, jak swoimi szponami odgarnia sobie włosy znad żółtych oczu. Jej pokryte ropiejącymi wrzodami ciało ma chorobliwy, zielony kolor.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Warn","AR1500",1)
~ EXTERN ~DMORTE~ 204
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",1)
~ THEN BEGIN 6 // from:
  SAY #50422 /* ~Ta ghulica cuchnie krwią i gnijącym mięsem. Po jej długich, pozlepianych włosach łażą żuki i robaki. Zauważasz, jak swoimi szponami odgarnia sobie włosy znad żółtych oczu. Jej pokryte ropiejącymi wrzodami ciało ma chorobliwy, zielony kolor.~ */
  IF ~~ THEN REPLY #50423 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #50425 /* ~Zostaw tę ghulicę w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END
