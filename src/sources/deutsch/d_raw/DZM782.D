// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM782.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM782~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24708 /* ~Die Leiche bleibt stehen und starrt dich mit leerem Blick an, als du dich näherst. Die Zahl "782" ist in die Stirn geritzt, und ihre Lippen sind zugenäht. Die Leiche verbreitet einen leichten Geruch nach Formaldehyd.~ */
  IF ~  NearbyDialog("DMorte1")
~ THEN REPLY #24709 /* ~"Ich suche nach einem Schlüssel... Hast du zufällig einen?"~ */ EXTERN ~DMORTE1~ 34
  IF ~  !NearbyDialog("DMorte1")
~ THEN REPLY #24712 /* ~"Ich suche nach einem Schlüssel... Hast du zufällig einen?"~ */ GOTO 1
  IF ~~ THEN REPLY #24713 /* ~Untersuche die Leiche und sieh nach, ob sie einen Schlüssel bei sich hat.~ */ GOTO 2
  IF ~~ THEN REPLY #24714 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ GOTO 2
  IF ~~ THEN REPLY #24717 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #24710 /* ~Die Leiche antwortet nicht.~ */
  IF ~~ THEN REPLY #24711 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #42304 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 0.3
  SAY #24715 /* ~Diese Leiche sieht wie die mit dem Schlüssel aus. Sie hält ihn in der linken Hand ganz fest, ihr Daumen und Zeigefinger sind in einem totenstarren Griff darum geklammert. Es sieht so aus, als ob du die Hand der Leiche abschlagen mußt, um an den Schlüssel zu kommen.~ */
  IF ~~ THEN REPLY #24716 /* ~"Ich brauche diesen Schlüssel, Leiche. Sieht so aus, als ob du es in dieser Welt nicht mehr lange machst."~ */ DO ~ForceAttack(Protagonist,"ZM782")
~ EXIT
  IF ~~ THEN REPLY #42305 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END
