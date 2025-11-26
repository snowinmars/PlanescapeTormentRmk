// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLORA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLORA~

IF ~  Global("Dolora","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #34365 /* ~Diese dunkelhaarige, blaßhäutige Frau hat ein kultiviertes und vornehmes Aussehen. Als sie sich zu dir umdreht, bemerkst du, daß ihre Augen, die du bisher für grau gehalten hattest, die Farbe gebürsteten Stahls haben.~ */
  IF ~~ THEN REPLY #34366 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Dolora","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41352 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41282 /* ~Die Stimme der Frau ist weich, ruhig und von flachem Tonfall - Sie hat eine gewisse 'ferne' Qualität, als ob sie irgendwie von ihr losgelöst wäre. "Sei gegrüßt... Ich heiße Dolora. Kann ich dir irgendwie dienen?"~ */
  IF ~~ THEN REPLY #41353 /* ~"Wie kannst du mir denn dienen, Dolora?"~ */ GOTO 2
  IF ~~ THEN REPLY #41354 /* ~"Eigentlich nicht, aber ich hätte da ein paar Fragen..."~ */ GOTO 32
  IF ~~ THEN REPLY #41355 /* ~"Nein, ich wollte dich nur sehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 38.0 64.0
  SAY #41283 /* ~Sie blinzelt mit den Augen und berührt dann ihre Herzgegend mit der Hand, wobei sie sich leicht verbeugt. "Ich kann fundiert über jedes wissenschaftliche oder akademische Thema diskutieren, wenn das dein Wunsch ist. Ich bin außerdem in verschiedenen Strategiespielen sehr geübt, falls du vielleicht etwas spielen möchtest - auch wenn ich nur für wenige solcher Spiele das Material hier habe."~ */
  IF ~~ THEN REPLY #41356 /* ~"Ich hatte auf etwas 'Physischeres' gehofft..."~ */ GOTO 3
  IF ~~ THEN REPLY #41357 /* ~"Diskutieren, sagst du?"~ */ GOTO 7
  IF ~~ THEN REPLY #41358 /* ~"Wie wär's dann mit einem Spiel?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41359 /* ~"Weißt du, könnte ich dir einfach ein paar Fragen stellen?"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41360 /* ~"Weißt du, könnte ich dir einfach ein paar Fragen stellen?"~ */ GOTO 44
  IF ~~ THEN REPLY #41361 /* ~"Wenn ich's mir recht überlege, gehe ich lieber. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #41284 /* ~Dolora scheint weder begeistert noch abgestoßen, sondern antwortet in demselben flachen Tonfall: "Dann hast du eine falsche Vorstellung über den Sinn und Zweck dieses Etablissements. Das Bordell leistet den Lüsten der geistigen Art Vorschub, nicht denen des Fleisches. Wie auch immer, ich kann dir versichern, daß ich dir eine sehr unzufriedenstellende Partnerin wäre."~ */
  IF ~~ THEN REPLY #41362 /* ~"Oh? Warum würdest du das sagen?"~ */ GOTO 4
  IF ~~ THEN REPLY #41363 /* ~"Du hast Diskutieren erwähnt?"~ */ GOTO 7
  IF ~~ THEN REPLY #41364 /* ~"Wie wär's dann mit einem Spiel?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41365 /* ~"In diesem Fall hätte ich da ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41366 /* ~"In diesem Fall hätte ich da ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41367 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #41285 /* ~"Das ist einfach meine Natur. Erlaube mir, es dir zu demonstrieren." Sie streckt die Hand aus, um deinen Arm zu berühren...~ */
  IF ~~ THEN REPLY #41368 /* ~Erlaub ihr, dich zu berühren.~ */ GOTO 5
  IF ~~ THEN REPLY #41369 /* ~Zieh dich von ihr zurück.~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #41286 /* ~Dolora fährt mit ihrem Handrücken über deinen Unterarm. Ihre Haut ist glatt und trocken, aber kalt, wie gekühltes Eisen. Die Berührung jagt dir einen Schauer über den Rücken und läßt dir die Haare auf deinen Armen zu Berge stehen. "Mach dir nicht die Mühe, mich zu fragen, wer oder was ich bin, denn ich werde dir nur sagen, daß dies einfach meine Natur ist."~ */
  IF ~~ THEN REPLY #41370 /* ~"Also gut. Du hattest Diskutieren erwähnt?"~ */ GOTO 7
  IF ~~ THEN REPLY #41371 /* ~"Also gut. Wie wär's dann mit einem Spiel?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41372 /* ~"In diesem Fall hätte ich da ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41373 /* ~"In diesem Fall hätte ich da ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41374 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #41287 /* ~Du ziehst deinen Arm weg, bevor sie dich berühren kann. "Also gut. Ich wollte dir meine Aussage nur demonstrieren. Ich hätte dir nicht wehgetan."~ */
  IF ~~ THEN REPLY #41375 /* ~"Also gut... Dann demonstrier es mir."~ */ GOTO 5
  IF ~~ THEN REPLY #41376 /* ~"Vergiß es. Du hast Diskutieren erwähnt?"~ */ GOTO 7
  IF ~~ THEN REPLY #41377 /* ~"Wie wär's dann mit einem Spiel?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41378 /* ~"In diesem Fall hätte ich da ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41379 /* ~"In diesem Fall hätte ich da ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41380 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1 3.1 5.0 6.1 22.1 23.0 24.1 25.1 27.1 28.1 30.1 31.1
  SAY #41288 /* ~Dolora nickt. "Das ist richtig. Ich bin weder ein Lehrbuch noch ein Lehrer. Ich habe kein Verlangen, meine Kunden zu bilden. Solltest du aber ein Thema diskutieren wollen - die fünfzehn Bünde und ihre Auswirkung auf die Politik von Sigil, die effektivsten Schlachtpläne für einen Krieg in Acheron, die Bedeutung der Existenz selbst - wäre ich wirklich froh, eine Gegenposition zu wählen und mit dir eine Diskussion zu führen."~ */
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #41381 /* ~Wähl ein Thema, sieh zu, ob du sie 'schlagen' kannst.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,8,INT)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #41382 /* ~Wähl ein Thema, sieh zu, ob du sie 'schlagen' kannst.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #41383 /* ~Wähl ein Thema, sieh zu, ob du sie 'schlagen' kannst.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_1","AR0605",0)
~ THEN REPLY #41384 /* ~Wähl ein Thema, sieh zu, ob du sie 'schlagen' kannst.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Memory_Dolora_1","AR0605",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_1","AR0605",1)
~ THEN REPLY #41385 /* ~Wähl ein Thema, sieh zu, ob du sie 'schlagen' kannst.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_1","AR0605",0)
~ THEN REPLY #41386 /* ~Wähl ein Thema, sieh zu, ob du sie 'schlagen' kannst.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Memory_Dolora_1","AR0605",1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_1","AR0605",1)
~ THEN REPLY #57371 /* ~Wähl ein Thema, sieh zu, ob du sie 'schlagen' kannst.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 18
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41387 /* ~"Hmm. Könnten wir dann ein Spiel spielen?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41388 /* ~"Ach, weißt du, laß mich dir einfach ein paar Fragen stellen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41389 /* ~"Ach, weißt du, laß mich dir einfach ein paar Fragen stellen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41390 /* ~"Nein, jetzt nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #41289 /* ~Nach nur einigen Minuten des Gesprächs hat Dolora jedes deiner Argumente mit Leichtigkeit zerschmettert. Ihre Gegenargumente gegen deine schwachen Versuche, eine Diskussion zu führen, lassen deine Position lächerlich und kindisch erscheinen. Sie scheint allerdings keine Freude an ihrem Sieg zu haben und bietet dir einfach an: "Wenn du möchtest, können wir über dasselbe Thema weiterdiskutieren... Ich könnte dieses Mal deine Position ergreifen, wenn du möchtest."~ */
  IF ~~ THEN REPLY #41391 /* ~"Warte... Bist du immer so unnachgiebig in einer Diskussion?"~ */ GOTO 9
  IF ~~ THEN REPLY #41392 /* ~"Nein danke. Könnten wir ein Spiel spielen?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41393 /* ~"Das ist schon in Ordnung. Ich hätte da aber ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41394 /* ~"Das ist schon in Ordnung. Ich hätte da aber ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41395 /* ~"Das ist im Moment genug. Leb wohl, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0 11.0 14.0
  SAY #41290 /* ~Dolora nickt. "Meisterin Grace hat mir aufgetragen, keine Gnade zu zeigen, denn eine andere Schülerin von ihr läßt immer den Kunden nach einer langen Diskussion gewinnen. Es war der Wunsch von Meisterin Grace, daß ich der Kundschaft eine andere Art der Erfahrung biete."~ */
  IF ~~ THEN REPLY #41396 /* ~"Ach so. Könnten wir jetzt ein Spiel spielen?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41397 /* ~"Ich verstehe. Ich hätte da ein paar Fragen an dich..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41398 /* ~"Ich verstehe. Ich hätte da ein paar Fragen an dich..."~ */ GOTO 44
  IF ~~ THEN REPLY #41399 /* ~"Das erscheint mir sinnvoll. Leb wohl, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY #41291 /* ~Du unternimmst einen ernsthaften Versuch, aber es ist umsonst. Dolora zerschmettert jedes deiner Argumente mit Leichtigkeit und ohne Zögern mit ihrer unbeirrbaren Logik. Sie scheint allerdings keine Freude an ihrem Sieg zu haben und bietet dir einfach an: "Wenn du möchtest, können wir über dasselbe Thema weiterdiskutieren... Ich könnte dieses Mal deine Position ergreifen, wenn du möchtest."~ */
  IF ~~ THEN REPLY #41400 /* ~"Warte... Bist du immer so unnachgiebig in einer Diskussion?"~ */ GOTO 9
  IF ~~ THEN REPLY #41401 /* ~"Nein danke. Könnten wir ein Spiel spielen?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41402 /* ~"Das ist schon in Ordnung. Ich hätte da aber ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41403 /* ~"Das ist schon in Ordnung. Ich hätte da aber ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41404 /* ~"Das ist im Moment genug. Leb wohl, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY #41292 /* ~Du wählst ein Thema und fängst an. Zuerst scheinst du dich tapfer zu schlagen... Aber mit der Zeit wird deine Position wackelig, als Dolora ein Argument nach dem anderen mit ihrer unbeirrbaren Logik zerschmettert. Sie scheint allerdings keine Freude an ihrem Sieg zu haben und bietet dir einfach an: "Wenn du möchtest, können wir über dasselbe Thema weiterdiskutieren... Ich könnte dieses Mal deine Position ergreifen, wenn du möchtest."~ */
  IF ~~ THEN REPLY #41405 /* ~"Warte... Bist du immer so unnachgiebig in einer Diskussion?"~ */ GOTO 9
  IF ~~ THEN REPLY #41406 /* ~"Nein danke. Könnten wir ein Spiel spielen?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41407 /* ~"Das ist schon in Ordnung. Ich hätte da aber ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41408 /* ~"Das ist schon in Ordnung. Ich hätte da aber ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41409 /* ~"Das ist im Moment genug. Leb wohl, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY #41293 /* ~Du wählst ein Thema und fängst an... Die Diskussion dauert sehr lange, während ihr beide Argumente und Gegenargumente austauscht, wobei jeder versucht, den Standpunkt des anderen methodisch zu untergraben. Während du sprichst, überkommt dich langsam ein seltsames Gefühl... eine Erinnerung, die versucht, an die Oberfläche zu gelangen...~ */
  IF ~~ THEN REPLY #41410 /* ~Laß die Erinnerung an die Oberfläche kommen.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,3000)
~ GOTO 56
  IF ~~ THEN REPLY #41411 /* ~Versuche nicht, dich daran zu erinnern.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1 59.0
  SAY #41294 /* ~Obwohl Dolora sehr große Mühe hat, dich zu besiegen, gelingt es ihr schließlich doch... Ihre unbeirrbare Logik trumphiert schließlich selbst über deine brilliantesten Argumente. Sie scheint allerdings keine Freude an ihrem Sieg zu haben und nickt einfach nur anerkennend. "Du bist ein wirklich geübter Diskussionspartner, das kann man nicht abstreiten. Ich habe das Gefühl, daß ich nicht gewonnen hätte, wenn du etwas Zeit gehabt hättest, dich auf das Thema vorzubereiten."~ */
  IF ~~ THEN REPLY #41412 /* ~"Danke..."~ */ GOTO 14
  IF ~~ THEN REPLY #41413 /* ~"Ich weiß nicht. Du bist eine ganz schöne Gegnerin."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 15.0 15.1 17.0 17.1 18.0 18.1
  SAY #41295 /* ~Dolora nickt. "Wenn du möchtest, können wir über dasselbe Thema weiterdiskutieren... Ich könnte dieses Mal deine Position ergreifen, wenn du möchtest."~ */
  IF ~~ THEN REPLY #41414 /* ~"Warte... Bist du immer so unnachgiebig in einer Diskussion?"~ */ GOTO 9
  IF ~~ THEN REPLY #41415 /* ~"Jetzt gerade nicht, danke. Wie wär's statt dessen mit einem Spiel?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41416 /* ~"Das ist schon in Ordnung. Ich hätte da aber ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41417 /* ~"Das ist schon in Ordnung. Ich hätte da aber ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41418 /* ~"Das ist im Moment genug. Leb wohl, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.4
  SAY #41296 /* ~Du wählst ein Thema und fängst an... Die Diskussion dauert sehr lange, während ihr beide Argumente und Gegenargumente austauscht, wobei jeder versucht, den Standpunkt des anderen methodisch zu untergraben. Obwohl Dolora sehr große Mühe hat, dich zu besiegen, gelingt es ihr schließlich doch... Ihre unbeirrbare Logik trumphiert schließlich selbst über deine brilliantesten Argumente. Sie scheint allerdings keine Freude an ihrem Sieg zu haben und nickt einfach anerkennend. "Du bist ein wirklich geübter Diskussionspartner, das kann man nicht abstreiten. Ich habe das Gefühl, daß ich dich nicht hätte übertrumpfen können, wenn du etwas Zeit gehabt hättest, dich auf das Thema vorzubereiten."~ */
  IF ~~ THEN REPLY #41419 /* ~"Danke..."~ */ GOTO 14
  IF ~~ THEN REPLY #41420 /* ~"Ich weiß nicht. Du bist eine ganz schöne Gegnerin."~ */ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 7.5
  SAY #41297 /* ~Du wählst ein Thema und fängst an... Die Diskussion dauert sehr lange, während ihr beide Argumente und Gegenargumente austauscht, wobei jeder versucht, den Standpunkt des anderen methodisch zu untergraben. Während du sprichst, überkommt dich langsam ein seltsames Gefühl... eine Erinnerung, die versucht, an die Oberfläche zu gelangen...~ */
  IF ~~ THEN REPLY #41421 /* ~Laß die Erinnerung an die Oberfläche kommen.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,5000)
~ GOTO 56
  IF ~~ THEN REPLY #41422 /* ~Versuche nicht, dich daran zu erinnern.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1 59.1
  SAY #41298 /* ~Obwohl es dir große Mühe bereitet, über Doloras unbeirrbare Logik zu triumphieren, gelingt es dir schließlich doch. Sie nickt einfach nur anerkennend. "Du bist ein wirklich geübter Diskussionspartner, das kann man nicht abstreiten. Ich habe allerdings das Gefühl, daß du mich vielleicht nicht besiegt hättest, wenn ich etwas Zeit gehabt hätte, mich auf das Thema vorzubereiten."~ */
  IF ~~ THEN REPLY #41423 /* ~"Danke..."~ */ GOTO 14
  IF ~~ THEN REPLY #41424 /* ~"Vielleicht, vielleicht auch nicht. Ich würde das allerdings für einen unfairen Vorteil halten."~ */ GOTO 14
END

IF ~~ THEN BEGIN 18 // from: 7.6
  SAY #41299 /* ~Du wählst ein Thema und fängst an... Die Diskussion dauert sehr lange, während ihr beide Argumente und Gegenargumente austauscht, wobei jeder versucht, den Standpunkt des anderen methodisch zu untergraben. Obwohl es dir große Mühe macht, über Doloras unbeirrbare Logik zu triumphieren, gelingt es dir schließlich doch. Sie nickt einfach nur anerkennend. "Du bist ein wirklich geübter Diskussionspartner, das kann man nicht abstreiten. Ich habe allerdings das Gefühl, daß du mich vielleicht nicht besiegt hättest, wenn ich etwas Zeit gehabt hätte, mich auf das Thema vorzubereiten."~ */
  IF ~~ THEN REPLY #41425 /* ~"Danke..."~ */ GOTO 14
  IF ~~ THEN REPLY #41426 /* ~"Vielleicht, vielleicht auch nicht. Ich würde das allerdings für einen unfairen Vorteil halten."~ */ GOTO 14
END

IF ~~ THEN BEGIN 19 // from: 2.2 3.2 5.1 6.2 7.7 8.1 9.0 10.1 11.1 14.1
  SAY #41300 /* ~"Natürlich. Gibt es irgend etwas Bestimmtes, das du gern spielen möchtest?"~ */
  IF ~  Global("Dolora_Go","AR0605",1)
~ THEN REPLY #41427 /* ~"Das, was wir schon einmal gespielt haben, wäre OK."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 67
  IF ~  Global("Dolora_Go","AR0605",0)
~ THEN REPLY #41428 /* ~"Nein. Ich erinnere mich eigentlich an keine Spiele..."~ */ GOTO 20
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41429 /* ~"Ach, weißt du, laß mich dir statt dessen ein paar Fragen stellen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41430 /* ~"Ach, weißt du, laß mich dir statt dessen ein paar Fragen stellen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41431 /* ~"Nein, jetzt nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #41301 /* ~"Also gut - dann laß mich dir eins zeigen." Dolora bringt eine dünne, lackierte Schachtel heraus, die sich in ein kleines Brett entfaltet, auf das ein Gitter gezeichnet ist. Der Inhalt der Schachtel stellt sich als eine Anzahl polierter Spielsteine heraus... Die Hälfte ist schwarz, die andere Hälfte ist weiß. "Dieses Spiel hat eine ganze Reihe von Namen. Soll ich dir die Regeln erklären?"~ */
  IF ~~ THEN REPLY #41432 /* ~"Ja, bitte."~ */ DO ~SetGlobal("Dolora_Go","AR0605",1)
~ GOTO 21
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41433 /* ~"Ach, weißt du, laß mich dir statt dessen ein paar Fragen stellen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41434 /* ~"Ach, weißt du, laß mich dir statt dessen ein paar Fragen stellen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41435 /* ~"Nein, jetzt nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #41302 /* ~Dolora erklärt dir die Spielregeln - wie die Spielsteine gezogen werden können, und wie man den Gegner schlagen kann. Irgendwie kommt es dir alles ziemlich bekannt vor. "Die Regeln sind einfach, nicht wahr? Aber das Spiel selbst ist ganz schön kompliziert. Man braucht ziemlich lange, um es gut zu beherrschen. Sollen wir spielen?"~ */
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #41436 /* ~"Ja, machen wir."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 22
  IF ~  CheckStatGT(Protagonist,8,INT)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #41437 /* ~"Ja, machen wir."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #41438 /* ~"Ja, machen wir."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_2","AR0605",0)
~ THEN REPLY #41439 /* ~"Ja, machen wir."~ */ DO ~SetGlobal("Memory_Dolora_2","AR0605",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_2","AR0605",1)
~ THEN REPLY #41440 /* ~"Ja, machen wir."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_2","AR0605",0)
~ THEN REPLY #41441 /* ~"Ja, machen wir."~ */ DO ~SetGlobal("Memory_Dolora_2","AR0605",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 29
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_2","AR0605",1)
~ THEN REPLY #41442 /* ~"Ja, machen wir."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 31
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41443 /* ~"Ach, weißt du, laß mich dir statt dessen ein paar Fragen stellen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41444 /* ~"Ach, weißt du, laß mich dir statt dessen ein paar Fragen stellen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41445 /* ~"Nein, jetzt nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #41303 /* ~Obwohl du dir sicher bist, daß du dieses Spiel schon einmal gespielt hast, hältst du dich ausgesprochen schlecht... Dolora schlägt dich schnell und mit solcher Leichtigkeit, daß es beinahe lachhaft ist. Sie lächelt aber nicht und freut sich auch nicht hämisch, sondern beginnt einfach nur, das Spiel wegzuräumen. "Ich fürchte, Zeit und Übung würden dir nicht viel helfen - es scheint, als ob du solche Spiele einfach nicht begreifen kannst."~ */
  IF ~~ THEN REPLY #41446 /* ~"Spielst du immer so gnadenlos?"~ */ GOTO 23
  IF ~~ THEN REPLY #41447 /* ~"Vielleicht nicht. Du hast vorhin Diskutieren erwähnt?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41448 /* ~"Hmm. Ich hätte da ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41449 /* ~"Hmm. Ich hätte da ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41450 /* ~"Ich habe es sowieso nicht sehr unterhaltsam gefunden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 24.0 25.0 27.0 28.0 30.0 31.0
  SAY #41304 /* ~Dolora nickt. "Meisterin Grace hat mich angewiesen, mich nicht zurückzuhalten, denn eine andere ihrer Schülerinnen spielt immer so, daß ihr Gegner gerade so gewinnt. Es war der Wunsch von Meisterin Grace, daß ich eine andere Art von Erfahrung biete - eine echte Herausforderung, nicht etwas, das nur dem Ego meines Gegners schmeichelt."~ */
  IF ~~ THEN REPLY #41451 /* ~"Ach so. Du hast vorhin Diskutieren erwähnt?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41452 /* ~"Ich verstehe. Ich hätte da ein paar Fragen an dich..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41453 /* ~"Ich verstehe. Ich hätte da ein paar Fragen an dich..."~ */ GOTO 44
  IF ~~ THEN REPLY #41454 /* ~"Das erscheint mir sinnvoll. Leb wohl, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY #41305 /* ~Obwohl du dir sicher bist, daß du dieses Spiel schon einmal gespielt hast, schlägt Dolora dich mit Leichtigkeit. Sie lächelt aber nicht und freut sich auch nicht hämisch, sondern beginnt einfach nur, das Spiel wegzuräumen. "Du scheinst das Spiel ganz gut zu verstehen. Mit der Zeit könntest du sicher viel besser werden."~ */
  IF ~~ THEN REPLY #41455 /* ~"Spielst du immer so gnadenlos?"~ */ GOTO 23
  IF ~~ THEN REPLY #41456 /* ~"Vielleicht. Du hast vorhin Diskutieren erwähnt?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41457 /* ~"Danke. Ich hätte da ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41458 /* ~"Danke. Ich hätte da ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41459 /* ~"Vielleicht würde ich üben, wenn ich mehr Zeit hätte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.2
  SAY #41306 /* ~Während du spielst, erkennst du, daß du das schon einmal gemacht hast. Doch selbst deine besten Tricks sind gegen Doloras gut durchdachten Strategien sinnlos... Das Spiel geht für dich stetig abwärts, bis du schließlich völlig geschlagen bist. Sie lächelt aber nicht und freut sich auch nicht hämisch, sondern beginnt einfach nur, das Spiel wegzuräumen. "Du scheinst das Spiel ganz gut zu verstehen. Mit der Zeit könntest du sicher richtig gut werden."~ */
  IF ~~ THEN REPLY #41460 /* ~"Spielst du immer so gnadenlos?"~ */ GOTO 23
  IF ~~ THEN REPLY #41461 /* ~"Vielleicht. Du hast vorhin Diskutieren erwähnt?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41462 /* ~"Danke. Ich hätte da ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41463 /* ~"Danke. Ich hätte da ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41464 /* ~"Vielleicht würde ich üben, wenn ich mehr Zeit hätte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 21.3
  SAY #41310 /* ~Während du spielst, erkennst du, daß du das schon einmal gemacht hast. Du kannst dich an verschiedene Tricks und Strategien erinnern, mit denen du früher solche Spiele gewonnen hast, und probierst jeden dir bekannten Trick aus, um sie zu schlagen. Plötzlich überkommt dich ein seltsames Gefühl... eine Erinnerung, die versucht, an die Oberfläche zu gelangen...~ */
  IF ~~ THEN REPLY #41465 /* ~Laß die Erinnerung an die Oberfläche kommen.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,3000)
~ GOTO 60
  IF ~~ THEN REPLY #41466 /* ~Versuche nicht, dich daran zu erinnern.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1 62.0
  SAY #41311 /* ~Während des gesamten Spiels scheint Dolora nacheinander auch deine geschicktesten Spielzüge zu parieren. Trotz deiner besten Bemühungen unterliegst du schließlich ihren gut durchdachten Strategien. Sie lächelt aber nicht und freut sich auch nicht hämisch, sondern beginnt einfach nur, das Spiel wegzuräumen. "Du bist ein guter Spieler. Ich bin sicher, daß du ein Meister dieses Spiels werden könntest."~ */
  IF ~~ THEN REPLY #41467 /* ~"Danke... aber spielst du immer so gnadenlos?"~ */ GOTO 23
  IF ~~ THEN REPLY #41468 /* ~"Vielleicht. Du hast vorhin Diskutieren erwähnt?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41469 /* ~"Ich danke dir. Ich hätte da ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41470 /* ~"Ich danke dir. Ich hätte da ein paar Fragen..."~ */ GOTO 44
END

IF ~~ THEN BEGIN 28 // from: 21.4
  SAY #41312 /* ~Während du spielst, erkennst du, daß du das schon einmal gemacht hast. Du kannst dich an verschiedene Tricks und Strategien erinnern, mit denen du früher solche Spiele gewonnen hast, und probierst jeden dir bekannten Trick aus, um sie zu schlagen. Trotzdem scheint Dolora nacheinander auch deine geschicktesten Spielzüge zu parieren. Trotz deiner besten Bemühungen unterliegst du schließlich ihren gut durchdachten Strategien. Sie lächelt aber nicht und freut sich auch nicht hämisch, sondern beginnt einfach nur, das Spiel wegzuräumen. "Du bist ein guter Spieler. Ich bin sicher, daß du ein Meister des Spiels werden könntest."~ */
  IF ~~ THEN REPLY #41471 /* ~"Danke... aber spielst du immer so gnadenlos?"~ */ GOTO 23
  IF ~~ THEN REPLY #41472 /* ~"Vielleicht. Du hast vorhin Diskutieren erwähnt?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41473 /* ~"Ich danke dir. Ich hätte da ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41474 /* ~"Ich danke dir. Ich hätte da ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41475 /* ~"Vielleicht würde ich üben, wenn ich mehr Zeit hätte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 21.5
  SAY #41313 /* ~Während du spielst, erkennst du, daß du das schon einmal gemacht hast. Du kannst dich an verschiedene Tricks und Strategien erinnern, mit denen du früher solche Spiele gewonnen hast, und probierst jeden dir bekannten Trick aus, um sie zu schlagen. Plötzlich überkommt dich ein seltsames Gefühl... eine Erinnerung, die versucht, an die Oberfläche zu gelangen...~ */
  IF ~~ THEN REPLY #41476 /* ~Laß die Erinnerung an die Oberfläche kommen.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,5000)
~ GOTO 60
  IF ~~ THEN REPLY #41477 /* ~Versuche nicht, dich daran zu erinnern.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1 62.1
  SAY #41314 /* ~Dolora spielt ausgezeichnet und pariert auch deine geschicktesten Spielzüge, aber schließlich besiegen deine Finten und kalkulierten Manöver ihre gut durchdachten Strategien. Sie nickt anerkennend und beginnt, das Spiel wegzuräumen. "Du bist ein guter Spieler, vielleicht sogar ein Meister. Ich muß dein Können loben."~ */
  IF ~~ THEN REPLY #41478 /* ~"Danke... aber spielst du immer so gnadenlos?"~ */ GOTO 23
  IF ~~ THEN REPLY #41479 /* ~"Danke. Du hast vorhin Diskutieren erwähnt?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41480 /* ~"Ich danke dir. Ich hätte da ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41481 /* ~"Ich danke dir. Ich hätte da ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41482 /* ~"Ja, es scheint so, als ob ich das nun doch schon einmal gespielt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 21.6
  SAY #41315 /* ~Während du spielst, erkennst du, daß du das schon einmal gemacht hast. Du kannst dich an verschiedene Tricks und Strategien erinnern, mit denen du früher solche Spiele gewonnen hast, und probierst jeden dir bekannten Trick aus, um sie zu schlagen. Dolora spielt ausgezeichnet und pariert auch deine geschicktesten Spielzüge, aber schließlich besiegen deine Finten und kalkulierten Manöver ihre gut durchdachten Strategien. Sie nickt anerkennend und beginnt, das Spiel wegzuräumen. "Du bist ein guter Spieler, vielleicht sogar ein Meister. Ich muß dein Können loben."~ */
  IF ~~ THEN REPLY #41483 /* ~"Danke... aber spielst du immer so gnadenlos?"~ */ GOTO 23
  IF ~~ THEN REPLY #41484 /* ~"Danke. Du hast vorhin Diskutieren erwähnt?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41485 /* ~"Ich danke dir. Ich hätte da ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41486 /* ~"Ich danke dir. Ich hätte da ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41487 /* ~"Ja, es scheint so, als ob ich das nun doch schon einmal gespielt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 1.1 2.3 3.3 5.2 6.3 7.8 8.2 9.1 10.2 11.2 14.2 19.2 20.1 21.7 22.2 23.1 24.2 25.2 27.2 28.2 30.2 31.2 38.1 67.0
  SAY #41316 /* ~Dolora blickt mit einem Gräusch zu Boden, das ein trauriger Seufzer sein könnte. "Ich bin willig, dir als Kunden zu dienen, aber im Moment habe ich keinen Wunsch, deine Fragen zu beantworten... Tut mir leid, doch ich fürchte, daß du dich damit für den Augenblick einfach abfinden mußt."~ */
  IF ~~ THEN REPLY #41488 /* ~"Was ist denn los? Kann ich dir irgendwie helfen?"~ */ JOURNAL #66740 /* ~Dolora, eine der Prostituierten im Bordell zum Befriedigen Intellektueller Lüste, weigert sich, mir irgendwelche Fragen zu beantworten, die sich nicht auf ihre Aufgaben als 'Prostituierte' beziehen... Aber ich fürchte, daß sie Informationen haben könnte, die für meine Suche wertvoll sind.~ */ GOTO 33
  IF ~~ THEN REPLY #41489 /* ~"Dann spreche ich ein anderes Mal mit dir. Leb wohl."~ */ JOURNAL #66740 /* ~Dolora, eine der Prostituierten im Bordell zum Befriedigen Intellektueller Lüste, weigert sich, mir irgendwelche Fragen zu beantworten, die sich nicht auf ihre Aufgaben als 'Prostituierte' beziehen... Aber ich fürchte, daß sie Informationen haben könnte, die für meine Suche wertvoll sind.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #41317 /* ~Sie sieht vom Boden auf und in deine Augen. Wieder fallen dir ihre blasse, glatte Haut und die kalten Tiefen ihrer silbernen Augen auf. "Nein... Nein, ich fürchte, das kannst du nicht. Mein Kummer ist ein Problem des Herzens. Mit der Zeit, denke ich, wird sich alles zum Guten wenden."~ */
  IF ~~ THEN REPLY #41490 /* ~"Bist du sicher, daß ich nichts für dich tun kann?"~ */ GOTO 34
  IF ~~ THEN REPLY #41491 /* ~"Dann spreche ich ein anderes Mal mit dir. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #41318 /* ~"Sicher?" Dolora hält inne, so, als ob sie nachdenkt. "Nein, das bin ich nicht. Meine erste Liebe, Frohmann, besitzt noch immer die Schlüssel zu meinem Herzen. Solange er sie hat, bin ich nicht frei, einen anderen zu lieben. Das ist der Grund für meine Melancholie."~ */
  IF ~~ THEN REPLY #41492 /* ~"Warum suchst du ihn nicht und redest mit ihm?"~ */ GOTO 35
  IF ~~ THEN REPLY #41493 /* ~"Dann finde ich eben diesen Frohmann und spreche für dich mit ihm."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Dolora_1","GLOBALGood",1)
~ JOURNAL #39465 /* ~Ich habe mich bereit erklärt, Doloras erste große Liebe, einen Mann names Frohmann ausfindig zu machen, und bei ihm ein gutes Wort für sie einzulegen. Nach ihren Worten ist er ein Mitglied der Gesellschaft der Empfindung. Ich soll es also mal in der Städtischen Festhalle versuchen.~ */ GOTO 36
  IF ~~ THEN REPLY #41494 /* ~"Du hast Glück. Ich kann Frohmann für dich finden .... gegen ein Entgelt."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Dolora_1","GLOBALGood",-1)
~ JOURNAL #39466 /* ~Ich habe mich bereit erklärt, gegen eine Belohnung Doloras erste große Liebe, einen Mann names Frohmann ausfindig zu machen, und bei ihm ein gutes Wort für sie einzulegen. Nach ihren Worten ist er ein Mitglied der Gesellschaft der Empfindung. Ich soll es also mal in der Städtischen Festhalle versuchen.~ */ GOTO 37
  IF ~~ THEN REPLY #41495 /* ~"Ach so. Leb wohl, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #41319 /* ~Dolora schüttelt den Kopf. "Ich kann diesen Ort nicht verlassen. Die Gründe dafür sind ausgesprochen persönlicher Natur, die ich nicht mit Fremden teilen möchte - selbst nicht mit jemandem, der es vielleicht gut mit mir meint. Es sei lediglich gesagt, daß ich Frohmann nicht selbst suchen kann."~ */
  IF ~~ THEN REPLY #41496 /* ~"Dann finde ich eben diesen Frohmann und spreche für dich mit ihm."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Dolora_1","GLOBALGood",1)
~ JOURNAL #39465 /* ~Ich habe mich bereit erklärt, Doloras erste große Liebe, einen Mann names Frohmann ausfindig zu machen, und bei ihm ein gutes Wort für sie einzulegen. Nach ihren Worten ist er ein Mitglied der Gesellschaft der Empfindung. Ich soll es also mal in der Städtischen Festhalle versuchen.~ */ GOTO 36
  IF ~~ THEN REPLY #41497 /* ~"Du hast Glück. Ich kann Frohmann für dich finden .... gegen ein Entgelt."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Dolora_1","GLOBALGood",-1)
~ JOURNAL #39466 /* ~Ich habe mich bereit erklärt, gegen eine Belohnung Doloras erste große Liebe, einen Mann names Frohmann ausfindig zu machen, und bei ihm ein gutes Wort für sie einzulegen. Nach ihren Worten ist er ein Mitglied der Gesellschaft der Empfindung. Ich soll es also mal in der Städtischen Festhalle versuchen.~ */ GOTO 37
  IF ~~ THEN REPLY #41498 /* ~"Ach so. Leb wohl, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0
  SAY #41320 /* ~Dolora nickt, und eine ganz leichte Spur eines Lächelns erscheint auf ihren Lippen. Sie beugt ihren Kopf. "Wenn du Frohmann finden und mit ihm sprechen könntest, wäre ich dir ausgesprochen dankbar. Er ist ein Mitglied der Gesellschaft der Empfindung, also kannst du in der Städtischen Festhalle nach ihm fragen."~ */
  IF ~~ THEN REPLY #41499 /* ~"Ich komme wieder, wenn ich ihn gefunden habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.2 35.1
  SAY #41321 /* ~"Ich besitze nur wenig außer dem einen oder anderen Schmuck, die ich einmal als Geschenk erhalten habe. Wenn dir die reichen, würde ich dich gern mit ihnen belohnen. Frohmann ist ein Mitglied der Gesellschaft der Empfindung, also kannst du in der Städtischen Festhalle nach ihm fragen."~ */
  IF ~~ THEN REPLY #41500 /* ~"Das muß reichen. Ich komme zurück, wenn ich ihn gefunden habe. Leb wohl."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",1)
~ THEN BEGIN 38 // from:
  SAY #41322 /* ~Doloras kalte, stählerne Augen flackern kurz über deine Gestalt, als du dich ihr näherst. "Sei gegrüßt. In welcher Sache kann ich dir dienen?"~ */
  IF ~~ THEN REPLY #41501 /* ~"Und wie könntest du mir dienen, Dolora?"~ */ GOTO 2
  IF ~~ THEN REPLY #41502 /* ~"Eigentlich hätte ich da nur ein paar Fragen..."~ */ GOTO 32
  IF ~~ THEN REPLY #41503 /* ~"Überhaupt nicht. Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",2)
~ THEN BEGIN 39 // from:
  SAY #41323 /* ~Doloras blitzen auf, als sie dich sieht. "Hast du ihn gefunden? Hat er zugestimmt, mir die Schlüssel zu meinem Herzen zurückzugeben?"~ */
  IF ~  !PartyHasItem("DlraKey")
~ THEN REPLY #41504 /* ~"Nein, noch nicht. Leb wohl."~ */ EXIT
  IF ~  PartyHasItem("DlraKey")
~ THEN REPLY #41506 /* ~"Ja. Ich habe die Schlüssel zu deinem Herzen. Hier sind sie."~ */ DO ~DestroyPartyItem("DlraKey",FALSE)
SetGlobal("Dolora","GLOBAL",4)
AddexperienceParty(30000)
~ JOURNAL #39471 /* ~Ich bin zu Dolores zurückgekehrt, nachdem ich bei Frohmann war, und hab ihr die Schlüssel zu ihrem Herzen wiedergebracht.~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from:
  SAY #41324 /* ~Dolora starrt dich einen Augenblick lang stumm an. "Wo sind sie?"~ */
  IF ~~ THEN REPLY #41507 /* ~"Äh... Ich komme wieder, wenn ich sie habe."~ */ DO ~SetGlobal("Dolora","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.1 43.0
  SAY #41325 /* ~"Endlich..." Als sie dir die Schlüssel abnimmt, streift ihre Hand die deine... Ihre Haut ist trocken, aber eiskalt, wie kaltes Metall. "Sie werden mir von großem Nutzen sein. Ich danke dir."~ */
  IF ~  Global("Good_Dolora_1","GLOBAL",1)
~ THEN REPLY #41508 /* ~"Natürlich, Dolora. Ich hätte ein paar Fragen..."~ */ GOTO 44
  IF ~  Global("Evil_Dolora_1","GLOBAL",1)
~ THEN REPLY #41510 /* ~"Natürlich. Und meine Belohnung...?"~ */ DO ~GiveItemCreate("Silbra",Protagonist,1,0,0)
GiveItemCreate("Silbra",Protagonist,1,0,0)
~ GOTO 42
  IF ~~ THEN REPLY #41509 /* ~"Hab gern geholfen. Leb wohl, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY #41326 /* ~Dolora nickt und nimmt ein Paar Armbänder aus einem Beutel, der an ihrer Seite baumelt. "Die gehören jetzt dir. Du hast sie dir verdient."~ */
  IF ~~ THEN REPLY #41511 /* ~"Ich hätte da jetzt ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41512 /* ~"Klar. Leb wohl, Dolora."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",3)
~ THEN BEGIN 43 // from:
  SAY #41327 /* ~Doloras Augen blitzen auf, als sie dich sieht. "Die Schlüssel zu meinem Herzen... Hast du gefunden, was du verloren hattest?"~ */
  IF ~  PartyHasItem("DlraKey")
~ THEN REPLY #41513 /* ~"Ja. Hier sind sie."~ */ DO ~DestroyPartyItem("DlraKey",FALSE)
SetGlobal("Dolora","GLOBAL",3)
AddexperienceParty(30000)
~ GOTO 41
  IF ~  !PartyHasItem("DlraKey")
~ THEN REPLY #41514 /* ~"Nein. Aber ich komme wieder, wenn ich sie habe."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 2.4 3.4 5.3 6.4 7.9 8.3 9.2 10.3 11.3 14.3 19.3 20.2 21.8 22.3 23.2 24.3 25.3 27.3 28.3 30.3 31.3 41.0 42.0 45.2 46.1 47.1 48.3 49.2 50.0 51.0 52.1 53.0 54.0 55.0 63.0 64.1 65.0 66.0 67.1
  SAY #41328 /* ~"Natürlich. Ich beantworte alle Fragen, soweit ich kann."~ */
  IF ~~ THEN REPLY #41515 /* ~"Ich hatte gehofft, ich würde mehr über dein Wesen erfahren."~ */ GOTO 45
  IF ~~ THEN REPLY #41516 /* ~"Was machst du hier?"~ */ GOTO 48
  IF ~~ THEN REPLY #41517 /* ~"Kannst du mir etwas über diesen Ort erzählen?"~ */ GOTO 51
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #41518 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_6","AR0605",1)
~ JOURNAL #66741 /* ~Dolora hat mir erzählt, daß Ecco - die schweigende Prostituierte - nicht sprechen kann, weil ihre Stimme gestohlen und zerstört wurde. Sie sagt, daß Eccos Worte einst den Liebhaber des Gottlings Paramisha weggelockt hat. Paramisha entriß in einem Wutanfall Ecco die Stimme, versiegelte sie in einem Kristallfläschchen und warf sie in den Schlund eines Megogalamdragas. Dolora hat mir gesagt, daß Ecco ihre Stimme für immer verloren hat und daß nur eine andere, neue Stimme ihr die Fähigkeit zu kommunizieren wiedergeben kann. Das ist ja 'ne ganz schöne Geschichte, aber Dolora sagt, sie habe sie von Paramishas Liebhaber selbst...~ */ GOTO 66
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67843 /* ~"Was kannst du mir über die stumme Hure erzählen?"~ */ DO ~SetGlobal("Ecco_Rumor_6","AR0605",1)
~ JOURNAL #66741 /* ~Dolora hat mir erzählt, daß Ecco - die schweigende Prostituierte - nicht sprechen kann, weil ihre Stimme gestohlen und zerstört wurde. Sie sagt, daß Eccos Worte einst den Liebhaber des Gottlings Paramisha weggelockt hat. Paramisha entriß in einem Wutanfall Ecco die Stimme, versiegelte sie in einem Kristallfläschchen und warf sie in den Schlund eines Megogalamdragas. Dolora hat mir gesagt, daß Ecco ihre Stimme für immer verloren hat und daß nur eine andere, neue Stimme ihr die Fähigkeit zu kommunizieren wiedergeben kann. Das ist ja 'ne ganz schöne Geschichte, aber Dolora sagt, sie habe sie von Paramishas Liebhaber selbst...~ */ GOTO 66
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41519 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ JOURNAL #66743 /* ~Ich habe eine der Prostitierten gefragt, ob sie weiß, ob Kesai-Serris nun wirklich Ravels Tochter ist. Sie hat gesagt, ich solle mit Juliette reden. Anscheinend waren die beiden eng befreundet, bevor Juliette Montague traf.~ */ GOTO 65
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #41520 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ JOURNAL #66727 /* ~Eine der Prostituierten hat vorgeschlagen, daß ich Nenny frage, ob sie etwas darüber weiß, wer Vivians persönlichen Duft gestohlen hat. Anscheinend hat Nenny einen Ruf dafür, herumzuwandern und zu beobachten, was andere Leute gerade tun.~ */ GOTO 52
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #41521 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ JOURNAL #66728 /* ~Eine der Prostituierten hat vorgeschlagen, daß ich Nenny frage, ob sie irgendwo Marissas Purpurschleier gesehen hat. Anscheinend hat Nenny einen Ruf dafür, herumzuwandern und zu beobachten, was andere Leute gerade tun.~ */ GOTO 54
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #41522 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ JOURNAL #66742 /* ~Ich habe eine der Prostituierten im Bordell über Ravel befragt, und sie hat gesagt, ich solle mit Yves darüber sprechen. Yves scheint Geschichten jeglicher Art zu sammeln, und es ist wahrscheinlich, daß sie in ihrem Repertoire auch eine über Ravel hat.~ */ GOTO 55
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #41523 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 63
  IF ~~ THEN REPLY #41524 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #41329 /* ~Dolora blinzelt. "Frohmann hat mir nie viel über meine Konstruktion erzählt. Ich weiß nicht viel über die innere Mechanik meines Körpers, wahrscheinlich genauso wenig, wie du über deinen Körper weißt. Nach außen hin bin ich jedenfalls in allen Aspekten eine menschliche Frau... außer der Struktur und Temperatur meines Fleisches. Befriedigt das deine Neugier?"~ */
  IF ~~ THEN REPLY #41525 /* ~"Was ist mit deinem Denken, deinen Gefühlen?"~ */ GOTO 46
  IF ~~ THEN REPLY #41526 /* ~"Und wozu genau sind die Schlüssel gut?"~ */ GOTO 47
  IF ~~ THEN REPLY #41527 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 44
  IF ~~ THEN REPLY #41528 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 47.0
  SAY #41330 /* ~"Seine Funktionsweise ist mir genauso ein Geheimnis wie jedem anderem Menschen. Als ich hierher kam, habe ich Gefühle weder verstanden noch selbst welche gehabt. Ich habe jetzt... Gefühle... wenn ich auch gerade erst anfange, sie zu verstehen."~ */
  IF ~~ THEN REPLY #41529 /* ~"Und wozu genau sind die Schlüssel gut?"~ */ GOTO 47
  IF ~~ THEN REPLY #41530 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 44
  IF ~~ THEN REPLY #41531 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1 46.0
  SAY #41331 /* ~"Ich kann nur annehmen, daß Frohmann die Schlüssel gemacht hat, damit ich mich ihm nicht entziehen konnte, bevor er seines Experimentes müde geworden war. Nun, da sie in meinem Besitz sind, kann ich meine eigenen Gefühle frei entwickeln und besitzen."~ */
  IF ~~ THEN REPLY #41532 /* ~"Wie funktioniert dein Denken? Hast du denn dann Gefühle?"~ */ GOTO 46
  IF ~~ THEN REPLY #41533 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 44
  IF ~~ THEN REPLY #41534 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.1
  SAY #41332 /* ~"Ich bin, wie auch die anderen Frauen hier, eine Schülerin von Meisterin Grace. Sie unterrichtet uns in der Kunst des Dialogs und des verbalen Umgangs. Die meisten Schülerinnen werden irgendwann der Gesellschaft der Empfindung beitreten und sind hierher gekommen, um sich unter der Anleitung der Meisterin auf die Aufnahmeriten des Bundes vorzubereiten."~ */
  IF ~~ THEN REPLY #41535 /* ~"Gefällt es dir hier?"~ */ GOTO 49
  IF ~~ THEN REPLY #41536 /* ~"Erzähl mir über diese Gesellschaft der Empfindung."~ */ GOTO 50
  IF ~~ THEN REPLY #41537 /* ~"Aufnahmeriten?"~ */ GOTO 50
  IF ~~ THEN REPLY #41538 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 44
  IF ~~ THEN REPLY #41539 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #41333 /* ~"Ich lerne hier viel. Das gefällt mir, ja." Sie lächelt einen Moment lang. Der Ausdruck wirkt auf ihrem blassen Gesicht unbeholfen, als ob er ihr irgendwie fremd wäre.~ */
  IF ~~ THEN REPLY #41540 /* ~"Du hast die Gesellschaft der Empfindung erwähnt...?"~ */ GOTO 50
  IF ~~ THEN REPLY #41541 /* ~"Du hast da vorhin etwas über Aufnahmeriten gesagt?"~ */ GOTO 50
  IF ~~ THEN REPLY #41542 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 44
  IF ~~ THEN REPLY #41543 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1 48.2 49.0 49.1
  SAY #41334 /* ~"Du wärst gut beraten, die Antworten auf solche Fragen bei Meisterin Grace zu suchen. Sie könnte sie viel besser erklären als ich."~ */
  IF ~~ THEN REPLY #41544 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 44
  IF ~~ THEN REPLY #41545 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 44.2
  SAY #41335 /* ~"Ja, das kann ich. Das Bordell zum Befriedigen Intellektueller Lüste ist eine Schule. Die Prostituierten hier werden in der Kunst des Dialogs und des verbalen Umgangs unterrichtet. Ich würde dir empfehlen, mit der Besitzerin des Etablissements, Meisterin Grace, zu sprechen, wenn du eine detaillierte Erklärung wünschst."~ */
  IF ~~ THEN REPLY #41546 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 44
  IF ~~ THEN REPLY #41547 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 44.6
  SAY #41336 /* ~"Ich nehme an, du meinst ihren persönlichen Duft, der ihr, wie sie behauptet, von einer der Prostituierten hier gestohlen wurde. Ich weiß nicht, wer ihn jetzt hat. Doch du könntest Nenny fragen, denn sie sieht vieles von dem, was hier vor sich geht."~ */
  IF ~~ THEN REPLY #41548 /* ~"Wie kann denn der Duft von jemandem *gestohlen* werden?"~ */ GOTO 53
  IF ~~ THEN REPLY #41549 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 44
  IF ~~ THEN REPLY #41550 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #41337 /* ~"Vivian verwendet einen Aspekt der 'Kunst', um die geruchlichen Aspekte eines Objekts, sei es nun lebend oder tot, zu kreieren, ändern oder verbessern. Vielleicht weiß der Dieb auch von diesen Fähigkeiten. Ihr Duft müßte in diesem Fall allerdings an einem Objekt haften und nicht am Dieb selbst - sonst könnte Vivian den Dieb am eigenen Geruch erkennen."~ */
  IF ~~ THEN REPLY #41551 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 44
  IF ~~ THEN REPLY #41552 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 44.7
  SAY #41338 /* ~Dolora schüttelt den Kopf. "Ich habe Marissas Schleier nicht gesehen, seit sie ihn das letzte Mal außerhalb ihrer Gemächer getragen hat. Das war vor einiger Zeit." Sie schließt einen Moment lang ihre Augen und spricht dann weiter: "Nenny sieht viel von dem, was hier vorgeht. Du wärst gut beraten, sie zu fragen, ob sie irgend etwas gesehen hat, das dir weiterhelfen könnte."~ */
  IF ~~ THEN REPLY #41553 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 44
  IF ~~ THEN REPLY #41554 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 44.8
  SAY #41339 /* ~"Ich weiß, daß sie eine sehr mächtige und unglaublich böse Nachthexe war - oder ist, wenn sie noch unter den Lebenden weilt. Die Dame der Schmerzen hat sie wegen der Verbrechen, die sie gegen die Stadt Sigil begangen hat, in ein außerdimensionales Gefängnis verbannt. Du solltest Yves über sie befragen. Sie kennt eine Menge Geschichten und kann dir wahrscheinlich auch Ravels erzählen."~ */
  IF ~~ THEN REPLY #41555 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 44
  IF ~~ THEN REPLY #41556 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 12.0 16.0
  SAY #41340 /* ~Erinnerungen an eine große Halle beginnen, sich in deinem Gedächtnis zu formen... Ein riesiger Ort voller gut gekleideter elitärer Personen... Ein festlicher Ball ist in vollem Gange. Vor dir steht ein kleiner, untadelig gekleideter Bursche, der ein goldenes Medaillon trägt. In dieses ist ein Symbol eingraviert, an das du dich vage als das "Zeichen des Einen" erinnerst. Ihr steht beide in einem Kreis von Zuschauern, die sich versammelt haben, um eurer Diskussion zuzuhören.~ */
  IF ~~ THEN REPLY #41557 /* ~Laß die Erinnerung weiterlaufen.~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #41341 /* ~"Aber... Aber das ist unmöglich!" sagt der Mann gerade mit einem perplexen Gesichtsausdruck.

"Oh doch, das ist möglich", kannst du dich an deine Antwort erinnern. "Ich habe dir eine Reihe nicht widerlegbarer Argumente und ein paar Beispiele gegeben. Du existierst einfach nicht."

"Aber... Das kannst du nicht tun! Wenn ich das akzeptieren würde, müßte ich... ich..."
~ */
  IF ~~ THEN REPLY #41558 /* ~Laß die Erinnerung weiterlaufen.~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #41342 /* ~"Genau. Du müßtest aufhören zu existieren."

Und ohne Blitz oder Rauchwolke - ohne Fanfare jeglicher Art - verschwindet der Mann einfach. 
~ */
  IF ~~ THEN REPLY #41559 /* ~Laß die Erinnerung weiterlaufen.~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #41343 /* ~Die Zuschauer machen *ooh* und *aah*, einige klatschen... du erinnerst dich daran, daß du dich schwungvoll verbeugst und mit einem kleinen, zufriedenen Lächeln auf deinen Lippen weggehst.

Dir fällt plötzlich auf, daß Dolora dich aufmerksam beobachtet. "Fühlst du dich nicht gut? Wir könnten unsere Diskussion ein anderes Mal zu Ende bringen, wenn du möchtest..."
~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #41560 /* ~"Nein .. Diskutieren wir weiter..."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #41561 /* ~"Nein .. Diskutieren wir weiter..."~ */ GOTO 17
END

IF ~~ THEN BEGIN 60 // from: 26.0 29.0
  SAY #41344 /* ~Erinnerungen an ein rauchgefülltes Schlachtfeld beginnen, dein Gedächtnis zu füllen... Du sitzt auf einem massiven, vierbeinigen Biest auf einem hohen Hügel, der die Kämpfe überblickte. Das Tönen der Hörner hat deine Befehle nach unten zu den Truppen getragen.~ */
  IF ~~ THEN REPLY #41562 /* ~Laß die Erinnerung weiterlaufen.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #41345 /* ~Während du zusiehst, teilen sich deine Truppen und fliehen nach links und rechts, während die fremde Armee sich den Hügel heraufkämpft, um den Herrn der Feinde zu töten - dich.~ */
  IF ~~ THEN REPLY #41563 /* ~Laß die Erinnerung weiterlaufen.~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #41346 /* ~"Die Narren", denkst du, und deine Lippen verziehen sich zu einem bösen Grinsen. "Meine Ritter werden jeden Moment den Hügel hinunterstürmen und ihren Angriff stoppen... Und in genau diesem Moment werden meine 'fliehenden' Infanteristen ihnen in die Flanken fallen und sie zermalmen! Ah, bald ist noch ein Sieg mein..."

Dir fällt plötzlich auf, daß Dolora dich aufmerksam beobachtet. "Fühlst du dich nicht gut? Wir könnten das Spiel an einem anderen Tag weiterspielen, wenn du möchtest..."
~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #41565 /* ~"Nein. Spielen wir weiter..."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #41566 /* ~"Nein. Spielen wir weiter..."~ */ GOTO 30
END

IF ~~ THEN BEGIN 63 // from: 44.9
  SAY #41347 /* ~Sie schüttelt den Kopf. "Ich fürchte, du hast unrecht. Wenn das keine ganz neue Entwicklung ist, gibt es keine zehnte Schülerin."~ */
  IF ~~ THEN REPLY #41567 /* ~"Dann hätte ich da noch eine Frage..."~ */ GOTO 44
  IF ~~ THEN REPLY #41568 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",4)
~ THEN BEGIN 64 // from:
  SAY #41348 /* ~Doloras Gesicht scheint sich zu erhellen, als sie dich sieht. "Schön, dich wiederzusehen. Wie kann ich dir dienen?"~ */
  IF ~~ THEN REPLY #41569 /* ~"Und wie genau könntest du mir dienen, Dolora?"~ */ GOTO 2
  IF ~~ THEN REPLY #41570 /* ~"Eigentlich hätte ich ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41571 /* ~"Ich bin nur zufällig vorbeigekommen, Dolora. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 44.5
  SAY #41349 /* ~"Ich habe auch so ein Gerücht gehört, aber ich weiß es nicht. Vielleicht kann dir eine der anderen Frauen hier die Antwort geben sagen, wenn nicht Kesai selbst. Frag Juliette... Sie und Kesai waren einmal gute Freundinnen, bevor Juliette Frohmann begegnet ist."~ */
  IF ~~ THEN REPLY #41572 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 44
  IF ~~ THEN REPLY #41573 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 44.3 44.4
  SAY #41350 /* ~"Ja. Ihr Name ist Ecco. Ihre Stimme - sogar alle ihre Verständigungsmöglichkeiten - wurden ihr geraubt und zerstört. Eccos Worte haben einmal der Gottling-Frau Paramisha ihren Liebhaber abspenstig gemacht. In eifersüchtigem Zorn hat Paramisha Eccos Stimme ausgerissen, sie in einer Kristallphiole versiegelt und einem Megogalamdraga in den Rachen geworfen. Eccos Stimme ist für sie auf immer verloren, nur eine andere, neue Stimme könnte ihr wieder die Fähigkeit verleihen, sich zu verständigen. Ich weiß das, weil ich einmal mit Paramishas Liebhaber selbst gesprochen habe."~ */
  IF ~~ THEN REPLY #41574 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 44
  IF ~~ THEN REPLY #41575 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 19.0
  SAY #41351 /* ~Du beendest das Spiel mit etwa demselben Ergebnis wie vorher.

"Ein wirklich unterhaltsames Spiel. Noch einmal?"
~ */
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41576 /* ~"Nicht gerade jetzt. Ich hätte da ein paar Fragen..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41577 /* ~"Nicht gerade jetzt. Ich hätte da ein paar Fragen..."~ */ GOTO 44
  IF ~~ THEN REPLY #41578 /* ~"Vielleicht ein anderes Mal, Dolora. Leb wohl."~ */ EXIT
END
