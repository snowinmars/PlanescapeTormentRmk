// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSOFF2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSOFF2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 0 // from:
  SAY #3176 /* ~Siabha spuckt dir vor die Füße. "Hund! Du wagst es, wieder mit mir zu sprechen, wo mich doch deine falschen Worte hier ins Gefängnis gebracht haben! Verräter! Ich hoffe, der Styx wird dich schlucken und deine gebleichten Knochen an die Ufer ausspucken, damit sich eine Armee von Mistfressern Flöten draus schnitzen kann!"~ */
  IF ~~ THEN REPLY #68278 /* ~"Wiedersehen, Siabha."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3178 /* ~Diese Frau hat auf ihrem Adlergesicht einen arroganten Ausdruck, und als sie zu dir spricht, ist ihre Verachtung für dich offensichtlich. "Ich bin eine vielbeschäftigte Frau. Halt mich nicht lange auf."~ */
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #3180 /* ~"Ich hatte nur ein paar Fragen..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #60214 /* ~"Ich hätte nur einige Fragen über Verdammnis."~ */ GOTO 6
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60215 /* ~"Ich habe mit An'Izius gesprochen. Er hat mir einen interessanten Vorschlag unterbreitet."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60216 /* ~"Dann vergiß es. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",3)
GlobalLT("C_Off","GLOBAL",10)
~ THEN BEGIN 2 // from:
  SAY #60217 /* ~"Nun?" ~ */
  IF ~  Global("C_Off","GLOBAL",5)
~ THEN REPLY #60218 /* ~"Er hat mir eine beträchtliche Summe dafür angeboten, dich zu hintergehen."~ */ GOTO 9
  IF ~  Global("C_Off","GLOBAL",6)
~ THEN REPLY #60219 /* ~"Ich habe mit dem Oberbefehlshaber der Wache gesprochen, und er sagte, er wolle eine Abteilung schicken, um An'Izius ins Gefängnis abzuführen."~ */ DO ~SetGlobal("C_Off","GLOBAL",10)
GivePartyGold(3000)
AddexperienceParty(100000)
~ JOURNAL #60222 /* ~Ich habe von meiner erfolgreichen Übergabe von An'Izius an die Wachen von Verdammnis erzählt. Siabha war entzückt und hat mich sehr gut für diesen kleinen Verrat bezahlt.~ */ GOTO 10
  IF ~~ THEN REPLY #60220 /* ~"Ich arbeite daran. Ich habe noch ein paar Fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #60221 /* ~"Ich arbeite daran. Ich komme noch einmal wieder."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #60223 /* ~"Wir sind miteinander fertig. Geh, oder ich lasse dich von der Wache abführen."~ */
  IF ~~ THEN REPLY #60224 /* ~"Nun gut."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #60225 /* ~"Schon wieder hier? Ich habe keine Zeit für deine Fragen, Narbiger."~ */
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #60226 /* ~"Ich hatte nur ein paar Fragen..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #60227 /* ~"Ich hätte nur einige Fragen über Verdammnis."~ */ GOTO 6
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60228 /* ~"Ich habe mit An'Izius gesprochen. Er hat mir einen interessanten Vorschlag unterbreitet."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60229 /* ~"Dann vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0
  SAY #60230 /* ~"Ich bin kein gewöhnlicher Schlepper, mit dem du nach Lust und Laune umspringen kannst. Geh."~ */
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60231 /* ~"Dann interessiert es dich vielleicht, daß ich mit An'Izius gesprochen habe. Er hat ein paar interessante Sachen gesagt."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60232 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 4.1
  SAY #60233 /* ~Sie sieht dich abschätzig von oben bis unten an. "Ich würde wirklich gern bleiben und noch etwas mit einem so erlesenen Exemplar von Mann plauschen, aber leider ruft die Pflicht. Das verstehst du doch sicher, nicht wahr?"~ */
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60234 /* ~"Dann interessiert es dich vielleicht, daß ich mit An'Izius gesprochen habe. Er hat ein paar interessante Sachen gesagt."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60235 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 4.2 5.0 6.0
  SAY #60236 /* ~"Er plant wohl schon wieder, mich auf irgendeine Art zu diffamieren, nicht wahr? Was kann ich tun, damit sein neuester Schuß nach hinten losgeht? Wie wär's, wenn ich dir das Doppelte biete, was er dir zahlt?"~ */
  IF ~~ THEN REPLY #60237 /* ~"In Ordnung. Wir sind im Geschäft."~ */ GOTO 8
  IF ~~ THEN REPLY #60238 /* ~"Er läßt Grüße ausrichten. Das ist alles."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60239 /* ~"Tu einfach genau das, was er dir aufgetragen hat, mit mir zu tun - aber tu es statt dessen mit ihm. Na? Ich werde dafür sorgen, daß du reich belohnt wirst."~ */
  IF ~~ THEN REPLY #60240 /* ~"Dann komme ich wieder."~ */ JOURNAL #60241 /* ~Siabha, eine Beamtin aus Verdammnis, hat mir angeboten, mir das Doppelte zu bezahlen, wenn ich An'Izius hintergehen würde. Ich werde darüber nachdenken.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #60242 /* ~"Pah! Das reicht jetzt! Ich werde mit seinem Angebot gleichziehen, doch ich werde es nicht noch erhöhen." Sie lächelt dich herausfordernd an. "Du mußt deine Entscheidung selbst treffen. Aber denk dran: Ich kann dir vielleicht noch das eine oder andere Extra bieten."~ */
  IF ~~ THEN REPLY #60243 /* ~"Nun denn. Leb wohl."~ */ JOURNAL #68274 /* ~Siabha hat ihr letztes Angebot im Intrigenspiel gegen An'izius gemacht.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #60244 /* ~Sie reicht dir einen schweren Beutel mit Münzen. "Also nimm das hier und geh. Wir haben nie über die Sache gesprochen." Sie zwinkert dir zu. "Meine Dankbarkeit ist dir gewiß,... wenngleich du dir dafür nicht viel kaufen kannst. Leb wohl, Fremder."~ */
  IF ~~ THEN REPLY #60245 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.2
  SAY #60246 /* ~"Ich bin wirklich sehr beschäftigt. Vielleicht wenn du diesen kleinen Auftrag erledigt hast? Ich danke dir." Sie schenkt dir ein strahlendes Lächeln und wendet sich ab.~ */
  IF ~~ THEN REPLY #60247 /* ~"Dann komme ich wieder..."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #60248 /* ~Sie grinst höhnisch. "Ja, ich bin sicher, das war alles. Denk dran: Was immer er geboten hat, ich verdopple es. Denk darüber nach, Fremder."~ */
  IF ~~ THEN REPLY #60249 /* ~"Mach ich. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 13 // from:
  SAY #66785 /* ~Die in der Amtstracht eines Beamten von Verdammnis gekleidete Frau ist völlig verängstigt. "Sie wollen mich umbringen! Ich hab bloß meine Arbeit getan, bis sich die Stadt plötzlich verändert hat. Und sie glauben, daß ich etwas damit zu tun habe, nur weil ich Hinrichtungsbefehle unterschrieben hab! Ich wollte doch nichts Böses tun! Ich hab doch nur meine Pflicht getan! Bitte hilf mir!"~ */
  IF ~~ THEN REPLY #66792 /* ~"Ich werd' tun, was ich kann. Wünsch mir Glück."~ */ EXIT
  IF ~~ THEN REPLY #66793 /* ~"Du hast es nicht besser verdient."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #66794 /* ~"Dann hoffe ich, daß die Gehreless euch alle abschlachten! Du Bastard!"~ */
  IF ~~ THEN REPLY #66795 /* ~"Viel Spaß beim Sterben."~ */ EXIT
END
