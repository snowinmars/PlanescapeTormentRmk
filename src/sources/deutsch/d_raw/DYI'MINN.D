// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYI'MINN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DYI'MINN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #44367 /* ~Dieser wild aussehende, gelbhäutige Mann mustert dich einen Augenblick lang. Dann reißt er die Augen auf und zieht blitzschnell sein Schwert. "Du Hund! Du Freund der Githzerai!" Er stürzt sich auf dich!~ */
  IF ~~ THEN REPLY #44368 /* ~Greif ihn an.~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44369 /* ~Flüchte.~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",0)
~ THEN BEGIN 1 // from:
  SAY #44372 /* ~Der Mann hat eine rauhe, lederne, blaßgelbe Haut und verhärmte Gesichtszüge. Er hat ein kantiges Gesicht, eine schmale, weit oben angesetze Nase und spitz zulaufende Ohren. Mehrere Tätowierungen und Narben verlaufen wie ein Muster über seinen ganzen Körper. Er trägt merkwürdige, grelle Lederkleidung, die eher dekorativ als kampftauglich ist. Seine Augen sind wie zwei kleine, schwarze Steine, die dich beobachten, als du näherkommst. "Du bist doch der Mensch, der auf der Suche nach Erinnerungen ist", sagt er gelangweilt. "Ich kann dir helfen."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44375 /* ~"Du bist ein Githyanki, stimmt's?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44378 /* ~"Wer und was bist du?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44380 /* ~"Sei gegrüßt, Schwertkämpfer."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44385 /* ~"Woher weißt du das?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 6
  IF ~~ THEN REPLY #44388 /* ~"Wie?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 7
  IF ~~ THEN REPLY #44390 /* ~"Interessiert mich nicht, danke. Leb wohl."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 8
END

IF WEIGHT #3 /* Triggers after states #: 39 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",0)
~ THEN BEGIN 2 // from:
  SAY #44391 /* ~Der Mann hat eine rauhe, lederne, blaßgelbe Haut und verhärmte Gesichtszüge. Er hat ein kantiges Gesicht, eine schmale, weit oben angesetze Nase und spitz zulaufende Ohren. Mehrere Tätowierungen und Narben verlaufen wie ein Muster über seinen ganzen Körper. Er trägt merkwürdige, grelle Lederkleidung, die eher dekorativ als kampftauglich ist. Seine Augen sind wie zwei kleine, schwarze Steine, die dich beobachten, als du näherkommst. "Du bist doch der Mensch, der auf der Suche nach Erinnerungen ist", sagt er gelangweilt. "Ich kann dir helfen."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"Du bist ein Githyanki, stimmt's?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Wer und was bist du?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Sei gegrüßt, Schwertkämpfer."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"Woher weißt du das?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"Wie?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 7
  IF ~~ THEN REPLY #44402 /* ~"Interessiert mich nicht, danke. Leb wohl."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 21.0 22.0
  SAY #44404 /* ~"Ich habe das Glück, zu diesem Volk zu gehören." Seine Stimme ist eintönig. "Wünschst du meine Hilfe beim Wiederfinden deiner Erinnerungen?"~ */
  IF ~~ THEN REPLY #44405 /* ~"Wer und was bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #44406 /* ~"Hmm. Heute nicht, danke."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.0 6.0 21.1 22.1
  SAY #44407 /* ~"Ich bin Yi'minn, ein githyankischer Angler. Mein Volk ist der unangefochtene Herrscher über die Astralebene, wo die Götter zum Sterben hingehen und die Erinnerungen der Toten wie Blätter auf einer Pfütze dahintreiben. Mir obliegt es, den Gedächtniskern der Toten herauszufischen und ihn nach Informationen zu durchleuchten. Ich könnte deine Erinnerungen lokalisieren, wenn du mich dafür bezahlen würdest."~ */
  IF ~~ THEN REPLY #44408 /* ~"Was müßt ich dafür bezahlen?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #44410 /* ~"Interessiert mich nicht, danke. Leb wohl."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 21.2 22.2
  SAY #44413 /* ~Sein Gesicht wird ernst. Alle Muskeln spannen sich an, als seine Hand wie unwillkürlich ans Schwert greift. "Du hast mich in der Sprache der Githzerai-Hunde angeredet. Wußtest du es nicht besser, oder wolltest du mich beleidigen?"~ */
  IF ~~ THEN REPLY #44416 /* ~"Ich wußte es nicht besser."~ */ GOTO 12
  IF ~~ THEN REPLY #44417 /* ~"Ich wollte dich beleidigen."~ */ GOTO 11
  IF ~~ THEN REPLY #44419 /* ~"Bist du keine Githzerai?"~ */ GOTO 14
  IF ~~ THEN REPLY #44422 /* ~"Keines von beidem."~ */ GOTO 19
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3 21.3 22.3
  SAY #44425 /* ~"Weil du so aussiehst. In meinem Beruf sieht man viele solche Typen."~ */
  IF ~~ THEN REPLY #44432 /* ~"Wer und was bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #44434 /* ~"Laß mich in Ruhe. Dein Gefasel interessiert mich nicht."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.4 2.4 21.4 22.4
  SAY #44437 /* ~"Bin ich nicht ein Githyanki? Wohnen wir nicht in den Feldern der Astralebene? Ich bin ein Angler, der verlorene Erinnerungen fängt. Ich weiß, wie man sie ködert. Ich weiß, wie man sie fängt." Er hält inne und beugt sich verschwörerisch zu dir vor. "Ich weiß auch, wie man sie *wiederherstellt*. Es würde dich nur eine kleine Summe kosten..."~ */
  IF ~~ THEN REPLY #44439 /* ~"Und was wäre das für ein Preis?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #44441 /* ~"Was kannst du mir über die Astralebene erzählen?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #44445 /* ~"Ich bin nicht interessiert. Leb wohl."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.5 2.5 3.1 4.1 6.1 7.2 9.1 10.1 16.1 18.1 20.1
  SAY #44447 /* ~"Denk an mein Angebot, Mensch. Falls du deine Erinnerungen wiederhaben möchtest - ich bin hier. Denk an meine Worte."~ */
  IF ~~ THEN REPLY #44450 /* ~"Mach ich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 7.0 16.0 18.0 20.0 21.5 22.5 23.0
  SAY #44455 /* ~"Sache von ein paar Münzen. Der Preis ist Verhandlungssache. Ich schlage hundert Münzen vor. Aber du kannst selbst bestimmen, wieviel dir die Erinnerungen, die ich für dich wiederfinde, wert sind und entsprechend bezahlen."~ */
  IF ~~ THEN REPLY #44457 /* ~"Klingt gut. Was muß ich tun?"~ */ GOTO 10
  IF ~~ THEN REPLY #44458 /* ~"Vielleicht später. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.0 23.1
  SAY #44459 /* ~"Wenn ich deine Erinnerungen ködern soll, dann brauche ich ein paar deiner noch vorhandenen Erinnerungen. Ich brauche auch einen Ort, wo es ruhig ist und ich mich konzentrieren kann. Wenn du mir folgst, gehen wir zusammen an einen solchen Ort, und ich mache dich wieder ganz. Aber wir gehen allein dorthin."~ */
  IF ~~ THEN REPLY #44460 /* ~"Einverstanden. Gehn wir."~ */ DO ~SetGlobal("Yiminn_Trap","AR0500",1)
StartCutSceneMode()
StartCutSceneEx("Yiminn",FALSE)
~ EXIT
  IF ~~ THEN REPLY #44461 /* ~"Vielleicht nicht gleich jetzt."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #44462 /* ~"Das riecht mir verdammt nach einer Falle, du Githyanki-Hund. Die *Illithiden* hätten dich in Ketten liegen lassen sollen."~ */ DO ~AddexperienceParty(1000)
~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 5.1 10.2 12.3 13.2 19.1 25.2 26.1 27.0
  SAY #44463 /* ~Ohne einen Ton zu sagen und blitzschnell zieht der Angler seine Waffe und greift dich an!~ */
  IF ~~ THEN REPLY #44464 /* ~Kämpfe.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44465 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 19.0
  SAY #44466 /* ~"Du kannst jetzt um Verzeihung bitten." Er steht regungslos da und läßt seine funkelnden Augen über deinen Körper wandern.~ */
  IF ~~ THEN REPLY #44467 /* ~"Ich entschuldige mich."~ */ GOTO 18
  IF ~~ THEN REPLY #44468 /* ~"Um Verzeihung bitten? Dich?"~ */ GOTO 13
  IF ~~ THEN REPLY #44469 /* ~"Hast du etwa was dagegen, Githzerai genannt zu werden?"~ */ GOTO 14
  IF ~~ THEN REPLY #44470 /* ~"Kommt gar nicht in Frage."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #44471 /* ~"Ja." Er zeigt seine Zähne. "Du hast mich auf fast unverzeihliche Weise beleidigt. Du kannst jetzt um Verzeihung bitten."~ */
  IF ~~ THEN REPLY #44472 /* ~"Ich entschuldige mich."~ */ GOTO 18
  IF ~~ THEN REPLY #44473 /* ~"Hast du etwa was dagegen, Githzerai genannt zu werden?"~ */ GOTO 14
  IF ~~ THEN REPLY #44474 /* ~"Kommt gar nicht in Frage."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 5.2 12.2 13.1
  SAY #44475 /* ~"Ich bin ein *Githyanki*. Mit diesen githzeraiischen Hunden habe ich nichts am Hut. Und du?"~ */
  IF ~~ THEN REPLY #44476 /* ~Wahrheit: "Ich kenne ein paar Githzerai. Nette Leute."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #44477 /* ~Lüge: " Ich kenne ein paar Githzerai. Nette Leute."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  Global("Yiminn_zerai","AR0500",0)
~ THEN REPLY #44478 /* ~Wahrheit: "Nein, die Githzerai sind mir mehr als egal."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 16
  IF ~  Global("Yiminn_zerai","AR0500",0)
~ THEN REPLY #44479 /* ~Lüge: " Nein, die Githzerai sind mir mehr als egal."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~  Global("Yiminn_zerai","AR0500",1)
~ THEN REPLY #44480 /* ~Wahrheit: "Nein, die Githzerai sind mir mehr als egal."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 17
  IF ~  Global("Yiminn_zerai","AR0500",1)
~ THEN REPLY #44481 /* ~Lüge: " Nein, die Githzerai sind mir mehr als egal."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 17.0
  SAY #44483 /* ~"Du sympathisierst also mit diesen Githzerai-Hunden? Dafür sollst du büßen!" Er zieht seine Klinge und greift an!~ */
  IF ~~ THEN REPLY #44484 /* ~Kämpfe.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44488 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 14.3
  SAY #44490 /* ~"Dann ist ja alles in Ordnung. Schwamm drüber. Aber kommen wir auf deine Erinnerungen zu sprechen: Ich kann sie für dich wiederfinden. Wir müssen lediglich einen Preis vereinbaren."~ */
  IF ~~ THEN REPLY #44491 /* ~"Und was wäre das für ein Preis?"~ */ GOTO 9
  IF ~~ THEN REPLY #44492 /* ~"Es interessiert mich momentan nicht."~ */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 14.4 14.5
  SAY #44493 /* ~Das Grinsen weicht nicht aus seinem Gesicht und die Spannung nicht aus seinem Körper. "Du sagst, sie bedeuten dir nichts, und doch verwendest du ihren Gruß. Was stimmt?"~ */
  IF ~~ THEN REPLY #44494 /* ~"Du hast mich ertappt. Sie sind keine schlechten Leute."~ */ GOTO 15
  IF ~~ THEN REPLY #44495 /* ~"Sie sind nichts. Ich habe meine Unwissenheit und meinen Fehltritt zugegeben, und ich entschuldige mich dafür. Zufrieden?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 12.0 13.0 17.1
  SAY #44496 /* ~"Gut so. Das Blut der Githzerai ist dünn wie Wasser, und ihr Samen ist schwach. Aber kommen wir auf deine Erinnerungen zu sprechen: Ich kann sie für dich wiederfinden. Wir müssen lediglich einen Preis vereinbaren."~ */
  IF ~~ THEN REPLY #44497 /* ~"Was ist das für ein Preis?"~ */ GOTO 9
  IF ~~ THEN REPLY #44498 /* ~"Ich werde darauf zurückkommen."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 5.3
  SAY #44499 /* ~"Eines muß doch zutreffen - Absicht oder Unwissenheit. Was ist es?"~ */
  IF ~~ THEN REPLY #44500 /* ~"Es war Unwissenheit."~ */ GOTO 12
  IF ~~ THEN REPLY #44501 /* ~"Es war eine absichtliche Beleidigung."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 7.1
  SAY #44502 /* ~"Es ist ein Un-Ort, ein Ort zwischen den Orten, in dem nur der Geist zählt. Dieser Ort ist die Heimat meines Volks. Wenn Leute sterben, fliegen ihre Seelen in die Äußeren Ebenen. Auf ihrem Weg durch die Astralebene werden ihre Erinnerungen abgestreift, die dann im Silbermeer auf den Wellen tanzen. Da ich dieses Meer wie meine Westentasche kenne, kann ich deine Erinnerungen wiederfinden. Wir müssen lediglich einen Preis vereinbaren."~ */
  IF ~~ THEN REPLY #44503 /* ~"Und was wäre das für ein Preis?"~ */ GOTO 9
  IF ~~ THEN REPLY #44505 /* ~"Ich werde darauf zurückkommen."~ */ GOTO 8
END

IF WEIGHT #4 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",1)
~ THEN BEGIN 21 // from:
  SAY #44504 /* ~"Du bist doch auf der Suche nach deinen Erinnerungen, nicht wahr, Mensch? Ich kann sie dir wiederbringen. Jetzt schaust du noch verlorener aus der Wäsche. Wenn du deinen Seelenfrieden wiederhaben willst, kostet dich das nur einen kleinen Preis."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"Du bist ein Githyanki, stimmt's?"~ */ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Wer und was bist du?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Sei gegrüßt, Schwertkämpfer."~ */ DO ~SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"Woher weißt du das?"~ */ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"Wie?"~ */ GOTO 7
  IF ~~ THEN REPLY #44506 /* ~"Was ist das für ein Preis?"~ */ GOTO 9
  IF ~~ THEN REPLY #44507 /* ~"Erzähl mir mehr von deinem Volk."~ */ GOTO 23
  IF ~~ THEN REPLY #44508 /* ~"Heute nicht, danke. Leb wohl."~ */ GOTO 24
END

IF WEIGHT #5 /* Triggers after states #: 39 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",1)
~ THEN BEGIN 22 // from:
  SAY #44509 /* ~"Du bist doch auf der Suche nach deinen Erinnerungen, nicht wahr, Mensch? Ich kann sie dir wiederbringen. Jetzt schaust du noch verlorener aus der Wäsche. Wenn du deinen Seelenfrieden wiederhaben willst, kostet dich das nur einen kleinen Preis."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"Du bist ein Githyanki, stimmt's?"~ */ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Wer und was bist du?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Sei gegrüßt, Schwertkämpfer."~ */ DO ~SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"Woher weißt du das?"~ */ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"Wie?"~ */ GOTO 7
  IF ~~ THEN REPLY #44510 /* ~"Was ist das für ein Preis?"~ */ GOTO 9
  IF ~~ THEN REPLY #44511 /* ~"Erzähl mir mehr von deinem Volk."~ */ GOTO 23
  IF ~~ THEN REPLY #44512 /* ~"Heute nicht, danke. Leb wohl."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 21.6 22.6
  SAY #44513 /* ~"Die Antwort steckt vielleicht in deinen verlorenen Erinnerungen. Fangen wir an, dann wirst du schon sehen."~ */
  IF ~~ THEN REPLY #44514 /* ~"Was ist das für ein Preis?"~ */ GOTO 9
  IF ~~ THEN REPLY #44515 /* ~"Was bedeutet das für mich?"~ */ GOTO 10
  IF ~~ THEN REPLY #44516 /* ~"Ich glaube, ich habe noch kein Interesse."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 21.7 22.7 23.2
  SAY #44517 /* ~"Komm wieder, wenn du's dir anders überlegt hast - was du sicher tun wirst, Mensch."~ */
  IF ~~ THEN REPLY #44518 /* ~"Klar. Leb wohl."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Know_Yiminn","AR0500",0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 25 // from:
  SAY #44519 /* ~Der Mann hat eine rauhe, lederne, blaßgelbe Haut und verhärmte Gesichtszüge. Er hat ein kantiges Gesicht, eine schmale, weit oben angesetzte Nase und spitz zulaufende Ohren. Mehrere Tätowierungen und Narben verlaufen wie ein Muster über seinen ganzen Körper. Er trägt merkwürdige, grelle Lederkleidung, die eher dekorativ als kampftauglich ist. Seine Augen sind wie zwei kleine, schwarze Steine, die dich beobachten, als du näherkommst. Als du zum Sprechen ansetzt, erhebt er die Hand: "Ich werde dich nicht anhören, Mensch. Sprich nicht zu einem des 'Volkes'."~ */
  IF ~~ THEN REPLY #44520 /* ~"Wovon redest du eigentlich?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 27
  IF ~~ THEN REPLY #44521 /* ~"Ich hab nur ein paar Fragen..."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 27
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44522 /* ~"Dein 'Volk' besteht aus Hunden, die man nie aus der Gefangenschaft der *Illithiden* hätte entlassen dürfen."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 11
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44523 /* ~"Ich hätte nur ein paar Fragen an einen ehrenwerten Githyanki."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 28
  IF ~~ THEN REPLY #44524 /* ~"Na gut."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Know_Yiminn","AR0500",1)
!NearbyDialog("DDakkon")
~ THEN BEGIN 26 // from:
  SAY #44525 /* ~"Hast du nicht gehört, daß du nicht mit mir sprechen sollst? Sind denn alle Menschen so schwer von Begriff wie du?"~ */
  IF ~~ THEN REPLY #44526 /* ~"Ich will nur ein paar Anworten auf meine Fragen..."~ */ GOTO 27
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44527 /* ~"Dein 'Volk' besteht aus Hunden, die man nie aus der Gefangenschaft der *Illithiden* hätte entlassen dürfen."~ */ GOTO 11
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44528 /* ~"Ich hätte nur ein paar Fragen an einen ehrenwerten Githyanki."~ */ GOTO 28
  IF ~~ THEN REPLY #44529 /* ~"Dann vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0 25.1 26.0
  SAY #44530 /* ~Er starrt dich mit leerem Blick an und preßt seine Lippen fest aufeinander. ~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44531 /* ~"Dein 'Volk' besteht aus Hunden, die man nie aus der Gefangenschaft der *Illithiden* hätte entlassen dürfen."~ */ GOTO 11
  IF ~~ THEN REPLY #44532 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.3 26.2
  SAY #44533 /* ~Er hält kurz inne und schaut dir tief in die Augen. "Ich verneige mich vor deiner Ehre, doch mein Wissen wäre wie Wasser für dich."~ */
  IF ~~ THEN REPLY #44534 /* ~"Kannst du mir was über dich erzählen?"~ */ GOTO 29
  IF ~~ THEN REPLY #44535 /* ~"Kannst du mir was über dein Volk erzählen?"~ */ GOTO 30
  IF ~~ THEN REPLY #44536 /* ~"Kannst du mir was über die Githzerai erzählen?"~ */ GOTO 31
  IF ~~ THEN REPLY #44537 /* ~"Na gut. Dann leb wohl."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #44538 /* ~"Ich bin Yi'minn, ein Angler. Ich fange die Erinnerungen der Toten, die in der Astralebene eingeschlossen sind."~ */
  IF ~~ THEN REPLY #44539 /* ~"Kannst du meine Erinnerungen finden?"~ */ GOTO 32
  IF ~~ THEN REPLY #44540 /* ~"Was kannst du mir über die Astralebene erzählen?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #44541 /* ~"Wenn du unser Volk ehrst, weshalb weißt du dann nichts über es?" ~ */
  IF ~~ THEN REPLY #44542 /* ~"Ich möchte noch mehr darüber wissen."~ */ GOTO 38
  IF ~~ THEN REPLY #44543 /* ~"Ich wollte eigentlich nur, daß du mit mir redest."~ */ GOTO 38
END

IF ~~ THEN BEGIN 31 // from: 28.2
  SAY #44544 /* ~"Wir haben sie ausgestoßen, weil wir sie nicht mehr wollten. Und jetzt flehen sie um Gnade. Ihr Blut ist dünn wie Wasser, und um ihren Verstand ist es nicht besser bestellt." Er bleckt die Zähne. "Es ist mir Pflicht und Vergnügen, ihnen und ihren Quislingen das Leben schwer zu machen."~ */
  IF ~~ THEN REPLY #44545 /* ~"Schön. Würdest du mir ein paar Fragen beantworten?"~ */ JOURNAL #38976 /* ~Ich habe eine Rivalität zwischen den Githyanki und den Githzerai entdeckt. Sie stammen anscheinend von derselben Rasse ab, haben sich jedoch vor Jahrmillionen getrennt und hassen sich jetzt wie die Pest.~ */ GOTO 35
  IF ~~ THEN REPLY #44546 /* ~"Dann leb wohl."~ */ JOURNAL #38976 /* ~Ich habe eine Rivalität zwischen den Githyanki und den Githzerai entdeckt. Sie stammen anscheinend von derselben Rasse ab, haben sich jedoch vor Jahrmillionen getrennt und hassen sich jetzt wie die Pest.~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #44556 /* ~"Das kann ich... Gegen ein gewisses Entgelt."~ */
  IF ~~ THEN REPLY #44558 /* ~"Was ist das für ein Preis?"~ */ GOTO 36
  IF ~~ THEN REPLY #44559 /* ~"Mir ist kein Preis zu hoch."~ */ GOTO 36
  IF ~~ THEN REPLY #44560 /* ~"Können wir das mit etwas anderem aufrechnen?"~ */ GOTO 36
  IF ~~ THEN REPLY #44561 /* ~"Vergiß es. Beantworte mir noch ein paar Fragen."~ */ GOTO 35
  IF ~~ THEN REPLY #44562 /* ~"Ach, vergiß es. Leb wohl."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #44563 /* ~"Es ist ein Un-Ort, ein Ort zwischen den Orten, in dem nur der Geist zählt. Dieser Ort ist die Heimat meines Volks. Wenn Leute sterben, fliegen ihre Seelen in die Äußeren Ebenen. Auf ihrem Weg durch die Astralebene werden ihnen ihre Erinnerungen abgestreift, die dann im Silbermeer vor sich hin treiben."~ */
  IF ~~ THEN REPLY #44564 /* ~"Verstehe. Kannst du mir noch ein paar Fragen beantworten?"~ */ GOTO 35
  IF ~~ THEN REPLY #44565 /* ~"Danke. Leb wohl."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 28.3 31.1 32.4 33.1 35.0
  SAY #44566 /* ~"Ich habe deine Fragen schon einmal beantwortet. Komm nie wieder zu mir."~ */
  IF ~~ THEN REPLY #44567 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 31.0 32.3 33.0 36.1 36.2
  SAY #44568 /* ~"Du bekommst von mir keine Antworten mehr. Du hast mir Ehre erwiesen, und ich habe dich entsprechend entlohnt."~ */
  IF ~~ THEN REPLY #44569 /* ~"Wenn's nicht anders geht, dann leb wohl."~ */ GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 32.0 32.1 32.2
  SAY #44570 /* ~"Mein Preis sind zweihundert Münzen - mit weniger bin ich diesmal nicht zufrieden."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #44571 /* ~"Hier. Nimm das Geld."~ */ DO ~TakePartyGold(200)
~ GOTO 37
  IF ~~ THEN REPLY #44572 /* ~"Ganz schön happig. Vielleicht könntest du mir ja noch ein paar Fragen beantworten..."~ */ GOTO 35
  IF ~~ THEN REPLY #44573 /* ~"Ach, vergiß es. Leb wohl."~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #44574 /* ~Der Githyanki steckt die Münzen ein und sagt: "Wenn du in einer Woche wiederkommst, habe ich eine Erinnerung für dich. Komm nicht zu spät."~ */
  IF ~~ THEN REPLY #44577 /* ~"Nun denn. Leb wohl."~ */ DO ~EscapeArea()
DestroySelf()
~ JOURNAL #39452 /* ~Ich habe gerade einen Handel mit Yi'minn, dem Githyanki-Angler abgeschlossen. Er will mir helfen, meine Erinnerungen von der Astralebene wiederzuerlangen. Ich soll mich in einer Woche noch einmal im Unteren Bezirk mit ihm treffen.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 30.0 30.1
  SAY #44579 /* ~"Glaubst du, du könntest mir Sand in die Augen streuen? Geh. Ich habe dir bereits geantwortet. Jetzt will ich nicht mehr mit dir sprechen."~ */
  IF ~~ THEN REPLY #44580 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Yiminn_Trap","AR0500",1)
~ THEN BEGIN 39 // from:
  SAY #44583 /* ~Die jetzige Stimmung des Githyanki ist noch schlimmer als seine vorherige Arroganz. "So, Mensch. Jetzt laß mal schön deine bunte Maske fallen und verrat uns, was du innerhalb der Mauern Sigils für diese Githzerai-Hunde getan und was du ihnen erzählt hast."~ */
  IF ~~ THEN REPLY #44586 /* ~"Wollten wir nicht meine Erinnerungen suchen gehen?"~ */ GOTO 40
  IF ~~ THEN REPLY #44588 /* ~"Verrat ich nicht."~ */ GOTO 41
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #44590 /* ~"Ich habe lediglich die Schmerzen einer Githzerai-Frau gelindert."~ */ GOTO 42
  IF ~~ THEN REPLY #44594 /* ~"Ich hab nur ein paar Fragen gestellt."~ */ GOTO 43
  IF ~~ THEN REPLY #44596 /* ~"Ich habe sie angelogen, um sie irrezuführen."~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #44598 /* ~"Wenn du je die Astralebene erreichst, dann in Ketten, Mensch. Du hast noch eine letzte Chance mir zu sagen, was du innerhalb der Stadtmauern Sigils für die Githzerai getan und was du ihnen erzählt hast."~ */
  IF ~~ THEN REPLY #44601 /* ~"Verrat ich nicht."~ */ GOTO 41
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #44603 /* ~"Ich habe lediglich die Schmerzen einer Githzerai-Frau gelindert."~ */ GOTO 42
  IF ~~ THEN REPLY #44605 /* ~"Ich hab nur ein paar Fragen gestellt."~ */ GOTO 42
  IF ~~ THEN REPLY #44606 /* ~"Ich habe sie angelogen, um sie irrezuführen."~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.0
  SAY #44607 /* ~"Dann sollst du sterben." Er zieht die Waffe und greift dich an!~ */
  IF ~~ THEN REPLY #44608 /* ~Kämpfe.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44610 /* ~Laß dich von ihnen töten.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 42 // from: 39.2 40.1 40.2
  SAY #44611 /* ~"Du lügst wie einer dieser Githzerai-Hunde, Mensch. Du bist ihr Quisling und ihr Blutsauger. Wir tun dir einen Gefallen, wenn wir dich umbringen." Er zieht die Waffe.~ */
  IF ~~ THEN REPLY #44612 /* ~Kämpfe.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44613 /* ~Laß dich von ihnen töten.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 39.3 40.3
  SAY #44614 /* ~"Das hast du nicht. Wir haben dir zugesehen und zugehört. Deine Worte und deine Gesinnung verraten dich, Mensch. Du sollst sterben."~ */
  IF ~~ THEN REPLY #44615 /* ~Kämpfe.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44616 /* ~Laß dich von ihnen töten.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 39.4 41.1 42.1 43.1
  SAY #44617 /* ~Yi'minns Klinge schlitzt dir die Kehle auf. Du fällst blutend zu Boden. Sie stehen über dir und fangen an zu reden: "Wußte er denn wirklich nichts, Al-midil?"~ */
  IF ~~ THEN DO ~IncrementGlobal("Death","GLOBAL",1)
~ EXTERN ~DALMIDIL~ 0
END

IF ~~ THEN BEGIN 45 // from:
  SAY #44618 /* ~"Wenn du glaubst, daß wir genug wissen, können wir gehen. Scharen wir unsere Krieger um uns und schließen uns der Kriegsgruppe im Limbus an."~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
StartCutSceneMode()
StartCutSceneEx("0500cut4",FALSE)
~ EXIT
END

IF WEIGHT #8 ~  NearbyDialog("DDakkon")
~ THEN BEGIN 46 // from:
  SAY #44619 /* ~Der Mann hat eine rauhe, lederne, blaßgelbe Haut und verhärmte Gesichtszüge. Er hat ein kantiges Gesicht, eine schmale, weit oben angesetzte Nase und spitz zulaufende Ohren. Mehrere Tätowierungen und Narben verlaufen wie ein Muster über seinen ganzen Körper. Er trägt merkwürdige, grelle Lederkleidung, die eher dekorativ als kampftauglich ist. Seine Augen sind wie zwei kleine, schwarze Steine, die dich beobachten, als du näherkommst. Bevor du ihn erreichst, hält Dak'kon inne.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 149
END

IF ~~ THEN BEGIN 47 // from:
  SAY #44620 /* ~Der Githyanki hat dich zwar kommen sehen, scheint dich aber völlig zu ignorieren. "Dak'kon-der-auf-den-Mauern-von-Shrak'at'lor-winselt... welch unerwartete Überraschung." Er zieht seine Waffe.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXTERN ~DDAKKON~ 154
END

IF ~~ THEN BEGIN 48 // from:
  SAY #44621 /* ~Als du dich umdrehst, ruft dir der Githyanki, der dich die ganze Zeit beobachtet hat, zu: "Du kehrst mir den Rücken zu, Dak'kon-der-auf-den-Mauern-von-Shrak'at'lor-winselt? Entweder du kämpfst mit dem Schwert gegen mich, oder ich verzier deinen Rücken mit dem Zeichen der Feigheit." Er zieht seine Waffe.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXTERN ~DDAKKON~ 155
END

IF ~~ THEN BEGIN 49 // from: 50.1 51.1 52.2
  SAY #44622 /* ~Der Githyanki und Dak'kon gehen mit ihren Schwertern aufeinander los.~ */
  IF ~~ THEN REPLY #44623 /* ~Greif den Githyanki an.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44624 /* ~Laß sie kämpfen.~ */ DO ~ForceAttack("Dakkon",Myself)
Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #44625 /* ~Als Dak'kon nickt, beginnt der Githyanki vor Lachen zu brüllen. "Du hörst auf diesen Menschen, Hund. Erst ein Verräter, dann ein Sklave."~ */
  IF ~~ THEN REPLY #44626 /* ~"Schweig, oder ich schneid dir die Zunge ab."~ */ GOTO 51
  IF ~~ THEN REPLY #44627 /* ~"Dak'kon, bring ihn um."~ */ GOTO 49
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #44628 /* ~Der Githyanki verneigt sich und grinst ins Dak'kons Richtung. "Jetzt gibt es ja auch nichts mehr zu sagen. Ich werde meinem Volk von deiner Not als Sklave berichten. Die Nachricht wird ihnen große Freude bereiten." ~ */
  IF ~~ THEN REPLY #44629 /* ~"Schluß damit. Ich suche meine Erinnerungen."~ */ GOTO 52
  IF ~~ THEN REPLY #44630 /* ~"Jetzt reicht's. Dak'kon, bring ihn um."~ */ GOTO 49
  IF ~~ THEN REPLY #44631 /* ~"Jetzt reicht's. Leb wohl."~ */ GOTO 55
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #44632 /* ~"Erinnerungen? Ich suche Erinnerungen, die in der Astralebene schweben. Es wäre mir ein Vergnügen, eine deiner Erinnerungen wiederzufinden - gegen Bezahlung, versteht sich."~ */
  IF ~~ THEN REPLY #44633 /* ~"Und was wäre das für ein Preis?"~ */ GOTO 53
  IF ~~ THEN REPLY #44634 /* ~"Vergiß es. Wir gehen."~ */ GOTO 55
  IF ~~ THEN REPLY #44635 /* ~"Dak'kon, bring ihn um."~ */ GOTO 49
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #44636 /* ~"Mein Preis sind zweihundert Münzen - mit weniger bin ich diesmal nicht zufrieden."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #44637 /* ~"Hier. Nimm das Geld."~ */ DO ~TakePartyGold(200)
~ GOTO 56
  IF ~~ THEN REPLY #44638 /* ~"Ich hab leider nicht genug Geld. Ich glaub, wir gehen jetzt lieber."~ */ GOTO 55
  IF ~~ THEN REPLY #44639 /* ~"Vergiß es. Wir gehen."~ */ GOTO 55
END

IF ~~ THEN BEGIN 54 // from:
  SAY #44640 /* ~"Unser Schlachtfeld ist das gesamte Multiversum, Hund. Es gibt keine Zufluchtsorte und keinen Frieden. Du sollst sterben." Der Githyanki greift an!~ */
  IF ~~ THEN REPLY #44641 /* ~Greif den Githyanki an.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44642 /* ~Laß sie kämpfen.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.2 52.1 53.1 53.2
  SAY #44643 /* ~"Ihr geht? Aber zuerst hol ich mir das Herz des Verräters von Shrak'at'lor." Der Githyanki greift an!~ */
  IF ~~ THEN REPLY #44644 /* ~Greif den Githyanki an.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44645 /* ~Laß sie kämpfen.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 53.0
  SAY #44646 /* ~"Komm doch mit mir, und laß dieses Hundeskelett zurück."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 157
END

IF ~~ THEN BEGIN 57 // from:
  SAY #44647 /* ~"Du wirst auch aussehen wie einer, wenn ich mit dir fertig bin."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 158
END

IF ~~ THEN BEGIN 58 // from:
  SAY #44648 /* ~"Das werden wir noch sehen, du Githzerai-Hund!" Der Githyanki geht wild fauchend auf Dak'kon los.~ */
  IF ~~ THEN REPLY #44649 /* ~Greif den Githyanki an.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44650 /* ~Laß sie kämpfen.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END
