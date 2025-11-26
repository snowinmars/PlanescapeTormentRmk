// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH2~

IF ~  NumTimesTalkedTo(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #44366 /* ~Du siehst einen dünnen, verstohlenen Mann. Seine langen, flinken Finger zittern leicht. Es fällt ihm schwer, dir in die Augen zu sehen, als er mit dir spricht. "Du hast mich erschreckt! Ich... ich habe dich hier noch nie gesehen, Fremder. Was... was willst du von mir?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44370 /* ~"Ein Freund hat mir erzählt, daß es hier eine Anarchisten-Zelle gibt. Das Erkennungswort lautet 'Eklipse'." ~ */ GOTO 1
  IF ~~ THEN REPLY #44371 /* ~"Wer bist du?"~ */ GOTO 8
  IF ~~ THEN REPLY #44373 /* ~"Was ist das für ein Ort?"~ */ GOTO 9
  IF ~~ THEN REPLY #44374 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.1 9.0 10.0
  SAY #44376 /* ~Der bisher so konfuse Mann wird plötzlich ganz sachlich. "Aha. Hat er dir auch den geheimen Händedruck gegeben? Und deinen magischen kryptographischen Ring? Kennst du die geheime Hymne der Zelle? Weißt du von alledem überhaupt etwas?" Er mustert dich kurz von Kopf bis Fuß und sagt: "Offensichtlich nicht. Wie wär's, wenn ich dich nächstes Mal nach dem Erkennungswort fragen würde?" Er seufzt. "Was willst du?"~ */
  IF ~~ THEN REPLY #44377 /* ~"Ich brauch noch ein paar Sachen von hier."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44379 /* ~"Ich brauche ein Versteck."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44381 /* ~"Ich muß dich was über eure Zelle hier fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #44382 /* ~"Was wollt ihr erreichen?"~ */ GOTO 4
  IF ~~ THEN REPLY #44383 /* ~"Weshalb bist du ein Anarchist?"~ */ GOTO 5
  IF ~~ THEN REPLY #44384 /* ~"Ach, gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #44386 /* ~"Ich hoffe, das ist in Ordnung."~ */
  IF ~~ THEN REPLY #44387 /* ~"Ja, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 4.2 11.2
  SAY #44389 /* ~"Weißt du, was die erste Regel eines geheimen Revolutionärs ist?" Er wartet gerade so lange, bis du antworten willst. Dann sagt er: "Die *Geheimhaltung*. Ich sage keine Geheimnisse weiter, Kamerad, egal *wer* dich angeblich geschickt hat. So, nachdem wir das geklärt haben: Was willst du sonst noch?"~ */
  IF ~~ THEN REPLY #44395 /* ~"Ich brauch noch ein paar Sachen von hier."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44396 /* ~"Ich brauche ein Versteck."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44397 /* ~"Was wollt ihr erreichen?"~ */ GOTO 4
  IF ~~ THEN REPLY #44399 /* ~"Weshalb bist du ein Anarchist?"~ */ GOTO 5
  IF ~~ THEN REPLY #44400 /* ~"Ach, gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 3.2 11.3
  SAY #44403 /* ~"Unsere Mission ist geheim. Sonst hätten wir ja keinen Anlaß, im Untergrund zu arbeiten. Findest du nicht? Du wirst es wissen, wenn du es siehst, aber eine ganze Zeit lang wirst du nichts sehen. Wir planen sehr *vorsichtig*, wenn du verstehst, was ich meine. Aber was willst du eigentlich?"~ */
  IF ~~ THEN REPLY #44409 /* ~"Ich brauch noch ein paar Sachen von hier."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44411 /* ~"Ich brauche ein Versteck."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44412 /* ~"Ich muß dich was über eure Zelle hier fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #44414 /* ~"Weshalb bist du ein Anarchist?"~ */ GOTO 5
  IF ~~ THEN REPLY #44415 /* ~"Ach, gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.4 3.3 4.3 11.4
  SAY #44418 /* ~"Sieh dich doch um, Dussel. Siehst du dort jemanden, der frei ist? Oder jemanden, der gerade keinen Stiefelabsatz aufs Gesicht gedrückt bekommt? Sogar die Leute, die sich für wichtig halten, werden herumkommandiert. Jemand muß dieses System zerstören."~ */
  IF ~~ THEN REPLY #44420 /* ~"Und was soll danach kommen?"~ */ GOTO 6
  IF ~~ THEN REPLY #44421 /* ~"Hört sich nicht unvernünftig an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #44423 /* ~"Das kann ich doch nicht entscheiden, Dussel. Ich bin nur fürs Zerstören zuständig: Ich zerstöre, damit andere etwas Neues schaffen können. So hat jeder sein Spezialgebiet. Aber ich bin optimistisch - ich glaube, daß die Leute etwas Gutes schaffen werden. Doch bevor sie das tun können, muß ich erst mal alles kaputtmachen."~ */
  IF ~~ THEN REPLY #44424 /* ~"Und wer entscheidet, was gut ist? Was ist das Besondere an dir?"~ */ GOTO 7
  IF ~~ THEN REPLY #44426 /* ~"So so. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #44427 /* ~"Das Besondere an mir ist, daß ich nicht einfach tatenlos zusehe. Ich kann bestimmen, was gut und schlecht ist, weil ich für Gleichbehandlung kämpfe. Und erst, wenn ich sehe, daß gemeine Stockbewohner wie Fürsten behandelt werden, werde ich damit aufhören."~ */
  IF ~~ THEN REPLY #44428 /* ~"OK. Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1 9.1 10.1
  SAY #44429 /* ~"Ich bin Conall. Ich arbeite hier."~ */
  IF ~~ THEN REPLY #44430 /* ~"Und wo sind wie hier?"~ */ GOTO 9
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44431 /* ~"Ein Freund hat mir erzählt, daß es hier eine Anarchisten-Zelle gibt. Das Erkennungswort lautet 'Eklipse'." ~ */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 0.2 8.0 10.2
  SAY #44433 /* ~Er schaut dich prüfend an um zu sehen, ob du Scherze machst. "Es ist das Gewölbe der Neunten Welt. Ein Lager. Hast du das Schild am Eingang nicht gelesen?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44435 /* ~"Ein Freund hat mir erzählt, daß es hier eine Anarchisten-Zelle gibt. Das Erkennungswort lautet 'Eklipse'." ~ */ GOTO 1
  IF ~~ THEN REPLY #44436 /* ~"Nicht gründlich genug. Wer bist du?"~ */ GOTO 8
  IF ~~ THEN REPLY #44438 /* ~"Danke für die Antwort. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #44440 /* ~"Du schon wieder? Wenn du hier was willst, dann melde dich am Eingang an."~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44442 /* ~"Ein Freund hat mir erzählt, daß es hier eine Anarchisten-Zelle gibt. Das Erkennungswort lautet 'Eklipse'." ~ */ GOTO 1
  IF ~~ THEN REPLY #44443 /* ~"Wer bist du?"~ */ GOTO 8
  IF ~~ THEN REPLY #44444 /* ~"Was ist das für ein Ort?"~ */ GOTO 9
  IF ~~ THEN REPLY #44446 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #44448 /* ~"Du schon wieder? Bist du in Schwierigkeiten? Brauchst du was?"~ */
  IF ~~ THEN REPLY #44449 /* ~"Ich brauch noch ein paar Sachen von hier."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44451 /* ~"Ich brauche ein Versteck."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44452 /* ~"Ich muß dich was über eure Zelle hier fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #44453 /* ~"Was wollt ihr erreichen?"~ */ GOTO 4
  IF ~~ THEN REPLY #44454 /* ~"Weshalb bist du ein Anarchist?"~ */ GOTO 5
  IF ~~ THEN REPLY #44456 /* ~"Ach, gar nichts. Leb wohl."~ */ EXIT
END
