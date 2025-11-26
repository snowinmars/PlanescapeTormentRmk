// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEVORE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEVORE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48410 /* ~Du triffst auf einen kleinen Mann, dessen Augen vor unterdrücktem Groll glühen. Er brüllt seinen Arbeitern Anweisungen zu und dreht sich ungeduldig zu dir um. "Was willst du?"~ */
  IF ~~ THEN REPLY #48411 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #48412 /* ~"Was ist das für ein Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #48413 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48414 /* ~"Ich hab mit Grimskalp gesprochen. Er hat gesagt, daß du etwas hast, das ihm gehört."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48415 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Anarchist_Treasure","GLOBAL",2)
~ THEN BEGIN 1 // from: 8.0
  SAY #48416 /* ~"Ich hab nichts für dich, Freund, nichts! Laß mich hier in Ruhe meine Arbeit machen, ja? Wenn was passiert, kommst du wieder hierher, und wir kümmern uns um dich, aber für den Augenblick sollten wir nicht zusammen gesehen werden."~ */
  IF ~~ THEN REPLY #48417 /* ~"Leb wohl."~ */ JOURNAL #47845 /* ~Devore, der Großhändler, hat gesagt, daß ich zurück zu seinem Lagerhaus kommen solle, wenn es irgend etwas Neues gebe. Im Gegenzug habe ich mich einverstanden erklärt, ihn in Ruhe zu lassen.
~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #48418 /* ~"Was, du schon wieder? Was willst du?"~ */
  IF ~~ THEN REPLY #48419 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #48420 /* ~"Was ist das für ein Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #48421 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48422 /* ~"Ich hab mit Grimskalp gesprochen. Er hat gesagt, daß du etwas hast, das ihm gehört."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48423 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 2.0 7.0
  SAY #48424 /* ~"Ich heiße Devore. Das hier ist mein Lager. Das sind meine Beschäftigten. Und es ist meine Zeit, die du verschwendest!"~ */
  IF ~~ THEN REPLY #48425 /* ~"Schon gut. Ich hätte nur noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #48426 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 2.1 7.1
  SAY #48427 /* ~Er seufzt verzweifelt. "Das ist ein Lager. Wir lagern hier Dinge - Waffen, Gold, Alkohol, Stoffe, Lebensmittel - im Prinzip alles, was ein Knochengerüst so braucht. Du hast doch wohl schon mal was von Lagern gehört, oder?"~ */
  IF ~~ THEN REPLY #48428 /* ~"Na klar. Ich hätte da nur noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #48429 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 2.2 7.2
  SAY #48430 /* ~"Das ist eine Stadt, in der Leute versuchen, sich durchzuschlagen. Wir alle machen das so, indem wir tun, was wir können, und manchmal werden wir von Abenteurertypen gestört, die anscheinend glauben, daß wir den ganzen Tag nur auf sie gewartet haben, damit sie ihre Fragen loswerden können."~ */
  IF ~~ THEN REPLY #48431 /* ~"Gut, ich hätte da nur noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #48432 /* ~"Ich hab's kapiert. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 2.3 7.3
  SAY #48433 /* ~"Grimskalp? Du meinst, er ist nicht tot? Als ich ihn zum letzten Mal gesehen hab, schleppte er sich gerade zum... oh, ich verstehe. Er hat dich geschickt, um mich einzuschüchtern, damit ich seinen Anteil an der Beute abtrete. Oder um freundlich danach zu fragen... Oder ist da irgendwas mit den Anarchisten in Sigil im Gange? Er hat sich schon immer ziemlich im Verborgenen gehalten. Man kann nur von Glück sagen, daß wir... ich meine, SIE, heh heh heh... es geschafft haben, ihm ein paar Messerklingen hineinzujagen. Ich hol seinen Beuteanteil. Ich bin gleich zurück."~ */
  IF ~~ THEN REPLY #48434 /* ~"Beeil dich."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveGoldForce(250)
GiveItemCreate("OgrGaunt",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 3.0 4.0 5.0
  SAY #48435 /* ~Er seufzt."Was?"~ */
  IF ~~ THEN REPLY #48436 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #48437 /* ~"Was ist das für ein Ort?"~ */ GOTO 4
  IF ~~ THEN REPLY #48438 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48439 /* ~"Ich hab mit Grimskalp gesprochen. Er hat gesagt, daß du etwas hast, das ihm gehört."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48443 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #48440 /* ~Er kommt mit einem Sack Münzen und einem Paar brutal aussehender Handschuhe zurück. Er sieht sich nervös um und sagt: "Hier! Nimm! Und jetzt hau ab! Verschwinde von hier!"~ */
  IF ~~ THEN REPLY #48441 /* ~"Ich hätte da noch ein paar Fragen an dich..."~ */ GOTO 1
  IF ~~ THEN REPLY #48442 /* ~"Leb wohl."~ */ EXIT
END
