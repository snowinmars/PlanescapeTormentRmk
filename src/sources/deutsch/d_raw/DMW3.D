// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47965 /* ~Du triffst auf einen drahtigen älteren Mann, der offensichtlich alle Marktarbeiter beaufsichtigt. Ab und zu bellt er den Arbeitern eine Anweisung zu, die diese unverzüglich befolgen. Er runzelt die Stirn, als du ihn ansprichst.~ */
  IF ~~ THEN REPLY #47966 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #47967 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47968 /* ~Nach dem Stirnrunzeln zieht er ein mürrisches Gesicht. "Ich kenn dich. Du bist der Dussel, der hier rumgelaufen ist und überall herumgefragt hat." Er starrt dich an, als wolle er dich damit anstacheln, es zu leugnen.~ */
  IF ~~ THEN REPLY #47970 /* ~"Ja, und ich habe auch ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #47971 /* ~Haltung: "Was ist, wenn ich derjenige bin?"~ */ GOTO 4
  IF ~~ THEN REPLY #47972 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #47973 /* ~Er nickt dir selbstzufrieden zu. "Ja nun, ich hab weder Zeit noch Antworten für dich. Es wäre besser, du gehst jetzt, bevor ich die Wache rufe... Und daß du mir ja nicht meine Männer belästigst, hörst du?"~ */
  IF ~~ THEN REPLY #47974 /* ~"Dann ruf doch die Wache. Ich werde schon mit ihnen fertig."~ */ GOTO 3
  IF ~~ THEN REPLY #47975 /* ~"Dann geh ich eben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47976 /* ~Er nickt. "Ganz wie du willst, du übergeschnappter Dussel. Wachen! Hier gibt's was für euch zu tun!"~ */
  IF ~~ THEN REPLY #47978 /* ~Geh bevor sie ankommen.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY #47979 /* ~Seine Augen verengen sich, als er dich ansieht. "Nun, wenn du derjenige bist, dann solltest du wissen, daß du eine Plage bist und daß ich keine Zeit für Plagen habe. Und meine Männer ebensowenig! Also, laß sie in Ruhe."~ */
  IF ~~ THEN REPLY #47980 /* ~"Ich bräuchte da ein paar Antworten..."~ */ GOTO 2
  IF ~~ THEN REPLY #47981 /* ~"Ich mag dich, beziehungsweise deine Einstellung nicht. Wie wäre es, wenn ich dir ein paar Manieren beibringe?"~ */ GOTO 5
  IF ~~ THEN REPLY #47982 /* ~"Zieh Leine, Dussel! Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #47983 /* ~Er will etwas sagen, hält dann aber inne, um deine Größe und die Narben auf deinem Körper genauer zu betrachten. Er dreht sich nach einer in der Nähe stehenden Wache um und öffnet den Mund...~ */
  IF ~~ THEN REPLY #47984 /* ~Wahrheit: "Ich brech dir deinen kleinen dünnen Hals, noch bevor du die Worte über deine Lippen bringst..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marketman_1","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #47985 /* ~Bluff: "Ich brech dir deinen kleinen dünnen Hals, noch bevor du die Worte über deine Lippen bringst..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marketman_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #47986 /* ~Geh weg, bevor die Situation außer Kontrolle gerät.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #47987 /* ~Er mustert dich, und du fühlst dich, als ob er dich abwiegen würde. "Ich... hab hier zu tun, und ich habe keine Zeit für so was. Schönen Tag noch." Er dreht sich um und geht.~ */
  IF ~~ THEN REPLY #47988 /* ~Geh weg.~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #47989 /* ~Du triffst auf einen drahtigen älteren Mann, der offensichtlich alle Marktarbeiter beaufsichtigt. Ab und zu bellt er den Arbeitern eine Anweisung zu, die diese unverzüglich befolgen. Er runzelt die Stirn, als du dich ihm näherst. "Aha,... die Plage schon wieder! Ich hab dir nichts zu sagen, Dussel. Hau ab!"~ */
  IF ~~ THEN REPLY #47990 /* ~Geh weg.~ */ EXIT
END
