// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL1~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10418 /* ~Dieser milchgesichtige, kräftige junge Kerl schaut dich kurz an. Dann platzt er heraus: "Du! Ich hab' schon viel von dir gehört! Du bist verhaftet! Nein, warte... hingerichtet sollst du werden!" Angriffslustig hebt er seine Waffe hoch.~ */
  IF ~~ THEN REPLY #10419 /* ~Greif ihn an.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10420 /* ~Flieh.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10421 /* ~Du siehst einen jungen Kerl, der kaum über achtzehn ist. Er macht eine leicht angespannte Miene. "Brauchst du Hilfe, Schleifer?"~ */
  IF ~~ THEN REPLY #10422 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10423 /* ~"Ich suche nach einem Journal. Du hast nicht zufällig eins gesehen?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10424 /* ~"Ich suche einen Sammler mit Namen Pharod. Weißt du vielleicht, wo er zu finden ist?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10425 /* ~"Was kannst du mir über Vhailor erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #10427 /* ~"Wer sind denn deine Freunde hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #10428 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #10429 /* ~"Was machst du?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10430 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10431 /* ~"Du schon wieder? Was willst du?" Er wirkt ungeduldig und nervös.~ */
  IF ~  Global("Know_Killer","GLOBAL",1)
~ THEN REPLY #10432 /* ~"Ist dein Mörder schon aufgetaucht?"~ */ GOTO 8
  IF ~~ THEN REPLY #10433 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10434 /* ~"Ich suche nach einem Journal. Du hast nicht zufällig eins gesehen?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10435 /* ~"Ich suche einen Sammler mit Namen Pharod. Weißt du vielleicht, wo er zu finden ist?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10436 /* ~"Was kannst du mir über Vhailor erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #10437 /* ~"Wer sind denn deine Freunde hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #10438 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #10439 /* ~"Was machst du?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10440 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1 10.1
  SAY #10441 /* ~"Ich bin Caleb, ein Gnadentöter. Ich bin mit Tarner und Ilsidon hier, um meinen ersten Verbrecher zu stellen."~ */
  IF ~~ THEN REPLY #10442 /* ~"Was kannst du mir über die Gnadentöter erzählen?"~ */ GOTO 9
  IF ~~ THEN REPLY #10443 /* ~"Ich verstehe. Ich würde gerne noch eine Frage stellen."~ */ GOTO 10
  IF ~~ THEN REPLY #10444 /* ~"Viel Glück. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.2 10.2
  SAY #10445 /* ~"Ein Journal? Nein, tut mir leid. Ich bin noch neu hier und kenn mich kaum aus. Aber wenn ich eins sehe, sag ich dir Bescheid." Er sieht sich in der Bar um.~ */
  IF ~~ THEN REPLY #10446 /* ~"Was machst du?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10447 /* ~"Danke. In der Zwischenzeit kannst du mir vielleicht ein paar Fragen beantworten."~ */ GOTO 10
  IF ~~ THEN REPLY #10448 /* ~"Danke. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.4 2.5 10.5
  SAY #10449 /* ~"Das sind die Leute, die aufpassen, daß ich meinen Job nicht vermassele. Tarner ist der ältere von beiden, und Ilsidon paßt auf, daß ich den Job richtig erledige, und soll mir beistehen, wenn ich ihn brauche." Er schluckt geräuschvoll. "Aber ich hoffe, das wird nicht nötig sein."
~ */
  IF ~~ THEN REPLY #10450 /* ~"Wird schon klappen, glaub mir. Könntest du mir ein paar Fragen beantworten?"~ */ GOTO 10
  IF ~~ THEN REPLY #10451 /* ~"Ich wünsch' dir viel Glück. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5 2.6 10.6
  SAY #10452 /* ~"Das hier? Das ist die Schwelende Leiche. Ich glaube, sie heißt so wegen des Kerls am Eingang. Hier treffen sich Verbrecher und anderes Gesocks. Aber... es gibt hier auch ein paar Schleifer, die wissen, wo's lang geht. Einige davon sind allerdings Scheusale, von denen ich lieber die Finger lasse. Bei denen hab' ich immer das Gefühl, daß ihr Blick meine Seele durchdringt."~ */
  IF ~~ THEN REPLY #10453 /* ~"Verstehe schon. Kannst du mir dann vielleicht ein paar andere Fragen beantworten?"~ */ GOTO 10
  IF ~~ THEN REPLY #10454 /* ~"Tun sie auch. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.7 4.0 10.7
  SAY #10455 /* ~"Da ich neu bei den Gnadentötern bin, soll ich einen Verbrecher seiner gerechten Strafe zuführen, um zu beweisen, daß ich auch die Praxis beherrsche. Ich habe beschlossen, mir einen Mörder vorzuknöpfen. Wir haben uns also umgehört und erfahren, daß wir hier einen finden würden. Allerdings hab' ich noch keinen gesehen. Ich bin etwas nervös, wenn ich ehrlich bin. So, und jetzt würd ich mir gern noch mal die Gesichter der Leute hier anschauen, wenn du erlaubst." Er reckt den Hals, um sich in der Bar umzusehen.~ */
  IF ~~ THEN REPLY #10456 /* ~"Nur noch ein paar Fragen, dann laß ich dich in Ruhe."~ */ GOTO 10
  IF ~~ THEN REPLY #10457 /* ~"Also gut. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0 10.0
  SAY #10458 /* ~"Nein. Noch nicht. Aber Tarner sagt, der Verbrecher wird schon noch auftauchen. Jetzt heißt es eben abwarten."~ */
  IF ~~ THEN REPLY #10459 /* ~"Richtig. Beantworte mir nun ein paar Fragen."~ */ GOTO 10
  IF ~~ THEN REPLY #10460 /* ~"Viel Glück. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0
  SAY #10461 /* ~"Nun, sie glauben, äh, *ich* - daran muß ich mich erst gewöhnen! - also ich glaube, daß es im Leben nichts Wichtigeres gibt als die Gerechtigkeit. Ich glaube, daß das Leben ohne Gerechtigkeit sinnlos ist, und wenn unser Leben keinen Sinn hat, können wir uns genauso gut umbringen. Da ich nicht vorhabe, mich umzubringen, habe ich beschlossen, die Gerechtigkeit zum Sinn meines Lebens zu erklären. Wenn du mehr wissen möchtest, solltest du die andren beiden fragen, oder einen unserer Anwerber. Die labern dich voll, bis dir die Ohren abfallen!"~ */
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10462 /* ~"Was kannst du mir über Vhailor erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #10463 /* ~"Vielleicht werd' ich das sogar tun. Kannst du mir vorher noch ein paar Fragen beantworten?"~ */ GOTO 10
  IF ~~ THEN REPLY #10464 /* ~"Das war's schon. Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.1 4.1 5.0 6.0 7.0 8.0 9.1 11.0 12.0
  SAY #10465 /* ~"Was willst du wissen?"~ */
  IF ~  Global("Know_Killer","GLOBAL",1)
~ THEN REPLY #10466 /* ~"Ist dein Mörder schon aufgetaucht?"~ */ GOTO 8
  IF ~~ THEN REPLY #10467 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10468 /* ~"Ich suche nach einem Journal. Du hast nicht zufällig eins gesehen?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10469 /* ~"Ich suche einen Sammler mit Namen Pharod. Weißt du vielleicht, wo er zu finden ist?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10470 /* ~"Was kannst du mir über Vhailor erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #10471 /* ~"Wer sind denn deine Freunde hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #10472 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #10473 /* ~"Was machst du?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10474 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.2 2.3 10.3
  SAY #10475 /* ~"Kann nicht sagen, daß ich von dem schon gehört hab. Ist das 'n Krimineller? Vielleicht kriegen wir den ja später noch. Danke für den Hinweis, Bürger."~ */
  IF ~~ THEN REPLY #10476 /* ~"Ich will ihn nur finden, nicht töten. Kannst du mir vielleicht noch ein paar andere Fragen beantworten?"~ */ GOTO 10
  IF ~~ THEN REPLY #10477 /* ~"Gern geschehen. Wenn du ihn erwischst, dann sag mir Bescheid, bevor du ihn tötest. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.3 2.4 9.0 10.4
  SAY #10478 /* ~"Vhailor? Das war doch einer dieser alten Gnadentöter... Wenn ich es schaffe, will ich so werden wie er. Er war praktisch ein Gott!"~ */
  IF ~~ THEN REPLY #10479 /* ~"Eine Inspiration für dich, sicher. Kannst du mir vielleicht noch ein paar Fragen beantworten?"~ */ GOTO 10
  IF ~~ THEN REPLY #10480 /* ~"Ich verstehe. Danke auch."~ */ EXIT
END
