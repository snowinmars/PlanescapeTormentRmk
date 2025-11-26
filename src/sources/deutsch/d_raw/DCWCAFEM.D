// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWCAFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWCAFEM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #27334 /* ~Der elegant gekleidete und gepflegte Mann ruht sich hier aus, genießt die frische Luft und nippt an einem Getränk, daß er im Café gekauft hat.~ */
  IF ~~ THEN REPLY #2895 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #2896 /* ~Laß den Mann in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #27335 /* ~"Seid..." Er hält inne, als er dich schließlich näher betrachtet. "äh... ebenfalls gegrüßt." Er lächelt beklommen.~ */
  IF ~~ THEN REPLY #2897 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #2898 /* ~"Stimmt etwas mit meinem Äußeren nicht?"~ */ GOTO 2
  IF ~~ THEN REPLY #27383 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #27336 /* ~"Nein, ganz und gar nicht. Ich bin es nur nicht gewöhnt, in dieser Gegend einen so... weltlich... aussehenden Mann zu sehen." Er schließt kurz die Augen und hält seine Hand entschuldigend an seine Brust. "Ich hoffe, daß Ihr mir meine erste Reaktion verzeiht."~ */
  IF ~~ THEN REPLY #27384 /* ~"Weltlich?"~ */ GOTO 3
  IF ~~ THEN REPLY #27385 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27386 /* ~"Keine Sorge. Ich wollte sowieso gerade gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27337 /* ~"'Viel herumgekommen', wenn Ihr so wollt. Ihr wirkt, wie soll ich sagen, etwas ungepflegt, vielleicht etwas grobschlächtig. Ihr fallt hier etwas...äh...aus dem Rahmen. Aber in Sigil gibt's ja viele merkwürdige Gestalten, nicht wahr? Im Bezirk der Kuratoren scheinen allerdings nicht ganz so viele wie in der restlichen Stadt zu sein. Mal abgesehen von der Festhalle, natürlich."~ */
  IF ~~ THEN REPLY #27387 /* ~"Bezirk der Kuratoren?"~ */ GOTO 6
  IF ~~ THEN REPLY #27388 /* ~"Die Festhalle?"~ */ GOTO 22
  IF ~~ THEN REPLY #27389 /* ~"Du meinst, ich sehe tot aus, ja? Nun, ich bin's, mußt du wissen. Tot, meine ich!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #27390 /* ~"Hmm. Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27391 /* ~"Verständlich, denk ich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.3 5.1 6.2 7.1 8.0 9.0 10.2 11.1 12.9 13.2 15.2 17.2 18.3 20.2 21.2 22.4 23.4 24.2 25.8 26.1 27.1 28.1 29.2 30.1 31.1 32.1 33.1 34.3 35.3 36.1 37.1 38.2 39.2 40.2 41.0 42.0 43.0 44.1 45.1 46.1 48.1
  SAY #27338 /* ~"Fragt mich einfach... ich werde versuchen, Euch zu antworten."~ */
  IF ~~ THEN REPLY #27392 /* ~"Wo bin ich hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #27393 /* ~"Was gibt es hier Interessantes?"~ */ GOTO 7
  IF ~~ THEN REPLY #27394 /* ~"Wo könnte ich hier Arbeit finden?"~ */ GOTO 9
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27395 /* ~"Ich möchte etwas über einen bestimmten Ort wissen..."~ */ GOTO 12
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27396 /* ~"Ich bräuchte nur ein paar Wegbeschreibungen..."~ */ GOTO 25
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #27397 /* ~"Was weißt du von Ravel Rätselschön?"~ */ GOTO 42
  IF ~~ THEN REPLY #27398 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27339 /* ~Er wirkt belustigt. "Na, das hier ist der Bezirk der Kuratoren! Seid Ihr neu in Sigil? Moment... Ihr sucht Antworten und keine Fragen... Vergeßt also meine Frage." Er lächelt.~ */
  IF ~~ THEN REPLY #27399 /* ~"Was kannst du mir über den Bezirk erzählen?" ~ */ GOTO 6
  IF ~~ THEN REPLY #27400 /* ~"Stimmt. Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27401 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #27340 /* ~"Nun, der größte Teil des Bezirks, in dem ich anscheinend dazu verdammt bin, die meiste Zeit meines Lebens zu verbringen, wird von Hallen der Aufzeichnungen und Verwaltungsgebäuden dominiert... dieser Teil allerdings nicht."~ */
  IF ~~ THEN REPLY #27402 /* ~"Warum bist du dazu 'verdammt', hierzubleiben?"~ */ GOTO 10
  IF ~~ THEN REPLY #27403 /* ~"Was unterscheidet diesen Bereich vom übrigen Bezirk?"~ */ GOTO 7
  IF ~~ THEN REPLY #27404 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27405 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.1 10.1 11.0
  SAY #27341 /* ~"Zuerst mal die Städtische Festhalle. Dann das Bordell zum Befriedigen Intellektueller Lüste... kein gewöhnliches Bordell, müßt Ihr wissen... in ihm werden eher geistige Gelüste befriedigt. Deshalb aber nicht weniger reizvoll!" Er lächelt listig.~ */
  IF ~~ THEN REPLY #27406 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #27407 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27408 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #27342 /* ~"Was ist noch erwähnenswert..." Er zählt sie an den Fingern ab, als er sie nennt. "...das Haus des Advokaten, die Apotheke, die Kunst- und Kuriositäten-Galerie, die Katakomben unter dem Bezirk und der Schneider. Oh! Hätt ich beinah vergessen... da gibt's auch noch einen Kuriositätenladen."~ */
  IF ~~ THEN REPLY #27409 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27410 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #27343 /* ~Der Mann *denkt nach* und runzelt die Stirn. "Ich geh mal davon aus, daß Ihr keine feste Anstellung sucht. Einen Job könntet Ihr im Haus des Advokaten oder in der Apotheke kriegen. Und die Festhalle ist Schauplatz für jede Menge Ereignisse. Da könntet Ihr auch mal fragen."~ */
  IF ~~ THEN REPLY #27411 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27412 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #27344 /* ~Er zuckt mit den Achseln und schaut gequält weg. "Ich habe hier meine Pflichten. Hier lebe ich. Hier arbeite ich."~ */
  IF ~~ THEN REPLY #27414 /* ~"Was machst du beruflich?"~ */ GOTO 11
  IF ~~ THEN REPLY #27415 /* ~"Worin unterscheidet sich dieser Bereich vom übrigen Bezirk?"~ */ GOTO 7
  IF ~~ THEN REPLY #27416 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27417 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #27345 /* ~Er hebt seine Hände und schüttelt den Kopf. "Oh nein, darüber werde ich jetzt nicht reden. Keine Politik und Papierkram, wenn ich nicht bei der Arbeit bin, und damit basta." Er lächelt höflich.~ */
  IF ~~ THEN REPLY #27418 /* ~"Worin unterscheidet sich dieser Bereich vom übrigen Bezirk?"~ */ GOTO 7
  IF ~~ THEN REPLY #27419 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27420 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.3 13.1 15.1 16.1 17.1 18.2 20.1 21.1 22.3 23.3 24.1 34.2 35.2
  SAY #27346 /* ~"Oh? Über welchen den?"~ */
  IF ~~ THEN REPLY #27421 /* ~"Das Haus des Advokaten."~ */ GOTO 13
  IF ~~ THEN REPLY #27423 /* ~"Die Apotheke."~ */ GOTO 16
  IF ~~ THEN REPLY #27468 /* ~"Den Kunstladen."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27469 /* ~"Das Bordell."~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27470 /* ~"Das Bordell."~ */ GOTO 19
  IF ~~ THEN REPLY #27471 /* ~"Die Katakomben unter dem Bezirk."~ */ GOTO 21
  IF ~~ THEN REPLY #27472 /* ~"Die Städtische Festhalle."~ */ GOTO 22
  IF ~~ THEN REPLY #27473 /* ~"Den Kuriositätenladen."~ */ GOTO 23
  IF ~~ THEN REPLY #27474 /* ~"Den Schneider."~ */ GOTO 24
  IF ~~ THEN REPLY #27475 /* ~"Vergiß es. Ich möchte dich was zu etwas anderem fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27476 /* ~"Keinen, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 26.0
  SAY #27347 /* ~"Advokaten helfen bei Rechtsstreitigkeiten weiter, setzen Rechtsdokumente auf und sind rechtliche Vertreter ihrer Mandanten. Der Advokat hier ganz in der Nähe, Jannis, hat einen sehr guten Ruf und ist sehr zuverlässig. Er hat sehr lange im Bezirk gewohnt und gearbeitet."~ */
  IF ~~ THEN REPLY #27477 /* ~"Wie gelange ich zum Haus von Jannis?"~ */ GOTO 26
  IF ~~ THEN REPLY #27478 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27479 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27480 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #27348 /* ~"Advokaten helfen bei Rechtsstreitigkeiten weiter, setzen Rechtsdokumente auf und sind rechtliche Vertreter ihrer Mandanten."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #27349 /* ~"Der Advokat hier ganz in der Nähe, Jannis, hat einen sehr guten Ruf und ist sehr zuverlässig. Er hat sehr lange im Bezirk gewohnt und gearbeitet."~ */
  IF ~~ THEN REPLY #27481 /* ~"Wie gelange ich zum Haus von Jannis?"~ */ GOTO 26
  IF ~~ THEN REPLY #27482 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27483 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27484 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1 27.0
  SAY #27350 /* ~"In der Apotheke werden verschiedene Salben, Tränke, Kräuter und ähnliches Zeug verkauft." Er runzelt kurz die Stirn. "Die Besitzer sind ein bißchen plemplem. Sie probieren ihre Medizin andauernd an sich selber aus. Sonst aber nette Leute."~ */
  IF ~~ THEN REPLY #27485 /* ~"Wie komme ich zur Apotheke?"~ */ GOTO 27
  IF ~~ THEN REPLY #27486 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27487 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 28.0
  SAY #27351 /* ~"Yvannas Kunst- und Kuriositäten-Galerie ist ein äußerst faszinierender Ort. Dort gibt's Kunstwerke, Antiquitäten und Artefakte aus allen Ebenen."~ */
  IF ~~ THEN REPLY #27488 /* ~"Wie komme ich zum Kunstladen?"~ */ GOTO 28
  IF ~~ THEN REPLY #27489 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27490 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27491 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.3 29.0
  SAY #27352 /* ~"Ein Sinnsaten-Etablissement, das Herz und Sinne erfreut." Er schließt kurzzeitig die Augen und lächelt dabei glücklich. "Gehört Grace, der Gefallenen. Eine ganz reizende Frau! Kann ich Euch wärmstens empfehlen, wenn das hier Euer erster Aufenthalt im Bezirk ist."~ */
  IF ~~ THEN REPLY #27492 /* ~"Sinnsate?"~ */ GOTO 36
  IF ~~ THEN REPLY #27493 /* ~"Wie komm ich zu dem Bordell?"~ */ GOTO 29
  IF ~~ THEN REPLY #27494 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27495 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27496 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.4 29.1
  SAY #27353 /* ~"Ein Sinnsaten-Etablissement, das Herz und Sinne erfreut. Gehört Grace, der Gefallenen. Eine ganz reizende Frau!" Er hält inne, um sich tief vor Grace zu verbeugen.~ */
  IF ~~ THEN EXTERN ~DGRACE~ 126
END

IF ~~ THEN BEGIN 20 // from:
  SAY #27354 /* ~"Oh, dir gebührt das höchste Lob, liebe Grace. Es ist mir eine große Ehre, ein solches Kompliment persönlich überbringen zu können." Er wendet sich wieder dir zu.~ */
  IF ~~ THEN REPLY #27497 /* ~"Ich hab's vergessen... Wie komm ich noch mal zum Bordell?"~ */ GOTO 29
  IF ~~ THEN REPLY #27498 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27499 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27500 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.5 30.0
  SAY #27355 /* ~"Ist mir schleierhaft, wieso die Dabus sie noch nicht zugemacht haben. Sie sind voller Monster, so heißt es zumindest, grausigen Dingen, die in der Dunkelheit schnattern und geifern."~ */
  IF ~~ THEN REPLY #27501 /* ~"Wie komm ich da rein?"~ */ GOTO 30
  IF ~~ THEN REPLY #27502 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27503 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27504 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.1 12.6 31.0
  SAY #27356 /* ~"Eine der wundersamsten Einrichtungen in Sigil... es ist das Hauptquartier des Bunds der Sinnsaten und im ganzen Multiversum für seine Konzerte, Kunstausstellungen und Vorträge bekannt. Am faszinierendsten daran sind jedoch die Sinnsorien."~ */
  IF ~~ THEN REPLY #27505 /* ~"Sinnsaten?"~ */ GOTO 36
  IF ~~ THEN REPLY #27506 /* ~"Sinnsorien?"~ */ GOTO 38
  IF ~~ THEN REPLY #27507 /* ~"Wo ist die Festhalle?"~ */ GOTO 31
  IF ~~ THEN REPLY #27508 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27509 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27510 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.7 32.0
  SAY #27357 /* ~"Ich behaupte nicht, selbst dort gewesen zu sein, aber soweit ich weiß, gehört der Laden einer Importeurin... ein Halbscheusal, das ihre Waren aus den Unteren Ebenen bezieht."~ */
  IF ~~ THEN REPLY #27511 /* ~"Halbscheusal?"~ */ GOTO 35
  IF ~~ THEN REPLY #27512 /* ~"Untere Ebenen?"~ */ GOTO 34
  IF ~~ THEN REPLY #27513 /* ~"Wo liegt dieser Ort?"~ */ GOTO 32
  IF ~~ THEN REPLY #27514 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27515 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27516 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.8 33.0
  SAY #27358 /* ~"Gonkalves ist zwar ein ausgezeichneter Schneider, aber sehr jähzornig und schnell eingeschnappt. Ich muß Euch warnen. Er wird Euch wahrscheinlich nur nach Eurem Äußeren beurteilen und dann nicht Euer Freund sein wollen."~ */
  IF ~~ THEN REPLY #27517 /* ~"Wo finde ich den Laden von Gonkalve?"~ */ GOTO 33
  IF ~~ THEN REPLY #27518 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27519 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27520 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.4
  SAY #27359 /* ~"Wohin?"~ */
  IF ~~ THEN REPLY #27521 /* ~"Das Haus des Advokaten."~ */ GOTO 26
  IF ~~ THEN REPLY #27522 /* ~"Die Apotheke."~ */ GOTO 27
  IF ~~ THEN REPLY #27523 /* ~"Den Kunstladen."~ */ GOTO 28
  IF ~~ THEN REPLY #27524 /* ~"Das Bordell."~ */ GOTO 29
  IF ~~ THEN REPLY #27525 /* ~"Die Katakomben unter dem Bezirk."~ */ GOTO 30
  IF ~~ THEN REPLY #27526 /* ~"Die Städtische Festhalle."~ */ GOTO 31
  IF ~~ THEN REPLY #27527 /* ~"Den Kuriositätenladen."~ */ GOTO 32
  IF ~~ THEN REPLY #27528 /* ~"Den Schneider."~ */ GOTO 33
  IF ~~ THEN REPLY #27529 /* ~"Vergiß es. Ich möchte dich was zu etwas anderem fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27530 /* ~"Keinen, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.0 15.0 25.0
  SAY #27360 /* ~"Jannis Haus liegt südlich des Tores zum Unteren Bezirk - durch das Ihr höchstwahrscheinlich hierher gekommen seid. Das Haus befindet sich auf der östlichen Seite der Straße."~ */
  IF ~~ THEN REPLY #27531 /* ~"Was kannst du mir über den Advokaten erzählen?"~ */ GOTO 13
  IF ~~ THEN REPLY #27533 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27534 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.0 25.1
  SAY #27361 /* ~"Folgt der Straße, die vom Tor zum Unteren Bezirk, durch das Ihr höchstwahrscheinlich hierher gekommen seid, nach Osten verläuft. Wenn die Straße sich nach Nordosten und Südosten gabelt, geht in südliche Richtung... Ihr findet das Haus östlich der Straße. Es liegt nach Süden und hat drei Fenster aus farbigem Glas."~ */
  IF ~~ THEN REPLY #27535 /* ~"Was kannst du mir über den Ort erzählen?"~ */ GOTO 16
  IF ~~ THEN REPLY #27536 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27537 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 17.0 25.2
  SAY #27362 /* ~"Folgt der Straße, die vom Tor zum Unteren Bezirk, durch das Ihr höchstwahrscheinlich hierher gekommen seid, nach Osten verläuft. Wenn die Straße sich nach Nordosten und Südosten gabelt, geht in südliche Richtung... Ihr findet das Haus westlich der Straße. Es liegt nach Süden und hat ein Dach, dessen Ziegel mit großen Steinen beschwert sind."~ */
  IF ~~ THEN REPLY #27538 /* ~"Was weißt du über den Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #27542 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27543 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.1 20.0 25.3
  SAY #27363 /* ~"Das Bordell zum Befriedigen Intellektueller Lüste, was?" Er lächelt wissend. "Das liegt unmittelbar östlich vom Tor zum Unteren Bezirk - durch das Ihr höchstwahrscheinlich hierher gekommen seid. Es ist ein großes rundes Gebäude, dessen Eingang auf der Südseite liegt."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27544 /* ~"Was kannst du mir über das Bordell erzählen?"~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27545 /* ~"Was kannst du mir über das Bordell erzählen?"~ */ GOTO 19
  IF ~~ THEN REPLY #27546 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27547 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.0 25.4
  SAY #27364 /* ~Er runzelt die Stirn. "Hmm. Es gibt mehr als einen Eingang, soviel weiß ich... aber nicht viel mehr. Ich möchte Euch aber vorsichtshalber mitteilen, daß nichts, was einmal da unten war, jemals wieder nach oben kommt... einschließlich derjenigen, die hinuntergegangen sind."~ */
  IF ~~ THEN REPLY #27548 /* ~"Was kannst du mir sonst noch über sie erzählen?"~ */ GOTO 21
  IF ~~ THEN REPLY #27549 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27550 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 22.2 25.5 39.0
  SAY #27365 /* ~"Die Festhalle ist leicht zu finden, mein Herr. Das ist ein Riesengebäude im nordöstlichen Teil dieser Gegend."~ */
  IF ~~ THEN REPLY #27553 /* ~"Was kannst du mir über die Festhalle erzählen?"~ */ GOTO 22
  IF ~~ THEN REPLY #27554 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27555 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.2 25.6 34.1 35.1
  SAY #27366 /* ~"Ich bin noch nie dort gewesen, aber ich hab' mir den Weg dorthin beschreiben lassen - der Laden liegt im südöstlichen Teil dieser Gegend. Ein auffälliges Gebäude, am Ende einer breiten Treppe. Kann man gar nicht verfehlen."~ */
  IF ~~ THEN REPLY #27556 /* ~"Was weißt du über den Ort?"~ */ GOTO 23
  IF ~~ THEN REPLY #27557 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27558 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0 25.7
  SAY #27367 /* ~"Der Laden von Gonkalves, dem Schneider, liegt nordöstlich des Tors zum Unteren Bezirk - durch das Ihr höchstwahrscheinlich hierher gekommen seid. Es ist ein großes Gebäude, dessen Eingang auf der Südseite liegt."~ */
  IF ~~ THEN REPLY #27559 /* ~"Was kannst du mir über den Ort erzählen?"~ */ GOTO 24
  IF ~~ THEN REPLY #27560 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27561 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1 35.0
  SAY #27368 /* ~Er nickt, senkt seine Stimme und flüstert. "Ihr wißt schon... Baator, der Abgrund und so. Schreckliche Orte."~ */
  IF ~~ THEN REPLY #27562 /* ~"Du hast gesagt, sie sei ein Halbscheusal?"~ */ GOTO 35
  IF ~~ THEN REPLY #27563 /* ~"Wo finde ich diesen Kuriositätenladen?"~ */ GOTO 32
  IF ~~ THEN REPLY #27564 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27565 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27566 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.0 34.0
  SAY #27369 /* ~"Zwar kein Tiefling, aber ein echtes Halbscheusal. Tochter eines Inkubus und einer sterblichen Frau, habe ich gehört. Aber ich gebe nichts auf Geschwätz, also laßt uns nicht weiter darüber sprechen."~ */
  IF ~~ THEN REPLY #27567 /* ~"Du hast gesagt, ihre Waren stammten aus den Unteren Ebenen?"~ */ GOTO 34
  IF ~~ THEN REPLY #27568 /* ~"Wo finde ich diesen Kuriositätenladen?"~ */ GOTO 32
  IF ~~ THEN REPLY #27569 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27570 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27571 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 18.0 22.0
  SAY #27370 /* ~"Ja. Ihr richtiger Name ist 'Gesellschaft der Empfindung'. Sie glauben, daß die wahre Natur des Multiversums nur durch direkte Erfahrung entdeckt werden kann..."~ */
  IF ~~ THEN REPLY #27572 /* ~"Verstehe. Erzähl weiter."~ */ GOTO 48
  IF ~~ THEN REPLY #27573 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27574 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 48.0
  SAY #27371 /* ~"Sie haben tatsächlich einen Weg gefunden, wie sie ihre Erfahrungen mit anderen teilen können, und zwar mit Hilfe der Sinnsorien."~ */
  IF ~~ THEN REPLY #27575 /* ~"Sinnsorien?"~ */ GOTO 38
  IF ~~ THEN REPLY #27576 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27577 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.1 37.0
  SAY #27372 /* ~"Die Sinnsaten können Erfahrungen in Steinen speichern und *anderen* damit die Möglichkeit geben, dieselben Erfahrungen zu machen. Die Sinnsaten ziehen durch die Ebenen und suchen in ihrem Innern nach Erfahrungen, die sie mit anderen teilen können...in ihren Sinnsorien ist praktisch alles gespeichert, was sie gefühlt oder wahrgenommen haben."~ */
  IF ~~ THEN REPLY #27578 /* ~"Wo befinden sich diese Sinnsorien?"~ */ GOTO 39
  IF ~~ THEN REPLY #27579 /* ~"Diese Erfahrungen... sind sie wie Erinnerungen?"~ */ GOTO 40
  IF ~~ THEN REPLY #27580 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27581 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.1
  SAY #27373 /* ~"In der Städtischen Festhalle. Dort gibt es Sinnsorien, die für die Öffentlichkeit und solche, die nur für Sinnsaten zugänglich sind. Man muß zwar Eintrittsgeld bezahlen, aber gemessen an den Erfahrungen ist es ein extrem billig."~ */
  IF ~~ THEN REPLY #27582 /* ~"Wo ist die Festhalle?"~ */ GOTO 31
  IF ~~ THEN REPLY #27583 /* ~"Diese Erfahrungen... sind sie wie Erinnerungen?"~ */ GOTO 40
  IF ~~ THEN REPLY #27584 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27585 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.1
  SAY #27374 /* ~"In gewisser *Weise* ja, aber wie sehr intensive... und nicht wie Erinnerungen, die man selbst gehabt hat, sondern die von anderen stammen, und die im Stein gespeichert sind."~ */
  IF ~~ THEN REPLY #27586 /* ~"Gespeichert? Verliert man seine Erinnerung oder Erfahrung, wenn sie in den Stein gesteckt wird?"~ */ GOTO 41
  IF ~~ THEN REPLY #27587 /* ~"Wo befinden sich diese Sinnsorien?"~ */ GOTO 39
  IF ~~ THEN REPLY #27588 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27589 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #27375 /* ~"Nein..." Er runzelt die Stirn. "Zumindest nicht soweit ich weiß. Ich glaube, daß der Stein die Sinneserfahrung *kopiert*. Aber Ihr könnt ja einen Sinnsaten fragen."~ */
  IF ~~ THEN REPLY #27590 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27591 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.5
  SAY #27376 /* ~"Der Name kommt mir bekannt vor...ist sie nicht so 'ne Art Galionsfigur? Oder eine Figur in einem Buch...? Ich kann mich nicht erinnern."~ */
  IF ~~ THEN REPLY #27592 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27593 /* ~"Nun, nichts für ungut. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 43 // from:
  SAY #27377 /* ~"Ah, der Wanderer kreuzt wieder meinen Weg." Der Mann lächelt dich über seine Tasse hinweg an. "Noch mehr Fragen?"~ */
  IF ~~ THEN REPLY #27594 /* ~"Das stimmt."~ */ GOTO 4
  IF ~~ THEN REPLY #27595 /* ~"Eigentlich, nein.... Ich geh nur gerade hier lang. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 3.2
  SAY #27378 /* ~Der Mann zieht eine Augenbraue hoch. "Wie bitte?"~ */
  IF ~~ THEN REPLY #27596 /* ~"Ich sagte: 'Ich bin tot!'" Tot, tot, la-la! Tot, tot, la-la..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_2","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #27597 /* ~"Vergiß es. Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27598 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #27379 /* ~Der Mann macht ein sehr mißtrauisches Gesicht. "Äh, ja... sind wir das nicht alle. Ich muß jetzt gehen. Ich habe noch etwas Dringendes zu erledigen."~ */
  IF ~~ THEN REPLY #27599 /* ~"Warte! Ich hab' dir doch noch nicht gesagt, *warum* ich tot bin..."~ */ GOTO 46
  IF ~~ THEN REPLY #27600 /* ~"Einen Moment. Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27601 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #27380 /* ~Er geht einen Schritt zurück. "Das interessiert mich nicht."~ */
  IF ~~ THEN REPLY #27602 /* ~"Weil ich zu viele Menschen in meinen vorherigen Leben getötet hab'."~ */ GOTO 47
  IF ~~ THEN REPLY #27603 /* ~"Macht ja nichts. Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27604 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #27381 /* ~"Wachen!"~ */
  IF ~~ THEN REPLY #27605 /* ~Greif ihn an.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #27606 /* ~Versuch zu verschwinden, bevor jemand kommt.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.0
  SAY #27382 /* ~"Sie verbringen ihr Leben damit, soviel wie möglich über das Multiversum zu erfahren. Sie reisen durch die Ebenen und in die Tiefen ihres eigenen Geistes und ihrer Gefühle. Aber sie gehen noch einen Schritt weiter..."~ */
  IF ~~ THEN REPLY #27607 /* ~"Wie das?"~ */ GOTO 37
  IF ~~ THEN REPLY #27608 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27609 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END
