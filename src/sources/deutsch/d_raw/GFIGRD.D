// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFIGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~GFIGRD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5691 /* ~"Kameraden! Zu mir! Der Eindringling ist hier! Hierher!"~ */
  IF ~~ THEN REPLY #5692 /* ~Erledigt.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5693 /* ~"Mein Herr, Ihr wurdet aufgefordert zu gehen. Bitte tut das. Sofort."~ */
  IF ~~ THEN REPLY #5694 /* ~Erledigt.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 even though they appear after this state */
~  CreatureInArea("AR0500")
~ THEN BEGIN 2 // from:
  SAY #5695 /* ~"Blockiert bitte den Hof nicht, Herr. Entweder drinnen oder draußen."~ */
  IF ~~ THEN REPLY #66282 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #5701 /* ~"Ihr könnt mit einem hohen Tier sprechen oder versuchen, an uns vorbeizukommen." Er lächelt grimmig. "Die zweite Möglichkeit würde ich allerdings nicht empfehlen."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #5704 /* ~Er untersucht das Zeichen sorgfältig. "Mein Fehler, Herr. Kann ich Euch noch irgendwie zu Diensten sein?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #5708 /* ~"Dann müßt Ihr es mir zeigen." Er wartet, daß du ihm irgend etwas zeigst und sagt dann: "Wenn Ihr versucht, mit mir irgendwelche Spielchen zu spielen, werdet Ihr feststellen müssen, daß ich mich nur kurz konzentrieren kann - und mich auch nur kurz beherrschen kann."~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 6 // from:
  SAY #5712 /* ~"Guten Tag, der Herr. Kann ich Euch irgendwie helfen?"~ */
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5714 /* ~"Nun ja. Ich wußte nicht, an wen ich mich damit wenden sollte, aber ich schätze, du bist der richtige. Bedai-Lihn hat mich beauftragt, Sandoz zu töten. Wie findest du das?"~ */ GOTO 13
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5715 /* ~"Ich suche den Mörder des Schmieds. Ist dir in der Nacht irgendwas aufgefallen?"~ */ GOTO 12
  IF ~~ THEN REPLY #5716 /* ~"Wo ist das Büro des Schreibers?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5717 /* ~"Wo kann ich hier ein 'hohes Tier' finden?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5718 /* ~"Wo kann ich hier ein 'hohes Tier' finden?"~ */ GOTO 9
  IF ~~ THEN REPLY #5719 /* ~"Nein, danke. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.4 9.0 10.1 14.1 16.0 19.0 20.0
  SAY #5720 /* ~"Ich fürchte, das unterliegt der Geheimhaltung, mein Herr. Das gilt sogar für unsere geschätzten Bundmitglieder. Sofern Ihr nicht am Projekt selbst mitarbeitet oder eine Genehmigung von einem der hohen Tiere erhalten habt, können wir Euch hier nicht hineinlassen."~ */
  IF ~~ THEN REPLY #5721 /* ~"Also gut. Kannst du mir sagen, wie ich zum Büro des Schreibers komme?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5722 /* ~"Gut. Und wo kann ich die 'hohen Tiere' finden?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5723 /* ~"Gut. Und wo kann ich die 'hohen Tiere' finden?"~ */ GOTO 9
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5724 /* ~"Ich suche den Mörder des Schmieds. Ist dir in der Nacht irgendwas aufgefallen?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5725 /* ~"Wo wir grade von den 'hohen Tieren' reden: Bedai-Lihn hat mich beauftragt, Sandoz zu töten. Was sagst du dazu?"~ */ GOTO 13
  IF ~~ THEN REPLY #5726 /* ~"Soll ich's vielleicht aus dir rausprügeln?"~ */ GOTO 11
  IF ~~ THEN REPLY #5727 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 7.0 9.1 10.0 16.3 19.2 20.2
  SAY #5759 /* ~"Südlich der Haupt-Gießerei findet Ihr ein Büro, Herr, in dem ein Tisch steht. Das ist das Büro des Schreibers."~ */
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5760 /* ~"Vielen Dank. Und wo kann ich die 'hohen Tiere' finden?"~ */ GOTO 9
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5761 /* ~"Vielen Dank. Und wo kann ich die 'hohen Tiere' finden?"~ */ GOTO 10
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5762 /* ~"Ich suche den Mörder des Schmieds. Ist dir in der Nacht irgendwas aufgefallen?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5763 /* ~"Ich wußte nicht, wem ich das erzählen sollte, aber... Bedai-Lihn hat mich beauftragt, Sandoz zu töten."~ */ GOTO 13
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5764 /* ~"Was befindet sich denn hinter diesen bewachten Türen?"~ */ GOTO 7
  IF ~~ THEN REPLY #64516 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.4 7.2 8.0 16.5 19.4 20.4
  SAY #5765 /* ~"Nach dem Tod von Sandoz ist Keldor so ziemlich der einzige, der Euch helfen kann. Ihr findet ihn in der Hauptversammlungshalle - durch die Tür auf der rechten Seite der Haupt-Gießerei. Ihr könnt ihn nicht verfehlen."~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5766 /* ~"Gut. Was befindet sich denn hinter diesen bewachten Türen?"~ */ GOTO 7
  IF ~~ THEN REPLY #5767 /* ~"Kannst du mir vielleicht sagen, wo das Büro des Schreibers ist?"~ */ GOTO 8
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5768 /* ~"Ich suche den Mörder des Schmieds. Ist dir in der Nacht irgendwas aufgefallen?"~ */ GOTO 12
  IF ~~ THEN REPLY #5769 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3 7.1 8.1 16.4 19.3 20.3
  SAY #5770 /* ~"Sandoz oder Keldor müßten Euch in dieser Angelegenheit helfen können. Keldor ist in der Hauptversammungshalle; geht einfach durch die Tür auf der rechten Seite der Haupt-Gießerei. Sandoz ist gewöhnlich in einem der Räume am Ende der Halle."~ */
  IF ~~ THEN REPLY #5771 /* ~"Danke. Und wie finde ich das Büro des Schreibers?"
~ */ GOTO 8
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5772 /* ~"Was befindet sich denn hinter diesen bewachten Türen?"~ */ GOTO 7
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5773 /* ~"Ich suche den Mörder des Schmieds. Ist dir in der Nacht irgendwas aufgefallen?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5774 /* ~"Apropos Sandoz: Bedai-Lihn hat mich beauftragt, ihn zu töten. Was sagst du dazu?"~ */ GOTO 13
  IF ~~ THEN REPLY #5775 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.5
  SAY #5776 /* ~"Ich fände es großartig, wenn Ihr es versuchen würdet, Herr."~ */
  IF ~~ THEN REPLY #5777 /* ~Greif ihn an.~ */ DO ~Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #5778 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.3 8.2 9.2 10.2 16.2 18.0
  SAY #5779 /* ~"Nein, Herr. Wir hatten den Raum für die Nacht verlassen."~ */
  IF ~~ THEN REPLY #5780 /* ~"Ist das nicht ungewöhnlich?"~ */ GOTO 14
  IF ~~ THEN REPLY #5781 /* ~"Unter wessen Befehl?"~ */ GOTO 15
  IF ~~ THEN REPLY #5782 /* ~"Ich hätte da noch ein paar Fragen an dich, die nichts mit dem Mord zu tun haben."~ */ GOTO 16
  IF ~~ THEN REPLY #5783 /* ~"Ich verstehe. Interessant. Danke, daß du dir für mich Zeit genommen hast."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0 7.4 8.3 10.3 16.1 19.1 20.1
  SAY #5784 /* ~"WAS? Ist das Euer Ernst? Geht zu Keldor und redet mit ihm darüber. In der Zwischenzeit kümmern wir uns um den Ingenieur. Danke."~ */
  IF ~~ THEN REPLY #5785 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 15.1 17.1
  SAY #5786 /* ~"Ja, Herr, das ist ungewöhnlich. Normalerweise sorgen sie dafür, daß wir Tag und Nacht hier drin sind, um sicherzugehen, daß das Projekt nicht gefährdet wird."~ */
  IF ~~ THEN REPLY #5787 /* ~"Wer hat die Autorität, euch so einfach zu entlassen?"~ */ GOTO 15
  IF ~~ THEN REPLY #5788 /* ~"Was kannst du mir über das Projekt sagen?"~ */ GOTO 7
  IF ~~ THEN REPLY #5789 /* ~"Du willst also sagen, du hättest nichts gesehen."~ */ GOTO 17
  IF ~~ THEN REPLY #5790 /* ~"Interessant. Vielen Dank."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0
  SAY #5791 /* ~"Die einzigen Menschen, die diese Befugnis haben, sind Thildon und Bedai-Lihn. Möglicherweise haben die Adlaten, oder irgend jemand, der zu ihnen gehört, den Befehl gegeben, aber das ist eigentlich nicht sehr wahrscheinlich. Ich weiß nicht, von wem der Befehl kam und warum irgend jemand ihn hätte geben wollen."~ */
  IF ~~ THEN REPLY #5792 /* ~"Das ist weniger als hilfreich, aber immerhin ein Anfang. Beantworte mir statt dessen noch ein paar andere Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5793 /* ~"Und du findest es nicht ungewöhnlich, daß du diesen Befehl bekommen hast?"~ */ GOTO 14
  IF ~~ THEN REPLY #5794 /* ~"Und du hast nichts gesehen?"~ */ GOTO 17
  IF ~~ THEN REPLY #5795 /* ~"In der Tat... 'aufschlußreich'. Schönen Tag noch."
~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.2 15.0 17.0 18.1
  SAY #5796 /* ~"Noch Fragen?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5797 /* ~"Was befindet sich denn hinter diesen bewachten Türen?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5798 /* ~"Nun ja. Ich wußte nicht, an wen ich mich damit wenden sollte, aber ich schätze, du bist der richtige. Bedai-Lihn hat mich beauftragt, Sandoz zu töten. Wie findest du das?"~ */ GOTO 13
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5799 /* ~"Ich suche den Mörder des Schmieds. Ist dir in der Nacht irgendwas aufgefallen?"~ */ GOTO 12
  IF ~~ THEN REPLY #5800 /* ~"Wo ist das Büro des Schreibers?"~ */ GOTO 8
  IF ~  !Dead("Sandoz")
~ THEN REPLY #5801 /* ~"Wo kann ich hier ein 'hohes Tier' finden?"~ */ GOTO 10
  IF ~  Dead("Sandoz")
~ THEN REPLY #5802 /* ~"Wo kann ich hier ein 'hohes Tier' finden?"~ */ GOTO 9
  IF ~~ THEN REPLY #5803 /* ~"Vergiss es. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2 15.2
  SAY #5804 /* ~"Das ist absolut richtig, Herr. Ich habe nichts gesehen."~ */
  IF ~~ THEN REPLY #5805 /* ~"Hmm. Dann beantworte mir doch ein paar andere Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5806 /* ~"Und du fandest diesen Befehl nicht ungewöhnlich?"~ */ GOTO 14
  IF ~~ THEN REPLY #5807 /* ~"Das war sehr... aufschlußreich. Schönen Tag noch."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 18 // from:
  SAY #5808 /* ~"Ich glaube, wir sollen Euch soweit wie irgend möglich bei diesem Mordfall helfen, aber ich muß Euch gleich sagen, daß meine Hilfe keinen großen Wert haben wird."~ */
  IF ~~ THEN REPLY #5809 /* ~"Warum nicht? Warst du nicht hier?"
~ */ GOTO 12
  IF ~~ THEN REPLY #5810 /* ~"Okay. Nun, ich hätte da noch ein paar weitere Fragen."~ */ GOTO 16
  IF ~~ THEN REPLY #5811 /* ~"Oh. Dann vergiß es einfach."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 19 // from:
  SAY #5812 /* ~Du siehst einen braven, etwas gelangweilt dreinblickenden Wächter. "Ich grüße Euch, mein Herr. Kann ich Euch helfen?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5813 /* ~"Was befindet sich denn hinter diesen bewachten Türen?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5814 /* ~"Nun ja. Ich wußte nicht, an wen ich mich damit wenden sollte, aber ich schätze, du bist der richtige. Bedai-Lihn hat mich beauftragt, Sandoz zu töten. Wie findest du das?"~ */ GOTO 13
  IF ~~ THEN REPLY #5815 /* ~"Wo ist das Büro des Schreibers?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5816 /* ~"Wo kann ich hier ein 'hohes Tier' finden?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5817 /* ~"Wo kann ich hier ein 'hohes Tier' finden?"~ */ GOTO 9
  IF ~~ THEN REPLY #5818 /* ~"Vergiss es. Lebe wohl."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #5819 /* ~"Ich grüße Euch, mein Herr. Kann ich Euch helfen?"
~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5820 /* ~"Was befindet sich denn hinter diesen bewachten Türen?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5821 /* ~"Nun ja. Ich wußte nicht, an wen ich mich damit wenden sollte, aber ich schätze, du bist der richtige. Bedai-Lihn hat mich beauftragt, Sandoz zu töten. Wie findest du das?"~ */ GOTO 13
  IF ~~ THEN REPLY #5822 /* ~"Wo ist das Büro des Schreibers?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5823 /* ~"Wo kann ich hier ein 'hohes Tier' finden?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5824 /* ~"Wo kann ich hier ein 'hohes Tier' finden?"
~ */ GOTO 9
  IF ~~ THEN REPLY #5825 /* ~"Vergiss es. Lebe wohl."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 21 // from:
  SAY #67221 /* ~Die Wache sieht dich zornig an. "Aus dem Weg. Wir haben Arbeit zu erledigen."~ */
  IF ~~ THEN REPLY #67222 /* ~"Leb wohl."~ */ EXIT
END
