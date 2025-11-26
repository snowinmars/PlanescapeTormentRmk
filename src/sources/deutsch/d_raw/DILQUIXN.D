// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIXN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIXN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #11350 /* ~Du siehst einen kleinen, rundlichen Mann, der einen verwirrten Eindruck macht. Die Falten seiner schlaffen Haut lassen vermuten, daß dies öfter der Fall ist. Er hält einen Humpen Bier in der Hand, den er scheinbar zügig auszutrinken gedenkt. Dazwischen spricht er zu dir mit einer sanften Stimme, die so leise ist, daß du ihn kaum verstehen kannst. "Hallo, Reisender. Ich bin Ilquix. Kann ich Euch behilflich sein?"~ */
  IF ~~ THEN REPLY #11351 /* ~"Sei gegrüßt. Ich möchte dir ein paar Fragen stellen."~ */ GOTO 2
  IF ~~ THEN REPLY #11352 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #11353 /* ~Der Mann mit der schlaffen Haut dreht sich zu dir um und lächelt. "Hallo, Reisender. Was kann Ilquix diesmal für Euch tun?"~ */
  IF ~~ THEN REPLY #11354 /* ~"Sei gegrüßt, Ilquix. Ich hätte ein paar Fragen an dich."~ */ GOTO 2
  IF ~~ THEN REPLY #11355 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 4.0 5.0 6.1 7.0 8.0 9.4 10.0
  SAY #11356 /* ~"Was möchtet Ihr wissen, mein Freund?"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11357 /* ~"Wer genau bist du?"~ */ GOTO 3
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11358 /* ~"Wer genau bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #11359 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #11360 /* ~"Was kannst du mir über die Gäste hier erzählen?"~ */ GOTO 6
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #11361 /* ~"Wer ist dieser brennende Mann?"~ */ GOTO 7
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #11362 /* ~"Ich suche nach einem Weg, Mochai dazu zu bringen, ihre Rechnung zu bezahlen. Irgendwelche Vorschläge?"~ */ GOTO 8
  IF ~~ THEN REPLY #11363 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #11365 /* ~"Ich? Ich bin nur ein bescheidener Mensch mit einer kleinen, feinen poetischen Ader und einem Hang zum Übernatürlichen. Leider habe ich die nötige Ausstattung nicht dabei, sonst würde ich Euch GERNE demonstrieren, was man mit der Macht alles anstellen kann." Er hält inne und sieht Grace bewundernd an. "Meinen Glückwunsch zur Wahl Eurer Reisegefährten. Ihr seid offensichtlich ein Mann, der seine Bedürfnisse kennt. Außerdem scheint Ihr Elan zu besitzen. Ehrgeizige Männer verdienen Respekt."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 12
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #11367 /* ~"Ich? Ich bin nur ein bescheidener Mann mit einer kleinen, feinen poetischen Ader und einem Hang zum Übernatürlichen. Leider habe ich die nötige Ausstattung nicht dabei, sonst würde ich Euch GERNE demonstrieren, was man mit der Macht alles anstellen kann. Vielleicht ein andermal?"~ */
  IF ~~ THEN REPLY #11369 /* ~"Ja, das wär gut. Jetzt hätte ich allerdings noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #11371 /* ~"Vielleicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #11373 /* ~"Über diesen Ort? Über die Bar zur Schwelenden Leiche? Ein prächtiges Wirtshaus mit einem prächtigen Wirt - Barkis ist ein wahrer Gentleman, und er hat den Ehrgeiz, sich noch weiter zu verbessern. Ich glaube, nützlichere Eigenschaften kann man sich nicht wünschen."~ */
  IF ~~ THEN REPLY #11374 /* ~"Sie verleihen den Menschen Antrieb. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #11376 /* ~"Viele würden dir zustimmen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #11377 /* ~"Diese Taverne hat viele unterschiedliche Gäste. Mit den meisten hab' ich schon gesprochen, und ich fand sie alle reizend - mit Ausnahme dieser Geschöpfe des Gesetzes." Er deutet auf die beiden Abishai in der Ecke. "Sie verpesten die Luft mit ihrer Anwesenheit. Sprich doch mal mit Barkis - soviel ich weiß, benötigt er Hilfe in einer bestimmten Angelegenheit. Dann gibt's noch diesen O. Ich versuche noch immer, ihn voll und ganz zu verstehen, was beileibe *nicht* einfach ist, wenn ich das so sagen darf. Das jedenfalls sind die interessanten Leute. Die anderen... na ja, vielleicht bin ich zu wählerisch."~ */
  IF ~~ THEN REPLY #11379 /* ~"Warum verachtest du Geschöpfe des Gesetzes?"~ */ GOTO 9
  IF ~~ THEN REPLY #11381 /* ~"Vielleicht. Ich hätte noch ein paar andere Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #11383 /* ~"Vielen Dank für deine Zeit. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY #11385 /* ~"Das? Ha. Das ist der Pechvogel, der seinem eigenen Willen nachgab, ohne die nötige Kraft zu besitzen, sein Verlangen zu kontrollieren. Er heißt Ignus, und er ist... war... ein Pyromane. Er verbrannte alles, nur nicht diejenigen, die er hätte verbrennen sollen, und am Ende hatte er soviel Macht, daß er nicht mehr Herr darüber werden konnte. Nun, Ihr seht ja, was aus ihm geworden ist. Wenn Ihr mehr wissen wollt, kann Euch Drusilla, diese traurige Gestalt, vielleicht weiterhelfen."~ */
  IF ~~ THEN REPLY #11387 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #11388 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #11390 /* ~Er lacht. Dabei wackelt sein Kiefer so sehr, daß er ihm aus dem Gesicht zu fallen droht. "Du könntest sie natürlich vergiften, mein Freund! Das hat bisher noch *jeden* Konflikt gelöst!" Er lacht wieder. "War nur ein Spaß." Er zwinkert.~ */
  IF ~~ THEN REPLY #11392 /* ~"Ganz ohne Zweifel. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #11393 /* ~"Ganz ohne Zweifel. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #11394 /* ~"Gute Frage, mein Freund! Ich bin auf der chaotischen Seite des Großen Rings aufgewachsen - über die Ebenen kannst du mit Candrian Griesgram sprechen (der unzutreffendste Name, der jemals einem Wesen gegeben wurde). Er gibt sich als großer Ebenenreisender aus. Aber zurück zum Thema: Ich habe viele Jahre im Chaos gelebt, und es gefiel mir. Gesetze, wie diese üblen Kreaturen sie vertreten, halte ich für tadelnswert und tyrannisch. Wenn ich schon zerquetscht werden soll, dann lieber von einem Individuum und nicht von einer gefühllosen Maschine."~ */
  IF ~~ THEN REPLY #11395 /* ~Wahrheit: "Ich bin genau derselben Meinung."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_One","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11396 /* ~Lüge: "Ich bin genau derselben Meinung."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_Two","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11397 /* ~Wahrheit: "Das sehe ich anders."~ */ DO ~IncrementGlobalOnceEx("GLOBALLaw_Ilquix_One","GLOBALLaw",1)
~ GOTO 10
  IF ~~ THEN REPLY #11398 /* ~Lüge: "Das sehe ich anders."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_Two","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11399 /* ~"Es gibt viele, die dir zustimmen würden. Ich habe noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #11400 /* ~"Es gibt viele, die dir zustimmen würden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 9.3
  SAY #11401 /* ~Ilquix lächelt breit. Seine fetten Backen bewegen sich dabei kaum. "Jedem das Seine, nicht wahr? Hattest du sonst noch Fragen?"~ */
  IF ~~ THEN REPLY #11402 /* ~"Ja."~ */ GOTO 2
  IF ~~ THEN REPLY #11403 /* ~"Nein. Leb wohl."~ */ EXIT
END
