// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : FSMITH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~FSMITH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #4729 /* ~"Solltest du dich nicht schon längst verschwunden sein? Wache! Bringt diesen Dussel raus!"~ */
  IF ~~ THEN REPLY #4730 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #4731 /* ~"Hilfe! Wache! Wache!"~ */
  IF ~~ THEN REPLY #4732 /* ~Greif ihn an.~ */ EXIT
  IF ~~ THEN REPLY #4733 /* ~Geh.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Sabotage","GLOBAL",7)
~ THEN BEGIN 2 // from:
  SAY #4734 /* ~"Heilige Mächte! Unsere Maschine ist kaputt! Woher soll der Bundmeister jetzt das Geld nehmen, um uns zu bezahlen? Gut, daß wir mit ganzem Herzen bei der Sache sind. So, ich muß mich wieder an die Arbeit machen... doppelt so schwer wie sonst. Was für ein höllischer Test."~ */
  IF ~~ THEN REPLY #4735 /* ~Geh.~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 18 20 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 3 // from:
  SAY #4736 /* ~"Sei gegrüßt, Bruder! Schade, daß ich keine Zeit habe, mich mit dir zu unterhalten, aber geschmolzener Stahl wartet nicht. Geh zu den Aufsehern da drüben, wenn du etwas brauchst... sie haben Zeit."~ */
  IF ~~ THEN REPLY #4737 /* ~"Okay. Viel Glück."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 18 20 even though they appear after this state */
~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN BEGIN 4 // from:
  SAY #4738 /* ~"Du ermittelst also in dem Mordfall, was? Ich kann nicht gerade behaupten, daß es mir leid tat, daß diesem Bastard der Garaus gemacht wurde. Andererseits gab es wohl niemanden, der auf den Fusler gut zu sprechen gewesen wäre. Wo du suchen könntest? Keine Ahnung."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4739 /* ~"Aber du würdest mir gerne noch was erzählen, stimmt's?"~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4740 /* ~"Aber du würdest mir gerne noch was erzählen, stimmt's?"~ */ GOTO 6
  IF ~~ THEN REPLY #4741 /* ~"Okay. Kannst du mir nochmal sagen, wie ich in der Schmiede vorgehen muß?"~ */ GOTO 7
  IF ~~ THEN REPLY #4742 /* ~"Okay. Danke für deine Zeit und Hilfe."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #4743 /* ~"Na ja..." Der Schmied blickt verstohlen um sich. "Vielleicht solltest du dir als erstes die Aufseherin vorknöpfen. Sie macht seit ein paar Tagen einen verstimmten Eindruck. Ich glaube nicht, daß sie es war, aber vielleicht weiß sie, wer es gewesen sein könnte."~ */
  IF ~~ THEN REPLY #4744 /* ~"Mit der Aufseherin? Wo kann ich die wohl finden?"~ */ GOTO 8
  IF ~~ THEN REPLY #4745 /* ~"Danke für deine Zeit. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #4746 /* ~"Nein. Das ist so ziemlich alles, was ich dazu sagen kann."~ */
  IF ~~ THEN REPLY #4747 /* ~"Okay. Kannst du mir nochmal sagen, wie ich beim Schmieden vorgehen muß?"~ */ GOTO 7
  IF ~~ THEN REPLY #4748 /* ~"Okay. Danke für deine Zeit und Hilfe."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 18 20 even though they appear after this state */
~  Global("G_Test1","GLOBAL",1)
~ THEN BEGIN 7 // from: 4.2 6.0
  SAY #4749 /* ~"Du möchtest also schmieden. Dann brauchst du zuerst eine Schürze. Außerdem mußt du Zange, Hammer und Amboß auftreiben. Wenn du das getan hast, nimmst du einen Klumpen Eisen und legst ihn ins Feuer, bis er heiß genug ist, um bearbeitet werden zu können. Jetzt kannst du auf dem Amboß drauflos hauen, was das Zeug hält. Wenn du die gewünschte Form geschmiedet hast, tauchst du sie in den daneben stehenden Wassereimer. Das war jetzt der Schnellkurs - wobei du sicher etwas üben mußt, bevor du das Handwerk beherrschst."~ */
  IF ~~ THEN REPLY #4750 /* ~"Wie schwierig kann das schon sein?"~ */ GOTO 9
  IF ~~ THEN REPLY #4751 /* ~"Okay. Ich habe da noch ein paar Fragen."~ */ GOTO 10
  IF ~~ THEN REPLY #4752 /* ~"Okay. Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0 10.2
  SAY #4753 /* ~"Normalerweise ist sie unten im Büro des Schreibers... und beobarchtet uns. Zum Teufel, sie tut zwar nur ihre Arbeit, aber ich brauch keinen, der auf mich aufpaßt."~ */
  IF ~~ THEN REPLY #4754 /* ~"Danke. Ich hätte aber noch ein paar Fragen."~ */ GOTO 10
  IF ~~ THEN REPLY #4755 /* ~"Wenn dir das anvertraut werden könnte, bräuchtest du keine Aufsicht. Lebe wohl."~ */ EXIT
  IF ~~ THEN REPLY #4756 /* ~"Das kann ich mir vorstellen. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #4759 /* ~"Da täuschst du dich aber, Dussel. Und jetzt raus hier. Ich habe zu tun."~ */
  IF ~~ THEN REPLY #4758 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 19 17 18 20 even though they appear after this state */
~  True()
~ THEN BEGIN 10 // from: 7.1 8.0 11.0 13.0 14.0
  SAY #4760 /* ~"Ja? Was? Aber mach's kurz. Ich hab' alle Hände voll zu tun."~ */
  IF ~~ THEN REPLY #4761 /* ~"Wer bist du?"~ */ GOTO 11
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #4762 /* ~"Wo kann ich das Büro des Schreibers finden?"~ */ GOTO 13
  IF ~~ THEN REPLY #4763 /* ~"Wo ist deine Aufseherin?"~ */ GOTO 8
  IF ~~ THEN REPLY #4764 /* ~"Was machst du hier?"~ */ GOTO 14
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #4765 /* ~"Was kannst du mir über die Göttermenschen erzählen?"~ */ GOTO 15
  IF ~~ THEN REPLY #4791 /* ~"Vergiß es."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #4766 /* ~"Ich bin auf jeden Fall zu beschäftigt, als daß ich mich den ganzen Tag mit Leuten wie dir unterhalten könnte. Was willst du hier überhaupt?"~ */
  IF ~~ THEN REPLY #4767 /* ~"Also gut."~ */ GOTO 10
  IF ~~ THEN REPLY #4768 /* ~"Nein, nicht wirklich."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.5 11.1
  SAY #4769 /* ~"Dann hör auf, meine Zeit zu verschwenden. Ich habe noch einiges vor heute. Guten Tag."~ */
  IF ~~ THEN REPLY #4770 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #4771 /* ~"Siehst du diesen Raum da drüben, wo der Schreibtisch steht, an dem der alte Mann sitzt? Das ist das Büro des Schreibers und der Schreiber selbst. Brauchst du sonst noch was oder darf ich jetzt endlich weiterarbeiten?"~ */
  IF ~~ THEN REPLY #4772 /* ~"Ich habe da noch ein paar Fragen."~ */ GOTO 10
  IF ~~ THEN REPLY #4773 /* ~"Nein, das wär's. Bis dann."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #4774 /* ~"Ach, ich sitz nur so rum hier und leg meine Füße hoch. Hör mal, ich will ja nicht unhöflich sein, aber es ist doch ziemlich eindeutig, was ich hier tue - ich schmiede Stahl. Und wenn ich nicht gleich weitermache, muß ich noch mal ganz von vorn anfangen."~ */
  IF ~~ THEN REPLY #4775 /* ~"Schon gut, schon gut. Ich habe da noch einige Fragen."~ */ GOTO 10
  IF ~~ THEN REPLY #4776 /* ~"Danke, daß du mir ein wenig Zeit geopfert hast. Bis dann."~ */ EXIT
  IF ~~ THEN REPLY #4777 /* ~"Du brauchst dich gar nicht so aufzuregen, 'Freund'. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #4778 /* ~Der Schmied unterbricht seine Arbeit und schaut dich prüfend an. "Ein Göttermensch ist ein Knochenbrecher, der glaubt, daß wir alle das Zeug zum Gott haben. Sogar du. Egal ob im Guten oder im Schlechten - wir alle lernen im Laufe unserer Existenz, wie wir unsere Form immer weiter perfektionieren. Eine andere Definition eines Göttermenschen ist die einer Person, die luchsig wird, wenn ihm Leute Fragen stellen, die sie eigentlich selbst beantworten könnten."~ */
  IF ~~ THEN REPLY #4779 /* ~"Du willst also sagen, daß wir Tests bestehen müssen und dadurch dann besser werden?"~ */ GOTO 16
  IF ~~ THEN REPLY #4780 /* ~"Du meinst, du bist nicht die beste Person, mit der ich gerade jetzt darüber sprechen sollte?"~ */ GOTO 16
  IF ~~ THEN REPLY #4781 /* ~"Danke. Ich muß mich jetzt auf den Weg machen."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #4782 /* ~"Was ich sagen will, ist, daß du lieber mit einem der Faktotums auf der anderen Seite der Tür in der östlichen Mauer sprechen - die wissen mit ihrer Zeit ohnehin nichts besseres anzufangen. Ich schon. Guten Tag."~ */
  IF ~~ THEN REPLY #4783 /* ~"Ich habe da noch einige Fragen."~ */ EXIT
  IF ~~ THEN REPLY #4784 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 18 20 even though they appear after this state */
~  GlobalGT("Forge","GLOBAL",0)
GlobalLT("Forge","GLOBAL",3)
~ THEN BEGIN 17 // from:
  SAY #4785 /* ~"Mein Freund, ich glaube, jetzt hast du lange genug geschmiedet. Jeder glaubt, du... äh... hättest dabei einiges Geschick entwickelt. Los, jetzt laß mich wieder ran, denn ich hab' hier wirklich ein Eisen im Feuer."~ */
  IF ~~ THEN REPLY #4786 /* ~"Also gut, von mir aus."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Sabotage","GLOBAL",7)
~ THEN BEGIN 18 // from:
  SAY #4787 /* ~"Heilige Mächte! Unsere Maschine ist kaputt! Woher soll der Bundmeister jetzt das Geld nehmen, um uns zu bezahlen? Gut, daß wir mit ganzem Herzen bei der Sache sind. So, ich muß mich wieder an die Arbeit machen... doppelt so schwer wie sonst. Was für ein höllischer Test."~ */
  IF ~~ THEN REPLY #4788 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("GearRepair","GLOBAL",0)
GlobalLT("GearRepair","GLOBAL",5)
~ THEN BEGIN 19 // from:
  SAY #4789 /* ~"Heilige Mächte! Unsere Maschine ist kaputt! Woher soll der Bundmeister jetzt das Geld nehmen, um uns zu bezahlen? Gut, daß wir mit ganzem Herzen bei der Sache sind. So, ich muß mich wieder an die Arbeit machen... doppelt so schwer wie sonst. Was für ein höllischer Test."~ */
  IF ~~ THEN REPLY #4790 /* ~Verschwinde.~ */ EXIT
END

IF WEIGHT #2 ~  CreatureInArea("AR0503")
~ THEN BEGIN 20 // from:
  SAY #64514 /* ~Er wirft dir einen kurzen Blick zu, dann wendet er seine Aufmerksamkeit wieder dem Sprecher zu. "Psssst! Ich versuche, Keldor zuzuhören. Ich will lernen, und ihr stört mich.~ */
  IF ~~ THEN REPLY #64515 /* ~"Tut mir leid. Leb wohl."~ */ EXIT
END
