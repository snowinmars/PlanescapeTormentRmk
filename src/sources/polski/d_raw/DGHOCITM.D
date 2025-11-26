// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHOCITM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHOCITM~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19675 /* ~Ten ociekający flegmą, żółtooki ghul cuchnie krwią i gnijącym mięsem. Dłubie sobie w kłach swoimi długimi, obleśnymi szponami i ciągle węszy wkoło. Jego pokryte ropiejącymi wrzodami ciało ma chorobliwy, zielony kolor.~ */
  IF ~~ THEN REPLY #19683 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #19684 /* ~Zostaw tego ghula w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #19676 /* ~Ghul zwęża oczy i warczy na ciebie. Wysuwa swój język - nie krótszy niż dwie ręce - żeby oblizać swoje spierzchnięte wargi.~ */
  IF ~~ THEN REPLY #19685 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #19686 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19677 /* ~Ghul nieprzerwanie wpatruje się w ciebie głodnym wzrokiem. Raz po raz zaciska i rozluźnia pięści, jakby bił się z myślami, czy się na ciebie nie rzucić.~ */
  IF ~~ THEN REPLY #19687 /* ~"Uspokój się i odpowiedz mi na kilka pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #19688 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #19678 /* ~Ghuli warczy do ciebie: "Cicho, mięcho! Żadnego gadania! Ja nie słuchać mięsaków! Słyszem tylko twoje serce, krew w twoich żyłach, słodką, przepyszną krew... smaczny serco-mięsaku..." Z jego ust wycieka ślina i spada na zakurzoną podłogę. "ŻADNEGO GADANIA!"~ */
  IF ~~ THEN REPLY #19689 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #19679 /* ~Kiedy się do niego zbliżasz, ghul warczy: "Wynoś się stąd! Wynocha! Nie *gadam* z mięsakami, nie *słucham* mięsa! WYNOCHA!"~ */
  IF ~~ THEN REPLY #19690 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",0)
~ THEN BEGIN 5 // from:
  SAY #19680 /* ~Ten ociekający flegmą, żółtooki ghul cuchnie krwią i gnijącym mięsem. Dłubie sobie w kłach swoimi długimi, obleśnymi szponami i ciągle węszy wkoło. Jego pokryte ropiejącymi wrzodami ciało ma chorobliwy, zielony kolor.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Warn","AR1500",1)
~ EXTERN ~DMORTE~ 202
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",1)
~ THEN BEGIN 6 // from:
  SAY #50419 /* ~Ten ociekający flegmą, żółtooki ghul cuchnie krwią i gnijącym mięsem. Dłubie sobie w kłach swoimi długimi, obleśnymi szponami i ciągle węszy wkoło. Jego pokryte ropiejącymi wrzodami ciało ma chorobliwy, zielony kolor.~ */
  IF ~~ THEN REPLY #50420 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #50421 /* ~Zostaw tego ghula w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END
