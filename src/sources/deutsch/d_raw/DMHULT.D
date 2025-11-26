// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHULT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHULT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2802 /* ~Der Mann macht keinen so finsteren und verbissenen Eindruck wie die anderen Leute um ihn herum. Er geht munteren Schrittes dahin und schielt gelegentlich nach rechts und links auf den Boden. Als du näherkommst, begrüßt er dich mit einem freundlichen Kopfnicken.~ */
  IF ~~ THEN REPLY #18030 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #18031 /* ~Nicke zurück und geh vorbei.~ */ EXIT
  IF ~~ THEN REPLY #18032 /* ~Geh an ihm vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2803 /* ~"Hallo, Schleifer! Hast du zufällig irgendwelche Totenbüchler gesehen?"~ */
  IF ~~ THEN REPLY #18033 /* ~"Nein, jedenfalls nicht in der Nähe. Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #18034 /* ~"Nein, jedenfalls nicht in der Nähe. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.4 4.3 5.3 6.3 7.4 8.3 9.4 10.3 11.1 12.4 13.3 14.3 15.3 16.1
  SAY #18015 /* ~Ein Lebewohl auch an dich, Schleifer! Er winkt und geht weg.~ */
  IF ~~ THEN REPLY #18035 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 16.0
  SAY #18016 /* ~"Schade, schade." Er zuckt mit den Achseln. "Aber hattest du nicht ein paar Fragen? Schieß schon los!"~ */
  IF ~~ THEN REPLY #18036 /* ~"Was suchst du?"~ */ GOTO 4
  IF ~~ THEN REPLY #18037 /* ~"Kannst du mir was über diese Gegend erzählen?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18038 /* ~"Ich suche nach einem Mann namens Pharod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18039 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 15
  IF ~~ THEN REPLY #18040 /* ~"Vergiß es. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #18017 /* ~"Totenbüchler natürlich! Ich bin ein Sammler. Erkennst du mich nicht an meiner Robe?" Er greift ein Stück seiner Robe und streckt sie dir entgegen.~ */
  IF ~~ THEN REPLY #18427 /* ~"Nein..."~ */ GOTO 5
  IF ~~ THEN REPLY #18428 /* ~"Sammler?"~ */ GOTO 5
  IF ~~ THEN REPLY #18429 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #18430 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 12.0 13.0 14.0 15.0
  SAY #18018 /* ~"Jawohl, Sammler!" Er zeigt auf seine zerlumpte, braune Robe. "Das ist die Robe eines Sammlers, Schleifer. Alle armen Schlucker, die so ein Teil tragen... wie ich zum Beispiel, ha! ... halten mit ziemlich großer Sicherheit Ausschau nach Totenbüchlern. Leichen, die sie an die Leichenhalle verkaufen." Er zuckt mit den Achseln. "Irgendwas muß man sich ja einfallen lassen, um im Stock seinen Lebensunterhalt zu verdienen. Ha ha!"~ */
  IF ~~ THEN REPLY #18431 /* ~"Arbeiten die Sammler zusammen?"~ */ GOTO 6
  IF ~~ THEN REPLY #18432 /* ~"Warum bezahlt die Leichenhalle für die Leichen?"~ */ GOTO 11
  IF ~~ THEN REPLY #18433 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18434 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #18019 /* ~Er lacht von Herzen. "Von wegen! Wir sind zwar alle gleich gekleidet, aber es gibt nur eine begrenzte Anzahl von Totenbüchlern. Normalerweise bilden wir... rivalisierende Gruppen und Banden... oder wie auch immer man sie nennen mag... und sind nicht allzu nett zueinander."~ */
  IF ~~ THEN REPLY #18435 /* ~"Gibt es hier in der Nähe rivalisierende Sammlergruppen?"~ */ GOTO 7
  IF ~~ THEN REPLY #18436 /* ~"Warum bezahlt die Leichenhalle für die Leichen?"~ */ GOTO 11
  IF ~~ THEN REPLY #18437 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18438 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."

~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #18020 /* ~Er nickt. "So sicher, wie Sigil rund ist! Die meisten Sammler im Stock haben ihre Absteige auf dem Lumpensammler-Platz, einer Müllhalde nördlich von hier auf der anderen Seite des großen Tors. Dort haben Grabteiler und seine Jungs jetzt das Sagen, nachdem wir Pharod und seine Bande vertrieben haben."~ */
  IF ~~ THEN REPLY #18439 /* ~"Erzähl mir was über Grabteiler."~ */ GOTO 8
  IF ~~ THEN REPLY #18440 /* ~"Erzähl mir was über Pharod."~ */ GOTO 9
  IF ~~ THEN REPLY #18441 /* ~"Warum bezahlt die Leichenhalle für die Leichen?"~ */ GOTO 11
  IF ~~ THEN REPLY #18442 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18443 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.1 10.0
  SAY #18021 /* ~"Grabteiler? Das ist mein Boss, obwohl ich nie mit ihm spreche... Und ich hab' ihn noch nie aus nächster Nähe gesehen. Er mischt sich nicht gern unters Volk. Dafür hat er seine Untergebenen, die sich um alles kümmern. Du findest ihn in seinem Schuber auf dem Lumpensamler Platz, aber ich würde ihn meiden, es sei denn, du hast einen guten Grund, mit ihm zu reden. Fremden gegenüber ist er ziemlich luchsig."
~ */
  IF ~~ THEN REPLY #18444 /* ~"Erzähl mir was über Pharod."~ */ GOTO 9
  IF ~~ THEN REPLY #18445 /* ~"Warum bezahlt die Leichenhalle für die Leichen?"
~ */ GOTO 11
  IF ~~ THEN REPLY #18446 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18447 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #18022 /* ~"Ich weiß nicht viel über ihn. Wir haben lange Zeit seine Jungs bekämpft, bis sie eines Tages plötzlich verschwunden waren, zusammen mit Pharod. Ab und zu erwischen wir noch den einen oder anderen Nachzügler auf dem Lumpensammler-Platz. Aber wo sich der Rest rumtreibt, ist uns schleierhaft."~ */
  IF ~~ THEN REPLY #18448 /* ~"Hat er noch viele Männer?"~ */ GOTO 10
  IF ~~ THEN REPLY #18452 /* ~"Erzähl mir was über Grabteiler."~ */ GOTO 8
  IF ~~ THEN REPLY #18453 /* ~"Warum bezahlt die Leichenhalle für die Leichen?"~ */ GOTO 11
  IF ~~ THEN REPLY #18454 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18456 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #18023 /* ~"Muß er wohl, denn wir haben gehört, daß seine Leute in letzter Zeit ziemlich erfolgreich sind. Viele Totenbüchler... viel Klimper, die er von den Staubies in der Leichenhalle kassiert. Wir wissen auch nicht, wie er das anstellt, da es bei uns zur Zeit nicht so gut läuft." Er zuckt mit den Achseln.~ */
  IF ~~ THEN REPLY #18457 /* ~"Erzähl mir was über Grabteiler."~ */ GOTO 8
  IF ~~ THEN REPLY #18459 /* ~"Warum bezahlt die Leichenhalle für die Leichen?"~ */ GOTO 11
  IF ~~ THEN REPLY #18460 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18461 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 5.1 6.1 7.2 8.1 9.2 10.1
  SAY #18024 /* ~"Na ja, es hält die Straßen im Stock sauber und die Pest und andere Seuchen fern und so. Obwohl die Staubies ihre Arbeit auch nicht ungern tun... Sie sorgen dafür, daß die Toten ordnungsgemäß begraben, eingeäschert oder sonst wie bearbeitet werden. Hat wohl mit ihrem Glauben zu tun und so."~ */
  IF ~~ THEN REPLY #18463 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #18464 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 4.2 5.2 6.2 7.3 8.2 9.3 10.2 11.0
  SAY #18025 /* ~"Schieß los, Schleifer! Vielleicht haben wir ja Glück, und jemand kippt um, während wir hier plaudern. Ha ha!"~ */
  IF ~~ THEN REPLY #18466 /* ~"Erzähl mir was über Sammler."
~ */ GOTO 5
  IF ~~ THEN REPLY #18467 /* ~"Kannst du mir was über diese Gegend erzählen?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18469 /* ~"Ich suche nach einem Mann namens Pharod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18471 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 15
  IF ~~ THEN REPLY #18472 /* ~"Vergiß es. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 3.1 12.1 14.1 15.1
  SAY #18026 /* ~"Das ist der Stock, Schleifer, der Ort am übelsten Ende Sigils. Nicht, daß Sigil tatsächlich ein Ende hätte, denn die Stadt ist ja rund und so... aber du weißt schon, was ich meine. Ha! Jedenfalls gibt es im Nordwesten ein großes Tor. Auf der anderen Seite davon liegt der Lumpensammler-Platz, wo Sammler wie ich ihre Absteige haben. Über den Rest Sigils weiß ich leider nicht so viel."~ */
  IF ~~ THEN REPLY #18473 /* ~"Kannst du mir was über Sammler erzählen?"~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18474 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18475 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 15
  IF ~~ THEN REPLY #18476 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."
~ */ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 3.2 12.2 13.1 15.2
  SAY #18027 /* ~"Den König der Sammler? Ich weiß nicht viel über ihn. Wir haben lange Zeit seine Jungs bekämpft, bis sie eines Tages plötzlich verschwunden waren, zusammen mit Pharod. Ab und zu erwischen wir noch den einen oder anderen Nachzügler auf dem Lumpensammler-Platz. Aber wo sich der Rest rumtreibt, ist uns schleierhaft."~ */
  IF ~~ THEN REPLY #18477 /* ~"Kannst du mir was über Sammler erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #18478 /* ~"Kannst du mir was über diese Gegend erzählen?"~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18479 /* ~"Ich suche auch ein Journal, das ich verloren habe."~ */ GOTO 15
  IF ~~ THEN REPLY #18480 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 3.3 12.3 13.2 14.2
  SAY #18028 /* ~"Hmm... Nicht, daß ich wüßte. Aber wenn ich eines finde - nehm ich's für dich mit."~ */
  IF ~~ THEN REPLY #18481 /* ~"Danke. Kannst du mir was über Sammler erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #18482 /* ~"Danke. Kannst du mir was über diese Gegend erzählen?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18483 /* ~"Ich suche außerdem nach einem Mann namens Pharod."~ */ GOTO 14
  IF ~~ THEN REPLY #18484 /* ~"Danke, das wäre nett. Leb wohl."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #18029 /* ~"Hallo, du da, Schleifer. Wir kennen uns doch, oder? Na klar! Jetzt erinnere ich mich. Sag mal, hast du irgendwelche Totenbüchler gesehen?"~ */
  IF ~~ THEN REPLY #18485 /* ~"Nein, jedenfalls nicht in der Nähe. Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #18486 /* ~"Nein, jedenfalls nicht in der Nähe. Leb wohl."~ */ GOTO 2
END
