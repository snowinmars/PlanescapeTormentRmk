// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJAYDEE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DJAYDEE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58535 /* ~Du siehst einen Lagerarbeiter. Er scheint sehr in seine Arbeit versunken und bemerkt dein Kommen nicht.~ */
  IF ~~ THEN REPLY #58537 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #58540 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58542 /* ~Er unterbricht seine Arbeit und wendet sich dir zu. "Kann ich dir weiterhelfen?"~ */
  IF ~~ THEN REPLY #58543 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58547 /* ~"Nein, eigentlich nicht. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58549 /* ~Er runzelt die Stirn. "Ich hab ne Menge Arbeit und keine Zeit für Fragen. Nichts für ungut." Er wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #58551 /* ~"Nur eine kurze Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #58553 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58554 /* ~Er dreht sich seufzend zu dir um. "Eine kurze Frage... Weißt du eigentlich, wie oft ich mir das pro Tag anhören muß?" Er starrt dich wütend an.~ */
  IF ~~ THEN REPLY #58556 /* ~"Äh... nein."~ */ GOTO 4
  IF ~~ THEN REPLY #58557 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58559 /* ~"Ich werd's dir verraten: zu oft! Jedesmal wenn so ein blöder Baator-Dussel meint, er müßte dich bei der Arbeit stören, obwohl er genau sieht, daß du beschäftigt bist, nur weil er nicht warten kann mit seiner dämlichen Frage. Es ist immer bloß eine *kurze* Frage!" Er starrt dich wütend an. "Und weißt du was?"~ */
  IF ~~ THEN REPLY #58560 /* ~"Äh... nein. Was?"~ */ GOTO 5
  IF ~~ THEN REPLY #58562 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58563 /* ~Er hebt die Stimme und fuchtelt mit den Armen. "Er lügt! Er weiß, daß es nicht bei einer *kurzen* Frage bleiben wird! Er weiß genau, daß es einen verdammten Roman erfordern wird, sie zu beantworten. Und doch erzählt er dir, es wird nicht lange dauern! Und weißt du, warum?"~ */
  IF ~~ THEN REPLY #58564 /* ~"Öh... nein. Warum?"~ */ GOTO 6
  IF ~~ THEN REPLY #58566 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58567 /* ~"Weil er denkt, du bist BLÖD! Er glaubt, du merkst nicht, wie unglaublich lange es dauert, seine Frage zu beantworten. Oh nein! Er sagte ja nur, es sei eine kurze Frage. Da macht es ja nichts, wenn die Anwort eine halbe Stunde deiner kostbaren Zeit erfordert! Du bist ja schließlich BLÖD und wirst es nicht bemerken!"~ */
  IF ~~ THEN REPLY #58568 /* ~"Vielleicht sollte ich später noch einmal wiederkommen..."~ */ GOTO 7
  IF ~~ THEN REPLY #58569 /* ~"Entschuldige bitte die Störung, ich sehe, du bist beschäftigt..."~ */ GOTO 9
  IF ~~ THEN REPLY #58571 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0
  SAY #58572 /* ~"Warum? Du hast mich bereits gestört und meinen Gedankenfluß unterbrochen! Jetzt stell mir schon deine verdammte Frage, stiehl mir eine Stunde meiner kostbaren Arbeitszeit, und laß es uns hinter uns bringen." Er funkelt dich an.~ */
  IF ~~ THEN REPLY #58573 /* ~"Ich suche nach einem Deva. Mir ist zu Ohren gekommen, er sei in Verdammnis."~ */ GOTO 8
  IF ~~ THEN REPLY #58574 /* ~"Ich glaube, ich geh besser. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58575 /* ~"Ja, das hab ich auch gehört. Laut Gerüchteküche befindet er sich im Gefängnis. Falls das stimmt, solltest du im Verwaltungsgebäude auf dem Marktplatz nach ihm fragen. Und nun laß mich weitermachen..." Er wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #58576 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #58577 /* ~Er hält inne und funkelt dich an. "Beschäftigt? Hast du meinen Arbeitsplan gesehen? Du hast keine Ahnung, was beschäftigt heißt, Dussel." Er schnaubt verächtlich. "Außerdem ändert das Ding sich auch noch ständig, das ist das Allerschönste an diesem verdammten Plan! Jeden Tag kommt etwas Neues dazu, oder es wird etwas gestrichen, um Platz für etwas anderes zu schaffen."~ */
  IF ~~ THEN REPLY #58578 /* ~"Ich verstehe. Ich glaube, ich sollte jetzt besser gehen..."~ */ GOTO 7
  IF ~~ THEN REPLY #58579 /* ~"Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #58580 /* ~Du siehst einen wütenden Lagerarbeiter. Er scheint sich an seiner Arbeit abzureagieren, bis er dich bemerkt. "Oh, du schon wieder! Laß mich raten: Du hast eine *kurze* Frage an mich."~ */
  IF ~~ THEN REPLY #58581 /* ~"Nein, ich glaube, ich gehe besser. Wiedersehen."~ */ EXIT
END
