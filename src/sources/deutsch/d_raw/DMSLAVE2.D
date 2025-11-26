// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37792 /* ~Du siehst einen etwas übergewichtigen, älteren Mann mit abgetragener Kleidung. Er sieht ständig beunruhigt um sich. Dir fällt auf, daß er schwer atmet und ihm der Schweiß herunterläuft.~ */
  IF ~~ THEN REPLY #37804 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37805 /* ~Beachte den Mann nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37793 /* ~Als du ihn grüßt, erschrickt er sich und sieht dich besorgt an. "Ja, Schleifer?" Er windet sich ein wenig, als ob er Angst hat, daß du ihn schlagen wirst. "Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #37806 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37807 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37794 /* ~"Fragen?" Er schüttelt langsam den Kopf. "Du... bist nicht hier, um die Ware zu begutachten?" Der Schweiß tropft ihm von der Strin.~ */
  IF ~~ THEN REPLY #37809 /* ~"Was für Waren?"~ */ GOTO 3
  IF ~~ THEN REPLY #37810 /* ~"Ich will nur ein paar Anworten auf meine Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #37812 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37795 /* ~Er sieht dich ängstlich an. "Na, mich... "Seid Ihr nicht hier, um einen Diener zu erwerben?" Sein Atem geht schwerer.~ */
  IF ~~ THEN REPLY #37813 /* ~"Ja."~ */ GOTO 4
  IF ~~ THEN REPLY #37815 /* ~"Nein."~ */ GOTO 6
  IF ~~ THEN REPLY #37816 /* ~"Du stehst zum Verkauf?"~ */ GOTO 8
  IF ~~ THEN REPLY #37817 /* ~"Schon gut."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0
  SAY #37796 /* ~Sein Blick wird besorgt, und er sieht dich mißtrauisch an. Du siehst, wie seine Augen über deine Narben wandern und er beginnt, noch stärker zu schwitzen. "Ich... Ich bin sicher, daß ich kein Diener für jemanden wie Dich bin, Schleifer." Er begegnet deinem Blick.~ */
  IF ~~ THEN REPLY #37818 /* ~"Ah, und warum?"~ */ GOTO 5
  IF ~~ THEN REPLY #37819 /* ~"Ja, ich glaube, du hast recht."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37797 /* ~Er schluckt, und seine Hände fangen an zu zittern. "Ich habe ein seßhaftes Leben geführt, mein Herr. Du hingegen siehst eher aus wie ein Mann der... Taten. Ich bezweifle, daß ich Euren Anforderungen gerecht werden könnte..." Er sieht sehr beunruhigt aus und atmet schwerer.~ */
  IF ~~ THEN REPLY #37820 /* ~"Ja, ich glaube, du hast recht."~ */ GOTO 6
  IF ~~ THEN REPLY #37821 /* ~"Nein, ich glaube, du bist schon in Ordnung."~ */ DO ~Kill(Myself)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.1 4.1 5.0 8.1
  SAY #37798 /* ~Er sieht erleichtert aus und lächelt dich an. "Ja, dann, 'n schönen Tag noch , Schleifer." Er wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #37822 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #37823 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #37800 /* ~Er sieht dich einen Moment an, bevor seine Hände schrecklich zu zittern anfangen. Er öffnet den Mund, um etwas zu entgegnen, aber er bringt keinen Ton heraus. Er reißt seine Augen weit auf vor Entsetzen, greift sich an die Brust und sackt in sich zusammen.~ */
  IF ~~ THEN REPLY #37824 /* ~Verschwinde bevor jemand etwas bemerkt.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY #37801 /* ~Er nickt. "Ja, Schleifer. Diejenigen von uns, die du hier siehst, sind geringerer Vergehen schuldig. Unsere Strafe ist eine Art Dienstknechtschaft für eine gewisse Anzahl von Jahren, je nach dem Verbrechen. Bist du hier, um was zu kaufen?"~ */
  IF ~~ THEN REPLY #37825 /* ~"Ja."~ */ GOTO 4
  IF ~~ THEN REPLY #37826 /* ~"Nein."~ */ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 2.1 6.0 10.0
  SAY #37802 /* ~Er schüttelt den Kopf und sieht dich traurig an. "Ich hab keine Antworten für dich, Schleifer. Ich möchte dich bitten, mich in Ruhe zu lassen." Er wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #37827 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37803 /* ~Du siehst denselben etwas übergewichtigen älteren Mann. Er hat einen besorgten Blick und sieht sich dauernd um. Dir fällt auf, daß er schwer atmet und stark schwitzt. Er lächelt dich schwach an. "Du bist also wieder zurück, Schleifer. Womit kann ich dir helfen?"~ */
  IF ~~ THEN REPLY #37828 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #37829 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END
