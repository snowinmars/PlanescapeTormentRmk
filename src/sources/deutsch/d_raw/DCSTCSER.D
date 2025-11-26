// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCSER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCSER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9998 /* ~Du siehst einen erschöpft wirkenden Mann mittleren Alters. Als er merkt, daß du ihn anschaust, verbeugt er sich leicht.~ */
  IF ~~ THEN REPLY #9999 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #10000 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10001 /* ~Er sieht dir nicht in die Augen, sondern starrt auf den Boden vor deinen Füßen. "Guten Tag, Sir. Wie kann ich Euch behilflich sein?"~ */
  IF ~~ THEN REPLY #10002 /* ~"Du könntest mich ruhig ansehen, wenn ich mit dir rede."~ */ GOTO 2
  IF ~~ THEN REPLY #10003 /* ~"Ich habe ein paar Fragen an dich."
~ */ GOTO 3
  IF ~~ THEN REPLY #10004 /* ~"Ach, egal."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10005 /* ~Er blickt kurz auf, dann aber schnell wieder hinab auf deine Füße. "Mir als Diener steht es nicht zu, Euren Blick zu erwidern, Sir."~ */
  IF ~~ THEN REPLY #10006 /* ~"Gut. Du weißt, wo du hingehörst und solltest da auch bleiben."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Servant_1","GLOBALLaw",1)
~ GOTO 3
  IF ~~ THEN REPLY #10007 /* ~"Du bist nicht mein Diener, also hätte ich es gerne, daß du mir wie ein Gleichgestellter in die Augen siehst."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Servant_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #10008 /* ~"Wie du meinst. Ich hätte da ein paar Fragen an dich."~ */ GOTO 3
  IF ~~ THEN REPLY #10009 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1 2.2 4.0 6.0 7.1 8.0 10.0
  SAY #10010 /* ~Er nickt, jedoch ohne dich dabei anzuschauen. "Ja, Sir."~ */
  IF ~~ THEN REPLY #10011 /* ~"Ich suche nach einem Deva. Mir ist zu Ohren gekommen, er sei in Verdammnis. Du hast ihn nicht zufällig gesehen?"
~ */ GOTO 4
  IF ~~ THEN REPLY #10012 /* ~"Erzähl mir was über Verdammnis."~ */ GOTO 5
  IF ~~ THEN REPLY #10013 /* ~"Was gibt's für Neuigkeiten?"~ */ GOTO 7
  IF ~~ THEN REPLY #10014 /* ~"Wer hat hier was zu sagen?"~ */ GOTO 9
  IF ~~ THEN REPLY #10015 /* ~"Ach, egal."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10016 /* ~"Ich weiß von keinem Deva, Sir. Ich kann mir nicht einmal vorstellen, daß es in der Nähe der Stadt einen gibt, geschweige denn in der Stadt selbst." Er zögert kurz. "Wendet Euch doch einfach an das Verwaltungsbüro am Marktplatz. Dort müßte man von einem solchen Besucher wissen."~ */
  IF ~~ THEN REPLY #10017 /* ~"Meinen Dank. Ich hätte aber noch mehr Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #10018 /* ~"Das ist mir eine große Hilfe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #10019 /* ~"Da gibt es nicht viel zu erzählen, Sir. Verdammnis ist eine Torstadt am Rand der Außenländer. Hier befindet sich auch das Tor nach Carzeri, und zwar auf dem Marktplatz..." Er runzelt nachdenklich die Stirn. "Aber ich glaube nicht, daß das Tor noch offen ist. Wohl damit sich die Pest nicht ausbreiten kann..."~ */
  IF ~~ THEN REPLY #10020 /* ~"Pest?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #10021 /* ~Der Ton deiner Stimme veranlaßt ihn zu einer hastigen Erklärung. "Ja, Sir, aber Ihr braucht Euch keine Gedanken zu machen. Die verseuchten Stadtteile wurden abgeriegelt, und alles ist unter Kontrolle."~ */
  IF ~~ THEN REPLY #10022 /* ~"Ähh... schön. Darf ich dich dann noch was andres fragen?"~ */ GOTO 3
  IF ~~ THEN REPLY #10023 /* ~"Das ist mir eine große Hilfe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #10024 /* ~"Neuigkeiten... Soviel ich weiß, soll bald irgendeine Hinrichtung stattfinden... Aber sonst fällt mir nichts ein, Sir."~ */
  IF ~~ THEN REPLY #10025 /* ~"Wer wird denn hingerichtet und aus welchem Grund?"~ */ GOTO 8
  IF ~~ THEN REPLY #10026 /* ~"Also gut. Ich muß dich noch was fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #10027 /* ~"Ich verstehe. Vielen Dank für die Informationen. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10028 /* ~Er zuckt mit den Achseln. "Ich weiß nicht, Sir. Was spielt es für eine Rolle... solange es sich nicht um Euch oder mich handelt?"~ */
  IF ~~ THEN REPLY #10029 /* ~"... Ich schätze nicht. Darf ich dich noch was anderes fragen?"~ */ GOTO 3
  IF ~~ THEN REPLY #10030 /* ~"Ich verstehe. Ich muß mich jetzt auf den Weg machen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY #10031 /* ~"Tovus Giljaf. Du findest ihn im Verwaltungsbüro am Marktplatz."~ */
  IF ~~ THEN REPLY #10032 /* ~"Ich verstehe. Was kannst du mir über Tovus erzählen?"~ */ GOTO 10
  IF ~~ THEN REPLY #10033 /* ~"Vielen Dank. Ich muß dich noch was fragen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #10034 /* ~Zum ersten Mal schaut er richtig hoch und nimmt Blickkontakt mit dir auf. "Nichts, Sir. Gar nichts. Wenn Ihr Auskünfte über den Herrn wünscht, fragt ihn am besten selbst." Er senkt seinen Blick.~ */
  IF ~~ THEN REPLY #10035 /* ~"Gut, gut, das werde ich vielleicht auch tun. Darf ich dir noch eine andere Frage stellen?"~ */ GOTO 3
  IF ~~ THEN REPLY #10036 /* ~"Ich verstehe. Nun, ich muß jetzt gehen. Leb wohl."~ */ EXIT
END
