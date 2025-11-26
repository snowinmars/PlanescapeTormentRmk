// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DECCO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DECCO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 25 26 37 45 46 even though they appear after this state */
~  GlobalLT("Ecco_Name","AR0605",2)
~ THEN BEGIN 0 // from:
  SAY #38209 /* ~Die Haut dieser bemerkenswerten Frau hat die Farbe von glänzendem Kupfer. Ein durchscheinendes, weißes Kleid, das gerade so von zwei goldenen Spangen gehalten wird, ist sorgfältig um ihre wohlgeformte Figur gehüllt.~ */
  IF ~  Global("Ecco","GLOBAL",0)
~ THEN REPLY #38269 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Ecco","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Ecco","GLOBAL",1)
~ THEN REPLY #38270 /* ~"Sei gegrüßt, ich bin's wieder..."~ */ GOTO 1
  IF ~~ THEN REPLY #38271 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #2909 /* ~Die Frau nickt und lächelt flüchtig. Der Durft ihres Haars, das verführersich parfpümiert ist, steigt dir in die Nase.~ */
  IF ~~ THEN REPLY #38272 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38273 /* ~"Ich werd dann mal gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 5.1 6.4 7.1 10.6 11.1 12.1 13.1 14.1 15.1 16.1 25.0 29.0 30.0 40.0 41.0 42.0 43.1 44.0 45.0 46.0 47.1 49.0 51.1 52.1 53.1 54.0 55.0
  SAY #2910 /* ~Sie nickt.~ */
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38274 /* ~"Heißt du Ecco?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~Ich habe mir die Bestätigung geholt, daß der Name der 'schweigenden' Prostituierten 'Ecco' ist.~ */ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalLT("Ecco_Rumor_6","AR0605",2)
~ THEN REPLY #38276 /* ~"Darf ich fragen, warum du nichts sagen kannst?"~ */ GOTO 10
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38278 /* ~"Kennst du *irgendeine* Möglichkeit, wie du deine Stimme zurückbekommen könntest?"~ */ GOTO 21
  IF ~  GlobalLT("Ecco_Name","AR0605",2)
~ THEN REPLY #38279 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38283 /* ~"Was machst du hier?~ */ GOTO 51
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38284 /* ~"Kannst du mir was über diesen Ort erzählen?"~ */ GOTO 47
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38285 /* ~"Kannst du mir was über diesen Ort erzählen?"~ */ GOTO 5
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Know_Ravel","GLOBAL",1)
Global("Know_Kesai_Ravel","AR0605",0)
~ THEN REPLY #38286 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ GOTO 48
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #38287 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ GOTO 8
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Scent_Quest","AR0605",1)
~ THEN REPLY #38290 /* ~"Ich versuche, Vivians Duft zu finden... Weißt du, wo er sein könnte?"~ */ JOURNAL #66727 /* ~Eine der Prostituierten hat vorgeschlagen, daß ich Nenny frage, ob sie etwas darüber weiß, wer Vivians persönlichen Duft gestohlen hat. Anscheinend hat Nenny einen Ruf dafür, herumzuwandern und zu beobachten, was andere Leute gerade tun.~ */ GOTO 30
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Scent_Quest","AR0605",1)
~ THEN REPLY #38291 /* ~"Ich versuche, Vivians Duft zu finden... Weißt du, wo er sein könnte?"~ */ GOTO 29
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Veil_Quest","AR0605",1)
~ THEN REPLY #38292 /* ~"Ich versuche, Marissas Purpurschleier zu finden... Weißt du, wo er sein könnte?"~ */ JOURNAL #66728 /* ~Eine der Prostituierten hat vorgeschlagen, daß ich Nenny frage, ob sie irgendwo Marissas Purpurschleier gesehen hat. Anscheinend hat Nenny einen Ruf dafür, herumzuwandern und zu beobachten, was andere Leute gerade tun.~ */ GOTO 30
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Veil_Quest","AR0605",1)
~ THEN REPLY #38293 /* ~"Ich versuche, Marissas Purpurschleier zu finden... Weißt du, wo er sein könnte?"~ */ GOTO 29
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38294 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 53
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38295 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 54
  IF ~~ THEN REPLY #38296 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3
  SAY #38210 /* ~Sie lächelt und macht einen Knicks, antwortet jedoch nicht.~ */
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38280 /* ~"Heißt du Ecco?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~Ich habe mir die Bestätigung geholt, daß der Name der 'schweigenden' Prostituierten 'Ecco' ist.~ */ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38297 /* ~"Kannst du sprechen?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38281 /* ~"Hmm. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38298 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 5.0 6.3 9.0 53.0
  SAY #38211 /* ~Sie schüttelt den Kopfe und lächelt dich traurig an.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN JOURNAL #66704 /* ~Eine der Prostituierten, die ich im Bordell getroffen habe, hat irgendwie ihre Fähigkeit zu kommunizieren verloren... Sie kann - oder will- nicht einmal schreiben oder sich mit Pantomimen verständlich machen. Bis sie wieder sprechen kann, werde ich sie nicht befragen können...~ */ EXTERN ~DMORTE~ 402
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #38299 /* ~"Kannst du wenigstens schreiben? Oder Pantomime?"~ */ JOURNAL #66704 /* ~Eine der Prostituierten, die ich im Bordell getroffen habe, hat irgendwie ihre Fähigkeit zu kommunizieren verloren... Sie kann - oder will- nicht einmal schreiben oder sich mit Pantomimen verständlich machen. Bis sie wieder sprechen kann, werde ich sie nicht befragen können...~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 2.6
  SAY #38212 /* ~Sie sieht dich an und zieht dann eine Augenbraue nach oben.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38300 /* ~"Kannst du sprechen?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38301 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38302 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.0 21.1
  SAY #38213 /* ~Sie nickt und lächelt freundlich.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38303 /* ~Eid: "Ich schwöre, daß ich nach einer Möglichkeit suchen werde, dir deine Stimme zurückzugeben."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ecco_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38304 /* ~"Ich werde versuchen, eine Möglichkeit zu finden, dir deine Stimme zurückzugeben."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38305 /* ~"Ich kann versuchen, dir deine Stimme zurückzugeben... aber das kostet was."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ecco_1","GLOBALGood",-1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",2)
~ GOTO 24
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38306 /* ~"Kannst du sprechen?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38307 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #52815 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #38214 /* ~Sie macht einen Schmollmund und schüttelt den Kopf.~ */
  IF ~~ THEN REPLY #38308 /* ~"Darf ich fragen, warum du nichts sagen kannst?"~ */ GOTO 10
  IF ~~ THEN REPLY #38309 /* ~"Egal, ich hatte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38310 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.8
  SAY #38215 /* ~Ihre Augen blitzen auf, und sie lächelt. Sie nickt dir zu.~ */
  IF ~~ THEN REPLY #38311 /* ~"Was? Was weißt du von ihr?"~ */ JOURNAL #66724 /* ~Die schweigende Prostituierte scheint etwas über Ravel Rätselschön zu wissen... Aber sie kann nicht kommunizieren und mir sagen, was es ist.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38216 /* ~Sie sieht dich einfach nur an.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38312 /* ~"Kannst du sprechen?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #38313 /* ~"Darf ich fragen, warum du nichts sagen kannst?"~ */ GOTO 10
  IF ~~ THEN REPLY #38314 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 7.0 9.1 11.0 12.0 13.0 14.0 15.0
  SAY #38217 /* ~Sie seufzt ganz leicht und nickt.~ */
  IF ~  Global("Ecco_Rumor_1","AR0605",1)
~ THEN REPLY #38315 /* ~"Schweigst du, weil dein Herz gebrochen ist?"~ */ DO ~SetGlobal("Ecco_Rumor_1","AR0605",2)
~ GOTO 11
  IF ~  Global("Ecco_Rumor_2","AR0605",1)
~ THEN REPLY #38316 /* ~"Kennst du das Wort, welches das Multiversum auflöst, wenn es ausgesprochen wird?"~ */ DO ~SetGlobal("Ecco_Rumor_2","AR0605",2)
~ GOTO 12
  IF ~  Global("Ecco_Rumor_3","AR0605",1)
~ THEN REPLY #38317 /* ~"Ist deine Seele verwundet? Kannst du deshalb nicht sprechen?"~ */ DO ~SetGlobal("Ecco_Rumor_3","AR0605",2)
~ GOTO 13
  IF ~  Global("Ecco_Rumor_4","AR0605",1)
~ THEN REPLY #38318 /* ~"Hat deine Stimme jemandem den Tod gebracht, oder gab es eine ähnliche Tragödie?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",2)
~ GOTO 14
  IF ~  Global("Ecco_Rumor_5","AR0605",1)
~ THEN REPLY #38319 /* ~"Hast du aus irgendeinem Grund einen Eid abgelegt, niemals zu sprechen?"~ */ DO ~SetGlobal("Ecco_Rumor_5","AR0605",2)
~ GOTO 15
  IF ~  Global("Ecco_Rumor_6","AR0605",1)
~ THEN REPLY #38320 /* ~"Wurde deine Stimme gestohlen?"~ */ DO ~SetGlobal("Ecco_Rumor_6","AR0605",2)
SetGlobal("Ecco_Speak","GLOBAL",2)
~ JOURNAL #66725 /* ~Es scheint, was Dolora mir über Ecco gesagt hat, stimmt - Sie kann nicht sprechen, weil ihre Stimme gestohlen worden ist.~ */ GOTO 16
  IF ~~ THEN REPLY #38321 /* ~"Ich möchte dich etwas anderes fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38322 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #38218 /* ~Sie lächelt freundlich und schüttelt dann den Kopf.~ */
  IF ~~ THEN REPLY #38323 /* ~"Darf ich fragen, ob es dann etwas anderes war?"~ */ GOTO 10
  IF ~~ THEN REPLY #38324 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38325 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #38219 /* ~Sie reißt ihre Augen vor Überraschung weit auf... strahlt dich an, rollt mit den Augen und schüttelt den Kopf.~ */
  IF ~~ THEN REPLY #38326 /* ~"Darf ich fragen, ob es dann etwas anderes war?"~ */ GOTO 10
  IF ~~ THEN REPLY #38327 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38328 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #38220 /* ~Sie wirft dir einen merkwürdigen Blick zu und schüttelt langsam den Kopf...~ */
  IF ~~ THEN REPLY #38329 /* ~"Darf ich fragen, ob es dann etwas anderes war?"~ */ GOTO 10
  IF ~~ THEN REPLY #38330 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38331 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #38221 /* ~Als du das sagst, hält sie inne, öffnet den Mund und runzelt dann die Stirn. Schließlich schüttelt sie den Kopf.~ */
  IF ~~ THEN REPLY #38332 /* ~"Darf ich fragen, ob es dann etwas anderes war?"~ */ GOTO 10
  IF ~~ THEN REPLY #38333 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38334 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #38222 /* ~Sie blickt dich finster an und schüttelt den Kopf.~ */
  IF ~~ THEN REPLY #38335 /* ~"Darf ich fragen, ob es dann etwas anderes war?"~ */ GOTO 10
  IF ~~ THEN REPLY #38336 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38337 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.5
  SAY #38223 /* ~Sie nickt nachdrücklich, hält ihre Hände zusammen und lächelt dich an.~ */
  IF ~~ THEN REPLY #38338 /* ~"Kennst du *irgendeine* Möglichkeit, wie du deine Stimme zurückbekommen könntest?"~ */ GOTO 21
  IF ~~ THEN REPLY #38339 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38340 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #38224 /* ~Sie gibt keinen Ton von sich und blickt dich frustriert an.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #38225 /* ~Sie schüttelt den Kopf.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #38226 /* ~Sie hält lange inne und denkt nach... dann schüttelt sie den Kopf. Sie sieht dich flehend an.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #38227 /* ~Sie lächelt und nickt nachdrücklich. Sie wirkt äußerst erleichtert.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 2.2 16.0
  SAY #38228 /* ~Sie schüttelt den Kopf, auf ihrem Gesicht zeichnet sich Frustration ab. Plötzlich sieht sie dich bittend an, als erwarte sie eine Antwort.~ */
  IF ~  Global("Ecco_Name","AR0605",0)
~ THEN REPLY #38349 /* ~"Ich muß deinen Namen wissen, damit ich mich nach deiner Stimme erkundigen kann..."~ */ GOTO 22
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38350 /* ~"Ich muß deinen Namen wissen, um mich nach deiner Stimme zu erkundigen. Ist dein Name Ecco?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~Ich habe mir die Bestätigung geholt, daß der Name der 'schweigenden' Prostituierten 'Ecco' ist.~ */ GOTO 6
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38351 /* ~Eid: "Ich schwöre, daß ich eine Möglichkeit suchen werde, dir deine Stimme zurückzugeben."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ecco_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38352 /* ~"Ich werde versuchen, eine Möglichkeit zu finden, dir deine Stimme zurückzugeben."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38353 /* ~"Ich kann versuchen, dir deine Stimme zurückzugeben... aber das kostet was."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ecco_1","GLOBALGood",-1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",2)
~ GOTO 24
  IF ~~ THEN REPLY #38354 /* ~"Ich geh dann besser. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #38229 /* ~Sie zuckt die Achseln und runzelt die Stirn.~ */
  IF ~~ THEN REPLY #38357 /* ~"Dann frage ich wohl besser jemand anderen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 6.0 6.1 21.2 21.3
  SAY #38230 /* ~Ecco nickt langsam und lächelt dich dankbar an.~ */
  IF ~~ THEN REPLY #38358 /* ~"Dann werde ich nach etwas suchen, daß dir eine Stimme verleiht. Auf Wiedersehen, Ecco."~ */ JOURNAL #66726 /* ~Ich habe Ecco gesagt, daß ich versuchen werde, etwas zu finden, das ihr ihre Stimme wiedergibt.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 6.2 21.4
  SAY #38231 /* ~Ecco runzelt die Stirn, und ihre Augen verengen sich zu Schlitzen. Sie wendet kurz ihren Blick ab, seufzt und nickt dann.~ */
  IF ~~ THEN REPLY #38359 /* ~"Abgemacht. Ich nach etwas suchen, daß dir eine Stimme verleiht. Auf Wiedersehen."~ */ JOURNAL #66726 /* ~Ich habe Ecco gesagt, daß ich versuchen werde, etwas zu finden, das ihr ihre Stimme wiedergibt.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 37 45 46 even though they appear after this state */
~  Global("Ecco_Name","AR0605",2)
~ THEN BEGIN 25 // from:
  SAY #38232 /* ~Ecco macht einen Knicks, als du dich näherst, und ihre Lippen formen ein ganz feines Lächeln.~ */
  IF ~~ THEN REPLY #38360 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38361 /* ~"Ich wollte nur mal vorbeischauen, Ecco. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 37 45 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #38233 /* ~Ecco sieht dich hoffnungsvoll an, als du näher kommst, und beißt sich auf die Unterlippe.~ */
  IF ~  PartyHasItem("Ftongue")
~ THEN REPLY #38362 /* ~"Ich habe diese Zunge eines Scheusals für dich besorgt..."~ */ DO ~DestroyPartyItem("Ftongue",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",4)
~ GOTO 31
  IF ~~ THEN REPLY #38364 /* ~"Ich habe noch kein Mittel gefunden, um den Fluch zu brechen. Ich komme wieder, wenn ich eines habe."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #38234 /* ~Sie sieht dich einen Augenblick lang mit großen Augen an und nickt dann.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #38235 /* ~Ecco seufzt verzweifelt und läßt ihre Schultern hängen. Sie sieht zu dir auf und schüttelt den Kopf.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.10 2.12
  SAY #38236 /* ~Sie schüttelt den Kopf, zieht die Schultern hoch und sieht dich bedauernd an.~ */
  IF ~~ THEN REPLY #38368 /* ~"Dann würde ich gern etwas anderes fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38369 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 2.9 2.11
  SAY #38237 /* ~Ecco schüttelt den Kopf. "Nein, ich habe keine Ahnung. Hast du schon mal mit Nenny gesprochen? Sie treibt sich doch überall herum, und nimmt mit ihren großen Augen alles auf."~ */
  IF ~~ THEN REPLY #38370 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38371 /* ~"Ich werde jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.0
  SAY #38238 /* ~Sie zieht eine Augenbraue nach oben und blickt dich skeptisch an.~ */
  IF ~~ THEN REPLY #38372 /* ~"Man hat mir gesagt, wenn du sie in den Mund nimmst, wirst du wieder sprechen können."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #38239 /* ~Sie nickt und nimmt die Flasche von dir. Sie zieht die abgetrennte Zunge mit spitzen Fingern aus der Salzlösung, starrt sie einen Moment lang angeekelt an und nimmt sie dann in den Mund... plötzlich weiten sich ihre Augen und zwischen ihren Lippen ist ein Strahl rötliches Licht sichtbar!~ */
  IF ~~ THEN REPLY #38373 /* ~"Geht's dir nicht gut?"~ */ GOTO 33
  IF ~~ THEN REPLY #38374 /* ~Warte auf ihre Antwort.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #38240 /* ~Ecco öffnet den Mund, schließt ihn, öffnet ihn erneut... und spricht! "Ich... ich kann wieder sprechen! Oh, welch Freude! Ich dank- VERDAMMT SOLLST DU SEIN IN DIE DUNKELSTE ALLER GRUBEN, DU STINKENDER WURM! KNIE IN DEMUT NIEDER VOR MIR, INSEKT!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 403
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #38375 /* ~"Hä?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #38241 /* ~Ecco schreit auf und hält sich mit beiden Händen den Mund zu... ihre Augen sind vor Panik weit aufgerissen.~ */
  IF ~~ THEN REPLY #38376 /* ~"Das muß die... Zunge des Scheusals sein..."~ */ JOURNAL #66729 /* ~Ich habe Ecco die Zunge eines Scheusals gegeben, von der Vrischika mir erzählt hat, daß sie jedem Wesen die Fähigkeit zu sprechen geben würde. Das Ergebnis ist allerdings überhaupt nicht befriedigend... Die Zunge scheint eine Menge zu sagen zu haben, und Ecco ist darüber nicht allzu glücklich. Jetzt muß ich *wieder* etwas finden, daß die Wirkung der Zunge des Scheusals aufhebt...~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #38242 /* ~Sie nimmt langsam ihre Hände vom Mund und nickt. "Es sieht so aus, als müßte ich DEINE ZARTE SCHALE VERSCHLINGEN UND DEINE SEELE FÜR ALLE EWIGKEIT DEM ABGRUND ÜBERGEBEN! DU SOLLT MIR IN MEINER SCHLACHT DIENEN - BIS DIE EBENEN KNIRSCHEND ZUM STEHEN KOMMEN! DU BIST MEIN, MEIN, MEI-" Ecco schließt den Mund wieder und fängt leise an zu weinen.~ */
  IF ~  PartyHasItem("Dtears")
~ THEN REPLY #66730 /* ~"Moment... Probier es mal mit diesen Devas Tränen... Sie dürften den Fluch lindern, der auf deinen Lippen liegt."~ */ DO ~DestroyPartyItem("Dtears",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",5)
AddexperienceParty(30000)
~ JOURNAL #66732 /* ~Ich habe Ecco die Tränen des Devas gegeben, die das Fluchen des Scheusals beruhigt haben und es ihr ermöglicht haben, wieder normal zu sprechen. Jetzt wird sie mir alle meine Fragen beantworten können...~ */ GOTO 38
  IF ~  Global("CW_Saw_Tears","GLOBAL",1)
!PartyHasItem("Dtears")
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #66731 /* ~"Moment... Ich glaube, ich weiß einen Weg, wie man dir helfen kann: Devas Tränen. Sie sind allerdings teuer, und ich kann sie mir nicht leisten."~ */ DO ~SetGlobal("Ecco_Note","AR0605",1)
GiveItemCreate("EcNote",Protagonist,1,0,0)
~ JOURNAL #66733 /* ~Ich habe Ecco von den Tränen des Devas erzählt, die ich in Vrischikas Laden gesehen habe, und sie hat mir einen Schuldschein gegeben, damit ich sie ihr besorgen kann.~ */ GOTO 39
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",1)
~ THEN REPLY #38377 /* ~"Ich werde versuchen, einen Weg zu finden, um das in Ordnung zu bringen. Leb wohl."~ */ EXIT
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38378 /* ~"Siehst du, du kannst wieder sprechen... so halbwegs zumindest... Also, wo ist meine Belohnung?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ecco_1","GLOBALLaw",-1)
~ GOTO 36
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38379 /* ~"Ich nehme an, ich bekomme meine Belohnung erst, wenn ich das hier in Ordnung gebracht habe. Ich komme wieder. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.3
  SAY #38243 /* ~Ecco schleudert dir böse Blicke zu und kräuselt ihre Lippen verächtlich.~ */
  IF ~~ THEN REPLY #38380 /* ~"Ich schätze, ich werde meine Belohnung nicht kriegen, bevor ich das in Ordnung bringe. Ich komme wieder... leb wohl."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 45 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",4)
~ THEN BEGIN 37 // from:
  SAY #38244 /* ~Als du dich Ecco näherst, nickt sie dir mit hoffnungsvollem Blick zu.~ */
  IF ~  PartyHasItem("Dtears")
~ THEN REPLY #38381 /* ~"Ich habe dir diese Deva-Tränen mitgebracht... Sie sollten den Fluch der Zunge lindern."~ */ DO ~DestroyPartyItem("Dtears",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",5)
AddexperienceParty(30000)
~ JOURNAL #66732 /* ~Ich habe Ecco die Tränen des Devas gegeben, die das Fluchen des Scheusals beruhigt haben und es ihr ermöglicht haben, wieder normal zu sprechen. Jetzt wird sie mir alle meine Fragen beantworten können...~ */ GOTO 38
  IF ~  Global("CW_Saw_Tears","GLOBAL",1)
!PartyHasItem("Dtears")
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38382 /* ~"Ecco... Ich habe ein Mittel gefunden, dir zu helfen... Deva-Tränen. Sie sind allerdings sehr teuer, und ich kann sie mir nicht leisten."~ */ DO ~SetGlobal("Ecco_Note","AR0605",1)
GiveItemCreate("EcNote",Protagonist,1,0,0)
~ JOURNAL #66733 /* ~Ich habe Ecco von den Tränen des Devas erzählt, die ich in Vrischikas Laden gesehen habe, und sie hat mir einen Schuldschein gegeben, damit ich sie ihr besorgen kann.~ */ GOTO 39
  IF ~~ THEN REPLY #38383 /* ~"Ich habe noch kein Mittel gefunden, dir zu helfen. Aber wenn ich eines habe, komme ich zurück."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.0 37.0
  SAY #38245 /* ~Sie nickt lächelnd und nimmt die Phiole entgegen. Ecco nimmt einige der leuchtend blauen Tropfen auf die Zunge: "Ich... ich glaube, die Tränen wirken. Ja... wirklich! Ich kann wieder in meiner eigenen Stimme sprechen - oh, wie sehr ich Euch danke!" Ecco drückt dir die Hand und neigt dankbar den Kopf; ihre Augen füllen sich vor Freude mit Tränen.~ */
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",1)
~ THEN REPLY #38384 /* ~"Es war mir eine Freude, helfen zu können. Leb wohl, Ecco."~ */ EXIT
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38385 /* ~"Es war mir eine Freude, helfen zu können. Leb wohl, Ecco."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_2","GLOBALGood",1)
~ EXIT
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38386 /* ~"Ich helfe gern... aber die Deva-Tränen haben mich eine Stange gekostet..."~ */ DO ~GivePartyGold(1000)
~ GOTO 40
  IF ~  Global("Ecco_Quest","AR0605",2)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38387 /* ~"War mir ein Vergnügen... Und vergiß die Belohnung, Ecco. Ich freue mich, daß ich helfen konnte."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
GivePartyGold(1000)
~ GOTO 41
  IF ~  Global("Ecco_Quest","AR0605",2)
Global("Ecco_Note","AR0605",1)
~ THEN REPLY #38388 /* ~"War mir ein Vergnügen... Und vergiß die Belohnung, Ecco. Ich freue mich, daß ich helfen konnte."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
~ GOTO 42
  IF ~  Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38389 /* ~"OK, keine Ursache... Und nun zu meiner Belohnung..."~ */ DO ~GivePartyGold(500)
~ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 35.1 37.1
  SAY #38246 /* ~Ecco nickt und zieht ein Stück Papier aus ihrem Kleid... es stellt sich als ein Schuldschein über eintausend Kupfermünzen heraus, die der Besitzer vom Bordell bekommen kann. Sie sieht dich fragend an.~ */
  IF ~~ THEN REPLY #38390 /* ~"Ja... das wird reichen. Ich komme wieder, wenn ich die Tränen habe, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY #38247 /* ~"Oh... Daran hatte ich nicht gedacht! Ja, ja... hier..." Ecco nimmt mehrere in Pergament gewickelte Rollen mit Kupfermünzen aus ihrem Geldbeutel. "Das sollte mehr als genug sein. Ich danke Euch nochmals!" Sie lächelt dich warm an.~ */
  IF ~~ THEN REPLY #66735 /* ~"Natürlich. Und jetzt hätte ich ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38391 /* ~"Leb wohl, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.3
  SAY #38248 /* ~Ecco sieht dich überglücklich an. "Ich danke Euch nochmals!" Sie steht dicht neben dir, um dir etwas ins Ohr zu flüstern; der Duft ihres parfümierten Haars ist geradezu berauschend... "Euer Aussehen täuscht über Eure große Güte hinweg, Herr." Sie küßt dich auf die Wange, tritt zurück und greift in ihren Geldbeutel. "Hier, mein Freund... dies sollte mehr als genug Bezahlung für die Tränen sein. Ich bestehe darauf, daß Ihr es annehmt."~ */
  IF ~~ THEN REPLY #66736 /* ~"Danke. Ich hätte da jetzt ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38392 /* ~"Danke, Ecco. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 38.4
  SAY #38249 /* ~Ecco strahlt vor Glück: "Ich danke dir nochmals!" Sie kommt ganz dicht an dich heran und flüstert dir ins Ohr. Der Geruch ihres parfümierten Haars ist betörend... "Euer Aussehen täuscht über Eure große Freundlichkeit hinweg, Herr." Sie küßt dich auf die Wange und geht lächelnd einen Schritt zurück.~ */
  IF ~~ THEN REPLY #66737 /* ~"Danke. Ich hätte da jetzt ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38393 /* ~"Danke, Ecco. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 38.5
  SAY #38250 /* ~Ecco nickt und wischt sich die letzten Tränen aus den Augen. Sie greift in ihren Geldbeutel und gibt dir mehrere in Pergament gewickelte Rollen mit Kupfermünzen. "Eure Belohnung, Herr... Ihr habt sie Euch wirklich verdient."~ */
  IF ~  Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38386 /* ~"Ich helfe gern... aber die Deva-Tränen haben mich eine Stange gekostet..."~ */ DO ~GivePartyGold(999)
SetGlobal("Ecco","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #66738 /* ~"Danke. Ich hätte da jetzt ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38395 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #38251 /* ~Sie nickt. "Natürlich." Ihre Stimme ist völlig neutral. "Da hast du." Sie gibt dir noch mehrere Münzrollen.~ */
  IF ~~ THEN REPLY #66739 /* ~"Danke. Ich hätte da jetzt ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38396 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",5)
GlobalLT("Ecco","GLOBAL",3)
~ THEN BEGIN 45 // from:
  SAY #38252 /* ~Ecco winkt dir freudig zu, als du näher kommst. "Seid mir gegrüßt, Herr. Schön, Euch wiederzutreffen!"~ */
  IF ~~ THEN REPLY #38397 /* ~"Hallo, Ecco... Ich hätte ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38398 /* ~"Schön, dies zu sehen, Ecco. Ich wollte nur mal vorbeischauen. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Ecco_Speak","GLOBAL",5)
Global("Ecco","GLOBAL",3)
~ THEN BEGIN 46 // from:
  SAY #38253 /* ~Ecco nickt dir kühl zu, als du näher kommst.~ */
  IF ~~ THEN REPLY #38399 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38400 /* ~"Ich wollte nur mal vorbeischauen. Leb wohl, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.5
  SAY #38254 /* ~"Das Bordell ist eine Art Schule, wo junge Frauen... die 'Prostituierten'..." Sie wirft dir einen ironischen Blick zu. "... die Kunst der Sprache und ihrer Feinheiten studieren, wie unsere Lehrerin Grace sagen würde. Im allgemeinen geschieht dies auf dem Wege dahin, Sinnsaten zu werden. Das Bordell finanziert sich aus den Spenden seiner vielen Gönner, die hierherkommen auf der Suche nach mehr als nur gemeiner, fleischlicher Freude durch das Beisammensein mit einer Frau."~ */
  IF ~~ THEN REPLY #38401 /* ~"Sinnsaten?"~ */ GOTO 55
  IF ~~ THEN REPLY #38402 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #38403 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 2.7
  SAY #38255 /* ~Ecco nickt und dämpft ihre Stimme. "In der Tat... und sie existiert nicht nur, sie hat sogar *Kinder*!"~ */
  IF ~~ THEN REPLY #38404 /* ~"Sie *was*?"~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",1)
~ JOURNAL #66734 /* ~hat mir erzähl, daß Ravel tatsächlich lebende Kinder hat... und daß eins von ihnen eine der Prosituierten im Bordell ist, nämlich Kesai Serris. Sie hat mir auch erzählt, daß Kesai sich weigert, 'die Tatsachen zu akzeptieren', und es nicht zugeben will.~ */ GOTO 49
  IF ~~ THEN REPLY #38405 /* ~"Wo kann ich sie finden?"~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",1)
~ JOURNAL #66734 /* ~hat mir erzähl, daß Ravel tatsächlich lebende Kinder hat... und daß eins von ihnen eine der Prosituierten im Bordell ist, nämlich Kesai Serris. Sie hat mir auch erzählt, daß Kesai sich weigert, 'die Tatsachen zu akzeptieren', und es nicht zugeben will.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #38256 /* ~"Eine von ihnen ist manchmal hier... Kesai-Serris. Sie ist Ravels Kind, auch wenn sie das nicht gerne zugibt. Wer könnte es ihr verübeln?" Sie hält einen Moment inne und denkt nach. "Ich habe sie nie darauf angesprochen, aber ich bin sicher, es ist wahr."~ */
  IF ~~ THEN REPLY #38406 /* ~"Interessant. Ich hatte noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #38407 /* ~"Faszinierend. Danke, Ecco. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #38257 /* ~Ecco seufzt und zuckt dann mit den Schultern. "Nun, wo ich nicht länger in seinem Haus lebe, geht mich das alles nicht länger an. Ich liebe ihn immer noch... er ist schließlich mein Vater... aber ich habe es ganz und gar nicht eilig, diesem Mann zu begegnen, damit er mich noch einmal verfluche, sollte ich vor seinen Augen aus irgendeinem Grund nicht bestehen."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 2.4
  SAY #38258 /* ~"Ich bin hier Schülerin, genau wie alle anderen 'Prostituierten'. Wir streben danach, die Kunst der Sprache zu erlernen, um die Sinne zu stimulieren... um das Bewußtsein unserer selbst und anderer zu erhöhen und neue Wege zu entdecken, eine andere Person zu erfahren." Sie hält inne und blickt gedankenverloren vor sich hin.~ */
  IF ~~ THEN REPLY #38411 /* ~"Erzähl weiter..."~ */ GOTO 52
  IF ~~ THEN REPLY #38412 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #38413 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #38259 /* ~"Nun... ich konnte so *lange* nicht sprechen. Die meisten Kunden, die zu mir kamen, suchten jemand, der zuhörte, jemand, der aufmerksam war und sie verstand, dem sie ihr Herz ausschütten konnten, ohne unterbrochen zu werden und so. Nun wo ich wieder sprechen kann, frage ich mich, ob nicht die Zeit gekommen ist, daß ich weiterziehen sollte... das Bordell verlassen und Sinnsatin werden sollte."~ */
  IF ~~ THEN REPLY #38414 /* ~"Ein Sinnsate?"~ */ GOTO 55
  IF ~~ THEN REPLY #38415 /* ~"Interessant. Ich möchte dich noch etwas fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38416 /* ~"Vielleicht. Leb wohl, Ecco."~ */ EXIT
  IF ~~ THEN REPLY #38417 /* ~"Ich wünsche dir das Beste, welchen Weg du auch immer wählen magst, Ecco. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 2.13
  SAY #38260 /* ~Sie sieht dich verwirrt an und schüttelt den Kopf~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38418 /* ~"Kannst du sprechen?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38419 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38420 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 2.14
  SAY #38261 /* ~Ecco blickt verdutzt drein. "Ich... habe von keiner zehnten Schülerin gehört. Vielleicht ist sie neu? Wenn es eine weitere gibt, habe ich sie nicht getroffen."~ */
  IF ~~ THEN REPLY #38421 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38422 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 47.0 52.0
  SAY #38262 /* ~"Ein Mitglied der Gesellschaft der Empfindung. Frag Grace, die Gefallene, oder jemanden in der Städtischen Festhalle, wenn du mehr über sie erfahren möchtest."~ */
  IF ~~ THEN REPLY #38423 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #38424 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END
