// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPUZSKEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPUZSKEL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 14 even though they appear after this state */
~  Global("DN_Riddle","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #20282 /* ~Dieses Skelett murmelt vor sich hin und unterbricht sich dabei gelegentlich, um sich am Schädel zu kratzen. Es ist so alt, daß kein Fleisch mehr an seinen Knochen hängt... nur noch ein paar bunte Lumpen.~ */
  IF ~~ THEN REPLY #20296 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #20297 /* ~Laß das Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20283 /* ~Es erwidert den Gruß mit einem Nicken, antwortet dir aber nicht.~ */
  IF ~~ THEN REPLY #20298 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #20299 /* ~"Ich werd dann mal gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20284 /* ~Das Skelett sieht zu dir hoch und gibt ein frustriertes Grunzen von sich. "Nicht jetzt! Verzeih mir, aber ich denke über ein *schrecklich* schwieriges Rätsel nach und kann es nicht lösen!"~ */
  IF ~~ THEN REPLY #20300 /* ~"Wie lautet das Rätsel?"~ */ GOTO 3
  IF ~~ THEN REPLY #20301 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #20285 /* ~Es scheint überrascht. "Oh? Du willst es auch mal versuchen, was?"~ */
  IF ~~ THEN REPLY #20302 /* ~"Ja, schieß los."~ */ DO ~SetGlobal("DN_Riddle","AR1500",1)
~ GOTO 4
  IF ~~ THEN REPLY #20303 /* ~"Nein, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 10.3
  SAY #20286 /* ~"Nun gut. Es stammt von dem glucksenden Hanswurst von einem Knochengerüst, der dir vielleicht in der Nähe begegnet. Es will mir einfach nicht die Antwort geben, und das *bringt mich einfach um*!"~ */
  IF ~~ THEN REPLY #20304 /* ~"Schieß los..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #20287 /* ~Es nickt. "Ein Teil eines Vogels, aber nur auf Erden. Kann schwimmen im Wasser, ohne naß zu werden. Was ist es?"~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #20305 /* ~"Das ist einfach. Es ist der Schatten."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
AddexperienceParty(6250)
~ GOTO 6
  IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #20306 /* ~"Das ist... äh... hmm."~ */ GOTO 9
  IF ~~ THEN REPLY #20307 /* ~"Ich denk drüber nach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 10.0 12.0 12.1 13.0
  SAY #20288 /* ~Es blickt ungläubig drein. "Es ist *was?* Aber..."~ */
  IF ~~ THEN REPLY #20308 /* ~"Der Schatten begleitet den Vogel als ein Teil von ihm und man sieht ihn auf der Erdoberfläche. Auf dem Wasser sieht's so aus als ob er schwämme und naß werden kann er ja nicht, weil er kein Gegenstand ist."~ */ GOTO 8
  IF ~~ THEN REPLY #20309 /* ~Lach kurz und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #20289 /* ~[kein Text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #20290 /* ~"Das ist... das ist... ooh! Ein hinterhältiger Trick!" Es unterbricht sich und lacht, wobei Staubwolken aus seinen knarzenden Kiefer hervorquellen. "Das ist gut, wirklich. Ich danke dir!"~ */
  IF ~~ THEN REPLY #20310 /* ~"Nichts zu danken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #20291 /* ~"Auch keine Ahnung, was? Laß es mich wissen, wenn du die Antwort rausbekommen hast... und viel Glück, falls du versuchen willst, es aus dem Laberkopf rauszukriegen, der mir das Rätsel aufgegeben hat!"~ */
  IF ~~ THEN REPLY #20311 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 14 even though they appear after this state */
~  GlobalGT("DN_Riddle","AR1500",0)
GlobalLT("DN_Riddle","AR1500",3)
~ THEN BEGIN 10 // from:
  SAY #20292 /* ~Das Skelett schaut auf. "Dieses gemeine Rätsel schon gelöst?"~ */
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20312 /* ~"Ja. Es ist der Schatten."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
~ GOTO 6
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20313 /* ~"Ja, aber ich werd dir die Antwort nicht sagen."~ */ GOTO 12
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20314 /* ~Lüge: "Äh... nein. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_1","GLOBALLaw",-1)
~ EXIT
  IF ~  !Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20315 /* ~"Nein. Sag mir das Rätsel noch mal."~ */ GOTO 4
  IF ~  !Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20316 /* ~"Nein, noch nicht. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 even though they appear after this state */
~  Global("DN_Riddle","AR1500",3)
~ THEN BEGIN 11 // from:
  SAY #20293 /* ~"Ich danke dir nochmals, daß du dieses Rätsel gelöst hast! Ich kann mir vorstellen, daß mein 'Freund' sich darüber ziemlich aufregen würde!" Es gluckst vor Freude.~ */
  IF ~~ THEN REPLY #20317 /* ~"Nichts zu danken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #20294 /* ~"Aber... aber wieso? Komm schon! Du *mußt* es mir sagen!"~ */
  IF ~  !Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20318 /* ~"Also schön. Es ist der Schatten."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
~ GOTO 6
  IF ~  Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20319 /* ~"Also schön. Es ist 'Schatten'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_2","GLOBALLaw",-3)
~ GOTO 6
  IF ~  Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20320 /* ~"Ich hab' versprochen, daß ich's nicht verraten würde."~ */ GOTO 13
  IF ~~ THEN REPLY #20321 /* ~"Muß ich? Leb wohl."~ */ DO ~SetGlobal("Evil_PuzSkel","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY #20295 /* ~Er knirscht frustriert mit den Zähnen. "Bah! Genau wie dieser... dieser... ständig klappernde Narr mit seinem Gehirn aus Staub! Und was *dich* betrifft! Ich danke dir für *nichts*!"~ */
  IF ~~ THEN REPLY #20322 /* ~"Jaja, schon gut: Die Lösung ist 'Schatten'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_2","GLOBALLaw",-3)
~ GOTO 6
  IF ~~ THEN REPLY #20323 /* ~"Es tut mir leid. Leb wohl."~ */ DO ~SetGlobal("Evil_PuzSkel","AR1500",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Evil_PuzSkel","AR1500",1)
~ THEN BEGIN 14 // from:
  SAY #68086 /* ~Das Skelett verschränkt die Arme und weigert sich, auch nur ein einziges Wort zu sagen.~ */
  IF ~~ THEN REPLY #68087 /* ~Geh weg.~ */ EXIT
END
