// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHPATROL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHPATROL~

IF ~  NumTimesTalkedTo(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #27619 /* ~Die große Figur mit der roten Rüstung steht regungslos da und beobachtet aufmerksam die Passanten. Du erinnerst dich dunkel daran, daß die schmuckvolle Rüstung ihn als einen Offizier des Harmoniums ausweist, einen der Gesetzeshüter der Stadt.~ */
  IF ~~ THEN REPLY #27632 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #27620 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #27621 /* ~Der Blick des Mannes schweift mehr über die Einwohner des Bezirks als über dich, während er spricht: "Geh weiter!"~ */
  IF ~~ THEN REPLY #27633 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #27634 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #27622 /* ~Obwohl seine größte Aufmerksamkeit immer noch den Passanten gilt, blickt er dir kurz in die Augen. "Hier gibt's nix für dich. Geh weiter!"~ */
  IF ~~ THEN REPLY #27635 /* ~"Ich brauch nur ein paar Antworten..."~ */ GOTO 3
  IF ~~ THEN REPLY #27636 /* ~"Ich brauche deine Hilfe..."~ */ GOTO 4
  IF ~~ THEN REPLY #27637 /* ~"Und was ist, wenn ich einfach Lust hab', hier zu bleiben?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27638 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27623 /* ~Er schüttelt den Kopf. "Dann sprich mit einem Bewohner. Ich hab' hier zu tun... und ich werde meine Arbeit nicht vernachlässigen, nur um mit dir oder irgendwem sonst zu reden. Und jetzt geh weiter!"~ */
  IF ~~ THEN REPLY #27639 /* ~"Aber ich brauch deine Hilfe..."~ */ GOTO 4
  IF ~~ THEN REPLY #27640 /* ~"Und was ist, wenn ich einfach Lust hab', hier zu bleiben?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27641 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #27624 /* ~Er hebt seine Waffe. "Du brauchst Hilfe? Ist irgendwo was passiert?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #27642 /* ~"Nun ja,... nein. Ich hätte nur ein paar Fragen."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #27643 /* ~"Nun ja,..nein. Ich hätte bloß ein paar Fragen."~ */ GOTO 6
  IF ~~ THEN REPLY #27644 /* ~"Nein, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27625 /* ~Er seufzt. "Ich versteh ja, daß du Fragen hast, und zu einem anderen Zeitpunkt und an einem anderen Ort würde ich dir ja auch helfen. Aber..." Er hält inne, um einen Passanten kritisch zu mustern und wendet sich dann wieder dir zu. "Aber jetzt nicht, also... geh endlich weiter!"
~ */
  IF ~~ THEN REPLY #27645 /* ~"Und was ist, wenn ich einfach Lust hab', hier zu bleiben?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27646 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #27626 /* ~"Jetzt hör mal zu, Dussel, ich h..." Er hält inne, um einen Vorbeigehenden kritisch zu mustern und wendet sich dann wieder dir zu. "Ich habe hier einen Auftrag, und den kann ich nicht erfüllen, wenn ich mit irgendsoeinem Typen quatsche, der alles Mögliche sucht und wissen will, wie er, wer weiß wohin kommt. Geh weiter!"~ */
  IF ~~ THEN REPLY #27647 /* ~"Und was ist, wenn ich einfach Lust hab', hier zu bleiben?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27648 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2 3.1 5.0 6.0
  SAY #27627 /* ~Er zuckt mit den Achseln und seine Rüstung klirrt bei der Bewegung. "Du kannst hier gern rumstehen, aber die Gesetzeshüter nerven darfst du nicht. Verzieh dich lieber, bevor es hier... Stunk gibt. Leb wohl."~ */
  IF ~~ THEN REPLY #27649 /* ~Geh.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 8 // from:
  SAY #27628 /* ~Der Offizier des Harmoniums beobachtet die Straßen und Leute und achtet auf jegliche Vorzeichen für Ärger. Du glaubst, diesem Mann schon mal begegnet zu sein, aber wegen der großen Helme und der gleichen Harmonium-Rüstung sind die Wachen schwer voneinander zu unterscheiden.~ */
  IF ~~ THEN REPLY #27650 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #27651 /* ~Laß den Soldaten in Ruhe.~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 9 // from:
  SAY #27629 /* ~Du erkennst in dem Mann ein Mitglied des Harmoniums, einem Bund, der in letzter Zeit hinter dir her ist. Er scheint dich noch nicht bemerkt zu haben.~ */
  IF ~~ THEN REPLY #27631 /* ~"Sei gegrüßt..."~ */ GOTO 10
  IF ~~ THEN REPLY #27652 /* ~Verschwinde, bevor er dich sieht.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27630 /* ~Durch die Schlitze in seinem Helm kannst du sehen, wie die Augen des Mannes größer werden. "Da ist er!" Er will dich angreifen und brüllt: "Schnappt diesen Mann, tot oder lebendig!"~ */
  IF ~~ THEN REPLY #27653 /* ~Verteidige dich.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END
