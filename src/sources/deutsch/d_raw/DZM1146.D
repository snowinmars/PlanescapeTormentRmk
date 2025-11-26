// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1146.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1146~

IF ~  Global("Crispy","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #6518 /* ~Die Nummer "1146" ist in die Stirn dieser wandelnden Leiche geritzt, und ihre Lippen sind mit grobem, schwarzem Zwirn zugenäht. Der gesamte Körper ist mit schrecklichen Narben übersät - schlimmer noch als deine eigenen - so als ob sein Besitzer verbrannt wäre. Nase, Ohren und mehrere Finger sowie Zehen fehlen, wahrscheinlich sind sie in einer verheerenden Feuersbrunst verbrannt. Als du der Leiche den Weg versperrst, um ihre 'Aufmerksamkeit' zu erregen, bleibt sie stehen und starrt dich mit leeren Augen an.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6521 /* ~"Na... gibt's hier irgendwas Interessantes zu berichten?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6522 /* ~"Na... irgendwas Interessantes passiert?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6523 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6524 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ DO ~SetGlobal("Crispy","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #6525 /* ~"Es war nett, sich mit dir zu unterhalten. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #6526 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6519 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~~ THEN REPLY #6527 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6520 /* ~Der Geruch von rauchendem Schwefel, versengtem Haar und verbranntem Blut schlägt dir entgegen, als der Geist in seine frühere menschliche Hülle zurückkehrt. Die Leiche bricht plötzlich zusammen, zuckt heftig und verkrampft, während sie jämmerlich stöhnt. Du kannst fast sehen, wie kleine, übelriechende Rauchwolken aus ihrem Körper und den Gliedmaßen herausquellen.~ */
  IF ~~ THEN REPLY #6528 /* ~"Bist du... OK?"~ */ GOTO 3
  IF ~~ THEN REPLY #9413 /* ~"Ich hätte da 'n paar Fragen an dich..."~ */ GOTO 9
  IF ~~ THEN REPLY #9414 /* ~Laß den brennenden Geist in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9398 /* ~Der Geist öffnet ein Auge. Der weiße Augapfel hebt sich deutlich von der grauen Farbe seines runzligen Gesichts ab. Langsam dreht er den Kopf, bis er zu dir aufblicken kann; seine unregelmäßige, narbige Haut spannt sich über die Knochen seines Gesichts und seines Genicks. Dann krächzt er: "Nein. Nein... überhaupt nicht, du... verdammter... Hohlkopf."~ */
  IF ~~ THEN REPLY #9415 /* ~"Kann ich dir irgendwie helfen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Crispy_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #9416 /* ~"Ich hätte eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #9417 /* ~"Auch gut, du stinkende, schwelende Heiserkeit. Du hast dies Schicksal gewiß verdient. Leb wohl."~ */ GOTO 6
  IF ~~ THEN REPLY #9418 /* ~Verlaß den gequälten Geist.
~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #9399 /* ~"Ha, ha, HA!" Der Geist fängt an zu lachen, doch dann wird er plötzlich von einem Hustenanfall geschüttelt und speit einen Schwall Balsamierungsöl und schwarzen Schmodder aus. Er hustet und röchelt schmerzerfüllt und hält nur manchmal inne, um durch seine ausgefransten Lippen eine gelbliche Flüssigkeit und die Fäden seiner geplatzten Nähte auszuspucken.~ */
  IF ~~ THEN REPLY #9419 /* ~Warte geduldig bis der Anfall vorüber ist.~ */ GOTO 5
  IF ~~ THEN REPLY #9421 /* ~"Ich hätte noch eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #9422 /* ~Überlaß den gequälten Geist seinen Leiden.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #9400 /* ~Der schreckliche Hustenanfall läßt langsam nach. "Nein, Dussel... das geht... nicht. Ich bin am... am Ende... es sei denn... es sei denn, du gehst nach Baator und rettest mich. Zeit für... für meine Buße." Der Geist schließt sein Auge wieder und läßt seinen Kopf auf den Boden sinken.~ */
  IF ~~ THEN REPLY #9423 /* ~"Ich verstehe. Ich hätte noch eine andere Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #9424 /* ~"Also gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 17.0
  SAY #9401 /* ~Der Geist gibt ein röchelndes Geräusch von sich. Dabei geben die schwarzen, rissigen Lippen den Blick auf seine schiefen, gelben Zähne frei. "Warte... warte nur, bis ich... aus diesem Loch rauskomme... Dann bist du als erster dran... Dussel..."~ */
  IF ~~ THEN REPLY #9425 /* ~"Wie du meinst. Ich fürchte mich nicht vor deinesgleichen."~ */ GOTO 7
  IF ~~ THEN REPLY #9426 /* ~Schlag ihn.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Crispy_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Crispy_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~~ THEN REPLY #9427 /* ~Ignoriere den armen Tropf, dreh dich weg und geh.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9402 /* ~Der Geist gibt ein schwaches, kehliges Knurren von sich und spuckt dich an - das faulige Zeug landet nur wenige Zentimeter vor deinen Füßen. Erschöpft sinkt er wieder zu Boden, und das Leben beginnt erneut aus seinem Körper zu weichen.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #9403 /* ~Du versetzt der Leiche einen kurzen Tritt in die Nieren, jedoch ohne Erfolg; der Geist darin scheint unversehrt zu bleiben. "Hi, hi, hi," gluckst der Geist, bevor er endgültig aus dem Körper weicht. Du bleibst mit einem vagen Gefühl der Enttäuschung zurück.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.1 4.1 5.0 10.0 11.0 12.1 13.1 14.1 15.0 16.0 17.1 18.1 19.0 20.0
  SAY #9404 /* ~"Was... was könntest du *denn* jetzt noch von mir wollen, Dussel?" Der Geist windet sich noch gelegentlich und klopft sich ab, als versuche er, mehrere kleine Flammen auf seinem Körper zu löschen.~ */
  IF ~~ THEN REPLY #9428 /* ~"Wer bist du?"~ */ GOTO 10
  IF ~~ THEN REPLY #9429 /* ~"Wo kommst du her?"~ */ GOTO 11
  IF ~~ THEN REPLY #9430 /* ~"Wie bist du denn hier gelandet? Als Zombie, meine ich?"~ */ GOTO 12
  IF ~~ THEN REPLY #9431 /* ~"Wo bist du... wo wohnt dein Geist... jetzt?"~ */ GOTO 13
  IF ~~ THEN REPLY #9432 /* ~"Was hast du getan, um solche Qualen zu verdienen?"~ */ GOTO 14
  IF ~~ THEN REPLY #9433 /* ~"Was weißt du über diesen Ort?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9434 /* ~"Kennst du jemanden mit dem Namen Pharod?"~ */ GOTO 16
  IF ~~ THEN REPLY #9435 /* ~"Ach nichts, ist schon gut."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #9405 /* ~"Geht dich nichts an... laß mich... in Ruhe..."~ */
  IF ~~ THEN REPLY #9436 /* ~"Nein. Ich hätte da noch eine andere Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #9437 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #9406 /* ~"Was? Im Namen der Mächte, wen... interessiert's? Aus Sigil, du... du Nervtöter."~ */
  IF ~~ THEN REPLY #9438 /* ~"Ich hätte noch eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #9439 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #9407 /* ~"Was denkst du denn, Planloser?" Dieser Gefühlsausbruch beschert dem Geist einen kurzen, schmerzhaften Hustenanfall. "Ich hab' mein Fleisch und Blut... für etwas Klimper verkauft. An diese verdammten Staubies... und genau dann - wirklich GENAU DANN - hat irgendein bekloppter Magier beschlossen, den Stock abzufackeln, mit mir mittendrin!" Der Geist grummelt böse, und aus den Winkeln seines ausgefransten Mundes quillt eine dampfende Flüssigkeit hervor.~ */
  IF ~~ THEN REPLY #9440 /* ~"Ein Zauberer hat den Stock niedergebrannt?"~ */ GOTO 18
  IF ~~ THEN REPLY #9441 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #9465 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #9408 /* ~"Was glaubst du denn... du stumpfsinniger Knochenbrecher? In Baator, in diesem stinkenden Dreckloch namens Phlegethos. Brennen, brennen... brennen... das ist alles, was ich tue. Ich starb, indem ich verbrannte, und im Tod brenne ich weiter. Arrr!" Die Leiche knirrscht wütend mit den Zähnen. "Diese Ironie macht mich krank! Sobald ich hier raus bin, schmeiß ich die ganzen Schlucker in dieses verdammte Loch. He, he, he... *schluck*"~ */
  IF ~~ THEN REPLY #9442 /* ~"Warum solltest du dein Schicksal anderen an den Hals wünschen?"~ */ GOTO 17
  IF ~~ THEN REPLY #9443 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #9444 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.4
  SAY #9409 /* ~"Verdienen? DAS? Nichts! Ich... *schluck*... habe nichts getan. Ich hab' doch nur versucht, über die Runden zu kommen... wie alle anderen auch... und dann - 'wwwum!' - hat dieser verfluchte Magier plötzlich den Stock abgefackelt!"~ */
  IF ~~ THEN REPLY #9445 /* ~"Ein Magier... hat den Stock... abgefackelt?"~ */ GOTO 18
  IF ~~ THEN REPLY #9446 /* ~"Ich verstehe. Ich hätte noch eine andere Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #9745 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY #9410 /* ~"Nichts. Nichts. Hab' ich *dir* doch schon gesagt, Dussel. Laß... laß mich einfach nur in Ruhe brennen..."~ */
  IF ~~ THEN REPLY #9447 /* ~"Also schön. Ich hätte dann noch eine andere Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #9448 /* ~"Auf bald, dann."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.6
  SAY #9411 /* ~"Wen? Was? Nein! Und wenn doch ... warum sollte ich es dir sagen, du... du jämmerlicher Dussel? Hmpf..."~ */
  IF ~~ THEN REPLY #9449 /* ~"Na schön. Ich hätte da noch eine Frage..."~ */ GOTO 9
  IF ~~ THEN REPLY #9450 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0
  SAY #9412 /* ~"Aus Rache, du Hohlkopf! Ich krieg sie alle noch... alle, die mir untergekommen sind. Besonders diesen Zauberer! Ich reiß ihm die Eier ab und stopf sie ihm in den Hals, wenn ich ihn finde! Und dann werf' ich ihn in dieses stinkende Loch! Ihn und ein paar andere auch... damit sich's auch richtig lohnt! He, he, he..."~ */
  IF ~~ THEN REPLY #9420 /* ~"Du bist ein verderbter, engstirniger Winzling. Du hast dein Schicksal bestimmt wohlverdient."~ */ GOTO 6
  IF ~~ THEN REPLY #9451 /* ~"Ich verstehe. Ich hätte da noch ein paar Fragen an dich..."~ */ GOTO 9
  IF ~~ THEN REPLY #9452 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.0 14.0
  SAY #9458 /* ~"Ja, den Stock... der schlimmste Ort Sigils. Ich hatte in meinem Leben noch nie so viele Flammen gesehen... ich bin wie ein Irrer umhergerannt und wollte flüchten, aber plötzlich stand alles in Flammen! Häuser, Straßen, Männer, Frauen, Kinder... und dieser dreimal verfluchte Zauberer hat die ganze Zeit nur gelacht! Ich flüchtete mich in eine Ecke und dachte, kurz verschnaufen zu können, doch plötzlich stand mein verdammter Kopf in Flammen! Von diesem Augenblick an... ging alles ziemlich bergab..." Das geöffnete Auge des Geistes funkelt böse.~ */
  IF ~~ THEN REPLY #9459 /* ~"Und wer war dieser Zauberer?"~ */ GOTO 19
  IF ~~ THEN REPLY #9464 /* ~"Ich verstehe. Ich hätte da noch ein paar Fragen an dich..."~ */ GOTO 9
  IF ~~ THEN REPLY #9746 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #9744 /* ~"Keine Ahnung. Ich war schon ziemlich fix und fertig, als sie ihn gestoppt haben, wenn überhaupt. Ich erinnere mich dunkel daran, daß er, bevor alles anfing, von irgendwelchen Leuten gejagt wurde, die seinen Namen riefen... äh... oh! Ignis. Ja, ich glaube es war Ignis. Oder so ähnlich. Hoffentlich muß er in einem übleren Loch schmoren als ich!"~ */
  IF ~~ THEN REPLY #9747 /* ~"Ich verstehe. Ich hätte da noch ein paar Fragen an dich..."~ */ GOTO 9
  IF ~~ THEN REPLY #9748 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~  Global("Crispy","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #20099 /* ~"Schon wieder?!"~ */
  IF ~~ THEN REPLY #20100 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #20101 /* ~"Nichts, ich war nur zufällig in der Gegend. Leb wohl."~ */ EXIT
END
