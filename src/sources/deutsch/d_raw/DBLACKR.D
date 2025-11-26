// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBLACKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBLACKR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2823 /* ~Dieser Mensch bewegt sich mit furchterregender Geschwindigkeit, und er scheint nicht ganz zurechnungsfähig. Seine Augen brennen aus einem Schleier und ihr Wahnsinn durchsticht dein Herz. "Du da." Seine Stimme ist wie ein Schwall kalte Luft. "Erkläre deine Zugehörigkeit. Bist du für das Gute oder das Böse?"~ */
  IF ~~ THEN REPLY #3749 /* ~"Ich glaube daran, daß man den weniger vom Glück Begünstigten helfen soll. Ich wähle das Gute."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_BR_1","GLOBALGood",1)
~ GOTO 1
  IF ~~ THEN REPLY #3750 /* ~"Das Gute ist eine Illusion der Schwachen. Ich wähle das Böse."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BR_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #3751 /* ~"Weder noch. Extreme sind gefährlich."~ */ GOTO 6
  IF ~~ THEN REPLY #3752 /* ~"Wer bist du?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #3363 /* ~"Es gibt da einen Mann namens Verrotteter William. Er ist ein schlechter und hinterhältiger Mensch. Er ist der Anführer der Dunkelgassen-Schlitzer. Suche ihn in dieser Gasse und ermorde ihn. Dann hast du eine gute Tat vollbracht. Versagst du, so wird das Böse regieren. Weigerst du dich, so werde ich dich ermorden."~ */
  IF ~  !Dead("RWill")
~ THEN REPLY #3753 /* ~"OK, ich tue es."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("RWill")
~ THEN REPLY #3754 /* ~"Ich werde es nicht tun. Ich bringe keine Menschen um."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3755 /* ~Kämpf.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3756 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37838 /* ~"Der Verrottete William ist bereits tot. Ich habe beide getötet, ihn und Krystall."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_RW","GLOBAL",3)
~ GOTO 9
  IF ~  Dead("Rwill")
!Dead("Krystall")
~ THEN REPLY #37839 /* ~"Der Verrottete William ist bereits tot."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_RW","GLOBAL",3)
~ GOTO 13
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #3728 /* ~"Ich bin Schwarzrose. Ich bin Jäger und Hunger. Ich bin eine Plage. Nun. Erkläre deine Zugehörigkeit."~ */
  IF ~~ THEN REPLY #3757 /* ~"Ich glaube daran, daß man den weniger vom Glück Begünstigten helfen soll. Ich wähle das Gute."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_BR_1","GLOBALGood",1)
~ GOTO 1
  IF ~~ THEN REPLY #3758 /* ~"Das Gute ist eine Illusion der Schwachen. Ich wähle das Böse."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BR_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #3759 /* ~"Weder noch. Extreme sind gefährlich."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.0 5.0 7.0 7.1 7.2 7.3 13.1 15.1
  SAY #3730 /* ~"Ich werde dich erwarten. Geh jetzt."~ */
  IF ~~ THEN REPLY #3760 /* ~"Ich hätte vorher ein paar Fragen...."~ */ GOTO 4
  IF ~~ THEN REPLY #3762 /* ~"Ich bin weg."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #3731 /* ~"Es gibt keine Antworten. Nur das Handeln zählt. Geh."
~ */
  IF ~~ THEN REPLY #3763 /* ~"Schön."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 2.1
  SAY #3732 /* ~"Da ist diese Frau namens Krystall. Sie ist die Anführerin der Klingenengel. Sie versucht, diese Gasse 'heller' zu machen und mit ihr ein glänzendes Beispiel dafür zu setzen, was mit Güte alles erreicht werden kann. Bring sie um, und du wirst reich belohnt werden. Versagst du, so wirst du bis zu deinem Ableben gejagt werden."~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3764 /* ~"Okay."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
~ THEN REPLY #3765 /* ~"Glaub ich nicht."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3766 /* ~Kämpf.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3767 /* ~Flieh.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37841 /* ~"Sie und der Verrottete William sind bereits tot."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_Krys","GLOBAL",3)
~ GOTO 9
  IF ~  !Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37843 /* ~"Sie ist bereits tot."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_Krys","GLOBAL",3)
~ GOTO 15
END

IF ~~ THEN BEGIN 6 // from: 0.2 2.2
  SAY #3733 /* ~Seine Augen blitzen auf und werden dann freundlicher. Seine Stimme hört sich wie ein Atemhauch an. "Ein Neutraler. Ein Verbündeter. Du weißt was Gleichgewicht heißt. Hilf mir. Ich eliminiere Extreme."~ */
  IF ~~ THEN REPLY #3768 /* ~"Was kann ich tun?"~ */ GOTO 7
  IF ~~ THEN REPLY #3769 /* ~"Ich glaube nicht, daß ich dir helfen will."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #3734 /* ~"Ich jage die Klingenengel und die Dunkelgassen-Schlitzer. Such dir einen der Anführer aus und bring ihn um."~ */
  IF ~  !Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3770 /* ~"Ich nehm die Klingenengel."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3771 /* ~"Ich nehm die Dunkelgassen-Schlitzer."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
Dead("Rwill")
~ THEN REPLY #3772 /* ~"Der Verrottete William, der Anführer der Dunkelgassen-Schlitzer, ist bereits tot. Ich werde Krystall töten."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3773 /* ~"Krystall, die Anführerin der Klingenengel, ist bereits tot. Ich werde den Verrotteten William töten."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3774 /* ~"Sie sind beide bereits tot."~ */ GOTO 9
  IF ~~ THEN REPLY #3775 /* ~"Ich glaube nicht, daß ich dir helfen will."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.5 11.0 13.0 14.0 15.0
  SAY #3735 /* ~Seine glühenden Augen verengen sich zu Schlitzen, und er flüstert: "Dann bist du ein Feind." Mit einer undeutlichen Bewegung greift er an!~ */
  IF ~~ THEN REPLY #3776 /* ~Kämpfe.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3777 /* ~Flieh.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.4 5.4 7.4 11.2 14.2
  SAY #3736 /* ~"Wir werden erst einmal unsere Philosophie erarbeiten. Ein Wettkampf mit Waffen. Der Gewinner ist der wahre Sieger in unserem Streben nach der Wahrheit."~ */
  IF ~~ THEN REPLY #3778 /* ~"Ich tue es, aber ich kann nicht sterben. Du wirst am Ende doch verlieren."~ */ DO ~AddexperienceParty(1500)
~ GOTO 10
  IF ~~ THEN REPLY #3779 /* ~"Du bist wirklich verrückt, nicht wahr?"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3780 /* ~Kämpf.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #3737 /* ~Seine Augen werden größer. "Du bist die Ewigkeit. Deine Wahrheit ist ewig. Ich verbeuge mich vor Dir. Es ist mir eine Ehre. Leb wohl."~ */
  IF ~~ THEN REPLY #3781 /* ~"Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  Global("BR_RW","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #3738 /* ~"Hast du den Verrotteten William umgebracht?"~ */
  IF ~  !Dead("RWill")
~ THEN REPLY #3782 /* ~"Noch nicht. Und ich werde es auch in Zukunft nicht tun."~ */ GOTO 8
  IF ~  !Dead("Rwill")
~ THEN REPLY #3783 /* ~"Nein. Ich arbeite daran."~ */ GOTO 12
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3784 /* ~"Ja."~ */ DO ~SetGlobal("BR_RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 9
  IF ~  Dead("Rwill")
!Dead("Krystall")
~ THEN REPLY #3785 /* ~"Ja."~ */ DO ~SetGlobal("BR_RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.1 14.1
  SAY #3745 /* ~"Arbeite *schneller*. Geh nun. Ich werde dich erwarten." Er verschränkt die Arme.~ */
  IF ~~ THEN REPLY #3786 /* ~"Also gut."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5 11.3
  SAY #3746 /* ~"Deine nächste Aufgabe ist es, Krystall, die Anführerin der Klingenengel umzubringen. Ihr Tod ist für das Gleichgewicht erforderlich."~ */
  IF ~~ THEN REPLY #3787 /* ~"Ich werde es nicht tun."~ */ GOTO 8
  IF ~~ THEN REPLY #3788 /* ~"Ich bin bald zurück."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
END

IF ~  Global("BR_Krys","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #3747 /* ~"Hast du Krystall ermordet?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3790 /* ~"Noch nicht. Und ich werde es auch in Zukunft nicht tun."~ */ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3791 /* ~"Nein. Ich arbeite daran."~ */ GOTO 12
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3792 /* ~"Ja."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 9
  IF ~  !Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3793 /* ~"Ja."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 5.5 14.3
  SAY #3748 /* ~"Deine nächste Aufgabe ist es, den Verrotteten William, den Anführer der Dunkelgassen-Schlitzer umzubringen. Das ist für das Gleichgewicht erforderlich."~ */
  IF ~~ THEN REPLY #3794 /* ~"Ich werde es nicht tun."~ */ GOTO 8
  IF ~~ THEN REPLY #3795 /* ~"Ich bin bald zurück."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
END
