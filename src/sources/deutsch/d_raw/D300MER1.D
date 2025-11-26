// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17240 /* ~Dieser mürrisch dreinblickende Alte scheint verschiedene Handwaffen zu verkaufen. "Ah, tretet näher! Ihr wollt sicher meine Klingen bewundern, nicht wahr?"~ */
  IF ~~ THEN REPLY #17302 /* ~"Ja."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17303 /* ~"Nein, aber ich hätte da ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #17304 /* ~"Nein, bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17244 /* ~"Schön, daß Ihr wieder da seid, Schleifer. Ihr wollt sicher den besten Stahl kaufen, den ganz Sigil zu bieten hat."~ */
  IF ~~ THEN REPLY #17305 /* ~"Ja."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17306 /* ~"Nein, aber ich hätte da ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #17309 /* ~"Nein, bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #17246 /* ~"Ich habe zu tun, mein Herr..." Er dreht plötzlich den Kopf zur Seite und hustet in die vorgehaltene Hand. "Verzeihung. Wie ich bereits sagte: Ich kann nicht einfach alles liegenlassen, nur um mit Euch zu reden."~ */
  IF ~~ THEN REPLY #17311 /* ~"Bist du krank?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Merch1_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #17316 /* ~"Dann zeig mir deine Ware."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17317 /* ~"Dann bezahl ich dich für deine Zeit."~ */ GOTO 3
  IF ~~ THEN REPLY #17318 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY #17254 /* ~Der alte Händler hält einen Moment inne und blickt um sich. Als er sich überzeugt hat, daß kein potentieller Kunden in der Nähe ist, hält er die Hand auf.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #17319 /* ~Laß drei Münzen in seine Hand fallen.~ */ DO ~TakePartyGold(3)
~ GOTO 4
  IF ~~ THEN REPLY #17353 /* ~"Vergiß es. Laß mich deine Ware sehen."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17355 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17256 /* ~Er nickt und steckt die drei Kupfermünzen ein. "Was wolltet Ihr mich fragen, Schleifer?"~ */
  IF ~~ THEN REPLY #17357 /* ~"Erzähl mir was über diese Gegend."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17359 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17361 /* ~"Ich suche nach einem Journal, das ich verloren hab'."~ */ GOTO 7
  IF ~~ THEN REPLY #17362 /* ~"Vergiß es. Laß mich deine Ware sehen."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17363 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.1 8.1 9.0
  SAY #17263 /* ~"Über diese Gegend? Das ist einfach 'n Marktplatz im Stock, dem schlimmsten Bezirk dieser schönen Stadt Sigil." Er lächelt bitter und zuckt mit den Achseln. "Wenn man aufpaßt, wem man den Rücken zudreht und sich nicht im Dunkeln herumtreibt, ist es hier gar nicht so schlecht - verglichen mit anderen Elendsvierteln."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17364 /* ~"Ich suche nach einem Mann namens Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17365 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 7
  IF ~~ THEN REPLY #17366 /* ~"Laß mich deine Ware sehen."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17367 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 7.2 8.2 9.1
  SAY #17265 /* ~"Hmm. Ne, den Namen kenn ich nicht. Tut mir leid, Schleifer."~ */
  IF ~  !Global("Good_Merch1_1","GLOBAL",1)
~ THEN REPLY #17368 /* ~"Das war nicht besonders hilfreich..."~ */ GOTO 8
  IF ~~ THEN REPLY #17215 /* ~"Erzähl mir was über diese Gegend."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17217 /* ~"Ich suche nach einem Journal, das ich verloren hab'."~ */ GOTO 7
  IF ~~ THEN REPLY #17218 /* ~"Vergiß es. Laß mich deine Ware sehen."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17220 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.1 6.2 8.3 9.2
  SAY #17267 /* ~"In letzter Zeit hab' ich keins gesehn. Tut mir leid. Aber wenn Ihr ein neues Journal braucht... Wer weiß, vielleicht hat einer der anderen Händler was im Angebot." Er zuckt mit den Achseln.~ */
  IF ~  !Global("Good_Merch1_1","GLOBAL",1)
~ THEN REPLY #17221 /* ~"Das war nicht besonders hilfreich..."~ */ GOTO 8
  IF ~~ THEN REPLY #17222 /* ~"Erzähl mir was über diese Gegend."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17223 /* ~"Ich suche einen Mann namens Pharod."
~ */ GOTO 6
  IF ~~ THEN REPLY #17268 /* ~"Vergiß es. Laß mich deine Ware sehen."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17310 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #17272 /* ~Der alte Händler lacht leise vor sich hin. Dann hustet er in die vorgehaltene Hand. "Du hast mich für meine Zeit bezahlt, nicht für meine Antworten, Schleifer. Ich hätte Euch gern geholfen, wenn ich gekonnt hätte. Wollt Ihr jetzt vielleicht meine Ware sehen?"~ */
  IF ~~ THEN REPLY #17324 /* ~"Ja."
~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17332 /* ~"Jetzt nicht. Erzähl mir was über diese Gegend."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17356 /* ~"Nein, aber ich suche einen Mann namens Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17358 /* ~"Nein, jetzt nicht. Ich suche ein Journal, das ich verloren habe."~ */ GOTO 7
  IF ~~ THEN REPLY #17360 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #17275 /* ~"Ho ho! Nein, Schleifer, nur alt. Aber danke der Nachfrage." Er lächelt dich an.~ */
  IF ~~ THEN REPLY #17369 /* ~"Kannst du mir was über diese Gegend erzählen?"~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17370 /* ~"Ich suche nach einem Mann namens Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17371 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 7
  IF ~~ THEN REPLY #17372 /* ~"Kann ich deine Ware sehen?"~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17373 /* ~"Mach's gut. Leb wohl."~ */ EXIT
END
