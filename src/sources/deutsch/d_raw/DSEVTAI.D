// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSEVTAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSEVTAI~

IF ~  Global("Sevtai_Quest","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25995 /* ~Das Gesicht der Frau sieht gezeichnet aus, und sie hat viele Narben davongetragen - sie sehen wie Bißwunden und Kratzspuren aus. Sie hält einige Lumpenfetzen in ihren Händen und starrt mit leeren Augen auf die Mauer des Monuments, genauer gesagt auf die dort zu sehenden Namen.~ */
  IF ~~ THEN REPLY #25996 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #25997 /* ~Laß die Frau in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26275 /* ~"Hssst! Verschwinde!" Als die Frau den Mund öffnet, wird eine Reihe schwarzer Eckzähne sichtbar. "Was willst du von Sev'Tai?"~ */
  IF ~~ THEN REPLY #26494 /* ~"Was ist los?"~ */ GOTO 2
  IF ~~ THEN REPLY #26495 /* ~"Tut mir leid, daß ich dich gestört habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #26496 /* ~"Was los ist?! Diese Cha... Cha-ot... CHAOTEN haben meinen Karren kaputt gemacht, mich angegriffen und drei meiner Schwestern umgebracht, die sie aufhalten wollten! Keine Schwestern mehr - jetzt sind sie nur noch Namen auf dieser Gedenkmauer!"~ */
  IF ~~ THEN REPLY #26497 /* ~"Chaoten?"~ */ GOTO 3
  IF ~~ THEN REPLY #26498 /* ~"Mein Beileid. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #26499 /* ~"Chaoten, sagen sie seien ein Bund. In Wahrheit SIND sie eine verlauste Bande, die im Stock verrückt spielt und tut, was ihr gefällt! Wir haben ihnen nie etwas getan! Dann fallen sie hier wie Hunde über einen her und hauen alles kurz und klein, was ihnen in die Hände fällt.~ */
  IF ~~ THEN REPLY #26500 /* ~"Wer waren diese Chaoten, die dich angegriffen haben?"~ */ GOTO 4
  IF ~~ THEN REPLY #26501 /* ~"Mein Beileid. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #26502 /* ~"Sie sind eine Bande im Stock, ein Haufen dreckiger Schweinehunde, die sich selbst die... die... 'Ausgehungerten Bellenden Hunde' nennen oder einen ähnlich bekloppten Namen haben!"~ */
  IF ~~ THEN REPLY #26503 /* ~"Weißt du, ich hätte nichts dagegen einige Männer für ein paar Münzen ins Totenbuch zu stecken. Wenn du Kupfermünzen hast, sind wir im Geschäft."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sevtai_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #26504 /* ~"Ihre Taten waren Unrecht. Wenn du willst, kann ich dafür sorgen, daß die Sache wieder geradegebogen wird. Wenn sie für drei Tode verantwortlich sind, dann sollen diese 'Ausgehungerten Hunde' drei Tode sterben."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sevtai_1","GLOBALLaw",1)
~ GOTO 5
  IF ~~ THEN REPLY #26505 /* ~"Ich werd Ausschau nach ihnen halten... Mein Beileid. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #26506 /* ~"Einen Kupferohrring in deinen Geldbeutel, wenn du drei dieser mordenden Schlucker in das Totenbuch steckst, einverstanden?"~ */
  IF ~  GlobalGT("Kill_SDThug","GLOBAL",2)
~ THEN REPLY #26507 /* ~"Na schön, aber die Mission ist bereits beendet. Ich hab' vor kurzem erst drei von ihnen im Stock getötet. Das waren vielleicht diejenigen, die deine Schwestern getötet haben."~ */ JOURNAL #26101 /* ~Ich habe beim Staubmenschen-Denkmal vor der Leichenhalle eine seltsame Frau getroffen, Sev-Tai. Sie trauerte um ihre drei toten Schwestern, die von einer Gruppe "Chaoten" angegriffen wurden, die sich Ausgehungerte Bellende Hunde nennt. Sie hat mich gebeten, drei dieser Chaoten zu töten, und ich habe eingewilligt... Es ist nur so, daß ich den Stockbewohnern, die sie erwähnte, bereits vor unserem Gespräch begegnet war, und so habe ich ihre Bitte schon erfüllt, bevor sie sie überhaupt ausgeprochen hatte.~ */ GOTO 6
  IF ~~ THEN REPLY #26508 /* ~"Ich sorge dafür, daß sie ins Totenbuch gesteckt werden. Kannst du mir sagen, wo ich sie finden könnte?"~ */ DO ~SetGlobal("Sevtai_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #26509 /* ~"Ich glaub nicht, daß ich dir helfen kann, Sev'Tai. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.0 8.1
  SAY #26510 /* ~"Seien die Mächte an diesem Tag nicht blind in ihrer Gerechtigkeit!" Die Frau greift in ihr spinnenartiges Haar und zieht einen Kupferohrring heraus. "Hier. Der sollte 'ne ganze Menge wert sein -mindestens dreiunddreißig Kupferstücke, da bin ich mir sicher. Er hat mal einer meiner Schwestern gehört... Aber sie wird ihn nicht mehr brauchen."~ */
  IF ~  Global("Chaotic_Sevtai_1","GLOBAL",0)
~ THEN REPLY #26511 /* ~"Nun gut. Lebe wohl, Sev'Tai."~ */ DO ~GiveItem("CopEar",Protagonist)
SetGlobal("Sevtai_Quest","GLOBAL",2)
AddexperienceParty(250)
~ EXIT
  IF ~  Global("Chaotic_Sevtai_1","GLOBAL",1)
~ THEN REPLY #26512 /* ~"Nun gut. Lebe wohl, Sev'Tai."~ */ DO ~GiveItem("CopEar",Protagonist)
SetGlobal("Sevtai_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #26100 /* ~Ich bin zu Sev'Tai zurückgekehrt und habe behauptet, ich hätte die Ausgehungerten Hunde getötet. Die Frau mit den Fangzähnen hoffte so verzweifelt darauf, diese Typen tot zu sehen, daß sie mir tatsächlich geglaubt hat, ich hätte ihre Bitte erfüllt. Dummes Weib... Wenigstens konnte ich ihr ein paar Kupferstücke abknöpfen.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #26513 /* ~"Geh durch das Südtor, von hier aus auf den Mittelpunkt des Rings zu... dann geh um den Block, bis du an einen Ort kommst, an dem Leute im Kreis laufen und den Himmel von Sigil anheulen. Da sind die Ausgehungerten Hunde, genau da."~ */
  IF ~  GlobalGT("AR0400_Visited","GLOBAL",0)
~ THEN REPLY #26514 /* ~"Ja, ich bin dort schon gewesen. Dort gibt es doch die vielen leichten Mädchen und Trunkenbolde, südlich von hier. Ich werd bald zurück sein."~ */ JOURNAL #26099 /* ~Ich habe beim Staubmenschen-Denkmal vor der Leichenhalle eine seltsame Frau getroffen, Sev-Tai. Sie trauerte um ihre drei toten Schwestern, die von einer Gruppe "Chaoten" angegriffen wurden, die sich Ausgehungerte Bellende Hunde nennt. Sie hat mich gebeten, drei dieser Chaoten zu töten, und ich habe eingewilligt. Sie sagte, ich müßte sie in dem Block des Stocks südlich vom Denkmal finden, wo alle Huren und Betrunkenen rumhängen.~ */ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",0)
~ THEN REPLY #26515 /* ~"Dann such ich mal nach ihnen."~ */ JOURNAL #26098 /* ~Ich habe beim Staubmenschen-Denkmal vor der Leichenhalle eine seltsame Frau getroffen, Sev-Tai. Sie trauerte um ihre drei toten Schwestern, die von einer Gruppe "Chaoten" angegriffen wurden, die sich Ausgehungerte Bellende Hunde nennt. Sie hat mich gebeten, drei dieser Chaoten zu töten, und ich habe eingewilligt. Sie sagte, ich müßte sie in dem Block des Stocks südlich vom Denkmal finden, hinter dem Südtor.~ */ EXIT
END

IF ~  Global("Sevtai_Quest","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #26516 /* ~"Du schon wieder..." Die Frau dreht sich nach dir um. Sie bleckt die Zähne und faucht. "Hast du eine Nachricht für Sev'Tai?"~ */
  IF ~  GlobalGT("Kill_SDThug","GLOBAL",2)
~ THEN REPLY #26517 /* ~"Ich hab' die Ausgehungerten Bellenden Hunde gefunden und drei von ihnen ins Totenbuch gesteckt."~ */ JOURNAL #26520 /* ~Ich bin zu Sev'Tai zurückgekehrt, nachdem ich drei der Ausgehungerten Hunde getötet habe. Dafür hat sie mir einen Kupferohrring gegeben und mir dafür gedankt, daß ich ihre Schwestern gerächt habe.~ */ GOTO 6
  IF ~  GlobalLT("Kill_SDThug","GLOBAL",3)
~ THEN REPLY #26518 /* ~Lüge: "Ich hab' drei der Ausgehungerten Bellenden Hunde gefunden und alle drei ins Totenbuch gesteckt."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sevtai_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~  GlobalLT("Kill_SDThug","GLOBAL",3)
~ THEN REPLY #26519 /* ~"Noch keine guten Neuigkeiten. Ich bin immer noch auf der Jagd nach diesen Chaoten."~ */ EXIT
END

IF ~  Global("Sevtai_Quest","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #26521 /* ~Als dich die Frau mit den Vampirzähnen erblickt, nickt sie dir anerkennend zu. "Sev'Tai und ihre Schwestern danken dir für deine Gerechtigkeit."~ */
  IF ~~ THEN REPLY #26522 /* ~"Nun denn, Sev'Tai. Leb wohl."~ */ EXIT
END
