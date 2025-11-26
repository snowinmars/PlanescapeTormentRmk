// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRIST~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #37971 /* ~...~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #37972 /* ~Du siehst eine junge Frau, die versucht, deine Aufmerksamkeit zu erheischen. Sie läuft zwar in abgetragener Kleidung herum, aber ihr Auftreten ist eher elegant verglichen mit den Leuten um sie herum. Bei näherer Betrachtung fällt dir auf, daß ihre Haut sauber und glatt ist und keinen Gelbstich hat wie die der Bewohner dieses Bezirks. Sie sieht dich herankommen und lächelt dich an.
~ */
  IF ~~ THEN REPLY #37973 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #37974 /* ~Beachte sie nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37975 /* ~"Dank sei den Mächten, daß Ihr mich bemerkt habt. Ich brauche die Dienste eines Söldners..." Sie macht eine Pause und betrachtet dich genauer. "Wenn man nach dem Aussehen gehen darf, so seid Ihr wohl solch ein Mensch."~ */
  IF ~~ THEN REPLY #37976 /* ~"Der erste Eindruck kann täuschen."~ */ GOTO 3
  IF ~~ THEN REPLY #37977 /* ~"Was genau willst du eigentlich von mir?"~ */ GOTO 4
  IF ~~ THEN REPLY #37978 /* ~"Mir gefällt das Ganze nicht so recht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37979 /* ~Ein besorgter Blick verdunkelt ihr Gesicht. "Ja, Schleifer. Vergib mir, ich wollte dich nicht beleidigen. Ich bin in einer Situation... tja, höchster Verzweiflung. Ich habe alle Quellen erschöpft, die mir zur Verfügung stehen, um meine Situation zu erleichtern, aber..."~ */
  IF ~~ THEN REPLY #37980 /* ~"Was genau willst du eigentlich von mir?"~ */ GOTO 4
  IF ~~ THEN REPLY #37981 /* ~"Mir gefällt das Ganze nicht so recht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #37982 /* ~Sie nickt dir zu. "Die Sache ist die, daß ich als Sklavin verkauft werden soll für ein Verbrechen, das ich nicht begangen habe. Ich brauche einen wahren Helden, jemanden, der mir hilft, meine Unschuld zu beweisen und mich vor diesem Schicksal zu bewahren..." Sie hält inne und sieht dich erwartungsvoll an.~ */
  IF ~~ THEN REPLY #37983 /* ~"Sag mir genau, was los ist."~ */ GOTO 5
  IF ~~ THEN REPLY #37984 /* ~"Mir gefällt das Ganze nicht so recht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37985 /* ~Sie denkt einen Moment lang nach. "Das ist eine lange Geschichte, Schleifer, hab also bitte Geduld mit mir."~ */
  IF ~~ THEN REPLY #37986 /* ~"Red' weiter."~ */ GOTO 6
  IF ~~ THEN REPLY #37987 /* ~"Für so was hab' ich keine Zeit. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 24.0 25.1 26.1
  SAY #37988 /* ~Sie seufzt und beginnt zu erzählen: "Mein Mann ist vor kurzem gestorben und hinterließ mir sein Geschäft. Ich bin keine Geschäftsfrau, also beschloß ich zu verkaufen. Nicht viel später sagte mir ein Geldverleiher, daß ein Darlehen nicht zurückgezahlt worden wäre..." Sie macht eine kurze Pause, um ihre Gedanken zu sammeln.~ */
  IF ~~ THEN REPLY #37989 /* ~"Erzähl weiter."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37990 /* ~"Ich habe alle Dokumente untersucht, die mein Mann aufgehoben hat, und tatsächlich entdeckt, daß er Geld geliehen hatte. Ich fand aber auch, daß er erst vor kurzem alles zurückgezahlt hatte. Ich habe das dem Gläubiger erzählt, und einige Tage später bat er mich um eine Kopie des Dokuments... Ich konnte es nirgendwo finden." Sie sieht besorgt aus und denkt einen Augenblick lang nach.~ */
  IF ~~ THEN REPLY #37991 /* ~"Erzähl weiter."~ */ GOTO 8
  IF ~~ THEN REPLY #51297 /* ~"Ich glaube, ich hab genug gehört. Komm zur Sache."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37992 /* ~"Nun, da ich nicht beweisen konnte, daß die Anleihe zurückgezahlt worden war, brachte mich der Geldverleiher vor Gericht. All mein Geld wurde mir genommen und mit dem ausstehenden Betrag verrechnet. Da es aber nicht genug war, die Anleihe vollständig abzuzahlen, soll ich auf dem Podest verkauft werden, um so möglichst die restlichen Schulden einzutreiben." Sie sieht dich verloren an.~ */
  IF ~~ THEN REPLY #37993 /* ~"Ich versteh das nicht. Wieso wirst du als Sklavin verkauft?"~ */ GOTO 9
  IF ~~ THEN REPLY #37994 /* ~"Ich glaube, ich hab genug gehört. Komm zur Sache."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #37995 /* ~Sie zuckt mit den Schultern. "Das hat viele Gründe. Erstens werden so die Gefängnisse relativ leer gehalten, denn nur die schlimmsten Verbrecher landen dort. Zweitens werden mit der Verkaufssumme der verurteilten Person eventuelle Schadenssummen, Kosten oder Gebühren beglichen, die mit dem Fall zu tun haben. Und schließlich müssen so die Verurteilten noch immer eine Strafe verbüßen, aus der sie irgendann entlassen werden... theoretisch als bessere Bürger."~ */
  IF ~~ THEN REPLY #37996 /* ~"Das ist alles sehr faszinierend, aber ich sehe nicht recht, wie ich dir helfen kann."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 7.1 8.1 9.0
  SAY #37998 /* ~"Ich... Ich brauche jemanden, der den fehlenden Beleg findet, mit dem bewiesen wird, daß die Leihsumme zurückgezahlt wurde. Oder wenn du vielleicht meinen Vertrag kaufen könntest, dann würde ich dir das Geld zurückzahlen..." Sie sieht dich bittend an. "Ich kann nicht die nächsten fünf Jahre meines Lebens in diesem Bezirk verbringen, Schleifer. Das wird mich umbringen! Du hast doch sicher die Krankheit bemerkt, die alle haben, die hier leben?"~ */
  IF ~~ THEN REPLY #37999 /* ~"Nein, von was für einer Krankheit sprichst du?"~ */ GOTO 11
  IF ~~ THEN REPLY #38000 /* ~"Ja, gelbe Haut und Hustenreiz..."~ */ GOTO 12
  IF ~~ THEN REPLY #38001 /* ~"Das alles geht mich nichts an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #38002 /* ~Sie gestikuliert zu den Leuten um sich herum. "Sieh sie dir an, Schleifer. Siehst du die gelbe Haut? Das hartnäckige Husten? Und jetzt sieh nach oben, auf die Rauchschwaden, die sie hier Luft nennen..." Sie zeigt über ihren Kopf. "Das bringt dich um, wenn du dir keinen Heiler leisten kannst. Und als Sklavin werde ich sicher nicht genug Geld haben, um mir einen leisten zu können."~ */
  IF ~~ THEN REPLY #38003 /* ~"Deshalb haben also alle so gelbe Haut..."~ */ GOTO 12
  IF ~~ THEN REPLY #38004 /* ~"Das alles geht mich nichts an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0 25.0 26.0
  SAY #38005 /* ~Sie nickt mit dem Kopf. "Ja, Schleifer. Bitte, hab ein Herz und hilf mir..." Sie sieht dich nervös an. "Bitte..."~ */
  IF ~~ THEN REPLY #38006 /* ~"Was springt für mich dabei raus, wenn ich dir helfe?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trist_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~~ THEN REPLY #38007 /* ~Wahrheit: "Du wurdest vor Gericht für schuldig befunden. Nur das Gesetz kann dir helfen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trist_1","GLOBALLaw",1)
~ GOTO 37
  IF ~~ THEN REPLY #38008 /* ~"Ja, ich helfe dir. Aber ich habe ein paar Fragen..."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ JOURNAL #37704 /* ~Eine Frau namens Trist soll in die Sklaverei verkauft werden, wenn nicht ein verlorengegangener Schuldschein gefunden werden kann. Ich habe eingewilligt, ihr zu helfen.~ */ GOTO 13
  IF ~~ THEN REPLY #38009 /* ~"Nein, ich will damit nichts zu tun haben."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38010 /* ~"Ich brauche etwas Zeit, um darüber nachzudenken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.2 15.1 16.0 17.0 18.4 19.1 20.0 21.0 22.0 23.0 27.1 35.1 36.1 37.0
  SAY #38011 /* ~Sie nickt eifrig. "Frag nur, was immer du willst, Schleifer."~ */
  IF ~~ THEN REPLY #38012 /* ~"Wie heißt der Geldverleiher?"~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #38013 /* ~"Mit wem muß ich wegen deines Vertrages reden?"~ */ GOTO 16
  IF ~~ THEN REPLY #38014 /* ~"Könnte es sein, daß du den Schuldschein verlegt hast?"~ */ GOTO 17
  IF ~~ THEN REPLY #38015 /* ~"Glaubst du, der Schuldschein könnte gestohlen worden sein?"~ */ GOTO 18
  IF ~~ THEN REPLY #38016 /* ~"Hast du das alles auch den Gerichten erzählt, die du erwähnt hast?"~ */ GOTO 21
  IF ~~ THEN REPLY #38017 /* ~"Ich glaube, ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #38018 /* ~"Ich kenne seinen Namen nur zu gut, Schleifer. Nach allem, was ich durchgemacht habe, werde ich ihn wohl nie vergessen..." Sie bekommt einen entrückten Blick und schaudert dann einen Moment lang. "Byron Nimms ist sein Name." Sie hält einen Moment lang inne. "Und sein Komplize könnte jemand namens Lenny sein."~ */
  IF ~~ THEN REPLY #38019 /* ~"Wer ist dieser Lenny?"~ */ DO ~SetGlobal("Know_Lenny","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #38020 /* ~"Wo finde ich Byron?"~ */ GOTO 15
  IF ~~ THEN REPLY #38021 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #38022 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1 36.0
  SAY #38023 /* ~Sie denkt einen Moment nach. "Ich denke, Ihr könnt ihn auf dem Straßenmarkt oder irgendwo dort in der Gegend finden. Vergebt mir, aber ich bin nicht sicher."~ */
  IF ~~ THEN REPLY #38024 /* ~"Du sagtest was von einem Lenny. Wer ist das?"~ */ DO ~SetGlobal("Know_Lenny","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #38025 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #38026 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #38027 /* ~"Das wäre dann Deran, der Auktionator. Er ist in der Regel da drüben, auf dem Block." Sie zeigt vorn auf die Plattform.~ */
  IF ~~ THEN REPLY #38028 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #38029 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY #38030 /* ~Sie schüttelt den Kopf. "Nein, Schleifer. Ich bin ein sehr sorgfältiger Mensch. Ich habe den Beleg in einer verschließbaren Kassette meines Mannes aufbewahrt. Er hat diesen Raum nie verlassen..."~ */
  IF ~~ THEN REPLY #38031 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #38032 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.3
  SAY #38033 /* ~Sie zuckt die Achseln. "Ich weiß es nicht. Warum sollte jemand so etwas stehlen und andere Wertsachen daneben unberührt lassen? Das ergibt für mich keinen Sinn."~ */
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #38034 /* ~"Weißt du,... vielleicht hat der Geldverleiher ja den Beleg gestohlen, damit du zweimal für den Kredit zahlst..."~ */ GOTO 19
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #38035 /* ~"War nur so 'ne Idee..."~ */ GOTO 22
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #38034 /* ~"Weißt du,... vielleicht hat der Geldverleiher ja den Beleg gestohlen, damit du zweimal für den Kredit zahlst..."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #38035 /* ~"War nur so 'ne Idee..."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #38036 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #38037 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.2
  SAY #38038 /* ~Sie sieht dich schockiert an. "Das... das ist ein schrecklicher Gedanke!" Sie zögert und beginnt dann, mit einem Finger an ihr Kinn zu klopfen, während sie nachdenkt. "Aber auch ein wirklich genialer, Schleifer. Dieser Byron Nimms scheint mir durchaus ein Postenritter zu sein."~ */
  IF ~~ THEN REPLY #38039 /* ~"Ein was?"~ */ GOTO 20
  IF ~~ THEN REPLY #38040 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #38041 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #38042 /* ~Sie sieht dich verwundert an. "Ein Dieb oder ein Betrüger, Schleifer. Sie werden Postenritter oder auch Ritter des Querhandels genannt."~ */
  IF ~~ THEN REPLY #38043 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #38044 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.4
  SAY #38045 /* ~Sie nickt. "Oh ja, Schleifer. Ich habe meine Lage vielen Menschen geschildert. Aber du bist der erste, der bereit ist, mir zu helfen." Sie lächelt dich warm an.~ */
  IF ~~ THEN REPLY #38046 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #38047 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.1 18.3
  SAY #38048 /* ~Sie zuckt mit den Schultern. "Ein bemerkenswerter Gedanke, Schleifer. Er verdient Beachtung."~ */
  IF ~~ THEN REPLY #38050 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #38113 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.0
  SAY #38051 /* ~Sie starrt dich eine Weile verständnislos an, dann wird ihr Blick besorgt. "Ich... Ich hab nichts, was ich dir geben könnte, Schleifer. Ich hab doch alles verloren." Sie scheint jetzt wirklich verzweifelt zu sein. "Bitte überlaß mich nicht diesem Schicksal..."~ */
  IF ~~ THEN REPLY #38052 /* ~"Ja, ich helfe dir. Aber ich habe ein paar Fragen..."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ JOURNAL #37704 /* ~Eine Frau namens Trist soll in die Sklaverei verkauft werden, wenn nicht ein verlorengegangener Schuldschein gefunden werden kann. Ich habe eingewilligt, ihr zu helfen.~ */ GOTO 13
  IF ~~ THEN REPLY #38053 /* ~"Nein, ich will damit nichts zu tun haben."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38054 /* ~"Ich brauche etwas Zeit, um darüber nachzudenken. Leb wohl."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #38055 /* ~Du siehst Trist. Sie sieht dich mit Verzweiflung in den Augen an. "Hallo, Schleifer, da bist du ja wieder. Darf ich mit dir über eine heikle Angelegenheit sprechen?"~ */
  IF ~~ THEN REPLY #38056 /* ~"Also gut."~ */ GOTO 6
  IF ~~ THEN REPLY #38057 /* ~"Ich hab' jetzt keine Zeit. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 27 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #38058 /* ~Du siehst Trist. Sie sieht dich mit Verzweiflung in den Augen an. "Hallo, Schleifer, da bist du ja wieder. Bist du vielleicht gekommen, um mir zu helfen?"~ */
  IF ~~ THEN REPLY #38059 /* ~"Suchst du immer noch jemanden, der dir bei deinem Problem hilft?"~ */ GOTO 12
  IF ~~ THEN REPLY #38060 /* ~"Erzähl mir noch einmal deine Geschichte."~ */ GOTO 6
  IF ~~ THEN REPLY #38061 /* ~"Ich bin nicht interessiert. Leb wohl."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 27 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #38062 /* ~Du siehst Trist. Sie sieht dich mit Verzweiflung in den Augen an. "Hallo, Schleifer, da bist du ja wieder. Bist du vielleicht gekommen, um mir zu helfen? Hast du es dir anders überlegt?"~ */
  IF ~~ THEN REPLY #38063 /* ~"Suchst du immer noch jemanden, der dir bei deinem Problem hilft?"~ */ GOTO 12
  IF ~~ THEN REPLY #38064 /* ~"Erzähl mir noch einmal deine Geschichte."~ */ GOTO 6
  IF ~~ THEN REPLY #38065 /* ~"Nein, kein Interesse. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #38066 /* ~Du siehst Trist. Sie lächelt, als du dich näherst, und sieht hoffnungsvoll aus. "Hast du den Beleg gefunden, Schleifer? Kannst du mich befreien?"~ */
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #38067 /* ~"Ja. Ich werde ihn Deran geben, und er wird dich befreien."~ */ GOTO 28
  IF ~~ THEN REPLY #38068 /* ~"Ich muss dir noch ein paar Fragen stellen..."~ */ GOTO 13
  IF ~~ THEN REPLY #67814 /* ~"Nein, ich arbeite noch daran. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #38069 /* ~Ein Blick der Erleichterung breitet sich auf ihrem Gesicht aus. Du glaubst, daß sie gleich in Ohnmacht fallen wird, aber dann erholt sie sich schnell. "Ich danke dir, Schleifer. Bitte komm zu mir zurück, wenn du mit Deran gesprochen hast."~ */
  IF ~~ THEN REPLY #38070 /* ~"Das werde ich. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Trist_Quest","GLOBAL",4)
~ THEN BEGIN 29 // from:
  SAY #38071 /* ~Trist lächelt dich warm an. "Du bist mein Retter, Schleifer. Ich werde immer in deiner Schuld stehen."~ */
  IF ~~ THEN REPLY #38072 /* ~"Es freut mich, daß ich dir helfen konnte, Trist."~ */ GOTO 30
  IF ~~ THEN REPLY #38073 /* ~"Komm bloß nicht wieder bei mir an mit deinen Problemen. Das Ganze ist mir wirklich auf den Senkel gegangen."~ */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #38074 /* ~"Danke, Schleifer." Sie sieht sich um und hält dann einen Moment lang inne, um nachzudenken. "Du hast mich vor dem sicheren Tod bewahrt, Schleifer. Vor einem langsamen, schmerzvollen Tod..." Sie runzelt die Stirn und denkt nach. "Warte bitte hier, ich bin gleich zurück." Sie dreht sich um und geht weg.~ */
  IF ~~ THEN REPLY #38075 /* ~"OK, Trist."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #38077 /* ~Du siehst Trist näherkommen, und sie lächelt und winkt dir zu. "Hallo, Schleifer, da bin ich wieder. Danke, daß du gewartet hast." Sie sieht sich einen Moment lang um, dann zieht sie aus den Falten ihres Kleides eine Geldbörse. "Mit dem Beleg, den du für mich gefunden hast, werden die Gerichte meinen Status sowie meine Finanzen wiederherstellen. Dies ist nicht viel, aber es ist eine wohlverdiente Belohnung dafür, was du getan hast." Sie gibt dir eine Geldbörse.~ */
  IF ~~ THEN REPLY #38078 /* ~"Danke, Trist."~ */ DO ~AddexperienceParty(4000)
GiveGoldForce(1000)
~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #38079 /* ~Sie lächelt. "Nein, ich danke dir. Leb wohl, Schleifer."~ */
  IF ~~ THEN REPLY #38080 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #38081 /* ~Sie sieht dich stirnrunzend an und nickt dann. "Ja, Schleifer, das kann ich mir gut vorstellen. Tja, dann nochmals danke, und leb wohl." ~ */
  IF ~~ THEN REPLY #38082 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 14.0 15.0
  SAY #38083 /* ~Sie denkt einen Moment nach. "Da war so ein wild aussehender Mann, der einige Male vor Gericht dabei war. Dann saß er immer hinter Nimms und flüsterte ihm gelegentlich etwas zu." Sie hält inne und blickt gedankenverloren vor sich hin.~ */
  IF ~~ THEN REPLY #38084 /* ~"Red' weiter."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #38085 /* ~Sie runzelt die Stirn. "Ich erinnere mich an ihn, weil er sich in seiner Kleidung einfach unwohl zu fühlen schien. Er zupfte dauernd daran herum, als ob seine Sachen neu und unbequem wären, als ob er nicht gewöhnt wäre, so etwas zu tragen." Sie macht wieder eine Pause. "Einmal wies Nimms ihn dann zurecht, er solle endlich still sitzen und aufhören, so herumzuzappeln. Er nannte ihn Lenny."~ */
  IF ~~ THEN REPLY #38086 /* ~"Wo finde ich Lenny?"~ */ GOTO 36
  IF ~~ THEN REPLY #38087 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #38088 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #38089 /* ~Sie schüttelt den Kopf. "Ich weiß nicht... Mein Mann hat mir erzählt, daß es südöstlich vom Markt ein paar Schläger gäbe, in der Nähe des Belagerungsturms, glaube ich."~ */
  IF ~~ THEN REPLY #38090 /* ~"Wo finde ich Byron?"~ */ GOTO 15
  IF ~~ THEN REPLY #38091 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #38092 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 12.1
  SAY #38093 /* ~Besorgnis verdunkelt ihr Gesicht. "Dir ist doch sicher klar, daß sich auch das Gesetz manchmal irren kann, Schleifer? Wenn ein Unschuldiger wegen eines solchen Fehlers leiden müßte... Das wäre ein schrecklicher Justizirrtum." Sie wirkt jetzt wirklich verzweifelt. "Bitte überlaß mich nicht diesem Schicksal..."~ */
  IF ~~ THEN REPLY #38094 /* ~"Ja, ich helfe dir. Aber ich habe ein paar Fragen..."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ GOTO 13
  IF ~~ THEN REPLY #38095 /* ~"Nein, ich will damit nichts zu tun haben."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38096 /* ~"Ich brauche etwas Zeit, um darüber nachzudenken. Leb wohl."~ */ EXIT
END
