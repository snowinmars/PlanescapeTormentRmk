// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DJAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0701")
GlobalGT("Skatch_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57140 /* ~Die junge Frau - die Haare zerzaust, die Kleider durcheinander - versucht dich durch ihr ersticktes Schluchzen hindurch anzulächeln. "Danke! Ich bin dir ja *so* dankbar! Ich heiße Jasilya. Hör mal... ich muß jetzt gehen, aber nochmals vielen Dank!"~ */
  IF ~~ THEN REPLY #57141 /* ~"Kein Problem."~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0900")
Global("Benny","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #57142 /* ~Barses Tochter kann dich nur anstarren. "Du hast mich schon wieder gerettet... Ich danke dir so *sehr!* Ohne dich wäre ich schon zweimal gestorben - oder Schlimmeres..." Jasilya breitet die Arme aus und geht auf dich zu.~ */
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #57143 /* ~Zieh sie an dich und küsse sie.~ */ GOTO 6
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #57144 /* ~Zieh sie an dich und küsse sie.~ */ GOTO 8
  IF ~~ THEN REPLY #57145 /* ~Laß sie ihre Arme um dich legen.~ */ GOTO 2
  IF ~~ THEN REPLY #57146 /* ~Weiche zurück.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #57147 /* ~Sie preßt dich an sich, ihre vor Tränen feuchte Wange drückt sich gegen deine Brust. Nach einer Weile tritt sie zurück und sieht lächelnd zu dir auf. "Ich muß wieder gehen... Nochmals vielen Dank. Ich werde deine Güte nicht vergessen. Leb wohl, Reisender."~ */
  IF ~  NearbyDialog("Dannah")
~ THEN EXTERN ~DANNAH~ 279
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #57148 /* ~"Leb wohl."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #57149 /* ~Sie errötet vor Verlegenheit und sieht auf ihre Füße. "Oh... Ich wollte nicht... nun..." Sie sieht wieder lächelnd zu dir auf. "Leb wohl, Fremder. Ich *danke* dir so sehr! Ich werde deine Güte nicht vergessen."~ */
  IF ~~ THEN REPLY #57150 /* ~"Klar. Leb wohl."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0704")
~ THEN BEGIN 4 // from:
  SAY #57151 /* ~Jasilya lächelt, als du näherkommst. "Freut mich, dich wiederzusehen, mein grimmiger Retter! Ich danke dir noch einmal. Suchst du... ein Zimmer?"~ */
  IF ~~ THEN REPLY #57152 /* ~"Ja, genau. Habt ihr was frei?"~ */ GOTO 5
  IF ~~ THEN REPLY #57154 /* ~"Im Moment nicht. Leb wohl, Jasilya."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57155 /* ~Sie lächelt dich an. "Oh... Da mußt du mit meinem Vater sprechen."~ */
  IF ~~ THEN REPLY #57156 /* ~"Danke. Leb wohl, Jasilya."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0
  SAY #57157 /* ~Als sie dich umarmen will, legst du deine Arme um sie und küßt sie auf den Mund.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 280
END

IF ~~ THEN BEGIN 7 // from:
  SAY #57158 /* ~Jasilya zuckt leicht zusammen und befreit sich sanft aus deiner Umarmung. Sie lächelt dich nervös und leicht verstört an. "Äh... Leb wohl, Fremder, und danke sehr. Ich... ich werde deine Güte nicht vergessen."~ */
  IF ~~ THEN REPLY #57159 /* ~"Klar. Leb wohl."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY #57160 /* ~Als sie dich umarmen will, legst du deine Arme um sie und küßt sie auf den Mund. Jasilya zuckt leicht zusammen und befreit sich sanft aus deiner Umarmung. Sie lächelt dich nervös und leicht verstört an. "Äh... Leb wohl, Fremder, und danke sehr. Ich... ich werde deine Güte nicht vergessen."~ */
  IF ~~ THEN REPLY #57161 /* ~"Klar. Leb wohl."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0900")
Global("Benny","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #67818 /* ~Diese Frau keucht und schwitzt. "Bitte... bitte... Rette mich vor diesen Männern..."~ */
  IF ~~ THEN REPLY #67819 /* ~"Also gut. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0701")
Global("Skatch_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #68097 /* ~"Hilf mir! Bitte töte sie, bevor sie mich versklaven!"~ */
  IF ~~ THEN REPLY #68098 /* ~"Ich tu, was ich kann..."~ */ EXIT
END
