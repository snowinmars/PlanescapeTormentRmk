// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRATBONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DRATBONE~

IF ~  Global("Ratbone","AR0101",0)
~ THEN BEGIN 0 // from:
  SAY #16225 /* ~Dieser große, spindeldürre Mann starrt vor sich auf den Boden. Hin und wieder bückt er sich, als suche er irgendetwas im Müll. Trotz seiner merkwürdigen, schlaksigen Proportionen wirkt er irgendwie geschmeidig.~ */
  IF ~~ THEN REPLY #16305 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 1
  IF ~~ THEN REPLY #16306 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #16226 /* ~Als du ihn ansprichst, fährt er zusammen und duckt sich... Du weißt nicht, ob er sich auf dich oder in eine andere Richtung stürzen wird. "Was? Sag, was du von mir willst, aber mach's kurz..."~ */
  IF ~~ THEN REPLY #16307 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #16308 /* ~"Nichts, schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #16227 /* ~"Aber ich hab' keine Antworten. Hau ab!" Erst jetzt bemerkst du den langen, geschwungenen Dolch in seiner Hand.~ */
  IF ~~ THEN REPLY #16309 /* ~"Du brichst dir schon nichts ab, wenn du mit mir redest..."~ */ GOTO 3
  IF ~~ THEN REPLY #16310 /* ~"Drohst du mir?"~ */ GOTO 6
  IF ~~ THEN REPLY #16311 /* ~"Leb wohl."~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #16228 /* ~"Meinst du?" Er schielt kurz zu dir. Dann spuckt er vor sich auf den Boden. "Und weshalb soll ich das bitte glauben?"~ */
  IF ~~ THEN REPLY #16312 /* ~"Ich verstehe nicht."~ */ GOTO 4
  IF ~~ THEN REPLY #16313 /* ~"Du wirst mir einfach vertrauen müssen."~ */ GOTO 5
  IF ~~ THEN REPLY #16314 /* ~"Vergiß es. Leb wohl."~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #16229 /* ~"Bist du schwerhörig, Dussel? Hmpf! Hör mal, woher soll ich wissen, daß du mir nur ein paar Fragen stellen willst? Und wenn ich deine Fragen nicht beantworte? Hältst du mich dann fest und folterst mich? Hmmm?"~ */
  IF ~~ THEN REPLY #16315 /* ~"Rede doch nur mit mir. Ich hätte da nur ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #16316 /* ~Schwur: "Ich werde dir nichts antun. Ich geb dir mein Wort."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_1","GLOBALLaw",1)
~ GOTO 5
  IF ~~ THEN REPLY #16317 /* ~Lüge: "Ich werde dir nichts antun. Ich geb dir mein Wort."
~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #16318 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 4.1 4.2
  SAY #16230 /* ~"Neee. Keine Chance. Such dir 'nen andern Dummen."~ */
  IF ~~ THEN REPLY #16319 /* ~Geh weg.~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #16231 /* ~"Hey. Hast du etwa Angst vor Rattenknochen? Fühlst du dich bedroht, Dussel?"~ */
  IF ~~ THEN REPLY #16320 /* ~"Nein."~ */ GOTO 7
  IF ~~ THEN REPLY #16321 /* ~"Ja."~ */ GOTO 8
  IF ~~ THEN REPLY #16322 /* ~"Vergiß es. Leb wohl."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #16232 /* ~"He-he! Kann man sich denken, so wie du aussiehst. Na? Was willst du von mir?"~ */
  IF ~~ THEN REPLY #16323 /* ~"Wie ich schon sagte, ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ GOTO 13
  IF ~~ THEN REPLY #16324 /* ~"Nichts, schon gut. Leb wohl."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #16233 /* ~"Dann haste Pech gehabt. Hau ab und laß mich in Ruhe."~ */
  IF ~~ THEN REPLY #16325 /* ~Geh weg.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 2.2 3.2 4.3 5.0 6.2 7.1 8.0
  SAY #16234 /* ~Als du gehen willst, ruft er: "He! Warte..."~ */
  IF ~~ THEN REPLY #16326 /* ~"Ja?"~ */ GOTO 10
  IF ~~ THEN REPLY #16327 /* ~Ignoriere ihn und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #16235 /* ~Er richtet sich auf und legt die Waffe zur Seite. "Wer hat dich geschickt? Was willst du hier?"~ */
  IF ~~ THEN REPLY #16328 /* ~"Niemand hat mich geschickt. Ich bin aus eigenen Stücken gekommen."~ */ GOTO 12
  IF ~~ THEN REPLY #16329 /* ~"Wie kommst du darauf, daß mich jemand geschickt hat?"
~ */ GOTO 12
  IF ~~ THEN REPLY #16330 /* ~"Wovon *redest* du?"~ */ GOTO 12
  IF ~~ THEN REPLY #16331 /* ~"Das geht dich überhaupt nichts an."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.3
  SAY #16236 /* ~Er spuckt wieder auf den Boden. "Hmpf. Dann mach dich vom Acker."~ */
  IF ~~ THEN REPLY #16332 /* ~Geh weg.~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 10.2
  SAY #16237 /* ~"Hmm..." Er schaut dich lange und durchdringend an. Nach einer ewigen Stille sagt er: "Na schön. Was willst du von mir?"~ */
  IF ~~ THEN REPLY #16333 /* ~"Wie ich schon sagte, ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ GOTO 13
  IF ~~ THEN REPLY #16334 /* ~"Nichts, schon gut. Leb wohl."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.0 12.0 15.0 17.0 20.0 21.1 22.3 23.1 24.2 25.1 27.2 28.0 29.1 33.0 34.0 35.7 36.0 37.4 39.0 40.4 41.0 42.4 43.3 44.2 45.2 46.1 47.2 48.4 49.3 50.3 51.2 52.3 55.1 58.2 59.2 62.0 64.1 65.1 76.0 77.0 79.0
  SAY #16238 /* ~"Na, sag schon. Was willst du wissen."~ */
  IF ~  Global("RB_Name","AR0101",0)
~ THEN REPLY #16335 /* ~"Wer bist du?"~ */ GOTO 14
  IF ~  Global("RB_Name","AR0101",1)
~ THEN REPLY #16336 /* ~"Wer bist du noch mal?"
~ */ GOTO 20
  IF ~~ THEN REPLY #16337 /* ~"Was machst du hier?~ */ GOTO 21
  IF ~~ THEN REPLY #16338 /* ~"Kannst du mir was über diese Gegend erzählen?"~ */ GOTO 42
  IF ~  Global("RB_Quest","AR0101",3)
~ THEN REPLY #16339 /* ~"Erzähl mir noch mal was über den Sammler und den Lebemann."~ */ GOTO 67
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",0)
~ THEN REPLY #16340 /* ~"Ich suche Pharod."~ */ GOTO 32
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",1)
~ THEN REPLY #16341 /* ~"Ich suche Pharod."~ */ GOTO 39
  IF ~  Global("Pharod","GLOBAL",0)
Global("RB_Pharod","AR0101",2)
~ THEN REPLY #16342 /* ~"Ich suche Pharod."~ */ GOTO 40
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16343 /* ~"Ich suche ein verlorenes Journal."~ */ GOTO 41
  IF ~~ THEN REPLY #16344 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #16239 /* ~"Ich bin Rattenknochen. Und du?"~ */
  IF ~~ THEN REPLY #16345 /* ~Lüge: "Ich bin, äh... Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("RB_Name","AR0101",1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_2","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #16346 /* ~"Ich habe keinen Namen."~ */ GOTO 16
  IF ~~ THEN REPLY #16347 /* ~"Ich... weiß nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_2","GLOBALLaw",1)
~ GOTO 17
  IF ~~ THEN REPLY #16348 /* ~"Das geht dich überhaupt nichts an."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0 16.0
  SAY #16240 /* ~Er runzelt die Stirn. "Ja, ja. Wer's glaubt, wird selig."~ */
  IF ~~ THEN REPLY #16349 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 13
  IF ~~ THEN REPLY #16350 /* ~"Richtig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #16241 /* ~Rattenknochen grinst. "Natürlich nicht. Hatte ich mir fast gedacht. Und warum nicht?"~ */
  IF ~~ THEN REPLY #16351 /* ~Lüge: "Okay... Ich bin, äh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("RB_Name","AR0101",1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_2","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #16352 /* ~"Weil ich mich nicht dran erinnern kann."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_2","GLOBALLaw",1)
~ GOTO 17
  IF ~~ THEN REPLY #16353 /* ~"Das geht dich überhaupt nichts an."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 14.2 16.1
  SAY #16242 /* ~Rattenknochen zieht erstaunt die Augenbrauen hoch. "Im Ernst? Das ist ja so unglaublich, daß es fast schon wieder wahr sein könnte. Hat dir jemand deine narbige Birne zermatscht?"~ */
  IF ~~ THEN REPLY #16354 /* ~"So was Ähnliches. Ich hätte da noch andere Fragen..."~ */ DO ~SetGlobal("RB_Name","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16355 /* ~"Das ist eine lange Geschichte, vielleicht ein anderes Mal. Leb wohl."~ */ DO ~SetGlobal("RB_Name","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.3 16.2 30.3 31.2 32.3 35.3 35.5 37.0 37.2 40.0 40.2
  SAY #16243 /* ~"Was? Hmpf. Ich hätte mich nie auf dich einlassen sollen. Und jetzt hau ab. Ich will nichts mehr mit dir zu tun haben."~ */
  IF ~~ THEN REPLY #16356 /* ~"Ich hätte da noch ein paar Fragen."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 19
  IF ~~ THEN REPLY #16357 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 38.0 60.0
  SAY #16244 /* ~Er unterbricht dich mitten im Satz: "Nein! Das interessiert mich einen Dreck. Scher dich fort." Er dreht sich um und sucht weiter.~ */
  IF ~~ THEN REPLY #16358 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1
  SAY #16245 /* ~"Hey! Hast du das etwa schon vergessen, Dussel? Rattenknochen!"~ */
  IF ~~ THEN REPLY #16359 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16360 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #16246 /* ~"Nichts, was dich interessieren könnte."~ */
  IF ~~ THEN REPLY #16361 /* ~"Du suchst wohl was."~ */ GOTO 22
  IF ~~ THEN REPLY #16362 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16363 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #16247 /* ~"Nein, ich jage -" Er bricht plötzlich ab und beäugt dich mißtrauisch. "Was geht *dich* das eigentlich an?"~ */
  IF ~~ THEN REPLY #16364 /* ~"Ich bin einfach nur neugierig."~ */ GOTO 30
  IF ~~ THEN REPLY #16365 /* ~Wahrheit: "Vielleicht könnte ich ja helfen."
~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Rbone_1","GLOBALGood",1)
~ GOTO 30
  IF ~~ THEN REPLY #16366 /* ~Lüge: "Vielleicht könnte ich ja helfen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_3","GLOBALLaw",-1)
~ GOTO 30
  IF ~~ THEN REPLY #16367 /* ~"Ist mir völlig schnuppe. Ich hätte da ein paar andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16368 /* ~"Ist mir völlig schnuppe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 30.0 30.1 31.0 31.1 31.3
  SAY #16248 /* ~"Hmm. Ich jage Schädelratten."~ */
  IF ~~ THEN REPLY #16369 /* ~"Warum jagst du Ratten?"~ */ GOTO 24
  IF ~~ THEN REPLY #16370 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 13
  IF ~~ THEN REPLY #16371 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #16249 /* ~"Nicht einfach irgendwelche Ratten, verstehst du - sondern Schädelratten. Auf sie ist ein Kopfgeld ausgesetzt. Wußtest du das nicht? Für jeden Rattenschwanz gibt's eine Kupfermünze."~ */
  IF ~~ THEN REPLY #16372 /* ~"Warum ist ein Kopfgeld auf sie ausgesetzt?"~ */ GOTO 25
  IF ~~ THEN REPLY #16373 /* ~"Wo bringst du die Schwänze hin?"~ */ DO ~SetGlobal("RB_Rats","AR0101",1)
~ GOTO 26
  IF ~~ THEN REPLY #16374 /* ~"Interessant. Ich hätte da noch andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16375 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #16250 /* ~"Häh? Weil sie keine gewöhnlichen Ratten sind. Sie können einen Dussel ganz schön in Bedrängnis bringen. Je mehr von ihnen zusammenkommen, desto intelligenter werden sie... so intelligent, daß sie sogar Zauber aussprechen können, wie echte Zauberer. Der Stock - wie übrigens ganz Sigil - ist schon schlimm genug ohne diese fiepsenden Horden intelligenter Zauberratten!"~ */
  IF ~~ THEN REPLY #16376 /* ~"Wo bringst du die Schwänze hin?"~ */ DO ~SetGlobal("RB_Rats","AR0101",1)
~ GOTO 26
  IF ~~ THEN REPLY #16377 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16378 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #16251 /* ~"Warum fragst du? Hast du vor, selbst unter die Rattenfänger zu gehen?"~ */
  IF ~~ THEN REPLY #16379 /* ~"Ja."
~ */ GOTO 27
  IF ~~ THEN REPLY #16380 /* ~"Vielleicht."~ */ GOTO 27
  IF ~~ THEN REPLY #16381 /* ~"Nein, bin nur neugierig."~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #16252 /* ~"Dann such dir gefälligst ein anderes Revier, Dussel! Sie sind selten genug in letzter Zeit. Noch einen Schlucker können wir hier nicht gebrauchen."~ */
  IF ~~ THEN REPLY #16382 /* ~"Sie sind selten geworden in letzter Zeit? Weißt du, warum?"~ */ GOTO 28
  IF ~~ THEN REPLY #16383 /* ~"Ich würd's trotzdem gern wissen."~ */ GOTO 29
  IF ~~ THEN REPLY #16384 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 13
  IF ~~ THEN REPLY #16385 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 29.0
  SAY #16253 /* ~"Nein, weiß ich nicht. Vielleicht hat man zu viele gejagt. Ich bin schließlich nicht der einzige Rattenfänger in Sigil, sondern nur der einzige auf dem Lumpensammler-Platz."~ */
  IF ~~ THEN REPLY #16386 /* ~"Interessant. Ich hätte ein paar andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16387 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.2 27.1
  SAY #16254 /* ~"Hmm." Nachdem er dich kurz gemustert hat, seufzt er. "Keine Ahnung, weshalb ich dir das verrate... aber geh nach Osten, vom Platz weg, und dann Richtung Süden. Du findest es südlich vom Marktplatz. Aber schlag dir mein Revier aus dem Kopf. Hier gibt es kaum genug Ratten für einen Rattenfänger!"~ */
  IF ~~ THEN REPLY #16388 /* ~"Nicht? Irgendeine Ahnung, wieso?"~ */ GOTO 28
  IF ~~ THEN REPLY #16389 /* ~"Danke. Ich hätte da noch andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16390 /* ~"Danke, ich geh da irgendwann mal hin. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 22.0 22.1 22.2
  SAY #16255 /* ~"Hmm. Ohne Gegenleistung plausch ich schon mal gar nichts aus. Sag du mir zuerst, was du hier suchst."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16391 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16392 /* ~"Ich suche nach einem Journal, das ich verloren hab'."~ */ GOTO 23
  IF ~~ THEN REPLY #16393 /* ~"Ich weiß es auch nicht. Lauf einfach nur herum."~ */ GOTO 31
  IF ~~ THEN REPLY #16394 /* ~"Ich glaub nicht, daß dich das was angeht."~ */ GOTO 18
  IF ~~ THEN REPLY #16395 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.2
  SAY #16256 /* ~"Was? Los, Dussel, das klang aber nicht überzeugend. Wenn du schon lügen mußt, dann bitte richtig!" Er rollt mit den Augen und lacht bitter.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16396 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16397 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 23
  IF ~~ THEN REPLY #16398 /* ~"Ich laufe einfach nur so durch die Gegend, das sagte ich doch schon."~ */ GOTO 18
  IF ~~ THEN REPLY #16399 /* ~Erfinde irgendwas.~ */ GOTO 23
  IF ~~ THEN REPLY #16400 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 13.5
  SAY #16257 /* ~"Tust du das? Hmm..." Er beugt sich vor und flüstert: "Du bist schon nah dran. Und weshalb suchst du ihn? Ist er ein Freund? Oder ein Feind?"~ */
  IF ~~ THEN REPLY #16401 /* ~"Er hat Informationen für mich."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 33
  IF ~~ THEN REPLY #16402 /* ~Lüge: "Er ist ein Freund von mir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_4","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 34
  IF ~~ THEN REPLY #16403 /* ~Lüge: "Ein Feind."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_4","GLOBALLaw",-1)
~ GOTO 35
  IF ~~ THEN REPLY #16404 /* ~"Ich glaub nicht, daß dich das was angeht."~ */ DO ~SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~~ THEN REPLY #16405 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #16258 /* ~"Hat er das? Du bist gar nicht so weit weg. Sieh dich einfach mal in dieser Gegend um. Der Kerl hat sich gut versteckt, aber der Lumpensammler-Platz ist kein schlechter Ort zum Suchen. Er wird dir früh genug über den Weg laufen."~ */
  IF ~~ THEN REPLY #16406 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16407 /* ~"Ich werde losziehen und ihn suchen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #16259 /* ~"Ach ja?" Rattenknochen schaut dich prüfend an. "Hmm. Du willst wohl für ihn arbeiten, was? Hätte ich dir gar nicht zugetraut. Macht nichts... du bist jedenfalls gar nicht wo weit weg. Sieh dich einfach mal in dieser Gegend um. Der Kerl hat sich gut versteckt, aber der Lumpensammler-Platz ist kein schlechter Ort zum Suchen. Er wird dir früh genug über den Weg laufen."~ */
  IF ~~ THEN REPLY #16408 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16409 /* ~"Ich werde losziehen und ihn suchen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.2
  SAY #16260 /* ~Er zuckt zusammen. Dann schüttelt er den Kopf und gluckst. "Mann! Ich wäre nicht begeistert, wenn ein Schleifer mit deinem Gesicht mich suchen würde! Und der alte Pharod hätte wohl auch was dagegen, daß ich einem Knochenbrecher wie dir erzähle, wo er steckt. Wäre nicht ganz ungefährlich für Rattenknochen..."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #16410 /* ~Schwur: "Ich schwöre, daß ich deinen Namen nicht erwähnen werde."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_3","GLOBALLaw",1)
~ GOTO 36
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #16411 /* ~Schwur: "Ich schwöre, daß ich deinen Namen nicht erwähnen werde."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Rbone_3","GLOBALLaw",1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 37
  IF ~~ THEN REPLY #16412 /* ~Lüge: "Ich schwöre, daß ich deinen Namen nicht erwähnen werde."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_5","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 37
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16413 /* ~Wahrheit: "Sag mir, was du weißt, oder du wirst sein Schicksal teilen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16414 /* ~Wahrheit: "Sag mir, was du weißt, oder du wirst sein Schicksal teilen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16415 /* ~Täuschung: "Sag mir, was du weißt, oder du wirst sein Schicksal teilen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16416 /* ~Täuschung: "Sag mir, was du weißt, oder du wirst sein Schicksal teilen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
SetGlobal("RB_Pharod","AR0101",2)
~ GOTO 38
  IF ~~ THEN REPLY #16417 /* ~"Ach vergiß es. Ich möchte dich noch mal was anderes fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16418 /* ~"Vergiß es. Leb wohl.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #16261 /* ~"Verdammt! Na schön... ich glaub dir - frag mich nicht, weshalb." Er spuckt sich über die Schulter. "Ich hoffe, ich werde es nicht bereuen, Dussel! Schau dich einfach mal hier in der Gegend um. Der Kerl hat sich gut versteckt, aber der Lumpensammler-Platz ist kein schlechter Ort zum Suchen. Du wirst früh genug über ihn stolpern."~ */
  IF ~~ THEN REPLY #16419 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16420 /* ~"Ich werde losziehen und ihn suchen. Leb wohl."~ */ DO ~SetGlobal("RB_Pharod","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1 35.2
  SAY #16262 /* ~Er schüttelt traurig den Kopf. "Tut mir leid, nichts zu machen. Du bist aber schon ziemlich nah dran. Wirst ihn früh genug selber finden."~ */
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16421 /* ~Wahrheit: "Sag mir, was du weißt, oder du wirst sein Schicksal teilen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16422 /* ~Wahrheit: "Sag mir, was du weißt, oder du wirst sein Schicksal teilen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16423 /* ~Täuschung: "Sag mir, was du weißt, oder du wirst sein Schicksal teilen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16424 /* ~Täuschung: "Sag mir, was du weißt, oder du wirst sein Schicksal teilen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~~ THEN REPLY #16425 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16426 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.4 35.6 37.1 37.3 40.1 40.3
  SAY #16263 /* ~Er grinst höhnisch und spuckt dir vor die Füße. "Hmpf. Und du hast mir versprochen, du würdest mir nichts tun. Ich hätte mich nie auf dich einlassen sollen. Und jetzt hau ab. Ich will nichts mehr mit dir zu tun haben."~ */
  IF ~~ THEN REPLY #16427 /* ~"Ich hätte da noch ein paar Fragen."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ GOTO 19
  IF ~~ THEN REPLY #16428 /* ~"Na dann leb wohl."~ */ DO ~SetGlobal("Ratbone","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 13.6
  SAY #16264 /* ~Er schüttelt ärgerlich den Kopf. "Hatten wir das nicht schon geklärt? Schau dich am besten hier in der Gegend um. Der Kerl hat sich gut versteckt, aber der Lumpensammler-Platz ist kein schlechter Ort zum Suchen. Los! Schnapp dir den Schlucker, bevor ich mich weiter mit dir rumärgern muß!"~ */
  IF ~~ THEN REPLY #16429 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16430 /* ~"Ich werde losziehen und ihn suchen. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.7
  SAY #16265 /* ~Rattenknochens Miene wird säuerlich. "Hast du nicht gehört? Aus mir kriegst du keinen Ton mehr raus. Du bist jedenfalls nah dran. Find ihn doch selber."~ */
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16431 /* ~Wahrheit: "Sag mir, was du weißt, oder du wirst sein Schicksal teilen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16432 /* ~Wahrheit: "Sag mir, was du weißt, oder du wirst sein Schicksal teilen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rbone_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~  !Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16433 /* ~Täuschung: "Sag mir, was du weißt, oder du wirst sein Schicksal teilen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
~ GOTO 18
  IF ~  Global("Lawful_Rbone_1","GLOBAL",1)
~ THEN REPLY #16434 /* ~Täuschung: "Sag mir, was du weißt, oder du wirst sein Schicksal teilen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rbone_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Rbone_7","GLOBALLaw",-1)
~ GOTO 38
  IF ~~ THEN REPLY #16435 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16436 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 13.8
  SAY #16266 /* ~"Wenn du es hier verloren hast, wünsch ich dir viel Glück dabei, es in diesem heillosen Durcheinander wiederzufinden. Ich kann dir jedenfalls nicht weiterhelfen."~ */
  IF ~~ THEN REPLY #16437 /* ~"Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16438 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 13.3
  SAY #16267 /* ~"Was willst du wissen? Rattenknochen könnte ein paar Antworten für dich parat haben."~ */
  IF ~~ THEN REPLY #16439 /* ~"Wo könnte ich Arbeit finden?"~ */ GOTO 43
  IF ~~ THEN REPLY #16440 /* ~"Wo könnte ich hingehen, um mich zu amüsieren?"~ */ GOTO 48
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16441 /* ~"Gibt's hier irgendwas, auf das ich achten muß?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16442 /* ~"Gibt's hier irgendwas, auf das ich achten muß?"~ */ GOTO 50
  IF ~~ THEN REPLY #16443 /* ~"Vergiß es. Ich hätte da noch andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16444 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 48.1 49.0 50.1 51.0 52.1 58.0 59.0
  SAY #16268 /* ~"So, so, Arbeit? Mit Arbeit - ich meine, mit ehrlicher Arbeit - ist es im Stock nicht weit her. Im Notfall könntest du dich als Sammler verdingen... Ich an deiner Stelle würde mich in einem anderen Bezirk umsehen, am besten im Unteren."~ */
  IF ~  Global("RB_Rats","AR0101",1)
~ THEN REPLY #16445 /* ~"Wie wär's mit Rattenjagen?"~ */ GOTO 47
  IF ~~ THEN REPLY #16446 /* ~"Ein Sammler?"~ */ GOTO 45
  IF ~~ THEN REPLY #16447 /* ~"Wie komme ich zum Unteren Bezirk?"~ */ GOTO 44
  IF ~~ THEN REPLY #16448 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 13
  IF ~~ THEN REPLY #16449 /* ~"Vielleicht guck ich da mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.2 45.1 47.1
  SAY #16269 /* ~"Kein Problem. Du mußt einfach... hmm, nein. Um ehrlich zu sein: Den Weg, den ich mal kannte, gibt es gar nicht mehr... Diese Dabus haben die Gegend völlig umgekrempelt. Keine Ahnung, wie man als Schleifer heute dorthin kommt."~ */
  IF ~~ THEN REPLY #16450 /* ~"Dabus?"~ */ GOTO 46
  IF ~~ THEN REPLY #16451 /* ~"Was hast du da über Sammler gesagt?"~ */ GOTO 45
  IF ~~ THEN REPLY #16452 /* ~"Ich hätte da noch ein paar Fragen."
~ */ GOTO 13
  IF ~~ THEN REPLY #16453 /* ~"Danke. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.1 44.1 46.0 47.0
  SAY #16270 /* ~"Ja. Die Sammler schaffen die Totenbüchler aus Sigil... hauptsächlich aus dem Stock... fort und bringen sie in die Leichenhalle. Die Toten - die Staubmenschen - kaufen ihnen die Leichen ab. Damit die Stadt nicht weiter runterkommt."~ */
  IF ~  Global("RB_Rats","AR0101",1)
~ THEN REPLY #16454 /* ~"Wie wär's mit Rattenjagen?"~ */ GOTO 47
  IF ~~ THEN REPLY #16455 /* ~"Wie komme ich zum Unteren Bezirk?"~ */ GOTO 44
  IF ~~ THEN REPLY #16456 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 13
  IF ~~ THEN REPLY #16457 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.0
  SAY #16271 /* ~"Bist du wirklich so planlos? Mann! Die Dabus sind die Diener der Dame der Schmerzen, der Herrscherin Sigils. Stell mir bloß keine Fragen über sie, denn es bringt schon Unglück, sie nur zu erwähnen."~ */
  IF ~~ THEN REPLY #16458 /* ~"Was hast du da über Sammler gesagt?"~ */ GOTO 45
  IF ~~ THEN REPLY #16459 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16460 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 43.0 45.0
  SAY #16272 /* ~Rattenknochen erhebt abwehrend die Hände: "Oh, nein! Schlag dir das gleich aus dem Kopf... nicht in diesem Revier! Hier gibt es für mich kaum genug. Wahrscheinlich sind sie schon so gut wie ausgestorben. Versuch dein Glück woanders, wenn du unter die Rattenfänger gehen willst."~ */
  IF ~~ THEN REPLY #16461 /* ~"Was hast du da über Sammler gesagt?"~ */ GOTO 45
  IF ~~ THEN REPLY #16462 /* ~"Wie komme ich zum Unteren Bezirk?"~ */ GOTO 44
  IF ~~ THEN REPLY #16463 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 13
  IF ~~ THEN REPLY #16464 /* ~"Wir werden sehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 42.1 50.2 51.1 52.2 58.1 59.1
  SAY #16273 /* ~"Ich weiß zwar nicht genau, was du suchst, aber ich schätze, du suchst am falschen Fleck. Sogar die 'Damen' können in diesem Teil Sigils gefährlich werden, wenn du weißt, wovon ich rede."~ */
  IF ~~ THEN REPLY #16465 /* ~"Nein."~ */ GOTO 49
  IF ~~ THEN REPLY #16466 /* ~"Wo könnte ich hier Arbeit finden?"~ */ GOTO 43
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16467 /* ~"Gibt's hier irgendwas, auf das ich achten muß?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16468 /* ~"Gibt's hier irgendwas, auf das ich achten muß?"~ */ GOTO 50
  IF ~~ THEN REPLY #16469 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16470 /* ~"Das ist alles, was ich hören wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #16274 /* ~"Ach... ist nicht wichtig."~ */
  IF ~~ THEN REPLY #16471 /* ~"Wo könnte ich hier Arbeit finden?"~ */ GOTO 43
  IF ~  Global("RB_Quest","AR0101",0)
!Dead("Adyzoel")
~ THEN REPLY #16472 /* ~"Gibt's hier irgendwas, auf das ich achten muß?"~ */ GOTO 52
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16473 /* ~"Gibt's hier irgendwas, auf das ich achten muß?"~ */ GOTO 50
  IF ~~ THEN REPLY #16474 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16475 /* ~"Das ist alles, was ich hören wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 42.3 48.3 49.2
  SAY #16275 /* ~"Nichts Besonderes... Aber hier weiß man ja nie, was passieren kann. Paß auf, wem du den Rücken zudrehst und was du den Leuten erzählst. Mit dem falschen Schleifer zu plauschen, reicht manchmal schon aus, um einen Dussel ins Totenbuch zu befördern, und zwar im Eiltempo."~ */
  IF ~~ THEN REPLY #16476 /* ~"Schlimmer?"~ */ GOTO 51
  IF ~~ THEN REPLY #16477 /* ~"Wo könnte ich Arbeit finden?"~ */ GOTO 43
  IF ~~ THEN REPLY #16478 /* ~"Wo könnte ich hingehen, um mich zu amüsieren?"~ */ GOTO 48
  IF ~~ THEN REPLY #16479 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16480 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #16276 /* ~Er nickt ernst. "Sicher. Versuch mir nicht weiszumachen, du könntest dir nichts Schlimmeres als den Tod vorstellen..."~ */
  IF ~~ THEN REPLY #16481 /* ~"Wo könnte ich Arbeit finden?"~ */ GOTO 43
  IF ~~ THEN REPLY #16482 /* ~"Wo könnte ich hingehen, um mich zu amüsieren?"~ */ GOTO 48
  IF ~~ THEN REPLY #16483 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 13
  IF ~~ THEN REPLY #16484 /* ~"Das ist alles, was ich hören wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 42.2 48.2 49.1
  SAY #16277 /* ~"Ja, einiges. Doch auf einen solltest du ein besonderes Auge werfen... und zwar auf diesen Lebemann, der den Stock unsicher macht. Er sieht nicht aus wie ein Knochenbrecher, aber der Mann ist ein geborener Kämpfer, so wahr ich Rattenknochen heiße."~ */
  IF ~~ THEN REPLY #16485 /* ~"Wer ist er?"~ */ GOTO 53
  IF ~~ THEN REPLY #16486 /* ~"Wo könnte ich Arbeit finden?"
~ */ GOTO 43
  IF ~~ THEN REPLY #16487 /* ~"Wo könnte ich hingehen, um mich zu amüsieren?"~ */ GOTO 48
  IF ~~ THEN REPLY #16488 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 13
  IF ~~ THEN REPLY #16489 /* ~"Dann werde ich nach ihm Ausschau halten. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #16278 /* ~"Warte, Dussel, ich bin noch nicht fertig. Der Tonangebende ist nicht so sehr der Lebemann als dieser dreckige Sammler, der ihn hin- und herscheucht. Glaub mir: Der Sammler hat mehr mit den Opfern des Lebemanns zu tun, als daß er nur die Totenbüchler fortschafft."~ */
  IF ~~ THEN REPLY #16490 /* ~"Sammler?"~ */ GOTO 54
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16491 /* ~"Was meinst du?"~ */ GOTO 55
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16492 /* ~"Woher weißt du das?"~ */ GOTO 55
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16493 /* ~"Was meinst du?"~ */ GOTO 78
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16494 /* ~"Woher weißt du das?"~ */ GOTO 78
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #16279 /* ~"Ja, das sind die Leute, die die Toten aus Sigil - vor allem aus dem Stock - wegschaffen und zur Leichenhalle bringen, wo sie sie verkaufen."~ */
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16495 /* ~"Was meinst du mit 'hat mehr zu tun mit'?"~ */ GOTO 55
  IF ~  Global("RB_Quest","AR0101",0)
~ THEN REPLY #16496 /* ~"Woher kennst du diesen Sammler?"~ */ GOTO 55
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16497 /* ~"Was meinst du mit 'hat mehr zu tun mit'?"~ */ GOTO 78
  IF ~  GlobalGT("RB_Quest","AR0101",0)
~ THEN REPLY #16498 /* ~"Woher kennst du diesen Sammler?"~ */ GOTO 78
END

IF ~~ THEN BEGIN 55 // from: 53.1 53.2 54.0 54.1
  SAY #16280 /* ~"Hmm... das scheint dich ja tatsächlich sehr zu interessieren - ist auch ein echtes Dunkel. Nicht nur normaler Plausch. Doch wenn du mehr wissen willst, mußt du mir zuerst einen Gefallen tun."~ */
  IF ~~ THEN REPLY #16499 /* ~"Was für einen Gefallen?"~ */ GOTO 56
  IF ~~ THEN REPLY #16500 /* ~"Ach vergiß es. Ich hätte da noch andere Fragen."~ */ GOTO 13
  IF ~~ THEN REPLY #16501 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #16281 /* ~"Also gut. Ich hab' 'ne Wette abgeschlossen mit 'nem Freund... eine Art Wettbewerb: Ich sammle Rattenschwänze. Ich will so viele davon, wie ich kriegen kann. Aber nicht von gewöhnlichen Ratten, sondern von Schädelratten... Klugschädlingen. Bring mir fünf Schwänze, und ich erzähl dir das ganze Dunkel über den schmuddligen Sammler und den blutrünstigen Lebemann."~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16502 /* ~"Ich hab' deine fünf Rattenschwänze hier."
~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16503 /* ~"Schädelratten?"~ */ GOTO 57
  IF ~~ THEN REPLY #16504 /* ~"Ich verstehe."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16505 /* ~"Dafür ist mir meine Zeit zu kostbar."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 56.1
  SAY #16282 /* ~"Genau. Es sind keine gewöhnlichen Ratten. Sie können einen Dussel ganz schön in Bedrängnis bringen. Je mehr davon zusammenkommen, desto intelligenter werden sie... so intelligent, daß sie dich aus dem Hinterhalt angreifen oder Zauber aussprechen können, wie echte Zauberer. Nimm dich ihn acht, wenn denen an die Schwänze willst!"~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16506 /* ~"Ich hab' deine fünf Rattenschwänze hier."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16507 /* ~"Ich verstehe."
~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16508 /* ~"Dafür ist mir meine Zeit zu kostbar."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 56.2 57.1 78.0
  SAY #16283 /* ~"Richtig. Sonst noch was?"~ */
  IF ~~ THEN REPLY #16509 /* ~"Ja. Wo könnte ich Arbeit finden?"~ */ GOTO 43
  IF ~~ THEN REPLY #16510 /* ~"Ja. Wo könnte ich hingehen, um mich zu amüsieren?"~ */ GOTO 48
  IF ~~ THEN REPLY #16511 /* ~"Ja, ich hätte da noch andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16512 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 56.3 57.2 78.1
  SAY #16284 /* ~"Wie du willst. Du weißt ja, was du mir besorgen mußt, wenn du das Dunkel der beiden kennen möchtest. Sonst noch was?"~ */
  IF ~~ THEN REPLY #16513 /* ~"Ja. Wo könnte ich Arbeit finden?"~ */ GOTO 43
  IF ~~ THEN REPLY #16514 /* ~"Ja. Wo könnte ich hingehen, um mich zu amüsieren?"~ */ GOTO 48
  IF ~~ THEN REPLY #16515 /* ~"Ja, ich hätte da noch andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16516 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~  Global("Ratbone","AR0101",1)
~ THEN BEGIN 60 // from:
  SAY #16285 /* ~"Ich versteh nicht, was du hier willst... aus mir kriegst du keinen Ton mehr raus."~ */
  IF ~~ THEN REPLY #16517 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 19
  IF ~  !Global("Chaotic_Rbone_7","GLOBAL",1)
Global("RB_Sorry","AR0101",0)
~ THEN REPLY #16518 /* ~"Ich wollte mich entschuldigen."~ */ GOTO 62
  IF ~  Global("Chaotic_Rbone_7","GLOBAL",1)
Global("RB_Sorry","AR0101",0)
~ THEN REPLY #16519 /* ~"Ich wollte mich entschuldigen."~ */ GOTO 61
  IF ~  Global("RB_Sorry","AR0101",1)
~ THEN REPLY #16520 /* ~"Ich wollte mich entschuldigen."~ */ GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 60.2
  SAY #16286 /* ~"Nein, Dussel. Du bist zu weit gegangen. Du hast mich angelogen und obendrein noch bedroht... Hau ab."~ */
  IF ~~ THEN REPLY #16521 /* ~Geh.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.1
  SAY #16287 /* ~"Hmmm." Er denkt kurz nach und spuckt sich über die Schulter. "Ich kann nicht behaupten, daß ich nicht auch gern 'ne zweite Chance hätte. Aber du sollst deine haben. Nur paß diesmal auf, was du sagst, Dussel..."~ */
  IF ~~ THEN REPLY #16522 /* ~"Danke. Ich hätte da ein paar Fragen..."
~ */ DO ~SetGlobal("Ratbone","AR0101",2)
SetGlobal("RB_Sorry","AR0101",1)
~ GOTO 13
  IF ~~ THEN REPLY #16523 /* ~"Mach ich. Leb wohl."~ */ DO ~SetGlobal("Ratbone","AR0101",2)
SetGlobal("RB_Sorry","AR0101",1)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 60.3
  SAY #16288 /* ~"Nein, Dussel. Du hattest deine zweite Chance. Und jetzt zieh Leine."~ */
  IF ~~ THEN REPLY #16524 /* ~Geh weg.~ */ DO ~Enemy()
~ EXIT
END

IF ~  Global("Ratbone","AR0101",2)
GlobalLT("RB_Quest","AR0101",2)
~ THEN BEGIN 64 // from:
  SAY #16289 /* ~Rattenknochen blickt auf, als du näherkommst. "Hmm?"~ */
  IF ~  GlobalGT("RB_Quest","AR0101",0)
NumItemsPartyGT("Tail",4)
~ THEN REPLY #16525 /* ~"Ich hätte diese Rattenschwänze für dich."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16526 /* ~"Ich hätte ein paar Fragen..."
~ */ GOTO 13
  IF ~~ THEN REPLY #16527 /* ~"Bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~  Global("Ratbone","AR0101",2)
Global("RB_Quest","AR0101",2)
~ THEN BEGIN 65 // from:
  SAY #16290 /* ~Rattenknochen blickt auf, als du näherkommst. "Sei gegrüßt. Hast du schon alle Schwänze beisammen?"~ */
  IF ~  NumItemsPartyGT("Tail",4)
~ THEN REPLY #16528 /* ~"Ja."~ */ DO ~TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
TakePartyItemNum("Tail",1)
SetGlobal("RB_Quest","AR0101",3)
AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #16529 /* ~"Noch nicht. Ich hätte da ein paar Fragen..."
~ */ GOTO 13
  IF ~~ THEN REPLY #16530 /* ~"Nein, noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 56.0 57.0 64.0 65.0
  SAY #16291 /* ~Er nimmt die Schwänze und steckt sie in einen Lederbeutel. Dabei lacht er vor sich hin. "Na, wenn die nicht reichen! Besten Dank."~ */
  IF ~~ THEN REPLY #16531 /* ~"Du wirst mir dein Geheimnis verraten, und zwar jetzt."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 13.4 66.0
  SAY #16292 /* ~"Aber sicher. Ich dachte mir gleich, daß da was nicht stimmt, als ich diesen Lebemann sah. Sich im Stock zu duellieren, um so wenig Aufsehen wie möglich zu erregen, ist eine Sache, aber er treibt sich hier schon seit Tagen rum... anstatt den Stock schnurstracks zu verlassen."~ */
  IF ~~ THEN REPLY #16532 /* ~"Aufmerksamkeit?"~ */ GOTO 68
  IF ~~ THEN REPLY #16533 /* ~"Erzähl weiter..."~ */ GOTO 69
  IF ~~ THEN REPLY #16534 /* ~"Ich werde mir den Rest später anhören müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #16293 /* ~"Ja, des Gesetzes. Gnadentöter und dergleichen. Sie bewachen die Straßen Sigils - jedenfalls manche davon - und sorgen für 'Recht und Ordnung'." Er zieht eine Grimasse. "Von den ärmeren Vierteln dieser Stadt, wie dem Stock, halten sie sich fern."~ */
  IF ~~ THEN REPLY #16535 /* ~"Aha. Also erzähl weiter..."
~ */ GOTO 69
  IF ~~ THEN REPLY #16536 /* ~"Ich werde mir den Rest später anhören müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 67.1 68.0
  SAY #16294 /* ~"Ich hab' das Diebesleben schon lange aufgegeben - frag mich nicht, weshalb - es war mir zuviel, zu einfach. Eines Nachts, gegen Tiefstand, habe ich mich von hinten an seine Absteige, diesen Flohzirkus von Wirtshaus, herangeschlichen, und rate mal, wen ich da an seinem Fenster stehen sah? Diesen Sammler!"~ */
  IF ~~ THEN REPLY #16537 /* ~"Erzähl bitte weiter..."~ */ GOTO 70
  IF ~~ THEN REPLY #16538 /* ~"Ich werde mir den Rest später anhören müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #16295 /* ~"Deshalb bin ich jetzt doppelt mißtrauisch. Mich packte die Neugier und ich begann, den Sammler zu beschatten. Er schläft nie, und er ißt nie... wenn der Lebemann gerade nicht aktiv ist, setzt er sich in die dunkelste Gasse, die er finden kann, und starrt einfach so ins Leere."~ */
  IF ~~ THEN REPLY #16539 /* ~"Interessant. Erzähl weiter..."~ */ GOTO 71
  IF ~~ THEN REPLY #16540 /* ~"Ich werde mir den Rest später anhören müssen. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #16296 /* ~"Das Beste kommt noch. In einer dunklen Nacht lag ich auf einem Dach über der Gasse, wo der Sammler saß. Und rate mal, wer da kam und ihn besuchte?"~ */
  IF ~~ THEN REPLY #16541 /* ~"Der Lebemann?"~ */ GOTO 72
  IF ~~ THEN REPLY #16542 /* ~"Erzähl's mir."~ */ GOTO 73
  IF ~~ THEN REPLY #16543 /* ~"Erzähl's mir ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #16297 /* ~"Nein! Ein *Scheusal*!"~ */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 71.1 72.0
  SAY #16298 /* ~"Und was für ein Scheusal. Ein wahrer Augenschmaus mit diesen Engelsflügeln und Lippen wie... wie... na ja, sie sah jedenfalls hinreißend aus. Doch sie war ein Scheusal - eine Verführerin, eine Baatezu-Frau, von der Sorte, die bei uns Erinnye heißen würde."~ */
  IF ~~ THEN REPLY #16544 /* ~"Erzähl weiter..."~ */ GOTO 74
  IF ~~ THEN REPLY #16545 /* ~"Ich werde mir den Rest später anhören müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #16299 /* ~"Ich hätte alles gegeben um zu hören, worüber sie reden, aber ich wußte, wie gefährlich es sein kann, die Aufmerksamkeit eines Scheusals auf sich zu ziehen. Jedenfalls unterhielten sie sich eine Weile. Dann lachte sie - ein böses, spöttisches Lachen - und verschwand. Und der Sammler fauchte ihr hinterher!"~ */
  IF ~~ THEN REPLY #16546 /* ~"Bist du sicher, daß das alles stimmt?"
~ */ GOTO 75
  IF ~~ THEN REPLY #16547 /* ~"Wieso würde ein Scheusal mit einem Sammler reden?"~ */ GOTO 76
  IF ~~ THEN REPLY #16548 /* ~"Eine interessante Geschichte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #16300 /* ~"Mann! Dann geh doch selber hin und guck, wenn du mir nicht glaubst! Aber paß auf - dieser Lebemann ist ein übler Knochenbrecher. Jeder, der sich mit ihm duelliert oder den Sammler belästigt, landet im Handumdrehn im Totenbuch."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #16549 /* ~"Wieso würde ein Scheusal mit einem Sammler reden?"~ */ DO ~SetGlobal("RC_ID","GLOBAL",1)
~ GOTO 76
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #16550 /* ~"Wieso würde ein Scheusal mit einem Sammler reden?"~ */ DO ~SetGlobal("RC_ID","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #16551 /* ~"Eine interessante Geschichte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 74.1 75.0
  SAY #16301 /* ~"Du hast überhaupt nichts verstanden, du hohlköpfiger Schlucker! Er ist überhaupt kein Sammler! Hey... wenn dir je ein Scheusal begegnen sollte... ein Baatezu, wohlgemerkt, und nicht einer dieser bekloppten Tanar-Ri... dann frag doch! Wer weiß, was du da so alles erfährst."~ */
  IF ~~ THEN REPLY #16552 /* ~"Danke für die Auskunft. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16553 /* ~"Vielleicht, falls ich einen treffe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY #16302 /* ~"Du hast überhaupt nichts verstanden, du hohlköpfiger Schlucker! Er ist überhaupt kein Sammler! Hey... wenn dir je so ein Scheusal begegnen sollte... ein Baatezu, wohlgemerkt, und nicht einer dieser bekloppten..." Er hält inne, als er Grace, die Gefallene, bemerkt. "Äh, ich meine einer dieser 'eigenwilligen' Tanar-Ri... dann frag doch! Wer weiß, was du da so alles erfährst."~ */
  IF ~~ THEN REPLY #16554 /* ~"Danke für die Auskunft. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16555 /* ~"Vielleicht, falls ich einen treffe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 53.3 53.4 54.2 54.3
  SAY #16303 /* ~"Du weißt genau, was ich für dieses Dunkel will: fünf Rattenschwänze. Und zwar nicht von irgendwelchen gewöhnlichen Ratten, sondern von Schädelratten... Klugschädlingen. Gib mir fünf Schwänze, und ich erzähl dir alles über diesen schlampigen Sammler und den blutrünstigen Lebemann."~ */
  IF ~~ THEN REPLY #16556 /* ~"Ich verstehe."~ */ DO ~SetGlobal("RB_Quest","AR0101",2)
~ GOTO 58
  IF ~~ THEN REPLY #16557 /* ~"Dafür ist mir meine Zeit zu kostbar."~ */ DO ~SetGlobal("RB_Quest","AR0101",1)
~ GOTO 59
END

IF ~  Global("Ratbone","AR0101",2)
Global("RB_Quest","AR0101",3)
~ THEN BEGIN 79 // from:
  SAY #16304 /* ~Rattenknochen blickt auf, als du näherkommst. "Hmm?"~ */
  IF ~~ THEN REPLY #16558 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #16559 /* ~"Komm nur gerade zufällig vorbei. Leb wohl."
~ */ EXIT
END
