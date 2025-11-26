// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHORNCO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHORNCO~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Thorncombe","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2943 /* ~Diese ansehnliche Frau mittleren Alters wandelt wie im Traum durch die Gegend, wobei sie abwesend auf ihrem Daumennagel herumkaut. Ihre Augen scheinen sich auf nichts Bestimmtes zu konzentrieren. Ihre Kleidung ist prächtig und elegant, wenn auch unordentlich, und ihr Haar ist leicht zerzaust.~ */
  IF ~~ THEN REPLY #31262 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #31263 /* ~Laß die Frau in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #31261 /* ~"Ja?" Sie nimmt den Daumen aus dem Mund und streicht eine Haarsträhne zurück, die ihr ins Gesicht gefallen ist.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31264 /* ~"Bist du zufällig Lady Dornenkamm?"~ */ GOTO 2
  IF ~~ THEN REPLY #31265 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #31266 /* ~"Kümmere dich nicht um mich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0 19.0
  SAY #31267 /* ~Ihre Augen weiten sich für einen kurzen Moment. Sie schaut weg. "Nein. Nein, das bin ich nicht."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31268 /* ~"Doch doch, das bist du wohl. Man hat mir gesagt, daß du die Zauberlehrerin der Städtischen Festhalle bist."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31269 /* ~"Du bist eine grauenhafte Lügnerin."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #31270 /* ~"Wer bist du denn dann, wenn ich fragen darf?"~ */ GOTO 17
  IF ~~ THEN REPLY #31271 /* ~"Egal. Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #31272 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 17.0 18.0 18.1
  SAY #31273 /* ~Lady Dornenkamm setzt eine verdrießliche Miene auf. "Und wenn ich diese Frau wäre? Was wäre dann?"~ */
  IF ~~ THEN REPLY #31274 /* ~"Ich hatte gehofft, hier in den Künsten der Magie unterrichtet zu werden."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ JOURNAL #31030 /* ~Ich habe Lady Dornenkamm getroffen, die Lehrerin der Zauberkundigen im Bezirk der Kuratoren, in einem der vielen Sinnsorien in der Festhalle. Sie lehnt es ab, mich zu unterrichten..., doch ich bin mir nicht sicher, warum.~ */ GOTO 4
  IF ~~ THEN REPLY #31275 /* ~"Dann will ich dich noch was fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #31276 /* ~"Nichts, schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 14.1 16.0
  SAY #31277 /* ~"Dann werde ich deine Hoffnung zerschmettern. Ich will keine Magie mehr lehren... und jetzt geh und laß mich in Ruhe."~ */
  IF ~~ THEN REPLY #31278 /* ~"Aber warum nicht?"~ */ GOTO 5
  IF ~~ THEN REPLY #31279 /* ~"Ich gehe gleich, aber vorher will ich noch was fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #31280 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #31281 /* ~"Das geht dich überhaupt nichts an!"~ */
  IF ~~ THEN REPLY #31282 /* ~"Doch... ich will lernen, und du kannst mich unterrichten. Ich kann dir etwas geben, was dich überzeugen wird, mich doch zu unterrichten."~ */ GOTO 8
  IF ~~ THEN REPLY #31283 /* ~"Na gut. Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 7.1
  SAY #31284 /* ~Sie schüttelt den Kopf. "Das muß nicht immer so sein... Magier haben körperliche Schwächen. Unsere Zauber sind lediglich Krücken gegen diese Schwächen. Wenn man seine Zauberkunst verbraucht hat, bleibt immer noch der Kampf."~ */
  IF ~~ THEN REPLY #31285 /* ~"Ich verstehe. Ich hab' noch andere Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #31286 /* ~"Ach so. Danke, und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.3 3.1 4.1 6.0 13.0 13.1 14.2 16.1 17.3 19.1 20.1
  SAY #31287 /* ~"Na gut. Frage mich." Sie klingt apathisch.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31288 /* ~"Bist du zufällig Lady Dornenkamm?"~ */ GOTO 2
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
GlobalGT("Thorncombe","GLOBAL",1)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #31289 /* ~"Qui-Sai will mich nicht trainieren... er behauptet, daß Zauber im Kampf besser seien als rohe Gewalt. Was meinst du dazu?"~ */ DO ~SetGlobal("CW_Thorn_Ans","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #66574 /* ~Qui-Sai hat abgelehnt, mich als Krieger zu trainieren, und mir die Vorzüge von Magiern aufgezählt. Ich habe aber mit Lady Dornenkamm gesprochen, der Zauberlehrerin der Städtischen Festhalle, und sie hat mir erklärt, daß Magier körperlich unzulänglich sind und ihre Zauber nur Krücken für diese Unzulänglichkeit sind. Das sollte ein gutes Gegenargument für Qui-Sai sein.~ */ GOTO 6
  IF ~~ THEN REPLY #31290 /* ~"Ich möchte dich was über dich fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #31291 /* ~"Ich hätte da ein paar Fragen über diesen Ort..."~ */ GOTO 13
  IF ~~ THEN REPLY #31292 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY #31293 /* ~Sie stößt einen lauten Seufzer aus und beginnt wieder, an ihrem Daumennagel zu kauen. "Ich bezweifle, daß du mir etwas geben kannst, was ich mir nicht selbst besorgen könnte. Die Sinnessteine geben mir alles, was ich mir mit Geld nicht kaufen kann."~ */
  IF ~~ THEN REPLY #31294 /* ~"Die Sinnessteine?"~ */ GOTO 9
  IF ~~ THEN REPLY #31295 /* ~"Na gut. Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #31296 /* ~"Mmm, ja... in jedem Stein ist eine Erfahrung gespeichert. Als ich zum ersten Mal in diese Hallen kam, habe ich mich kaum mit ihnen befaßt. Und erst jetzt weiß ich, was mir gefehlt hat..."~ */
  IF ~~ THEN REPLY #31297 /* ~"Was hat dir denn gefehlt?"~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",2)
~ JOURNAL #31299 /* ~Lady Dornenkamm scheint von den Sinnessteinen abhängig zu sein und es vorzuziehen, ihre Tage damit zu verbringen, die Erfahrungen anderer auszuprobieren, anstatt ihre Pflichten als Lehrerin der Magie wieder aufzunehmen. Ich frage mich, wie ich sie dazu überreden könnte, wieder zu lehren... ~ */ GOTO 10
  IF ~~ THEN REPLY #31298 /* ~"Na gut. Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #31300 /* ~Sie nickt lächelnd. Ihre Augen bekommen einen glasigen Glanz und sie schlingt ihre Arme fest um sich. "Man könnte Lebzeiten hier verbringen, bei den Steinen... eine wundersame Erfahrung nach der anderen... Worte allein können ihre Großartigkeit nicht beschreiben. Ich kann nur empfehlen, daß du dich selbst überzeugst."~ */
  IF ~~ THEN REPLY #31301 /* ~"Du bist ja... süchtig."~ */ GOTO 11
  IF ~~ THEN REPLY #31302 /* ~"Das tue ich vielleicht mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #31303 /* ~Sie knurrt dich an: "Blödsinn! Wenn ich wollte, könnte ich jederzeit damit aufhören! Ich habe mich eben *entschieden*, in ihren Wundern zu schwelgen. Warum soll ich meine Zeit damit vergeuden, bummelnde undankbare Zauberlehrlinge zu unterrichten, wenn ich hier bei diesen wertvollen Steinen bleiben und jeden Tag hundert neue Leben leben kann?"~ */
  IF ~~ THEN REPLY #31304 /* ~"Ich glaube nicht, daß die Steine dazu da sind. Wäre es nicht besser, wenn du deine eigenen Erfahrungen sammeln und diese dann mit anderen teilen würdest?"~ */ GOTO 12
  IF ~~ THEN REPLY #31305 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #31306 /* ~"Hm! Was *du* glaubst, ist mir ziemlich egal. Leb wohl."~ */
  IF ~~ THEN REPLY #31307 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2 7.3
  SAY #31308 /* ~Als du beginnst, deine Frage zu stellen, merkst du, daß sie dich nicht ansieht... und dir schon gar nicht zuhört.~ */
  IF ~  GlobalLT("Thorncombe","GLOBAL",2)
~ THEN REPLY #31309 /* ~"Hallo? Ich hätte da eine Frage..."~ */ GOTO 7
  IF ~  Global("Thorncombe","GLOBAL",2)
~ THEN REPLY #31310 /* ~"Lady Dornenkamm? Meine Frage..."~ */ GOTO 7
  IF ~~ THEN REPLY #31311 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.1 17.1 18.2
  SAY #31312 /* ~Lady Dornenkamm lächelt spöttisch. "Und du bist eine grauenhaft vernarbte Ruine von einem Menschen, ja, mehr eine Leiche, der man einen traurigen Anschein von Leben gegeben hat als alles andere. Verschwinde jetzt."~ */
  IF ~~ THEN REPLY #31313 /* ~"Wenn du noch mal so mit mir redest, dann bist *du* hier die Leiche."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Thorn_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #31314 /* ~"Warte... ich hatte gehofft, daß ich hier in den Künsten der Magie unterrichtet werden würde."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #31315 /* ~"Noch nicht. Ich will dich erst noch was fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #31316 /* ~"Nichts, schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #31317 /* ~Sie bellt dir ein spöttisches Lachen entgegen. "Geh und trommel dir vor jemanden auf die Brust, der dich vielleicht ein bißchen einschüchternd findet. Ich für meinen Teil werde es bald als Beleidigung aufnehmen und nicht mehr als Witz... und ich bin sicher, daß du dann lieber nicht in meiner Nähe sein willst."~ */
  IF ~~ THEN REPLY #31318 /* ~"Im Gegenteil. Laß uns den Film gleich vorspulen. Attacke!"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #31319 /* ~"Ich... wollte nicht, daß es so läuft. Bitte verzeih mir..."~ */ GOTO 16
  IF ~~ THEN REPLY #31320 /* ~"Ich gehe, weil du mich langweilst. Das ist der einzige Grund. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #31321 /* ~Geh einfach weg.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #31322 /* ~Sie schüttelt den Kopf und seufzt laut. "Ich verzeihe dir gern, aber nur, wenn du mich endlich in Ruhe läßt."~ */
  IF ~~ THEN REPLY #31323 /* ~"Aber ich hatte gehofft, daß ich in den Künsten der Magie unterrichtet werden würde."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ JOURNAL #31326 /* ~Ich habe Lady Dornenkamm getroffen, die Lehrerin der Zauberkundigen im Bezirk der Kuratoren, in einem der vielen Sinnsorien in der Festhalle. Sie lehnt es ab, mich zu unterrichten..., doch ich bin mir nicht sicher, warum.~ */ GOTO 4
  IF ~~ THEN REPLY #31324 /* ~"Gleich, aber erst will ich dich noch was fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #31325 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.2
  SAY #31327 /* ~Sie lächelt nervös. "Niemand von Bedeutung, das kannst du mir glauben."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31328 /* ~"Doch doch, das bist du wohl. Du bist Lady Dornenkamm, die Zauberlehrerin der Städtischen Festhalle."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31329 /* ~"Du bist eine grauenhafte Lügnerin."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #31330 /* ~"Wie heißt du?"~ */ GOTO 18
  IF ~~ THEN REPLY #31331 /* ~"Egal. Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #31332 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #31333 /* ~"Oh... ich heiße, äh... Adhana."~ */
  IF ~  GlobalGT("Adahn","GLOBAL",0)
~ THEN REPLY #31334 /* ~"Jetzt reicht's mir aber. Wir wissen *beide* genau, wer du bist, Lady Dornenkamm."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #31335 /* ~"Du bist Lady Dornenkamm, Zauberlehrerin der Städtischen Festhalle. Stimmt's?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #31336 /* ~"Du bist eine grauenhafte Lügnerin."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Thorncombe","GLOBAL",2)
~ THEN BEGIN 19 // from:
  SAY #31337 /* ~Die Frau wandert immer noch im Sinnsorium von einem Stein zum nächsten. Sie mustert dich, als du näherkommst, scheint dich aber nicht zu erkennen.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31338 /* ~"Bist du zufällig Lady Dornenkamm?"~ */ GOTO 2
  IF ~~ THEN REPLY #31339 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #31340 /* ~"Kümmere dich nicht um mich. Leb wohl."~ */ EXIT
END

IF ~  Global("Thorncombe","GLOBAL",2)
~ THEN BEGIN 20 // from:
  SAY #31341 /* ~Lady Dornenkamm blinzelt dich an, als ob sie versuchen würde, sich an dich zu erinnern. Plötzlich legt sie die Stirn in tiefe Falten. "Du! Ich hoffe, du bist nicht hergekommen, um mich wieder in den Ausbildungsraum zurückzuschleppen... denn da werde ich ganz sicher nicht hingehen."~ */
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #31342 /* ~"Hast du gewußt, daß Salabesh sich sehr über deine Entscheidung gefreut hat? Und er will der neue Zauberlehrer werden."~ */ GOTO 21
  IF ~~ THEN REPLY #31343 /* ~"Ich wollte dich eigentlich nur was fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #31344 /* ~"Nein, deshalb bin ich nicht hier. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #31345 /* ~"Salabesh?! Dieser dicke kleine Flegel... der Mann könnte sich nicht einmal selbst aus einem verschlissenen Sack herauszaubern! Was ist nun diese *Entscheidung*, von der du gesprochen hast?"~ */
  IF ~~ THEN REPLY #31346 /* ~"Nun, deine Entscheidung, in den Sinnsorien zu verweilen und unerfahreneren Magiern keinen Unterricht mehr zu geben."~ */ JOURNAL #31349 /* ~Ich habe der Lady Dornenkamm von Salabeshs Vorhaben erzählt, ihre Position als Zauberlehrerin in der Städtischen Festhalle einzunehmen... Anscheinend mögen sich die beiden nicht besonders, und sie kehrte schnell wieder in den Magietrainingsraum zurück, um seine Pläne zu durchkreuzen.~ */ GOTO 22
  IF ~~ THEN REPLY #31347 /* ~"Schon gut. Vergiß, daß ich was gesagt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #31350 /* ~"Was?! Aber... ich..."~ */
  IF ~~ THEN REPLY #31351 /* ~"Ja, Lady Dornenkamm?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #31352 /* ~Sie funkelt dich an. "Idiotisch. Völlig idiotisch. Wenn du Salabesh noch mal siehst, sag ihm, er soll sich nicht bemühen. Ich werde sofort zum Ausbildungsraum zurückkehren."~ */
  IF ~~ THEN REPLY #31353 /* ~"Dann vielleicht bis später, Lady Dornenkamm. Leb wohl."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",4)
SetGlobal("Thorncombe","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0603cut1",FALSE)
~ EXIT
END

IF ~  Global("Thorncombe","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #31354 /* ~Lady Dornenkamm sieht dich mit gerunzelter Stirn an. "Ich habe jetzt keine Zeit, mich zu unterhalten... Du kannst mich später im Ausbildungsraum der Magier treffen, wenn du möchtest. Leb wohl."~ */
  IF ~~ THEN REPLY #31355 /* ~Geh.~ */ EXIT
END

IF ~  GlobalGT("Thorncombe","GLOBAL",3)
~ THEN BEGIN 25 // from:
  SAY #31356 /* ~Lady Dornenkamm nickt dir zu, aber du bist dir nicht sicher, ob sie dich erkannt hat. Sie hat ihre Kleider und Haare geglättet und sieht ganz wie eine alternde, aber attraktive Adlige aus... trotzdem wirkt sie immer noch entrückt und leicht ablenkbar. "Sei gegrüßt... bist du gekommen, um magische Künste zu erlernen?"~ */
  IF ~  Global("Thorncombe","GLOBAL",5)
Class(Protagonist,MAGE)
~ THEN REPLY #31357 /* ~"Ja... zeig mir, welche Zauber du mir beibringen kannst."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~  Global("Thorncombe","GLOBAL",5)
GlobalGT("Mage_Training","GLOBAL",0)
!Class(Protagonist,MAGE)
~ THEN REPLY #64643 /* ~"Ja... Ich möchte noch einmal den Pfad des Zauberers beschreiten. Kannst du mir den Weg zeigen?"~ */ GOTO 32
  IF ~  Global("Thorncombe","GLOBAL",4)
~ THEN REPLY #31358 /* ~"Ja."~ */ GOTO 30
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #68458 /* ~"Nein, aber ich möchte ein paar Zauber kaufen."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31359 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 26
  IF ~~ THEN REPLY #31360 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.4
  SAY #31364 /* ~"Meine Zeit und Aufmerksamkeit ist meinen Lehrlingen vorbehalten. Ich würde vorschlagen, du sprichst mit einem von ihnen... oder besser noch mit jemandem, der weniger beschäftigt ist."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
GlobalGT("Thorncombe","GLOBAL",1)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #31362 /* ~"Warte: Qui-Sai will mich nicht trainieren... er behauptet, daß Zauber im Kampf besser seien als rohe Gewalt. Was meinst du dazu?"~ */ DO ~SetGlobal("CW_Thorn_Ans","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #66574 /* ~Qui-Sai hat abgelehnt, mich als Krieger zu trainieren, und mir die Vorzüge von Magiern aufgezählt. Ich habe aber mit Lady Dornenkamm gesprochen, der Zauberlehrerin der Städtischen Festhalle, und sie hat mir erklärt, daß Magier körperlich unzulänglich sind und ihre Zauber nur Krücken für diese Unzulänglichkeit sind. Das sollte ein gutes Gegenargument für Qui-Sai sein.~ */ GOTO 27
  IF ~~ THEN REPLY #31363 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #31365 /* ~Sie schüttelt den Kopf. "Das muß nicht immer so sein... Magier haben körperliche Schwächen. Unsere Zauber sind lediglich Krücken gegen diese Schwächen. Wenn man seine Zauberkunst verbraucht hat, bleibt immer noch der Kampf."~ */
  IF ~~ THEN REPLY #31366 /* ~"Ach so. Danke, und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 30.0
  SAY #31367 /* ~Du beantwortest die letzte ihrer Fragen, und sie nickt zufrieden. "Dann bist du also ein echter Magier?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #31369 /* ~"Ja."~ */ GOTO 35
  IF ~  !Class(Protagonist,MAGE)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31370 /* ~"Nein..."~ */ GOTO 29
  IF ~  !Class(Protagonist,MAGE)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31371 /* ~"Im Moment noch nicht... obwohl ich bereits Unterricht hatte."~ */ GOTO 29
  IF ~~ THEN REPLY #31372 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1 28.2
  SAY #31373 /* ~Sie schließt die Augen und stößt einen langen, leisen Seufzer aus. "Was soll ich dir dann beibringen? Hör auf, meine Zeit und die meiner Lehrlinge zu verschwenden! Leb wohl."~ */
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31374 /* ~"Warte... könntest du aus mir einen Magier *machen*?"~ */ GOTO 32
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31375 /* ~"Warte... ich will noch einmal auf dem Pfad des Magiers wandeln. Kannst du mir den Weg zeigen?"~ */ GOTO 32
  IF ~~ THEN REPLY #31376 /* ~"Leb wohl, Lady Dornenkamm."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.2
  SAY #31377 /* ~"Na gut. Dann beantworte mir diese Fragen..." Sie testet deine Intelligenz und dein logisches Denkvermögen, indem sie dir viele Logikaufgaben und Worträtsel aufgibt...~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #31378 /* ~Beantworte ihre Fragen so gut du kannst.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetGlobal("Thorncombe","GLOBAL",5)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #31379 /* ~Beantworte ihre Fragen so gut du kannst.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #31380 /* ~"Es tut mir leid, aber du bist einfach nicht pfiffig genug, um die grundlegenden Prinzipien der Magie zu begreifen. Ich wünsche dir jedoch alles Gute auf deinem Weg durchs Leben, welchen auch immer du einschlagen mögest. Leb wohl."~ */
  IF ~~ THEN REPLY #31381 /* ~"Äh... na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.1 29.0 29.1
  SAY #31382 /* ~"*Versuchen* könnte ich es auf jeden Fall. Würdest du wirklich deine jetzige Beschäftigung aufgeben?"~ */
  IF ~  Class(Protagonist,FIGHTER)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31383 /* ~"Ja, ich möchte das Schwert gegen die Hexerei eintauschen und die Kunst wieder aufnehmen."~ */ GOTO 33
  IF ~  Class(Protagonist,THIEF)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31384 /* ~"Ja, ich möchte den Diebstahl hinter mir lassen und die Kunst wieder aufnehmen."~ */ GOTO 33
  IF ~  Class(Protagonist,FIGHTER)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31385 /* ~"Ja, ich möchte das Schwert gegen die Hexerei eintauschen. Unterrichte mich in den Künsten."~ */ GOTO 36
  IF ~  Class(Protagonist,THIEF)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31386 /* ~"Ja, ich möchte den Diebstahl hinter mir lassen und die Kunst wieder aufnehmen."~ */ GOTO 36
  IF ~~ THEN REPLY #31387 /* ~"Nö. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #31388 /* ~"Na gut. Wir werden zusammen durchgehen, was du noch von der Kunst weißt... wir werden dich bald wieder auf ihren Weg zurückbringen."~ */
  IF ~~ THEN REPLY #31389 /* ~Höre zu und lerne.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #31390 /* ~"Ich bin schwer beeindruckt! Hätten die Sinnessteine mir nicht das Unmögliche bereits viele Male enthüllt, dann hätte ich nicht geglaubt, wie schnell du dich wieder an die Kunst erinnern würdest. Bist du also bereit zu sehen, welche Zauber ich dich lehren kann?"~ */
  IF ~~ THEN REPLY #31391 /* ~"Ja. Bitte zeig mir deine Zauber."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31392 /* ~"Nein, jetzt nicht, aber ich komm noch mal wieder. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 28.0
  SAY #31393 /* ~"Bist du also bereit zu sehen, welche Zauber ich dich lehren kann?"~ */
  IF ~~ THEN REPLY #31394 /* ~"Ja. Bitte zeig mir deine Zauber."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31395 /* ~"Nein, jetzt nicht, aber ich komm noch mal wieder. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.2 32.3
  SAY #31396 /* ~"Na gut. Ich werde dich so viel lehren, wie ich kann." Gedankenverloren macht sie eine kurze Pause. "Eine Begabung für die Kunst alleine reicht nicht aus. Man braucht ein Mittel, um sie zu fokussieren: Zauber. Seine Zauber bewahrt man meistens in einem Buch auf, obwohl ich auch schon Magier getroffen habe, die ihre auf Papyrusrollen, Steintafeln... bestickter Seide... Tierhäuten... festhielten." Ihre Augen werden glasig, und sie beginnt, an ihrem Daumennagel zu kauen.~ */
  IF ~~ THEN REPLY #31397 /* ~"Lady Dornenkamm? So rede doch weiter!"~ */ JOURNAL #39474 /* ~Ich hab mich von einer Frau namens Lady Dornenkamm, der Lehrmeisterin ihrer Zunft in der Städtischen Festhalle, zum Magier ausbilden lassen.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #31398 /* ~"Hmm? Oh! Verzeih mir... wie ich sagte, für die Kunst brauchst du ein Buch, oder etwas Ähnliches, bevor du Zauber benutzen kannst. Du kannst doch lesen, oder?"~ */
  IF ~~ THEN REPLY #31399 /* ~"Keine Ahnung."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",2)
~ GOTO 38
  IF ~~ THEN REPLY #31400 /* ~"Ja."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",2)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #31401 /* ~"Dann werden wir dich noch einmal prüfen." Sie zieht eine Schriftrolle aus einem Lederetui an ihrer Seite. "Könntest du mir das hier vorlesen?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #31402 /* ~Betrachte die Schriftrolle.~ */ GOTO 39
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #31403 /* ~Betrachte die Schriftrolle.~ */ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #31404 /* ~Die Schrift auf der Rolle verschwimmt vor deinen Augen. Jedes Symbol wird unscharf, sobald du versuchst, es zu lesen. Fast instinktiv entspannst du deine Augen, so daß sie die ganze Seite auf einmal erfassen können... und auf einmal laufen die Symbole ineinander: auf der Schriftrolle stehen uralte Silben, magische Elemente und mystische Handbewegungen, die verwendet werden, um den Fluß des Mana zu kontrollieren... es scheint ein kleiner Talismanzauber zu sein.~ */
  IF ~~ THEN REPLY #31405 /* ~"Das ist ein kleiner Talisman, nicht wahr? Sieht wie ein Zauber aus, mit dem man sich anderen gegenüber attraktiver und charismatischer machen kann."~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY #31406 /* ~Die Schrift auf der Rolle verschwimmt vor deinen Augen. Jedes Symbol wird unscharf, sobald du versuchst, es zu lesen.~ */
  IF ~~ THEN REPLY #31407 /* ~Betrachte die Symbole und versuche, sie zu entziffern.~ */ GOTO 41
  IF ~~ THEN REPLY #31408 /* ~"Ich gebe auf, Lady Dornenkamm... was steht hier?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #31409 /* ~Du betrachtest die Symbole eingehend. Aber egal wie stark du dich konzentrierst, die Schrift auf der Rolle scheint zu verschwimmen und sich wie ein Schlangennest zu winden und zu krümmen. Deine Augen schmerzen schon allein bei dem Versuch, ihren Bewegungen zu folgen.~ */
  IF ~~ THEN REPLY #31410 /* ~Betrachte die Symbole erneut und versuche sie zu verstehen. ~ */ GOTO 42
  IF ~~ THEN REPLY #31411 /* ~"Ich gebe auf, Lady Dornenkamm... was steht hier?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0 42.0
  SAY #31412 /* ~Du siehst dir die Symbole einige weitere Minuten an, während Lady Dornenkamm dir schweigend zusieht. Schließlich verliert sie das Interesse, und ihr Blick beginnt, im Raum umherzuwandern.~ */
  IF ~~ THEN REPLY #31413 /* ~Betrachte die Symbole erneut und versuche sie zu verstehen. ~ */ GOTO 42
  IF ~~ THEN REPLY #31414 /* ~"Ich gebe auf, Lady Dornenkamm... was steht hier?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 40.1 41.1 42.1
  SAY #31415 /* ~Gerade als du aufgeben und dich abwenden willst, entspannst du deine Augen und erfaßt die ganze Seite auf einmal... und dabei laufen die Symbole plötzlich ineinander. Auf der Schriftrolle stehen uralte Silben, magische Elemente und mystische Handbewegungen, die verwendet werden, um den Fluß des Mana zu kontrollieren... Es scheint ein kleiner Talismanzauber zu sein.~ */
  IF ~~ THEN REPLY #31416 /* ~"Das ist ein kleiner Talisman, nicht wahr? Sieht wie ein Zauber aus, mit dem man sich anderen gegenüber attraktiver und charismatischer machen kann."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 39.0 43.0
  SAY #31417 /* ~Lady Dornenkamms Augen werden größer. "Wer bist du, daß du mich so hinters Licht führst?!" Sie reißt dir die Schriftrolle aus den Händen. "Hast du mich belogen? Bist du doch ein Magier? Oder vielleicht ein Scheusal? Antworte mir!"~ */
  IF ~~ THEN REPLY #31418 /* ~"Was ist passiert?"~ */ JOURNAL #31420 /* ~Lady Dornenkamm hat mir einen Test gegeben... Einen niederen Beschwörungszauber, der in der Sprache der Kunst auf einer Schriftrolle geschrieben steht. Ich konnte seine Bedeutung ohne Ausbildung entziffern. Ich muß irgendwann einmal in der Vergangenheit gelernt haben, Magie zu lesen.~ */ GOTO 45
  IF ~~ THEN REPLY #31419 /* ~"Nichts dergleichen, jedenfalls nicht, daß ich wüßte. Was hast du denn auf einmal?"~ */ JOURNAL #31420 /* ~Lady Dornenkamm hat mir einen Test gegeben... Einen niederen Beschwörungszauber, der in der Sprache der Kunst auf einer Schriftrolle geschrieben steht. Ich konnte seine Bedeutung ohne Ausbildung entziffern. Ich muß irgendwann einmal in der Vergangenheit gelernt haben, Magie zu lesen.~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #31421 /* ~"Ich hatte nicht erwartet... hmm..." Sie wirft dir einen langen, vorsichtigen Blick zu. "Was du liest, ist in der Sprache der *Kunst* geschrieben. Wenn du kein Magier bist, wären es für dich nur verschlungene und völlig sinnlose Symbole. Doch du konntest du sie entziffern, als seien sie so klar wie der amorianische Himmel. Wie kann das sein?"~ */
  IF ~~ THEN REPLY #31422 /* ~"Keine Ahnung... ich *wußte* einfach, was da steht."~ */ GOTO 46
  IF ~~ THEN REPLY #31423 /* ~"Vielleicht habe ich diese Schrift ja mal gelernt und sie nur wieder vergessen... und als ich die Symbole gesehen habe, ist mir wieder alles eingefallen."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0 45.1
  SAY #31424 /* ~"Oder vielleicht eine natürliche Begabung... aber das spielt ja eigentlich keine Rolle." Sie lächelt dich an. "Du hast gerade deine Lehrzeit um Jahreszeiten, wenn nicht gar *Jahre* des Studiums verkürzt. Nun... du kannst Zauber zwar lesen, aber hast du auch ein Buch, in das du sie eintragen kannst?"~ */
  IF ~~ THEN REPLY #31425 /* ~"Ein Zauberbuch? Nein..."~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #31426 /* ~"Und was ist das da?" Sie zeigt auf dein Journal.~ */
  IF ~~ THEN REPLY #31427 /* ~"Das ist mein Journal. Darin notiere ich alles, was ich für wichtig halte... Leute, die ich getroffen habe usw."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #31428 /* ~"Dann sollst du darin auch deine Zauber festhalten." Sie betrachtet das Journal mit gerunzelter Stirn. "Ein ganz schön fertiges Teil... aber es wird reichen." Sie schweigt eine Weile und betrachtet dein Journal. Sie scheint in Gedanken verloren und beginnt, an ihrem Daumennagel zu kauen.~ */
  IF ~~ THEN REPLY #31430 /* ~"Lady Dornenkamm...?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #31432 /* ~Sie blickt dich wieder an: "Mm? Oh... ja. Also: Solange deine Zauber nur in diesem Buch sind, sind sie machtlos, nur Wörter. Die Kunst verlangt, daß du die Zauber *auswendig* lernst, bevor du sie benutzen kannst. Dazu bedarf es eines klaren Verstands, also ist es am besten, wenn du dich vorher ausruhst. Hast du verstanden?"~ */
  IF ~~ THEN REPLY #31433 /* ~"Ja. Erzähl weiter."~ */ GOTO 50
  IF ~~ THEN REPLY #31434 /* ~"Die Grundlagen kenne ich schon, Lady Dornenkamm."~ */ GOTO 56
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #31435 /* ~"Ausgezeichnet. Nun: Wähle die Zauber, die du auswendig lernen willst, *bevor* du schläfst. Dies ist äußerst wichtig. Wenn du aufstehst, werden sie frisch in deinen Gedanken sein, angefüllt mit Mana und du kannst sie benutzen."~ */
  IF ~~ THEN REPLY #31436 /* ~"Wie viele Zauber kann ich auf einmal benutzen?"~ */ GOTO 51
  IF ~~ THEN REPLY #31437 /* ~"Die Grundlagen kenne ich schon, Lady Dornenkamm."~ */ GOTO 56
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #31438 /* ~"Nur einen, vielleicht zwei, Zauber, dann mußt du dich wieder ausruhen... Als Zauberlehrling schaffst du nicht mehr. Setze deine Zauber weise ein, bis du in der Kunst versierter bist... aber ich rate dir, sie auch später weise zu benutzen. Je mehr Erfahrung du hast, desto leichter wird es dir auch fallen, Zauber auswendig zu lernen."~ */
  IF ~~ THEN REPLY #31439 /* ~"Ja gut... erzähl weiter..."~ */ GOTO 52
  IF ~~ THEN REPLY #31440 /* ~"Die Grundlagen kenne ich schon, Lady Dornenkamm."~ */ GOTO 56
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #31441 /* ~"Du kannst nur die Zauber benutzen, die du auswendig gelernt hast. Wenn du zum Beispiel zwei verschiedene verzauberte Gegenstände identifizieren wolltest, müßtest du den Identifizierungszauber auswendig lernen... und wie oft?"~ */
  IF ~~ THEN REPLY #31442 /* ~"Einmal."~ */ GOTO 53
  IF ~~ THEN REPLY #31443 /* ~"Zweimal."~ */ GOTO 54
  IF ~~ THEN REPLY #31444 /* ~"Äh..."~ */ GOTO 53
  IF ~~ THEN REPLY #31445 /* ~"Die Grundlagen kenne ich schon, Lady Dornenkamm."~ */ GOTO 56
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.2
  SAY #31446 /* ~"Zweimal! Um einen Zauber *zweimal* zu benutzen, mußt du ihn auch *zweimal* auswendig lernen."~ */
  IF ~~ THEN REPLY #31447 /* ~"Kapiert. Wie kriege ich noch mehr Zauber?"~ */ JOURNAL #31449 /* ~Lady Dornenkamm hat mir die Grundlagen der Kunst beigebracht. Sie sagt, bevor ich mich ausruhe, muß ich aussuchen, welche Zaubersprüche ich auswendig lernen möchte, indem ich zu meinem Zauberbuch gehe und sie auswähle. Wenn ich einen Zauber mehrere Male anwenden möchte, muß ich ihn mir mehrere Male merken. Immer, wenn ich mich ausgeruht habe, wache ich am nächsten Morgen mit dem Zauberspruch in meinem Kopf auf und bin bereit, ihn anzuwenden. Sie sagt, ich könne jeden Tag nur eine kleine Anzahl von Zaubersprüchen anwenden, bis ich mehr Übung in ihrer Anwendung hätte. Vielleicht finde ich in der Stadt ja noch mehr Lehrer, die mir Zaubersprüche beibringen können.~ */ GOTO 55
  IF ~~ THEN REPLY #31448 /* ~"Die Grundlagen kenne ich schon, Lady Dornenkamm."~ */ GOTO 56
END

IF ~~ THEN BEGIN 54 // from: 52.1
  SAY #31450 /* ~Lady Dornenkamm nickt lächelnd. "Ja, zweimal, das ist richtig."~ */
  IF ~~ THEN REPLY #31451 /* ~"Wie kriege ich noch mehr Zauber?"~ */ JOURNAL #31449 /* ~Lady Dornenkamm hat mir die Grundlagen der Kunst beigebracht. Sie sagt, bevor ich mich ausruhe, muß ich aussuchen, welche Zaubersprüche ich auswendig lernen möchte, indem ich zu meinem Zauberbuch gehe und sie auswähle. Wenn ich einen Zauber mehrere Male anwenden möchte, muß ich ihn mir mehrere Male merken. Immer, wenn ich mich ausgeruht habe, wache ich am nächsten Morgen mit dem Zauberspruch in meinem Kopf auf und bin bereit, ihn anzuwenden. Sie sagt, ich könne jeden Tag nur eine kleine Anzahl von Zaubersprüchen anwenden, bis ich mehr Übung in ihrer Anwendung hätte. Vielleicht finde ich in der Stadt ja noch mehr Lehrer, die mir Zaubersprüche beibringen können.~ */ GOTO 55
  IF ~~ THEN REPLY #31452 /* ~"Die Grundlagen kenne ich schon, Lady Dornenkamm."~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 53.0 54.0
  SAY #31453 /* ~"Suche immer nach Gelegenheiten, mehr zu lernen - selbst einfache Leute könnten dir ein paar kleinere Zauber beibringen. Es gibt auch Rezepte, Bücher und sogar noch seltsamere Dinge, in oder auf denen Zauber geschrieben stehen. Solltest du so etwas finden, sieh es dir genau an und schreibe den Zauber in dein Buch, wenn du ihn haben willst."
~ */
  IF ~~ THEN REPLY #31454 /* ~"Kapiert."~ */ GOTO 56
  IF ~~ THEN REPLY #31455 /* ~"Die Grundlagen kenne ich schon, Lady Dornenkamm."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 49.1 50.1 51.1 52.3 53.1 54.1 55.0 55.1
  SAY #31456 /* ~"Dann nimm jetzt diese Schriftrollen... kleinere Zauber, um deinen Appetit auf die Kunst anzuregen." Sie lächelt verschmitzt. "Komm wieder her, wenn du dich besser mit dem Wegen des Multiversums auskennst... von nun an kannst du hier zwar nicht mehr kostenlos lernen, aber ich kann dir mächtigere Zauber verkaufen, wenn du die Fähigkeit erlangst, sie zu benutzen."~ */
  IF ~~ THEN REPLY #31457 /* ~"Danke, Lady Dornenkamm. Leb wohl."~ */ DO ~GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,1,1,0)
GiveItemCreate("SPWI107",Protagonist,1,1,0)
GiveItemCreate("SPWI209",Protagonist,1,1,0)
~ EXIT
  IF ~~ THEN REPLY #31458 /* ~"Dann komm ich noch mal wieder. Leb wohl."~ */ DO ~GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,1,1,0)
GiveItemCreate("SPWI107",Protagonist,1,1,0)
GiveItemCreate("SPWI209",Protagonist,1,1,0)
~ EXIT
END
