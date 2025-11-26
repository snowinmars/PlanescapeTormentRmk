// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBISH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBISH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 13 15 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34107 /* ~Als du den Raum betrittst, erhebt sich ein großer, massiger Mann von seinem Stuhl und geht in deine Richtung. "'Hal-LO! Bish ist der Name. Und wer bist du?"~ */
  IF ~~ THEN REPLY #34123 /* ~"Ich habe keinen Namen."~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #34124 /* ~Lüge: "Ich heiße 'Adahn'." ~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 2
  IF ~~ THEN REPLY #34125 /* ~"Geht dich nichts an."~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 3
  IF ~~ THEN REPLY #34126 /* ~Ignoriere den Mann und geh weiter.~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #34108 /* ~"Willst du mir etwa weismachen, daß du keinen Namen hast? Warst wohl gerade 'ne Runde im Styx schwimmen, du planloser Schlucker, was?!" Du siehst, wie sich seine Hand langsam zu seiner Waffe vortastet. "Oder willst du ihn mir nur nicht sagen? Hast wohl was zu verbergen, so scheint's mir zumindest."~ */
  IF ~~ THEN REPLY #34127 /* ~"Ich spreche die Wahrheit. Ich weiß nicht, wie ich heiße."~ */ DO ~IncrementGlobal("Law","GLOBAL",1)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34128 /* ~"Ich habe nichts zu verbergen, und ich möchte keinen Ärger machen. Ich möchte hier einfach nur durch."~ */ DO ~AddexperienceParty(1200)
~ GOTO 8
  IF ~~ THEN REPLY #34129 /* ~Lüge: "Okay, okay... ich heiße 'Adahn'."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34130 /* ~"Ich will nur hier durch."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34131 /* ~"Wenn du nicht sofort zur Seite gehst, ist hier der Teufel los."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34132 /* ~"Wenn du nicht sofort zur Seite gehst, ist hier der Teufel los."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34133 /* ~"Ich suche nach einem Mann namens Pharod."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34134 /* ~"Ich suche ein Journal."~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #34135 /* ~"Man hat mir gesagt, daß ich Pharod hier irgendwo finden würde."~ */ DO ~AddexperienceParty(1200)
~ GOTO 17
  IF ~~ THEN REPLY #34136 /* ~"Das geht dich nichts an."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
  IF ~~ THEN REPLY #34137 /* ~Greif Bish an.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #66908 /* ~Ignoriere Bish, und geh weiter.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.2 4.1
  SAY #34109 /* ~"Adh... was?" Bish starrt dich verständnislos an und schüttelt dann heftig den Kopf. "Ich hab dich noch nie gesehen und mir hat keiner was davon gesagt, daß ein 'Adhan' kommt." Du siehst, wie sich seine Hand langsam zu seiner Waffe vortastet. "Du sagst mir besser gleich, was du hier machst, Dussel!" ~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #66904 /* ~"Vielleicht geht Pharods Vertrauen zu dir doch nicht so weit, wie du vielleicht denkst."~ */ DO ~AddexperienceParty(1200)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34138 /* ~"Ich suche nach einem Mann namens Pharod."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34139 /* ~"Ich suche nach einem Journal."~ */ GOTO 6
  IF ~~ THEN REPLY #34140 /* ~"Geht dich nichts an."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34141 /* ~"Ich habe nichts zu verbergen, und ich möchte keinen Ärger machen. Ich möchte hier einfach nur durch."~ */ DO ~AddexperienceParty(1200)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34142 /* ~"Ich will nur hier durch."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34143 /* ~"Wenn du nicht sofort zur Seite gehst, ist hier der Teufel los."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34144 /* ~"Wenn du nicht sofort zur Seite gehst, ist hier der Teufel los."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~~ THEN REPLY #34145 /* ~Greif Bish an.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34146 /* ~Ignoriere Bish und geh weiter.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.9 1.11 2.3 2.9 4.2 4.4 7.3 7.9
  SAY #34110 /* ~Bish zieht plötzlich seine Waffe. "Na gut. Du bist nicht ehrlich zu mir, also werd ich die Wahrheit aus dir rausprügeln."~ */
  IF ~~ THEN REPLY #34147 /* ~"Das möchte ich erst mal sehen..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #34111 /* ~Als du dich umdrehst, um zu gehen, stellt Bish sich dir in den Weg. "Ich frag dich noch einziges Mal, Dussel! Wie HEISST du?!"~ */
  IF ~~ THEN REPLY #34148 /* ~"Ich weiß nicht, wie ich heiße."~ */ GOTO 1
  IF ~~ THEN REPLY #34149 /* ~Lüge: "Ich heiße 'Adahn'."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 2
  IF ~~ THEN REPLY #34150 /* ~"Das geht dich gar nichts an!"~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #34151 /* ~Greif Bish an.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34152 /* ~Ignoriere Bish und versuche, um ihn herumzugehen.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.6 2.1 7.1
  SAY #34112 /* ~"Wenn Pharod dich sehen wollte, dann wüßte ich das." Bish zieht plötzlich seine Waffe. "Ich bin's leid, mit dir hier ein kunterbuntes Rätselraten zu veranstalten, Dussel. Ich werde mir die Antworten dann eben von deiner Leiche holen."~ */
  IF ~~ THEN REPLY #34153 /* ~"Ha..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.7 2.2 7.2
  SAY #34113 /* ~"Willst du damit sagen, daß du schon mal hier warst? Journal oder kein Journal, ich hab' dich noch nie im Leben gesehen. Das sagt mir, daß du hinter meiner Nase herumgeschnüffelt hast, jawohl." Bish zieht plötzlich seine Waffe. "Ich hoffe, es war dein Leben wert, Dussel."~ */
  IF ~~ THEN REPLY #34154 /* ~"Ja ja..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY #34114 /* ~Bish wirft frustriert die Hände in die Luft. "Vergiß es, Dussel! Ist sowieso nicht mehr wichtig." Er schüttelt den Kopf hin und her. "Was wichtiger ist, ist die Frage, was du hier unten machst!"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #66906 /* ~"Man hat mir erzählt, daß ich Pharod hier irgendwo finden könnte."~ */ DO ~AddexperienceParty(1200)
~ GOTO 17
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34155 /* ~"Ich suche nach einem Mann namens Pharod."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34156 /* ~"Ich suche nach einem Journal."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 6
  IF ~~ THEN REPLY #34157 /* ~"Geht dich nichts an."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34158 /* ~"Ich will keinen Ärger. Ich will hier nur durch."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34159 /* ~"Ich will nur hier durch."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34160 /* ~"Wenn du nicht sofort zur Seite gehst, ist hier gleich der Teufel los."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34161 /* ~"Wenn du nicht sofort zur Seite gehst, ist hier gleich der Teufel los."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~~ THEN REPLY #34162 /* ~Greif Bish an.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34163 /* ~Ignoriere Bish und geh weiter.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 1.1 2.4 7.4
  SAY #34115 /* ~Bish sieht dich mit gerunzelter Stirn an. "In Ordnung. Du darfst durch." Als du an Bish vorbeigehen willst, lehnt er sich zu dir hinüber und warnt dich mit leiser Stimme. "Aber merk dir eins, Dussel: wenn du da unten Ärger machst, schlag ich dir das nächste Mal den Schädel ein."~ */
  IF ~~ THEN REPLY #34164 /* ~"Leb wohl..."~ */ EXIT
  IF ~~ THEN REPLY #34165 /* ~"Ich mach was ich will..."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 2.5 7.5
  SAY #34116 /* ~Bish schüttelt den Kopf. "Wir alle wollen vieles, Schleifer." Er lacht schallend. "Ich kenn dich nicht, ich mag dich nicht, also mach ich einen Deal. Dein Geld oder deinen Kopf."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #34166 /* ~"Mein Geld."~ */ DO ~TakePartyGold(10000)
~ GOTO 12
  IF ~  PartyGold(0)
~ THEN REPLY #34167 /* ~"Mein Geld."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 14
  IF ~~ THEN REPLY #34168 /* ~"Weder noch!"~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.4 2.6 7.6
  SAY #34117 /* ~"Du bist noch planloser als ich dachte, Schleifer!" Bish zuckt die Schultern. "Also in Ordnung, du hast es ja so gewollt"~ */
  IF ~~ THEN REPLY #34169 /* ~"Ich zeig dir, wer hier planlos ist..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.5 2.7 7.7
  SAY #34118 /* ~Bish knurrt. "Du siehst wirklich aus wie ein echter Schläger." Er nickt dir zu, bevor er seine Waffe zieht. "Aber hier wirst du dich nicht rausschlagen."~ */
  IF ~~ THEN REPLY #34170 /* ~"Das werden wir ja sehen..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #34119 /* ~Bish durchsucht deine Habseligkeiten mit peinlicher Sorgfalt. "Ich sollte mir trotzdem deinen Kopf nehmen, denn der scheint das einzig Wertvolle zu sein, was du hast! Und jetzt verschwinde. Und ich warne dich: wenn du da unten Ärger machst, werd ich dich finden und das zu Brei schlagen, was von dir noch übrig ist!"~ */
  IF ~~ THEN REPLY #34171 /* ~"Ich bin schon unterwegs."~ */ EXIT
  IF ~~ THEN REPLY #34172 /* ~"Du Mistkerl..."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #34120 /* ~Du siehst Bish an seinem Posten. Als du dich näherst, blickt er in deine Richtung und nickt. "Hallo. Mach, daß du weiterkommst. Na los!"~ */
  IF ~~ THEN REPLY #34173 /* ~"Okay."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #34121 /* ~Bish durchsucht deine Sachen nach Kupfermünzen... ohne Erfolg. "Wolltest du meine Zeit verschwenden oder hast du gedacht, daß dein Mull was wert sei?" Bish schwingt seine Waffe. "Sieht aus, als müßte ich statt dessen deine Leiche verhökern!"~ */
  IF ~~ THEN REPLY #34174 /* ~"Attacke..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Buried_Attack","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #34122 /* ~Bish schnellt herum, um deine Begrüßung mit seiner gezogenen Waffe zu beantworten! "Was hab' ich dir gesagt, Dussel? Du schlägst da unten um dich, also schlag ich dir jetzt den Schädel ein!"~ */
  IF ~~ THEN REPLY #34175 /* ~"Ja ja..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0
  SAY #66905 /* ~Bish schnaubt dich an. "Nun, dann sag ihm, daß er diese Haltung am besten nochmal überdenkt, wenn er von meinen Männern und mir erwartet, daß wir dieses blöde Loch da bewachen." Er steckt seine Waffe in die Scheide und deutet auf eine Falltür im Boden. "Ab mit dir!"~ */
  IF ~~ THEN REPLY #66910 /* ~Wiederseh'n.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.8 7.0
  SAY #66907 /* ~Bish mustert dich mißtrauisch. "Pharod unterrichtet mich für gewöhnlich über Besucher, und ich kann mich nicht daran erinnern, daß er einen wie dich genannt hat." Er mustert dich schnell, bevor er gleichgültig mit den Achseln zuckt. "Äh, du siehst nicht gerade wie einer aus, mit dem die Wachen nicht fertigwerden könnnten. Ab mit dir!."~ */
  IF ~~ THEN REPLY #66909 /* ~Wiederseh'n.~ */ EXIT
END
