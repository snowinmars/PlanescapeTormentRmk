// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVAULT9.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DVAULT9~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 12 even though they appear after this state */
~  !Global("Vault_Attack","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45843 /* ~"Willkommen im Gewölbe der Neunten Welt! Was kann ich an diesem schönen Tag für Euch tun, Bürger Sigils?"~ */
  IF ~  Global("Know_Vault","AR0510",0)
~ THEN REPLY #45844 /* ~"Was ist das für ein Ort?"~ */ DO ~SetGlobal("Know_Vault","AR0510",1)
~ GOTO 2
  IF ~  Global("Know_Head","AR0510",0)
~ THEN REPLY #45845 /* ~"Was bist du?"~ */ DO ~SetGlobal("Know_Head","AR0510",1)
~ GOTO 3
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45846 /* ~"Ich habe gehört, es gibt Probleme, wenn man was abholen will."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45847 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #66903 /* ~"Leb wohl."~ */ GOTO 11
END

IF WEIGHT #2 /* Triggers after states #: 12 even though they appear after this state */
~  !Global("Vault_Attack","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45848 /* ~"Ein zweites Mal willkommen im Gewölbe der Neunten Welt! Was kann ich an diesem schönen Tag für Euch tun, Bürger Sigils?"~ */
  IF ~  Global("Know_Vault","AR0510",0)
~ THEN REPLY #45849 /* ~"Was ist das für ein Ort?"~ */ DO ~SetGlobal("Know_Vault","AR0510",1)
~ GOTO 2
  IF ~  Global("Know_Head","AR0510",0)
~ THEN REPLY #45850 /* ~"Was bist du?"~ */ DO ~SetGlobal("Know_Head","AR0510",1)
~ GOTO 3
  IF ~~ THEN REPLY #45851 /* ~"Ich möchte etwas einlagern."~ */ GOTO 6
  IF ~~ THEN REPLY #45852 /* ~"Ich möchte etwas abholen."~ */ GOTO 9
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45853 /* ~"Ich habe gehört, es gibt Probleme, wenn man was abholen will."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45854 /* ~"Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.0
  SAY #45855 /* ~"Die Gewölbe der Neunten Welt freuen sich, dem Unteren Bezirk und allen Fühlenden von Sigil als Lagerhaus zu dienen! Unser Motto lautet: 'Wenn eine Welt einfach nicht groß genug ist!' Wir bieten Lagerraum für alle, die wenig Platz übrig haben. Unsere Preise sind sehr attraktiv! Unser Service ist unübertroffen! Und die bevorzugte Behandlung unserer Kunden ist ebenenweit bekannt!"~ */
  IF ~~ THEN REPLY #45856 /* ~"Was bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #45857 /* ~"Leb wohl."~ */ GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0 7.1
  SAY #45858 /* ~"Ich bin die Stimme des Gewölbes der Neunten Welt. Ich bin für Euch, den Kunden, da. Womit kann ich Euch dienen?"~ */
  IF ~~ THEN REPLY #45859 /* ~"Ich möchte etwas einlagern."~ */ GOTO 6
  IF ~~ THEN REPLY #45860 /* ~"Ich möchte etwas abholen."~ */ GOTO 9
  IF ~~ THEN REPLY #45861 /* ~"Warum heißt dieser Ort 'Gewölbe der Neunten Welt'?"~ */ GOTO 4
  IF ~~ THEN REPLY #45862 /* ~"Ist dieser Ort wirklich so groß wie eine ganze Welt?"~ */ GOTO 5
  IF ~~ THEN REPLY #45863 /* ~"Vergiß es. Danke."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.2 5.2 7.4
  SAY #45864 /* ~"Da bin ich überfragt! Die Besitzer haben sich wohl was Intelligentes dabei gedacht."~ */
  IF ~~ THEN REPLY #45865 /* ~"Ich möchte etwas einlagern."~ */ GOTO 6
  IF ~~ THEN REPLY #45866 /* ~"Ich möchte etwas abholen."~ */ GOTO 9
  IF ~~ THEN REPLY #45867 /* ~"Ist dieser Ort wirklich so groß wie eine ganze Welt?"~ */ GOTO 5
  IF ~~ THEN REPLY #45868 /* ~"Aha. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 3.3 4.2 7.5
  SAY #45869 /* ~"Ach was, das ist doch nur ein kleiner Reklametrick. Wir haben schon viel Platz, aber so viel auch wieder nicht."~ */
  IF ~~ THEN REPLY #45870 /* ~"Ich möchte etwas einlagern."~ */ GOTO 6
  IF ~~ THEN REPLY #45871 /* ~"Ich möchte etwas abholen."~ */ GOTO 9
  IF ~~ THEN REPLY #45872 /* ~"Warum heißt dieser Ort 'Gewölbe der Neunten Welt'?"~ */ GOTO 4
  IF ~~ THEN REPLY #45873 /* ~"Aha. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.0 4.0 5.0 7.2
  SAY #45874 /* ~"Tut mir leid! Wir haben momentan keine Kapazitäten frei! Kann ich sonst was für Euch tun?"~ */
  IF ~~ THEN REPLY #45875 /* ~"Ich dachte, dies soll ein riesengroßes Lager sein."~ */ GOTO 8
  IF ~~ THEN REPLY #45876 /* ~"Ich möchte etwas abholen."~ */ GOTO 9
  IF ~~ THEN REPLY #45877 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #45878 /* ~"Nein. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 0.3 6.2 8.0 9.7 10.1 12.0 13.1 15.0 16.0 17.0 18.0 19.0 20.0
  SAY #45879 /* ~"Aber sicher! Was kann ich für Euch tun?"~ */
  IF ~~ THEN REPLY #45880 /* ~"Was ist das für ein Ort?"~ */ GOTO 2
  IF ~~ THEN REPLY #45881 /* ~"Was bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #45882 /* ~"Ich möchte etwas einlagern."~ */ GOTO 6
  IF ~~ THEN REPLY #45883 /* ~"Ich möchte etwas abholen."~ */ GOTO 9
  IF ~~ THEN REPLY #45884 /* ~"Warum heißt dieser Ort 'Gewölbe der Neunten Welt'?"~ */ GOTO 4
  IF ~~ THEN REPLY #45885 /* ~"Ist dieser Ort wirklich so groß wie eine ganze Welt?"~ */ GOTO 5
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45886 /* ~"Ich habe gehört, es gibt Probleme, wenn man was abholen will."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45887 /* ~"Vergiß es. Danke."~ */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45888 /* ~"Hmm... Ja." Der Kopf klingt etwas verlegen. "Die Sache ist nur, daß wir keinen Platz mehr haben. Irgendwas ist hier faul, obwohl ich nicht genau weiß, was. Langer Rede kurzer Sinn: Wir nehmen nichts mehr an."~ */
  IF ~~ THEN REPLY #45889 /* ~"Aha. Dann hätte ich da ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #45890 /* ~"Ich verstehe. Dann leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 1.3 3.1 4.1 5.1 6.1 7.3 10.0 13.0
  SAY #45891 /* ~"Und was genau sucht Ihr, wenn ich fragen darf?"~ */
  IF ~  Global("Vault_Gold","GLOBAL",1)
~ THEN REPLY #45892 /* ~"Ich suche einen großen Beutel Münzen."~ */ GOTO 13
  IF ~  Global("Vault_Gold","GLOBAL",0)
~ THEN REPLY #45893 /* ~"Ich suche einen großen Beutel Münzen."~ */ GOTO 14
  IF ~  Global("Pillow_Quest","GLOBAL",3)
~ THEN REPLY #45894 /* ~"Ich soll hier ein Kissen für Hamrys, den Sargmacher, abholen."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",4)
GiveItemCreate("DrmPllw",Protagonist,1,0,0)
~ GOTO 17
  IF ~  Global("Plans_Quest","GLOBAL",3)
~ THEN REPLY #45895 /* ~"Man hat mir gesagt, ich soll hier ein paar Pläne für ein Grab abholen."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",4)
GiveItemCreate("TombPlan",Protagonist,1,0,0)
~ GOTO 18
  IF ~  Global("Stolen_Papers","GLOBAL",3)
!Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45896 /* ~"Ich soll dir sagen, daß ich wegen einer Anleihe hier bin."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",4)
GiveItemCreate("LoanDoc",Protagonist,1,0,0)
~ GOTO 19
  IF ~  Global("Stolen_Papers","GLOBAL",3)
Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45897 /* ~"Ich soll dir sagen, daß ich Pikit eins gegrinst habe."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",4)
SetGlobal("Evidence_Papers","GLOBAL",4)
GiveItemCreate("Evidence",Protagonist,1,0,0)
GiveItemCreate("LoanDoc",Protagonist,1,0,0)
~ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",4)
Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45898 /* ~"Ich soll dir sagen, daß ich Pikit eins gegrinst habe."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",4)
GiveItemCreate("Evidence",Protagonist,1,0,0)
~ GOTO 20
  IF ~~ THEN REPLY #45899 /* ~"Nichts. Aber ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #45900 /* ~"Nichts. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 0.2 1.4 2.1 7.6
  SAY #45901 /* ~"Ja. Die Besitzer würden gerne wissen, inwiefern. Ich würde es wissen, aber ich bin ja nur ein verzauberter Kopf! Keine Ahnung, was mit dem ganzen Lagerraum passiert ist. Jedenfalls sind wir jetzt geöffnet, falls jemand fragt! Es dürfte kein Problem sein, Sachen abzuholen. Fragt einfach danach!"~ */
  IF ~~ THEN REPLY #45902 /* ~"Gut. Dann würd ich gern etwas abholen."~ */ GOTO 9
  IF ~~ THEN REPLY #45903 /* ~"Ich würde lieber ein paar Fragen stellen."~ */ GOTO 7
  IF ~~ THEN REPLY #45904 /* ~"Gerne, aber ein andermal. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 0.4 1.5 3.4 4.3 5.3 6.3 7.7 8.1 9.8 10.2 12.1 13.2 15.1 16.1 17.1 18.1 19.1 20.1
  SAY #45905 /* ~"Lebt wohl! Wir vom Gewölbe der Neunten Welt schätzen Euer Vertrauen. Bitte kommt wieder."~ */
  IF ~~ THEN REPLY #45906 /* ~"Ja, bestimmt."~ */ EXIT
  IF ~~ THEN REPLY #45907 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Vault_Attack","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #45908 /* ~"Bitte nicht den Kopf angreifen. Vielen Dank."~ */
  IF ~~ THEN REPLY #45909 /* ~"Stimmt. Ich hätte nur noch ein paar Fragen..."~ */ DO ~SetGlobal("Vault_Attack","GLOBAL",0)
~ GOTO 7
  IF ~~ THEN REPLY #45910 /* ~"Stimmt. Wiedersehen."~ */ DO ~SetGlobal("Vault_Attack","GLOBAL",0)
~ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #45911 /* ~"Tut mir leid! Dieser Artikel wurde bereits abgeholt! Darf's sonst noch was sein?"~ */
  IF ~~ THEN REPLY #45912 /* ~"Ja."~ */ GOTO 9
  IF ~~ THEN REPLY #45913 /* ~"Nein. Ich möchte nur, daß du mir ein paar Fragen beantwortest."~ */ GOTO 7
  IF ~~ THEN REPLY #45914 /* ~"Nein. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #45915 /* ~"Wir haben einen Beutel Münzen, der Eurer Beschreibung entspricht! Wieviele Münzen waren darin?"~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #45916 /* ~"1123 Münzen". Diese Schätzung hört sich irgendwie richtig an.~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #45918 /* ~"1123 Münzen". Diese Schätzung hört sich irgendwie richtig an.~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #45930 /* ~"1123 Münzen". Diese Schätzung hört sich irgendwie richtig an.~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~~ THEN REPLY #45937 /* ~Schätze: "1.000 Münzen".~ */ GOTO 16
  IF ~~ THEN REPLY #45938 /* ~Schätze: "500 Münzen".~ */ GOTO 16
  IF ~~ THEN REPLY #45940 /* ~Schätze: "750 Münzen".~ */ GOTO 16
  IF ~~ THEN REPLY #45943 /* ~Schätze: "331 Münzen".~ */ GOTO 16
  IF ~~ THEN REPLY #45945 /* ~Schätze: "2112 Münzen".~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #45917 /* ~"Bitte sehr! Vielen Dank, daß Ihr Eure Sachen im Gewölbe der Neunten Welt eingelagert habt! Kann ich Euch sonst noch was holen?"~ */
  IF ~~ THEN REPLY #45984 /* ~"Beantworte mir noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #45986 /* ~"Nein danke. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 14.3 14.4 14.5 14.6 14.7
  SAY #45948 /* ~"Tut mir leid! Dann ist es nicht Euer Beutel! Darf's sonst noch was sein?"~ */
  IF ~~ THEN REPLY #45950 /* ~"Beantworte mir noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #45952 /* ~"Nein danke. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 9.2
  SAY #45954 /* ~"Ein Kissen? Ein Kissen könnt ich auch gebrauchen... Ein großes Kissen aus STEIN! Hier ist das Kissen für Meister Hamrys. Auf daß es ihn weich bette! Kann ich sonst noch was aus dem Lager holen?"~ */
  IF ~~ THEN REPLY #45957 /* ~"Beantworte mir noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #45959 /* ~"Nein danke. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 18 // from: 9.3
  SAY #45962 /* ~"Pläne für eine Gruft? Nicht, daß es mich etwas angehen würde - aber du siehst nicht aus, als wärst du schon tot! Hier sind deine Pläne! Darf's sonst noch was sein?"~ */
  IF ~~ THEN REPLY #45965 /* ~"Beantworte mir noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #45978 /* ~"Nein danke. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 19 // from: 9.4
  SAY #45990 /* ~"Oh! Eines meiner geheimen Erkennungsworte! Hier sind Eure Unterlagen! Vielen Dank! Darf's sonst noch was sein?"~ */
  IF ~~ THEN REPLY #45991 /* ~"Beantworte mir noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #45992 /* ~"Nein danke. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 9.5 9.6
  SAY #45993 /* ~"Sehr interessant, was immer das bedeuten mag! Ich bin doch nur ein großer dummer Steinkopf! Hier sind Eure Unterlagen! Vielen Dank! Darf's sonst noch was sein?"~ */
  IF ~~ THEN REPLY #45994 /* ~"Beantworte mir noch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #45995 /* ~"Nein danke. Leb wohl."~ */ GOTO 11
END
