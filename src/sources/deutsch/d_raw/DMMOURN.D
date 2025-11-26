// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMMOURN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMMOURN~

IF ~  Global("Widow_Pissed","AR0200",0)
~ THEN BEGIN 0 // from:
  SAY #34081 /* ~Eine Aura von großem Verlust umgibt diese alte Frau wie einen dunklen Mantel. Während du sie beobachtest, entschlüpft ihren Lippen ein trauriger Seufzer.~ */
  IF ~~ THEN REPLY #34082 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #34083 /* ~Laß die Frau in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34084 /* ~Sie blickt auf. Ihre trüben Augen blinzeln und strengen sich an, dich klar zu sehen. "Verzeih mir, junger Schleifer, aber ich bin eine alte Frau und sehe nicht mehr so gut... kenne ich dich?"
~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #34085 /* ~"Nein."~ */ GOTO 2
  IF ~~ THEN REPLY #34086 /* ~"Vielleicht, aber ich kenne dich nicht."~ */ GOTO 2
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #34087 /* ~"Wir sind uns schon mal über den Weg gelaufen."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #34088 /* ~Nickend denkt sie einen Moment über deine Antwort nach. "Was willst du?"~ */
  IF ~~ THEN REPLY #34089 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #34090 /* ~"Ehrlich gesagt, nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #34091 /* ~"Fragen?" Sie verzieht das Gesicht. "Oh, nein... du bist ein 'Abenteurer', nicht wahr? Name, Beruf und das ganze Zeug, gell? Auf die kann ich nicht! Verschwinde!"~ */
  IF ~~ THEN REPLY #34092 /* ~"Ich bin kein Abenteurer."~ */ DO ~SetGlobal("Widow_Pissed","AR0200",1)
~ GOTO 4
  IF ~~ THEN REPLY #34093 /* ~"Nein, das bin ich nicht... jedenfalls nicht so richtig..."~ */ DO ~SetGlobal("Widow_Pissed","AR0200",1)
~ GOTO 4
  IF ~~ THEN REPLY #34094 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #34095 /* ~"Schließ ab!" Die Frau zeigt mit ihrem Finger auf dich. "Ich habe gesehen, wie die Staubmenschen die Namen meines Mannes, verflucht sei seine Seele, meines Sohnes und meiner beiden Töchter auf ihr Denkmal geschrieben haben. Und alle waren sie 'Abenteurer'! Ich habe *selbst* früher ganz gut das Schwert geschwungen, darum erkenne ich auch einen, wenn ich einen sehe!" Die alte Frau scheint sich immer mehr aufzuregen. Ihr Gesicht ist rot vor Zorn und Speichel spritzt von ihren Lippen, während sie dich anbrüllt.~ */
  IF ~~ THEN REPLY #34096 /* ~Laß sie weiterschimpfen.~ */ GOTO 5
  IF ~~ THEN REPLY #34097 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34098 /* ~"Ich wette, du hast *tausend* bekloppte Fragen!" Sie äfft dein heroisches Gebaren nach: "Sei gegrüßt, ich hätte da ein paar Fragen... kannst du mir was über diesen Ort erzählen? Wer ist die Dame der Schmerzen? Ich suche den magischen Gürtel von Protzeisen, hast du ihn gesehen? Wißt Ihr wo ich ein Portal zur 2.817ten Ebene des Abgrunds finden kann? Kennt Ihr den Heiligen Flammen-Frostbeulen erzeugenden, Gronkschlachtenden Vorpal-Hammer des Verletzens und Wiederkehrens und des Blitze-Aus-Eurem-Arsch-Schiessens?" Sie spuckt. "Vergiß den ganzen Scheiß! Das bringt dich nur ins Totenbuch! Ich sollte dich dafür ans Schienbein treten, daß du eine arme alte Frau mit so was belästigst! Jetzt verschwinde und laß mich in Ruhe!"~ */
  IF ~~ THEN REPLY #34099 /* ~Geh.~ */ EXIT
END

IF ~  Global("Widow_Pissed","AR0200",1)
~ THEN BEGIN 6 // from:
  SAY #34100 /* ~Als die Frau dich sieht, setzt sie eine säuerliche Miene auf. "Nee, nee, nee! Nicht du schon wieder! Ich rede kein Wort mehr mit dir, also zisch ab! *ZISCH AB!*"~ */
  IF ~~ THEN REPLY #34101 /* ~Geh.~ */ EXIT
END
