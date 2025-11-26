// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKEMAK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKEMAK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57593 /* ~Du siehst einen jungen Mann in schäbigen Kleidern. Er macht eine unanständige Geste, als du ihn ansprichst.~ */
  IF ~~ THEN REPLY #57594 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #57595 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57596 /* ~"Sieh zu, daß du hier verschwindest, Dussel." Er funkelt dich böse an.~ */
  IF ~~ THEN REPLY #57597 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57598 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57599 /* ~"Du und deine blöden Fragen interessieren mich nicht die Bohne. Ich hab gesagt, du sollst verschwinden, also hau ab!"~ */
  IF ~~ THEN REPLY #57600 /* ~"Ich glaube, ich muß dir ein paar Manieren einbleuen."~ */ GOTO 3
  IF ~~ THEN REPLY #57601 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57602 /* ~Er grinst verschlagen. "Versuch's doch, Dussel. Ich bin hier drin, weil ich planlose Schlucker wie dich ganz einfach abmurkse..."~ */
  IF ~~ THEN REPLY #57604 /* ~"Ich bin hier, weil ich das will, und wenn ich gehen will, dann gehe ich einfach."~ */ GOTO 4
  IF ~~ THEN REPLY #57606 /* ~Greif ihn an: "Ich brauche eine Herausforderung..." ~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #57611 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57614 /* ~Er starrt dich eine Zeitlang an, als würde er deine Bemerkung überdenken. Seine Augen wandern über deine vielen Narben und heften sich dann auf deine Augen. Nach einer Weile schluckt er nervös. "Das meinst du ernst... nicht, wahr?" Er wartet auf eine Antwort, dann zuckt er die Schultern. "Also, was willst du?"~ */
  IF ~~ THEN REPLY #57615 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #57617 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.0 8.0 9.1 10.0 11.0
  SAY #57618 /* ~"Frag sie..."~ */
  IF ~~ THEN REPLY #57620 /* ~"Wer bist du?"~ */ GOTO 6
  IF ~~ THEN REPLY #57621 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #57622 /* ~"Ich suche einen Deva. Er soll hier unten sein."~ */ GOTO 9
  IF ~~ THEN REPLY #57623 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57625 /* ~Er zögert, bevor er antwortet. "Kemak. Aber alle nennen mich Kem. Nicht, daß es mir besonders gefallen würde, weißt du."~ */
  IF ~~ THEN REPLY #57626 /* ~"Warum bist du hier?"~ */ GOTO 7
  IF ~~ THEN REPLY #57627 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #57629 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57631 /* ~"Habe mich eines Abends betrunken und bin in eine Schlägerei geraten. Sie sagen, ich hätte so 'nen Schlucker umgebracht... Ich weiß nicht, kann mich nicht erinnern." Er zuckt die Schultern.~ */
  IF ~~ THEN REPLY #57632 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #57634 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #57635 /* ~"Ich weiß nicht so viel, ich bin von Anfang an hier unten..." Er denkt nach. "Es ist wie eine Reihe von Ringen aufgebaut: der äußere, der mittlere und der innere. Je schlimmer dein Verbrechen, desto weiter innen wird man eingesperrt. Hier, im inneren Ring, sind die ganz gefährlichen Typen."~ */
  IF ~~ THEN REPLY #57638 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #57640 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #57642 /* ~"Wirklich?" Er sieht dich überrascht an. "Warum sollte ein Deva hier unten sein. Da müßte er wirklich etwas Schreckliches verbrochen haben." Er sieht dich erwartungsvoll an.~ */
  IF ~~ THEN REPLY #57644 /* ~"Ich weiß nicht. Hast du was von ihm gehört?"~ */ GOTO 10
  IF ~~ THEN REPLY #57646 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #57647 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #57649 /* ~Er schüttelt den Kopf. "Nein, keine Ahnung." Er lacht. "Ich komm' hier nicht so viel raus, weißt du."~ */
  IF ~~ THEN REPLY #57651 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #57652 /* ~"Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #57653 /* ~Du siehst Kemak. Er runzelt die Stirn, als du dich näherst. "Du bist's, wie schön. Was willst du?"~ */
  IF ~~ THEN REPLY #57655 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #57657 /* ~"Nichts. Leb wohl."~ */ EXIT
END
