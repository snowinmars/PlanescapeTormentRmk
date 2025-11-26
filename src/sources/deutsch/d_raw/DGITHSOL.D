// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITHSOL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITHSOL~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 0 // from:
  SAY #2917 /* ~Dieser Mann hat eine blaßgelbe Haut und Ohren, die spitz zulaufen. Seine Augen sind wie kleine, schwarze Steine, und er trägt eine geschmeidige Kettenrüstung, die aufwendig emailliert ist. Er sieht dich mißtrauisch an, als du näherkommst, und legt seine Hände auf seinen Schwertgriff. Er sagt nichts.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #2918 /* ~"Sei gegrüßt, Schwertkämpfer."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 2
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44575 /* ~"Sei gegrüßt, verehrter Githyanki."~ */ GOTO 3
  IF ~~ THEN REPLY #44576 /* ~"Ich würde dir gern ein paar Fragen stellen..."~ */ GOTO 5
  IF ~~ THEN REPLY #44578 /* ~"Verzeihung, ich hab dich mit jemandem verwechselt. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #44581 /* ~"Ich spreche mit keinem, der nicht zu unserem Volk gehört. Wende dich an Yi'minn, wenn du mit uns reden willst." Er fixiert dich.~ */
  IF ~~ THEN REPLY #44582 /* ~"Ich hatte nur ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #44584 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #44585 /* ~Blitzschnell greift er nach seinem Schwert. "Du sprichst mit mir wie mit diesen Githzerai-Hunden? Entweder du entschuldigst dich, oder ich spieß dich auf."~ */
  IF ~~ THEN REPLY #44587 /* ~"Ich soll mich entschuldigen? Bei dir? Kommt nicht in Frage."~ */ GOTO 4
  IF ~~ THEN REPLY #44589 /* ~"Ich entschuldige mich. Ich dachte, du wärst ein Githzerai."~ */ GOTO 4
  IF ~~ THEN REPLY #44591 /* ~"Ich entschuldige mich."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #44592 /* ~Er neigt seinen Kopf, ohne seine Hand vom Griff seines Schwerts zu nehmen.~ */
  IF ~~ THEN REPLY #44593 /* ~"Ich hätte ein paar Fragen an dich..."~ */ GOTO 5
  IF ~~ THEN REPLY #44595 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 2.1 5.1 6.0
  SAY #44597 /* ~Nachdem er zischend Luft geholt hat, greift er an!~ */
  IF ~~ THEN REPLY #44599 /* ~Kämpfe.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44600 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.0 3.0
  SAY #44602 /* ~"Ich beantworte keine Fragen. Ich bin ein githyankischer Ritter. Meine Worte sind meine Taten. Entweder du wendest dich an Yi'minn, oder du sprichst mit keinem Githyanki."~ */
  IF ~~ THEN REPLY #44604 /* ~"Mit Yi'minn? Gut. Wo finde ich ihn?"~ */ GOTO 7
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44678 /* ~"Du bist also ein Githyanki? Dem Gestank nach hätte ich dich für einen Illithiden gehalten. Vielleicht liegt es ja an deinem schwachen Blut."~ */ GOTO 4
  IF ~~ THEN REPLY #44679 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #44680 /* ~"Stell meine Geduld nicht länger auf die Probe. Verschwinde. Sofort."~ */
  IF ~~ THEN REPLY #44681 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #44682 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #44683 /* ~Er schaut dich ruhig an. "Such ihn doch selber. Geh und hör auf, meine Geduld noch weiter zu strapazieren."~ */
  IF ~~ THEN REPLY #44684 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
~ THEN BEGIN 8 // from:
  SAY #44685 /* ~Dieser Mann hat eine blaßgelbe Haut und spitz zulaufende Ohren. Seine Augen sehen aus wie kleine schwarze Steine. Sein geschmeidiger Kettenpanzer ist aufwendig emailliert. Als er Dak'kon erblickt, greift er sofort nach seiner Klinge. "Githzerai-Hund! Komm her - ich zeig dir, wie mein Silber schmeckt!"~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DDAKKON~ 159
END

IF ~~ THEN BEGIN 9 // from:
  SAY #44686 /* ~"Du wagst es, dich zwischen uns zu stellen, Mensch? Das ist dein Todesurteil." Er stürzt sich auf dich.~ */
  IF ~~ THEN REPLY #44687 /* ~Kämpfe.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44688 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #44689 /* ~Die beiden Gith stürzen aufeinander los.~ */
  IF ~~ THEN REPLY #44690 /* ~Greif den Githyanki an.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44691 /* ~Laß sie kämpfen.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END
