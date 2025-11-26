// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDAMSEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDAMSEL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2207 /* ~Du siehst eine hübsche, junge Frau. Ihr Haar ist unordentlich, und das Oberteil ihres Kleides ist zerrissen. Sie sieht sich verzweifelt um und bemerkt dich dann. ~ */
  IF ~~ THEN REPLY #2208 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #2209 /* ~Ignoriere sie.~ */ GOTO 11
END

IF ~~ THEN BEGIN 1 // from: 0.0 11.0
  SAY #51524 /* ~Sie läuft auf dich zu und packt deinen Arm. Du bemerkst, daß ihr Kleid vorne mit Blut befleckt ist. "Hilf mir, Schleifer! Bitte! Sie töten meine Schwester!" Sie fängt an, an deinem Arm zu ziehen.~ */
  IF ~~ THEN REPLY #51525 /* ~"Wer?"~ */ GOTO 2
  IF ~~ THEN REPLY #51526 /* ~"Ich helfe dir, bring mich zu ihr."~ */ GOTO 12
  IF ~~ THEN REPLY #51527 /* ~"Ich habe keine Zeit für sowas, Wiedersehen."~ */ GOTO 13
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #51528 /* ~Sie blickt wild um sich. "Dieser betrunkene Mann, der uns von einer der Tavernen gefolgt ist... Wir dachten, er wäre nicht gefährlich... Bitte, Schleifer, wir haben keine Zeit mehr! Hilf uns!"~ */
  IF ~  CheckStatGT(Protagonist,10,INT)
~ THEN REPLY #51529 /* ~"Moment! Erst hast du gesagt, *sie* bringen deine Schwester um, und jetzt sagst du *er* bringt sie um. Was stimmt denn jetzt?"~ */ GOTO 3
  IF ~~ THEN REPLY #51530 /* ~"Warum hat er sie angegriffen?"~ */ GOTO 10
  IF ~~ THEN REPLY #51531 /* ~"Ich helfe dir, bring mich zu ihr."~ */ GOTO 12
  IF ~~ THEN REPLY #51532 /* ~"Ich habe keine Zeit für sowas, Wiedersehen."~ */ GOTO 13
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51533 /* ~Sie starrt dich an und weiß nicht, was sie sagen soll. "Ich... Ich bin außer mir... Ich habe einen Fehler gemacht." Sie wirft einen Blick auf die Blutflecken auf ihrem Kleid. "Bitte hilf mir, Schleifer!"~ */
  IF ~~ THEN REPLY #51534 /* ~Untersuche das Blut auf ihrem Kleid.~ */ GOTO 4
  IF ~~ THEN REPLY #51535 /* ~"Ich habe keine Zeit für sowas, Wiedersehen."~ */ GOTO 13
END

IF ~~ THEN BEGIN 4 // from: 3.0 10.0
  SAY #51536 /* ~Du siehst hinunter auf ihr Kleid und betrachtest das Blut. Obwohl es echt zu sein scheint, ist es vollständig getrocknet. Es muß Stunden alt sein.~ */
  IF ~~ THEN REPLY #51537 /* ~"Das Blut ist Stunden alt... Was führst du im Schilde?"~ */ GOTO 5
  IF ~~ THEN REPLY #51538 /* ~"Nein, ich muß jetzt gehen. Leb wohl."~ */ GOTO 13
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #51539 /* ~Du siehst, wie sie einen kurzen Blick auf die Blutflecken wirft. Dann sieht sie wieder dich an. Du glaubst, einen leichten Anflug von Nervosität in ihrer Stimme zu hören. "Du irrst dich, Schleifer, bitte hilf mir! Meine Schwester liegt im Sterben, während wir hier zögern!"~ */
  IF ~~ THEN REPLY #51540 /* ~Wahrheit: "Du führst doch was im Schilde. Sag mir, was los ist, oder ich töte dich."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Damsel_1","GLOBALGood",-1)
SetGlobal("Know_Ambush","AR0400",1)
AddexperienceParty(500)
~ GOTO 6
  IF ~~ THEN REPLY #51541 /* ~Bluff: "Du führst doch was im Schilde. Sag mir, was los ist, oder ich töte dich."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Damsel_1","GLOBALLaw",-1)
SetGlobal("Know_Ambush","AR0400",1)
AddexperienceParty(500)
~ GOTO 6
  IF ~~ THEN REPLY #51542 /* ~"Ich habe keine Zeit für sowas, Wiedersehen."~ */ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #51543 /* ~Sie sieht dir in die Augen, dann schaut sie auf die Narben, die deinen Körper bedecken. Sie schluckt nervös, und du siehst, wie sie blaß wird. "Ich... Ich soll Leute in eine Gasse in der Nähe locken. Dort warten sie... um dir deinen Klimper abzunehmen..." Sie sieht dich ängstlich an.~ */
  IF ~~ THEN REPLY #51544 /* ~"Ich möchte dir einen Rat geben..."~ */ GOTO 7
  IF ~~ THEN REPLY #51545 /* ~"Mach, daß du hier rauskommst und komm nie wieder..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #51546 /* ~Sie schaut dich schweigend an und nickt dann.~ */
  IF ~~ THEN REPLY #51547 /* ~"Such dir nicht jemanden wie mich als Opfer aus. Nimm irgendeinen betrunkenen Depp, der aussieht, als hätte er noch nie in seinem Leben einen Kampf gesehen..."~ */ GOTO 8
  IF ~~ THEN REPLY #51548 /* ~"Schon gut, Wiedersehen."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51549 /* ~Sie nickt einmal kurz.~ */
  IF ~~ THEN REPLY #51550 /* ~"Und paß auf, daß er aussieht, als nenne er mehr als ein paar Münzen sein eigen... Jetzt verschwinde."~ */ GOTO 9
  IF ~~ THEN REPLY #51551 /* ~"Schon gut, Wiedersehen."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #51552 /* ~Sie nickt kurz und weicht dann zurück. Sie zögert einen Moment und dreht sich dann um, um zu gehen. "Danke, Schleifer." Sie rennt davon.~ */
  IF ~~ THEN REPLY #51553 /* ~Geh weg.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #51554 /* ~"Als sie gemerkt hat, daß er keine einzige Münze besitzt, hat sie gesagt, daß sie ihn nicht in ihr Bett lassen würde! Und da hat er ein Messer gezogen..." Sie sieht hinunter auf ihr Kleid, dann zieht sie wieder an deinem Arm.~ */
  IF ~~ THEN REPLY #51555 /* ~Untersuche das Blut auf ihrem Kleid.~ */ GOTO 4
  IF ~~ THEN REPLY #51556 /* ~"Dafür habe ich keine Zeit. Leb wohl."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 0.1
  SAY #51557 /* ~"Bitte, Schleifer, ignoriere mich nicht. Ich brauche Hilfe!"~ */
  IF ~~ THEN REPLY #51558 /* ~"Was willst du von mir?"~ */ GOTO 1
  IF ~~ THEN REPLY #51559 /* ~Ignoriere sie weiterhin.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 1.1 2.2
  SAY #51560 /* ~Ein Ausdruck der Erleichterung erscheint auf ihrem Gesicht. Sie zieht an deinem Arm. "Hier lang, Schleifer."~ */
  IF ~~ THEN REPLY #51561 /* ~Folge ihr.~ */ DO ~SetGlobal("Damsel_Ambush","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.2 2.3 3.1 4.1 5.2 10.1 11.1
  SAY #51562 /* ~Während du davongehst, weint und jammert die Frau weiter.~ */
  IF ~~ THEN REPLY #51563 /* ~Geh weg.~ */ DO ~EscapeArea()
~ EXIT
END
