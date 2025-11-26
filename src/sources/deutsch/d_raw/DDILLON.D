// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILLON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILLON~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #7095 /* ~"Heeh! Wache! Der Eindringling ist hier!"~ */
  IF ~~ THEN REPLY #7096 /* ~Erledigt.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #7097 /* ~"Mein Herr, Ihr müßt gehen. Wenn Ihr hier rausgebracht werden sollt, dann will ich Euch nicht aufhalten ."~ */
  IF ~~ THEN REPLY #7098 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Alarm2","GLOBAL",0)
Global("Alarm1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #7099 /* ~"Was kann ich für Euch tun, mein Herr?"~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7100 /* ~"Ich würde gern die Schmiede benutzen. Kannst du mir ein wenig Erz geben?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7101 /* ~"Ich würde gern die Schmiede benutzen. Kannst du mir ein wenig Erz geben?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #7102 /* ~"Erzähl mir über deinen Vorgänger."
~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #7103 /* ~"Erzähl mir über deinen Vorgänger."~ */ GOTO 6
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #7104 /* ~"Erzähl mir über deinen Vorgänger."~ */ GOTO 7
  IF ~~ THEN REPLY #7105 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0 7.0
  SAY #7106 /* ~"Es tut mit leid, mein Herr. Der Aufseher sagt mir, daß Ihr schon zuviel Zeit am Schmiedeofen verbracht habt. Wir müssen dafür sorgen, daß auch andere einmal dort ran können. Ich bitte um Verzeihung, mein Herr."~ */
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #7107 /* ~"Erzähl mir über deinen Vorgänger."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #7108 /* ~"Erzähl mir über deinen Vorgänger."~ */ GOTO 6
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #7109 /* ~"Erzähl mir über deinen Vorgänger."~ */ GOTO 7
  IF ~~ THEN REPLY #7110 /* ~"Alles klar. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1 6.1 7.1
  SAY #7111 /* ~"Ihr wollt etwas Erz? Sehr gern. Gebraucht es mit Verstand. Es möchte freundlich behandelt werden."~ */
  IF ~~ THEN REPLY #7112 /* ~"Das werde ich. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #7113 /* ~"Wie auch immer. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.0
  SAY #7114 /* ~"Das war eine höchst seltsame Angelegenheit! Als Saros eingesperrt wurde, ist Thildon einfach verschwunden. Keine Nachricht, keine Erklärung... nichts. Einfach weg. Er war ein echter Schweinehund, und deshalb war eigentlich niemand traurig, daß er weg war."~ */
  IF ~~ THEN REPLY #7115 /* ~"Ich muß mal die Schmiede nutzen. Kannst du mir ein wenig Erz geben?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7116 /* ~"Ich muß mal die Schmiede nutzen. Kannst du mir ein wenig Erz geben?"~ */ GOTO 4
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7117 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 3.1
  SAY #7118 /* ~"Also. Nachdem er verhaftet und eingesperrt worden war, haben wir alles getan, um ihn aus der Erinnerung zu löschen. Wir hatten diesen Dussel immer gehaßt, oh ja, und es war eine Erlösung, als er weg war."~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7119 /* ~"Ich würde gern die Schmiede benutzen. Kannst du mir ein wenig Erz geben?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7120 /* ~"Ich würde gern die Schmiede benutzen. Kannst du mir ein wenig Erz geben?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #7121 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 3.2
  SAY #7122 /* ~"Es war eine verdammte Schande, daß Saros abtreten mußte. Dafür sind wir wenigstens diesen Vollidioten Thildon losgeworden... trotzdem ein Scheißgeschäft, das ist sicher. Ich mag Saros, aber Thildon? Er ist weg. Das reicht."~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7123 /* ~"Ich muß mal die Schmiede nutzen. Kannst du mir ein wenig Erz geben?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7124 /* ~"Ich muß mal die Schmiede nutzen. Kannst du mir ein wenig Erz geben?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #7125 /* ~"Verstehe. Leb wohl."~ */ EXIT
END
