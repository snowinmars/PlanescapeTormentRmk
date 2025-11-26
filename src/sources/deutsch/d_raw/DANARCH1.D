// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #44239 /* ~Du siehst eine Frau mittleren Alters. Ihr Gesicht ist voller Sorgenfalten. Sie wirkt mitgenommen - als hätte sie ein hartes Leben hinter sich. "Kann ich dir irgendwie helfen, Fremder?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44241 /* ~"Ein Freund hat mir erzählt, daß es hier eine Anarchisten-Zelle gibt. Das Erkennungswort lautet 'Eklipse'." ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44247 /* ~"Wer bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #44248 /* ~"Was ist das für ein Ort?"~ */ GOTO 5
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #44249 /* ~"Ich suche einen schwebenden, sarkastischen Schädel. Hast du irgendwo einen gesehen?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #44251 /* ~"Ich brauch nichts. Tut mir leid. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #44254 /* ~"Suchst du was?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44255 /* ~"Ein Freund hat mir erzählt, daß es hier eine Anarchisten-Zelle gibt. Das Erkennungswort lautet 'Eklipse'." ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44256 /* ~"Wer bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #44257 /* ~"Was ist das für ein Ort?"~ */ GOTO 5
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #44258 /* ~"Ich suche einen schwebenden, sarkastischen Schädel. Hast du irgendwo einen gesehen?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #44260 /* ~"Ich brauch nichts. Tut mir leid. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #44262 /* ~"Schon zurück? Jemandem einen Strich durch die Rechnung gemacht?"~ */
  IF ~  GlobalGT("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #44263 /* ~"Noch nichts. Ich möchte nur, daß du mir ein paar Fragen beantwortest."~ */ GOTO 12
  IF ~  Global("Kill_Vorten","GLOBAL",1)
Dead("Vorten")
~ THEN REPLY #44264 /* ~"Dieser Offizier des Harmoniums? Er ist tot."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #39496 /* ~Ich habe Leena berichtet, daß ich den Harmonium-Offizier umgebracht habe.~ */ GOTO 11
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",2)
~ THEN REPLY #44265 /* ~"Nicht in letzter Zeit. Ich wollte dir nur ein paar Fragen stellen."~ */ GOTO 12
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
GlobalLT("Kill_Vorten","GLOBAL",3)
~ THEN REPLY #44266 /* ~"Noch nicht. Ich wollte dir nur ein paar Fragen stellen."~ */ GOTO 7
  IF ~~ THEN REPLY #44267 /* ~"Ich bin gerade dabei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 4.2 5.0
  SAY #44268 /* ~Sie mustert dich aufmerksam. Dann murmelt sie etwas vor sich hin, das sich anhört wie: "Muß das bald ändern..." Sie sammelt sich wieder und schaut dir tief in die Augen. "Du willst einer von uns sein, was? Beweise es."~ */
  IF ~~ THEN REPLY #44269 /* ~"Wie?"~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #44270 /* ~"Ich hab dir überhaupt nichts zu beweisen."~ */ GOTO 15
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #44271 /* ~"Die Person, von der ich die Information habe, ist Gesetzesspötter Penn. Er sagte, du würdest seinen Namen kennen."~ */ GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #44272 /* ~"Ich bin Leena. Ich paß auf die andern beiden hier auf." Sie deutet mit der Hand auf sie.~ */
  IF ~~ THEN REPLY #44273 /* ~"Was tust du hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #44274 /* ~"Was ist das für ein Ort?"~ */ GOTO 5
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44275 /* ~"Ein Freund hat mir erzählt, daß es hier eine Anarchisten-Zelle gibt. Das Erkennungswort lautet 'Eklipse'." ~ */ GOTO 3
  IF ~~ THEN REPLY #44276 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.2 4.0 4.1
  SAY #44277 /* ~"Das hier ist ein Lager. Ich bin die Aufseherin. Hier werden Dinge eingelagert und abgeholt..." Sie zuckt mit den Achseln. "Besonders viel gibt es dazu nicht zu sagen."~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44278 /* ~"Ein Freund hat mir erzählt, daß es hier eine Anarchisten-Zelle gibt. Das Erkennungswort lautet 'Eklipse'." ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44279 /* ~"Verstehe. Danke und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 1.3
  SAY #44280 /* ~"Ein schwebender, sarkastischer Schädel? Tut mir leid. Nicht, daß ich einen gesehen hätte. Aber wenn du einen Schädel suchst, dann geh doch mal zu den Knochen der Nacht. Du siehst aus, als würdest du auf Narben stehen, und Lothar würde dir sicher gern ein paar neue verpassen - das ist so sicher wie der Haß zwischen Balors und Grubenscheusalen."~ */
  IF ~~ THEN REPLY #44281 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY #44282 /* ~"Wurde dein Unterfangen schon... von Erfolg gekrönt? Sag mal ehrlich."~ */
  IF ~  Global("Kill_Vorten","GLOBAL",1)
Dead("Vorten")
~ THEN REPLY #44302 /* ~"Ja. Er ist tot."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #39496 /* ~Ich habe Leena berichtet, daß ich den Harmonium-Offizier umgebracht habe.~ */ GOTO 11
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44303 /* ~Wahrheit: "Noch nicht."~ */ GOTO 8
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44304 /* ~Lüge: "Ja. Er ist tot."~ */ GOTO 10
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44305 /* ~"Hm... Was war noch mal meine Aufgabe?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.3
  SAY #44306 /* ~"Du solltest dir doch diesen scheinheiligen Harmonium-Klugscheißer Vorten vornehmen. Mach schon, und verschwende nicht meine Zeit!"~ */
  IF ~~ THEN REPLY #44307 /* ~"Ich wollte nur ein paar Fragen stellen..."~ */ GOTO 9
  IF ~~ THEN REPLY #44308 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0
  SAY #44309 /* ~Sie dreht sich um und beginnt, ihren Untergebenen Befehle zu erteilen. Sie ignoriert dich völlig.~ */
  IF ~~ THEN REPLY #44310 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #44311 /* ~"Erzähl mir bloß keine Lügenmärchen. Das würde bedeuten, daß du meine Quellen nicht respektierst, was dich in meinen Augen ziemlich dumm aussehen läßt. Und jetzt geh und erledige deine Aufgabe."~ */
  IF ~~ THEN REPLY #44312 /* ~"Ich wollte nur ein paar Fragen stellen!"~ */ GOTO 9
  IF ~~ THEN REPLY #44313 /* ~"Geht in Ordnung. Ich komm bald wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1 7.0
  SAY #44314 /* ~"Gut, gut... Er ist uns bei unserer Arbeit etwas zu dicht auf die Pelle gerückt, auch wenn er das selbst gar nicht wußte. Jetzt werden sich diese Unterdrücker mit ihrem roten Panzer wohl ein neues Ziel suchen." Ihre Augen funkeln. "Du hast bewiesen, daß du deine Rolle spielen kannst. Was wolltest du eigentlich?"~ */
  IF ~~ THEN REPLY #44315 /* ~"Ich würde gern ein paar Fragen stellen..."~ */ GOTO 12
  IF ~~ THEN REPLY #44316 /* ~"Eine Bleibe."~ */ GOTO 13
  IF ~~ THEN REPLY #44317 /* ~"Ich brauch noch ein paar Sachen von hier."~ */ GOTO 13
  IF ~~ THEN REPLY #44318 /* ~"Erst mal gar nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.0 2.2 11.0 13.0 14.0 18.1 19.0 20.0 21.1 22.1 23.0 24.0
  SAY #44319 /* ~"Was willst du wissen?"~ */
  IF ~~ THEN REPLY #44320 /* ~"Ich brauche eine Bleibe."~ */ GOTO 13
  IF ~~ THEN REPLY #44321 /* ~"Ich brauch noch ein paar Sachen."~ */ GOTO 13
  IF ~~ THEN REPLY #44322 /* ~"Erzähl mir ein wenig über deine Zelle."~ */ GOTO 18
  IF ~~ THEN REPLY #44323 /* ~"Was verfolgst du hier für ein Ziel?"~ */ GOTO 19
  IF ~~ THEN REPLY #44324 /* ~"Weshalb bist du ein Anarchist?"~ */ GOTO 20
  IF ~~ THEN REPLY #44325 /* ~"Was kannst du mir über die Revolutionsliga erzählen?"~ */ GOTO 21
  IF ~~ THEN REPLY #44326 /* ~"Nichts weiter, glaub ich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 11.2 12.0 12.1
  SAY #44327 /* ~"Sprich mit Conall da drüben. Dafür ist er bei uns zuständig."~ */
  IF ~~ THEN REPLY #44328 /* ~"In Ordnung. Aber beantworte mir noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #44329 /* ~"Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.2
  SAY #44330 /* ~Sie macht große Augen. "Er ist einer der ganz Oberen, soviel ich herausfinden konnte. Was willst du?"~ */
  IF ~~ THEN REPLY #44331 /* ~"Ich brauche nur ein paar Antworten..."~ */ GOTO 12
  IF ~~ THEN REPLY #44332 /* ~"Im Moment gar nichts. Ich wollte mich nur mal vorstellen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.1
  SAY #44333 /* ~"Das mußt du sehr wohl. Sonst wissen wir ja nicht, ob dir irgendein Schwätzer das Erkennungswort verkauft hat und du eine klappernde Knochenschüssel wie jede andere bist. Entweder du stellst deine Loyalität unter Beweis, oder du stirbst."~ */
  IF ~~ THEN REPLY #44334 /* ~"Ich werde es beweisen."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #44335 /* ~"Versuch doch, mich zu töten. Los, trau dich."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1 17.1
  SAY #44336 /* ~"Wie du willst." Sie pfeift ihre Kollegen herbei, die sofort auf dich losgehen!~ */
  IF ~~ THEN REPLY #44337 /* ~Kämpfe.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #44338 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.0 15.0
  SAY #44339 /* ~"Es gibt da einen Offizier des Harmoniums namens Vorten. Du findest ihn in der Nähe des Eingangs, der vom Stock in den Unteren Bezirk führt. Erschlag ihn und erstatte mir dann Bericht." Sie dreht sich um, fügt aber noch hinzu: "Versuch erst gar nicht zu lügen - meine Augen sind *überall*."~ */
  IF ~~ THEN REPLY #44340 /* ~"Ich bin dabei."~ */ JOURNAL #39497 /* ~Leena aus dem Warenlager im Unteren Bezirk hat mir aufgetragen, daß ich meine Loyalität zu den Anarchisten beweisen solle, indem ich den Harmonium-Offizier Vorten umbringe.~ */ EXIT
  IF ~~ THEN REPLY #44341 /* ~"Vergiß es. Dazu mußt du zuerst mich umbringen."~ */ GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #44342 /* ~"Wir sind zu dritt. Wir unterstehen einem, dessen Namen ich nicht verraten darf, und arbeiten unabhängig voneinander. Manchmal stellt uns ein Außenstehender irgendwelche Personen vor, und je nachdem, was wir über diese Personen wissen, helfen wir ihnen oder nicht. Conall ist unser Lagerist, Otis ist unser Schläger, und ich bin der Denker."~ */
  IF ~~ THEN REPLY #44343 /* ~"Woher wißt ihr, wem ihr vertrauen könnt?"~ */ GOTO 22
  IF ~~ THEN REPLY #44344 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #44345 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.3
  SAY #44346 /* ~"Unser Ziel ist es, das moderne System zu zerstören und diese ganze korrupte Organisation umzustürzen. Wir wollen, daß die Sanftmütigen ans Ruder kommen. Und zwar so schnell wie möglich."~ */
  IF ~~ THEN REPLY #44347 /* ~"Hmm. Ich hätte da noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #44348 /* ~"Ach so. Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.4
  SAY #44349 /* ~"Was würde sonst mit all den Familien passieren, die durch die militanten Praktiken des Harmoniums auseinandergerissen werden? Und mit all meinen Freunden, die dahinsiechen und sterben, weil die Göttermenschen mit ihrem Qualm alles verpesten? Wer würde sonst etwas gegen das Prädestinat und seine überzogenen Forderungen unternehmen, oder gegen diese maßlosen Sinnsaten, die sich ein schönes Leben machen, während andere leiden? Aber du hast recht: Das zählt alles gar nichts. Was sollte ich eigentlich gegen die bestehende Ordnung einzuwenden haben?"~ */
  IF ~~ THEN REPLY #44350 /* ~"In Ordnung. Könntest du mir noch ein paar Fragen beantworten?"~ */ GOTO 12
  IF ~~ THEN REPLY #44351 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.5
  SAY #44352 /* ~"Du weißt bereits zu viel, besonders für einen, der gar nicht zu unserer Zelle gehört. Aber ich will es dir erklären: Wir sind in Zellen unterteilt, damit die eine Gruppe die andere nicht durch Unachtsamkeit oder unglückliche Umstände zerstören kann. Manchmal führt das dazu, daß wir an den entgegengesetzten Enden desselben Strangs ziehen. Doch meistens sind wir das Sandkorn im Getriebe der unterdrückerischen Bünde, die Sigil regieren. Wir sind ihnen lästig genug, daß sie uns ernst nehmen."~ */
  IF ~~ THEN REPLY #44353 /* ~"Wie haltet ihr Kontakt zueinander? Habt ihr eine Organisation?"~ */ GOTO 24
  IF ~~ THEN REPLY #44354 /* ~"Hört sich nach einer guten... aber gefährlichen Arbeit an. Ich hätte noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #44355 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.0
  SAY #44356 /* ~"Das wissen wir nicht. Deshalb müssen wir einander vertrauen. Aber wir sind sehr vorsichtig, auch untereinander, denn richtig sicher können wir uns nie sein. Es ist ein gefährliches Spiel, aber wir müssen es spielen, wenn wir uns je befreien wollen."~ */
  IF ~~ THEN REPLY #44357 /* ~"Wenn ihr einander nicht vertrauen könnt, woher wißt ihr dann, welches Ziel ihr anstrebt?"~ */ GOTO 23
  IF ~~ THEN REPLY #44358 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #44359 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #44360 /* ~"In diesem Augenblick haben wir kein anderes Ziel als die Zerstörung der bestehenden parasitären Ordnung. Die Vernichtung von Korruption steht an erster Stelle. Der Heilprozess kann erst beginnen, nachdem wir diese Gesellschaft entgiftet haben."~ */
  IF ~~ THEN REPLY #44361 /* ~"Stimmt. Dann beantworte mir doch noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #44362 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #44363 /* ~"Wir haben Unterschlupfe über den gesamten Großen Ring verteilt. Das beste ist, daß wir eine starke Zelle in Verdammnis haben, der Torstadt nach Carzeri. Wahrscheinlich macht sie sich aber erst dann bemerkbar, wenn was ganz GROSSES passiert. Diese Stadt steckt voller Verräter, und wenn so viele luchsige Leute ihre Finger im Spiel haben, sollte man die Hände nicht in den Schoß legen." ~ */
  IF ~~ THEN REPLY #44364 /* ~"Danke. Ich hätte aber noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #44365 /* ~"Danke. Leb wohl."~ */ EXIT
END
