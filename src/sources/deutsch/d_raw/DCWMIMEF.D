// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMIMEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMIMEF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49739 /* ~Die junge Frau, die gerade einer Art Pantomime zusieht, wirkt etwas durcheinander. Sie dreht sich zu dir um, als du dich ihr näherst.~ */
  IF ~~ THEN REPLY #49740 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #49741 /* ~Laß die Frau in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49742 /* ~"So was hab ich noch nicht geseh'n. Sein Spiel langweilt mich, und gleichzeitig finde ich es seltsam interessant."~ */
  IF ~~ THEN REPLY #49743 /* ~"Was ist denn los?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49744 /* ~"Vergiß es. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #49745 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #49746 /* ~Sie sieht weiter dem Mann zu, der anscheinend in einem unsichtbaren Kasten oder Käfig gefangen ist. "Ein andermal, mein Herr. Und jetzt entschuldigt mich bitte."~ */
  IF ~~ THEN REPLY #49747 /* ~"Moment... Sag mir wenigstens, was hier los ist."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49748 /* ~"Ich hätte da nur ein paar klitzekleine Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #49749 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #49750 /* ~Die Frau schleudert dir einen verärgerten Blick entgegen. "Egal, was *Ihr* denken mögt, mein Herr, ich habe kein Lust, mich mitten auf der Straße von einem Fremden und seinen Fragen belästigen zu lassen. Jetzt laßt mich in Ruhe!"~ */
  IF ~~ THEN REPLY #49751 /* ~"Moment... Sag mir wenigstens, was hier los ist."~ */ DO ~SetGlobal("Know_Salabesh","AR0600",1)
~ GOTO 4
  IF ~~ THEN REPLY #49752 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #49753 /* ~"Ich versteh es selbst nicht recht. Die Darbietung dieses Mannes bestand vor allem aus Imitationen von Personen und Bewegungen, aber er hat nicht ein Wort gesagt. Vorhin ist hier ein Magier vorbeigekommen, und der Gaukler hat sich über dessen komischen Gang lustig gemacht. Das hat den Magier so verärgert, daß er den Mann verflucht hat... Ich glaub, der Mann kann jetzt nicht mehr sprechen und scheint wirklich in dem unsichtbaren Kasten gefangen zu sein, den er vorhin nur dargestellt hat. Er war zuerst ganz schön in Panik, hat sich dann aber anscheinend beruhigt und macht jetzt mit seiner Darbietung weiter."~ */
  IF ~~ THEN REPLY #49754 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #49755 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
