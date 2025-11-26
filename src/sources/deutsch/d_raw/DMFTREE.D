// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMFTREE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMFTREE~

IF ~  Global("Mourns","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9707 /* ~Du siehst einen müde wirkenden, gramgebeugten alten Mann, der auf den abgestorbenen Baum vor ihm starrt. Er murmelt vor sich hin und faßt sich dabei ans Kinn, als würde er über etwas nachdenken. Hin und wieder schüttelt er traurig den Kopf.~ */
  IF ~~ THEN REPLY #16643 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #16644 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #16560 /* ~Er erschrickt, als du ihn aus seinen Gedanken herausreißt. Er spricht mit ruhiger, aber trauriger Stimme. "Oh... Sei gegrüßt, mein Freund. Wie geht's dir heute?"~ */
  IF ~~ THEN REPLY #16645 /* ~"Es geht mir gut."~ */ GOTO 2
  IF ~~ THEN REPLY #16646 /* ~"Ich fühle mich elend."~ */ GOTO 3
  IF ~~ THEN REPLY #16647 /* ~"Spielt das eine Rolle?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #16648 /* ~"Ach vergiß es. Ich hätte da ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #16649 /* ~"Vergiß es... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #16561 /* ~Er lächelt, doch sein Blick bleibt betrübt. "Schön für dich, mein Freund. Ich hoffe, dein Glück verläßt dich nicht." Es scheint, als würde er sich gleich wieder dem Baum zuwenden.~ */
  IF ~~ THEN REPLY #16650 /* ~"Und wie geht's dir heute?"~ */ GOTO 5
  IF ~~ THEN REPLY #16651 /* ~"Warte. Ich hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16652 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 4.1
  SAY #16562 /* ~Jetzt wirkt er noch niedergeschlagener. "Wie bedauerlich, mein Freund... Das tut mir leid. Ich hoffe, es geht bald wieder aufwärts." Es scheint, als würde er sich gleich wieder dem Baum zuwenden.~ */
  IF ~~ THEN REPLY #16653 /* ~"Und wie geht's dir heute?"~ */ GOTO 5
  IF ~~ THEN REPLY #16654 /* ~"Warte. Ich hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16655 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #16563 /* ~Der Mann wirkt zuerst verstört, doch dann nickt er bestimmt. "Ja, mein Freund, das tut es. Für mich, jedenfalls... Aber das zählt ja anscheinend nicht viel." Es scheint, als würde er sich gleich wieder dem Baum zuwenden.~ */
  IF ~~ THEN REPLY #16656 /* ~"Es geht mir also gut."~ */ GOTO 2
  IF ~~ THEN REPLY #16657 /* ~"Also fühle ich mich elend."~ */ GOTO 3
  IF ~~ THEN REPLY #16658 /* ~"Nicht viel zählt? Was meinst du damit?"~ */ GOTO 7
  IF ~~ THEN REPLY #16659 /* ~"Warte. Ich hätte da ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #16660 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 3.0
  SAY #16564 /* ~Er zuckt leicht mit den Achseln und ringt sich ein Lächeln ab. "Es geht mir eigentlich nicht schlecht, aber ich bin traurig."~ */
  IF ~~ THEN REPLY #16661 /* ~"Wieso?"~ */ GOTO 6
  IF ~~ THEN REPLY #16662 /* ~"Oh je. Ich hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16663 /* ~"Oh je. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 9.0 29.0
  SAY #16565 /* ~Er tätschelt den Baum neben ihm. "Es sind die Bäume hier im Stock. Sie sterben, mein Freund - und den Leuten ist es gleichgültig." Als er deinen Blick bemerkt, erhebt er beschwichtigend seine Hände. "Manchen mag es egal sein, aber für mich ist es wichtig. Es tut mir weh zu sehen, wie die letzten Reste von Leben und Schönheit in diesem Bezirk einfach so verkümmern und schließlich sterben. Verstehst du das, mein Freund?"~ */
  IF ~~ THEN REPLY #16664 /* ~"Ja... du hast recht, das ist eine traurige Sache."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourns_1","GLOBALGood",1)
~ GOTO 10
  IF ~~ THEN REPLY #16665 /* ~"Nein. Alle Dinge sind vergänglich. Warum soll man sich über das Wann und Wie den Kopf zerbrechen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_2","GLOBALLaw",-1)
~ GOTO 8
  IF ~~ THEN REPLY #16666 /* ~"Nein. Wenn die Bäume nicht irgendwem nutzen, wer würde sich dann um sie sorgen?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mourns_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #16667 /* ~"Ja. Ich hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16668 /* ~"Das kann ich verstehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 30.0
  SAY #16566 /* ~"Das ist eine lange Geschichte... Viel zu lang für jemanden, der nur ganz zufällig hier vorbeigekommen ist. Sagen wir einfach, daß all meine Bemühungen, die Leute zum Handeln zu bewegen... ignoriert worden sind."~ */
  IF ~~ THEN REPLY #16669 /* ~"Was wolltest du denn von den Leuten?"~ */ GOTO 9
  IF ~~ THEN REPLY #16670 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16671 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 6.1 6.2 14.4 14.5 17.4 17.5
  SAY #16567 /* ~Er seufzt. "Das hatte ich erwartet: Du bist keinen Deut besser als die andern. Laß mich allein mit meinen Gedanken." Er wendet sich ab.~ */
  IF ~~ THEN REPLY #16672 /* ~Geh weg.~ */ DO ~SetGlobal("Mourns","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #16568 /* ~"Ich wollte, daß sie... daß sie..." Er ringt verzweifelt nach Worten. "... sich *sorgen*. Ist das soviel verlangt, mein Freund?" Er schaut dich fragend an.~ */
  IF ~~ THEN REPLY #16673 /* ~"Sorgen um was?"~ */ GOTO 6
  IF ~~ THEN REPLY #16674 /* ~"Eigentlich nicht. Ich hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16675 /* ~"Vielleicht nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #16569 /* ~Er macht ein erstauntes Gesicht und platzt heraus: "Wirklich? Oh! Ich meine, wundervoll! Vielleicht würdest du..." Er bricht ab, als wäre er plötzlich mißtrauisch geworden. Dann sagt er in seinem gewohnten, ruhigen Ton: "Auf jeden Fall ist es gut. Ich nehme an, du hast jetzt 'ein paar Fragen' an mich..."~ */
  IF ~~ THEN REPLY #16676 /* ~"Ja, ich... äh, hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16677 /* ~"Nein, noch nicht. Was wolltest du fragen?"~ */ GOTO 11
  IF ~~ THEN REPLY #16678 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #16570 /* ~Zum ersten Mal macht er einen wirklich glücklichen Eindruck. Strahlend erklärt er: "Hier überlebt kaum etwas. Schau dich nur um, mein Freund... Selbst wenn genügend Licht und frisches Wasser da *wären*, weiß ich nicht, ob ein Baum hier gedeihen würde..."~ */
  IF ~~ THEN REPLY #16679 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("Mourns_Belief","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #16680 /* ~"Die Geschichte hör ich mir ein anderes Mal an. Leb wohl."~ */ DO ~SetGlobal("Mourns","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #16571 /* ~Er nickt enthusiastisch. "Aber wenn genügend Leute sich *sorgen* würden... und wirklich *wollten*, daß sie leben... dann würde es bestimmt klappen! Sie würden wieder grün werden und aufblühen!"~ */
  IF ~~ THEN REPLY #16681 /* ~"Was? Das ergibt keinen Sinn."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Mourns_1","GLOBALLaw",1)
~ GOTO 13
  IF ~~ THEN REPLY #16682 /* ~"Du könntest recht haben."~ */ GOTO 14
  IF ~~ THEN REPLY #16683 /* ~"Vielleicht. Ich hätte da ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #16684 /* ~"Das könnte wohl passieren. Leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #16572 /* ~Er lächelt vielsagend und schüttelt den Kopf. "Du bist neu hier, wie ich sehe. Du verstehst nicht, wie Sigil *funktioniert*, mein Freund. Der Glaube ist alles, was hier zählt... alles!"
~ */
  IF ~~ THEN REPLY #16685 /* ~"Du könntest recht haben."~ */ GOTO 14
  IF ~~ THEN REPLY #16686 /* ~"Vielleicht. Ich hätte da ein paar Fragen..."~ */ GOTO 17
  IF ~~ THEN REPLY #16687 /* ~"Vielleicht. Leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.0
  SAY #16573 /* ~"Ich *habe* recht, ganz sicher," sagt er im Brustton der Überzeugung. Er wirkt jetzt ganz anders als der Mann, mit dem du am Anfang gesprochen hast. "Das ist alles, worum ich dich bitte, mein Freund... Sorge dich und hoffe, daß sie sich erholen. Wenn genügend Leute dies tun, wird der Wunsch irgendwann in Erfüllung gehen. Tust du das für mich, mein Freund?"~ */
  IF ~  NumInParty(1)
~ THEN REPLY #16688 /* ~Wahrheit: "Ja, ich werde helfen."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 15
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16689 /* ~Wahrheit: "Ja, ich werde helfen."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 16
  IF ~  NumInParty(1)
~ THEN REPLY #16690 /* ~Lüge: "Ja, ich werde dir helfen."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 48
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16691 /* ~Lüge: "Ja, ich werde dir helfen."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 49
  IF ~~ THEN REPLY #16692 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #16693 /* ~"Nein. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 14.0 17.0
  SAY #16574 /* ~"Großartig, mein Freund, großartig! Ich danke dir... Du hast mir mein Vertrauen zurückgegeben. Vielleicht finde ich noch andere wie dich, die mir zuhören... Vielleicht können wir zusammen etwas ausrichten. Aber was kann ich nun für dich tun, mein Freund?"~ */
  IF ~~ THEN REPLY #16694 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16695 /* ~"Nichts, aber trotzdem danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1 17.1
  SAY #16575 /* ~"Großartig, mein Freund, großartig! Ich danke dir... Du hast mir mein Vertrauen zurückgegeben. Vielleicht finde ich noch andere wie dich, die mir zuhören... Vielleicht können wir zusammen etwas ausrichten. Und deine Gefährten? Würdest du in meinem Namen mit ihnen sprechen?"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16698 /* ~"Morte? Was meinst du?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16699 /* ~"Annah? Könntest du?"
~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16700 /* ~"Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16701 /* ~"Grace, würdest du drüber nachdenken?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16702 /* ~"Dak'kon, könntest du diesem Mann helfen?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16703 /* ~"Dak'kon: Hilf diesem Mann."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16706 /* ~"Nordom, meinst du, du könntest helfen?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16707 /* ~"Vhailor, könntest du helfen?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16708 /* ~"Vielleicht später. Ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ GOTO 28
  IF ~~ THEN REPLY #16709 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 12.3 13.1 13.2
  SAY #16576 /* ~"Warte, mein Freund... Laß mich ausreden," sagt er im Brustton der Überzeugung. Er wirkt ganz anders als der Mann, mit dem du am Anfang gesprochen hast. "Ich habe nur eine einzige Bitte an dich: Sorge dich und hoffe, daß sie sich erholen. Wenn genügend Leute dies tun, wird der Wunsch irgendwann in Erfüllung gehen. Tust du das für mich, mein Freund?"~ */
  IF ~  NumInParty(1)
~ THEN REPLY #16710 /* ~Wahrheit: "Ja, ich werde helfen."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 15
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16711 /* ~Wahrheit: "Ja, ich werde helfen."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 16
  IF ~  NumInParty(1)
~ THEN REPLY #16713 /* ~Lüge: "Ja, ich werde dir helfen."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 48
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16714 /* ~Lüge: "Ja, ich werde dir helfen."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 49
  IF ~~ THEN REPLY #16715 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #16717 /* ~"Nein. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 28.5
  SAY #16577 /* ~"Sieh dich doch nur um, mein Freund. Kannst du dir vorstellen, daß *irgendetwas* hier ein leichtes Leben hat? Von diesem kläglichen Zustand abgesehen kommen die Dabus nur selten in diesen Teil Sigils."~ */
  IF ~~ THEN REPLY #16718 /* ~"Dabus?"~ */ GOTO 19
  IF ~~ THEN REPLY #16720 /* ~"Warum denn das?"~ */ GOTO 21
  IF ~~ THEN REPLY #16721 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #16722 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 21.0
  SAY #16578 /* ~"Du weißt schon, die Dabus. Du hast bestimmt schon welche gesehen... Sie sind die Diener der Dame - sie kümmern sich um die Stadt. Um manche Stadtteile natürlich mehr als um andere." Er schaut traurig auf den Baum neben sich.~ */
  IF ~~ THEN REPLY #16723 /* ~"Der Dame?"~ */ GOTO 20
  IF ~~ THEN REPLY #16724 /* ~"Warum kommen sie nicht oft hierher?"~ */ GOTO 21
  IF ~~ THEN REPLY #16726 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 28
  IF ~~ THEN REPLY #16727 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 21.1
  SAY #16579 /* ~"Die Dame der Schmerzen, mein Freund? Die Herrscherin von Sigil?" Er hält plötzlich inne und beschreibt ein halbkreisförmiges Zeichen über der Brust. Dann kommt er näher und flüstert: "Es ist nicht gut, von der Dame zu sprechen. Ich weiß nur, daß sie die alleinige Herrscherin der Stadt ist - ob dies nun immer so scheint, oder nicht. Aber sprich nicht mehr über sie."~ */
  IF ~~ THEN REPLY #16735 /* ~"Na gut. Warum kommen die Dabus nicht oft hierher?"~ */ GOTO 21
  IF ~~ THEN REPLY #16736 /* ~"Ich verstehe. Ich hätte da noch andere Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16737 /* ~"Ich werde sie dir gegenüber nicht wieder erwähnen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.1 20.0
  SAY #16580 /* ~"Der Stock ist gefährlich, aber das ist es nicht... Die Dame wacht über die Dabus, und niemand ist so dumm, sich mit ihr anlegen zu wollen, mein Freund. Ich vermute, daß Fell an allem schuld ist."~ */
  IF ~~ THEN REPLY #16738 /* ~"Dabus?"~ */ GOTO 19
  IF ~~ THEN REPLY #16739 /* ~"Die Dame?"~ */ GOTO 20
  IF ~~ THEN REPLY #16740 /* ~"Wer ist Fell?"~ */ GOTO 22
  IF ~~ THEN REPLY #16741 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16742 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.2
  SAY #16581 /* ~"Fell? Das ist... äh... na ja, Freund, das ist der einzige Dabus, der nicht der Dame dient. Ich kenne zwar nicht das ganze 'Dunkel', wie man so sagt, aber seine Gefährten schneiden ihn, und so lebt er allein im Stock. Er betreibt ein Tätowierungsstudio, aber fast niemand in Sigil traut sich da rein."~ */
  IF ~~ THEN REPLY #16743 /* ~"Erzähl mir was über diesen Tätowierungsladen."~ */ GOTO 23
  IF ~~ THEN REPLY #16744 /* ~"Worauf sollte ich da besonders achtgeben?"~ */ GOTO 26
  IF ~~ THEN REPLY #16745 /* ~"Du hast keine Ahnung, warum er geschnitten wird?"~ */ GOTO 27
  IF ~~ THEN REPLY #16746 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16747 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 26.0 27.2 41.2 42.0 43.1
  SAY #16582 /* ~"Fells Laden ist nur ein paar Häuser entfernt, Richtung Osten. Du erkennst ihn an Fells persönlichem Symbol, einem weißen Oval mit einem Blitz in der Mitte. Ich selbst bin noch nie dort gewesen, mein Freund, aber soviel ich weiß, kann er Bilder... du weißt doch, daß die Dabus in Bildern sprechen? In Bilderrätseln?"~ */
  IF ~~ THEN REPLY #16748 /* ~"Ja, erzähl weiter."~ */ GOTO 24
  IF ~~ THEN REPLY #16749 /* ~"Wirklich?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #16583 /* ~Er nickt. "Er kann also Bilder beim Sprechen irgendwie in Tätowierungen verwandeln. Und das sind keinesfalls gewöhnliche Tätowierungen - es sollen da irgendwelche Zauber am Wirken sein, nicht nur während ihrer Entstehung. Aber viel mehr weiß ich darüber leider nicht."~ */
  IF ~~ THEN REPLY #16750 /* ~"Was ist denn an diesem Laden so unheimlich?"~ */ GOTO 26
  IF ~~ THEN REPLY #16751 /* ~"Du hast keine Ahnung, warum er geschnitten wird?"~ */ GOTO 27
  IF ~~ THEN REPLY #16752 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16753 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #16584 /* ~"Wirklich. Sprich doch mal mit einem, dann verstehst du, was ich meine. Sie lassen Symbole über ihren Kopf schweben, anstatt zu sprechen." Zur Veranschaulichung läßt er seine Finger über den Kopf kreisen. "Und der Zuhörer muß sich einen Reim drauf machen. Aber anscheinend bekommt man Übung darin, sie zu verstehen." Er zuckt mit den Achseln.~ */
  IF ~~ THEN REPLY #16754 /* ~"Aha. Erzähl weiter."~ */ GOTO 24
END

IF ~~ THEN BEGIN 26 // from: 22.1 24.0 27.3 41.3 42.1 43.2
  SAY #16585 /* ~"Tja, mein Freund, seit er sich von der Dame abgewandt hat, glauben viele, es sei nur noch eine Frage der Zeit, bevor ihr Schatten auf ihn fällt. Bestimmt möchte niemand gern dabei sein, wenn *das* passiert."~ */
  IF ~~ THEN REPLY #16755 /* ~"Erzähl mir was über diesen Tätowierungsladen."~ */ GOTO 23
  IF ~~ THEN REPLY #16756 /* ~"Du hast keine Ahnung, warum er geschnitten wird?"~ */ GOTO 27
  IF ~~ THEN REPLY #16757 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16758 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.2 24.1 26.1
  SAY #16586 /* ~"Ich sagte doch schon, ich weiß es nicht genau, mein Freund. Ich habe nur ein paar vage Gerüchte gehört, er sei auf der falschen Seite gewesen, als irgendeine Macht beschloß, sich mit der Dame anzulegen. Frag ihn am besten selber, mein Freund. Er soll ganz nett sein, wenn auch etwas merkwürdig."~ */
  IF ~~ THEN REPLY #16759 /* ~"Irgendeine Macht?"~ */ GOTO 41
  IF ~~ THEN REPLY #16760 /* ~"Die Dame?"~ */ GOTO 42
  IF ~~ THEN REPLY #16761 /* ~"Erzähl mir was über diesen Tätowierungsladen."~ */ GOTO 23
  IF ~~ THEN REPLY #16762 /* ~"Worauf sollte ich in diesem Laden besonders achten?"~ */ GOTO 26
  IF ~~ THEN REPLY #16763 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16764 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 2.1 3.1 4.3 5.1 6.3 7.1 9.1 10.0 15.0 16.8 18.2 19.2 20.1 21.3 22.3 24.2 26.2 27.4 29.2 30.1 31.3 32.2 33.2 34.1 35.0 36.0 37.0 40.0 41.4 42.2 43.3 44.0 45.8 46.0 47.0 48.1 49.9 50.0 51.8 53.0 61.0
  SAY #16587 /* ~Er nickt in Erwartung deiner Antwort.~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #22248 /* ~"Ich brauche ein paar Kräuter aus diesem Samen. Kannst du mir helfen?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",3)
~ GOTO 54
  IF ~  Global("Mourns","GLOBAL",3)
GlobalLT("Tree_Helpers","AR0400",3)
Global("Mourns_Quest","AR0400",1)
~ THEN REPLY #16765 /* ~"Schon irgendeine Veränderung bei den Bäumen?"~ */ GOTO 45
  IF ~  Global("Mourns","GLOBAL",3)
GlobalGT("Tree_Helpers","AR0400",2)
Global("Mourns_Quest","AR0400",1)
~ THEN REPLY #16766 /* ~"Schon irgendeine Veränderung bei den Bäumen?"~ */ DO ~SetGlobal("Mourns_Quest","AR0400",2)
AddexperienceParty(500)
~ GOTO 46
  IF ~~ THEN REPLY #16767 /* ~"Wer bist du?"~ */ GOTO 29
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16768 /* ~"Was machst du hier?~ */ GOTO 30
  IF ~~ THEN REPLY #16769 /* ~"Warum sterben alle diese Bäume?"~ */ GOTO 18
  IF ~~ THEN REPLY #16770 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16771 /* ~"Ich suche nach einem Mann namens Pharod."~ */ GOTO 35
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16772 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 36
  IF ~~ THEN REPLY #16773 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.3
  SAY #16588 /* ~"Die Leute hier nennen mich 'Der um die Bäume trauert', mein Freund."~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16774 /* ~"Warum denn das?"~ */ GOTO 6
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16775 /* ~"Was machst du hier?"~ */ GOTO 30
  IF ~~ THEN REPLY #16776 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16777 /* ~"Dann leb wohl, Der um die Bäume trauert."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.4 29.1 31.0 32.0
  SAY #16589 /* ~"Ich verschwende doch nur meine Zeit, mein Freund." Er seufzt erbärmlich.~ */
  IF ~~ THEN REPLY #16778 /* ~"Was meinst du?"~ */ GOTO 7
  IF ~~ THEN REPLY #16779 /* ~"Aha. Ich hätte da noch andere Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16780 /* ~"Dann will ich dich nicht länger aufhalten. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.6
  SAY #16590 /* ~"Was Schlimmeres hat Sigil nicht zu bieten, mein Freund. Mehr gibt es dazu nicht zu sagen." Er lächelt traurig.~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16781 /* ~"Warum bist du dann hier?"
~ */ GOTO 30
  IF ~~ THEN REPLY #16782 /* ~Und wenn ich Arbeit suchen würde?"~ */ GOTO 32
  IF ~~ THEN REPLY #16783 /* ~"Wo könnte ich hingehen, um mich zu amüsieren?"~ */ GOTO 33
  IF ~~ THEN REPLY #16784 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16785 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.1 33.1 34.0
  SAY #16591 /* ~"Im Stock? Kann ich mir nicht vorstellen, daß du hier Arbeit findest, es sei denn, als Dieb. Aber wenn du total verzweifelt bist, kannst du immer noch Leichen sammeln und sie zur Leichenhalle bringen. Ich habe gehört, die Staubmenschen zahlen etwas Klimper dafür. Auf diese Weise halten sie die Straßen und Gassen des Stocks sauber und verhindern, daß die Gegend noch weiter verkommt."~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16786 /* ~"Warum bist du hier?"~ */ GOTO 30
  IF ~~ THEN REPLY #16787 /* ~"Wo könnte ich hingehen, um mich zu amüsieren?"~ */ GOTO 33
  IF ~~ THEN REPLY #16788 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16789 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.2 32.1
  SAY #16592 /* ~"Tja, mein Freund... Es ist nicht einfach, sich an einem Ort wie diesem zu amüsieren. Wenn du Unterhaltung brauchst, solltest du dich eher in einem anderen Bezirk umsehen. Da ist es sicherer."~ */
  IF ~~ THEN REPLY #16790 /* ~"Was ist hier gefährlich?"~ */ GOTO 34
  IF ~~ THEN REPLY #16791 /* ~"Wo könnte ich hingehen, um hier Arbeit zu finden?"~ */ GOTO 32
  IF ~~ THEN REPLY #16792 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16793 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #16593 /* ~"Hier? Alles, mein Freund. Alles. Na ja, bis auf mich vielleicht. He-he."~ */
  IF ~~ THEN REPLY #16794 /* ~"Wo könnte ich hingehen, um hier Arbeit zu finden?"
~ */ GOTO 32
  IF ~~ THEN REPLY #16795 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16796 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 28.7
  SAY #16594 /* ~"Tut mir leid, mein Freund. Als ich hier ankam, habe ich mit vielen Leuten geredet... Aber dieser Name sagt mir nichts."~ */
  IF ~~ THEN REPLY #16797 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16798 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.8
  SAY #16595 /* ~"Ich kann mich nicht erinnern, eines gesehen zu haben. Wo hattest du es zuletzt, mein Freund?"~ */
  IF ~~ THEN REPLY #16799 /* ~"Ich bin nicht sicher. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16800 /* ~"Ich bin mir nicht sicher. Leb wohl."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",1)
~ THEN BEGIN 37 // from:
  SAY #16596 /* ~"Hallo, mein Freund. Da bist du ja wieder."~ */
  IF ~~ THEN REPLY #16801 /* ~"Sei gegrüßt. Ich hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16802 /* ~"Sei gegrüßt... und leb wohl."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #16597 /* ~Er wirft dir nur einen kurzen Blick zu; dann schaut er weg. "Ah, du bist es wieder... mein Freund."
~ */
  IF ~~ THEN REPLY #16803 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 39
  IF ~~ THEN REPLY #16804 /* ~"Ich möchte mich dafür entschuldigen, daß ich vorhin so unhöflich war."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #16805 /* ~Lüge: "Tut mir leid, daß ich vorhin so unhöflich war... ich wollte mich entschuldigen."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_5","GLOBALLaw",-1)
~ GOTO 40
  IF ~~ THEN REPLY #22239 /* ~"Sei gegrüßt... und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #16598 /* ~"Tut mir leid... mein Freund. Ich habe viele Sorgen. Vielleicht können wir ein andermal reden."~ */
  IF ~~ THEN REPLY #16806 /* ~"Ich möchte mich dafür entschuldigen, daß ich vorhin so unhöflich war."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #20431 /* ~Lüge: "Tut mir leid, daß ich vorhin so unhöflich war... ich wollte mich entschuldigen."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_5","GLOBALLaw",-1)
~ GOTO 40
  IF ~~ THEN REPLY #16807 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 38.2 39.0 39.1
  SAY #16599 /* ~Gelassen erwidert er deinen Blick. "Ich nehme deine Entschuldigung an, mein Freund. Hattest du irgendwelche Fragen?"~ */
  IF ~~ THEN REPLY #16808 /* ~"Ja..."~ */ GOTO 28
  IF ~~ THEN REPLY #16809 /* ~"Nein, ich habe gesagt, was ich sagen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 27.0
  SAY #16600 /* ~"Eine Gottheit, mein Freund? Ein Gott? Mit denen hat die Dame in der Regel keine Schwierigkeiten, denn sie hält sie einfach von Sigil fern. Sein Name war Aoskar, aber sonst weiß ich recht wenig darüber."~ */
  IF ~~ THEN REPLY #16810 /* ~"Der Dame?"~ */ GOTO 42
  IF ~~ THEN REPLY #16811 /* ~"Sein Name 'war'?"~ */ GOTO 43
  IF ~~ THEN REPLY #16812 /* ~"Erzähl mir was über diesen Tätowierungsladen."~ */ GOTO 23
  IF ~~ THEN REPLY #16813 /* ~"Worauf sollte ich in diesem Laden besonders achten?"
~ */ GOTO 26
  IF ~~ THEN REPLY #16814 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16815 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 27.1 41.0 43.0
  SAY #16601 /* ~"Die Dame der Schmerzen, mein Freund? Die Herrscherin von Sigil?" Er hält plötzlich inne und beschreibt ein halbkreisförmiges Zeichen über der Brust. Dann kommt er näher und flüstert: "Es ist nicht gut, von der Dame zu sprechen. Ich weiß nur, daß sie die alleinige Herrscherin der Stadt ist - ob dies nun immer so scheint, oder nicht. Aber sprich nicht mehr über sie."~ */
  IF ~~ THEN REPLY #16816 /* ~"Na gut. Erzähl mir was über Fells Tätowierungsladen."
~ */ GOTO 23
  IF ~~ THEN REPLY #16817 /* ~"Was ist an Fells Laden so unheimlich?"~ */ GOTO 26
  IF ~~ THEN REPLY #16818 /* ~"Ich verstehe. Ich hätte da noch andere Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16819 /* ~"Ich werde sie dir gegenüber nicht wieder erwähnen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #16602 /* ~Der Mann nickt mit ernster Miene. "Soweit mir bekannt ist, hat die Dame ihn vernichtet. Das solltest du nicht vergessen, falls du mit dem Gedanken spielst, sie oder einen ihrer Diener zu ärgern."~ */
  IF ~~ THEN REPLY #16820 /* ~"Die Dame?"~ */ GOTO 42
  IF ~~ THEN REPLY #16821 /* ~"Erzähl mir was über Fells Tätowierungsladen."~ */ GOTO 23
  IF ~~ THEN REPLY #16822 /* ~"Was ist an Fells Laden so unheimlich?"~ */ GOTO 26
  IF ~~ THEN REPLY #16823 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16824 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",3)
GlobalLT("Mourns_Quest","AR0400",2)
~ THEN BEGIN 44 // from:
  SAY #16603 /* ~Der um die Bäume trauert lächelt breit, als er dich sieht. "Ah, mein Freund, du bist zurückgekehrt! Kann ich irgendetwas für dich tun?"~ */
  IF ~~ THEN REPLY #16825 /* ~"Ja, ich hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16826 /* ~"Nein, ich wollte Morte bitten, dir zu helfen."~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16827 /* ~"Nein, ich wollte Annah bitten, dir zu helfen."~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16828 /* ~"Nein, ich wollte Ignus bitten, dir zu helfen."~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16829 /* ~"Nein, ich wollte Grace, die Gefallene, bitten, dir zu helfen."~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16830 /* ~"Nein, ich wollte Dak'kon bitten, dir zu helfen."~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16831 /* ~"Nein, aber ich habe Hilfe für dich gefunden. Dak'kon: Hilf diesem Mann."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16832 /* ~"Nein, ich wollte Nordom bitten, dir zu helfen."~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16833 /* ~"Nein, ich wollte Vhailor bitten, dir zu helfen."~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16834 /* ~"Nein, bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 28.1
  SAY #16604 /* ~"Nein, noch nicht, mein Freund. Obwohl ich die Hoffnung noch nicht begraben habe - ich rede jeden Tag mit den Leuten."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16835 /* ~"Ich wollte Morte bitten, dir zu helfen."~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16836 /* ~"Ich wollte Annah bitten, dir zu helfen."~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16837 /* ~"Ich wollte Ignus bitten, dir zu helfen."~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16838 /* ~"Ich wollte Grace, die Gefallene, bitten, dir zu helfen."~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16839 /* ~"Ich wollte Dak'kon bitten, dir zu helfen."~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  InParty("Dakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16840 /* ~"Gut. Ich habe Hilfe für dich gefunden. Dak'kon: Hilf diesem Mann."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16841 /* ~"Ich wollte Nordom bitten, dir zu helfen."~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16842 /* ~"Ich wollte Vhailor bitten, dir zu helfen."~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16843 /* ~"Das ist gut. Ich hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16844 /* ~"Das ist gut. Leb wohl, Der um die Bäume trauert."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 28.2
  SAY #16605 /* ~"Ja, mein Freund, und ob! Man sieht die Veränderung kaum, aber schau: frischer Saft, aus dem Stamm, und ein paar neue Knospen. Jetzt ist es nur noch eine Frage der Zeit. Danke, daß du mir die Hoffnung zurückgegeben hast."~ */
  IF ~  Global("Good_Mourns_2","GLOBAL",1)
~ THEN REPLY #16845 /* ~"Keine Ursache. Ich hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~  Global("Good_Mourns_2","GLOBAL",1)
~ THEN REPLY #16846 /* ~"Gern geschehen, Der um die Bäume trauert. Leb wohl."~ */ EXIT
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16847 /* ~"Keine... Ursache. Ich hätte da ein paar Fragen..."~ */ GOTO 47
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16848 /* ~"Gern... geschehen, Der um die Bäume trauert. Leb wohl."~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.2 46.3
  SAY #16606 /* ~Der um die Bäume trauert macht eine besorgte Miene. "Stimmt was nicht, mein Freund? Du machst mir einen unglücklichen Eindruck..."~ */
  IF ~~ THEN REPLY #16849 /* ~"Äh... nein. Ich hätte da nur ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16850 /* ~"Nein, es ist alles in Butter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 14.2 17.2
  SAY #16607 /* ~"Großartig, mein Freund, großartig! Ich danke dir... Du hast mir mein Vertrauen zurückgegeben. Vielleicht finde ich noch andere wie dich, die mir zuhören... Vielleicht können wir zusammen etwas ausrichten. Aber was kann ich nun für dich tun, mein Freund?"~ */
  IF ~~ THEN REPLY #16851 /* ~Sieh dir die Bäume an und stell dir vor, sie sind tot.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Mourns_2","GLOBALGood",-1)
~ GOTO 50
  IF ~~ THEN REPLY #16852 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16853 /* ~"Nichts, aber trotzdem danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 14.3 17.3
  SAY #16608 /* ~"Großartig, mein Freund, großartig! Ich danke dir... Du hast mir mein Vertrauen zurückgegeben. Vielleicht finde ich noch andere wie dich, die mir zuhören... Vielleicht können wir zusammen etwas ausrichten. Und deine Gefährten? Würdest du in meinem Namen mit ihnen sprechen?"~ */
  IF ~~ THEN REPLY #16854 /* ~Sieh dir die Bäume an und stell dir vor, sie sind tot.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Mourns_2","GLOBALGood",-1)
~ GOTO 51
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16855 /* ~"Morte? Was meinst du?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16856 /* ~"Annah? Könntest du?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16857 /* ~"Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16858 /* ~"Grace, würdest du drüber nachdenken?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16859 /* ~"Dak'kon, könntest du diesem Mann helfen?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16860 /* ~"Dak'kon: Hilf diesem Mann."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16861 /* ~"Nordom, meinst du, du könntest helfen?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16862 /* ~"Vhailor, könntest du helfen?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16863 /* ~"Vielleicht später. Ich hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16864 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #16609 /* ~Der um die Bäume trauert lächelt dich verwirrt an. "Was amüsiert dich so, mein Freund?"~ */
  IF ~~ THEN REPLY #16865 /* ~"Äh... gar nichts, mein Freund. Ich hätte da ein paar Fragen..."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ GOTO 28
  IF ~~ THEN REPLY #16866 /* ~"Oh, gar nichts. Leb wohl, Der um die Bäume trauert."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.0
  SAY #16610 /* ~Der um die Bäume trauert lächelt dich verwirrt an. "Was amüsiert dich so, mein Freund?"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16867 /* ~"Nichts, ehrlich. Morte? Was meinst du?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16868 /* ~"Gar nichts. Annah? Könntest du?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16869 /* ~"Habe ich gelächelt? Ignorier's. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16870 /* ~"Ach, gar nichts. Grace, könntest du drüber nachdenken?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16871 /* ~"Nichts, nichts. Dak'kon, könntest du diesem Mann helfen?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16872 /* ~"Nichts. Dak'kon: Komm und hilf diesem Mann."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16873 /* ~"Oh, nichts. Nordom, meinst du, du könntest helfen?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16874 /* ~"Nichts, Der um die Bäume trauert. Vhailor, könntest du helfen?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16875 /* ~"Äh... gar nichts. Ich hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16876 /* ~"Gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #16611 /* ~Der um die Bäume trauert reißt entsetzt die Augen auf, als ihm klar wird, was gleich passiert. Plötzlich springt er auf und wirft sich zwischen Ignus und die Bäume: "Nein! Halt! Das kannst du nicht machen!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16877 /* ~Sprich weiter...~ */ EXTERN ~DMORTE~ 186
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16878 /* ~Sprich weiter...~ */ EXTERN ~DIGNUS~ 13
END

IF ~  Global("Mourns","GLOBAL",3)
Global("Mourns_Quest","AR0400",2)
~ THEN BEGIN 53 // from:
  SAY #16612 /* ~Der um die Bäume trauert lächelt breit, als er dich sieht. "Ah, mein Freund, du bist zurückgekehrt! Den Bäumen scheint es täglich besser zu gehen. Kann ich irgendetwas für dich tun?"
~ */
  IF ~~ THEN REPLY #16879 /* ~"Ja, ich hätte da ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #16880 /* ~"Nein, bin nur zufällig vorbeigekommen. Leb wohl, Der um die Bäume trauert."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 28.0
  SAY #22240 /* ~Der um die Bäume trauert nimmt den Samen und hält ihn sich dicht vor die Augen. "Was für ein seltsamer Samen... Sind das da am Rand Zähne? Stacheln vielleicht... Wo hast du den her, mein Freund?"~ */
  IF ~~ THEN REPLY #22249 /* ~"Die alte Mebbeth, die Hebamme vom Platz, braucht ein paar Kräuter, die aus diesen Samen wachsen. Weißt du, wo ich so was bekommen könnte?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #22241 /* ~"Nein..." Der um die Bäume trauert starrt immer noch den Samen in seiner Hand an. "Dies ist der einzige Samen dieser Art, den ich je gesehen habe... Ich... ah!" Er zuckt zusammen, und ein Blutstropfen glitzert auf seinem Daumen. "Die Stacheln an ihm sind wirklich spitz. Vielleicht solltest du ihn halten."~ */
  IF ~~ THEN REPLY #22250 /* ~"Du kannst mir also auch nicht helfen?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #22242 /* ~"Es sei denn, du kannst ihn zum Wachsen bringen, ich kann es nicht... Ich sag's dir noch mal, ich habe niemals zuvor einen solchen Samen gesehen, mein Freund."~ */
  IF ~  Global("Mourns_Belief","GLOBAL",1)
~ THEN REPLY #22251 /* ~"Wenn wir es nur genug wollen würden, wäre es dann möglich, ihn durch unseren Willen zum Wachsen zu bringen?"~ */ GOTO 58
  IF ~~ THEN REPLY #22252 /* ~"Gibt es eine Möglichkeit, es schneller wachsen zu lassen?"~ */ GOTO 58
  IF ~~ THEN REPLY #22254 /* ~"Ich werde nicht darauf warten, daß dieses verdammte Ding endlich wächst. Ich brauche diese Kräuter, und zwar sofort."~ */ GOTO 60
  IF ~~ THEN REPLY #22255 /* ~"Ich denke, ich könnte warten, bis es gewachsen ist... wie lange würde das dauern?"~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.3
  SAY #22243 /* ~Der um die Bäume trauert schüttelt den Kopf. "Ich weiß es nicht. Vielleicht viele Jahreszeiten."~ */
  IF ~  Global("Mourns_Belief","GLOBAL",1)
~ THEN REPLY #22256 /* ~"Wenn wir es nur genug wollen würden, wäre es dann möglich, ihn durch unseren Willen zum Wachsen zu bringen?"~ */ GOTO 58
  IF ~~ THEN REPLY #22257 /* ~"Gibt es eine Möglichkeit, es schneller wachsen zu lassen?"~ */ GOTO 58
  IF ~~ THEN REPLY #22258 /* ~"Ich werde nicht darauf warten, daß dieses verdammte Ding endlich wächst. Ich brauche diese Kräuter, und zwar sofort."~ */ GOTO 60
  IF ~~ THEN REPLY #22259 /* ~"Ich brauche diese Kräuter *unbedingt*. Gibt's irgendeine andere Lösung?"~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 56.0 56.1 57.0 57.1 57.3
  SAY #22244 /* ~Der um die Bäume trauert betrachtet den Samen. "Vielleicht... wenn es dir *wichtig* genug wäre, ihn wachsen zu sehen..."~ */
  IF ~~ THEN REPLY #22260 /* ~"Was meinst du?"~ */ GOTO 59
  IF ~~ THEN REPLY #22261 /* ~Konzentriere dich auf den Samen, bring ihn durch deinen *Willen* zum Keimen.~ */ DO ~AddexperienceParty(500)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
  IF ~~ THEN REPLY #22262 /* ~"Na, ich schätze, es ist den Versuch wert..."~ */ DO ~AddexperienceParty(250)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #22245 /* ~"Das hier ist Sigil, mein Freund. Glauben ist alles. Alles... von der Säule auf der Sigil ruht, bis zu diesem winzigen Samen, den du da in der Hand hast. Wenn du nur stark genug *glaubst*, ist alles möglich..."~ */
  IF ~~ THEN REPLY #22263 /* ~Konzentriere dich auf den Samen, bring ihn durch deinen *Willen* zum Keimen.~ */ DO ~AddexperienceParty(500)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
  IF ~~ THEN REPLY #22264 /* ~"Na, ich schätze, es ist den Versuch wert..."~ */ DO ~AddexperienceParty(250)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 56.2 57.2 58.1 58.2 59.0 59.1
  SAY #22246 /* ~Zu deiner Überraschung zeigt sich ein *Riß*, und der Samen spaltet sich, aus seiner Oberfläche sprießen Zweige wie Finger. Instinktiv läßt du den Samen fallen, aber die klauenartigen Zweige schlingen sich um dein Handgelenk und lassen sich nicht abschütteln.~ */
  IF ~~ THEN REPLY #22265 /* ~"Was zur Hölle?"~ */ JOURNAL #21910 /* ~Einfach nur der *Wille*, den Samen zum Wachsen zu bringen, hat ihn zur Blüte getrieben... Jetzt ist das verdammte Ding um mein Handgelenk gewickelt und läßt nicht mehr los. Na, wenigstens nimmt es in meinem Rucksack keinen Platz weg... Trotzdem bringe ich das Ding wohl besser zu Mebbeth und sehe, ob es das ist, was sie wollte.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #22247 /* ~Der um die Bäume trauert starrt fassungslos auf die stacheligen Äste, die sich um dein Handgelenk winden. "Ich... glaube, die Stacheln an diesen neuen Ästen sind mehr als genug für das, was deine Bekannte braucht."~ */
  IF ~~ THEN REPLY #22266 /* ~"Ich hoffe, sie kann das verdammte Ding von mir abbekommen. Ach, bevor ich gehe, ich hätte noch ein paar Fragen..."~ */ GOTO 28
  IF ~~ THEN REPLY #22267 /* ~"Dann werd ich mal zu ihr zurückkehren... vielen Dank für deine Hilfe. Leb wohl."~ */ EXIT
END
