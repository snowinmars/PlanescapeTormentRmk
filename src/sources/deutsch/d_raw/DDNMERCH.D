// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDNMERCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDNMERCH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50999 /* ~Du siehst ein Skelett, das von einem Fuß auf den anderen tritt. Luft strömt pfeifend zwischen seinen Zähnen hervor. Es wirkt sehr, sehr gelangweilt. Als du dich näherst, verändert sich seine Haltung völlig. "Willkommen, willkommen! Ich habe eine Fülle von Objekten, die du dir ansehen kannst, frisch von den letzten Dusseln, die versucht haben, die Schweigenden zu berauben. Möchtest du sie sehen?"~ */
  IF ~~ THEN REPLY #51002 /* ~"Ja. Zeig mir, was du hast."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51001 /* ~"Nein. Statt dessen hätte ich gerne, daß du mir ein paar Fragen beantwortest."~ */ GOTO 1
  IF ~~ THEN REPLY #51003 /* ~"Nein. Mein Fehler. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51004 /* ~Er seufzt. "Schau, ich weiß, daß ich die ganze Ewigkeit Zeit habe, hier herumzustehen und zu quatschen, bis ich schwarz bin, aber die Wahrheit ist, daß ich mich nicht gerne mit den Lebenden abgebe, in Ordnung? Ich nehme dieses Zeug den Lebenden ab, bevor sie sterben, und verkauf es anderen Totenbüchlern, wenn's dir also sowieso egal ist, würde ich gerne einfach das Geschäft über die Bühne bringen und nach Hause gehen, in Ordnung? Also. Willst du sehen, was ich habe? Gut, dann zeig ich's dir. Wenn nicht, laß mich in Ruhe."~ */
  IF ~~ THEN REPLY #51006 /* ~"Zeig mir, was du hast."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51005 /* ~"Dann vergiß es."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #51007 /* ~"Oh. Du schon wieder. Was willst du jetzt?"~ */
  IF ~~ THEN REPLY #51008 /* ~"Wirst du meine Fragen beantworten?"~ */ GOTO 3
  IF ~~ THEN REPLY #51009 /* ~"Hast du irgendwelche neuen Waren anzubieten?"~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51010 /* ~"Nichts. Mein Fehler. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51011 /* ~"Nein." Er sieht sich hinter dir um. "Ich würde lieber die Wand anstarren, ehrlich gesagt." Er sieht wieder dich an. "Kaufst du etwas oder nicht?"~ */
  IF ~~ THEN REPLY #51012 /* ~"Das werde ich wohl."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51034 /* ~"Nein, das glaube ich nicht."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #51035 /* ~"Dann einen schönen Tag." Er pfeift weiter unmusikalisch durch seine blütenweißen Zähne hindurch.~ */
  IF ~~ THEN REPLY #51036 /* ~"Schönen Tag noch."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Undead_Alert","AR1500",1)
~ THEN BEGIN 5 // from:
  SAY #51037 /* ~Der Händler scheint nicht beeindruckt, trotz des Krachs in der Gegend. "Willst mich also kaltmachen, ja? Mach nur. Mir ist's egal."~ */
  IF ~~ THEN REPLY #51038 /* ~"Dir ist es wirklich egal?"~ */ GOTO 6
  IF ~~ THEN REPLY #51039 /* ~"Laß uns das auf die Probe stellen."~ */ DO ~Enemy()
ForceAttack(Protagonist,"DNMerch")
~ EXIT
  IF ~~ THEN REPLY #51040 /* ~"Dann lasse ich dich in Ruhe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #51041 /* ~"Natürlich nicht. Ich bin vor einer schrecklich langen Zeit gestorben. Ich habe keine Angst vor dem, was du mir antun könntest. Schmerz bedeutet nichts. Alles, was ich noch habe, ist ein Bewußtsein, und das ist mir nicht soviel Wert, daß ich deswegen mit dir kämpfen würde."~ */
  IF ~~ THEN REPLY #51042 /* ~"Gut. Stirb."~ */ DO ~Enemy()
ForceAttack(Protagonist,"DNMerch")
~ EXIT
  IF ~~ THEN REPLY #51043 /* ~"Interessant. Dann leb wohl."~ */ EXIT
END
