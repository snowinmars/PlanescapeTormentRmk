// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMBVGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMBVGER~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20067 /* ~Der zerlumpte Mann flüchtet, als du näherkommst, Angst steht ihm ins Gesicht geschrieben.~ */
  IF ~~ THEN REPLY #20068 /* ~"Vielleicht das nächste Mal..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #20069 /* ~Der zerlumpte Mann schaut dich angstvoll an und erkennt dann, daß du keine unmittelbare Bedrohung für ihn darstellst. Er richtet sich auf. "Was willste, Dussel?"~ */
  IF ~~ THEN REPLY #20070 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #20071 /* ~"Was machst du da?"~ */ GOTO 4
  IF ~~ THEN REPLY #20072 /* ~"Wovor fürchtest du dich?"~ */ GOTO 5
  IF ~~ THEN REPLY #20073 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #20074 /* ~"Ist nicht wichtig, Schleifer. Vor zu langer Zeit in den Spalt gefallen - oder vielleicht war's mein Vater. So oder so, ich bin nur einer mehr, der hier versucht, so gut wie's geht zu überleben."~ */
  IF ~~ THEN REPLY #20075 /* ~"Okay. Ich hätte da noch ein paar andere Fragen an dich."~ */ GOTO 3
  IF ~~ THEN REPLY #20076 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 5.2 6.0 7.0 8.0
  SAY #20077 /* ~"Beeil dich, Schleifer. Ich hab' ein paar hungrige Mäuler zu stopfen."~ */
  IF ~~ THEN REPLY #20078 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #20079 /* ~"Was machst du da?"~ */ GOTO 4
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #20080 /* ~"Wovor fürchtest du dich?"~ */ GOTO 5
  IF ~~ THEN REPLY #20081 /* ~"Dann vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 3.1
  SAY #20082 /* ~"Versuch zu überleben. Wonach sieht's denn aus? Nur werd ich dauernd mit Fragen gelöchert, und das hält mich davon ab. Bist du endlich fertig?"~ */
  IF ~~ THEN REPLY #20083 /* ~"Nein. Ich hätte noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #20084 /* ~"Vorläufig."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 3.2
  SAY #20085 /* ~"Du meinst, abgesehen davon, daß es hier überall Dabus gibt, oder daß die Dickschädel uns jagen, oder daß die Toten aus den Katakomben da unten hochkommen, oder daß die Schädelratten uns heimsuchen, oder daß wir uns gegenseitig die Messer an die Kehlen halten, oder daß wir verhungern? Abgesehen vom Üblichen müssen es wohl die Kreaturen sein, die Pharod kaltgemacht haben, vor denen ich mich fütchte."~ */
  IF ~~ THEN REPLY #20086 /* ~"Kreaturen? Was für Kreaturen?"~ */ GOTO 6
  IF ~~ THEN REPLY #20087 /* ~"Pharod ist tot?"~ */ GOTO 6
  IF ~~ THEN REPLY #20088 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #20089 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #20090 /* ~"Kreaturen direkt aus Baators Schlund waren das... Dinger aus den schwärzesten Alpträumen und Angstvorstellungen, reinste Schattenwesen. Sie haben ihn sich gegriffen und in Stücke gerissen. Blieb wirklich nicht viel von ihm übrig. Wir haben begraben, was wir noch finden konnten."~ */
  IF ~~ THEN REPLY #20091 /* ~"In Ordnung. Erzähl mir dann was anderes..."~ */ GOTO 3
  IF ~~ THEN REPLY #20092 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #20093 /* ~Er hustet lautstark in seine Hand. "Was willst du diesmal?"~ */
  IF ~~ THEN REPLY #20094 /* ~"Ich wollte ein paar Antworten."~ */ GOTO 3
  IF ~~ THEN REPLY #20095 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #20096 /* ~Du siehst einen zerlumpten Mann in zusammengeflickten Kleidern. Er stinkt nach Rauch und Müll, und seine Hautfarbe hat einen gelblichen Stich. Er sieht dich schräg an. "Was willste von mir, Schleifer?"~ */
  IF ~~ THEN REPLY #20097 /* ~"Nur die Antworten auf ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #20098 /* ~"Nichts. Leb wohl."~ */ EXIT
END
