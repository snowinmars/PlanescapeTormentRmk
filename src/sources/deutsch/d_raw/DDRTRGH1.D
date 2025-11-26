// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRTRGH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRTRGH1~

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 0 // from:
  SAY #38573 /* ~"Ssss... Fleischwesen... Trocopotoca hält uns vom Schatz fern, ja? Der Troco muß sterben. Du behältst Schatz. Wir bekommen Leiche. Jaaaa?"~ */
  IF ~~ THEN REPLY #38588 /* ~"Was ist das für ein Wesen?"~ */ GOTO 1
  IF ~~ THEN REPLY #38589 /* ~"Einverstanden."~ */ GOTO 2
  IF ~~ THEN REPLY #38590 /* ~"Glaub ich nicht."~ */ GOTO 3
  IF ~~ THEN REPLY #38591 /* ~"Was ist mit deinem Freund?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #38592 /* ~"Es issst ein Trocopotoca. Weißßß. Hörner. Böse. Trocosss essssen Fleisssch. Unssssere Feinde. Töten, jaaa?"~ */
  IF ~~ THEN REPLY #38593 /* ~"Was ist mit deinem Freund?"~ */ GOTO 4
  IF ~~ THEN REPLY #38594 /* ~"Ich werde ihn töten."~ */ GOTO 2
  IF ~~ THEN REPLY #38595 /* ~"Das überlasse ich dir."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 4.1
  SAY #38596 /* ~"Jaaaa... gut. Du bekommssst Schatz an Leiche. Wir bekommen Fleisch. Geh jetzt! Töte!"~ */
  IF ~~ THEN REPLY #38597 /* ~"Ich gehe."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 4.2
  SAY #38598 /* ~"Sssss... nutzlosessss Fleissschwesen. Verschwinde!"~ */
  IF ~~ THEN REPLY #38599 /* ~"Nun gut."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.0
  SAY #38600 /* ~"Ha ha... Feigling, issst er. Angsst vor Troco. Ha ha. Für unsss töten, jaaa?"~ */
  IF ~~ THEN REPLY #38601 /* ~"Was ist das denn eigentlich?"~ */ GOTO 1
  IF ~~ THEN REPLY #38602 /* ~"Gut. Ich töte ihn."~ */ GOTO 2
  IF ~~ THEN REPLY #38603 /* ~"Nein, das glaube ich nicht."~ */ GOTO 3
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 5 // from:
  SAY #38604 /* ~"Ha ha... Feigling, issst er. Angsst vor Troco. Ha ha. Für unsss töten, jaaa?"~ */
  IF ~~ THEN REPLY #38605 /* ~"Dann gehe ich jetzt."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 6 // from:
  SAY #38606 /* ~"Er issst tot... Es issst dein Fehler! Er issst tot! Stirb, Fleisssch!" Der Ghul greift dich an!~ */
  IF ~~ THEN REPLY #38607 /* ~Kämpfe.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38608 /* ~Flüchte.~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 7 // from:
  SAY #38609 /* ~"Er issst tot... Es issst dein Fehler! Er issst tot! Stirb, Fleisssch!" Der Ghul greift dich an!~ */
  IF ~~ THEN REPLY #38610 /* ~Kämpfe.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38611 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 8 // from:
  SAY #38612 /* ~"Ssss... Troco issst tot... Du nimmssst Schatz, wir nehmen Fleisssch, jaaa?"~ */
  IF ~~ THEN REPLY #38613 /* ~"Was ist das für ein Ding?"~ */ GOTO 9
  IF ~~ THEN REPLY #38614 /* ~"Einverstanden."~ */ GOTO 10
  IF ~~ THEN REPLY #38615 /* ~"Nicht, wenn du zuerst stirbst."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38616 /* ~"Ess isssst ein Trocopotoca. Weißßß. Hörner. Böse. Trocosss esssssen Fleisssch. Unssssere Feinde. Ssssschmeckt schlecht. Jetzt tot. Unssseren Dank, Fleischwesen."~ */
  IF ~~ THEN REPLY #38617 /* ~"Gern geschehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #38618 /* ~"Dann nimm ihn und geh... Wir müsssen essen."~ */
  IF ~~ THEN REPLY #38619 /* ~"Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 11 // from:
  SAY #38620 /* ~"Wieder zurück, Fleischwesen? Nimm deine Münzzzen und geh."~ */
  IF ~~ THEN REPLY #38621 /* ~"Nun denn. Leb wohl."~ */ EXIT
END
