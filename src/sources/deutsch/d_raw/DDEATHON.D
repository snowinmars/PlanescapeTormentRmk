// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEATHON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEATHON~

IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #7288 /* ~Du siehst einen Staubmenschen mit einem schiefen Lächeln im Gesicht. Trotz des Lächelns sind seine Augen stumpf wie Stein. Sein rechter Arm ist kürzer als der linke und er hat ihn seitlich angewinkelt, so als ob er ein kleines Kind wiegt.~ */
  IF ~~ THEN REPLY #7289 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #7290 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7291 /* ~Die Blicke des Staubmenschen tasten dich ab. "Name." Aus seinem Mund klingt das Wort wie das Hallen eine Glocke.~ */
  IF ~~ THEN REPLY #7292 /* ~"Ich... Ich weiß nicht."~ */ GOTO 2
  IF ~~ THEN REPLY #7293 /* ~"Äh... tut mir leid, wollte nicht stören."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 9.0
  SAY #7294 /* ~"Kein Name, kein Name, kann nicht helfen." Der Staubmensch spricht mit einem eigenartigen Singsang. "Mußt einen Namen nennen, wenn du sehen willst, wo es gestorben ist."~ */
  IF ~~ THEN REPLY #7295 /* ~"Was?"~ */ DO ~SetGlobal("Death_of_Names","GLOBAL",1)
~ JOURNAL #66659 /* ~Ich habe beim Staubmenschen-Denkmal einen verkrüppelten Staubmenschen getroffen. Er heißt "Tod-der-Namen", und es ist offensichtlich sein Job, Namen zu begraben, indem er sie auf die Mauern des Denkmals schreibt. Der Ort gibt mir ein ungutes Gefühl. Das Denkmal ist ein riesiger Namenfriedhof, und jede der Wände gleicht einem riesigen schwarzen Grabstein.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #7296 /* ~"Bekommst einen Namen, wenn du geboren wirst, gibst ihn zurück, wenn du ihn nicht mehr brauchst. Tod-der-Namen, Tod-der-Namen." Seine Blicke wandern über den Monolithen und dann über die Mauern der Gegend. "Sind viele Namen hier begraben, hat Tod-der-Namen getan. Sag mir einen Namen, ich zeig' dir sein Grab."~ */
  IF ~  GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7297 /* ~"Xachariah."~ */ GOTO 10
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7298 /* ~"Deionarra."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7299 /* ~"Dhall."~ */ GOTO 4
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",1)
~ THEN REPLY #7300 /* ~"Dhall."~ */ GOTO 10
  IF ~  Global("Death_of_Names_Quentin","GLOBAL",1)
~ THEN REPLY #7303 /* ~"Quentin."~ */ GOTO 13
  IF ~~ THEN REPLY #7304 /* ~"Ähh... Keine Ahnung. Versuch's mal mit 'Adahn'."~ */ DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1)
~ GOTO 4
  IF ~~ THEN REPLY #9766 /* ~"Hmmm. Kannst du für mich einen Namen begraben?"~ */ GOTO 5
  IF ~~ THEN REPLY #9767 /* ~"Nein, heute keine Namen. Tut mir leid, daß ich dich gestört habe."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.5 5.3 5.5 9.4 9.6 9.10
  SAY #7305 /* ~Er schüttelt den Kopf. "Ist noch nicht tot, der Name. Ist nicht hier begraben. Ist noch nicht die Zeit, ist noch nicht die Zeit."~ */
  IF ~~ THEN REPLY #7306 /* ~"Dann laß mich einen andren Namen versuchen..."~ */ GOTO 9
  IF ~~ THEN REPLY #7307 /* ~"Kannst du einen Namen für mich begraben?"~ */ GOTO 5
  IF ~~ THEN REPLY #7308 /* ~"Also... gut. Tut mir leid, daß ich dich gestört habe."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.6 4.1 7.1 9.1 10.2 11.1 12.1 13.2 14.1 16.1
  SAY #7309 /* ~Er nickt und öffnet dann seine kleine Hand, die er die ganze Zeit seitlich angewinkelt hatte. Sie sieht verkümmert aus und hat die Größe einer Kinderhand. "Kostet Klimper, einen Namen zu begraben. Drei Kupfermünzen, drei."~ */
  IF ~  PartyGoldGT(2)
GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7310 /* ~"Xachariah."~ */ GOTO 12
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7311 /* ~"Deionarra."~ */ GOTO 12
  IF ~  PartyGoldGT(2)
GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",0)
~ THEN REPLY #7312 /* ~"Dhall."~ */ DO ~TakePartyGold(3)
SetGlobal("Death_of_Names_Dhall","GLOBAL",1)
~ GOTO 6
  IF ~  PartyGoldGT(2)
GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7313 /* ~"Dhall."~ */ GOTO 4
  IF ~  PartyGoldGT(2)
GlobalGT("Quentin","GLOBAL",0)
Dead("Quentin")
Global("Death_of_Names_Quentin","GLOBAL",0)
~ THEN REPLY #7317 /* ~"Quentin."~ */ DO ~TakePartyGold(3)
SetGlobal("Death_of_Names_Quentin","GLOBAL",1)
~ GOTO 15
  IF ~  PartyGoldGT(2)
GlobalGT("Quentin","GLOBAL",0)
!Dead("Quentin")
~ THEN REPLY #9768 /* ~"Quentin."~ */ GOTO 4
  IF ~  PartyGoldGT(2)
Global("Crier_Quest","GLOBAL",1)
~ THEN REPLY #9769 /* ~"Hmmmm.... Es-Annon."~ */ DO ~TakePartyGold(3)
AddexperienceParty(500)
SetGlobal("Crier_Quest","GLOBAL",2)
~ JOURNAL #26108 /* ~Ich habe den Namen der Stadt Es-Annon in das Staubmenschen-Denkmal vor der Leichenhalle schnitzen lassen. Ich sollte zurückkehren und dem Weinenden von Es-Annon sagen, daß er von seiner Pflicht der Erinnerns befreit ist.~ */ GOTO 6
  IF ~  PartyGoldLT(3)
~ THEN REPLY #9770 /* ~"Ich hab' keinen... Klimper. Vielleicht ein andermal."~ */ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #26086 /* ~"Vergiß es vorerst. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 5.6
  SAY #7350 /* ~Die Kupfermünzen fallen in die Hand von Tod-der-Namen, dann legt er den Arm wieder an. Seine Augen sind plötzlich hellwach, rollen nach hinten und wieder nach vorn und beginnen, den Monolithen und die Mauern des Denkmalbereichs abzusuchen.~ */
  IF ~~ THEN REPLY #7351 /* ~Warte...~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #7352 /* ~Er fixiert eine Stelle auf der Mauer, eilt dorthin, hockt sich davor und beginnt, an der Mauer zu kratzen. Einige Augenblicke später hört er auf, springt auf und kehrt zu dir zurück. "Begraben." Dieses Wort strahlt eine Endgültigkeit aus, die dich beunruhigt.~ */
  IF ~~ THEN REPLY #7353 /* ~"Ich hätte gerne, daß du für mich nach einem Namen suchst..."~ */ GOTO 9
  IF ~~ THEN REPLY #7354 /* ~"Ich würde gerne noch einen Namen begraben."~ */ GOTO 5
  IF ~~ THEN REPLY #7355 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #7356 /* ~Du siehst Tod-der-Namen. Er steht vor dem Denkmal und hat das gleiche schiefe Lächeln im Gesicht, seinen Arm hat er seitlich angewinkelt.~ */
  IF ~~ THEN REPLY #7357 /* ~"Sei gegrüßt."~ */ GOTO 9
  IF ~~ THEN REPLY #7358 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 7.0 8.0 10.1 11.0 12.0 13.1 14.0 16.0
  SAY #7359 /* ~Wieder scheinen seine Blicke dich abzutasten. "Name." Aus seinem Mund klingt das Wort wie das Hallen einer Glocke.~ */
  IF ~~ THEN REPLY #7360 /* ~"Ich... Ich weiß nicht."~ */ GOTO 2
  IF ~~ THEN REPLY #7361 /* ~"Ich würde gerne einen Namen begraben."~ */ GOTO 5
  IF ~  GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7362 /* ~"Xachariah."~ */ GOTO 10
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7363 /* ~"Deionarra."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7364 /* ~"Dhall."~ */ GOTO 4
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",1)
~ THEN REPLY #7365 /* ~"Dhall."~ */ GOTO 10
  IF ~  Global("Know_Xixi","GLOBAL",1)
GlobalLT("Xixi_Back","GLOBAL",2)
~ THEN REPLY #7366 /* ~"Xixi."~ */ GOTO 4
  IF ~  Global("Know_Xixi","GLOBAL",1)
Global("Xixi_Back","GLOBAL",3)
~ THEN REPLY #7367 /* ~"Xixi."~ */ GOTO 10
  IF ~  Global("Death_of_Names_Quentin","GLOBAL",1)
~ THEN REPLY #7368 /* ~"Quentin."~ */ GOTO 13
  IF ~  Global("Crier_Quest","GLOBAL",2)
~ THEN REPLY #9771 /* ~"Es-Annon."~ */ GOTO 10
  IF ~~ THEN REPLY #9772 /* ~"Ähh... 'Adahn'?"~ */ DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1)
~ GOTO 4
  IF ~~ THEN REPLY #26109 /* ~"Entschuldige, daß ich dich gestört hab'. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.0 3.1 3.3 9.2 9.3 9.5 9.7 9.9
  SAY #7369 /* ~Seine Augen rollen in seinen Schädel zurück und schnellen dann wieder vor. Mit einem wilden Funkeln tasten seine Blicke die Mauern des Denkmals ab und überfliegen die Namen mit unglaublichem Tempo. Dann zeigt er auf eine Stelle auf der Mauer. "Begraben."~ */
  IF ~~ THEN REPLY #7370 /* ~Sieh dir den Punkt an, auf den er zeigt.~ */ GOTO 11
  IF ~~ THEN REPLY #7371 /* ~"Ich hätte da noch einen andren Namen..."~ */ GOTO 9
  IF ~~ THEN REPLY #7372 /* ~"Ich würde gerne einen Namen begraben."~ */ GOTO 5
  IF ~~ THEN REPLY #7373 /* ~"Wollte nur mal gucken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #7374 /* ~Eingemeißelt in den schwarzen Stein steht dort in kleinen, dicht gedrängten Buchstaben der Name, den du suchst. Er geht fast unter in der Masse der anderen Namen.~ */
  IF ~~ THEN REPLY #7375 /* ~"Ich hätte da noch einen andren Namen..."~ */ GOTO 9
  IF ~~ THEN REPLY #7376 /* ~"Ich würde gerne einen Namen begraben..."~ */ GOTO 5
  IF ~~ THEN REPLY #7377 /* ~"Wollte nur mal gucken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 5.1
  SAY #7378 /* ~Er schüttelt den Kopf. "Begraben."~ */
  IF ~~ THEN REPLY #7380 /* ~"Ich hätte da noch einen andren Namen..."~ */ GOTO 9
  IF ~~ THEN REPLY #7382 /* ~"Ich würde gerne einen Namen begraben..."~ */ GOTO 5
  IF ~~ THEN REPLY #7383 /* ~"Wollte nur mal gucken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.4 9.8
  SAY #7384 /* ~Seine Augen rollen in seinen Schädel zurück und schnellen dann wieder vor. Mit einem wilden Funkeln tasten seine Blicke die Mauern des Denkmals ab und überfliegen die Namen mit unglaublichem Tempo. Dann zeigt er auf den Sockel des Denkmals. "Begraben."~ */
  IF ~~ THEN REPLY #7386 /* ~Sieh dir den Punkt an, auf den er zeigt.~ */ GOTO 14
  IF ~~ THEN REPLY #7387 /* ~"Ich hätte da noch einen andren Namen..."~ */ GOTO 9
  IF ~~ THEN REPLY #7388 /* ~"Ich würde gerne einen Namen begraben."~ */ GOTO 5
  IF ~~ THEN REPLY #7390 /* ~"Wollte nur mal gucken. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #7391 /* ~Eingemeißelt in den schwarzen Stein steht dort in kleinen, dicht gedrängten Buchstaben Quentins Name. Sehr zum Unglück von Quentin sieht es nicht so aus, als hätte sein Name das Denkmal spalten können, wie er gehofft hatte.~ */
  IF ~~ THEN REPLY #7392 /* ~"Ich hätte da noch einen andren Namen..."~ */ GOTO 9
  IF ~~ THEN REPLY #7394 /* ~"Ich würde gerne einen Namen begraben..."~ */ GOTO 5
  IF ~~ THEN REPLY #7403 /* ~"Wollte nur mal gucken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.4
  SAY #7404 /* ~Die Kupfermünzen fallen in die Hand von Tod-der-Namen, dann legt er den Arm wieder an. Seine Augen sind plötzlich hellwach, rollen nach hinten und wieder nach vorn und beginnen, den Monolithen und die Mauern des Denkmalbereichs abzusuchen.~ */
  IF ~~ THEN REPLY #7405 /* ~Warte...~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #7406 /* ~Er blickt zum Sockel des Monolithen, eilt dorthin, hockt sich davor und beginnt, am Denkmal zu kratzen. Zu Quentins Unglück bewegt sich das Denkmal nicht vom Fleck, als sein Name eingetragen wird. Tod-der-Namen hört nach einigen Augenblicken auf, springt auf und kehrt zu dir zurück. "Begraben." Dieses Wort strahlt eine Endgültigkeit aus, die dich beunruhigt.~ */
  IF ~~ THEN REPLY #7407 /* ~"Ich hätte gerne, daß du für mich nach einem Namen suchst..."~ */ GOTO 9
  IF ~~ THEN REPLY #7408 /* ~"Ich würde gerne noch einen Namen begraben."~ */ GOTO 5
  IF ~~ THEN REPLY #7409 /* ~"Danke. Leb wohl."~ */ EXIT
END
