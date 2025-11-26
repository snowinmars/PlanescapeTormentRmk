// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVOORSHA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DVOORSHA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57956 /* ~Du siehst einen Mann mittleren Alters in schäbigen Kleidern. Er schaut finster, als du näherkommst, und sieht sich mißtrauisch um.~ */
  IF ~~ THEN REPLY #57957 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #57959 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57961 /* ~Sein Blick wird noch finsterer während er dich betrachtet. "Oh... hallo. Was willst du?"~ */
  IF ~~ THEN REPLY #57963 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57965 /* ~"Schon gut. Ich muß weiter, Wiedersehen."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.1 8.1 10.3 11.2 12.2 13.2 14.0 15.0 16.0 19.1 20.0 21.0
  SAY #57966 /* ~"Und was wären das für Fragen?"~ */
  IF ~~ THEN REPLY #57967 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #57968 /* ~"Was machst du hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #57969 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 16
  IF ~~ THEN REPLY #57970 /* ~"Ich suche nach einem Deva. Ich habe gehört, er sei in Verdammnis."~ */ GOTO 17
  IF ~~ THEN REPLY #68251 /* ~"Ich muß gehen, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57971 /* ~Er zögert bevor er antwortet "Heiße Voorsha." Er führt seine Antwort nicht weiter aus.~ */
  IF ~~ THEN REPLY #57972 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57973 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #57974 /* ~Er starrt dich ausdruckslos an und zuckt mit den Schultern. "Ich bin... Händler. Dies ist mein Lager."~ */
  IF ~~ THEN REPLY #57975 /* ~"Was lagerst du denn hier so?"~ */ GOTO 5
  IF ~~ THEN REPLY #57976 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57977 /* ~Er runzelt die Stirn. "Ich sehe nicht, inwiefern dich das was angeht."~ */
  IF ~~ THEN REPLY #57978 /* ~"Ich bin nur neugierig..."~ */ GOTO 6
  IF ~~ THEN REPLY #57979 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57980 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57981 /* ~Er zuckt mit den Schultern. "Naja..." Er deutet unschlüssig auf seine Waren. "Bier, Met und... so weiter." Er sieht etwas nervös aus.~ */
  IF ~~ THEN REPLY #57982 /* ~"Wieso bist du denn so nervös?"~ */ GOTO 7
  IF ~~ THEN REPLY #57983 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57984 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57985 /* ~Er zuckt nervös. "Ich bin überhaupt nicht..." Er sieht dich trotzig an. "Können wir das Thema wechseln?"~ */
  IF ~~ THEN REPLY #57986 /* ~"Nein, ich glaube, du führst was im Schilde, und ich möchte gern wissen, was."~ */ GOTO 8
  IF ~~ THEN REPLY #57987 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57988 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #57989 /* ~Er starrt dich an und seufzt dann. "Ich bring das... Zeug durch diverse... Kanäle rein. Die Wachen wissen von nichts..."~ */
  IF ~~ THEN REPLY #57990 /* ~"Du bist ein Schmuggler."~ */ GOTO 9
  IF ~~ THEN REPLY #57991 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57992 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57993 /* ~Er schaut finster. "Ich bin Schwarzhändler. Hört sich besser an als Schmuggler, oder?" Er schaut dich mit schlauer Miene an. "Sag mal... was hältst du davon, wenn du mir ein bißchen zur Hand gehst... gegen eine Beteiligung am Geschäft?"~ */
  IF ~~ THEN REPLY #57995 /* ~"Inwiefern zur Hand gehen?"~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #57997 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 21.1
  SAY #57999 /* ~Er überlegt einen Moment. "Hier in der Nähe lebt ein Gehreless. Er hat schon versucht, mich zu töten. Das macht es für micht nicht einfach, mein Zeug hier rauszubringen. Ich brauche jemanden, der sich darum kümmert."~ */
  IF ~~ THEN REPLY #58002 /* ~"Was ist ein Gehreless?"~ */ GOTO 11
  IF ~~ THEN REPLY #58003 /* ~"Warum erledigst du das nicht selber?"~ */ GOTO 12
  IF ~~ THEN REPLY #58004 /* ~"Was bekomme ich, wenn ich das für dich erledige?"~ */ GOTO 13
  IF ~~ THEN REPLY #58005 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58006 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0
  SAY #58008 /* ~Er zuckt mit den Schultern. "Ach, das ist irgend so ein blödes Vieh, das alles fressen will, was ihm unter die Augen kommt..." Er sieht dich unbehaglich an.~ */
  IF ~~ THEN REPLY #58011 /* ~"Warum erledigst du das nicht selber?"~ */ GOTO 12
  IF ~~ THEN REPLY #58013 /* ~"Was bekomme ich, wenn ich das für dich erledige?"~ */ GOTO 13
  IF ~~ THEN REPLY #58015 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58018 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0
  SAY #58020 /* ~"Ich bin kein Krieger, mich würde es gleich töten." Mit einem Blick auf deine Narben: "Für jemanden, der in der Lage ist zu überleben, was du offenbar überlebt hast, sollte es nicht schwierig sein, mit ihm fertig zu werden."~ */
  IF ~~ THEN REPLY #58023 /* ~"Was ist ein Gehreless?"~ */ GOTO 11
  IF ~~ THEN REPLY #58026 /* ~"Was bekomme ich, wenn ich das für dich erledige?"~ */ GOTO 13
  IF ~~ THEN REPLY #58028 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58032 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.1 22.0
  SAY #58036 /* ~Er lächelt. "Ich könnte einen Partner gebrauchen. Das Geschäft läuft gut, und ich kann nicht alles ganz allein ausliefern. Wir könnten den Gewinn halbieren, wie wär's?"~ */
  IF ~~ THEN REPLY #58039 /* ~"Sicher, warum nicht."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #58041 /* ~"Glaub ich nicht."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #58047 /* ~"Ich denk drüber nach. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~  Dead("Ghrist")
~ THEN REPLY #68272 /* ~"Ich habe mich schon um den Gehreless gekümmert. Er ist tot. Also sind wir nun Partner, ja?~ */ GOTO 23
  IF ~~ THEN REPLY #68273 /* ~"Ich muß jetzt gehen, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58053 /* ~Sein Lächeln wird breiter. "Gut. Erledige den Gehreless und komm wieder her."~ */
  IF ~~ THEN REPLY #58056 /* ~"In Ordnung. Ich hab noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58060 /* ~"Ich muß los, Wiedersehen..."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #58063 /* ~Er blickt finster. "Ist gut, aber solltest du es dir noch anders überlegen, mein Angebot steht immer noch. Wenn ich nicht jemanden finde, der dieser Gehreless erledigt, bin ich raus aus dem Geschäft."~ */
  IF ~~ THEN REPLY #58065 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58066 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.2
  SAY #58067 /* ~Er sieht sich um. "Es gibt eigentlich nichts zu erzählen." Er zuckt mit den Schultern. "Sieh dich selbst um."~ */
  IF ~~ THEN REPLY #58068 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58069 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3
  SAY #58070 /* ~Er runzelt die Stirn. "Ein Deva... Ich hab da so Gerüchte gehört..." Er hält inne.~ */
  IF ~~ THEN REPLY #58071 /* ~"Was für Gerüchte?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58072 /* ~Er zuckt die Schultern und sieht weg. "Hier unten wurde ein bißchen gegraben, weil das Gefängnis erweitert werden sollte. Man sagt, sie seien dabei per Zufall in eine geheime Kammer durchgebrochen..." Er wendet sich dir wieder zu. "Haben da *irgend etwas* oder *irgend jemanden* eingekerkert gefunden."~ */
  IF ~~ THEN REPLY #58073 /* ~"Erzähl weiter."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58074 /* ~"Einige sagen, es war ein Deva, den man dort fand. Andere sagen, es war ein Baatezu, und wieder andere behaupten, es war ein Tanar'ri." Er zuckt die Achseln. "Mir persönlich ist es ziemlich egal. Was immer es ist, ich werde mich davon fernhalten."~ */
  IF ~~ THEN REPLY #58075 /* ~"Wo befindet sich diese Kammer?"~ */ GOTO 20
  IF ~~ THEN REPLY #58076 /* ~"Ich verstehe. Ich habe noch mehr Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #68252 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #58077 /* ~"Ich habe keine Ahnung. Aber wenn du hier unten weiter herumstocherst, hast du gute Chancen, es zu finden... Nicht daß das etwa erstrebenswert wäre, laß dir das gesagt sein."~ */
  IF ~~ THEN REPLY #58078 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58079 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from:
  SAY #58080 /* ~Du siehst Voorsha, den Schwarzhändler. Er sieht sich nervös um, als du näherkommst. "Hallo... da bist du ja wieder. Was kann ich für dich tun?"~ */
  IF ~  Global("Snuff_Ghrist","GLOBAL",0)
~ THEN REPLY #57963 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~  Global("Snuff_Ghrist","GLOBAL",1)
~ THEN REPLY #58082 /* ~"Du hast gesagt, du brauchst Hilfe. Wobei brauchst du denn Hilfe?"~ */ GOTO 10
  IF ~  Global("Snuff_Ghrist","GLOBAL",2)
~ THEN REPLY #58083 /* ~"Du hast mich gebeten, einen Gehreless für dich zu erledigen."~ */ GOTO 22
  IF ~  Global("Snuff_Ghrist","GLOBAL",3)
Dead("Ghrist")
~ THEN REPLY #58084 /* ~"Ich habe den Gehreless für dich getötet.~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",4)
~ GOTO 23
  IF ~~ THEN REPLY #58085 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.2
  SAY #58086 /* ~Er starrt dich einen Moment lang an. "Ja. Würdest du es tun?"~ */
  IF ~~ THEN REPLY #58087 /* ~"Was bekomme ich dafür?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 23 // from: 13.3 21.3
  SAY #58088 /* ~Er sieht überrascht aus, erholt sich aber schnell wieder. Er wirft dir einen Seitenblick zu, um zu sehen, ob du etwas bemerkt hast. "Oh, das ist toll. Gut gemacht."~ */
  IF ~~ THEN REPLY #58089 /* ~"Du hast gesagt, du machst mich zu deinem Partner. Ich bin gekommen, um das Versprechen einzulösen."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #58090 /* ~Er nickt. "Ja, das sagte ich." Er starrt dich einen Moment lang an und fängt an, nervös zu zucken. ~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #58091 /* ~"Also sind wir jetzt Partner?"~ */ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #58092 /* ~"Du hast nicht gedacht, daß ich den Gehreless töten würde, nicht wahr?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #58093 /* ~Er sieht dich noch einen Augenblick an und seufzt. "Nein... Sieht so aus, als hättest du meine Erwartungen übertroffen... Ich hatte gehofft, der Gehreless würde dich erledigen und mir die Arbeit abnehmen. Jetzt muß ich mich wohl doch selbst um dich kümmern." Er zieht plötzlich eine Waffe und greift an.~ */
  IF ~~ THEN REPLY #58094 /* ~Verteidige dich.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #58095 /* ~Er sieht dich noch einen Augenblick an und seufzt. "Nein... Sieht so aus, als hättest du meine Erwartungen übertroffen... Ich hatte gehofft, der Gehreless würde dich erledigen und mir die Arbeit abnehmen. Jetzt muß ich mich wohl doch selbst um dich kümmern." Er zieht plötzlich eine Waffe und greift an.~ */
  IF ~~ THEN REPLY #58097 /* ~Verteidige dich.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
