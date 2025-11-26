// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRKCHSR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DRKCHSR~

IF ~  Global("RChaser","AR0400",0)
!Dead("Adyzoel")
~ THEN BEGIN 0 // from:
  SAY #15496 /* ~Der schmutzige, mit einer Robe bekleidete Mann schlendert umher und blickt sich vorsichtig um. Dir fällt auf, daß er sich nie allzu weit von einem jungen Edelmann entfernt, der in der Nähe steht. Als er merkt, daß du ihn beobachtest, macht er sich rasch davon.~ */
  IF ~~ THEN REPLY #15520 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Rchaser","AR0400",1)
~ GOTO 1
  IF ~~ THEN REPLY #15521 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #15497 /* ~Er dreht sich plötzlich zu dir um. Seine Augen sind vor Furcht weit aufgerissen. Sein Gesicht ist mit nässenden Wunden übersät, und fette, schwarze Fliegen umschwirren seinen Kopf. "Bitte tut mir nichts, mein Herr... Ich weiß nichts... und ich habe nichts!"~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15522 /* ~"Mach dir keine Mühe mit der Fassade. Ich weiß, was du bist, Scheusal."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15523 /* ~"Ich habe gehört, daß du mehr bist als du vorgibst."~ */ GOTO 20
  IF ~~ THEN REPLY #15524 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #15525 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #15498 /* ~Er taumelt einen Schritt zurück und stottert: "Aber... mein Herr... ich sagte doch, ich weiß von nichts! Wirklich nicht!"~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15526 /* ~"Mach dir keine Mühe mit der Fassade. Ich weiß, was du bist, Scheusal."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15527 /* ~"Ich habe gehört, daß du mehr bist als du vorgibst."~ */ GOTO 20
  IF ~~ THEN REPLY #15528 /* ~"Das werden wir ja sehen. Wirst du reden?"~ */ GOTO 3
  IF ~~ THEN REPLY #15529 /* ~"Na gut, dann geh. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY #15499 /* ~"Ja... gut... ich red' ja schon, mein Herr..." Er reibt sich nervös die Hände. Ab und zu scheucht er die Fliegen fort, die sich auf seine Wunden im Gesicht setzen.~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15530 /* ~"Mach dir keine Mühe mit der Fassade. Ich weiß, was du bist, Scheusal."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15531 /* ~"Ich habe gehört, daß du mehr bist als du vorgibst."~ */ GOTO 20
  IF ~~ THEN REPLY #15532 /* ~"Wer bist du?"~ */ GOTO 8
  IF ~~ THEN REPLY #15533 /* ~"Was machst du hier?~ */ GOTO 9
  IF ~~ THEN REPLY #15534 /* ~"Erzähl mir was über diese Gegend."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15535 /* ~"Ich suche Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15536 /* ~"Ich suche ein Journal, das ich verloren habe. Hast du eins gesehen?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 5.0 6.1 7.0 8.1 9.2 10.1 11.2 12.2 13.1 14.1 15.0 16.2 20.2 21.0
  SAY #15500 /* ~Er nickt ängstlich. "Alles, was Ihr wollt, mein Herr... stellt Eure Frage..."~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15537 /* ~"Mach dir keine Mühe mit der Fassade. Ich weiß, was du bist, Scheusal."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15538 /* ~"Ich habe gehört, daß du mehr bist als du vorgibst."~ */ GOTO 20
  IF ~~ THEN REPLY #15539 /* ~"Wer bist du?"~ */ GOTO 8
  IF ~~ THEN REPLY #15540 /* ~"Was machst du hier?~ */ GOTO 9
  IF ~~ THEN REPLY #15541 /* ~"Erzähl mir was über diese Gegend."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15542 /* ~"Ich suche Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15543 /* ~"Ich suche ein Journal, das ich verloren habe. Hast du eins gesehen?"~ */ GOTO 5
  IF ~~ THEN REPLY #15544 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.6 4.6
  SAY #15501 /* ~"Nein, mein Herr, habe ich nicht. Ich schwör's!" Zum Beweis zeigt er seine leeren Hände.~ */
  IF ~~ THEN REPLY #15545 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #15546 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.5 4.5
  SAY #15502 /* ~Er schüttelt den Kopf. "Nein, ich kenne ihn nicht, mein Herr."~ */
  IF ~~ THEN REPLY #15547 /* ~"Bist du sicher? Soweit ich weiß, ist er ein Sammler."~ */ GOTO 7
  IF ~~ THEN REPLY #15548 /* ~"Ich hab' noch ein paar andere Fragen..."
~ */ GOTO 4
  IF ~~ THEN REPLY #15549 /* ~"Nun, nichts für ungut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #15503 /* ~"Hä? Oh! Ich bin allein hier, mein Herr. Ohne Freunde, ohne Komplizen..."~ */
  IF ~~ THEN REPLY #15550 /* ~"Aha. Ich hätte da noch andere Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #15551 /* ~"Nun, nichts für ungut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.2
  SAY #15504 /* ~"Ich? Malric, mein Herr. Doch, äh... ich bin vielmehr als Lebemann-Jäger bekannt."~ */
  IF ~~ THEN REPLY #15552 /* ~"Wieso?"~ */ GOTO 9
  IF ~~ THEN REPLY #15553 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #15554 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3 4.3 8.0
  SAY #15505 /* ~"Hä? Oh... ich folge diesem Vollblut." Mit einem Kopfnicken zeigt er auf den jungen Edelmann, der ganz in der Nähe steht und ihm einen kurzen, verächtlichen Blick zuwirft. "Ich mach die Sauerei weg, die er hinterläßt. Die Leichen."~ */
  IF ~~ THEN REPLY #15555 /* ~"Warum machst du das?"~ */ GOTO 10
  IF ~~ THEN REPLY #15556 /* ~"Wer ist er?"~ */ GOTO 11
  IF ~~ THEN REPLY #15557 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #15558 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.1
  SAY #15506 /* ~"Ich, äh, verkauf die Totenbüchler an die Staubmenschen in der Leichenhalle. Gegen Klimper. Ich verkauf auch alles, was sie bei sich haben, falls sie allein gestorben sind, ohne Freunde."~ */
  IF ~~ THEN REPLY #15559 /* ~"Wer ist der Edelmann?"~ */ GOTO 11
  IF ~~ THEN REPLY #15560 /* ~Ich hätte noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #15561 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #15507 /* ~"Wer? Er? Ich weiß nicht, mein Herr. Er kam eines Tages hier an und begann, einen Streit nach dem anderen vom Zaun zu brechen... er nennt es 'Duelle'. Ich spreche nicht mit ihm... sondern schaffe nur die Totenbüchler fort. Vielleicht, äh, fragst du ihn selbst..."~ */
  IF ~~ THEN REPLY #15562 /* ~"Er ist also ein guter Kämpfer?"
~ */ GOTO 12
  IF ~~ THEN REPLY #15563 /* ~"Warum schleppst du die Leichen weg?"~ */ GOTO 10
  IF ~~ THEN REPLY #15564 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #15565 /* ~"Das tue ich vielleicht mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #15566 /* ~Er nickt. "Äh... meine Meinung zählt zwar nicht viel, aber auf mich macht er einen ziemlich mörderischen Eindruck. Ich würde es jedenfalls nicht mit ihm aufnehmen..."~ */
  IF ~~ THEN REPLY #15567 /* ~"Glaubst du, daß er besser ist als ich?"~ */ GOTO 14
  IF ~~ THEN REPLY #15568 /* ~"Wie kämpft er? Mit einem Schwert? Magie?"
~ */ GOTO 13
  IF ~~ THEN REPLY #15569 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #15570 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 14.0
  SAY #15509 /* ~"Äh... mit einem Schwert, mein Herr, mit einem Krummschwert. Ein ziemlich edles Teil, mit dem er sich vornehm zu schlagen weiß. Er bewegt sich flink wie ein Tänzer." Bei seinem Versuch, einen Fechter nachzuahmen, gibt der Mann eine schlechte Figur ab, verscheucht allerdings ein paar Fliegen. "Kling! Klang! Ssssit! Erledigt!" Er nickt.~ */
  IF ~~ THEN REPLY #15571 /* ~"Glaubst du, daß er besser ist als ich?"~ */ GOTO 14
  IF ~~ THEN REPLY #15572 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #15573 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0
  SAY #15510 /* ~Er macht plötzlich ein besorgtes Gesicht. "Äh, nein! Das habe ich nicht gesagt, mein Herr! Aber ich hab' Euch noch nie kämpfen sehen. Versucht's doch mal mit ihm, dann wißt Ihr's. Aber er bringt Euch um, wenn Ihr nicht gut genug seid. Wenn Ihr wollt, kann ich den Staubmenschen Euren letzten Wunsch mitteilen. Gesetzt den Fall, Ihr, äh... verliert."~ */
  IF ~~ THEN REPLY #15574 /* ~"Wie kämpft er? Mit einem Schwert? Magie?"~ */ GOTO 13
  IF ~~ THEN REPLY #15575 /* ~"Mach dir da keine Gedanken drüber. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #15576 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.4 4.4
  SAY #15511 /* ~"Der Stock, mein Herr?" Er kratzt sich durch die Kapuze hindurch am Kopf und zuckt mit den Achseln. "Der Stock ist nichts... als ein riesiges Elendsviertel. Mehr läßt sich dazu nicht sagen."~ */
  IF ~~ THEN REPLY #15577 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #15578 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",1)
!Dead("Adyzoel")
~ THEN BEGIN 16 // from:
  SAY #15512 /* ~Der Mann wirkt erschreckt, als du ihm näherkommst. Doch dann verrät der Ausdruck seines wundengeplagten Gesichts, daß er dich erkennt. "Seid gegrüßt, mein Herr."~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15579 /* ~"Mach dir keine Mühe mit der Fassade. Ich weiß, was du bist, Scheusal."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15580 /* ~"Sei gegrüßt, 'Lebemann-Jäger'. Ich habe gehört, daß du mehr bist als du vorgibst."~ */ GOTO 20
  IF ~~ THEN REPLY #15581 /* ~"Sei gegrüßt, Lebemann-Jäger. Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #15582 /* ~"Sei gegrüßt und leb wohl."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",0)
Dead("Adyzoel")
~ THEN BEGIN 17 // from:
  SAY #15513 /* ~Dieser schmutzige, mit einer Robe bekleidete Mann schlendert umher und blickt sich vorsichtig um. Als er merkt, daß du ihn beobachtest, macht er sich rasch davon.~ */
  IF ~~ THEN REPLY #15583 /* ~"Sei gegrüßt..."~ */ GOTO 18
  IF ~~ THEN REPLY #15584 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.2
  SAY #15514 /* ~Plötzlich flieht der Mann mit seiner schmutzigen, braunen Robe, umhüllt von einem Schwarm Schmeißfliegen!~ */
  IF ~~ THEN REPLY #15585 /* ~"Verdammt..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  Global("RChaser","AR0400",1)
Dead("Adyzoel")
~ THEN BEGIN 19 // from:
  SAY #15515 /* ~Der Mann sieht dich näherkommen. Eine besorgte Miene legt sich über sein wundengeplagtes Gesicht. Er weicht zurück.~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15586 /* ~"Mach dir keine Mühe mit der Fassade. Ich weiß, was du bist, Scheusal."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15589 /* ~"Ich habe gehört, daß du mehr bist als du vorgibst."~ */ GOTO 20
  IF ~~ THEN REPLY #15590 /* ~"Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 18
  IF ~~ THEN REPLY #15591 /* ~Laß ihn in Ruhe.
~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.1 2.1 3.1 4.1 16.1 19.1
  SAY #15516 /* ~"Häh? Was meint Ihr, mein Herr?" Er macht einen ehrlich verwirrten Eindruck.~ */
  IF ~~ THEN REPLY #15592 /* ~"Warum sagst du's mir nicht, 'Lebemann-Jäger'."~ */ DO ~SetGlobal("RC_expln","AR0400",1)
~ GOTO 21
  IF ~~ THEN REPLY #15593 /* ~"Du weißt genau, was ich meine. Wer bist du wirklich?"~ */ DO ~SetGlobal("RC_expln","AR0400",1)
~ GOTO 21
  IF ~~ THEN REPLY #15594 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."
~ */ GOTO 4
  IF ~~ THEN REPLY #15595 /* ~"Vergiß es. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #15517 /* ~"Ich... ich weiß nicht, worauf Ihr hinauswollt, mein Herr... wirklich nicht! Verwechselt Ihr mich vielleicht mit jemandem?"~ */
  IF ~~ THEN REPLY #15596 /* ~"Na gut. Ich hätte da ein paar andere Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #15597 /* ~Wahrheit: "Sprich, oder ich prügle die Antwort aus dir raus, du Schuft!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rchasr_1","GLOBALGood",-1)
SetGlobal("Adyzoel","AR0400",3)
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15598 /* ~Täuschung: "Sprich, oder ich prügle die Antwort aus dir raus, du Schuft!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rchasr_1","GLOBALLaw",-1)
SetGlobal("Adyzoel","AR0400",3)
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15599 /* ~"Dann leb wohl."
~ */ EXIT
END

IF ~  Global("RChaser","AR0400",3)
~ THEN BEGIN 22 // from:
  SAY #15518 /* ~Das wundenübersäte Gesicht des Mannes wird blaß vor Entsetzen. Jaulend weicht er zurück.~ */
  IF ~~ THEN REPLY #15600 /* ~"Warte, Ich hätte da ein paar Fragen..."~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15601 /* ~Laß ihn gehen.~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.0 2.0 3.0 4.0 16.0 19.0
  SAY #15519 /* ~Er starrt dich an, als hätte ihn das kalte Grausen gepackt.~ */
  IF ~~ THEN REPLY #15602 /* ~"Also?"~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
SetGlobal("RChaser","AR0400",3)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15603 /* ~"Hab' keine Angst. Ich will dir nichts tun."~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
SetGlobal("Rchaser","AR0400",3)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15604 /* ~"Genau wie ich's mir gedacht hab'. Leb wohl."~ */ DO ~SetGlobal("RChaser","AR0400",3)
~ EXIT
END
