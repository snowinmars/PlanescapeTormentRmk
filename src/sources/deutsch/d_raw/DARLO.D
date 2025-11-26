// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARLO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DARLO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 11 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30049 /* ~Du siehst einen kleinen, ziemlich kahlköpfigen Mann in einer Art Foyer für diese baufällige Spelunke stehen. Seine buschigen Augenbrauen sind vor Konzentration zusammengezogen, während er an etwas pult, was wie Schorf auf seiner großen Knollennase aussieht.~ */
  IF ~~ THEN REPLY #30077 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #30078 /* ~Laß den Mann an seiner Nase herumpulen und erkunde den Raum.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #30050 /* ~Der Mann blickt nicht auf, sondern starrt unentwegt mit schielendem Blick auf seine Nase. "Ja? Was willst du?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30079 /* ~"Könnte ich mich hier ausruhen?"~ */ GOTO 4
  IF ~  Dead("Nestor")
~ THEN REPLY #30080 /* ~"Könnte ich mich hier ausruhen?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30081 /* ~"Könnte ich mich hier ausruhen?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30082 /* ~"Könnte ich mich hier ausruhen?"~ */ GOTO 2
  IF ~~ THEN REPLY #30083 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #30084 /* ~"Entschuldige, daß ich dich gestört hab'. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.3 9.0
  SAY #30051 /* ~"Klar, Dussel... wenn du genug Klimper hast. Keiner bleibt hier umsonst, außer dem ollen Nestor da drüben. Und der berappt nur nicht, weil niemand so blöd ist, sich mit ihm anzulegen."~ */
  IF ~~ THEN REPLY #30085 /* ~"Gut. Was kostet eine Übernachtung?"~ */ GOTO 4
  IF ~~ THEN REPLY #30086 /* ~"Erzähl mir was über diesen... Nestor."~ */ GOTO 5
  IF ~~ THEN REPLY #30087 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 9.5
  SAY #30052 /* ~"Wie schön für dich!" Er grinst sarkastisch und zeigt dabei seine gelben Zähne. "Und ich bin sicher, daß du irgendwann auch ein paar Antworten kriegst. Aber ich muß mich hier um mein Geschäft kümmern. Also, wenn du hier nicht übernachten willst, dann verzieh dich!"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30088 /* ~"Schon gut. Kann ich dann hier übernachten?"~ */ GOTO 4
  IF ~  Dead("Nestor")
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30089 /* ~"Schon gut. Kann ich dann hier übernachten?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30090 /* ~"Schon gut. Kann ich dann hier übernachten?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30091 /* ~"Schon gut. Kann ich dann hier übernachten?"~ */ GOTO 2
  IF ~  Global("Arlo_Quest","GLOBAL",2)
~ THEN REPLY #30092 /* ~"Schon gut. Dann werde ich mich jetzt eine Weile ausruhen."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #30093 /* ~"Dann vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1 1.2 2.0 3.0 3.1 3.2 5.1 6.2 7.1 9.1 9.2 9.3
  SAY #30053 /* ~"Das kostet dich fünf Kupfermünzen." Er wischt sich seine schmutzige Hand an seinem noch schmutzigeren Hemd ab und hält sie dir dann hin.~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #30094 /* ~Gib ihm fünf Kupfermünzen. Ruh dich aus.~ */ DO ~TakePartyGold(5)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  PartyGoldLT(5)
~ THEN REPLY #30095 /* ~"Tut mit leid, ich hab' jetzt keine fünf Kupfermünzen. Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
  IF ~  PartyGoldGT(4)
~ THEN REPLY #30096 /* ~"Macht nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #30054 /* ~"Nestor ist der bescheuerte alte Knacker da in der Ecke." Er deutet mit dem Daumen über seine Schulter hinweg in den hinteren Teil des Raums. "Vor ihm mußt du dich in acht nehmen, Dussel. Der tickt nicht richtig. Brabbelt ständig was von 'ner Gabel. Ich wünschte, jemand würde ihn uns vom Hals schaffen."~ */
  IF ~~ THEN REPLY #30097 /* ~"Warum schaffst du ihn dir nicht selbst vom Hals?"~ */ GOTO 6
  IF ~~ THEN REPLY #30098 /* ~"Also, was kostet eine Übernachtung?"~ */ GOTO 4
  IF ~~ THEN REPLY #30099 /* ~"Macht nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #30055 /* ~"Glaubst du, ich hab's nicht versucht? Und guck, was ich mir damit eingehandelt habe..." Er lehnt sich vor und zeigt auf den blutenden Schorf auf seiner Nase. "Der verrückte Kerl hat mir fast die Nase abgebissen!"~ */
  IF ~~ THEN REPLY #30100 /* ~"Ich könnte ihn dir vom Hals schaffen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Arlo_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #30101 /* ~"Ich könnte ihn dir vom Hals schaffen... aber das kostet dich was."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Arlo_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #30102 /* ~"Also, was kostet eine Übernachtung?"~ */ GOTO 4
  IF ~~ THEN REPLY #30103 /* ~"Macht nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #30056 /* ~"Hör zu, Schleifer. Wenn du ihn mir vom Hals schafft, kannst du hier umsonst übernachten. So oft, wie du willst. Na, was sagst du?"~ */
  IF ~~ THEN REPLY #30105 /* ~"Okay. Ich schaff ihn dir vom Hals"~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",1)
~ JOURNAL #29872 /* ~Ich habe eingewilligt, dem Spelunkenbesitzer, Arlo, zu helfen, einen alten Mann namens Nestor loszuwerden. Scheint so, als habe sich der Typ auf Dauer in der Spelunke eingenistet, und niemand kann ihn zum Gehen bewegen.~ */ GOTO 8
  IF ~~ THEN REPLY #30107 /* ~"Also, was kostet eine Übernachtung?"~ */ GOTO 4
  IF ~~ THEN REPLY #30108 /* ~"Vergiß es. Ich habe Wichtigeres zu tun. Geh weg."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #30073 /* ~"Dann steh hier nicht blöd rum. An die Arbeit!" Er fängt wieder an, am Schorf auf seiner Nase zu pulen. "Siehst du nicht, daß ich beschäftigt bin?"~ */
  IF ~~ THEN REPLY #30109 /* ~Geh.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 11 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #30074 /* ~Arlo geht mit Begeisterung seiner Lieblingsbeschäftigung nach: er pult den Schorf von seiner Nase ab. Als du dich ihm näherst, sieht er dich aus den Augenwinkeln an. "Was willst du?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30110 /* ~"Könnte ich mich hier ausruhen?"~ */ GOTO 2
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30111 /* ~"Könnte ich mich hier ausruhen?"~ */ GOTO 4
  IF ~  Dead("Nestor")
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30112 /* ~"Könnte ich mich hier ausruhen?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30113 /* ~"Könnte ich mich hier ausruhen?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",2)
~ THEN REPLY #30114 /* ~"Ich möchte mich eine Weile ausruhen."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #30115 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #30116 /* ~"Tut mir leid, daß ich dich gestört habe. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Arlo_Quest","GLOBAL",1)
Dead("Nestor")
~ THEN BEGIN 10 // from:
  SAY #30075 /* ~"Um Himmels willen, Dussel! Als ich gesagt hab', daß du mir den alten Knacker vom Hals schaffen sollst, hab' ich nicht gemeint, daß du ihn umlegen sollst!" Arlo starrt dich ungläubig an. "Nun ja... Geschäft ist Geschäft. Du kannst hier umsonst bleiben. Auch wenn du nicht gerade ein gern gesehener Gast bist."~ */
  IF ~~ THEN REPLY #30117 /* ~Geh weg.~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Arlo_2","GLOBALGood",-1)
AddexperienceParty(250)
~ JOURNAL #29870 /* ~Ich habe getan, was Arlo verlangt hat, und bin Nestor losgeworden. Der Spelunkenbesitzer schien etwas geschockt darüber, wie ich den alten Verrückten entsorgt habe, aber er hat mich trotzdem kostenlos in der Spelunke absteigen lassen.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Arlo_Quest","GLOBAL",1)
Global("Nestor_Quest","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #30076 /* ~"Nestor ist nach Hause gegangen? Naja, vielleicht war der alte Knacker doch nicht so bescheuert." Er schlägt dich freundschaftlich auf den Rücken. "Vielleicht kriegen wir jetzt alle ein bißchen Ruhe hier im Laden. Du kannst hier ein kleines Nickerchen machen, Schleifer."~ */
  IF ~~ THEN REPLY #30118 /* ~Geh weg.~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #29869 /* ~Dadurch, daß ich Nestor die Gabel zurückgebracht und ihm geholfen habe, nach Hause zu kommen, habe ich den letzten Teil meines Handels mit Arlo erfüllt. Er hat mich wissen lassen, daß ich jetzt kostenlos in der Spelunke schlafen darf.~ */ EXIT
END
