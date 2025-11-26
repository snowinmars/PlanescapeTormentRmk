// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGBODY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGBODY~

IF ~  Global("Gatehead_Talk","GLOBAL",0)
Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 0 // from:
  SAY #47032 /* ~Als du näher kommst, beginnen die verwesenden Köpfe auf dem Tor, mit dir zu sprechen, indem sie untereinander einzelne Wörter hin- und hersingen, die zusammenhängende Sätze ergeben. "Weg, weg. Verloren für den Betrüger, verloren für das Licht."~ */
  IF ~~ THEN REPLY #47033 /* ~"Was ist mit der Stadt passiert?"~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
~ GOTO 1
  IF ~~ THEN REPLY #47034 /* ~"Was ist denn passiert?"~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
~ GOTO 2
  IF ~~ THEN REPLY #47035 /* ~"Danke für die Info. Bis dann."~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.2 3.0 7.0
  SAY #47036 /* ~"Vom Winde verweht, von der Welle des Bösen weggespült. Durch das Tor hindurch verschwunden. Die Stadt, sie ist verloren an ihren eigenen Haß. Verschwunden durch das Tor, zum Roten Gefängnis, zur Gefängnisebene... Carzeri."~ */
  IF ~~ THEN REPLY #47037 /* ~"Carzeri? Erzählt mir von Carzeri."~ */ GOTO 13
  IF ~~ THEN REPLY #47038 /* ~"Könnt ihr nicht normal sprechen?"~ */ GOTO 6
  IF ~~ THEN REPLY #47039 /* ~"Was ist denn passiert?"~ */ GOTO 2
  IF ~~ THEN REPLY #47040 /* ~"Habt ihr 'ne Ahnung, wie man dorthin gelangt oder sie zurückholt?"~ */ GOTO 4
  IF ~~ THEN REPLY #47041 /* ~"Ich hab jetzt keine Zeit für sowas. Lebt wohl.""Ich hab jetzt keine Zeit für sowas. Lebt wohl."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.2 6.0 7.1 13.1
  SAY #47042 /* ~"Verraten, verachtet, fälschlicherweise angeklagt... bestraft, hingerichet, Exempel statuiert. Von Feinden hier gehängt. Verloren, verloren, verloren."~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
Global("Ghead_Exp","AR0800",0)
~ THEN REPLY #47043 /* ~"Kann es sein, daß es in letzter Zeit viel zu viele sprechende, rumpflose Köpfe gibt, oder täusch ich mich?"~ */ DO ~GiveExperience(Protagonist,3000)
SetGlobal("Ghead_Exp","AR0800",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,20,INT)
Global("Ghead_Exp","AR0800",1)
~ THEN REPLY #47044 /* ~"Kann es sein, daß es in letzter Zeit viel zu viele sprechende, rumpflose Köpfe gibt, oder täusch ich mich?"~ */ GOTO 3
  IF ~~ THEN REPLY #47045 /* ~"Wo sind all die anderen?"~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #47046 /* ~Die Köpfe sind einen Augenblick still. Sie schauen einander an, bevor sie ihren Blick wieder auf dich richten. Sie hängen beschämt am Tor.~ */
  IF ~~ THEN REPLY #47047 /* ~"In Ordnung. Was ist mit Verdammnis passiert?"~ */ GOTO 1
  IF ~~ THEN REPLY #47048 /* ~"Leb wohl."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 6.1 13.2
  SAY #47049 /* ~"Durch das Tor, ins Gefängnis... Kein Zurück aus dem Gefängnis, kein Zurück. Geh durch das Tor, geh durch das Tor... Dort erwartet dich dein Schicksal."~ */
  IF ~~ THEN REPLY #47050 /* ~"Was wißt ihr über mein Schicksal?"~ */ JOURNAL #39483 /* ~Die Köpfe am Tor nach Carzeri haben mir gesagt, daß die Stadt an das Böse verloren und daraufhin durch das Tor nach Carzeri hineingesaugt wurde. Sie sagen, mein Schicksal liege auf der anderen Seite des Tors.~ */ GOTO 5
  IF ~~ THEN REPLY #47051 /* ~"Danke. Leb wohl."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47052 /* ~"Der Deva erwartet dich." Die Köpfe verstummen. Sie reagieren auf keine weiteren Fragen.~ */
  IF ~~ THEN REPLY #47053 /* ~"Dann leb wohl."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 13.0
  SAY #47054 /* ~"Hinter dem Schleier ist alles... schattig, hell. Nichts ist klar. Nichts ist einfach. Nichts."~ */
  IF ~~ THEN REPLY #47055 /* ~"Aha. Und was ist euch widerfahren?"~ */ GOTO 2
  IF ~~ THEN REPLY #47056 /* ~"Habt ihr 'ne Ahnung, wie man zur Stadt gelangt oder sie wieder hierher zurückholt?"~ */ GOTO 4
  IF ~~ THEN REPLY #47057 /* ~"Okay. Leb wohl."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",1)
Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 7 // from:
  SAY #47058 /* ~Die Köpfe sind zuerst still. Doch dann entfacht sich ein leises Geflüster langsam zu einem angeregten Gespräch.~ */
  IF ~~ THEN REPLY #47059 /* ~"Was ist mit Verdammnis passiert?"~ */ GOTO 1
  IF ~~ THEN REPLY #47060 /* ~"Was ist denn passiert?"~ */ GOTO 2
  IF ~~ THEN REPLY #47061 /* ~"Ach, vergiß es. Leb wohl."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",0)
!Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 8 // from:
  SAY #47062 /* ~Als du dich dem Tor näherst, beginnen die verrotteten Köpfe, die den mit Klingenreben überwucherten Gewölbegang säumen, mit dir zu reden. Ihre Stimmen vermengen sich. "Nach Carzeri, der Gefängnisebene, dem Land der Verräter und der Verratenen. Dieses Tor... ist vorübergehend... geschlossen."~ */
  IF ~~ THEN REPLY #47063 /* ~"Wann wird es wieder geöffnet?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #47064 /* ~"Was könnt ihr mir über Carzeri erzählen?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #47065 /* ~"Was ist denn passiert?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #47066 /* ~"Danke. Dann lebt wohl."~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",1)
!Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 9 // from:
  SAY #47067 /* ~"Das Tor... ist noch immer geschlossen. Kein Durchgang."~ */
  IF ~~ THEN REPLY #47068 /* ~"Wann wird es wieder geöffnet?"~ */ GOTO 10
  IF ~~ THEN REPLY #47069 /* ~"Was könnt ihr mir über Carzeri erzählen?"~ */ GOTO 11
  IF ~~ THEN REPLY #47070 /* ~"Was ist denn passiert?"~ */ GOTO 12
  IF ~~ THEN REPLY #47072 /* ~"Danke. Dann lebt wohl."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0 11.0 12.0
  SAY #47075 /* ~"Wenn die Krankheit vorübergeht. Wenn das Siechtum vorbei ist. Wenn der Tod vergangen ist."~ */
  IF ~~ THEN REPLY #47076 /* ~"Was könnt ihr mir über Carzeri erzählen?"~ */ GOTO 11
  IF ~~ THEN REPLY #47077 /* ~"Was ist denn passiert?"~ */ GOTO 12
  IF ~~ THEN REPLY #47078 /* ~"Danke. Leb wohl."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.1
  SAY #47080 /* ~"Die Gefängnisebene... das Chaos, das Böse... Welten in Welten, Sphären in Sphären, die wie böse Perlen am Himmel hängen... Das Rote Gefängnis, Verhängnis von Titanen und Göttern zugleich."~ */
  IF ~~ THEN REPLY #47082 /* ~"Wann wird das Tor geöffnet?"~ */ GOTO 10
  IF ~~ THEN REPLY #47083 /* ~"Was ist denn passiert?"~ */ GOTO 12
  IF ~~ THEN REPLY #47084 /* ~"Leb wohl."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2 9.2 10.1 11.1
  SAY #47085 /* ~"Verraten, verachtet, fälschlicherweise angeklagt... bestraft, hingerichet, Exempel statuiert. Von Feinden hier gehängt. Verloren, verloren, verloren."~ */
  IF ~~ THEN REPLY #47086 /* ~"Wann wird das Tor geöffnet?"~ */ GOTO 10
  IF ~~ THEN REPLY #47087 /* ~"Was könnt ihr mir über Carzeri erzählen?"~ */ GOTO 11
  IF ~~ THEN REPLY #47088 /* ~"Leb wohl."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.0
  SAY #47089 /* ~"Die Gefängnisebene.... das Chaos, das Böse... Welten in Welten, Sphären in Sphären, die wie böse Perlen am Himmel hängen.... Das Rote Gefängnis, Verhängnis von Titanen und Göttern zugleich."~ */
  IF ~~ THEN REPLY #47090 /* ~"Könnt ihr nicht normal sprechen?"~ */ GOTO 6
  IF ~~ THEN REPLY #47091 /* ~"Was ist denn passiert?"~ */ GOTO 2
  IF ~~ THEN REPLY #47092 /* ~"Habt ihr 'ne Ahnung, wie man dorthin gelangt oder sie zurückholt?"~ */ GOTO 4
  IF ~~ THEN REPLY #47093 /* ~"Ich hab jetzt keine Zeit für so was. Lebt wohl."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END
