// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERTWYN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERTWYN~

IF ~  Global("Mertwyn","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2960 /* ~Es ist klar, daß mit diesem Mann etwas *überhaupt* nicht in Ordnung ist... so, wie er herumschlurft, in Gegenstände läuft und mit leerem Blick in die Gegend starrt. Als du dich ihm näherst, erkennst du endlich, was sein Problem ist - er hat keinen Kopf. Das Ding, das auf seinen Schultern sitzt, ist nichts als eine kunstvoll geschnitzte Holzprothese... ein falscher Kopf.~ */
  IF ~  !PartyHasItem("Mertwyn")
~ THEN REPLY #2961 /* ~"Sei gegrüßt...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
Global("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42316 /* ~"Sei gegrüßt...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
GlobalGT("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42317 /* ~"Das muß Mertwyns Leiche sein..."~ */ EXTERN ~DMHEAD~ 12
  IF ~~ THEN REPLY #42318 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 17.0 17.1
  SAY #42320 /* ~Die kopflose Gestalt hört einen Moment lang auf herumzufuchteln. Der Rumpf streckt die Hände aus, als wolle er deine genaue Position ertasten.~ */
  IF ~~ THEN REPLY #42321 /* ~Laß dich anfassen.~ */ GOTO 2
  IF ~~ THEN REPLY #42322 /* ~Pack seine Hand.~ */ GOTO 3
  IF ~~ THEN REPLY #42323 /* ~Weiche von ihm zurück.~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42324 /* ~Kurz darauf streift sein Finger deinen Unterarm. Dann umklammert er deinen Arm und fährt daran entlang bis zur Schulter und zum Kopf hoch. Beim Abtasten von Gesicht und Kopf streicht er mit den Händen über deinen Hals, als suche er etwas. Schließlich packt er deine Hand und schüttelt sie kräftig zum Gruß. Du bemerkst, daß seine Haut kalt und etwas feucht ist.~ */
  IF ~~ THEN REPLY #42325 /* ~"Kannst du mich verstehen?"~ */ GOTO 4
  IF ~~ THEN REPLY #42326 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #42327 /* ~Die kopflose Gestalt erschreckt plötzlich. Dann packt sie deine Hand und schüttelt sie kräftig... Der Rumpf scheint dir freundlich gesinnt zu sein. Sein Handschlag ist fest, doch seine Haut ist kalt und etwas feucht.~ */
  IF ~~ THEN REPLY #42328 /* ~"Wo ist dein Kopf? Verstehst du mich überhaupt?"~ */ GOTO 4
  IF ~~ THEN REPLY #42329 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #42330 /* ~Die Gestalt macht ein paar Handbewegungen. Sie erwartet eine Antwort auf die Frage, die sie offenbar gestellt hat.~ */
  IF ~~ THEN REPLY #42331 /* ~"Was? Ich versteh dich nicht..."~ */ GOTO 5
  IF ~~ THEN REPLY #42332 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42333 /* ~Der Rumpf klopft eine Weile mit dem Fuß auf den Boden und kratzt sich am Kinn seiner Kopfprothese. Plötzlich erhebt er den Finger, als hätte er einen Geistesblitz gehabt. Er zeigt zuerst auf dich, dann auf die Augen seines hölzernen Kopfes und schließlich wieder auf dich. Dann deutet er mit beiden Händen auf seinen Holzkopf, zuckt mit den Achseln und zeigt erneut auf dich.~ */
  IF ~~ THEN REPLY #42334 /* ~"Äh, nein... Ich habe deinen Kopf nirgends gesehen."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.2 5.0
  SAY #42335 /* ~Der Rumpf zuckt mit den Achseln, sinkt ein wenig in sich zusammen und schlendert fort.~ */
  IF ~~ THEN REPLY #42336 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #42337 /* ~Der Rumpf schlurft auf dich zu und streckt die Hand nach dem Stahlkasten aus, der Mertwyns Kopf enthält.~ */
  IF ~~ THEN REPLY #42338 /* ~Laß Mertwyns Rumpf seinen Kopf nehmen.~ */ DO ~AddexperienceParty(8000)
SetGlobal("Mertwyn","GLOBAL",2)
DestroyPartyItem("Mertwyn",FALSE)
GivePartyGold(200)
~ JOURNAL #56738 /* ~Ich habe Mertwyns Kopf wieder mit seinem Körper vereint. Die beiden schienen ziemlich froh, einander wiederzusehen.~ */ GOTO 8
  IF ~~ THEN REPLY #42339 /* ~Halte den Kopf vom Rumpf entfernt.~ */ EXTERN ~DMHEAD~ 13
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #42340 /* ~"Ah, das ist viel besser. Danke! Ich nehme an, mein Rumpf wurde ohne mich schon langsam ein bißchen ungeduldig." Der Rumpf drückt den Stahlkasten fest an sich. "Ja, ich habe dich auch vermißt..." Der Rumpf klemmt sich den Kasten unter den Arm und verbeugt sich vor dir. "Was dich betrifft, so sollst du für deine Bemühungen *irgendwie* belohnt werden. Sehn wir mal, was wir da haben..." Der Rumpf kramt zuerst in verschiedenen Taschen, in denen er aber nichts findet, und dann in seiner Tunika. Schließlich streckt er dir eine ansehnliche Menge Kupfermünzen hin.~ */
  IF ~~ THEN REPLY #42341 /* ~"Danke, Mertwyn. Ich hätte da ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #42342 /* ~"Danke, Mertwyn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.1 11.0 12.1 13.0 14.2 15.1 16.0 18.0
  SAY #42343 /* ~"Aber sicher, frag ruhig!"~ */
  IF ~~ THEN REPLY #42344 /* ~"Wie kommt's, daß du so zugerichtet bist?"~ */ GOTO 10
  IF ~~ THEN REPLY #42345 /* ~"Was machst du hier?"~ */ GOTO 12
  IF ~~ THEN REPLY #42346 /* ~"Kannst du mir etwas über diesen Ort erzählen?"~ */ GOTO 14
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42347 /* ~"Was weißt du über Ravel Rätselschön?"~ */ GOTO 16
  IF ~~ THEN REPLY #42348 /* ~"Ach, schon gut, Mertwyn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #42349 /* ~"Wenn ich das wüßte... Mein Rumpf hat mich in einer der Vorlesungshallen abgesetzt. Ich weiß nur noch, daß sich dann irgend jemand mit mir davonmachte! Das nächste, woran ich mich erinnere, ist, daß du mich aufgehoben hast..."~ */
  IF ~~ THEN REPLY #42350 /* ~"Schon, aber ich würd gern wissen, wie du deinen *Kopf* verloren hast."~ */ GOTO 11
  IF ~~ THEN REPLY #42351 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #42352 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #42353 /* ~Der Rumpf erstarrt sichtlich. "Oh, darüber sprechen wir nicht so gerne. Das war eine ziemlich schreckliche Geschichte, aber was vorbei ist, ist vorbei, Schwamm drüber. Soviel kann ich jedoch sagen: Ich bin in diesem Kasten, weil mein Kopf längst nicht so vorzeigbar ist wie mein Rumpf, wenn du verstehst, was ich meine."~ */
  IF ~~ THEN REPLY #42354 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #42355 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #42356 /* ~"Ich schlendere meistens um die Festhalle herum, mal hier, mal dort. Ich bin aber kein Sinnsate, sondern habe einfach meine Freude daran, die vielen Leute zu beobachten, die hier so durch die Gegend laufen."~ */
  IF ~~ THEN REPLY #42357 /* ~"Ein Sinnsate?"~ */ GOTO 13
  IF ~~ THEN REPLY #42358 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #42359 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.1 15.0
  SAY #42360 /* ~Der Rumpf rüttelt sanft an dem Stahlkasten, um den Kopf darin zum 'Nicken' zu bringen. "Ja... die Gesellschaft der Empfindung. Das sind die Leute, die ständig auf Achse sind und versuchen, im wahrsten Sinne des Wortes alles Mögliche zu erleben. Sie glauben, irgendwann auf ein großes Dunkel des Multiversums zu stoßen, wenn sie nur lange genug durchhalten." Der Rumpf zuckt mit den Achseln.~ */
  IF ~~ THEN REPLY #42361 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #42362 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2
  SAY #42363 /* ~Mertwyn klingt verwirrt. "Es gibt Leute, die die Städtische Festhalle nicht kennen? Hm... Sie ist das Quartier des Bundes der Sinnsaten und, was noch wichtiger ist, darin befinden sich ihre Sinnsorien."~ */
  IF ~~ THEN REPLY #42364 /* ~"Erzähl mir von diesen Sinnsorien..."~ */ GOTO 15
  IF ~~ THEN REPLY #42365 /* ~"Sinnsaten?"~ */ GOTO 13
  IF ~~ THEN REPLY #42366 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #42367 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #42368 /* ~"Der Türsteher hier kann dir das sicher besser erklären als ich... Jedenfalls handelt es sich um Räume, die zahlreiche verzauberte Steine enthalten, in denen verschiedene Erfahrungen und Empfindungen gespeichert sind. Die öffentlichen Sinnsorien sind allgemein zugänglich, kosten jedoch Eintritt. Die privaten Sinnsorien dagegen sind ausschließlich den Mitgliedern der Gesellschaft der Empfindung, den Sinnsaten, vorbehalten."~ */
  IF ~~ THEN REPLY #42369 /* ~"Sinnsaten?"~ */ GOTO 13
  IF ~~ THEN REPLY #42370 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #42371 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.3
  SAY #42372 /* ~"Ravel? Nicht, daß ich mich an sie erinnern würde..."~ */
  IF ~~ THEN REPLY #42373 /* ~"Dann hätte ich da noch eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #42374 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN BEGIN 17 // from:
  SAY #42375 /* ~Der kopflose Mann stolpert noch immer durch die Gegend und knallt gegen alle Wände, Pfeiler und ähnliche Dinge, die ihm in die Quere kommen. Dabei droht sich sein falscher Holzkopf ständig zu lösen und zu Boden zu fallen.~ */
  IF ~  !PartyHasItem("Mertwyn")
~ THEN REPLY #42376 /* ~"Sei gegrüßt...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
Global("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42377 /* ~"Sei gegrüßt...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
GlobalGT("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42378 /* ~"Das muß Mertwyns Leiche sein..."~ */ EXTERN ~DMHEAD~ 12
  IF ~~ THEN REPLY #42379 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~  Global("Mertwyn","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #42381 /* ~Mertwyns Rumpf steht da und trommelt mit den Fingern lässig gegen den Stahlkasten, in dem sich sein Kopf befindet. Er neigt den Kasten in deine Richtung, als du näherkommst. "Hallo! So sieht man sich wieder!"~ */
  IF ~~ THEN REPLY #42382 /* ~"Sei gegrüßt. Ich hätte ein paar Fragen, Mertwyn..."~ */ GOTO 9
  IF ~~ THEN REPLY #42383 /* ~"Bin nur zufällig vorbeigekommen, Mertwyn. Leb wohl."~ */ EXIT
END
