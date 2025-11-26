// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDALLAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDALLAN~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #49373 /* ~Du triffst auf einen großen Mann mit schulterlangem schwarzen Haar und stechenden blauen Augen. Alles, was er ansieht, scheint unter seinem Blick zu versengen. Neben ihm steht eine stille junge Frau, die zu allem, was er sagt, unsicher lächelt. Er richtet die strahlenden blauen Augen auf dich und lächelt breit. Er streckt dir seine Hand hin: "Ich bin Dallan. Freut mich, dich kennenzulernen."~ */
  IF ~~ THEN REPLY #49374 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #49375 /* ~"Ganz meinerseits. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #49376 /* ~"Ja ja. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #49377 /* ~Dallan schenkt dir erneut ein breites Lächeln. "Was gibt's?"~ */
  IF ~~ THEN REPLY #49378 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #49379 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.0 7.1
  SAY #49380 /* ~"Was willst du wissen?"~ */
  IF ~~ THEN REPLY #49381 /* ~"Ich hab gehört, daß ein Deva in dieser Stadt sein soll."~ */ GOTO 3
  IF ~~ THEN REPLY #49382 /* ~"Wer bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #49383 /* ~"Wer ist das Mädchen?"~ */ GOTO 5
  IF ~~ THEN REPLY #49384 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49385 /* ~Er lacht und schüttelt den Kopf. "Hast du noch 'ne Frage?"~ */
  IF ~~ THEN REPLY #49386 /* ~"Ja. Was weißt du über diesen Deva?"~ */ GOTO 6
  IF ~~ THEN REPLY #49387 /* ~"Wer bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #49388 /* ~"Wer ist deine Begleiterin da?"~ */ GOTO 5
  IF ~~ THEN REPLY #49389 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 5.1 6.2
  SAY #49390 /* ~"Ich bin Barde, Historiker, Schauspieler und Alleinunterhalter. Die schnellsten Finger in den Außenländern." Sein ansteckendes Lächeln bricht wieder hervor. "Das erzähle ich zumindest jedem."~ */
  IF ~~ THEN REPLY #49391 /* ~"Und jetzt erzähl mir was über diesen Deva..."~ */ GOTO 6
  IF ~~ THEN REPLY #49392 /* ~"Wer ist deine Begleiterin?"~ */ GOTO 5
  IF ~~ THEN REPLY #49393 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.2 4.1 6.1
  SAY #49394 /* ~Er grinst. "Eine Bekannte. Mehr brauchst du nicht zu wissen." Sie lächelt zaghaft und errötet.~ */
  IF ~~ THEN REPLY #49395 /* ~"Schon gut. Dann erzähl mir was über diesen Deva..."~ */ GOTO 6
  IF ~~ THEN REPLY #49396 /* ~"Dann erzähl mir was über dich..."~ */ GOTO 4
  IF ~~ THEN REPLY #49397 /* ~"Verstanden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0 5.0
  SAY #49398 /* ~Er lacht lauthals. "Alle Dinge haben ihren Preis, und ich bin noch nicht bereit, für diese Information einen Preis festzulegen. Später vielleicht."~ */
  IF ~~ THEN REPLY #49399 /* ~"Und wie ist es, wenn ich dich bedrohe, um sie zu bekommen?"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 7
  IF ~~ THEN REPLY #49400 /* ~"Dann erzähl mir was über deine Begleiterin..."~ */ GOTO 5
  IF ~~ THEN REPLY #49401 /* ~"Dann erzähl mir was über dich..."~ */ GOTO 4
  IF ~~ THEN REPLY #49402 /* ~"Das kann ich verstehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #49403 /* ~Seine Hand gleitet schnell zu seiner Waffe. "Dann schlage ich vor, daß wir herausfinden, wer von uns der bessere Kämpfer ist."~ */
  IF ~~ THEN REPLY #49404 /* ~"Wer wird denn gleich in die Luft gehen? Ich hab doch nur ein paar Fragen gestellt. Beantworte mir noch ein paar."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANCETOSTAND)
~ GOTO 2
  IF ~~ THEN REPLY #49405 /* ~"Später vielleicht. Ich hätte da noch mehr Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #49406 /* ~"Hmm. Ich denk drüber nach. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",4)
~ THEN BEGIN 8 // from:
  SAY #49407 /* ~Du triffst auf einen großen Mann mit schulterlangem schwarzem Haar und stechenden blauen Augen. Alles, was er ansieht, scheint unter seinem Blick zu versengen. Neben ihm steht eine stille junge Frau, die zu allem, was er sagt, unsicher lächelt. Er richtet die strahlenden blauen Augen auf dich und lächelt breit. "Ich bin Dallan. Du suchst nach einem Schlüssel."~ */
  IF ~~ THEN REPLY #49408 /* ~"So ist es. Was muß ich tun, um ihn zu bekommen?"~ */ DO ~SetGlobal("C_Off","GLOBAL",2)
~ JOURNAL #49411 /* ~Um Dallans Anteil des Schlüssels zu erhalten, soll ich mit einem Githyanki-Beamten namens An'izius reden. Ich kann ihn in der Innenstadt beim Tor nach Carzeri finden.~ */ GOTO 10
  IF ~~ THEN REPLY #49409 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",4)
Global("C_Off","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #49412 /* ~"Du willst den Schlüssel, stimmt's?"~ */
  IF ~~ THEN REPLY #49413 /* ~"So ist es. Was muß ich tun, um ihn zu bekommen?"~ */ DO ~SetGlobal("C_Off","GLOBAL",2)
~ JOURNAL #49411 /* ~Um Dallans Anteil des Schlüssels zu erhalten, soll ich mit einem Githyanki-Beamten namens An'izius reden. Ich kann ihn in der Innenstadt beim Tor nach Carzeri finden.~ */ GOTO 10
  IF ~~ THEN REPLY #49414 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #49415 /* ~"Alles kinderleicht. Eines der Stadtoberhäupter hat ein paar... na, sagen wir mal, politische Probleme. Einer seiner Gegner im Stadtrat bereitet ihm Schwierigkeiten. Sprich mit ihm, und schau mal, wie du ihm aus der Patsche helfen kannst. Er heißt An'izius - er ist ein Githyanki, und du findest ihn beim Tor nach Carzeri im Stadtzentrum."~ */
  IF ~~ THEN REPLY #49416 /* ~"Dazu möchte ich dir noch ein paar Fragen stellen. Ist er ein Freund von dir? Strebst du einen besonderen Ausgang der Sache an?"~ */ GOTO 11
  IF ~~ THEN REPLY #49418 /* ~"Nun denn. Ich bin bald zurück. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #49419 /* ~Sein Grinsen wird breiter. "Sagen wir einmal, daß ich auf deine Diskretion setze. Du wirst schon sehen, was ich meine.""~ */
  IF ~~ THEN REPLY #49421 /* ~"Nun denn. Ich bin bald zurück. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",1)
GlobalLT("C_Off","GLOBAL",6)
~ THEN BEGIN 12 // from:
  SAY #49422 /* ~Dallan schenkt dir noch ein markiges Lächeln, als er seinen Arm um die Schultern seiner Bekannten legt. "Wie geht's voran, hm? Schon was erreicht?"~ */
  IF ~~ THEN REPLY #49423 /* ~"Ich arbeite dran. Ich hätte da ein paar Fragen an dich..."~ */ GOTO 13
  IF ~~ THEN REPLY #49424 /* ~"Ich bin gerade dabei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #49425 /* ~"Vielleicht später. Ich hab gerade noch was Wichtiges zu tun..." Er schaut unsicher im Raum umher. "Wir sprechen uns, wenn du fertig bist."~ */
  IF ~~ THEN REPLY #49426 /* ~"Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",5)
Global("Curst_Key","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #49427 /* ~"Ich hab schon von deiner guten Arbeit gehört, mein Freund. Das war eine interessante kleine Kehrtwendung. Wie gefällt dir das politische Leben von Verdammnis, hm?" Er trinkt sein Bier aus. "Jetzt erhältst du deine Belohnung von mir." Seine Stimme wird tiefer und nimmt einen fast ritualistischen Ton an: "So weit entfernt von Göttern und dem Licht des Himmels..." Seine Stimme nimmt wieder ihren normalen Klang an, und er sagt: "Für den letzten Teil des Schlüssels mußt du mit Dona Quisho da drüben sprechen."~ */
  IF ~~ THEN REPLY #49428 /* ~"Ich hätte da erst noch ein paar Fragen an dich..."~ */ DO ~AddexperienceParty(87500)
SetGlobal("Curst_Key","GLOBAL",5)
~ JOURNAL #49430 /* ~Dallan hat mir als Bezahlung seinen Teil des Schlüssels gegeben, und mir gesagt, wie ich zu Dona Quisho komme. Sein Teil des Schlüssels lautete: "So weit entfernt von Göttern und dem Licht des Himmels..."~ */ GOTO 16
  IF ~~ THEN REPLY #49429 /* ~"Danke. Leb wohl."~ */ DO ~AddexperienceParty(87500)
SetGlobal("Curst_Key","GLOBAL",5)
~ JOURNAL #49430 /* ~Dallan hat mir als Bezahlung seinen Teil des Schlüssels gegeben, und mir gesagt, wie ich zu Dona Quisho komme. Sein Teil des Schlüssels lautete: "So weit entfernt von Göttern und dem Licht des Himmels..."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",5)
GlobalGT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 15 // from:
  SAY #49431 /* ~"Wieder da, hä? Konntest nicht genug kriegen, was?" Das Mädchen an seiner Seite ist auf subtile Weise anders... Sie wirkt in deinen Augen wie eine andere Person, aber sie verhält sich so ähnlich, daß es dir schwerfällt zu beurteilen, ob du recht hast.~ */
  IF ~~ THEN REPLY #49432 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 16
  IF ~~ THEN REPLY #49433 /* ~"Offensichtlich hab ich jetzt genug. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.0
  SAY #49434 /* ~"Was willst du wissen?"~ */
  IF ~~ THEN REPLY #49435 /* ~"Wer ist deine Begleiterin da?"~ */ GOTO 17
  IF ~~ THEN REPLY #49436 /* ~"Warum wolltest du diese Sache überhaupt geregelt haben? Wie bist du in die Sache verwickelt?"~ */ GOTO 18
  IF ~~ THEN REPLY #49437 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49438 /* ~"Sie ist eine Bekannte, und wir kommen ziemlich gut miteinander aus. Wolltest du sonst noch was?"~ */
  IF ~~ THEN REPLY #49439 /* ~"Ja. Warum wolltest du diese Sache geregelt haben? Wie bist du in die Sache verwickelt?"~ */ GOTO 18
  IF ~~ THEN REPLY #49440 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #49441 /* ~"Weil An'izius mir untersagt hat, in dieser Stadt aufzutreten." Er spuckt auf den Boden. "Weil Siabha sich trotz unserer langen Freundschaft geweigert hat, mir zu helfen. Sie hat gesagt, es wäre nicht der richtige Zeitpunkt, um ihre Trümpfe auszuspielen. Weil er ein machthungriger Bastard war und sie eine selbstsüchtige Hure. Ich hab's gewußt, daß auf die eine oder andere Weise einer oder beide dafür büßen würde."~ */
  IF ~~ THEN REPLY #49442 /* ~"Verstehe. Leb wohl."~ */ EXIT
END
