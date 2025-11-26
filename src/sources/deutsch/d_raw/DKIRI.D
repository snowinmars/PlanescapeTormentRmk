// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIRI~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #59069 /* ~Du siehst eine hübsche junge Frau. Ihr Gesicht ist gerötet und voller blauer Flecke, ihr Haar ist völlig durcheinander. Sie ist zwar hübsch angezogen, aber ihre Kleidung ist überall zerrissen. Sie bewegt sich vorsichtig die Straße entlang. Von Zeit zu Zeit wirft sie einen Blick über die Schulter.~ */
  IF ~~ THEN REPLY #59070 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #59071 /* ~Beachte sie nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #59072 /* ~Sie fährt bei deinem Gruß zusammen und schnellt zu dir herum. Ihre Augen fahren deine Narben entlang, und ein ängstlicher Ausdruck erscheint auf ihrem Gesicht. "Hallo, Schleifer. Ich bin Kiri. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #59073 /* ~"Du siehst so ängstlich aus. Was ist los?"~ */ GOTO 2
  IF ~~ THEN REPLY #59074 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.0
  SAY #59075 /* ~Sie zieht die Brauen zusammen und zuckt mit den Schultern. "Es gibt ein paar Leute hier, die mich nicht mögen. Ich gehe ihnen wenn möglich aus dem Weg."~ */
  IF ~~ THEN REPLY #59076 /* ~"Was haben sie gegen dich?"~ */ GOTO 3
  IF ~~ THEN REPLY #59077 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #59078 /* ~"Ich bin eine Hure. Ich bin jung und hübsch und... mache meine Arbeit gut." Sie lächelt. "Die anderen Mädchen haben gesagt, ich würde ihnen die Kundschaft stehlen. Deshalb haben sie mich zusammengeschlagen und gesagt, ich soll mich hier nicht mehr blicken lassen. Sie sagten, sie würden schon dafür sorgen, daß ich nicht mehr so hübsch bin, wenn sie mich hier noch einmal erwischen."~ */
  IF ~~ THEN REPLY #59079 /* ~"Warum bist du dann wieder hergekommen?"~ */ GOTO 4
  IF ~~ THEN REPLY #59080 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #59081 /* ~Sie lacht. "Wegen dem Klimper, was sonst? Ohne Klimper kann ich nicht weg hier und woanders neu anfangen, und wenn ich nicht herkomme, verdiene ich keinen Klimper. Also sitze ich in der Klemme." Sie seufzt und schaut weg. "Ich würde *einfach alles* tun, um etwas Klimper in die Finger zu kriegen..."~ */
  IF ~~ THEN REPLY #59083 /* ~"Was auch immer?"~ */ DO ~SetGlobal("Know_Kiri","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 12.0
  SAY #59084 /* ~Sie überdenkt deine Worte gut, bevor sie antwortet: "Klar, Schleifer, solche Art von Arbeit ist für mich kein Problem. Bietest du mir einen Job an?"~ */
  IF ~~ THEN REPLY #59085 /* ~"Nein, ich war nur neugierig."~ */ GOTO 6
  IF ~~ THEN REPLY #59086 /* ~"Ich kenne eine, die wohl ihren Mann gerne tot sähe. Er hat eine Schwäche für Huren, und das gefällt ihr nicht."~ */ DO ~SetGlobal("Know_Kiri","GLOBAL",2)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #59087 /* ~Sie zuckt die Schultern. "Wie ich schon sagte, ich brauche Klimper, und ich bin bereit, alles dafür zu tun."~ */
  IF ~~ THEN REPLY #59088 /* ~"Ich werd dran denken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #59089 /* ~Sie lacht. "So, er steht also auf Huren, hä? Sieht so aus, als wäre ich perfekt für den Job." Sie hält inne. "Wer ist die Zielperson?"~ */
  IF ~~ THEN REPLY #59090 /* ~"Carl Parfidor."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #59091 /* ~Sie runzelt die Stirn und überlegt und nickt dann. "Ich kenne Carl... und seine Frau." Sie zögert noch einen Moment und zuckt dann die Schultern. "Sag Roberta, wenn sie Carls Tod will, dann erledige ich das."~ */
  IF ~~ THEN REPLY #59092 /* ~"Willst du gar nicht wissen, was bei dem Job rausspringt?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #59093 /* ~Sie lächelt ein gemeines Lächeln. "Nein, eigentlich nicht. Wenn sie mich übers Ohr haut, steck ich sie auch ins Totenbuch, gleich neben den guten Carl... Das kannst du ihr ausrichten."~ */
  IF ~~ THEN REPLY #59094 /* ~"Vielleicht werde ich das. Wiedersehen"~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #59095 /* ~Du siehst eine Hure, Kiri. Sie beobachtet aufmerksam ihre Umgebung. Als sie dich näherkommen sieht, lächelt sie dir zu. "Hallo, wieder da, Schleifer. Was kann ich für dich tun?"~ */
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #59096 /* ~"Du siehst so ängstlich aus. Was ist los?"~ */ GOTO 2
  IF ~  Global("Know_Kiri","GLOBAL",1)
~ THEN REPLY #59097 /* ~"Als wir uns unterhalten haben, hast du gesagt, daß du für Geld alles tun würdest."~ */ GOTO 12
  IF ~  Global("Know_Kiri","GLOBAL",2)
Global("Snuff_Carl","GLOBAL",3)
~ THEN REPLY #59098 /* ~"Ich habe mit Roberta gesprochen. Sie will Carls Tod und möchte, daß du dich darum kümmerst."~ */ DO ~SetGlobal("Carl_Snuffed","GLOBAL",1)
~ JOURNAL #59100 /* ~Ich habe die Hure Kiri angeheuert, um Karl Parfidor zu töten. Sie sagt, sie wird sich sofort um die Sache kümmern.~ */ GOTO 11
  IF ~~ THEN REPLY #59099 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.2
  SAY #59101 /* ~Sie lächelt dich an. "Du kannst Roberta ausrichten, daß sie Carl gerade einen Eintrag ins Totenbuch gekauft hat. Ich werde mich gleich darum kümmern."~ */
  IF ~~ THEN REPLY #59102 /* ~"Na schön, dann leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 10.1
  SAY #61394 /* ~Sie mustert dich genau, bevor sie antwortet. "Sicher, Schleifer, was auch immer... wenn der Preis stimmt. Denkst du an was Bestimmtes?"~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #61395 /* ~"Wärst du auch bereit, jemanden zu töten?"~ */ JOURNAL #59002 /* ~Die Hure Kiri ist bereit, für Geld alles zu tun, sogar jemanden zu töten. Vielleicht wäre sie bereit, Karl Parfidor für Roberta zu töten.~ */ GOTO 5
  IF ~~ THEN REPLY #61396 /* ~"Eigentlich nicht, ich war nur neugierig. Leb wohl."~ */ JOURNAL #61397 /* ~Die Hure Kiri sagt, daß sie für Geld alles tun würde... Das muß ich mir merken, vielleicht habe ich ja irgendwann einmal Verwendung für sie.~ */ EXIT
END
