// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROKAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROKAH~

IF ~  Global("Know_BandM","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45789 /* ~Du siehst einen winzigen Mann, der beim Gehen ein wenig watschelt. Seine Stimme hat einen beinahe komödiantischen Akzent. "Bei allen Mächten in ihren himmlischen Häusern, was ist das?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_BandM","GLOBAL",1)
~ EXTERN ~DMICCAH~ 2
END

IF ~  Global("Know_BandM","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45791 /* ~"Unser Kunde! Unser Kunde! Miccah! Unser Kunde ist wieder da!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #45793 /* ~Der winzige Mann erwidert: "Klar siehst du einen Kunden! Du siehst ständig irgenwelche Kunden... Kunden auf der STRASSE! Wir haben keine Kunden, wir werden niemals Kunden haben, schlag's dir aus dem Kopf..." Als sein Blick auf dich fällt, verstummt er kurz. "Miccah! Ein Kunde!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY #45795 /* ~"SEH ich doch. Oder glaubst du, ich seh es nicht? Natürlich seh ich es. Schließlich hab ich Augen im Kopf!" Er dreht sich zu dir. "Was können wir heute für dich tun?"~ */
  IF ~~ THEN REPLY #45796 /* ~"Reden wir über Geschäfte."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45797 /* ~"Kannst du mir was über dieses Gebiet erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #45798 /* ~"Kannst du mir was über dich erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #45799 /* ~"Wer ist sie?"~ */ GOTO 7
  IF ~~ THEN REPLY #45800 /* ~"Was kannst du mir über die Bünde erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #45801 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45802 /* ~"Natürlich bin ich bereit! Ich bin immer bereit! Für jeden Kunden, der uns mit seinem Besuch beehrt!" Er dreht sich zu dir. "Was können wir heute für dich tun?"~ */
  IF ~~ THEN REPLY #45803 /* ~"Reden wir über Geschäfte."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45804 /* ~"Kannst du mir was über dieses Gebiet erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #45805 /* ~"Kannst du mir was über dich erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #45806 /* ~"Wer ist sie?"~ */ GOTO 7
  IF ~~ THEN REPLY #45807 /* ~"Was kannst du mir über die Bünde erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #45808 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #45809 /* ~"Aha, du willst also was über dieses Gebiet erfahren? Da kann ich dir viel erzählen, denn es gibt viel zu sehen..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 9
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2
  SAY #45811 /* ~"Über mich? Du möchtest was über mich erfahren? Miccah, er interessiert sich für mich."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 10
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.3
  SAY #45813 /* ~"Über sie? Sie ist meine ergebene Ehefrau seit vierzig Jahren. Sie ist meine Sonne und das größte..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 11
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.4
  SAY #45815 /* ~"Über die Bünde? Die Bünde? Miccah, er interessiert sich für die Bünde. Wir haben..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 12
END

IF ~~ THEN BEGIN 9 // from:
  SAY #45817 /* ~"Ich wollte ihm eigentlich was über den Markt erzählen, aber jetzt erzähl' ich ihm vom Bordell - nur um dir eins auszuwischen! Und dann erzähl' ich ihm von der Städtischen Festhalle. Und nichts von all den anderen Attraktionen!"
Die beiden brüllen sich heftig an, ohne dich weiter zu beachten.
~ */
  IF ~~ THEN REPLY #45818 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #45819 /* ~"Ich möchte etwas kaufen..."~ */ GOTO 10
  IF ~~ THEN REPLY #45820 /* ~"Dann leb wohl."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 11.0 11.1 11.2 12.0 12.1 12.2 13.0 13.1 13.2
  SAY #45821 /* ~Sie sind so sehr damit beschäftigt, sich anzuschreien, daß sie dich gar nicht beachten. Ihre Worte fliegen nur so durch den Laden.~ */
  IF ~~ THEN REPLY #45822 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #45823 /* ~"Ich habe keinen Ehrgeiz? Keinen Ehrgeiz? Wenn ich nicht diesen Klotz von meiner Frau am Bein hätte, dann hätt ich's zu was bringen können! Statt dessen muß ich mich mit diesem Laden rumschlagen..." Die beiden schreien sich an, ohne dich weiter zu beachten.~ */
  IF ~~ THEN REPLY #45824 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #45825 /* ~"Ich möchte etwas kaufen..."~ */ GOTO 10
  IF ~~ THEN REPLY #45826 /* ~"Dann leb wohl."~ */ GOTO 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY #45827 /* ~"...als hätte sie das nicht schon längst! Sie ist der größte Fusler auf dieser Seite des Stocks, und dies bereits seit JAHREN, seit JAHREN, sag' ich dir. Sie könnte den ganzen Ozeanus aussaufen, wenn da Alkohol drin wäre - und wär immer noch durstig!"
Die beiden zanken sich weiter, ohne dich zu beachten.
~ */
  IF ~~ THEN REPLY #45828 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #45829 /* ~"Ich möchte etwas kaufen..."~ */ GOTO 10
  IF ~~ THEN REPLY #45830 /* ~"Dann leb wohl."~ */ GOTO 10
END

IF ~~ THEN BEGIN 13 // from:
  SAY #45831 /* ~"Weißt du, was ich glaube? Ich glaube, dieses Leben ist eine Strafe für etwas, was ich in einem früheren Leben verbrochen habe!"
Die beiden liefern sich ein heftiges Wortgefecht, ohne dich zu beachten.
~ */
  IF ~~ THEN REPLY #45832 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #45833 /* ~"Ich möchte etwas kaufen..."~ */ GOTO 10
  IF ~~ THEN REPLY #45834 /* ~"Dann leb wohl."~ */ GOTO 10
END

IF ~~ THEN BEGIN 14 // from:
  SAY #45835 /* ~"Die steht auf alles, was ihren Bauch noch fetter macht. Sie hat nur Geschmack, wenn's um's Essen geht, und selbst dann herzlich wenig."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 13
END

IF ~~ THEN BEGIN 15 // from:
  SAY #45837 /* ~Brokah kontert mit beißender Ironie. "Ach, wie könnt' ich nicht wissen, was ich an diesem Wesen mit dem süßen Mund und diesem Figürchen hab? Einen Beweis, daß ich noch noch weniger Geschmack hab als sie..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 14
END

IF ~~ THEN BEGIN 16 // from:
  SAY #45839 /* ~"Das ist wirklich kaum zu glauben! So viele Chancen, die ungenutzt verstrichen sind, und dabei hätte ich mein Leben genießen können!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 15
END

IF ~~ THEN BEGIN 17 // from:
  SAY #45841 /* ~"Ach, halt doch die Klappe! Ich bin wenigstens ein richtiger Mann. Da könntest du dir ruhig 'ne Scheibe von abschneiden!" Dann beäugt er seine Frau kritisch und fügt hinzu: "Na ja, einen Bart hast du ja schon..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 16
END
