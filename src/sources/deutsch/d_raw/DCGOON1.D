// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
CreatureInArea("AR0706")
~ THEN BEGIN 0 // from:
  SAY #53695 /* ~"Hör zu, Dussel, du verschwindest besser von hier... wenn du weißt, was gut für dich ist."~ */
  IF ~~ THEN REPLY #53696 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(1)
CreatureInArea("AR0706")
~ THEN BEGIN 1 // from:
  SAY #53697 /* ~"Vielleicht hörst du schlecht. Verschwinde. Ich sag's dir nicht noch mal."~ */
  IF ~~ THEN REPLY #53698 /* ~"In Ordnung. Ich gehe.".~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(2)
CreatureInArea("AR0706")
~ THEN BEGIN 2 // from:
  SAY #53699 /* ~"Du hast deine Chance gehabt, Dussel. Du hättest verschwinden sollen, als du noch konntest." Der Schläger greift an!~ */
  IF ~~ THEN REPLY #53700 /* ~Kämpfe.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  Global("Lynch_Mob","GLOBAL",1)
CreatureInArea("AR0900")
~ THEN BEGIN 3 // from:
  SAY #66759 /* ~"Willst du hier Maulaffen feilhalten oder uns retten? Leg einen Zahn zu!"~ */
  IF ~~ THEN REPLY #66760 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #1 ~  Global("Lynch_Mob","GLOBAL",0)
CreatureInArea("AR0900")
~ THEN BEGIN 4 // from:
  SAY #66761 /* ~Der grauhaarige Mann wirft dir einen verachtenden Blick zu. "Was willst du, Dussel? Siehst du nicht, daß wir damit beschäftigt sind, den Müll zu beseitigen, den wir Carzeri zu verdanken haben? Wir entledigen uns dieses Schluckers. Wir sind golden und dann sind wir wieder zurück in den Außenländern. Kein Problem."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #66769 /* ~"Aber so läuft es nicht. Eure chaotische Mob-Mentalität wird diese Stadt einzig und allein noch weiter nach Carzeri hineintreiben. Vergebt ihm - zumindest für den Augenblick - und haltet zusammen, um das Böse abzuwehren, daß die Stadt heimsucht, Dann sind eure Chancen, 'golden' zu werden, viel größer. Was meinst du?"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #66771 /* ~"Aber so läuft es nicht. Eure chaotische Mob-Mentalität wird diese Stadt einzig und allein noch weiter nach Carzeri hineintreiben. Vergebt ihm - zumindest für den Augenblick - und haltet zusammen, um das Böse abzuwehren, daß die Stadt heimsucht, Dann sind eure Chancen, 'golden' zu werden, viel größer. Was meinst du?"~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #66772 /* ~"Warum glaubst du, daß es eure Probleme lösen wird, wenn ihr ihn umbringt? Erkennst du nicht, daß die Stadt immer mehr ins Chaos gestürzt wird, wenn man einer Mob-Mentalität freien Lauf läßt? Warum überzeugst du diese Leute nicht, bei der Verteidigung gegen die Monster mitzuhelfen? Ihr rächt euch sowieso am besten, wenn ihr euren Politikern zeigt, daß sie keine Macht über euch haben."~ */ DO ~SetGlobal("Lynch_Mob","GLOBAL",2)
~ GOTO 6
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #66773 /* ~"Warum glaubst du, daß es eure Probleme lösen wird, wenn ihr ihn umbringt? Erkennst du nicht, daß die Stadt immer mehr ins Chaos gestürzt wird, wenn man einer Mob-Mentalität freien Lauf läßt? Warum überzeugst du diese Leute nicht, bei der Verteidigung gegen die Monster mitzuhelfen? Ihr rächt euch sowieso am besten, wenn ihr euren Politikern zeigt, daß sie keine Macht über euch haben."~ */ GOTO 5
  IF ~~ THEN REPLY #66774 /* ~"Hört sofort auf! Hier wird niemand gelyncht, solange ich hier bin!"~ */ DO ~SetGlobal("Lynch_Mob","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #66775 /* ~"Ich habe Besseres zu tun. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.3
  SAY #66776 /* ~"Aber er,... er... Mist! In Ordnung. Du hast recht." Er spricht lauter, damit die Menge ihn hören kann. "Laßt ihn geh'n! Wir müssen eine ganze Stadt schützen!"~ */
  IF ~~ THEN REPLY #66777 /* ~"Danke, mein Freund. Viel Glück."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
SetGlobal("Lynch_Mob","GLOBAL",1)
AddexperienceParty(150000)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2 4.4
  SAY #66778 /* ~"Halt die Klappe, Dussel! Wir haben hier was zu tun!" Er wendet sich seinen Helfern zu. "Greift ihn euch!"~ */
  IF ~~ THEN REPLY #66779 /* ~Greif ihn an.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66780 /* ~Sieh zu.~ */ EXIT
END
