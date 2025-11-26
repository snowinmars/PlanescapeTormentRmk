// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGCORV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGCORV~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 22 20 21 33 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37282 /* ~Du siehst einen hochgewachsenen Mann im Feldharnisch. Die Rüstung ist ungewöhnlich konstruiert, mit Dornen an den Schultern, Ellbogen und Unterarmen. Er nickt dir zu, als du näher kommst, bevor seine Augen über den Markt schweifen. "Guten Tag, Bürger. Ich bin die Wache Corvus."~ */
  IF ~~ THEN REPLY #37283 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37284 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37285 /* ~"Wie kann ich Dir helfen, Bürger?" Er sieht dich freundlich an, blickt dabei jedoch über deine Schulter.~ */
  IF ~~ THEN REPLY #37286 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37287 /* ~"Ich glaube nicht, daß du das kannst. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.0 6.2 8.1 9.0 11.0 12.0 13.1 14.2 16.0 17.0 18.0 19.0 22.0 23.0 25.1 26.0 28.2 29.1 30.0 31.2 33.0 34.0 35.4 36.0 42.0 43.1 44.0
  SAY #37288 /* ~Er nickt dir zu. "Ich werde dir helfen, wenn ich kann, Bürger." Er blickt erwartungsvoll über den Markt.~ */
  IF ~~ THEN REPLY #37289 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37290 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 6
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37291 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Know_Lenny","GLOBAL",1)
!Global("Byron_Arrested","GLOBAL",1)
~ THEN REPLY #37292 /* ~"Kennst du jemanden mit Namen Lenny?"~ */ GOTO 24
  IF ~  Global("Know_Byron","GLOBAL",1)
!Global("Byron_Arrested","GLOBAL",1)
~ THEN REPLY #37293 /* ~"Kennst du jemanden mit Namen Byron Nimms?"~ */ GOTO 27
  IF ~  Global("Know_Anarchists","GLOBAL",1)
~ THEN REPLY #37294 /* ~"Weißt du, daß drüben im Lager ein paar Anarchisten sind?"~ */ GOTO 35
  IF ~~ THEN REPLY #37295 /* ~"Ich will Waffen kaufen."~ */ GOTO 11
  IF ~~ THEN REPLY #37296 /* ~"Ich will magische Gegenstände kaufen."~ */ GOTO 12
  IF ~  Global("Karina_Friend","GLOBAL",1)
~ THEN REPLY #37297 /* ~Versuch zu erkennen, wo er gerade hinschaut.~ */ GOTO 13
  IF ~  Global("Karina_Friend","GLOBAL",0)
~ THEN REPLY #37298 /* ~Versuch zu erkennen, wo er gerade hinschaut.~ */ GOTO 19
  IF ~  !Global("Byron_Arrested","GLOBAL",1)
Global("Corvus_Zac","GLOBAL",1)
~ THEN REPLY #24718 /* ~"Ich wollte mit dir über den Kaufmann Zac reden."~ */ JOURNAL #66255 /* ~Corvus, die Harmonium-Wache, sucht nach Beweisen, die Aufschluß in der Mordsache eines Kaufmannes namens Zac bringen. Vielleicht sollte ich ein Auge offenhalten...~ */ GOTO 42
  IF ~~ THEN REPLY #66254 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37299 /* ~Er macht eine leichte Verbeugung vor dir. "Ich bin die Wache Corvus vom Harmonium, Bürger. Ich sorge hier auf dem Markt für Ruhe und Ordnung." Er blickt einen Moment umher und sieht dich dann an.~ */
  IF ~~ THEN REPLY #37300 /* ~"Erzähl mir was über das Harmonium."~ */ GOTO 4
  IF ~~ THEN REPLY #37301 /* ~"Ich hab' da noch ein paar Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37302 /* ~"Unser Glaube ist einfach. Wir sind das Licht. Wir sind der Weg. Wir sind die Ordnung. Wir sind die Wahrheit. Wir erhalten und setzen die Ordnung hier in Sigil durch. Wir hüten die Ordnung in der Stadt." Er sieht sich wieder um.~ */
  IF ~~ THEN REPLY #37303 /* ~"Was kannst du mir über die anderen Bünde erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #37304 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37305 /* ~"Ich weiß nur wenig von ihnen, Bürger. Tut mir leid, aber du wirst dich wohl mit deinen Fragen an einen Vertreter ihres Bundes wenden müssen. Er lächelt und sieht sich dann um.~ */
  IF ~~ THEN REPLY #37306 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 2.1 10.0
  SAY #37307 /* ~Er blickt dich erneut an und runzelt die Stirn. "Ich würde dir raten, Lothar in Frieden zu lassen, Bürger. Ich zweifle daran, daß du ihn wirklich finden willst."~ */
  IF ~~ THEN REPLY #37308 /* ~"Warum?"~ */ JOURNAL #66533 /* ~Ich habe mit Corvus, der Harmonium-Wache, über Lothar gesprochen. Er hat mich gewarnt, daß Lothar sehr mächtig und nicht mit ihm zu spaßen ist. Wie dem auch sei, ich muß ihn trotzdem finden.~ */ GOTO 7
  IF ~~ THEN REPLY #37309 /* ~"Ich suche ihn immer noch."~ */ JOURNAL #66534 /* ~Corvus sagt, daß Lothar in einem zerfallenen Haus im Unteren Bezirk gefunden werden kann.~ */ GOTO 9
  IF ~~ THEN REPLY #37310 /* ~"Ich verstehe... Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37311 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37312 /* ~Er runzelt die Stirn und blickt in die Ferne. "Ich bin nicht nur Offizier des Harmoniums, sondern auch Realist, Bürger. Als Realist weiß ich, daß es Leute gibt, die über dem Gesetz stehen. Das ist einfach so." Er hält inne.~ */
  IF ~~ THEN REPLY #37313 /* ~"Red' weiter."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37314 /* ~"Manche Leute fürchten das Gesetz nicht wegen ihrer Verbindungen hier in der Stadt, andere einfach wegen ihrer Macht und der Furcht, die sie in den Leuten erwecken. Lothar ist eine Macht, mit der man rechnen muß, Bürger. Er ist unantastbar, wenn du verstehst, was ich meine."~ */
  IF ~~ THEN REPLY #37315 /* ~"Ich muß ihn trotzdem finden."~ */ JOURNAL #66534 /* ~Corvus sagt, daß Lothar in einem zerfallenen Haus im Unteren Bezirk gefunden werden kann.~ */ GOTO 9
  IF ~~ THEN REPLY #37316 /* ~"Ich verstehe... Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37317 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #37318 /* ~Er seufzt und sieht über den Markt. "Also gut, Bürger. Seine Absteige ist irgendwo südlich von hier in einem runtergekommenen Haus. Ich wünsch dir viel Glück."~ */
  IF ~~ THEN REPLY #37319 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37320 /* ~Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37321 /* ~Er starrt dich eine Weile an, bevor er antwortet. "Das hört sich sehr nach Lothar, dem 'Herrn der Knochen' an, der würde so etwas tun."~ */
  IF ~~ THEN REPLY #37322 /* ~"Wo finde ich diesen Lothar?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 2.6
  SAY #37323 /* ~"Da mußt du mal mit Anze sprechen, Bürger. Der kann dir da helfen. Du kannst ihn da hinten beim Hochofen finden."
~ */
  IF ~~ THEN REPLY #37324 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37325 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.7
  SAY #37326 /* ~"Da mußt du mal mit Aalek sprechen, Bürger. Der kann dir da helfen. Er ist da hinten, am anderen Ende des Markts."~ */
  IF ~~ THEN REPLY #37327 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37328 /* ~Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.8 18.1
  SAY #37329 /* ~Du wirfst einen Blick über deine Schulter und siehst Karina in der Nähe vorbeigehen. Corvus scheint mit den Augen an ihr zu hängen, wie sie dort umhergeht.~ */
  IF ~~ THEN REPLY #37330 /* ~"Ihr Name ist Karina."~ */ GOTO 14
  IF ~~ THEN REPLY #37331 /* ~Tu so, als ob du die Situation nicht bemerkst.~ */ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #37332 /* ~Schließlich wendet er dir seine Aufmerksamkeit wieder zu. "Wie bitte? Kennst du sie, Bürger?" Er sieht sich wieder nach Karina um. "Eine Stimme wie ein Engel und so ein hübsches junges Ding..."~ */
  IF ~~ THEN REPLY #37333 /* ~"Ja, und sie ist auch einsam... Ich bin sicher, sie würde die Gesellschaft eines Gentleman begrüßen..."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Karina_Friend","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Corvus_1","GLOBALGood",1)
~ JOURNAL #36027 /* ~Die Harmonium-Wache, Corvus, schien besessen von einer jungen Frau namens Karina zu sein. Ich habe ihm erzählt, daß sie einsam ist und einen Freund braucht.~ */ GOTO 15
  IF ~~ THEN REPLY #37334 /* ~"Natürlich. Ich bin sicher, all ihre Verehrer sagen dasselbe über sie..."~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaotic_Corvus_1","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #37335 /* ~"Ich will dich noch was fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 14.0 18.3
  SAY #37336 /* ~Er wirft dir einen Blick zu, dann wieder Karina. "Entschuldige mich einen Moment, Bürger." Er dreht sich um und geht auf Karina zu.~ */
  IF ~~ THEN REPLY #37342 /* ~"Also gut."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #37343 /* ~Corvus kommt fröhlich lächelnd zurück. "Danke, mein Freund. Eine wundervolle junge Dame..." Er sieht dich mit glasigem Blick an.~ */
  IF ~~ THEN REPLY #37344 /* ~"War mir ein Vergnügen. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37345 /* ~"Leb wohl, Corvus."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY #37346 /* ~Er seufzt und wendet dir seine Aufmerksamkeit wieder zu. Er macht nicht gerade einen glücklichen Eindruck. "Was sagtest du, Bürger?"~ */
  IF ~~ THEN REPLY #37347 /* ~"Ich habe da ein paar Fragen an dich..."~ */ GOTO 2
END

IF WEIGHT #6 /* Triggers after states #: 22 20 21 33 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #37348 /* ~Du siehst Corvus, die Wache vom Harmonium. "Hallo, Bürger. Wie kann ich Dir zu Diensten sein?" Er wirft einen Blick über deine Schulter, als ob er nach jemandem Ausschau hält.~ */
  IF ~~ THEN REPLY #37349 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~  Global("Karina_Friend","GLOBAL",1)
~ THEN REPLY #37350 /* ~Versuch zu erkennen, wo er gerade hinschaut.~ */ GOTO 13
  IF ~  Global("Karina_Friend","GLOBAL",0)
~ THEN REPLY #37351 /* ~Versuch zu erkennen, wo er gerade hinschaut.~ */ GOTO 19
  IF ~  Global("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37352 /* ~"Ich habe herausgefunden, daß Karina mit niemandem zusammen ist. Ich denke, ihr würde die Gesellschaft eines Gentlemans gefallen..."~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Corvus_1","GLOBALGood",1)
~ JOURNAL #36027 /* ~Die Harmonium-Wache, Corvus, schien besessen von einer jungen Frau namens Karina zu sein. Ich habe ihm erzählt, daß sie einsam ist und einen Freund braucht.~ */ GOTO 15
  IF ~~ THEN REPLY #37353 /* ~"Ich glaube nicht, daß du das kannst. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.9 18.2
  SAY #37354 /* ~Du blickst über deine Schulter und siehst eine junge Dame über den Markt schlendern. Corvus scheint mit den Augen an ihr zu hängen.~ */
  IF ~~ THEN REPLY #37355 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37356 /* ~"Du scheinst in Gedanken zu sein. Was siehst du an?"~ */ GOTO 43
  IF ~~ THEN REPLY #66273 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 33 even though they appear after this state */
~  Dead("Karina")
~ THEN BEGIN 20 // from:
  SAY #37357 /* ~Du siehst einen von der Harmonium-Wache. Er wirkt außer sich und kann sich kaum unter Kontrolle halten. "Vergib mir, Bürger. Ich kann jetzt nicht mit dir sprechen... Ich habe einen großen Verlust erlitten und möchte gerne alleine sein."~ */
  IF ~~ THEN REPLY #37358 /* ~Geh.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 33 even though they appear after this state */
~  Dead("Karina")
NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from:
  SAY #37359 /* ~Du siehst Corvus, die Wache vom Harmonium. Er wirkt außer sich und kann sich kaum unter Kontrolle halten. "Vergib mir, Bürger. Ich kann jetzt nicht mit dir sprechen... Ich habe einen großen Verlust erlitten und möchte gerne alleine sein."~ */
  IF ~~ THEN REPLY #37360 /* ~Geh.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 33 even though they appear after this state */
~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #37361 /* ~Du siehst Corvus, die Wache vom Harmonium. Er lächelt dich an, als du näher kommst und verneigt sich leicht in deine Richtung. "Hallo, mein Freund. Ich hoffe, dir geht es gut."~ */
  IF ~~ THEN REPLY #37362 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37363 /* ~"Wie läuft's mit dir und Karina?"~ */ GOTO 23
  IF ~~ THEN REPLY #37364 /* ~"Ich muß jetzt weiter, Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY #37365 /* ~Er lächelt von einem Ohr zum anderen. "Ja danke, uns geht es gut. Ich stehe tief in deiner Schuld."~ */
  IF ~~ THEN REPLY #37366 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37367 /* ~"War mir ein Vergnügen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.3
  SAY #37368 /* ~Er runzelt nachdenklich die Stirn. "Lenny... ja, ich kenne einen Dieb mit diesem Namen. Er ist normalerweise dort hinten beim Belagerungsturm zu finden."~ */
  IF ~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37369 /* ~"Was kannst du mir über ihn erzählen?"~ */ JOURNAL #36025 /* ~Corvus hat gesagt, daß Lenny ein Meisterdieb sei, der der Festnahme mehrmals entgangen sei. Er sagt außerdem, daß Lenny eine moralische Person sei, die nie jemandem ein Leid antun würde. ~ */ GOTO 25
  IF ~  GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #37370 /* ~"Was kannst du mir über ihn erzählen?"~ */ GOTO 30
  IF ~~ THEN REPLY #37371 /* ~"Danke. Ich muß jetzt los, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #37373 /* ~"Offiziell: nichts." Er hält einen Moment inne, bevor er weiterredet. "Inoffiziell: er ist ein Dieb, ein guter sogar - ein Meister seiner Kunst, würde ich sagen. Und obwohl er ein Dieb ist, scheint er doch ethische Grundsätze zu haben: Er ist noch nie wegen Überfall oder Mord verdächtigt worden. Er hat das Gesetz schon viele Male umgangen..." Er hält inne.~ */
  IF ~~ THEN REPLY #37374 /* ~"Sonst noch was?"~ */ JOURNAL #36024 /* ~Corvus hat mir gesagt, daß er Lenny genug vertraut, um ihm den Rücken zuzukehren. ~ */ GOTO 26
  IF ~~ THEN REPLY #37375 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37376 /* ~"Danke. Ich muß jetzt los, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #37377 /* ~"Ja... Ich würde Lenny bedenkenlos den Rücken zuwenden. Es gibt nur wenige Leute, von denen ich das sagen würde, und Lenny ist einer von ihnen." Er zuckt die Achseln. "Das ist alles, mein Freund."~ */
  IF ~~ THEN REPLY #37378 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37379 /* ~"Danke. Ich muß jetzt los, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 2.4
  SAY #37380 /* ~Er runzelt die Stirn und nickt. "Ja, Byron ist mir ein Begriff."~ */
  IF ~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37381 /* ~"Was kannst du mir über ihn erzählen?"~ */ JOURNAL #36023 /* ~Corvus sagt, daß Byron Nimms unter dem Verdacht steht, ein Krimineller zu sein. Er soll hinter den meisten Verbrechen auf dem Straßenmarkt im Unteren Bezirk stecken. ~ */ GOTO 28
  IF ~  GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #37382 /* ~"Was kannst du mir über ihn erzählen?"~ */ GOTO 30
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37383 /* ~"Ich habe Beweise dafür, daß er hier in Sigil in kriminelle Aktivitäten verwickelt ist."~ */ GOTO 31
  IF ~~ THEN REPLY #37384 /* ~"Danke. Ich muß jetzt los, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #37385 /* ~"Offiziell:nichts." Er hält einen Moment inne, bevor er weiterredet. "Inoffiziell: Er wird verdächtigt, hinter den meisten der kriminellen Aktivitäten hier auf dem Markt zu stecken. Wir glauben auch, daß er für den Mord an einem Kaufmann namens Zac verantwortlich ist. Die Liste der vermuteten Verbrechen ist ziemlich lang." Er hält inne.~ */
  IF ~~ THEN REPLY #37386 /* ~"Sonst noch was?"~ */ JOURNAL #37391 /* ~Corvus sagt, er würde Byron Nimms nie den Rücken zukehren oder irgendwo mit ihm allein sein wollen.~ */ GOTO 29
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37387 /* ~"Ich habe Beweise dafür, daß er hier in Sigil in kriminelle Aktivitäten verwickelt ist."~ */ GOTO 31
  IF ~~ THEN REPLY #37388 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37389 /* ~"Danke. Ich muß jetzt los, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #37392 /* ~"Ja... Ich würde ihm nicht so einfach meinen Rücken zukehren, und ich würde es mir gut überlegen, irgendwo mit ihm alleine zu sein." Er zuckt die Achseln. "Das ist alles, mein Freund."~ */
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37393 /* ~"Ich habe Beweise dafür, daß er hier in Sigil in kriminelle Aktivitäten verwickelt ist."~ */ GOTO 31
  IF ~~ THEN REPLY #37394 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37395 /* ~"Danke. Ich muß jetzt los, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.1 27.1
  SAY #37396 /* ~Er sieht dich scharf an. "Alles, was ich über dieses Individuum weiß, ist Sache des Harmoniums, Bürger. Ich kann solche Angelegenheiten nicht mit Fremden besprechen. Vielleicht wenn ich dich besser kenne..."~ */
  IF ~~ THEN REPLY #37397 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37398 /* ~"Danke. Ich muß jetzt los, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2 28.1 29.0
  SAY #37399 /* ~Er wirft die einen interessierten Blick zu. "Oh? Kann ich dieses Beweismaterial mal sehen?"~ */
  IF ~  !Dead("Byron")
~ THEN REPLY #37400 /* ~Gib ihm die Papiere.~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",5)
AddexperienceParty(2000)
TakePartyItemNum("Evidence",1)
~ JOURNAL #37403 /* ~Ich habe Corvus, der Harmonium-Wache, die Beweise dafür übergeben, daß Byron Nimms ein Krimineller ist. Er hat Byron festgenommen und dafür gesorgt, daß er vor Gericht kommt und seine gerechte Strafe erhält.~ */ GOTO 32
  IF ~  Dead("Byron")
~ THEN REPLY #37401 /* ~Gib ihm die Papiere.~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",5)
AddexperienceParty(2000)
TakePartyItemNum("Evidence",1)
~ JOURNAL #37403 /* ~Ich habe Corvus, der Harmonium-Wache, die Beweise dafür übergeben, daß Byron Nimms ein Krimineller ist. Er hat Byron festgenommen und dafür gesorgt, daß er vor Gericht kommt und seine gerechte Strafe erhält.~ */ GOTO 34
  IF ~~ THEN REPLY #37402 /* ~"Laß mich darüber nachdenken. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #39441 /* ~"Ich sollte wohl besser gehen. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #37404 /* ~Er geht die Papiere genau durch, faltet sie dann sorgfältig und steckt sie ein. Er nickt dir zu und lächelt. "Hervorragende Arbeit, Bürger. Der Inhalt dieser Dokumente ist äußerst detailliert. Ich werde mich persönlich darum kümmern, daß Byron Nimms vor die Gerichte kommt." Er grüßt und wendet sich dann zum Gehen. "Ich bin gleich wieder zurück."~ */
  IF ~~ THEN REPLY #37405 /* ~"Also gut."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Byron_Arrested","GLOBAL",1)
~ GOTO 33
END

IF WEIGHT #1 ~  Global("Byron_Arrested","GLOBAL",3)
~ THEN BEGIN 33 // from: 32.0
  SAY #37406 /* ~Er ist bald wieder zurück und lächelt dich an. "Das wäre erledigt. Nimms macht die Straßen nicht länger unsicher, das Beweismaterial wurde den Gerichten vorgelegt, und er wird bald angeklagt werden." Er macht eine leichte Verbeugung vor dir. "Ich möchte dir nochmals danken."~ */
  IF ~~ THEN REPLY #37407 /* ~"Gern geschehen. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37408 /* ~"Danke. Ich muß jetzt los, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1
  SAY #39442 /* ~Er überprüft die Papiere sorgfältig, faltet die dann zusammen und steckt sie weg. Er nickt dir zu und lächelt. "Hervorragende Arbeit, Bürger. Ich werde dafür sorgen, daß diese Dokumente den Gerichten vorgelegt werden, damit alle von Byrons Niedertracht erfahren." Er runzelt die Stirn. "Allerdings ist Byron Nimms tot und steht jetzt vor einem höheren Gericht."~ */
  IF ~~ THEN REPLY #39443 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #39444 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 2.5
  SAY #43033 /* ~Er runzelt dir Stirn und denkt kurz nach. "Hm, die Anarchisten sind über die ganze Stadt verstreut, Bürger. Solange sie nicht gegen das Gesetz verstoßen, kann man sehr wenig gegen sie unternehmen."~ */
  IF ~  Global("Kill_Vorten","GLOBAL",0)
~ THEN REPLY #43034 /* ~"Ich dachte, man müsse was gegen sie unternehmen, bevor sie Schaden anrichten, weil sie ein gefährliches Element sind?"~ */ GOTO 36
  IF ~  Global("Kill_Vorten","GLOBAL",1)
!Dead("Vorten")
~ THEN REPLY #43035 /* ~"Ihr Anführer wollte, daß ich einen Offizier des Harmoniums namens Vorten vom Dritten Rang töte."~ */ GOTO 37
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
Dead("Vorten")
GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #43036 /* ~"Tja, ich weiß aus zuverlässiger Quelle, daß sie für den Tod von Vorten vom Dritten Rang verantwortlich sind."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",5)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
AddexperienceParty(2000)
~ GOTO 40
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
Dead("Vorten")
GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #43037 /* ~"Tja, ich weiß aus zuverlässiger Quelle, daß sie für den Tod von Vorten vom Dritten Rang verantwortlich sind."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",6)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
AddexperienceParty(2000)
~ GOTO 41
  IF ~~ THEN REPLY #43038 /* ~"Aha. Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #43039 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #43040 /* ~Er seufzt. "Ich teile diese Ansicht, Bürger. Aber es ist nicht meine Art, durch die Gegend zu rennen und Leuten die Köpfe einzuschlagen, ohne ihre Missetaten beweisen zu können. Wenn du mir einen triftigen Grund nennst, werde ich dafür sorgen, daß etwas gegen die Anarchisten unternommen wird. Andernfalls haben sie das Recht, sich zu versammeln und zu diskutieren."~ */
  IF ~~ THEN REPLY #43041 /* ~"Aha. Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #43042 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY #43043 /* ~Er schaut dich besorgt an. "Das ist ein schwerer Vorwurf, Bürger. Bist du sicher, daß du eine derartige Anschuldigung gegen sie vorbringen willst?"~ */
  IF ~~ THEN REPLY #43044 /* ~"Ja."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",4)
AddexperienceParty(2000)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
~ JOURNAL #66535 /* ~Ich habe Corvus erzählt, daß der Anarchist mich gebeten hat, Vorten, den Dritten Rang des Harmoniums, zu töten. Er hat gesagt, er werde sich schon darum kümmern.~ */ GOTO 38
  IF ~~ THEN REPLY #43045 /* ~"Nein, ich glaub nicht."~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #43046 /* ~"Gut. Ich werde dafür sorgen, daß sie zur Rechenschaft gezogen werden. Ausgezeichnete Arbeit, Bürger." Er lächelt dich an.~ */
  IF ~~ THEN REPLY #43047 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #43048 /* ~Er zuckt mit den Achseln. "In diesem Fall gibt es nichts mehr zu besprechen."~ */
  IF ~~ THEN REPLY #43049 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 35.2
  SAY #43050 /* ~"Wie kannst du das wissen... wenn du da nicht selbst mit drinsteckst?" Er starrt dich eine Weile an, bevor er fortfährt. "Weil du ein Freund bist, werde ich vergessen, wer mir diese Worte zugetragen hat. Ich werde dafür sorgen, daß die Anarchisten zur Rechenschaft gezogen werden. Guten Tag, Bürger."~ */
  IF ~~ THEN REPLY #43052 /* ~"Leb wohl."~ */ JOURNAL #66536 /* ~Ich habe Corvus erzählt, daß die Anarchisten für den Tod von  Vorten, dem Dritten Rang des Harmoniums, zuständig sind. Er hat sofort den Verdacht gehabt, daß ich in die Sache verwickelt sein könnte, hat aber nicht weiter darauf bestanden. Ich bin sicher, daß er die Sache nur wegen unserer Freundschaft auf sich hat beruhen lassen. Er hat gesagt, er werde sich um die Anarchisten kümmern.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 35.3
  SAY #43053 /* ~"Wie kannst du das wissen, wenn du da nicht selbst mit drinsteckst?" Er starrt dich eine Weile an, bevor er fortfährt. "Ich werde dafür sorgen, daß die Anarchisten zur Rechenschaft gezogen werden. Guten Tag."~ */
  IF ~~ THEN REPLY #43054 /* ~"Leb wohl."~ */ DO ~Enemy()
~ JOURNAL #66537 /* ~Ich habe Corvus erzählt, daß die Anarchisten für den Tod von Vorten, dem Dritten Rang des Hramoniums, zuständig sind. Er hat sofort den Verdacht gehabt, daß ich in die Sache verwickelt sein könnte, hat aber nicht weiter darauf bestanden. Jetzt spricht er allerdings nicht mehr mit mir.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 2.10
  SAY #66251 /* ~"Alles, was ich darüber weiß, ist Angelegenheit des Harmoniums, Bürger. Ich darf über solche Dinge nicht sprechen..." Er macht eine Pause. "Alles, was ich dazu sagen kann, ist, daß Zac ermordet worden ist und eine Untersuchung durchgeführt wird. Wenn Euch etwas auffällt, das die Ermittlungen voranbringt, setzt mich davon in Kenntnis." ~ */
  IF ~~ THEN REPLY #66252 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #66253 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 19.1
  SAY #66266 /* ~Er schenkt seine Aufmerksamkeit wieder dir. "Ich bitte um Entschuldigung, Bürger. Bitte entschuldigt mich..." Seine Augen betrachten wieder die junge Frau, und seine Stimme verwandelt sich fast in ein Flüstern. "Sie hat die Stimme eines Engels, und sie ist so ein hübsches junges Ding..." Er seufzt.~ */
  IF ~~ THEN REPLY #66267 /* ~"Warum gehst du nicht zu ihr und sprichst sie an? Sie scheint dir ziemlich den Kopf verdreht zu haben..."~ */ JOURNAL #66539 /* ~Corvus scheint von einer jungen Frau auf dem Straßenmarkt besessen zu sein. Ich habe ihm gesagt, daß er mit ihr reden soll, aber... Er scheint zu denken, daß sie zu gut für ihn ist. Vielleicht spreche ich mal mit ihr und sehe, wie sie so ist.~ */ GOTO 44
  IF ~~ THEN REPLY #66268 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #66269 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #66270 /* ~Es folgt ein unangenehmes Schweigen. Schließlich wendet er sich wieder dir zu. "Ich,... ich kann es einfach nicht. Ich meine, eine Frau wie diese... Nun ja, sie ist bestimmt..." Er seufzt und macht eine kurze Pause. "Kann ich Euch sonst noch irgendwie behilflich sein, Bürger?"~ */
  IF ~~ THEN REPLY #66271 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #66272 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END
