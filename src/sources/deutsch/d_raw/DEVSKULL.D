// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEVSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DEVSKULL~

IF ~~ THEN BEGIN 0 // from:
  SAY #31692 /* ~"Böse? Quatsch! Ich bin nur ein Pragmatiker."~ */
  IF ~~ THEN EXTERN ~DSSKULL~ 5
END

IF ~~ THEN BEGIN 1 // from:
  SAY #31693 /* ~"Ist das nicht eine schöne Lösung? Bei mir hat das immer geklappt. Gift und Magie funktionieren genauso gut, habe ich festgestellt."~ */
  IF ~~ THEN EXTERN ~DSSKULL~ 6
END

IF ~  Global("EvSkull_Talk","AR0508",0)
~ THEN BEGIN 2 // from:
  SAY #31694 /* ~Der Schädel spricht mit tiefer Stimme und einem scherzenden Tonfall. "Bist du gekommen, um die Wahrheit zu erfahren? Ich kenne die Wahrheit."~ */
  IF ~~ THEN REPLY #31695 /* ~"Erzähl mir was über dich."~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 4
  IF ~~ THEN REPLY #31696 /* ~"Wie bist du hier gelandet?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 5
  IF ~~ THEN REPLY #31697 /* ~"Was kannst du mir über Lothar erzählen?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 6
  IF ~~ THEN REPLY #31698 /* ~"Was kannst du mir über die anderen Schädel hier erzählen?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 7
  IF ~~ THEN REPLY #31699 /* ~"Vergiß es. Tut mir leid, daß ich deine Zeit verschwendet habe. Leb wohl."~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  Global("EvSkull_Talk","AR0508",1)
~ THEN BEGIN 3 // from:
  SAY #31700 /* ~"Bist gekommen, um ein bißchen mehr über die wahren Wege der Welt zu lernen, hä? Dann bist du bei mir richtig!"~ */
  IF ~~ THEN REPLY #31701 /* ~"Erzähl mir was von dir."~ */ GOTO 4
  IF ~~ THEN REPLY #31702 /* ~"Wie hat's dich hierher verschlagen?"~ */ GOTO 5
  IF ~~ THEN REPLY #31703 /* ~"Was kannst du mir über Lothar erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #31704 /* ~"Was kannst du mir über die anderen Schädel hier erzählen?"~ */ GOTO 7
  IF ~~ THEN REPLY #31705 /* ~"Vergiß es. Tut mir leid, daß ich deine Zeit verschwendet habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 5.0 6.1 7.0
  SAY #31706 /* ~"Ich? Ich bin Ernst. Ich praktiziere den persönlichen Frieden, indem ich feindliche Angriffe einfach umleite."~ */
  IF ~~ THEN EXTERN ~DANSKULL~ 0
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 6.2 7.1 8.0 8.1
  SAY #31707 /* ~"Komisch, daß du das fragst. Man hatte mir ein schwarzes Buch gegeben, damit ich seine Geheimnisse enträtseln würde. Ich offenbarte seine Macht zu einem schrecklichen Preis, den ich gern noch mal zahlen würde, und wurde sehr viel weiser. Was ich nicht wußte, war, daß das Buch mich an jemanden verraten würde, und zwar an ein wimmerndes Rattenvieh, das mich mit seinem Rattenvolk überwältigte und mir bei lebendigem Leib das Fleisch von den Knochen riß. Die Ratte ging von Schüler zu Schüler, jeder verraten von dem Buch, bis das Buch beim Rattenmann Mantuok landete. Wenn du dieses Buch findest, akzeptiere seine Macht und sieh zu, daß du es wieder los wirst, bevor dich das gleiche Schicksal trifft."~ */
  IF ~~ THEN REPLY #31708 /* ~"Ich werde mich danach umsehen. Erzähl mir was über dich."~ */ JOURNAL #31712 /* ~Streng, der Totenschädel des Meuchelmörders in Lothars Totenkopfbibliothek, hat mir von einem Buch erzählt, das Mantuok, die Werratte, bei sich trägt. Er hat mich gewarnt, daß ich mich vor der Macht in acht nehmen soll, die im Buch steckt.~ */ GOTO 4
  IF ~~ THEN REPLY #31709 /* ~"Danke. Was kannst du mir über Lothar erzählen?"~ */ JOURNAL #31712 /* ~Streng, der Totenschädel des Meuchelmörders in Lothars Totenkopfbibliothek, hat mir von einem Buch erzählt, das Mantuok, die Werratte, bei sich trägt. Er hat mich gewarnt, daß ich mich vor der Macht in acht nehmen soll, die im Buch steckt.~ */ GOTO 6
  IF ~~ THEN REPLY #31710 /* ~"Na, dann... was kannst du mir über die anderen Schädel hier erzählen?"~ */ JOURNAL #31712 /* ~Streng, der Totenschädel des Meuchelmörders in Lothars Totenkopfbibliothek, hat mir von einem Buch erzählt, das Mantuok, die Werratte, bei sich trägt. Er hat mich gewarnt, daß ich mich vor der Macht in acht nehmen soll, die im Buch steckt.~ */ GOTO 7
  IF ~~ THEN REPLY #31711 /* ~"Eine tragische Geschichte. Leb wohl."~ */ JOURNAL #31712 /* ~Streng, der Totenschädel des Meuchelmörders in Lothars Totenkopfbibliothek, hat mir von einem Buch erzählt, das Mantuok, die Werratte, bei sich trägt. Er hat mich gewarnt, daß ich mich vor der Macht in acht nehmen soll, die im Buch steckt.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.2 5.1 7.2
  SAY #31713 /* ~"Was ich dir über Lothar erzählen kann? Gar nichts werde ich dir erzählen. Selbst dieses nackte Dasein ist besser als das, was er mit mir macht, sollte ich seine Geheimnisse verraten."~ */
  IF ~~ THEN REPLY #31714 /* ~"Du kannst es mir ruhig erzählen."~ */ GOTO 9
  IF ~~ THEN REPLY #31715 /* ~"Na gut. Dann erzähl mir was über dich."~ */ GOTO 4
  IF ~~ THEN REPLY #31716 /* ~"Na gut. Wie bist du dann hier gelandet?"~ */ GOTO 5
  IF ~~ THEN REPLY #31717 /* ~"Was kannst du mir über die anderen Schädel hier erzählen?"~ */ GOTO 7
  IF ~~ THEN REPLY #31718 /* ~"Dann vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.3 5.2 6.3
  SAY #31719 /* ~"Über die Schädel, die mit dir reden werden, kann ich dir wenig Gutes erzählen. Sie haben ihre Erfahrungen nicht mit mir geteilt. Bevor du hier angekommen bist, haben wir auch kaum miteinander gesprochen. Vielleicht", sagt er mit einem süffisanten Grinsen, "liegt das an deiner Anwesenheit."~ */
  IF ~~ THEN REPLY #31720 /* ~"Das kann schon sein. Erzähl mir was über dich."~ */ GOTO 4
  IF ~~ THEN REPLY #31721 /* ~"Zweifellos. Also, wie bist du hier gelandet?"~ */ GOTO 5
  IF ~~ THEN REPLY #31722 /* ~"Da hast du recht. Und zum Dank darfst du mir jetzt was über Lothar erzählen."~ */ GOTO 6
  IF ~~ THEN REPLY #31723 /* ~"Genau. Und gleich werden sie wieder stumm sein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #31724 /* ~"Wie immer du es definieren willst, Grimmskalp." Ernst wendet sich wieder dir zu. "Ich war der beste von allen, heißt es."~ */
  IF ~~ THEN REPLY #31725 /* ~"Wie bist du denn dann hier gelandet?"~ */ GOTO 5
  IF ~~ THEN REPLY #31726 /* ~"Was ist denn passiert?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #31727 /* ~Du kannst dich des Eindrucks nicht erwehren, daß Ernsts Schädel dich höhnisch angrinst. "und dafür dein Freund werden? Quatsch. Du hast nichts für mich, weder einen Dienst noch einen Gegenstand, der mich dazu bringen würde, Lothar an dich zu verraten. Verschwinde!"~ */
  IF ~~ THEN REPLY #31728 /* ~"Dann beantworte mir nur noch ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #31729 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #31730 /* ~"Nein." Der Schädel konzentriert sich und du spürst, wie die Kraft seiner Persönlichkeit verschwindet.~ */
  IF ~~ THEN REPLY #31731 /* ~"Also gut."~ */ EXIT
END
