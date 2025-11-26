// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3206 /* ~Die Stirn des Mannes liegt vor Konzentration in tiefen Falten. Als du dich ihm näherst, sieht er dich an und nickt kurz. "Ja?"~ */
  IF ~~ THEN REPLY #3207 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #40689 /* ~"Nichts, bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40690 /* ~Dieser ernst aussehende Mann scheint immer noch an etwas herumzurätseln. Als du dich ihm näherst, hält er in seinem Gedankengang inne und sieht dich an. "Ja?"~ */
  IF ~~ THEN REPLY #40691 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #40692 /* ~"Nichts, bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.3 4.1 5.0 6.2 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0
  SAY #40693 /* ~Er sieht etwas verägert aus, sagt aber nichts.~ */
  IF ~~ THEN REPLY #40694 /* ~"Du siehst bekümmert aus..."~ */ GOTO 3
  IF ~~ THEN REPLY #40695 /* ~"Was machst du hier?"~ */ GOTO 6
  IF ~~ THEN REPLY #40696 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 8
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40697 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ GOTO 9
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40698 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ GOTO 10
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40699 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ GOTO 11
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40700 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ GOTO 12
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40701 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ GOTO 13
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40702 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 14
  IF ~~ THEN REPLY #40703 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #40704 /* ~Der Mann runzelt die Stirn. "Nein, nicht gerade 'bekümmert'... Ich versuche einfach nur, einen Weg herauszufinden, wie ich gegen Dolora gewinnen kann."~ */
  IF ~  Global("Dolora","GLOBAL",0)
~ THEN REPLY #40705 /* ~"Wen?"~ */ GOTO 4
  IF ~  Global("Dolora_Go","AR0605",1)
~ THEN REPLY #40706 /* ~"Ja, sie ist eine ganz schöne Gegnerin."~ */ GOTO 8
  IF ~  Global("Dolora_Go","AR0605",0)
~ THEN REPLY #40707 /* ~"Ich für meinen Teil muß erst noch mit ihr spielen."~ */ GOTO 7
  IF ~~ THEN REPLY #40708 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40709 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 6.0
  SAY #40710 /* ~"Dolora ist eine der Prostituierten hier. Zurückhaltend, gebildet, ausgesprochen intelligent... ein messerscharfer Verstand, wirklich. Wenn du eine Herausforderung suchst, versuch mal, sie in einem Strategiespiel zu schlagen."~ */
  IF ~~ THEN REPLY #40711 /* ~"Dann hast du sie noch nie geschlagen?"~ */ GOTO 5
  IF ~~ THEN REPLY #40712 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40713 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40714 /* ~Er schüttelt strinrunzelnd den Kopf. "Ich habe hier immer gegen eine Frau namens Vivian gespielt und mich für ziemlich gut gehalten... Aber dann habe ich Dolora getroffen. Ich habe die starke Vermutung, daß Vivian mich beim Spielen immer hat gewinnen lassen, aber ich hab sie nie gefragt."~ */
  IF ~~ THEN REPLY #40715 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40716 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #40717 /* ~"Ich ruhe mich nach einer vernichtenden Niederlage gegen Dolora aus. Ich glaube, diesmal hätte ich sie aber fast besiegt, also versuche ich herauszufinden, was ich tun kann, um das nächste Mal, wenn wir spielen, zu gewinnen."~ */
  IF ~  Global("Dolora","GLOBAL",0)
~ THEN REPLY #40718 /* ~"Wer ist Dolora?"~ */ GOTO 4
  IF ~  Global("Dolora","GLOBAL",1)
Global("Dolora_Go","AR0605",0)
~ THEN REPLY #40719 /* ~"Ich für meinen Teil muß erst noch mit ihr spielen."~ */ GOTO 7
  IF ~~ THEN REPLY #40720 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40721 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2 6.1
  SAY #40722 /* ~Er nickt. "Sonst noch was...?"~ */
  IF ~~ THEN REPLY #40723 /* ~"Ja. Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40724 /* ~"Nein, das ist alles. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.1
  SAY #40725 /* ~"Hör mal, ich hab Dinge, über die ich nachdenken muß. Also, wenn es dir nichts ausmacht..."~ */
  IF ~~ THEN REPLY #40726 /* ~"Warte - laß mich dich noch etwas anderes fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #40727 /* ~"Tut mir leid, dich gestört zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #40728 /* ~"Gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #40729 /* ~"Eigentlich nichts."~ */
  IF ~~ THEN REPLY #40730 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40731 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY #40732 /* ~"Ravel, sagst du? Ich hab sie das nie gefragt. Vielleicht solltest du das tun."~ */
  IF ~~ THEN REPLY #40733 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~  Global("Kesai_Ask","AR0605",0)
~ THEN REPLY #40734 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #40735 /* ~"Das tue ich vielleicht mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.5
  SAY #40736 /* ~"Nein. Ich habe mit Vivian schon eine Weile nicht mehr gesprochen. Ich wußte nicht einmal, daß sie ihn verloren hatte. So eine Schande - sie *hat* immer den erstaunlichsten erotischen Duft um sich herum gehabt..."~ */
  IF ~~ THEN REPLY #40737 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40738 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.6
  SAY #40739 /* ~"Nein, weiß ich nicht. Noch irgend etwas?"~ */
  IF ~~ THEN REPLY #40740 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40741 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.7
  SAY #40742 /* ~"Nein." Der Mann grinst und seufzt dann. "Also gut, ja. Sie ist eine Nachthexe und wurde in einen der Irrgänge der Dame geworfen, und sie ist Gegenstand von mehr als einhundert Schauermärchen für Kinder... Aber ich wette, das ist nicht gerade die Art von Informationen, hinter denen du her bist."~ */
  IF ~~ THEN REPLY #40743 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40744 /* ~"Trotzdem danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.8
  SAY #40745 /* ~Er schüttelt den Kopf. "Nein. Soweit ich das verstanden habe, gibt es nur neun."~ */
  IF ~~ THEN REPLY #40746 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40747 /* ~"Dann leb wohl."~ */ EXIT
END
