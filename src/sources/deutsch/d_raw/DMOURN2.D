// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7080 /* ~Diese Staubmenschenfrau trägt eine lange schwarze Robe, und ihre Hände stecken in den Ärmelaufschlägen. Ihr Kopf ist gesenkt, und sie ist mit den anderen Staubmenschen, die sie umgeben, in einen langsamen Sprechgesang vertieft.~ */
  IF ~~ THEN REPLY #7081 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #8241 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 4.0
  SAY #8201 /* ~Die Staubmenschenfrau scheint dich gehört zu haben, aber sie blickt nicht auf.~ */
  IF ~~ THEN REPLY #8242 /* ~"Ich würde gerne einen Moment mit Dir reden."~ */ GOTO 3
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8243 /* ~Hör ihrem Gesang zu.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8244 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8245 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8246 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8247 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8248 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8249 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #8250 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1 11.0 34.1
  SAY #8202 /* ~Alle Staubmenschen halten exakt den gleichen Ton und Rhythmus. Alle paar Minuten steigert sich der Sprechgesang fast zu einem Schreien, dann ebbt er wieder ab, so daß es sich beinahe wie ein Echo anhört. Wenn der Sprechgesang verklungen ist, rezitieren die Staubmenschen einige Zeilen und loben den 'Wahren Tod', bevor sie den Sprechgesang erneut anstimmen.~ */
  IF ~~ THEN REPLY #8251 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #8252 /* ~Geh, und laß sie ihrem Gesang weiter nachgehen.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 24.0 25.0 26.0 27.0 39.0
  SAY #8203 /* ~Die Staubmenschenfrau hebt den Kopf. Sie unterbricht ihren Sprechgesang nicht, sondern setzt ihn in gleichem Tempo und Ton wie die anderen Staubmenschen fort.~ */
  IF ~~ THEN REPLY #8253 /* ~"Was machst du?"~ */ GOTO 4
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8254 /* ~"Ich trauere um einen Toten."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8255 /* ~"Ich bin hier für jemanden, der jemanden verloren hat."~ */ GOTO 35
  IF ~~ THEN REPLY #8256 /* ~"Tut mir leid, daß ich dich belästigt habe. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #8204 /* ~Die Staubmenschenfrau ignoriert dich, senkt den Kopf und setzt den Sprechgesang fort.~ */
  IF ~~ THEN REPLY #8257 /* ~"Ich würde gern mit dir sprechen."~ */ GOTO 1
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8258 /* ~Hör ihrem Gesang zu.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8259 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8260 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8261 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8262 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8263 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8264 /* ~Hör ihrem Gesang zu.
~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #8265 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 20.2
  SAY #8205 /* ~Die Trauernde hält plötzlich inne und mustert dich. "Erfüllt dich der Tod dieses Menschen mit Schmerz?"~ */
  IF ~~ THEN REPLY #8266 /* ~"Nein. Der Tod regt meine Gefühle nicht."~ */ GOTO 11
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #8267 /* ~Wahrheit: "Ja... Ich fürchte, ich bin schuld am Tod einer unschuldigen Frau, Deionarra. Nicht nur, daß mich das beschäftigt, sondern ich fühle mich auch schuldig für den Kummer, den ich ihrem Vater zugefügt habe."
~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Xachariah","GLOBAL",2)
~ THEN REPLY #8268 /* ~Wahrheit: "Ja... Ich bin schuld am Tod eines unschuldigen Mannes, Xachariah. Sein Sterben peinigt mich."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_2","GLOBALGood",2)
~ GOTO 7
  IF ~  GlobalGT("Nature","GLOBAL",0)
~ THEN REPLY #8269 /* ~Wahrheit: "Ja... Ich bin schuld am Tod vieler Unschuldiger in den Ebenen. Die Qualen, die mir diese Enthüllung bereitet, sind mir fast unerträglich."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_3","GLOBALGood",5)
~ GOTO 8
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #8270 /* ~"Es geht nicht um mich. Da ist diese Frau, Frau-von-Angyar, die einen Sohn verloren hat. Sie leidet schwere Seelenqualen."~ */ GOTO 9
  IF ~~ THEN REPLY #8271 /* ~Lüge: "Nein, ich... äh... spreche für einen Freund... äh... Adahn - er ist derjenige, der Qualen leidet aufgrund des Todes dieser Person."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #8272 /* ~"Ja, sein Tod hat mir viele Schmerzen und Qualen bereitet."~ */ GOTO 36
  IF ~~ THEN REPLY #7855 /* ~"Nun ja, äh... bevor ich dazu was sage, hätte ich ein paar Fragen an dich..."~ */ GOTO 20
  IF ~~ THEN REPLY #8273 /* ~"Entschuldigung... Ich habe mich versprochen. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #8206 /* ~"Wir werden deinen Schmerz und den ihres Vaters betrauern, wenn du es gestattest."~ */
  IF ~~ THEN REPLY #8274 /* ~"Wenn ihr das tun könntet. Es würde das Leid ihres Vaters und meine eigenen außerordentlich lindern."~ */ DO ~SetGlobal("Chant","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #8275 /* ~"Nein, das ist wirklich nicht nötig. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #8207 /* ~"Wir werden deinen Schmerz betrauern, wenn du es wünscht."~ */
  IF ~~ THEN REPLY #8276 /* ~"Wenn ihr das tun könntet. Es würde mein Leid außerordentlich lindern."~ */ DO ~SetGlobal("Chant","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #8277 /* ~"Nein, das ist wirklich nicht nötig. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY #8208 /* ~"Wir werden deinen Schmerz betrauern, wenn du es wünscht."~ */
  IF ~~ THEN REPLY #8278 /* ~"Wenn ihr das tun könntet. Es würde mein Leid außerordentlich lindern."~ */ DO ~SetGlobal("Chant","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #8279 /* ~"Nein, das ist wirklich nicht nötig. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.4 35.1
  SAY #8209 /* ~"Wir werden ihren Schmerz betrauern, wenn sie es gestattet."~ */
  IF ~~ THEN REPLY #8280 /* ~"Wenn ihr das tun könntet. Es würde ihr Leid außerordentlich lindern."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_4","GLOBALGood",2)
SetGlobal("Chant","GLOBAL",4)
~ GOTO 11
  IF ~~ THEN REPLY #8281 /* ~"Nein, das ist wirklich nicht nötig. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 5.5 35.2
  SAY #8210 /* ~"Wir werden seinen Schmerz betrauern, wenn er es erlaubt."
~ */
  IF ~~ THEN REPLY #8282 /* ~"Wenn ihr das tun könntet. Es würde sein Leid außerordentlich lindern."~ */ DO ~SetGlobal("Chant","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #8283 /* ~"Nein, das ist wirklich nicht nötig. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.0 10.0 20.4 35.0 36.0 38.0
  SAY #8211 /* ~Der Staubmensch nickt und setzt den Sprechgesang fort.~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8284 /* ~Hör ihrem Gesang zu.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8285 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8286 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8287 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8288 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8289 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8290 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #8291 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 5.8 6.1 7.1 8.1 9.1 10.1 13.8 14.8 15.8 16.10 17.8 18.9 19.7 20.5 28.1 29.1 30.2 31.2 32.2 33.2 35.4 36.1 37.1 38.1 40.2
  SAY #8212 /* ~Die Staubmenschenfrau senkt den Kopf und fährt mit dem Sprechgesang fort.~ */
  IF ~~ THEN REPLY #8292 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 20.0
  SAY #8213 /* ~"Wir sind in Trauer."~ */
  IF ~~ THEN REPLY #8293 /* ~"Wer ist denn gestorben?"~ */ GOTO 14
  IF ~  False()
Global("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #8294 /* ~"Und ich dachte, ihr Staubmänner stündet über solchen Dingen wie Trauer und Emotionen."~ */ GOTO 14
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8295 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8296 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8297 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8298 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8299 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8300 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 40
  IF ~~ THEN REPLY #8301 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1
  SAY #8214 /* ~"Wir betrauern nicht die Toten. Wir betrauern die Lebenden."~ */
  IF ~~ THEN REPLY #8302 /* ~"Die Lebenden?"~ */ GOTO 15
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8303 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8304 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8305 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8306 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8307 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8308 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 40
  IF ~~ THEN REPLY #8309 /* ~"Ich... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #8310 /* ~"Ich denke, ich habe genug gehört. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #8215 /* ~"Wir betrauern die Lebenden, die den Verlust der Dahingeschiedenen beklagen."~ */
  IF ~~ THEN REPLY #8311 /* ~"Warum?"~ */ GOTO 16
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8312 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8313 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8314 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8315 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8316 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8317 /* ~"Um wen trauert ihr denn nun genau?"
~ */ GOTO 40
  IF ~~ THEN REPLY #8318 /* ~"Ich... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #8319 /* ~"Ich denke, ich habe genug gehört. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #8216 /* ~"Wenn eine Seele den Wahren Tod stirbt, hinterläßt dies oft eine Woge des Schmerzes. Wenn der Verstorbene geliebt wurde, löst sein Tod ein Gefühl der Trauer und des Verlusts aus."~ */
  IF ~~ THEN REPLY #8320 /* ~"Das ist auch nur natürlich..."~ */ GOTO 17
  IF ~~ THEN REPLY #8321 /* ~"Ihr trauert also um die Lebenden, weil..."~ */ GOTO 17
  IF ~~ THEN REPLY #8322 /* ~"Den Wahren Tod?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8323 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8324 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8325 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8326 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8327 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8328 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 40
  IF ~~ THEN REPLY #8329 /* ~"Ich... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #8330 /* ~"Ich denke, ich habe genug gehört. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 18.1
  SAY #8217 /* ~"Schmerz und Trauer um einen Toten sind starke Gefühle. Sie binden die Lebenden an dieses Dasein und verhindern, daß sie, wenn ihre Zeit abgelaufen ist, den Wahren Tod erlangen. Wir betrauern die Lebenden, die mit diesen Gefühlen geschlagen sind."~ */
  IF ~~ THEN REPLY #8331 /* ~"Den Wahren Tod?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8332 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8333 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8334 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8335 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8336 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8337 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 40
  IF ~~ THEN REPLY #8338 /* ~"Ich... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #8339 /* ~"Ich denke, ich habe genug gehört. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.0
  SAY #8218 /* ~"Er wird manchmal auch der endgültige Tod genannt. Der Wahre Tod ist die Befreiung von dieser düsteren, schmerzvollen Existenz. Es ist die Befreiung von den Gefühlen. Die Befreiung von der Vernunft. Die Befreiung von diesen Hüllen."~ */
  IF ~~ THEN REPLY #8340 /* ~"Hört sich nach Vergessenheit an."~ */ GOTO 19
  IF ~~ THEN REPLY #8341 /* ~"Ist das der Grund, warum ihr um die Lebenden trauert?"~ */ GOTO 17
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8342 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8343 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8344 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8345 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8346 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8347 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 40
  IF ~~ THEN REPLY #8348 /* ~"Ich... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #8349 /* ~"Ich denke, ich habe genug gehört. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #8219 /* ~Der Staubmensch nickt. "Einige haben es so genannt, aber diese Bezeichnung ist nicht ganz richtig."~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8350 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8351 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8352 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8353 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8354 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8355 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 40
  IF ~~ THEN REPLY #8356 /* ~"Egal. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #8357 /* ~"Ich denke, ich habe genug gehört. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 5.7 14.7 15.7 16.9 17.7 18.8 19.6 29.0 30.1 31.1 32.1 33.1 34.0 37.0 40.1
  SAY #8220 /* ~Der Staubmensch wartet.~ */
  IF ~~ THEN REPLY #8358 /* ~"Was machst du?"~ */ GOTO 13
  IF ~  Global("Chant_Change","GLOBAL",1)
~ THEN REPLY #8359 /* ~"Warum hat sich euer Gesang geändert?"~ */ GOTO 28
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8360 /* ~"Ich trauere um einen Toten."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8361 /* ~"Ich bitte für einen anderen, der jemanden verloren hat."~ */ GOTO 35
  IF ~~ THEN REPLY #8362 /* ~"Ich würde gerne euren Gesang anhören."~ */ GOTO 11
  IF ~~ THEN REPLY #8363 /* ~"Entschuldige die Störung. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 1.2 4.2 11.1 23.0
  SAY #8221 /* ~Alle Staubmenschen singen im selben Ton und Rhythmus. Im Gegensatz zu dem Sprechgesang, den du gehört hast, als zu das erste Mal zum Denkmal gegangen bist, ist dieser Gesang an- und abschwellend, wie Wellen, die gegen die Küste branden. Dieses Bild weckt Erinnerungen in dir...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #8364 /* ~Versuch dich zu erinnern...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #8365 /* ~Versuch dich zu erinnern...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,750)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #8366 /* ~Versuch dich zu erinnern...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",1)
~ THEN REPLY #8367 /* ~Versuch dich zu erinnern...~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 22
  IF ~~ THEN REPLY #33957 /* ~Mach dich von der Erinnerung frei.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2 21.3
  SAY #8222 /* ~Du erinnerst dich vage daran, wie du an einer fernen Küste stehst... an einem anderen Ort, weit weg von hier. Jemand ist bei dir, eine Frau. Sie steht links von dir, am Rande deines Blickfelds, und du kannst sie nur schemenhaft erkennen. Als du versuchst, deiner Erinnerung Gestalt zu verleihen, verblaßt sie...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
~ THEN REPLY #8368 /* ~Vergewisser dich, wo du bist.~ */ DO ~SetGlobal("Shore_Memory","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Shore_Memory","GLOBAL",0)
~ THEN REPLY #8369 /* ~Vergewisser dich, wo du bist.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.4 22.0 22.1
  SAY #8223 /* ~...und du bist wieder bei den trauernden Staubmenschen. Ihr Sprechgesang ist fast völlig verstummt. Sie hören auf, rezitieren einige Zeilen, in denen sie den 'Wahren Tod' preisen, und beginnen wieder mit ihrem Sprechgesang.~ */
  IF ~~ THEN REPLY #8370 /* ~Horch noch einmal.~ */ GOTO 21
  IF ~~ THEN REPLY #8371 /* ~Geh, und laß sie ihrem Gesang weiter nachgehen.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.3 4.3 11.2
  SAY #8224 /* ~Alle Staubmenschen singen im selben Ton und Rhythmus. Im Gegensatz zu dem Sprechgesang, den du gehört hast, als zu das erste Mal zum Denkmal gegangen bist, klingt dieser Gesang viel höher, so wie das Sirren eines Pfeils oder wie Wind, der durch eine Schlucht pfeift. Dieser Sprechgesang beginnt und endet abrupt - nachdem die Staubmenschen den Gesang beendet haben, zitieren sie einige Zeilen, in denen sie den 'Wahren Tod' preisen, und beginnen wieder mit ihrem Sprechgesang.~ */
  IF ~~ THEN REPLY #8372 /* ~"Ich habe da ein paar Fragen an dich..."~ */ GOTO 3
  IF ~~ THEN REPLY #8373 /* ~Geh, und laß sie ihrem Gesang weiter nachgehen.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.4 4.4 11.3
  SAY #8225 /* ~Alle Staubmenschen singen im selben Ton und Rhythmus. Im Gegensatz zu dem Sprechgesang, den du gehört hast, als du das erste Mal zum Denkmal gegangen bist, schwingt in diesem Gesang eine gewisse Energie und Unbändigkeit mit - er ist nicht berechenbar und der Ton scheint sich schon zu verändern, kaum daß er über die Lippen gebracht wurde. Egal wie heftig der Ton von einem Moment zum anderen schwankt - die Staubmenschen singen mit harmonischer Perfektion. Als der Gesang schließlich fast verstummt, rezitieren die Staubmenschen einige Zeilen, in denen sie den 'Wahren Tod' preisen, und beginnen wieder mit ihrem Sprechgesang.~ */
  IF ~~ THEN REPLY #8374 /* ~"Ich habe da ein paar Fragen an dich..."~ */ GOTO 3
  IF ~~ THEN REPLY #8375 /* ~Geh, und laß sie ihrem Gesang weiter nachgehen.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.5 4.5 11.4
  SAY #8226 /* ~Im Gegensatz zu dem Sprechgesang, den du gehört hast, als du das erste Mal zum Denkmal gegangen bist, besteht dieser Gesang aus nur einem Ton, der minutenlang andauert... er erinnert dich an das Läuten einer großen Glocke. Nachdem wieder Stille eingekehrt ist, rezitieren die Staubmenschen einige Zeilen, in denen sie den 'Wahren Tod' preisen, und beginnen erneut mit ihrem Sprechgesang.~ */
  IF ~~ THEN REPLY #8376 /* ~"Ich habe da ein paar Fragen an dich..."~ */ GOTO 3
  IF ~~ THEN REPLY #8377 /* ~Geh, und laß sie ihrem Gesang weiter nachgehen.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 1.6 4.6 11.5
  SAY #8227 /* ~Im Gegensatz zu dem Sprechgesang, den du gehört hast, als zu das erste Mal zum Denkmal gegangen bist, ist dieser Gesang so leise, daß er im Straßenlärm unterzugehen scheint. Nach etwa einer Minute sind die Staubmenschen völlig still, dann rezitieren sie einige Zeilen, in denen sie den 'Wahren Tod' preisen, und beginnen erneut mit ihrem Sprechgesang.~ */
  IF ~~ THEN REPLY #8378 /* ~"Ich habe da ein paar Fragen an dich..."~ */ GOTO 3
  IF ~~ THEN REPLY #8379 /* ~Geh, und laß sie ihrem Gesang weiter nachgehen.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 20.1
  SAY #8228 /* ~Der Staubmensch schaut dich ausdruckslos an. "Unser Sprechgesang hat sich nicht verändert. Wir singen seit Beginn denselben Gesang."~ */
  IF ~~ THEN REPLY #8380 /* ~"Euer Gesang hat sich geändert... Ton und Rhythmus sind jetzt anders."~ */ GOTO 29
  IF ~~ THEN REPLY #8381 /* ~"Schon gut, macht nichts."~ */ GOTO 12
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #8229 /* ~Die Staubmenschenfrau schüttelt den Kopf. "Vielleicht bist du derjenige, der sich geändert hat."~ */
  IF ~~ THEN REPLY #8382 /* ~"Ich hab' da noch ein paar Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #8383 /* ~"Vielleicht ist dem so. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 30 // from: 13.2 14.1 15.1 16.3 17.1 18.2 19.0
  SAY #8230 /* ~"Ich trauere um Iannis. Sein Herz wurde durch den Verlust seiner einzigen Tochter Deionarra betrübt."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #8384 /* ~"Deionarra? Ich hab' von ihr gehört. Weißt du, wie sie gestorben ist?"~ */ JOURNAL #27450 /* ~Die trauernden Staubmenschen sagen, daß sie um einen Mann namens Jannis trauern, der offensichtlich der Vater dieses Geistes ist, den ich in der Leichenhalle getroffen habe. Vielleicht könnte ja Jannis mehr über Deionarra und mich wissen...~ */ GOTO 37
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #8385 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ JOURNAL #27451 /* ~Die trauernden Staubmenschen sagen, daß sie um einen Mann namens Jannis trauern, der seine einzige Tochter verloren hat, Deionarra. Aus irgendeinem Grund kommen mir die Namen bekannt vor, aber ich kann sie nirgendwo unterbringen.~ */ GOTO 20
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #8386 /* ~"Vielen Dank. Das ist alles, was ich wissen wollte."~ */ JOURNAL #27451 /* ~Die trauernden Staubmenschen sagen, daß sie um einen Mann namens Jannis trauern, der seine einzige Tochter verloren hat, Deionarra. Aus irgendeinem Grund kommen mir die Namen bekannt vor, aber ich kann sie nirgendwo unterbringen.~ */ GOTO 12
END

IF ~~ THEN BEGIN 31 // from: 13.3 13.6 14.2 14.5 15.2 15.5 16.4 16.7 17.2 17.5 18.3 18.6 19.1 19.4
  SAY #8231 /* ~"Wir betrauern deinen Schmerz um die Verstorbenen."~ */
  IF ~~ THEN REPLY #8387 /* ~"Mir geht es wieder besser. Derjenige, um den ihr vor unserem kleinen Plausch getrauert habt, hat es nötiger als ich."~ */ GOTO 34
  IF ~~ THEN REPLY #8388 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #8389 /* ~"Vielen Dank. Das ist alles, was ich wissen wollte."~ */ GOTO 12
END

IF ~~ THEN BEGIN 32 // from: 13.4 14.3 15.3 16.5 17.3 18.4 19.2
  SAY #8232 /* ~"Wir trauern um die Frau-von-Angyar, die Schmerz ob des Verlusts empfindet."~ */
  IF ~~ THEN REPLY #8390 /* ~"Ihr geht es wieder besser. Derjenige, um den ihr vor unserem kleinen Plausch getrauert habt, hat es nötiger als sie."~ */ GOTO 34
  IF ~~ THEN REPLY #8391 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #8392 /* ~"Vielen Dank. Das ist alles, was ich wissen wollte."
~ */ GOTO 12
END

IF ~~ THEN BEGIN 33 // from: 13.5 14.4 15.4 16.6 17.4 18.5 19.3
  SAY #8233 /* ~"Wir trauern um Adahn, der Schmerz ob des Verlusts empfindet."~ */
  IF ~~ THEN REPLY #8393 /* ~"Ähh... Adahn geht es wieder besser. Derjenige, um den ihr vor unserem kleinen Plausch getrauert habt, hat es nötiger als er."~ */ GOTO 34
  IF ~~ THEN REPLY #8394 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #8395 /* ~"Vielen Dank. Das ist alles, was ich wissen wollte."~ */ GOTO 12
END

IF ~~ THEN BEGIN 34 // from: 31.0 32.0 33.0 40.0
  SAY #8234 /* ~Die Staubmenschenfrau nickt, senkt den Kopf und setzt den Sprechgesang fort.~ */
  IF ~~ THEN REPLY #8396 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 20
  IF ~~ THEN REPLY #8397 /* ~Hör zu.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 2
  IF ~~ THEN REPLY #8398 /* ~Verschwinde.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.2 20.3
  SAY #8235 /* ~Die Trauernde hält plötzlich inne und mustert dich. "Ist derjenige, von dem du sprichst, wegen des Todes dieses Menschen von Schmerz erfüllt?"~ */
  IF ~~ THEN REPLY #8399 /* ~"Nein. Der Tod regt ihre Gefühle nicht."~ */ GOTO 11
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #8400 /* ~"Ja. Eine Frau, die Frau-von-Angyar, hat einen Sohn verloren. Sie leidet schwere Seelenqualen."~ */ GOTO 9
  IF ~~ THEN REPLY #8401 /* ~Lüge: "Äh, ja...mein Freund, äh... Adahn... hat gerade jemand Nahestehenden verloren. Er leidet unter Qualen aufgrund des Todes dieser Person."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #8402 /* ~"Ja, sein Tod hat ihnen viel Schmerz und Qual bereitet."~ */ GOTO 38
  IF ~~ THEN REPLY #8403 /* ~"Entschuldigung... Ich habe mich versprochen. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 36 // from: 5.6
  SAY #8236 /* ~"Wir werden deinen Schmerz betrauern, wenn du es wünscht."~ */
  IF ~~ THEN REPLY #8404 /* ~"Wenn ihr das tun könntet. Es würde mein Leid außerordentlich lindern."~ */ DO ~SetGlobal("Chant","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #8405 /* ~"Nein, das ist wirklich nicht nötig. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 37 // from: 30.0
  SAY #8237 /* ~"Die Umstände ihres Todes sind mir nicht bekannt."~ */
  IF ~~ THEN REPLY #8406 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #8407 /* ~"Also schön. Das ist alles, was ich wissen wollte."~ */ GOTO 12
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #8238 /* ~"Wir werden ihren Schmerz betrauern, wenn du es gestattest."~ */
  IF ~~ THEN REPLY #8408 /* ~"Wenn ihr das tun könntet. Es würde ihr Leid außerordentlich lindern."~ */ DO ~SetGlobal("Chant","GLOBAL",7)
~ GOTO 11
  IF ~~ THEN REPLY #8409 /* ~"Nein, das ist wirklich nicht nötig. Leb wohl."
~ */ GOTO 12
END

IF ~~ THEN BEGIN 39 // from: 1.7 11.6
  SAY #8239 /* ~Im Gegensatz zu dem Sprechgesang, den du gehört hast, als du das erste Mal zum Denkmal gegangen bist, ist dieser Gesang viel schwerer wahrzunehmen. Während du zuhörst, fällt dir auf, daß die Töne merkwürdig gedämpft sind, so, als ob die Luft den Gesang erstickt. Nach etwa einer Minute verklingt der Gesang der Staubmenschen, dann rezitieren sie einige Zeilen, in denen sie den 'Wahren Tod' preisen, und beginnen erneut mit ihrem Sprechgesang.~ */
  IF ~~ THEN REPLY #8410 /* ~"Ich habe ein paar Fragen an dich..."~ */ GOTO 3
  IF ~~ THEN REPLY #8411 /* ~Geh, und laß sie ihrem Gesang weiter nachgehen.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.7 14.6 15.6 16.8 17.6 18.7 19.5
  SAY #8240 /* ~"Wir trauern um den, von dem du gesprochen hast und der ob des Verlusts von Kummer gebeugt ist."~ */
  IF ~~ THEN REPLY #8412 /* ~"Der Person geht es wieder besser. Derjenige, um den ihr vorher getrauert hattet, hat es nötiger als der, den ich meinte."~ */ GOTO 34
  IF ~~ THEN REPLY #8413 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #8414 /* ~"Vielen Dank. Das ist alles, was ich wissen wollte."~ */ GOTO 12
END
