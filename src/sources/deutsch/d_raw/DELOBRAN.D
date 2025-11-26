// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELOBRAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DELOBRAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #46012 /* ~Diese alte Frau sieht dich mit ihren grauen Augen scharf an... Zuerst dein Gesicht, dann deine Arme und die Tätowierungen. "Grüß dich, Narbiger. Du bist sicher hier, um dir von Elobrande für lächerliche fünf Münzen dein Schicksal weissagen zu lassen, stimmt's?"~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #46013 /* ~"Ja... Sag mir mein Schicksal vorher..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Fortune","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #46014 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #46015 /* ~"Nein, danke. Leb wohl, Elobrande."~ */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1
  SAY #46016 /* ~Elobrande steckt die Münzen in ihre Gürteltasche und nimmt deine Hände. Mit einem kritischen Blick liest sie deine Handflächen. Schließlich sagt sie: "Es gibt Leute, die haben kein Schicksal. Sie gehen durchs Leben und tun, was ihnen gefällt. Sie schaffen sich ihr eigenes Schicksal. Auch du hast kein Schicksal, das ich vorhersagen könnte, Narbiger. Hier hast du deine Münzen zurück." Sie gibt dir die fünf Münzen.~ */
  IF ~~ THEN REPLY #46017 /* ~"Verstehe. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #46018 /* ~"Dann leb wohl."~ */ GOTO 3
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #51349 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 5.1
  SAY #46019 /* ~"Aber bitte keine irdischen Dinge, Narbiger."~ */
  IF ~  Global("CW_Scroll_Trap","GLOBAL",1)
~ THEN REPLY #46020 /* ~"Wie wär's damit: Ich habe die Schriftrolle gelesen - sie war mit Fallen gespickt?"~ */ GOTO 6
  IF ~  PartyGoldGT(4)
Global("CW_Fortune","AR0600",0)
~ THEN REPLY #46021 /* ~"Dann sag mir mein Schicksal vorher..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Fortune","AR0600",1)
~ GOTO 1
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #46022 /* ~"Na, wenn das so ist, dann leb wohl."~ */ GOTO 3
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #46023 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.2
  SAY #46024 /* ~"Warte mal, Narbiger..." Elobrande berührt deinen Arm. "Meine Mutter hat mir vor langer Zeit etwas gegeben: eine mit Wachs versiegelte Schriftrolle. Sie hatte sie von einem Mann mit einer Kapuze, der ihr gesagt hat, eines Tages würde ein Mann wie du ganz unwissentlich kommen und sie holen... Hier, nimm sie."~ */
  IF ~~ THEN REPLY #46025 /* ~"Was ist es?"~ */ DO ~GiveItemCreate("ScTrap",Protagonist,1,0,0)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46026 /* ~Elobrande schüttelt den Kopf. Dabei runzelt sie die Stirn. "Ich weiß nicht. Sie mußte schwören, den Inhalt nicht zu lesen. Auch ich habe ihren Wunsch befolgt, das Siegel nicht aufzubrechen. Der Mann hat ihr eine hübsche Summe für die Verwahrung der Schriftrolle bezahlt. Aber er hat sie auch vor den schlimmen Folgen gewarnt, falls sie sie öffnen würde."~ */
  IF ~~ THEN REPLY #46027 /* ~"Dann bedank ich mich. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #46028 /* ~Du siehst Elobrande, die Wahrsagerin. "Du bist es wieder, Narbiger?"~ */
  IF ~  Global("CW_Scroll_Trap","GLOBAL",1)
~ THEN REPLY #46029 /* ~"Ich habe die Schriftrolle gelesen - sie war mit Fallen gespickt."~ */ GOTO 6
  IF ~~ THEN REPLY #46030 /* ~"Ich hätte da ein paar Fragen, Elobrande..."~ */ GOTO 2
  IF ~~ THEN REPLY #46031 /* ~"Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 5.0
  SAY #46032 /* ~Elobrande macht einen verwirrten Eindruck. "Ich... ich weiß nicht, was ich dir sagen soll, Narbiger..."~ */
  IF ~~ THEN REPLY #46033 /* ~"Du könntest mir zum Beispiel genau erklären, wie du zu dem Ding gekommen bist."~ */ GOTO 7
  IF ~~ THEN REPLY #46034 /* ~"Da gibt es wirklich nichts *zu* sagen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46035 /* ~"Ich sagte doch, daß ich sie von meiner Mutter habe, Narbiger. Ein Mann mit einer Kapuze hat sie ihr vor etwa 50 Jahren gegeben. Er hat sie gut dafür bezahlt, legte ihr aber nahe, sie unter keinen Umständen zu lesen." Elobrande seufzt und schaut kurz weg. "Sie war eine mächtige Zauberin, doch dieser Mann flößte ihr Angst ein. Sie sah nur seine - vom Wahnsinn gezeichneten - Augen und die Haut um die Augen herum, die genauso faltig und grau war wie deine. Mehr weiß ich nicht über ihm."~ */
  IF ~~ THEN REPLY #46036 /* ~"Da kann man wohl nichts machen. Leb wohl."~ */ EXIT
END
