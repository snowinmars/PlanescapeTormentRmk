// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKELLERA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKELLERA~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #6342 /* ~"Du wirst sehen, daß ich nicht wehrlos bin, Narbengezeichneter. Bleib mir vom Leib."~ */
  IF ~~ THEN REPLY #6343 /* ~Erledigt.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #6344 /* ~"Du gehörst eindeutig nicht hierher. Geh jetzt, Eindringling, oder die Wachen werden zu härteren Maßnahmen greifen als dich lediglich hinauszubegleiten."~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #6345 /* ~"Ich hätte da bloß 'ne kleine Frage."~ */ GOTO 2
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6346 /* ~"Ich hätte da bloß 'ne kleine Frage."~ */ GOTO 3
  IF ~~ THEN REPLY #6347 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #6348 /* ~"Geh jetzt. Bevor hier ein Fehler passiert, den wir alle bereuen."~ */
  IF ~~ THEN REPLY #6349 /* ~"Beantworte mir nur eine Frage!"~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #6350 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #6351 /* ~Du siehst einen weiblichen Githzerai mit narbigem Gesicht. In den Augen der Githzerai gilt sie wohl als schön. "Ich kann dir damit nicht helfen. Geh, bevor ich die Wachen rufe. Ich zeige diese Dankbarkeit nur wegen deines Begleiters." Sie verbeugt sich vor Dak'kon und sagt: "Ehrwürdiger, vergebt mir."~ */
  IF ~~ THEN REPLY #6352 /* ~"Das ist ja alles schön und gut, aber ich hätte gerne, daß du mir ein paar Fragen beantwortest."~ */ GOTO 5
  IF ~~ THEN REPLY #6353 /* ~"Also gut." Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 5.0
  SAY #6354 /* ~"Du läßt mir keine Wahl." Sie hält einen Moment inne und ruft: "WACHEN! ZU MIR!"~ */
  IF ~~ THEN REPLY #6355 /* ~Erledigt.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 7.0
  SAY #6357 /* ~Sie wendet sich noch einmal an Dak'kon. "Ich entschuldige mich." Sie wendet sich wieder dir zu. "Ich habe mich vielleicht nicht deutlich genug ausgedrückt. Geh. Jetzt. Oder ich bin gezwungen, die Wachen zu rufen, damit sie dich von diesem Ort weg 'eskortieren'. Unser Projekt darf nicht verraten werden."~ */
  IF ~~ THEN REPLY #6356 /* ~"Ich wollte bloß, daß du mir ein paar Fragen beantwortest!"~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #6358 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #6359 /* ~"Du läßt mir keine Wahl." Sie hält einen Moment inne und ruft: "WACHEN! ZU MIR!"~ */
  IF ~~ THEN REPLY #6360 /* ~Geschafft.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #6361 /* ~Sie spricht noch einmal zu Dak'kon. "Ehrwürdiger... Kommt nicht mehr hierher. Es ist nicht mein Wille, die Wachen auf Euch zu hetzen. Geht."~ */
  IF ~~ THEN REPLY #6362 /* ~"Sieh mal, du sollst mir doch bloß ein oder zwei Fragen beantworten."~ */ GOTO 5
  IF ~~ THEN REPLY #6363 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #6364 /* ~Ihre schwarzen Augen fallen auf Dak'kon. "Ehrwürdiger... Ihr laßt mir keine Wahl. Vergebt mir vor dem Angesicht unserer Vorfahren." Sie dreht sich um und erhebt die Stimme. "Wachen! Wachen!"~ */
  IF ~~ THEN REPLY #6365 /* ~Erledigt.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~  NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
~ THEN BEGIN 9 // from:
  SAY #6366 /* ~Du siehst eine Githzerai-Frau, kahlköpfig, mit vernarbten Wangen und dem anmutigen Gang einer Katze. Als sie auf dich zugeht, erblickt sie Dak'kon. Ihre Augen werden groß und sie begrüßt ihn, "Ihr bringt Freude in mein Herz. Mein Name ist Kel'lera. Kann ich Euch helfen?"
~ */
  IF ~~ THEN DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXTERN ~DDAKKON~ 4
END

IF ~~ THEN BEGIN 10 // from: 35.0
  SAY #6370 /* ~"Dann frage und ich werde dir antworten, wenn ich darf. Dein Begleiter trägt in dieser Sache die Last der Verschwiegenheit, die ihm zur Ehre gereicht. Und wenn ich auch nicht weiß, ob ich dir vertrauen kann, so weiß ich doch, daß ich ihm vertrauen kann"~ */
  IF ~~ THEN REPLY #6371 /* ~"Sag mir, wofür dieses Ding gut ist."~ */ GOTO 11
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6372 /* ~"Und wo sind die Schwachstellen an diesem Ding?"~ */ GOTO 13
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6373 /* ~"Wer hat dieses Ding in Auftrag gegeben?"~ */ GOTO 16
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6374 /* ~"Wer hat dieses Ding in Auftrag gegeben?"~ */ GOTO 12
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6375 /* ~"Was kannst du mir über den Mord erzählen?"~ */ GOTO 17
  IF ~~ THEN REPLY #6376 /* ~"Was kannst du mir über die Ingenieure sagen?"~ */ GOTO 18
  IF ~~ THEN REPLY #6377 /* ~Sprich zu Dak'kon: "Wer ist sie, und warum hat sie solchen Respekt vor dir?"~ */ EXTERN ~DDAKKON~ 5
  IF ~~ THEN REPLY #6378 /* ~"Im Moment nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 21.0
  SAY #6379 /* ~"Unser Gerät versprüht eine bestimmte Art magischen Feuers, die selbst denen Schaden zufügt, die gegen normales Feuer gefeit sind. Wir arbeiten an Anwendungen, die sogar die magische Widerstandskraft eines Gegners überwinden können."~ */
  IF ~~ THEN REPLY #6380 /* ~"Was für andere Verwendungen könnte es noch haben?"~ */ GOTO 15
  IF ~~ THEN REPLY #6381 /* ~"Sehr schön. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 21
  IF ~~ THEN REPLY #6382 /* ~"Das ist alles. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.3 21.2 35.1
  SAY #6383 /* ~Sie blickt auf Grace und ihr Mund nimmt eine würdevolle Ausstrahlung an. "Es tut mir leid, Ehrwürdige, aber darüber kann ich nicht sprechen. Ich bin sowohl durch einen Vertrag als auch durch einen Zauber verpflichtet, darüber zu schweigen, wenn ich von bestimmten... sagen wir 'Manifestationen'... des Glaubens höre." Sie wendet sich an den Sukkubus. "Ich bedaure, Lady Grace."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 9
END

IF ~~ THEN BEGIN 13 // from: 10.1 21.1
  SAY #6387 /* ~Sie blickt unruhig zu Dak'kon, der dich einen Moment lang mustert und sich dann wieder umdreht, um ihr zustimmend zuzunicken. "Ganz richtig. Der schwächste Punkt ist der Feuermechanismus am hinteren Teil des Apparats. Er ist zu gefährlich und kann uns allen den Tod bringen. Er könnte eine Kettenreaktion auslösen, die all jene hinwegrafft, die sich im Apparat befinden. Der Saboteur hätte wahrscheinlich genug Zeit, um zu fliehen, nicht jedoch diejenigen von uns, die mit dem Apparat verbunden sind."~ */
  IF ~~ THEN REPLY #6388 /* ~"Verbunden sind? Was soll das heißen?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 20
  IF ~~ THEN REPLY #6389 /* ~"Okay. Beantworte mir noch ein paar andere Fragen."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 21
  IF ~~ THEN REPLY #6390 /* ~"Besten Dank." Geh.~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #6391 /* ~Die Aufseherin wendet sich nochmals unwillig Grace, der Gefallenen, zu und knirscht mit den Zähnen. "Ich darf nicht darüber reden."~ */
  IF ~~ THEN REPLY #6392 /* ~"Na schön. Beantworte mir ein paar Fragen."~ */ GOTO 21
  IF ~~ THEN REPLY #6393 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY #6394 /* ~"Abgesehen von seinem Waffenwert? Es könnte als ein hervorragendes Gerät zum Bergbau eingesetzt werden. Wenn es richtig eingestellt ist, könnte es Schneisen in Wälder schlagen oder ganze Felder abernten. Es könnte eine Zeitlang eine Schutzhülle aus Limbusmaterial erhärten - wir haben dort sogar sanftere Anwendungen dieser Technologie ausprobiert - oder sogar zum Antrieb über die Sphären von Carzeri verwendet werden. Seine Verwendungsmöglichkeiten sind nur durch die Vorstellungskraft begrenzt. Es ist nicht nur eine reine Zerstörungswaffe."~ */
  IF ~~ THEN REPLY #6395 /* ~"Interessant. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 21
  IF ~~ THEN REPLY #6396 /* ~"Also gut. Leb wohl." Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.2 21.3
  SAY #6397 /* ~Sie blickt sich um, seufzt und antwortet: "Obwohl ich nicht an den Verhandlungen teilgenommen habe, glaube ich, daß es die Baatezu waren, die unsere Dienste in Anspruch genommen haben. Das Zeichen, das du trägst, wird dir ein gewisses Maß an diplomatischer Immunität gegenüber den Baatezu verleihen."~ */
  IF ~~ THEN REPLY #6398 /* ~"Ich bin sicher, daß das nützlich sein wird. Könntest du mir vielleicht noch ein paar andere Fragen beantworten?"~ */ GOTO 21
  IF ~~ THEN REPLY #6399 /* ~"Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.4 21.4
  SAY #6400 /* ~"Ich kann dir nur wenig sagen. Meine Schmiede und ich sind schon geraume Zeit fast ohne Unterbrechung hier. Ich rate dir, mit jemandem zu reden, der auch nach Einbruch der Dunkelheit in der Gießerei ist. Zwei Namen fallen mir ein: Thildon, der Arbeitsaufseher, und Saros, der so einen diebischen Blick hat."
~ */
  IF ~~ THEN REPLY #6401 /* ~"Thildon und Saros, was? Also gut. Könntest du mir vielleicht noch ein paar Fragen beantworten?"~ */ GOTO 21
  IF ~~ THEN REPLY #6402 /* ~"Thildon und Saros, was? Werd mich mal nach ihnen umsehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.5 21.5
  SAY #6403 /* ~Sie macht ein böses Gesicht, wodurch ihr narbiges Gesicht um einige Falten reicher wird. "Sprich mit einem meiner Schmiede, wenn du etwas über die Ingenieure *wissen* möchtest. Von mir wirst du kein freundliches Wort über die Ingenieure hören."~ */
  IF ~~ THEN REPLY #6404 /* ~"Warum nicht?"~ */ GOTO 19
  IF ~~ THEN REPLY #6405 /* ~"Okay. Dann beantworte mir noch ein paar Fragen."~ */ GOTO 21
  IF ~~ THEN REPLY #6406 /* ~"Also gut." Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #6407 /* ~"Warum? Weil sie nicht mit der gleichen Hingabe an diesem Projekt arbeiten wie die anderen Kameraden. Weil sie Träumer sind und von sich aus nichts unternehmen. Und schließlich weil ich bezweifle, daß sie es gut mit uns meinen. Ich glaube eher, daß sie nur auf ihren eigenen Vorteil bedacht sind."~ */
  IF ~~ THEN REPLY #6408 /* ~"Ich verstehe. Dann beantworte mir eine andere Frage."~ */ GOTO 21
  IF ~~ THEN REPLY #6409 /* ~"Versteh schon. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.0
  SAY #6410 /* ~"Ich will sagen, daß wir mit dieser Maschine aufgrund der magischen Rituale, die ihr ihre Stärke verleihen, untrennbar verbunden sind. Wenn ein Fehler passiert oder - was noch schlimmer ist - ein Sabotageakt ausgeführt wird, werden ich und alle, die du in diesem Raum siehst, verbrennen. Noch schlimmer ist, daß unsere Seelen zerstört und auseindergerissen werden und ihnen nur der Friede der kalten, dunklen Vergessenheit gewährt wird. Verstehst du jetzt unsere Geheimhaltung ?"~ */
  IF ~~ THEN REPLY #6411 /* ~"Ich nehme es an. Vielleicht könntest du mir noch ein paar andere Fragen beantworten..."~ */ GOTO 21
  IF ~~ THEN REPLY #6412 /* ~"Ich nehme es an. Leb wohl."~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from: 11.1 13.1 14.0 15.0 16.0 17.0 18.1 19.0 20.0 36.1
  SAY #6413 /* ~"Frage und ich werde dir antworten, wenn ich darf. Ich vertraue auf die Verschwiegenheit deines Begleiters."~ */
  IF ~~ THEN REPLY #6414 /* ~"Sag mir, wofür dieses Ding gut ist."~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 11
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6415 /* ~"Und wo sind die Schwachstellen an diesem Ding?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 13
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6416 /* ~"Wer hat dieses Ding in Auftrag gegeben?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 12
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6417 /* ~"Wer hat dieses Ding in Auftrag gegeben?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 16
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6418 /* ~"Was kannst du mir über den Mord erzählen?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 17
  IF ~~ THEN REPLY #6419 /* ~"Was kannst du mir über die Ingenieure sagen?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 18
  IF ~~ THEN REPLY #6420 /* ~Sprich zu Dak'kon: "Wer ist sie, und warum hat sie solchen Respekt vor dir?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXTERN ~DDAKKON~ 5
  IF ~~ THEN REPLY #6421 /* ~"Im Moment nichts. Leb wohl."~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXIT
END

IF ~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #6422 /* ~Eine narbenübersäte, kahlköpfige Githzerai-Frau eilt mit unglaublicher Würde auf dich zu. Ihre Augen betrachten dich von oben bis unten und sie sagt: "Dein Zeichen verleiht dir Zutrittsrechte. Was willst du sonst noch von mir?"~ */
  IF ~~ THEN REPLY #6423 /* ~"Ich möchte nur die Antworten auf ein paar Fragen."~ */ GOTO 23
  IF ~~ THEN REPLY #6424 /* ~"Red' nicht in diesem Ton mit mir, oder ich laß dich auspeitschen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kellera_1","GLOBALGood",-1)
~ GOTO 24
  IF ~~ THEN REPLY #6425 /* ~"Vorerst nichts. Leb wohl."~ */ EXIT
END

IF ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from: 22.0 26.1 27.0 28.1 29.0 31.0 32.0 33.1 34.0 37.1
  SAY #6426 /* ~"Dann stell deine Fragen, und zwar schnell. Wisse, daß ich eine Menge Arbeit habe, die auf mich wartet."~ */
  IF ~~ THEN REPLY #6427 /* ~"Sag mir, wofür dieses Ding gut ist."~ */ GOTO 26
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6428 /* ~"Und wo sind die Schwachstellen an diesem Ding?"~ */ GOTO 28
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6429 /* ~"Wer hat dieses Ding in Auftrag gegeben?"~ */ GOTO 29
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6430 /* ~"Wer hat dieses Ding in Auftrag gegeben?"~ */ GOTO 30
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6431 /* ~"Was kannst du mir über den Mord erzählen?"~ */ GOTO 32
  IF ~~ THEN REPLY #6432 /* ~"Was kannst du mir über die Ingenieure sagen?"~ */ GOTO 33
  IF ~~ THEN REPLY #6433 /* ~"Im Moment nichts. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1 28.0
  SAY #6434 /* ~Ihre schmalen Augen verengen sich zu Schlitzen. "Du wagst es, mich zu bedrohen, hier? Verschwinde und gib mir Zeit, diese Beleidigung zu vergessen, oder ich lasse deinen blutenden Kadaver von den Wachen auf die Straße werfen."~ */
  IF ~~ THEN REPLY #6435 /* ~"Da sterb ich lieber."~ */ GOTO 25
  IF ~~ THEN REPLY #6436 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #6437 /* ~"Das kannst du haben. WACHE! Tötet diesen Eindringling!"~ */
  IF ~~ THEN REPLY #6438 /* ~Bereite dich auf einen Kampf vor.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #6439 /* ~"Unser Gerät versprüht eine bestimmte Art magischen Feuers, die selbst denen Schaden zufügt, die gegen normales Feuer gefeit sind. Wir arbeiten an Anwendungen, die sogar die magische Widerstandskraft eines Gegners überwinden können."~ */
  IF ~~ THEN REPLY #6440 /* ~"Was für andere Verwendungen könnte es noch haben?"~ */ GOTO 27
  IF ~~ THEN REPLY #6441 /* ~"Sehr schön. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 23
  IF ~~ THEN REPLY #6442 /* ~"Das ist alles. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #6443 /* ~"Abgesehen von seinem Waffenwert? Es könnte als ein hervorragendes Gerät zum Bergbau eingesetzt werden. Wenn es richtig eingestellt ist, könnte es Schneisen in Wälder schlagen oder ganze Felder abernten. Es könnte eine Zeitlang eine Schutzhülle aus Limbusmaterial erhärten - wir haben dort sogar sanftere Anwendungen dieser Technologie ausprobiert - oder sogar zum Antrieb über die Sphären von Carzeri verwendet werden. Seine Verwendungsmöglichkeiten sind nur durch die Vorstellungskraft begrenzt. Es ist nicht nur eine reine Zerstörungswaffe."~ */
  IF ~~ THEN REPLY #6444 /* ~"Interessant. Beantworte mir doch noch ein paar andere Fragen."~ */ GOTO 23
  IF ~~ THEN REPLY #6445 /* ~"Also gut. Leb wohl." Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.1
  SAY #6446 /* ~"Ich sehe keinen Grund, warum du diese Informationen erhalten solltest, ob du nun ein Göttermensch bist oder nicht. Ich werde es dir nicht sagen."~ */
  IF ~~ THEN REPLY #6447 /* ~"Und was, wenn ich dich dazu zwingen würde?"~ */ GOTO 24
  IF ~~ THEN REPLY #6448 /* ~"Also gut. Kannst du mir dann vielleicht ein paar andere Fragen beantworten?"~ */ GOTO 23
  IF ~~ THEN REPLY #6449 /* ~"In Ordnung. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.2
  SAY #6450 /* ~Sie blickt sich um, seufzt und antwortet: "Obwohl ich nicht an den Verhandlungen teilgenommen habe, glaube ich, daß es die Baatezu waren, die unsere Dienste in Anspruch genommen haben. Das Zeichen, das du trägst, wird dir ein gewisses Maß an diplomatischer Immunität gegenüber den Baatezu verleihen."~ */
  IF ~~ THEN REPLY #6451 /* ~"Ich bin sicher, daß das nützlich sein wird. Könntest du mir vielleicht noch ein paar andere Fragen beantworten?"~ */ GOTO 23
  IF ~~ THEN REPLY #6452 /* ~"Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.3
  SAY #6453 /* ~Sie blickt auf Grace und ihr Mund nimmt eine würdevolle Ausstrahlung an. "Es tut mir leid, Ehrwürdige, aber darüber kann ich nicht sprechen. Ich bin sowohl durch einen Vertrag als auch durch einen Zauber verpflichtet, darüber zu schweigen, wenn ich von bestimmten... sagen wir 'Manifestationen'... des Glaubens höre." Sie wendet sich an den Sukkubus. "Ich bedaure, Lady Grace."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 10
END

IF ~~ THEN BEGIN 31 // from:
  SAY #6457 /* ~Die Aufseherin wendet sich wieder unfreundlich Grace zu und preßt zwischen den Zähnen heraus "Ich kann es nicht sagen!"~ */
  IF ~~ THEN REPLY #6458 /* ~"Na schön. Beantworte mir ein paar Fragen."~ */ GOTO 23
  IF ~~ THEN REPLY #6459 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.4
  SAY #6460 /* ~"Ich kann dir nur wenig sagen. Meine Schmiede und ich sind schon geraume Zeit fast ohne Unterbrechung hier. Ich rate dir, mit jemandem zu reden, der auch nach Einbruch der Dunkelheit in der Gießerei ist. Zwei Namen fallen mir ein: Thildon, der Arbeitsaufseher, und Saros, der so einen diebischen Blick hat."~ */
  IF ~~ THEN REPLY #6461 /* ~"Thildon und Saros, was? Also gut. Könntest du mir vielleicht noch ein paar Fragen beantworten?"~ */ GOTO 23
  IF ~~ THEN REPLY #6462 /* ~"Thildon und Saros, was? Werd mich mal nach ihnen umsehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.5
  SAY #6463 /* ~Sie macht ein böses Gesicht, wodurch ihr narbiges Gesicht um einige Falten reicher wird. "Sprich mit einem meiner Schmiede, wenn du etwas über die Ingenieure *wissen* möchtest. Von mir wirst du kein freundliches Wort über die Ingenieure hören."~ */
  IF ~~ THEN REPLY #6464 /* ~"Warum nicht?"~ */ GOTO 34
  IF ~~ THEN REPLY #6465 /* ~"Okay. Dann beantworte mir noch ein paar Fragen."~ */ GOTO 23
  IF ~~ THEN REPLY #6466 /* ~"Also gut." Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #6467 /* ~"Warum? Weil sie nicht mit der gleichen Hingabe an diesem Projekt arbeiten wie die anderen Kameraden. Weil sie Träumer sind und von sich aus nichts unternehmen. Und schließlich weil ich bezweifle, daß sie es gut mit uns meinen. Ich glaube eher, daß sie nur auf ihren eigenen Vorteil bedacht sind."~ */
  IF ~~ THEN REPLY #6468 /* ~"Ich verstehe. Dann beantworte mir eine andere Frage."~ */ GOTO 23
  IF ~~ THEN REPLY #6469 /* ~"Versteh schon. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #6470 /* ~Sie schaut dich an und blickt dann wieder zu ihm. "Natürlich, Ehrwürdiger, wenn Ihr für ihn sprecht und für die Geheimnisse, die herausgetragen werden, die Verantwortung übernehmt." Unwillig widmet sie ihre Aufmerksamkeit wieder dir. "Du hast Fragen an mich?"~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6455 /* ~"Ja."~ */ DO ~SetGlobal("Dword","GLOBAL",1)
~ GOTO 10
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6456 /* ~"Ja."~ */ DO ~SetGlobal("Dword","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #7998 /* ~"Nein. Vergiß es einfach."
~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #6472 /* ~Kel'lera verbeugt sich.~ */
  IF ~~ THEN REPLY #6367 /* ~"Was heißt das?"~ */ EXTERN ~DGRACE~ 7
  IF ~~ THEN REPLY #6368 /* ~"Also schön. Könntest du mir dann vielleicht ein paar andere Fragen beantworten?"~ */ GOTO 21
  IF ~~ THEN REPLY #6369 /* ~"Also schön. Dann habe ich hier nichts mehr zu suchen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #6384 /* ~Kel'lera verbeugt sich.~ */
  IF ~~ THEN REPLY #6385 /* ~"Was heißt das?"~ */ EXTERN ~DGRACE~ 8
  IF ~~ THEN REPLY #6386 /* ~"Also schön. Könntest du mir dann vielleicht ein paar andere Fragen beantworten?"~ */ GOTO 23
  IF ~~ THEN REPLY #6454 /* ~"Also schön. Dann habe ich hier nichts mehr zu suchen. Leb wohl."~ */ EXIT
END
