// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSAROSSA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSAROSSA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from: 1.1 2.0 3.0 7.0 11.0 12.0 16.0
  SAY #8415 /* ~"Glaubst du, du kannst mich bedrohen und kommst dann ungeschoren davon? Du Narr!" Sie spricht drei geheimnisvolle Silben und du hast das Gefühl, als ob ein Stück deines Herzens herausgerissen würde. Schließlich ruft sie: "Wache! WACHE!"~ */
  IF ~~ THEN REPLY #8416 /* ~Greif sie an.~ */ DO ~Enemy()
PermanentStatChange(Protagonist,STR,LOWER,1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("Alarm2","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #8417 /* ~Geh.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
Enemy()
PermanentStatChange(Protagonist,STR,LOWER,1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
PermanentStatChange(Protagonist,CON,LOWER,1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #8418 /* ~"Ich rate dir zu gehen. Es hat keinen Sinn, dich mit unseren Wachen anzulegen. Verschwinde."~ */
  IF ~~ THEN REPLY #8419 /* ~"Bitte beantworte mir doch ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #8420 /* ~"Du wirst mir meine Fragen beantworten oder die Konsequenzen spüren."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
~ GOTO 0
  IF ~~ THEN REPLY #8421 /* ~"Also schön. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #8422 /* ~"Ich werde deine Frage nicht beantworten, während die Wachen noch ein Hühnchen mit dir zu rupfen haben."~ */
  IF ~~ THEN REPLY #8423 /* ~"Du wirst mir meine Fragen beantworten oder einen hohen Preis zahlen, Mädchen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
~ GOTO 0
  IF ~~ THEN REPLY #8424 /* ~"Wie du meinst. Auf bald."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 22 even though they appear after this state */
~  GlobalGT("SarossaStatChange","GLOBAL",3)
GlobalLT("SarossaStatChange","GLOBAL",8)
~ THEN BEGIN 3 // from:
  SAY #8425 /* ~"So. Bist du zurückgekehrt, um mich um Verzeihung zu bitten, oder hast du vor, deine unglückseligen Pläne weiter zu verfolgen?"~ */
  IF ~~ THEN REPLY #8426 /* ~"Ich bin hier, um dich zu töten."
~ */ GOTO 0
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8427 /* ~"Ich bin hier, um mich bei dir zu entschuldigen, Sarossa."~ */ GOTO 10
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8428 /* ~"Ich bin hier, um mich bei dir zu entschuldigen, Sarossa."~ */ GOTO 13
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
GlobalLT("SarossaStatChange","GLOBAL",8)
~ THEN REPLY #8429 /* ~"Ich bin hier, um mich bei dir zu entschuldigen, Sarossa."~ */ GOTO 14
  IF ~~ THEN REPLY #8430 /* ~"Weder noch. Leb wohl... für diesmal."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 26 25 22 even though they appear after this state */
~  Global("Sarossa_Saros_Anger","AR0503",0)
GlobalGT("G_Test2","GLOBAL",8)
GlobalLT("G_Test2","GLOBAL",12)
!Global("G_Test2","GLOBAL",10)
~ THEN BEGIN 4 // from:
  SAY #8431 /* ~"Du wagst es, mit mir zu reden, obwohl du meinen Bruder dem Henker ausgeliefert hast? Für den Schmerz, den du über meine Familie gebracht hast, sollte ich dir den Willen aus deiner Seele rauben."~ */
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8432 /* ~"Saros war dein Bruder?"~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 5
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8433 /* ~"Es tut mir leid, Sarossa. Er war schuldig und keine noch so starken Blutsbande können daran etwas ändern."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 6
  IF ~  Global("Know_Saros","GLOBAL",1)
GlobalGT("G_Test3","GLOBAL",0)
~ THEN REPLY #8434 /* ~"Saros war dein Bruder?"~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 9
  IF ~  Global("Know_Saros","GLOBAL",2)
GlobalGT("G_Test3","GLOBAL",0)
~ THEN REPLY #8435 /* ~"Es tut mir leid, Sarossa. Er war schuldig und keine noch so starken Blutsbande können daran etwas ändern."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8437 /* ~"Sowohl er als auch Thildon waren schuldig, wenn auch für unterschiedliche Vergehen. Beide mußten sich vor dem Gesetz verantworten."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 5
  IF ~~ THEN REPLY #8438 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.4 42.0 42.4
  SAY #8436 /* ~"Er war mein Bruder. Hättest du anders gehandelt, wenn du gewußt hättest, daß er mit mir verwandt ist?"~ */
  IF ~~ THEN REPLY #8439 /* ~Wahrheit: "Ja."
~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarossa_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8440 /* ~Lüge: "Ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
~ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8440 /* ~Lüge: "Ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8440 /* ~Lüge: "Ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8440 /* ~Lüge: "Ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8441 /* ~"Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sarossa_1","GLOBALLaw",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 9.0 9.1 9.2 9.3 42.1
  SAY #8442 /* ~"Du glaubst das also wirklich, oder? Ich liebe meinen Bruder, aber du bist dir selbst treu, und das kann ich nicht verurteilen."~ */
  IF ~~ THEN REPLY #8443 /* ~"Gut. Könntest du mir dann vielleicht ein paar Fragen beantworten?"~ */ GOTO 18
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8444 /* ~"Wirst du dann den Teil von mir wiederherstellen, den du mir gestohlen hast?"~ */ GOTO 10
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8445 /* ~"Wirst du dann den Teil von mir wiederherstellen, den du mir gestohlen hast?"~ */ GOTO 13
  IF ~  Global("SarossaStatChange","GLOBAL",6)
~ THEN REPLY #8446 /* ~"Wirst du dann den Teil von mir wiederherstellen, den du mir gestohlen hast?"~ */ GOTO 14
  IF ~~ THEN REPLY #8447 /* ~Wahrheit: "Ich bitte um Vergebung für das Leid, daß ich dir und den Deinen zugefügt habe, meine Dame."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sarossa_2","GLOBALGood",1)
~ GOTO 8
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8448 /* ~Lüge: "Ich bitte um Vergebung für das Leid, daß ich dir und den Deinen zugefügt habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
~ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8448 /* ~Lüge: "Ich bitte um Vergebung für das Leid, daß ich dir und den Deinen zugefügt habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8448 /* ~Lüge: "Ich bitte um Vergebung für das Leid, daß ich dir und den Deinen zugefügt habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8448 /* ~Lüge: "Ich bitte um Vergebung für das Leid, daß ich dir und den Deinen zugefügt habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8449 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.5 30.1
  SAY #8450 /* ~"Glaubt du wirklich, du kannst jemanden betrügen, der in den Herzen der Menschen zu lesen vermag? Du Narr." Sie spricht eine einzelne Silbe aus, die die Luft um dich herum verzerrt, ein Stück aus dir herausreißt und es in den Äther schleudert. "Verschwinde, Narbengesicht, und rede nie wieder mit mir."~ */
  IF ~~ THEN REPLY #8451 /* ~"Ich werde wiederkommen. Und dann wirst du dafür zahlen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
PermanentStatChange(Protagonist,STR,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",4)
~ GOTO 0
  IF ~~ THEN REPLY #8452 /* ~"Leb wohl, Sarossa. Ich werde das nicht vergessen."~ */ DO ~PermanentStatChange(Protagonist,STR,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.5 6.4
  SAY #8453 /* ~Ihre Augen starren ins Leere, als ob sie etwas erkennen kann, was deine fünf Sinne nicht wahrzunehmen vermögen. "Es sei dir verziehen, solange du daran denkst, daß all deine Handlungen Konsequenzen haben, ob du sie siehst oder nicht, und daß du durch deine Ignoranz Schmerz bereiten kannst. Denke immer an diese Worte."~ */
  IF ~~ THEN REPLY #8454 /* ~"Vielen Dank. Könntest du mir dann vielleicht ein paar Fragen beantworten?"~ */ GOTO 18
  IF ~~ THEN REPLY #8455 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 4.3 42.2 42.3
  SAY #8456 /* ~"Er war mein Bruder, und nun ist auch mein Vater an der Reihe zu sterben. Ich hoffe, dein Herz kann den Gedanken ertragen, daß so viel Schmerz in die Welt gebracht wird."~ */
  IF ~~ THEN REPLY #8457 /* ~"Ich kann meinen Glauben an das Gesetz nicht zum Wohle eines Einzelnen vernachlässigen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sarossa_2","GLOBALLaw",1)
~ GOTO 6
  IF ~~ THEN REPLY #8458 /* ~"Sicher kann es das. Ich habe das früher schon getan, und die Chancen stehen gut, daß ich's nochmal tun werde."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_4","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #8459 /* ~"Hätte ich gewußt, daß er dein Bruder ist, dann hätte ich ihn nicht darein verwickelt."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarossa_2","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #8460 /* ~"Mein Herz erwärmt sich nicht bei solchem Gedanken - aber ich denke, daß diese Art Leid oft der Weg zu Besserem ist. Auch wenn wir den Vorteil nicht sofort sehen können, lernen wir doch, das Gute zu sehen, wenn der Schmerz vorüber ist."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sarossa_2","GLOBALGood",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 3.1 6.1
  SAY #8461 /* ~"Dann entschuldige dich."~ */
  IF ~~ THEN REPLY #8462 /* ~Wahrheit: "Ich hatte nicht das Recht, so mit dir zu reden. Meine Worte und Taten waren voreilig und unbedacht. Ich werde mich bemühen, in Zukunft vorsichtiger zu sein und mich zurückzuhalten."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8463 /* ~Lüge: "Ich hatte nicht das Recht, so mit dir zu reden. Meine Worte und Taten waren voreilig und unbedacht. Ich werde mich bemühen, in Zukunft vorsichtiger zu sein und mich zurückzuhalten."~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #8464 /* ~"Nein."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.2 5.3 6.6 6.7 10.1 13.1 30.2 30.3
  SAY #8465 /* ~"Lüge mich nicht an, Halbmensch, oder ich werde dir das Leben aus dem Leib reißen." Sie stößt eine weitere, unverständliche Silbe aus und du windest dich in Krämpfen, während ein weiteres Stück aus deiner Seele gerissen wird. "Geh jetzt. Ich wünsche nicht länger mit dir zu reden."
~ */
  IF ~~ THEN REPLY #8466 /* ~Greif sie an.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8467 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 13.2 14.2
  SAY #8468 /* ~"Wenn du keinen Kummer in dir trägst, dann trage ich keinen Kummer in mir. Geh jetzt."~ */
  IF ~~ THEN REPLY #8469 /* ~Greif sie an.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8470 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2 6.2
  SAY #8471 /* ~"Dann entschuldige dich."~ */
  IF ~~ THEN REPLY #8472 /* ~Wahrheit: "Ich hatte nicht das Recht, so mit dir zu reden. Meine Worte und Taten waren voreilig und unbedacht. Ich werde mich bemühen, in Zukunft vorsichtiger zu sein und mich zurückzuhalten."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DEX,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8473 /* ~Lüge: "Ich hatte nicht das Recht, so mit dir zu reden. Meine Worte und Taten waren voreilig und unbedacht. Ich werde mich bemühen, in Zukunft vorsichtiger zu sein und mich zurückzuhalten."~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #8474 /* ~"Nein."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 3.3 6.3
  SAY #8475 /* ~"Dann entschuldige dich."~ */
  IF ~~ THEN REPLY #8476 /* ~Wahrheit: "Ich hatte nicht das Recht, so mit dir zu reden. Meine Worte und Taten waren voreilig und unbedacht. Ich werde mich bemühen, in Zukunft vorsichtiger zu sein und mich zurückzuhalten."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DEX,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8477 /* ~Lüge: "Ich hatte nicht das Recht, so mit dir zu reden. Meine Worte und Taten waren voreilig und unbedacht. Ich werde mich bemühen, in Zukunft vorsichtiger zu sein und mich zurückzuhalten."~ */ DO ~SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8478 /* ~"Nein."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 10.0 13.0 14.0
  SAY #8479 /* ~Ihr Mund formt erneut diese Silben und du fühlst, wie du wieder ganz du selbst bist - so als ob jemand dein innerstes Ich vervollständigt hätte. "Du bist frei, Halbmensch, was willst du?"~ */
  IF ~~ THEN REPLY #8480 /* ~"Warum nennst du mich die ganze Zeit 'Halbmensch'?"~ */ JOURNAL #67281 /* ~Sarossa, die Hexe in der Großen Gießerei, hat mir gesagt, daß sie mich deswegen Halbmensch nennt, weil sie meinen Geist nicht sehen kann. Sie weiß nicht, ob das bedeutet, daß ich keine Seele habe, oder daß ich vielleicht transzendiert bin, aber sie nennt mich trotzdem Halbmensch.~ */ GOTO 17
  IF ~~ THEN REPLY #8481 /* ~"Ich möchte nur die Antworten auf ein paar Fragen."~ */ GOTO 18
  IF ~  GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #8482 /* ~"Erzähl mir was über deine Familie."~ */ GOTO 19
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #8483 /* ~"Erzähl mir was über deine Familie."~ */ GOTO 20
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #8484 /* ~"Erzähl mir was über deine Familie."~ */ GOTO 21
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8485 /* ~"Erzähl mir was über deine Familie."~ */ GOTO 20
  IF ~  Global("Know_Saros","GLOBAL",2)
~ THEN REPLY #8487 /* ~"Jeder scheint ja ein besonderes Talent zu haben. Erzähl mir von deinem."~ */ GOTO 22
  IF ~~ THEN REPLY #8488 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.4 6.8 14.1 30.4
  SAY #8486 /* ~"Du respektierst niemanden außer dir selbst, oder? Das kann ich bei keinem Menschen dulden, egal, wie begnadet er auch sein mag. Leb wohl, Halbmensch. WACHE!"~ */
  IF ~~ THEN REPLY #8489 /* ~Greif sie an.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8490 /* ~Verschwinde.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 18.0
  SAY #8491 /* ~"Ich nenne dich Halbmensch, weil ich deinen Geist nicht sehen kann. Alle anderen Sterblichen, denen ich begegne, zeigen mir ihren Geist als leuchtenden Funken oder als glimmende Glut. Du zeigst mir gar nichts. Ich nenne dich Halbmensch, weil du mir nicht wie die anderen deinen Geist zeigst. Ob es daran liegt, daß du keine Seele hast, oder weil du transzendiert bist, kann ich nicht sagen. So oder so - du bist nur ein halber Mensch. Was die andere Hälfte ist, weiß ich nicht."~ */
  IF ~~ THEN REPLY #8492 /* ~"Ich verstehe. Dann beantworte mir doch ein paar  Fragen."~ */ GOTO 18
  IF ~~ THEN REPLY #8493 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.0 8.0 15.1 17.0 19.4 20.4 21.4 22.2 23.4 24.0 24.1 25.0 26.0 28.2 29.0 31.0 32.1 35.0 36.0 37.0 38.0 41.0 43.0
  SAY #8494 /* ~"Welche Antworten suchst du, Halbmensch?"~ */
  IF ~~ THEN REPLY #8495 /* ~"Warum nennst du mich 'Halbmensch'?"~ */ JOURNAL #67281 /* ~Sarossa, die Hexe in der Großen Gießerei, hat mir gesagt, daß sie mich deswegen Halbmensch nennt, weil sie meinen Geist nicht sehen kann. Sie weiß nicht, ob das bedeutet, daß ich keine Seele habe, oder daß ich vielleicht transzendiert bin, aber sie nennt mich trotzdem Halbmensch.~ */ GOTO 17
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8496 /* ~"Ich muß mit dir über deinen Vater reden."~ */ GOTO 39
  IF ~~ THEN REPLY #8497 /* ~"Wer bist du?"~ */ GOTO 38
  IF ~  GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #8498 /* ~"Erzähl mir was über deine Familie."~ */ GOTO 19
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #8499 /* ~"Erzähl mir was über deine Familie."~ */ GOTO 20
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #8500 /* ~"Erzähl mir was über deine Familie."~ */ GOTO 21
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8501 /* ~"Erzähl mir was über deine Familie."~ */ GOTO 20
  IF ~  Global("Know_Saros","GLOBAL",2)
~ THEN REPLY #8502 /* ~"Jeder scheint ja ein besonderes Talent zu haben. Erzähl mir von deinem."~ */ GOTO 22
  IF ~~ THEN REPLY #8503 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.2 18.3
  SAY #8504 /* ~"Mein Bruder Saros ist ein Sohn der Gießerei, trotzdem fürchte ich, daß er nie die Philosophie der Gläubigen der Quelle angenommen hat. Mein Vater hat hier die Stellung eines Adlaten - seine Reisen haben ihn weit weg von der Gießerei in Reiche geführt, von denen die meisten Sterblichen noch nicht einmal zu träumen wagen."~ */
  IF ~~ THEN REPLY #8505 /* ~"Erzähl mir mehr über deinen Bruder."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8506 /* ~"Erzähl mir mehr über deinen Vater."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8507 /* ~"Erzähl mir mehr über deinen Vater."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8508 /* ~"Erzähl mir mehr über deinen Vater."~ */ GOTO 26
  IF ~~ THEN REPLY #8509 /* ~"Ich verstehe. Kannst du mir noch mehr Fragen beantworten?"~ */ GOTO 18
  IF ~~ THEN REPLY #8510 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3 15.5 18.4 18.6
  SAY #8511 /* ~In ihrer Stimme schwingt ein bitterer Unterton. "Wie du weißt, wartet auf meinen Bruder der Henker. Wie du vielleicht nicht weißt, reist mein Vater durch das gesamte Multiversum auf der Suche nach Erkenntnissen, die die meisten Sterblichen erst noch begreifen müssen."~ */
  IF ~~ THEN REPLY #8512 /* ~"Erzähl mir mehr über deinen Bruder."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8513 /* ~"Erzähl mir mehr über deinen Vater."
~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8514 /* ~"Erzähl mir mehr über deinen Vater."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8515 /* ~"Erzähl mir mehr über deinen Vater."~ */ GOTO 26
  IF ~~ THEN REPLY #8516 /* ~"Ich verstehe. Kannst du mir noch mehr Fragen beantworten?"
~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 15.4 18.5
  SAY #8517 /* ~"Mein Bruder Saros ist hoffentlich aufgrund seiner Erfahrungen ein weiserer Mensch geworden, während mein Vater hier den Posten eines Adlaten bekleidet, ein Mann, dessen Reisen ihn weit weg von der Gießerei in Reiche geführt haben, von denen die meisten Sterblichen noch nicht einmal zu träumen wagen."
~ */
  IF ~~ THEN REPLY #8518 /* ~"Erzähl mir mehr über deinen Bruder."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8519 /* ~"Erzähl mir mehr über deinen Vater."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8520 /* ~"Erzähl mir mehr über deinen Vater."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8521 /* ~"Erzähl mir mehr über deinen Vater."~ */ GOTO 26
  IF ~~ THEN REPLY #8522 /* ~"Ich verstehe. Kannst du mir noch mehr Fragen beantworten?"~ */ GOTO 18
  IF ~~ THEN REPLY #8523 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 22 // from: 15.6 18.7 32.0
  SAY #8524 /* ~"Ich weiß nicht, wie ich dazu gekommen bin. Es scheint etwas zu sein, das schon immer ein Teil von mir war. Ich kann nur vermuten, daß meine früheren Leben und mein Glaube an dieses Leben mir eine besondere Einsicht in die Natur der Sterblichen gewährt haben. Ich habe die Begabung, einen Teil der Fähigkeiten zu sehen, die in jedem Lebewesen stecken. Indem ich den wahren Namen lese, den jeder Sterbliche in seinem Innersten trägt, und dadurch, daß ich diesen Namen falsch betone, kann ich die Art seiner Fähigkeiten und damit seinen Charakter verändern."~ */
  IF ~~ THEN REPLY #8525 /* ~"Kannst du mir diese Fähigkeit beibringen?"~ */ GOTO 28
  IF ~~ THEN REPLY #8526 /* ~"Kannst du mich ändern?"~ */ GOTO 28
  IF ~~ THEN REPLY #8527 /* ~"Interessant. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 18
  IF ~~ THEN REPLY #8528 /* ~"Der Kosmos funktioniert nach merkwürdigen Regeln. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0 21.0
  SAY #8529 /* ~"Saros ist ein schroffer, impulsiver Kerl, der leicht von seinen männlichen Instinkten beherrscht wird. Er will allen beweisen, daß er es mit jedem auf den Ebenen aufnehmen kann und ist voll jugendlichen Ungestüms. Ich glaube, er sieht sich selbst mehr als Sinnsat denn als Göttermensch, was mich in meiner Überzeugung bestärkt, daß die Sinnsaten die unreifsten aller Bünde von Sigil sind."~ */
  IF ~~ THEN REPLY #8530 /* ~"Warum sind sie die unreifsten?"~ */ GOTO 29
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8531 /* ~"Erzähl mir was über deinen Vater."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8532 /* ~"Erzähl mir was über deinen Vater."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8533 /* ~"Erzähl mir was über deinen Vater."~ */ GOTO 26
  IF ~~ THEN REPLY #8534 /* ~"Beantworte mir doch noch ein paar andere Fragen, ja?"~ */ GOTO 18
  IF ~~ THEN REPLY #8535 /* ~"Vielen Dank... und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1 20.1 21.1 23.1
  SAY #8536 /* ~"Mein Vater ist ein Adlat der Gläubigen der Quelle und er war schon immer der Überzeugung, daß unser Dasein hier einen Grund hat. Ich kann nur hoffen, daß er noch immer fest davon überzeugt ist, wie auch von der Tatsache, daß seine Kinder ihn lieben."~ */
  IF ~  GlobalGT("G_Test3","GLOBAL",1)
GlobalLT("G_Test3","GLOBAL",5)
~ THEN REPLY #8537 /* ~"Dann werde ich ihm von deinen Hoffnungen berichten. Kannst du mir vielleicht noch ein paar andere Fragen beantworten?"~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ GOTO 18
  IF ~  GlobalLT("G_Test3","GLOBAL",2)
~ THEN REPLY #8538 /* ~"Hört sich nach einem guten Mann an. Beantworte mir doch noch ein paar andere Fragen, ja?"~ */ GOTO 18
  IF ~  GlobalLT("G_Test3","GLOBAL",1)
~ THEN REPLY #8539 /* ~"Hört sich nach einem guten Mann an. Leb wohl."~ */ EXIT
  IF ~  GlobalGT("G_Test3","GLOBAL",1)
GlobalLT("G_Test3","GLOBAL",5)
~ THEN REPLY #8540 /* ~"Dann werde ich ihm von deinen Hoffnungen berichten. Leb wohl."~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
!Dead("Sandoz")
~ THEN BEGIN 25 // from: 19.2 20.2 21.2 23.2
  SAY #8541 /* ~"Dank deiner Worte ist mein Vater Sandoz am Leben und wohlauf. Ich kann nur hoffen, daß derjenige, der ihm das angetan hat, dafür büßen wird - ich kann nicht glauben, daß er selbst dafür verantwortlich ist. Was kann ich noch für dich tun?"~ */
  IF ~~ THEN REPLY #8542 /* ~"Du kannst mir ein paar Fragen beantworten."~ */ GOTO 18
  IF ~~ THEN REPLY #8543 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
Dead("Sandoz")
~ THEN BEGIN 26 // from: 19.3 20.3 21.3 23.3
  SAY #8544 /* ~"Er hat sich das Leben genommen, wie du weißt. Ich empfinde nur Verachtung für einen Mann, der so etwas tut - wenn das Leben eine Prüfung ist, dann bekommt man keine wirklichen Antworten, wenn man sich so zum Ende durchmogelt. Ich kenne meinen Vater nicht mehr, pah!"~ */
  IF ~~ THEN REPLY #8545 /* ~"Richtig. Beantworte mir nun ein paar Fragen."~ */ GOTO 18
  IF ~~ THEN REPLY #8546 /* ~"Äh... gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.0
  SAY #8547 /* ~"Das werde ich nicht. Er war immer impulsiv und brannte stets darauf, seine Tapferkeit gegen diesen grausamen Kosmos unter Beweis zu stellen - und nun kann er es nicht. Ich werde weder jemanden beschuldigen noch davon erzählen. Wenn du mehr wissen willst, dann sprich später mit mir. Leb wohl ."~ */
  IF ~~ THEN REPLY #8548 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.0 22.1
  SAY #8549 /* ~"Ich kann dich verändern, aber ich kann dir die Fertigkeit nicht beibringen - es ist so, als ob man einem Blinden die Farben oder einem Tauben die Töne erklären sollte. Und ich *werde* dich verändern, wenn der Preis stimmt."~ */
  IF ~  Global("Sarossa_ChangeUp","GLOBAL",0)
~ THEN REPLY #8550 /* ~"Was ist der Preis?"~ */ GOTO 30
  IF ~~ THEN REPLY #8551 /* ~"Ich glaube nicht, daß das fair ist."~ */ GOTO 31
  IF ~~ THEN REPLY #8552 /* ~"Vergiß es. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 18
  IF ~  Global("Sarossa_ChangeUp","GLOBAL",1)
~ THEN REPLY #8553 /* ~"Was ist der Preis?"~ */ GOTO 43
  IF ~~ THEN REPLY #61301 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0
  SAY #8554 /* ~"Warum sie die unreifsten sind? Weil sie, genau wie die Kinder, nicht verstehen, daß jenseits der Welt der Empfindungen noch mehr ist, jenseits dessen, was man sehen, hören, schmecken, berühren und riechen kann. Schau dich um. Du bist in den äußeren Ebenen. Das ist eine Überzeugung, die sich materialisiert hat - aber das heißt nicht, daß diese anscheinend feste Materie von den Sinnen erfaßt werden kann. Das ist Glaube - er ist stärker als physikalische Gesetzmäßigkeiten."~ */
  IF ~~ THEN REPLY #8555 /* ~"Ich verstehe. Dann erzähl mir noch was anderes."~ */ GOTO 18
  IF ~~ THEN REPLY #8556 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #8557 /* ~"Sag - teilst du die Philosophie der Göttermenschen?"~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #8558 /* ~Wahrheit: "Ja."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
SetGlobal("Sarossa_ChangeUp","GLOBAL",1)
~ JOURNAL #67283 /* ~Ich habe der Hexe Sarossa gesagt, daß ich zu den Göttermenschen gehöre, und sie hat mir diverse Sachen erzählt. Und aus irgendeinem Grunde fühle ich mich jetzt... weiser.~ */ GOTO 32
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8559 /* ~Lüge: "Ja."~ */ JOURNAL #67282 /* ~Ich hab' die Hexe Sarossa über meine Zugehörigkeit zu den Göttermenschen angelogen, und das Miststück hat mir mit einem einzigen Wort einen Teil meiner Stärke ausgesogen.~ */ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8559 /* ~Lüge: "Ja."~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8559 /* ~Lüge: "Ja."~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8559 /* ~Lüge: "Ja."~ */ DO ~SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8560 /* ~"Nein."~ */ GOTO 33
  IF ~~ THEN REPLY #8561 /* ~"Ich weiß nicht genug, um dir davon zu erzählen."~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 28.1
  SAY #8562 /* ~"Nein, es ist nicht fair. Aber das ist meine Begabung und dies sind meine Prüfungen und ich kann mit meiner Begabung anfangen, was ich will. Also, was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #8563 /* ~"Beantworte mir ein paar Fragen."~ */ GOTO 18
  IF ~~ THEN REPLY #8564 /* ~"Kannst du nicht, zumindest nicht im Augenblick. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #8565 /* ~"Dann habe ich keine Bedenken, meine Begabung dir zuteil werden zu lassen." Sie spricht eine geheimnisvolle Silbe aus, und du spürst, wie deren Wirkung dich bis ins Mark erschüttert. Du fühlst, wie dein Körper erstarkt.~ */
  IF ~~ THEN REPLY #8566 /* ~"Wie hast du das gemacht?"~ */ GOTO 22
  IF ~~ THEN REPLY #8567 /* ~"Meinen Dank! Beantworte mir doch noch ein paar Fragen, ja?"~ */ GOTO 18
  IF ~~ THEN REPLY #8568 /* ~"Meinen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.5
  SAY #8569 /* ~"Du magst die Philosophie nicht? Warum nicht?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #8570 /* ~"Weil ich mich bereits den Staubmenschen angeschlossen habe."~ */ GOTO 35
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #8571 /* ~"Weil ich mich bereits den Sinnsaten angeschlossen habe."~ */ GOTO 35
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #8572 /* ~"Weil ich mich bereits den Anarchisten angeschlossen habe."~ */ GOTO 35
  IF ~~ THEN REPLY #8573 /* ~"Ich finde, sie ist schlimmer als die der Staubmenschen. Die predigen wenigsten nicht - sie akzeptieren und leben weiter."~ */ GOTO 35
  IF ~~ THEN REPLY #8574 /* ~"Ich denke noch darüber nach. Überzeug mich."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 30.6 33.4
  SAY #8575 /* ~"Geh und sprich mit Keldor von Durian. Er ist Adlat und für die Rekrutierung verantwortlich. Du findest ihn in der Rednerhalle der Gießerei. Leb wohl."~ */
  IF ~~ THEN REPLY #8576 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.0 33.1 33.2 33.3
  SAY #8577 /* ~"Dann werde ich dich nicht von deiner Überzeugung abbringen. Was kann ich noch für dich tun?"~ */
  IF ~~ THEN REPLY #8578 /* ~"Du kannst mir ein paar Fragen beantworten."~ */ GOTO 18
  IF ~~ THEN REPLY #8579 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 42 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 36 // from:
  SAY #8580 /* ~Du siehst eine junge Frau. Als du dich ihr näherst, blicken ihre Augen direkt in deine. Du hast das unangenehme Gefühl, daß sie nicht nur deine Augenfarbe herausfinden will - ihre Blicke scheinen viel tiefer zu gehen. "Sei gegrüßt, Fremder. Wie ist das Befinden?"~ */
  IF ~~ THEN REPLY #8581 /* ~"Also gut. Ich hätte gern, daß du mir ein paar Fragen beantwortest."~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8582 /* ~"Bist du Sarossa? Ich muß mit dir über deinen Vater reden."~ */ GOTO 39
  IF ~~ THEN REPLY #8583 /* ~"Also gut. Leb wohl."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 42 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 37 // from:
  SAY #8584 /* ~"Sei gegrüßt, verwundeter Mann. Was willst du von mir?"~ */
  IF ~~ THEN REPLY #8585 /* ~"Antworten."~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8586 /* ~"Ich muß mit dir über deinen Vater reden."~ */ GOTO 39
  IF ~~ THEN REPLY #8587 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 18.2
  SAY #8588 /* ~"Ich bin Sarossa, Tochter von Sandoz, einem der Adlaten der Göttermenschen."~ */
  IF ~~ THEN REPLY #8589 /* ~Kannst du mir vielleicht ein paar Fragen beantworten?"~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8590 /* ~"Ich muß mit dir über deinen Vater reden."~ */ GOTO 39
  IF ~~ THEN REPLY #8591 /* ~"Ich verstehe. Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 18.1 36.1 37.1 38.1
  SAY #8592 /* ~"Was ist mit ihm?"~ */
  IF ~~ THEN REPLY #8593 /* ~"Er hat sich in seinen Turm eingesperrt und droht, sich umzubringen. Was kannst du mir über ihn erzählen, damit ich ihn von einer solchen Tat abhalten kann?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #8594 /* ~"Du lügst! Mein Vater ist auf Reisen! Er wird noch tagelang fort sein!"~ */
  IF ~~ THEN REPLY #8595 /* ~"Das denkst du. Sprich mit Keldor,wenn du mir nicht glaubst. Ich brauche deine Hilfe, wenn dein Vater am Leben bleiben soll."~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ GOTO 41
  IF ~~ THEN REPLY #8596 /* ~"Du glaubst mir nicht? Nun gut. Du wirst schon sehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #8597 /* ~"Das werde ich, da kannst du sicher sein." Sie hält inne und starrt dich an - mit eisernem Blick. "Du sprichst die Wahrheit, oder? In dieser Sache sehe ich keine Falschheit in deinem Herzen. Also gut. Dies sollst du meinem Vater sagen: Das ganze Leben ist eine Prüfung. Man kann keine Abkürzung nehmen. Das ist nicht die Antwort. Nur die Schicksalsgarde und die Staubmenschen glauben an den endgültigen Niedergang - und du hast sie stets verachtet. Vergiß das nicht."~ */
  IF ~~ THEN REPLY #8598 /* ~"Ich werde die Nachricht überbringen. Aber erst möchte ich dir ein paar Fragen stellen."~ */ GOTO 18
  IF ~~ THEN REPLY #8599 /* ~"Ich werde die Nachricht überbringen. Leb wohl."~ */ EXIT
END

IF WEIGHT #7 ~  False()
Global("G_Test2","GLOBAL",11)
~ THEN BEGIN 42 // from:
  SAY #8600 /* ~"Du wagst es, mit mir zu reden, obwohl du meinen Bruder dem Henker ausgeliefert hast? Für den Schmerz, den du über meine Familie gebracht hast, sollte ich dir den Willen aus deiner Seele rauben."~ */
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8601 /* ~"Saros war dein Bruder?"~ */ GOTO 5
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8602 /* ~"Es tut mir leid, Sarossa. Er war schuldig und keine noch so starken Blutsbande können daran etwas ändern."~ */ GOTO 6
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8603 /* ~"Saros war dein Bruder?"~ */ GOTO 9
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8604 /* ~"Es tut mir leid, Sarossa. Er war schuldig und keine noch so starken Blutsbande können daran etwas ändern."~ */ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8605 /* ~"Sowohl er als auch Thildon waren schuldig, wenn auch für unterschiedliche Vergehen. Beide mußten sich vor dem Gesetz verantworten."~ */ GOTO 5
  IF ~~ THEN REPLY #8606 /* ~"Ich kann nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 28.3
  SAY #61302 /* ~"Ich habe bereits die Worte gesprochen, die dein Herz verändern werden. Der Rest von dir muß lernen zu folgen."~ */
  IF ~~ THEN REPLY #61303 /* ~"In Ordnung. Dann beantworte mir noch ein paar Fragen."~ */ GOTO 18
  IF ~~ THEN REPLY #61304 /* ~"Leb wohl."~ */ EXIT
END
