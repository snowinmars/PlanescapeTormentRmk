// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBRASKEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBRASKEN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 2 3 14 7 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45442 /* ~Mit lauter, dröhnender Stimme fragt Brasken: "Was im Namen des Abgrunds suchst du in meinem Haus?! Hau ab, bevor ich dich noch mehr verunstalte als du schon bist."~ */
  IF ~  Global("FedEx","Global",2)
PartyHasItem("DBox")
~ THEN REPLY #45443 /* ~"Ich soll dir dieses Kästchen anvertrauen."~ */ GOTO 8
  IF ~~ THEN REPLY #45445 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 2 3 14 7 5 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45446 /* ~"Was?! Du schon wieder! Verlaß sofort mein Haus - es sei denn, du willst mit mir ins Geschäft kommen."~ */
  IF ~  Global("FedEx","Global",2)
PartyHasItem("DBox")
~ THEN REPLY #45447 /* ~"Ich soll dir dieses Kästchen anvertrauen."~ */ GOTO 8
  IF ~~ THEN REPLY #45448 /* ~"Tschuldigung. Falsche Adresse. Bin schon weg."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 14 7 5 even though they appear after this state */
~  GlobalGT("FedEx","Global",2)
~ THEN BEGIN 2 // from:
  SAY #45449 /* ~"Hau ab, du Idiot! Ich hab dir schon alles gesagt, was ich über Moridors Kästchen weiß."~ */
  IF ~~ THEN REPLY #45450 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 7 5 even though they appear after this state */
~  GlobalGT("Demonbox","Global",2)
~ THEN BEGIN 3 // from:
  SAY #45451 /* ~"Im Stock geht das Gerücht um, irgendein Schleifer hätte den Dämonen in Moridors Kästchen getötet, und dieser Kampf hätte schreckliche Narben auf seinem ganzen Körper hinterlassen. Das warst nicht zufällig du?"~ */
  IF ~~ THEN REPLY #45452 /* ~"Natürlich bin ich das. Was hast du denn gedacht?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45453 /* ~Er lacht laut dröhnend. "Nicht nur mutig, sondern auch noch dreist! Das gefällt mir. Du wirst zur Legende, wenn sich deine Heldentaten herumsprechen. Ich würde gerne zu den ersten Gratulanten gehören. Komm... gehn wir einen trinken, dann kannst du mir von deinem Mut erzählen."~ */
  IF ~~ THEN REPLY #45454 /* ~"Die Einladung nehm ich gerne an."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(1)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45455 /* ~"Vielleicht ein andermal. Ich hab viel zu tun. Leb wohl."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Drunk","Global",1)
~ THEN BEGIN 5 // from:
  SAY #45456 /* ~"Der große Schleifer ist zurückgekehrt. Du hast wohl nochmal über meine Einladung nachgedacht? Ich würde sehr gern von deinen Heldentaten hören."~ */
  IF ~~ THEN REPLY #45457 /* ~"Die Einladung nehm ich gerne an."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(1)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45458 /* ~"Vielleicht ein andermal. Ich hab viel zu tun. Leb wohl."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0 14.0
  SAY #45459 /* ~Nach ein paar Humpen Bier, ein paar Trinkliedern und faulen Witzen hast du Brasken richtig ins Herz geschlossen. Aber im Moment könntest du sowieso die ganze Welt umarmen. Bald fällt Brasken betrunken zu Boden, und du weißt, daß es Zeit zum Gehen ist. ~ */
  IF ~~ THEN REPLY #45460 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Drunk","Global",2)
~ THEN BEGIN 7 // from:
  SAY #45461 /* ~"Mann, brummt mir den Schädel! Wenn das mal wieder wird!"~ */
  IF ~~ THEN REPLY #45462 /* ~Laß Brasken allein mit seinem Elend.~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 1.0
  SAY #45463 /* ~"Sag das doch gleich. Los, gib's her und geh." Als du Brasken das Kästchen überreichst, macht er zuerst eine gespannte, dann eine amüsierte Miene. "Ha! Auf den ollen Trick fall ich doch kein zweites Mal rein. Pack das Ding ein und verschwinde." ~ */
  IF ~~ THEN REPLY #45464 /* ~"Ich versteh nicht, weshalb keiner das Kästchen haben will. Zuerst Ku'atraa und jetzt du."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45465 /* ~"Sagtest du eben Ku'atraa?" Brasken lacht lauthals. "Mann, das ist doch der Typ, der mir das Kästchen abgekauft hat. Er dachte, er hätte ein gutes Geschäft mit mir gemacht. Hat wahrscheinlich geglaubt, der Edelstein allein sei mehr wert als die Summe, die er mir bezahlt hat. Als der arme Kerl gemerkt hat, auf was er sich da eingelassen hat, war es zu spät."~ */
  IF ~~ THEN REPLY #45466 /* ~"Was ist denn so schrecklich an diesem Kästchen?"~ */ GOTO 10
  IF ~~ THEN REPLY #46623 /* ~"Das interessiert mich alles nicht die Bohne. Ich will nur wissen, wie ich es loswerde."~ */ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #45467 /* ~"Willst du damit sagen, du weißt gar nicht, was du da in den Händen hältst? Dann kann es ja nicht schaden, wenn ich dich aufkläre. Damit du's gleich weißt: Der Fluch, der auf diesem Kästchen liegt, betrifft nur seinen gegenwärtigen Besitzer. Und der Besitzer des Kästchen kann nur jemand sein, der bereitwillig von ihm Besitz ergriffen hat."~ */
  IF ~~ THEN REPLY #45468 /* ~"Dann kann ich sie wohl nicht einfach abstellen und hoffen, daß sie jemand findet... Was ist da überhaupt drin?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #45469 /* ~"Gute Frage. Das Ding geht schon durch den Stock, so lang ich denken kann. Viele Sagen ranken sich darum. Und wie du dir unschwer denken kannst, entfernen sich die Geschichten bei jedem Erzählen ein Stück weiter von der Wahrheit."~ */
  IF ~~ THEN REPLY #45470 /* ~"Erzähl weiter."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45471 /* ~"Ich habe schon viele Geschichten über das Kästchen gehört, aber alle scheinen ein gemeinsames Motiv zu haben: Das olle Ding heißt 'Moridors Kästchen', und sein Besitzer stirbt angeblich, wenn er selbst oder jemand anderes es öffnet. Was den Inhalt anbelangt, so vermuten manche einen alten Drachen, andere die böse Seele von Moridor selbst darin. Sicher bin ich mir nicht, aber man sieht dem Ding doch auf den ersten Blick an, daß es böse ist. Nur ein Verrückter würde es öffnen."~ */
  IF ~~ THEN REPLY #45472 /* ~"Und was soll ich damit tun?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 9.1 12.0
  SAY #45473 /* ~"Dann such doch mal Shilandra. Sie lebt im Nordosten des Stocks. Es ist ihre Schuld, daß ich dieses Kästchen 'gewonnen' habe. Wer weiß, vielleicht weiß sie ja mehr als ich. Oder versuch, es einen andern ahnungslosen Dussel unterzujubeln. Es ist deine Sache. Ich jedenfalls wünsch dir alles Gute."~ */
  IF ~~ THEN REPLY #45474 /* ~"Leb wohl."~ */ DO ~SetGlobal("FedEx","Global",3)
SetGlobal("Beta","Global",2)
SetGlobal("Delta","Global",1)
AddexperienceParty(250)
~ JOURNAL #60387 /* ~Ich habe viel aus meinen Gesprächen mit Brasken gelernt. Es scheint, als sei ich der unglückliche Besitzer eines verfluchten Kästchens. Als ob ich nicht schon genug Ärger am Hals hätte. Der verhaßte Gegenstand hat nun auch einen Namen. Man nennt ihn Moridors Kästchen. Es scheint, daß die Person, die das Kästchen wissentlich in Besitz nimmt, dazu verflucht ist zu sterben, sollte das Kästchen jemals geöffnet werden. Sein Inhalt ist mir allerdings noch immer ein Rätsel. Brasken hat vorgeschlagen, daß ich Shilandra besuche. Sie wohnt in der Nähe der Leichenhalle im nordöstlichen Teil des Stocks. Bin ich etwa dazu verflucht, auf immer und ewig die Vorbesitzer dieses Dings zu suchen?~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 14 // from:
  SAY #45475 /* ~"Es hat sich schon herumgesprochen! Du hast den Fluch von Moridors Kästchen gebrochen - Glückwunsch! Ehrlich gesagt fällt es mir schwer zu glauben, daß ein so unansehnlicher Dussel wie du das vollbracht haben soll. Du bist echt häßlicher als ein Baku-Hintern... Aber: alle Achtung vor deiner Tat. Komm, gehn wir einen trinken, dann kannst du mir mehr erzählen."~ */
  IF ~~ THEN REPLY #45476 /* ~"Die Einladung nehm ich gerne an."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(3)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45477 /* ~"Vielleicht ein andermal. Ich hab viel zu tun. Leb wohl."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END
