// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRIDSKEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DRIDSKEL~

IF ~  GlobalLT("DN_Riddle","AR1500",2)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #20324 /* ~Dieses Skelett schüttelt den Kopf und kichert vor sich hin. Hin und wieder läßt es eine Lachsalve erschallen, schnauft und beißt sich in seine knochige Hand, um sich zu beruhigen. Es ist so alt, daß kein Fleisch mehr an seinen Knochen hängt... nur noch ein paar bunte Lumpen.~ */
  IF ~~ THEN REPLY #20356 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #20357 /* ~Ignoriere es und geh vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20325 /* ~"Sei gegrüßt, ja!" Es kichert, und mit jedem Ausatmen quellen Staubwölkchen aus seinem Mund.~ */
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20358 /* ~"Wie ich höre, hast du ein schwieriges Rätsel."~ */ GOTO 5
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20359 /* ~"Ich hätte gern die Antwort auf eins deiner Rätsel."~ */ GOTO 3
  IF ~~ THEN REPLY #20360 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #20361 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #20326 /* ~"Es wäre besser für dich, jemand anderen um Antworten zu ersuchen, denn ich habe kein Interesse daran, deine Fragen zu hören." Es hält sich den Mund zu, kichert und schnauft. "Ich weiß, schrecklich unhöflich, aber das mußt du mir verzeihen."~ */
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20362 /* ~"Wie ich höre, hast du ein schwieriges Rätsel."~ */ GOTO 5
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20363 /* ~"Ich hätte gern die Antwort auf eins deiner Rätsel."~ */ GOTO 3
  IF ~~ THEN REPLY #20364 /* ~"Also gut. Dann finde ich halt jemand anderes. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1
  SAY #20327 /* ~Es kichert neckend. "Ganz sicher nicht!" Dein Gesichtsausdruck veranlaßt es nur, noch lauter zu lachen und mit seinen Zähnen in deine Richtung zu klappern.~ */
  IF ~~ THEN REPLY #20365 /* ~"Wie lautet das Rätsel denn?"~ */ GOTO 5
  IF ~~ THEN REPLY #20366 /* ~Wahrheit: "Sag's mir, oder ich brech dich in winzige, kichernde Stückchen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Riddling_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20367 /* ~Täuschung: "Sag's mir, oder ich brech dich in winzige, kichernde Stückchen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Riddling_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20368 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2 15.1 15.2
  SAY #20328 /* ~Das Lachen endet abrupt. "Hmff!" Das Skelett wendet den Kopf von dir ab.~ */
  IF ~~ THEN REPLY #20370 /* ~Geh.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 2.0 3.0
  SAY #20329 /* ~Es nickt kichernd. "Willst du es hören?"~ */
  IF ~~ THEN REPLY #20371 /* ~"Ja."~ */ GOTO 6
  IF ~~ THEN REPLY #20372 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20330 /* ~"Ähem! Also: Ein Teil eines Vogels, aber nur auf Erden. Kann schwimmen im Wasser, ohne naß zu werden. Was ist es?"~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #20373 /* ~"Ganz einfach. Es ist der Schatten."~ */ DO ~SetGlobal("DN_Riddle","AR1500",2)
AddexperienceParty(6250)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #20374 /* ~"Das ist... äh... hmm."~ */ GOTO 14
  IF ~~ THEN REPLY #20375 /* ~"Ich denk drüber nach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #20331 /* ~"Aaaaah! Woher hast du das gewußt?!"~ */
  IF ~~ THEN REPLY #20376 /* ~"Der Schatten begleitet den Vogel als ein Teil von ihm und man sieht ihn auf der Erdoberfläche. Auf dem Wasser sieht's so aus als ob er schwämme und naß werden kann er ja nicht, weil er kein Gegenstand ist."~ */ GOTO 9
  IF ~~ THEN REPLY #20377 /* ~Geh lachend weg.~ */ GOTO 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #20332 /* ~[kein Text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 29.0 30.0
  SAY #20333 /* ~"Ach, Papperlapapp! Naja. Sag nur die Antwort nicht weiter. Versprichst du mir wenigstens das?"~ */
  IF ~~ THEN REPLY #20378 /* ~"Warum nicht?"~ */ GOTO 10
  IF ~~ THEN REPLY #20379 /* ~"Sicher. Ich schweige wie ein Grab. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20380 /* ~"Ich werd' hier überhaupt nichts versprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.0
  SAY #20334 /* ~"Weil mir die Vorstellung gefällt, daß sie in alle Ewigkeit dastehen und versuchen, das Rätsel zu lösen." Es kichert hämisch und hält sich mit seiner knochigen Hand den Mund zu. "Nun? Versprichst du es?"~ */
  IF ~~ THEN REPLY #20381 /* ~"Sicher. Ich schweige wie ein Grab. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20382 /* ~"Ich werd überhaupt nichts versprechen. Leb wohl."~ */ EXIT
END

IF ~  Global("DN_Riddle","AR1500",2)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 11 // from:
  SAY #20335 /* ~"Vergiß nicht..." Es unterbricht sich und kichert. "Sag die Antwort niemandem weiter!"~ */
  IF ~~ THEN REPLY #20383 /* ~"Ja, ja. Leb wohl."~ */ EXIT
END

IF ~  Global("DN_Riddle","AR1500",3)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 12 // from:
  SAY #20336 /* ~"Schuft! Ruinierst mir mein ganzes Vergnügen, Baator soll dich holen! Ich würde auf dich spucken, wenn ich könnte! Hmff!" Das Skelett wendet seinen Kopf von dir ab.~ */
  IF ~~ THEN REPLY #20384 /* ~Geh weg.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.1 30.1
  SAY #20337 /* ~"Warte, warte! Sag niemandem die Antwort. Versprichst du mir wenigstens das?"~ */
  IF ~~ THEN REPLY #20385 /* ~"Warum nicht?"~ */ GOTO 10
  IF ~~ THEN REPLY #20386 /* ~"Sicher. Ich schweige wie ein Grab. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20387 /* ~"Ich werd überhaupt nichts versprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #20338 /* ~Das Skelett bricht in hämisches Gelächter aus. Es zeigt mit einem seiner knochigen Finger auf dich, kichert und klappert mit den Zähnen, während es sich den unsichtbaren Bauch hält.~ */
  IF ~~ THEN REPLY #20388 /* ~"In Ordnung, wie lautet die Antwort?"~ */ GOTO 15
  IF ~~ THEN REPLY #20389 /* ~"Heh. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #20339 /* ~"Keine Chance! Keine *Chance*!" Dein Gesichtsausdruck veranlaßt es nur, noch lauter zu lachen und mit den Zähnen in deine Richtung zu klappern.~ */
  IF ~~ THEN REPLY #20390 /* ~"Wie wär's, wenn ich *dir* ein Rätsel stelle, das du nicht lösen kannst? Wirst du mir dann die Lösung von deinem sagen?"~ */ GOTO 16
  IF ~~ THEN REPLY #20391 /* ~Wahrheit: "Sag's mir, oder ich brech dich in winzige, kichernde Stückchen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Riddling_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20392 /* ~Täuschung: "Sag's mir, oder ich brech dich in winzige, kichernde Stückchen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Riddling_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20393 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #20340 /* ~Das Lachen endet abrupt. "Was war das?" Es hält eine knochige Hand hinter sein imaginäres Ohr. "Höre ich da... eine Herausforderung? Ja... ja... sprich weiter! Aber wenn du verlierst oder auf halber Strecke aufgibst, werde ich nie wieder mit dir reden!"~ */
  IF ~~ THEN REPLY #20394 /* ~"Also gut. Fangen wir an."~ */ GOTO 17
  IF ~~ THEN REPLY #20395 /* ~"Ist auch egal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20341 /* ~Es nickt enthusiastisch.~ */
  IF ~~ THEN REPLY #20396 /* ~"Hmm. Was besitzt mehr Wert? Ein Pfund Einhunderter-Münzen aus purem Gold, oder ein halbes Pfund Zweihunderter-Münzen, ebenfalls aus purem Gold?"~ */ GOTO 18
  IF ~~ THEN REPLY #20397 /* ~"Ist auch egal. Leb wohl."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #20342 /* ~"Einfach, viel zu einfach! Ein Pfund Gold ist *immer* mehr wert als ein halbes Pfund! Nicht sehr clever!" Es kichert.~ */
  IF ~~ THEN REPLY #20398 /* ~"Also gut. Jetzt bist du dran."~ */ GOTO 19
  IF ~~ THEN REPLY #20399 /* ~"Ist auch egal. Leb wohl."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #20343 /* ~Das Skelett hockt sich hin und zeichnet ein einfaches Gesicht in den Staub. Es zeigt darauf und sagt: "Onkel und Brüder habe ich keine, aber dieses Mannes Vater ist meines Vaters Sohn. Wer ist er, hä?"~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #20400 /* ~"Dein Sohn."~ */ DO ~AddexperienceParty(625)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #20401 /* ~"Ich... weiß es nicht."~ */ GOTO 31
  IF ~~ THEN REPLY #20402 /* ~"Ist auch egal. Leb wohl."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20344 /* ~"Bah! Du bist dran."~ */
  IF ~~ THEN REPLY #20403 /* ~"Der, der es macht, will es nicht, der, der es kauft, benutzt es nicht, und der, der es nutzt, sieht es nicht. Was ist das?"~ */ GOTO 21
  IF ~~ THEN REPLY #20404 /* ~"Ist auch egal. Leb wohl."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #20345 /* ~Das Skelett kichert kindisch. "Stimmt nicht, stimmt nicht! Die Antwort ist 'Sarg', und ich seh' meinen ohne Zweifel!"~ */
  IF ~~ THEN REPLY #20405 /* ~"Also gut. Du bist wieder dran."~ */ GOTO 22
  IF ~~ THEN REPLY #20406 /* ~"Ist auch egal. Leb wohl."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #20346 /* ~"Welches Wort mit sechs Buchstaben spricht auch der größte der sterblichen Weisen falsch aus?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #20407 /* ~"Hmm. 'Falsch.'"~ */ DO ~AddexperienceParty(1250)
~ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #20408 /* ~"Ich... weiß es nicht."~ */ GOTO 31
  IF ~~ THEN REPLY #20409 /* ~"Ist auch egal. Leb wohl."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #20347 /* ~Es droht dir mit der Faust. "Oooh, verflucht! Hau doch ab."~ */
  IF ~~ THEN REPLY #20410 /* ~"Nachts kommen sie, ohne geholt zu werden, und bei Tag verschwinden sie, ohne gestohlen zu werden."~ */ GOTO 24
  IF ~~ THEN REPLY #20411 /* ~"Ist auch egal. Leb wohl."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #20348 /* ~"Äh... hmm. Ah... Sterne! Sterne, hi hi!"~ */
  IF ~~ THEN REPLY #20412 /* ~"Ja, selbstverständlich. Stell deine Frage."~ */ GOTO 25
  IF ~~ THEN REPLY #20413 /* ~"Ist auch egal. Leb wohl."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20349 /* ~Das Skelett läßt die Fingerknöchel knacken. "Mich gab es nie, mich wird es immer geben, niemand sah mich je, noch wird mich jemals jemand sehen. Und doch vertrauen alle auf mich, die in dieser heiligen Halle leben und atmen."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #20414 /* ~"Die Antwortet lautet... ähm... ah! 'Morgen'. "~ */ DO ~AddexperienceParty(1875)
~ GOTO 26
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #20415 /* ~"Ich... weiß es nicht."~ */ GOTO 31
  IF ~~ THEN REPLY #20416 /* ~"Ist auch egal. Leb wohl."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #20350 /* ~"Waaah! Ja, 'morgen', in der Tat. Jetzt du."~ */
  IF ~~ THEN REPLY #20417 /* ~"Gut. Was ist der Anfang der Ewigkeit, das Ende von Stunde und Meile, der Anfang allen Endes und das Ende aller Tage?"~ */ GOTO 27
  IF ~~ THEN REPLY #20418 /* ~"Ist auch egal. Leb wohl."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #20351 /* ~Das Skelett fängt an, hämisch zu kichern, hört aber plötzlich wieder auf. "Ah... em. Oh je."~ */
  IF ~~ THEN REPLY #20419 /* ~"Nun? Deine Antwort... wenn ich bitten darf."~ */ GOTO 28
  IF ~~ THEN REPLY #20420 /* ~Lach ihm deinerseits hämisch ins Gesicht.~ */ GOTO 28
  IF ~~ THEN REPLY #20421 /* ~Warte geduldig.~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1 27.2
  SAY #20352 /* ~Das Skelett läßt den Kopf hängen. "Ich... weiß es nicht."~ */
  IF ~~ THEN REPLY #20422 /* ~"Gib mir die Antwort auf dein erstes Rätsel, und ich geb dir meine."~ */ DO ~SetGlobal("DN_Riddle","AR1500",2)
AddexperienceParty(2500)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #20353 /* ~Es nickt. "Die Antwort ist 'Schatten'. Er ist das Teil eines Vogels das du auf der Erdoberfläche siehst, nicht in der Luft. Aber auch auf dem Wasser. Schwimmen kann er nicht, aber es scheint fast so. Das soll nur verwirren." Es seufzt laut. "Und deine Antwort?"~ */
  IF ~~ THEN REPLY #20423 /* ~"Der Buchstabe 'E'."~ */ GOTO 9
  IF ~~ THEN REPLY #20424 /* ~"Keine Chance, keine Chance. Leb wohl."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #20354 /* ~"He... amüsant. Also, was ist die Antwort? Ah... warte! Wo gehst du hin?"~ */
  IF ~~ THEN REPLY #20425 /* ~"Also gut. Der Buchstabe 'E'."~ */ GOTO 9
  IF ~~ THEN REPLY #20426 /* ~Lach kurz und geh weg.~ */ GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 19.1 22.1 25.1
  SAY #20355 /* ~Das Skelett windet sich vor Lachen. Sein Gackern und Johlen hallt von den Wänden der Katakombe wider, und dabei läßt das Skelett die ganze Zeit fröhlich seinen Kopf rotieren und klappert dich mit seinen Zähnen an.~ */
  IF ~~ THEN REPLY #20428 /* ~Geh weg.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~  Global("DN_Riddler","AR1500",1)
~ THEN BEGIN 32 // from:
  SAY #48939 /* ~Das Skelett ignoriert jeden Versuch, ein Gespräch mit ihm anzufangen.~ */
  IF ~~ THEN REPLY #48940 /* ~Geh weg.~ */ EXIT
END
