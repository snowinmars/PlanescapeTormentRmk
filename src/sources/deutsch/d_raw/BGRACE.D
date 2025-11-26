// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BGRACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~BGRACE~

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31487 /* ~"Morte, ich bin neugierig... Was ist mit deinem Körper passiert?"~ [FFG326] */
  IF ~~ THEN EXTERN ~DMORTE~ 603
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61473 /* ~"Deine Sprachkünste sind wirklich mächtig. Ich würde mich freuen, wenn du einige Zeit im Bordell verbringen könntest, wenn wir zurück sind."~ [FFG309] */
  IF ~~ THEN EXTERN ~DMORTE~ 604
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #61474 /* ~"Morte, ich muss gestehen, ich würde zu gerne wissen, wie du zu einem schwebenden Schädel geworden bist."~ [FFG323] */
  IF ~~ THEN EXTERN ~DMORTE~ 605
END

IF ~~ THEN BEGIN 3 // from:
  SAY #61475 /* ~"Das warst du?"~ [FFG323A] */
  IF ~~ THEN EXTERN ~DMORTE~ 606
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #61476 /* ~"Morte, was bist du noch mal? Ich glaube, du hattest es nie erwähnt."~ [FFG324] */
  IF ~~ THEN EXTERN ~DMORTE~ 607
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #61477 /* ~"Morte, im Ernst. Erzähl mir ein wenig von dir."~ [FFG325] */
  IF ~~ THEN EXTERN ~DMORTE~ 608
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",5)
~ THEN BEGIN 6 // from:
  SAY #61478 /* ~"Deine Wortgewandtheit ist wirklich imponierend. Vielleicht sollte ich das Ausmaß deiner Gabe prüfen."~ [FFG310A] */
  IF ~~ THEN EXTERN ~DMORTE~ 609
END

IF ~~ THEN BEGIN 7 // from:
  SAY #61479 /* ~"Wie war das?"~ [FFG310AA] */
  IF ~~ THEN EXTERN ~DMORTE~ 610
END

IF ~  LastPersonTalkedTo("Morte")
Global("Grace_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 8 // from:
  SAY #61480 /* ~"Du erweist dich als ziemlich nützlich, Morte. Weiter so und du wirst deinen Lohn dafür erhalten."~ [FFG308] */
  IF ~~ THEN EXTERN ~DMORTE~ 611
END

IF ~  LastPersonTalkedTo("Annah")
Global("Grace_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #61646 /* ~"Annah... bist du im Stock aufgewachsen?"~ [FFG328] */
  IF ~~ THEN EXTERN ~DANNAH~ 287
END

IF ~~ THEN BEGIN 10 // from:
  SAY #61647 /* ~"Wie du meinst."~ [FFG328A] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Grace_Talked_Annah","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #61649 /* ~"Annah... vielleicht sollten wir mal miteinander reden."~ [FFG327] */
  IF ~~ THEN EXTERN ~DANNAH~ 288
END

IF ~~ THEN BEGIN 12 // from:
  SAY #61650 /* ~"Wie du meinst."~ [FFG327A] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Annah","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Dakkon")
Global("Grace_Talked_Dakkon","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY #61652 /* ~"Deine Kampfeskunst ist äußerst eindrucksvoll, Dak'kon."~ [FFG307] */
  IF ~~ THEN EXTERN ~DDAKKON~ 358
END

IF ~  LastPersonTalkedTo("Dakkon")
Global("Grace_Talked_Dakkon","GLOBAL",1)
~ THEN BEGIN 14 // from:
  SAY #61653 /* ~"Deine Disziplin ist wirklich zu bewundern, Dak'kon."~ [FFG306] */
  IF ~~ THEN EXTERN ~DDAKKON~ 359
END

IF ~~ THEN BEGIN 15 // from:
  SAY #61654 /* ~"Bist du da nicht ein wenig zu hart gegen dich selbst?"~ [FFG306A] */
  IF ~~ THEN EXTERN ~DDAKKON~ 360
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #61655 /* ~"Nordom, ist es schwer, von der Quelle, von den anderen Modronen, getrennt zu sein?"~ [FFG330] */
  IF ~~ THEN EXTERN ~DNORDOM~ 132
END

IF ~~ THEN BEGIN 17 // from:
  SAY #61656 /* ~"Du und Morte scheinen mehr gemein zu haben, als ich anfänglich dachte."~ [FFG330A] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #61657 /* ~"Nordom... Sprichst du mit deinen Armbrüsten?"~ [FFG331] */
  IF ~~ THEN EXTERN ~DNORDOM~ 133
END

IF ~~ THEN BEGIN 19 // from:
  SAY #61658 /* ~"Oh, da bin ich ja beruhigt. Ich dachte schon..."~ [FFG331A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 134
END

IF ~~ THEN BEGIN 20 // from:
  SAY #61659 /* ~"Oh."~ [FFG331B] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #61660 /* ~"Nordom, du bist doch ein quadronischer Modron, nicht war? Wo sind dann deine Flügel?"~ [FFG329] */
  IF ~~ THEN EXTERN ~DNORDOM~ 135
END

IF ~~ THEN BEGIN 22 // from:
  SAY #61661 /* ~"Wie ein kleiner, gefallener Engel."~ [FFG329A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 136
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Grace_Talked_Nordom","GLOBAL",3)
~ THEN BEGIN 23 // from:
  SAY #61662 /* ~"Weißt du, Nordom, du bist vielleicht der niedlichste Einzelgänger-Modron, der mir je begegnet ist."~ [FFG305] */
  IF ~~ THEN EXTERN ~DNORDOM~ 137
END

IF ~~ THEN BEGIN 24 // from:
  SAY #61663 /* ~"Natürlich! Genau deshalb bist du ja so niedlich."~ [FFG305A] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Nordom","GLOBAL",0)
~ EXIT
END
