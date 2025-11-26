// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSGR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #43384 /* ~Dieser schlanke junge Mann nähert sich dir mit ziemlich besorgter Miene. "Ich bitte vielmals um Verzeihung, aber ich suche einen bestimmten Mann, und ich glaube, du könntest mir helfen..."~ */
  IF ~~ THEN REPLY #43385 /* ~"Aha? Wie das?"~ */ GOTO 2
  IF ~~ THEN REPLY #43817 /* ~"Das möchte ich bezweifeln. Leb wohl."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #43818 /* ~"Schenkt mir nur einen Augenblick Eurer Zeit... Ich will Euch nicht lange aufhalten..."~ */
  IF ~~ THEN REPLY #43819 /* ~"Na schön... Was gibt's?"~ */ GOTO 2
  IF ~~ THEN REPLY #43820 /* ~"Laß mich in Ruhe, Kleiner. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #43821 /* ~"Ich bin ein Bote. Ich suche einen Mann, von dem es heißt, er könne nicht sterben... Er soll voller Narben sein, und der Tod sei für ihn nichts weiter als ein lästiger Zwischenfall. Ihr paßt auf diese zugegebenermaßen vage Beschreibung, die man mir gegeben hat. Ich möchte wissen, ob Ihr es seid, mein Herr."~ */
  IF ~~ THEN REPLY #43822 /* ~"Ja, ich bin es."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Msgr_1","GLOBALLaw",1)
SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43823 /* ~"Nein, ich bin es nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Msgr_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #43824 /* ~"Wen interessiert das?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.0 7.0
  SAY #43825 /* ~Er nickt. Dann verneigt er sich tief vor dir. "Dann habe ich eine Botschaft für Euch, mein Herr: Jolmi, die hochangesehene Herrin des Hauses Syrma, hat mich geschickt. Jolmi würde Euch gerne in der Städtischen Festhalle sehen, um Euch einen Vorschlag zu machen, über den ich allerdings nichts weiß. Falls Ihr sie treffen möchtet:Sie trägt grüne, golddurchwirkte Seidengewänder, und ihr Haar hat die Farbe von blauem Stahl.Soweit meine Botschaft... Lebt wohl."~ */
  IF ~~ THEN REPLY #43826 /* ~"Warte... Wo ist die Städtische Festhalle?"~ */ JOURNAL #39487 /* ~Ich hab eine Nachricht erhalten, daß eine Frau namens Jolme aus dem Hause Syrma mir einen Vorschlag machen will. Ich soll sie in der Städtischen Festhalle ausfindig machen - sie trägt grüne, golddurchwirkte Seidengewänder, und ihr Haar hat die Farbe von blauem Stahl.~ */ GOTO 4
  IF ~~ THEN REPLY #43827 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ JOURNAL #39487 /* ~Ich hab eine Nachricht erhalten, daß eine Frau namens Jolme aus dem Hause Syrma mir einen Vorschlag machen will. Ich soll sie in der Städtischen Festhalle ausfindig machen - sie trägt grüne, golddurchwirkte Seidengewänder, und ihr Haar hat die Farbe von blauem Stahl.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43828 /* ~"Im nordöstlichen Winkel dieses Teils des Kuratorenbezirks. Es ist ein großer Bau, den man kaum verfehlen kann. Lebt wohl."~ */
  IF ~~ THEN REPLY #43829 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 6.1
  SAY #43830 /* ~"Schade. Lebt wohl. Ich bitte vielmals um Verzeihung für die Störung."~ */
  IF ~~ THEN REPLY #43831 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #43832 /* ~"Ich stehe im Dienst einer wohlhabenden Edelfrau namens Jolmi Syrma."~ */
  IF ~~ THEN REPLY #43833 /* ~"Ich bin der Mann, den du suchst."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Msgr_1","GLOBALLaw",1)
SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43834 /* ~"Tja, ich bin nicht der, den du suchst."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Msgr_1","GLOBALLaw",-1)
~ GOTO 5
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #43835 /* ~Du junge Bote verabschiedet sich mit einer kleinen, höflichen Verbeugung. "Es war mir ein Vergnügen."~ */
  IF ~~ THEN REPLY #43836 /* ~"Ich wollte dir sagen, daß ich genau der Mann bin, den du suchst."~ */ DO ~SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43837 /* ~"Ja... Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END
