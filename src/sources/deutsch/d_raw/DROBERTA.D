// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROBERTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DROBERTA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  Global("Roberta","AR0700",0)
~ THEN BEGIN 0 // from:
  SAY #58513 /* ~Du siehst eine gut gekleidete Frau mittleren Alters. Sie macht ein finsteres Gesicht und scheint jemanden oder etwas zu suchen.~ */
  IF ~~ THEN REPLY #58514 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #58515 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58516 /* ~Sie hält inne und starrt dich einen Moment lang an bevor sie antwortet: "Wer bist du und was willst du von mir?"~ */
  IF ~~ THEN REPLY #58517 /* ~Lüge: "Ich bin Adahn, und ich habe ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Roberta_1","GLOBALLAW",-1)
IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58518 /* ~"Ich kann mich nicht an meinen Namen erinnern."~ */ GOTO 17
  IF ~~ THEN REPLY #58519 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 19.0
  SAY #58520 /* ~Sie hält dir die Hand hin. "Guten Tag, Schleifer. Ich bin Roberta."~ */
  IF ~~ THEN REPLY #58521 /* ~Du nimmst ihre Hand und verneigst dich: "Sei gegrüßt, Lady Roberta."~ */ DO ~SetGlobal("Roberta","AR0700",1)
~ GOTO 3
  IF ~~ THEN REPLY #58522 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("Roberta","AR0700",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58523 /* ~"Du hattest ein paar Fragen an mich, glaube ich?"~ */
  IF ~~ THEN REPLY #58524 /* ~"Ja, gnädige Frau."~ */ GOTO 4
  IF ~~ THEN REPLY #58525 /* ~"Schon gut, gnädige Frau. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.1 7.1 8.1 9.1 12.0 13.0 14.0 15.1 16.0 20.3 21.1
  SAY #58526 /* ~"Ich steh dir zu Diensten. Frag nur."~ */
  IF ~~ THEN REPLY #58527 /* ~"Ich suche nach einem Deva. Mir ist zu Ohren gekommen, er sei in Verdammnis."~ */ GOTO 5
  IF ~  Global("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #58528 /* ~"Du scheinst besorgt. Stimmt etwas nicht?"~ */ GOTO 6
  IF ~~ THEN REPLY #58529 /* ~"Ist hier was Interessantes los?"~ */ GOTO 13
  IF ~~ THEN REPLY #58530 /* ~"Kannst du mir etwas über Verdammnis erzählen?"~ */ GOTO 14
  IF ~~ THEN REPLY #58531 /* ~"Wer hat hier das Kommando?"~ */ GOTO 15
  IF ~~ THEN REPLY #58532 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58533 /* ~Sie überlegt einen Moment. "Das Gerücht ist mir auch zu Ohren gekommen. Leider kann ich dir nicht weiterhelfen. Mir ist nicht bekannt, wo sich dieses Wesen aufhält. Du solltest im Verwaltungsbüro auf dem Marktplatz nachfragen."~ */
  IF ~~ THEN REPLY #58534 /* ~"Aha. Ich habe da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58536 /* ~"Ich danke Dir. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #58538 /* ~Sie runzelt die Stirn. "Ja... Mein Mann, Carl Parfidor, ist nicht dort, wo er gesagt hat. Es ist nicht das erste Mal, daß er mich über seinen Aufenthaltsort belügt, und ich glaube allmählich, daß er..." Sie zögert einen Moment. "Ich glaube langsam, daß er bei einer anderen ist. Einer Hure."~ */
  IF ~~ THEN REPLY #58539 /* ~"Warum glaubst du das?"~ */ GOTO 7
  IF ~~ THEN REPLY #58541 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58544 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58545 /* ~Sie seufzt. "Vor unserer Ehe war er nicht gerade ein Kostverächter, besonders bei dieser Art von Damen, und mir sind Gerüchte zu Ohren gekommen..." Sie sieht wütend aus. "Falls sich diese Gerüchte als wahr herausstellen, kann er eine Überraschung erleben."~ */
  IF ~~ THEN REPLY #58546 /* ~"Eine Überraschung?"~ */ GOTO 8
  IF ~~ THEN REPLY #58548 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58550 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58552 /* ~"Ja." Sie hebt ihren Rock, und zeigt die Innenseite ihrer Schenkel. Du siehst einen Dolch, der an seiner Scheide an ihrem Schenkel festgeschnallt ist. Sie zieht die Klinge und verzieht den Mund zu einem boshaften Lächeln. "Glaubst du nicht auch, er wäre überrascht, wenn er dies hier in seinem Rücken fände?" Sie steckt die Klinge wieder weg.~ */
  IF ~~ THEN REPLY #58555 /* ~"Du willst ihn also umbringen?"~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",1)
~ JOURNAL #58565 /* ~Eine Frau namens Roberta Parfidor möchte ihren Mann gerne tot sehen. Er scheint zuviel Gefallen an anderen Frauen zu finden, und das mißfällt Roberta. Sehr interessant.~ */ GOTO 9
  IF ~~ THEN REPLY #58558 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58561 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58570 /* ~Ihr Lächeln erlischt langsam, als sie über ihre Worte nachdenkt. Schließlich seufzt sie und steckt den Dolch zurück in die Scheide. "Ich würde es tun, wenn ich könnte... aber es geht nicht, ich bin eine Närrin. Carl und ich sind... uns nicht mehr so nah. Ich würde gar nicht nah genug an ihn herankommen, um ihm den Stoß zu versetzen." Sie sieht einen Moment weg. "Das könnte höchstens eine seiner *Frauen*..." ~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #58582 /* ~"Ich kenne eine Hure mit Namen Kiri. Sie braucht Geld. Vielleicht könnte sie nah genug herankommen, um die Tat auszuführen..."~ */ GOTO 10
  IF ~~ THEN REPLY #58583 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58584 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 21.0
  SAY #58585 /* ~Sie starrt dich einen Augenblick lang an. "Ich verstehe..." Sie sieht sich um und lehnt sich dann zu dir herüber. "Wärest du bereit, sie anzusprechen und ihr... Arbeit anzubieten? Ich zahle jedem von euch fünfhundert Münzen, wenn die Tat vollbracht ist."~ */
  IF ~~ THEN REPLY #58586 /* ~"Das ist nicht gerade viel Klimper."~ */ GOTO 11
  IF ~~ THEN REPLY #58587 /* ~"Ne danke. Leb wohl."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ JOURNAL #58589 /* ~Ich habe mich geweigert, Roberta Parfidor zu helfen, ihren Mann Karl zu töten.~ */ EXIT
  IF ~~ THEN REPLY #58588 /* ~"Ich kann den Klimper gebrauchen. Ich werde mit Kiri sprechen."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Roberta_1","GLOBALGood",-1)
~ JOURNAL #58590 /* ~Ich habe mich einverstanden erklärt, Roberta Parfidor zu helfen, ihren Mann Karl zu töten. Ich muß mit der Hure Kiri sprechen und sie fragen, ob sie den Job übernehmen will.~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58591 /* ~Sie sieht dich ärgerlich an. "Hmmm. Das mag wohl sein, aber mehr bin ich nicht bereit zu zahlen. Ihr beide könnt um fünfhundert Münzen reicher sein... oder es lassen. Die Entscheidung liegt bei dir."~ */
  IF ~~ THEN REPLY #58592 /* ~"Ich passe. Wiedersehen."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ JOURNAL #58589 /* ~Ich habe mich geweigert, Roberta Parfidor zu helfen, ihren Mann Karl zu töten.~ */ EXIT
  IF ~~ THEN REPLY #58593 /* ~"Ich kann den Klimper gebrauchen. Ich werde mit Kiri sprechen."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Roberta_1","GLOBALGood",-1)
~ JOURNAL #58590 /* ~Ich habe mich einverstanden erklärt, Roberta Parfidor zu helfen, ihren Mann Karl zu töten. Ich muß mit der Hure Kiri sprechen und sie fragen, ob sie den Job übernehmen will.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.1 22.1
  SAY #58594 /* ~Sie lächelt. "Großartig. Wenn sie einverstanden ist, soll sie die Tat ruhig ausführen, wann es ihr am besten paßt. Aber trödelt nicht herum! Wenn es geschehen ist, komm zu mir, und ich werde mich um die Bezahlung kümmern."~ */
  IF ~~ THEN REPLY #58595 /* ~"Ich habe noch weitere Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58596 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY #58597 /* ~Sie denkt einen Augenblick lang nach. "Ich habe gehört, daß vor kurzem eine junge Frau verschwunden ist. Die Tochter eines Gastwirts. Ich weiß nichts Genaueres darüber. Ansonsten fällt mir im Moment nichts Ungewöhnliches ein."~ */
  IF ~~ THEN REPLY #58598 /* ~"Aha. Ich habe da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58599 /* ~"Ich danke Dir. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.3
  SAY #58600 /* ~Sie lächelt dich an und sagt lachend: "Verdammnis ist ein Misthaufen, und wir sind die Exkremente in ihm." Sie zuckt die Schultern. "Sonst gibt es zu dem Thema nichts zu sagen."~ */
  IF ~~ THEN REPLY #58601 /* ~"Aha. Ich habe da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58602 /* ~"Ich danke Dir. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.4
  SAY #58603 /* ~"Tovus Giljaf. Du findest ihn im Verwaltungsbüro auf dem Marktplatz."~ */
  IF ~~ THEN REPLY #58604 /* ~"Was kannst du mir über Tovus erzählen?"~ */ GOTO 16
  IF ~~ THEN REPLY #58605 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58606 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58607 /* ~"Tovus ist manchmal ziemlich... anstrengend." Sie denkt kurz nach. "Ich weiß wenig von ihm, bis auf die Tatsache, daß er ein Githzerai ist und ein Zauberer."~ */
  IF ~~ THEN REPLY #58608 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58609 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.1
  SAY #58610 /* ~Sie sieht dich mit leichtem Erstaunen an. "Wirklich? Bist du etwa ein Sucher? Ich hab gehört, daß sie oft ihr Gedächtnis verlieren."~ */
  IF ~~ THEN REPLY #58611 /* ~"Was ist ein Sucher?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58612 /* ~Sie überlegt einen Augenblick. "Sucher sind solche, die gestorben sind und ihren Körper auf der Ebene erneuert haben, welche ihrem Glauben am nächsten kommt. Sie wissen gewöhnlich nichts von ihrem früheren Leben. Vielleicht ist das auch bei dir der Fall."~ */
  IF ~~ THEN REPLY #58613 /* ~"Kann sein... Diese Wiedergeburt, wie oft kann die stattfinden?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58614 /* ~"Naja, ich bin keine Expertin auf dem Gebiet, aber soviel ich weiß, findet sie nur einmal statt. Mit dem Tode kehrt der Geist zur Ebene zurück. Es sei denn natürlich, du bist auf eine andere Ebene gekommen. In dem Fall bringt dir der Tod Vergessen." ~ */
  IF ~~ THEN REPLY #58615 /* ~"Ich verstehe. Na, jedenfalls habe ich keinen Namen, mit dem ich mich dir vorstellen könnte."~ */ GOTO 2
  IF ~~ THEN REPLY #58616 /* ~"Ich danke dir. Ich muß mich nun verabschieden. Auf Wiedersehen."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  Global("Roberta","AR0700",1)
~ THEN BEGIN 20 // from:
  SAY #58617 /* ~Du siehst Roberta. Sie lächelt dich an, als du näherkommst. "Guten Tag, Schleifer. Was kann ich für dich tun?"~ */
  IF ~  Global("Snuff_Carl","GLOBAL",1)
~ THEN REPLY #58618 /* ~"Möchtest du immer noch, daß dein Mann... beseitigt wird?"~ */ GOTO 21
  IF ~  Global("Snuff_Carl","GLOBAL",2)
~ THEN REPLY #58619 /* ~"Möchtest du immer noch, daß dein Mann... beseitigt wird?"~ */ GOTO 22
  IF ~  Global("Snuff_Carl","GLOBAL",3)
~ THEN REPLY #58620 /* ~"Möchtest du immer noch, daß dein Mann... beseitigt wird?"~ */ GOTO 23
  IF ~~ THEN REPLY #58621 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58622 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #58623 /* ~Sie lächelt dich an. "Und ob ich das will! Warum fragst du?"~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #58624 /* ~"Ich kenne eine Hure mit Namen Kiri. Sie braucht Geld. Vielleicht könnte sie nah genug herankommen, um die Tat auszuführen..."~ */ GOTO 10
  IF ~~ THEN REPLY #58625 /* ~"Nur aus Neugier. Ich habe noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58626 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #58627 /* ~Sie sieht dich finster an. " Und ob ich das will! Aber du hast ja mein Angebot von fünfhundert Münzen pro Kopf für dich und deinen Komplizen ausgeschlagen. Heißt das, du hast es dir anders überlegt?"~ */
  IF ~~ THEN REPLY #58628 /* ~"Nein, eigentlich nicht. Wiedersehen."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #58629 /* ~"Ich kann den Klimper gebrauchen. Ich werde mit Kiri sprechen."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
~ GOTO 12
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY #58637 /* ~Sie sieht dich finster an. "Und ob ich das will! Du hast den Auftrag bereits angenommen. Ist die Tat vollbracht?"~ */
  IF ~~ THEN REPLY #58638 /* ~"Nein, noch nicht. Ich arbeite daran. Wiedersehen."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 27 even though they appear after this state */
~  !Dead("BDKIRI")
Global("Carl_Snuffed","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #58639 /* ~Du siehst Roberta. Sie sieht zur Abwechslung mal recht glücklich aus. Sie sieht sich vorsichtig und prüfend um. "Hallo. Ich nehme wohl an, du kommst, um dein Geld zu holen?" Sie lächelt dich an.~ */
  IF ~~ THEN REPLY #58640 /* ~"Ja, der Auftrag, den du mir erteilt hast, ist ausgeführt."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #58641 /* ~Sie sieht sich um, bevor sie antwortet. "Schön. Hier ist das Geld, das ich dir versprochen habe." Für einen Augenblick sieht sie besorgt aus. "Öh... Dein Kumpane hat wirklich... *ganze* Arbeit bei Carl geleistet. Meinen Glückwunsch euch beiden." Sie reicht dir eine schwere Geldbörse. "Hier ist dein Anteil, Kiri habe ich schon ausgezahlt."~ */
  IF ~~ THEN REPLY #58642 /* ~"Danke. Es war mir eine Freude, mit dir Geschäfte zu machen."~ */ DO ~GivePartyGold(500)
AddexperienceParty(2000)
SetGlobal("Carl_Snuffed","GLOBAL",2)
SetGlobal("Snuff_Carl","GLOBAL",4)
~ GOTO 32
END

IF WEIGHT #1 /* Triggers after states #: 27 even though they appear after this state */
~  Global("Carl_Snuffed","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #58643 /* ~Du siehst Roberta. "Hallo Schleifer, wieder hier? Kann ich dir behilflich sein?"~ */
  IF ~  Global("See_Tovus","GLOBAL",1)
~ THEN REPLY #58644 /* ~"Ja, ich würde gern mit Tovus Giljaf sprechen. Glaubst du, du könntest das arrangieren?"~ */ GOTO 33
  IF ~~ THEN REPLY #4773 /* ~"Nein, das wär's. Bis dann."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #58645 /* ~Du siehst Roberta. Als sie dich bemerkt, verzerrt sich ihr Gesicht vor Wut. "Du! Du madenverseuchtes Stück Dreck! Sieh dir an, was aus mir geworden ist durch dich!" Ihr Gesicht ist so rot, daß du denkst, sie platzt gleich.~ */
  IF ~~ THEN REPLY #58646 /* ~"Durch mich? Ich bin nicht derjenige, der geplant hat, seinen Ehepartner umzubringen."~ */ GOTO 28
  IF ~~ THEN REPLY #58647 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #58648 /* ~Ihre Augen ziehen sich zu engen Schlitzen zusammen, und sie spuckt dir ihre Worte fast ins Gesicht. "Du hast mein Vertrauen mißbraucht! Carl hat sich an deinem Verrat ergötzt, bevor er mich hier einsperren ließ! Du Saat einer Hure!"~ */
  IF ~~ THEN REPLY #58649 /* ~"Apropos Hure: Ist Kiri auch hier unten gelandet?"~ */ GOTO 29
  IF ~~ THEN REPLY #58650 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #58651 /* ~Sie schreit dich an: "Arrrrrrhhh! Du kennst die Antwort, du Schweinehund! Du willst mich nur noch mehr quälen mit deinem unschuldigen Getue!" ~ */
  IF ~~ THEN REPLY #58652 /* ~"Tu so, als wüßte ich es nicht, und erzähl mir, was aus ihr geworden ist."~ */ GOTO 30
  IF ~~ THEN REPLY #58653 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #58654 /* ~"Das hinterhältige Miststück ist Carls Geliebte geworden und so dem Gefängnis entronnen!"~ */
  IF ~~ THEN REPLY #58655 /* ~"Cleveres Mädchen... Na dann, ich muß weiter. Leb wohl."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #58656 /* ~Sie starrt dich mit haßerfüllten Augen an. "Ja,... geh nur fort! Aber eines sollst du wissen: Ich werde nicht ewig in diesem Loch sitzen, und ich werde euch nicht vergessen, dich und diese Schlampe!"~ */
  IF ~~ THEN REPLY #58657 /* ~Beachte sie nicht und geh.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.0
  SAY #58658 /* ~Sie neigt leicht den Kopf vor dir. "Kann ich sonst noch was für dich tun?"~ */
  IF ~  Global("See_Tovus","GLOBAL",1)
~ THEN REPLY #58659 /* ~"Ja, ich würde gern mit Tovus Giljaf sprechen. Glaubst du, du könntest das arrangieren?"~ */ GOTO 33
  IF ~~ THEN REPLY #58660 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.0 32.0
  SAY #58661 /* ~Sie lächelt dich an. "Tovus... Tut mir leid, Schleifer, aber er ist zur Zeit sehr beschäftigt. Ich habe es selbst nicht geschafft, mit ihm zu reden."~ */
  IF ~~ THEN REPLY #58662 /* ~"Danke. Leb wohl."~ */ EXIT
END
