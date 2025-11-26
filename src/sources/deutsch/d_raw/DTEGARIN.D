// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEGARIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEGARIN~

IF ~  InParty("Annah")
InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3058 /* ~Du siehst ein geschupptes Scheusal, das dem Exemplar neben ihm stark gleicht. Beide haben ein durchstochenes linkes Ohr, sind von schwärzlicher Farbe, haben etwas Reptilienartiges an sich und besitzen zusammengefaltete Fledermausflügel. Dieses hier hat eine kleine Narbe unter dem linken Auge. Als es Annah und Grace, die Gefallene, neben dir erblickt, sagt es mit schnarrender Stimme: "Schaff dieses Ungeziefer des Abgrunds fort, dann reden wir. Bis dahin sagen wir keinen Ton." Zur Bekräftigung spuckt es noch einmal aus.~ */
  IF ~~ THEN REPLY #12396 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  InParty("Annah")
!InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3060 /* ~Du siehst ein geschupptes Scheusal, das dem Exemplar neben ihm stark gleicht. Beide haben ein durchstochenes linkes Ohr, sind von schwärzlicher Farbe, haben etwas Reptilienartiges an sich und besitzen zusammengefaltete Fledermausflügel. Dieses hier hat eine kleine Narbe unter dem linken Auge. Als es Annah neben dir erblickt, sagt es mit schnarrender Stimme: "Schaff dieses kleine Scheusal-Ungeziefer fort, dann reden wir. Bis dahin sagen wir keinen Ton." Zur Bekräftigung spuckt es noch einmal aus.~ */
  IF ~~ THEN REPLY #12397 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  !InParty("Annah")
InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12398 /* ~Du siehst ein geschupptes Scheusal, das dem Exemplar neben ihm stark gleicht. Beide haben ein durchstochenes linkes Ohr, sind von schwärzlicher Farbe, haben etwas Reptilienartiges an sich und besitzen zusammengefaltete Fledermausflügel. Dieses hier hat eine kleine Narbe unter dem linken Auge. Als es Grace, die Gefallene, neben dir erblickt, sagt es mit schnarrender Stimme: "Schaff dieses Ungeziefer des Abgrunds fort, dann reden wir. Bis dahin sagen wir keinen Ton." Zur Bekräftigung spuckt es noch einmal aus.~ */
  IF ~~ THEN REPLY #12399 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #12400 /* ~Du siehst ein geschupptes Scheusal, das dem Exemplar neben ihm stark gleicht. Beide haben ein durchstochenes linkes Ohr, sind von schwärzlicher Farbe, haben etwas Reptilienartiges an sich und besitzen zusammengefaltete Fledermausflügel. Dieses hier hat eine kleine Narbe unter dem linken Auge. "Sei gegrüßt, alter Kamerad. Es ist wahrhaft eine Freude, dich wiederzusehen."~ */
  IF ~~ THEN REPLY #12401 /* ~"Wiederzusehen?"~ */ GOTO 10
END

IF ~  InParty("Annah")
InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #12402 /* ~Der Abishai weicht zurück, als du näher kommst. "Nimm die kleinen Chaosratten", sagt er, auf Grace, die Gefallene, und Annah zeigend, "weg von uns, dann handeln wir mit dir. Bis dahin sagen wir hier kein Wort."~ */
  IF ~~ THEN REPLY #12403 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #12404 /* ~Der Abishai weicht zurück, als du näher kommst. "Nimm die kleine Chaosratte", sagt er, auf Annah zeigend, "weg von uns, dann handeln wir mit dir. Bis dahin sagen wir hier kein Wort."~ */
  IF ~~ THEN REPLY #12405 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  !InParty("Annah")
InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #12406 /* ~Der Abishai weicht zurück, als du näher kommst. "Nimm die kleine Chaosratte", sagt er, auf Grace, die Gefallene zeigend, "weg von uns, dann handeln wir mit dir. Bis dahin sagen wir hier kein Wort."~ */
  IF ~~ THEN REPLY #12407 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
!PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 7 // from:
  SAY #12408 /* ~"Der Verlorene Sohn kehrt zurück, was?" Das Scheusal zischt dir ein Lächeln zu, wobei sich aus seinen Mundwinkeln üble Dämpfe kräuseln. "Sind deine Erinnerungen also wieder zu dir zurückgekehrt, alter Freund?"~ */
  IF ~~ THEN REPLY #12409 /* ~"Was meinst du?"~ */ GOTO 10
  IF ~~ THEN REPLY #14280 /* ~"Ich hätte da ein paar Fragen..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14281 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #12410 /* ~"Das ist er, Aethelgrin, das ist er. Und doch strahlen seine Augen nicht so wie einst. Was glaubst du, hat ihn zu uns zurückgebracht? Was HAT dich zu uns gebracht, Freund?"~ */
  IF ~~ THEN REPLY #12411 /* ~"Wer seid ihr?"~ */ GOTO 9
  IF ~~ THEN REPLY #12412 /* ~"Was macht ihr hier?"~ */ EXTERN ~DAETHEL~ 12
  IF ~~ THEN REPLY #12413 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 14
  IF ~~ THEN REPLY #12414 /* ~"Erzähl mir was über Scheusale."~ */ EXTERN ~DAETHEL~ 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12415 /* ~"Kennst du einen Sammler namens Pharod?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12416 /* ~"Ich suche nach einem Journal."~ */ EXTERN ~DAETHEL~ 14
  IF ~~ THEN REPLY #12417 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #12418 /* ~"Ah, Aethelgrin, die Zeit hat unserem Kameraden das Gedächtnis geraubt! Du erinnerst dich wirklich nicht an uns, nicht wahr? Wirklich, ich bin betrübt."~ */
  IF ~~ THEN REPLY #12419 /* ~"Aber..."~ */ EXTERN ~DAETHEL~ 9
END

IF ~~ THEN BEGIN 10 // from: 3.0 7.0
  SAY #12420 /* ~"Was ich meine, guter Mann, ist, daß die Zeit, unser alter Feind, dir einen schrecklich schlechten Dienst erwiesen hat. Sie hat dir deine Erinnerungen gestohlen und dein Gedächtnis ausgelöscht. Wenn du dich nicht an uns erinnerst, ja, dann muß es daran liegen, daß du einer Schwäche der Sterblichen zum Opfer gefallen bist. Wir sind alte Freunde von dir, wirklich alte Freunde. Was können wir für dich tun?"~ */
  IF ~~ THEN REPLY #12421 /* ~"Ich hätte ein paar Fragen..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12423 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #12422 /* ~"Ahh, gut gesprochen. Alter Freund, wir sind ein Paar Abishai, auf Urlaub von unseren aktuellen Aufgaben in Baator. Ich bin Tegar'in, der Dreimal Verdammte, so genannt wegen meiner Fähigkeit, in jeder Situation das Beste zu sehen. Dies ist Aethelgrin, der sich keinen besonderen Namen verdient hat, wenn auch nicht aus Mangel an Versuchen."~ */
  IF ~~ THEN REPLY #12424 /* ~"Mangel an Versuchen? Was meinst du damit?"~ */ EXTERN ~DAETHEL~ 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY #12425 /* ~Jetzt ist es an Tegar'in, dich zu ignorieren, um seinem Kameraden zu antworten. "Und ich sage noch einmal, daß jede Aufmerksamkeit besser als keine Aufmerksamkeit ist." Der Abishai wendet sich wieder dir zu. "Alter Freund, beantwortet das deine Fragen nach unserer Identität?"~ */
  IF ~~ THEN REPLY #12426 /* ~"Schätze, das muß es wohl. Ich hätte noch ein paar andere Fragen..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12427 /* ~"Schätze, das muß es wohl. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #12428 /* ~"Im Moment genießen wir natürlich die Freuden dieses... entzückenden... Etablissements. Und natürlich feiern wir die Rückkehr unseres alten Freundes. Allerdings entwürdigt uns der Gestank der Brise - die ab und zu den Geruch der Güte durch diese Tür weht - ein wenig, wodurch wir physisch, mental und spirituell geschwächt sind. Glücklicherweise trägt die Luft in diesem Stadtviertel einen köstlichen Geschmack nach Schmerz und Flehen. Würdest du mir da nicht zustimmen?" Das Scheusal lächelt dich wieder breit an.
~ */
  IF ~~ THEN REPLY #12429 /* ~"Ich hätte da noch ein paar Fragen."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12430 /* ~"In der Tat. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY #12431 /* ~"Dies ist die Bar 'Zur Schwelenden Leiche', eine der unterhaltsameren Tavernen, die deinesgleichen in dieser Stadt errichtet haben - die poetische Gerechtigkeit des brennenden Kerls, der die Vorderseite dieses Etablissements ziert, ist wirklich eine sehr nette Geste. War da noch etwas, das du fragen wolltest?"~ */
  IF ~~ THEN REPLY #12432 /* ~"Ja, ich hätte noch ein paar andere Fragen..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12433 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #12434 /* ~"Wir machen die Tanar-Ri direkt für den Blutkrieg verantwortlich. Ohne sie hätten wir uns in Frieden auf den Unteren Ebenen niederlassen können, und wir hätten nicht diesen ganzen Ärger mit dem Kämpfen und diesen elenden Krieg am Hals, und außerdem würde es nicht zu diesen... unglücklichen... Übergriffen in die anderen Ebenen kommen, die diesen verweichlichten Weltverbesserern solche Sorgen machen. Die Tanar-Ri sind direkt schuld an der traurigen Lage des Multiversums."~ */
  IF ~~ THEN REPLY #12435 /* ~"Danach habe ich eigentlich gar nicht gefragt. Ich wollte wissen, was euch von ihnen unterscheidet."~ */ GOTO 16
  IF ~~ THEN REPLY #12436 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12437 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12438 /* ~Das Scheusal hält einen Moment lang inne, dann hellt sich sein Blick auf. "Ah, ja. Siehst du, wir repräsentieren Recht und Ordnung. Diejenigen, die das Gesetz brechen, müssen bestraft werden. Wenn wir kein Gesetz haben, gibt es nur noch Anarchie, und du kannst sicher sehen, was die Anarchie aus dem Abgrund gemacht hat - sie hat unvorstellbare Schrecken hervorgebracht. Jegliche Exzesse, derer sich die Baatezu vielleicht schuldig gemacht haben, sind nur dazu dagewesen, um der steigenden Welle des Chaos zu begegnen, für das die Tanar-Ri stehen. Wir wollen doch niemandem schaden - wir ziehen es einfach vor zu verstehen, wo unsere Grenzen sind."
~ */
  IF ~~ THEN REPLY #12439 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12440 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.4
  SAY #12441 /* ~"Pharod? Ich habe diesen Namen schon mal gehört. Ist das nicht irgendein Gelehrter? Ein Nekromant? Oder ein Seher des Abfalls? Ich habe von ihm gehört, Freund, aber ich habe noch nicht die Freude gehabt, seine Bekanntschaft zu machen. Vielleicht kann dir einer der anderen... Gäste... hier weiterhelfen."~ */
  IF ~~ THEN REPLY #12442 /* ~"Vielleicht. Ich hätte noch ein paar andere Fragen."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12443 /* ~"Vielleicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #12444 /* ~"Weil, mein Freund, es einfach ist, den Fehler zu begehen, der Nachwelt ein wahres Wort zu hinterlassen, und noch einfacher für jemanden, dem man vertraut hat", und hier schießt er einen Blick voller Gift auf Aethelgrin, "dieses Wort zu finden und gegen dich zu verwenden. Tatsächlich kann es sogar zu Handlungen führen, die einem Desertieren gleichkommen... wenn du dein Journal zurückläßt oder verlierst, kann es dich sogar deine Existenz kosten."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12445 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ EXTERN ~DMORTE~ 152
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12446 /* ~"Ich verstehe. Ich hätte ein paar Fragen..."~ */ EXTERN ~DAETHEL~ 8
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12447 /* ~"Verstehe. Leb wohl."~ */ EXTERN ~DMORTE~ 152
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12448 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #14690 /* ~"Er spielt auf Lebemann-Jäger an, nicht wahr?"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 15
END

IF ~~ THEN BEGIN 20 // from:
  SAY #14691 /* ~"Er fragt nach ihm... würde unser Freund uns danach fragen, wüßte er's nicht selbst? Oder wäre er zumindest mißtrauisch."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 16
END

IF ~~ THEN BEGIN 21 // from:
  SAY #14692 /* ~"Und dennoch fragt man sich, Aethelgrin, warum dein Name noch keinen Beinamen hat?" Das Scheusal wendet sich wieder dir zu. "Ich wäre glücklich, dich aufklären zu können."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 18
END

IF ~~ THEN BEGIN 22 // from:
  SAY #14693 /* ~"Geschworen habe ich, aber nicht wie du! Zu keinem Tanar-Ri kann ich über diese Sache sprechen. Aber es scheint mir so, als ob unser Freund hier außerhalb dieser besonderen Gruppe verbleibt."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 19
END

IF ~~ THEN BEGIN 23 // from:
  SAY #14694 /* ~"Und wie!" Das Scheusal spricht dich nochmals an. "Dieser Sammler, mein Freund, ist ein Teufel, wenn auch einer, der von einem heiligen Mann verflucht wurde. Der gutaussehende junge Herr, den du vielleicht bei ihm gesehen hast, steht im Banne des Sammlers, wenn er es auch nicht bemerkt."~ */
  IF ~~ THEN REPLY #14767 /* ~"Erzähl weiter..."~ */ EXTERN ~DAETHEL~ 20
END

IF ~~ THEN BEGIN 24 // from:
  SAY #14695 /* ~"Würde ich das, Aethelgrin? Ich glaube nicht."~ */
  IF ~~ THEN REPLY #14768 /* ~"Was für ein Anhänger?"~ */ GOTO 25
  IF ~~ THEN REPLY #14769 /* ~"Die Geschichte hör ich mir ein anderes Mal an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #14696 /* ~"Das Scheusal hat einen Anhänger, ein magisches Artefakt, in dessen Besitz sich zu finden unser größtes Vergnügen wäre. Ich kann dir garantieren, daß er für dich von wenig oder gar keinem Nutzen wäre, Freund, also vielleicht..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 21
END

IF ~~ THEN BEGIN 26 // from:
  SAY #14697 /* ~"...*alles*..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 23
END

IF ~~ THEN BEGIN 27 // from:
  SAY #14698 /* ~"...bitten wir dich nur um den Anhänger. Es ist der Anhänger, der es uns ermöglichen wird, dich mit der versprochenen Macht auszustatten."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 24
END

IF ~~ THEN BEGIN 28 // from:
  SAY #14699 /* ~"Tja, eine Schande, aber nicht einmal ich kann diese Regel umgehen. Unsere Hände sind in dieser Sache gebunden, Freund."~ */
  IF ~~ THEN REPLY #14770 /* ~"Was bewirkt der Anhänger?"~ */ EXTERN ~DAETHEL~ 26
  IF ~~ THEN REPLY #14771 /* ~"Abgemacht."~ */ EXTERN ~DAETHEL~ 30
  IF ~~ THEN REPLY #14772 /* ~"Nein. Kein Geschäft."~ */ EXTERN ~DAETHEL~ 29
END

IF ~~ THEN BEGIN 29 // from:
  SAY #14700 /* ~"Gar nichts, Freund."~ */
  IF ~~ THEN REPLY #14773 /* ~"Sag's mir, oder wir kommen nicht ins Geschäft."~ */ GOTO 30
  IF ~~ THEN REPLY #14774 /* ~"Wieso holt ihr ihn euch nicht selbst?"~ */ EXTERN ~DAETHEL~ 25
  IF ~~ THEN REPLY #14775 /* ~"Abgemacht."~ */ EXTERN ~DAETHEL~ 30
  IF ~~ THEN REPLY #14776 /* ~"Nein. Kein Geschäft."~ */ EXTERN ~DAETHEL~ 29
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14701 /* ~"Er fängt Seelen, wenn sie ihre Hüllen verlassen."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 27
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14702 /* ~"Was würdest du schon mit einem solchen Ding anfangen wollen? Ihn für ein kleines Vermögen verkaufen? Ein Kaminsims damit zieren?"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 28
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14703 /* ~"Ja, Aethelgrin, es ist eine Schande. Wir werden hier bleiben, alter Freund, falls du weise genug sein solltest, es dir anders zu überlegen."~ */
  IF ~~ THEN REPLY #14777 /* ~"Ich hätte da noch ein paar andere Fragen..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14778 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14704 /* ~"Der 'Sammler' war einmal eine Erinnye. Sie hat ihre Grenzen überschritten; wurde vom Ehrgeiz gepackt und versuchte, einen zu verführen, der weit über solchen Dingen steht."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 31
END

IF ~~ THEN BEGIN 34 // from:
  SAY #14705 /* ~"Aber, weißt du, keine Erinnye ist ein richtiger Kämpfer."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 32
END

IF ~~ THEN BEGIN 35 // from:
  SAY #14706 /* ~Das Scheusal wendet sich an seinen Begleiter. "Ja, ganz recht." Er sieht dich wieder an und zischt: "Wie ich gerade sagte, ohne das magische Seil, das alle ihre Schwestern tragen, und die üblichen Widerstandskräfte von Scheusalen sollte sie ziemlich einfach zu töten sein - ohne ihren schneidigen jungen Lebemann bei sich natürlich."~ */
  IF ~~ THEN REPLY #14779 /* ~"Wie krieg ich sie alleine zu fassen?"
~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #14707 /* ~"Ah, dazu wollte ich gerade kommen, mein alter Freund. Du kannst sie allein in einer Gasse nördlich dieses Etablissements versteckt finden, zwischen zwei Gebäuden. Such sie dort um den Tiefstand herum."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 33
END

IF ~~ THEN BEGIN 37 // from:
  SAY #14708 /* ~"Oh, aber der Handel ist bereits abgeschlossen, Freund. Du hast bereits zugestimmt, erinnerst du dich? Wir haben unseren Teil des Handels erfüllt. Könntest du wirklich so herzlos sein und unsere alte Freundschaft so sehr mißachten, deinen Teil zu verweigern?"~ */
  IF ~~ THEN REPLY #14780 /* ~"Nein, du hast recht."~ */ EXTERN ~DAETHEL~ 34
  IF ~~ THEN REPLY #14781 /* ~"Ja."~ */ EXTERN ~DAETHEL~ 35
END

IF ~~ THEN BEGIN 38 // from:
  SAY #14709 /* ~"In der Tat, Aethelgrin." Der Teufel wendet sich dir mit sehr besorgter Miene zu. "Und hast du bereits die Macht vergessen, die wir dir versprochen haben? Der Talisman in unseren Händen könnte dich stärker machen, Freund..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 36
END

IF ~~ THEN BEGIN 39 // from:
  SAY #14710 /* ~"Bist du sicher, daß du uns so einfach abhandeln könntest?"~ */
  IF ~~ THEN REPLY #14782 /* ~"Nein, du hast recht."~ */ EXTERN ~DAETHEL~ 34
  IF ~~ THEN REPLY #14783 /* ~"Ja, ich kann das einfach nicht tun."~ */ EXTERN ~DAETHEL~ 37
END

IF ~~ THEN BEGIN 40 // from:
  SAY #14711 /* ~"Ich war ein Narr, Aethelgrin. Ich hätte einen Vertrag aufsetzen sollen, aber ich habe den schweren Fehler begangen, unsere Freundschaft in die Waagschale dieses Handels zu legen." Er wendet sich dir verächtlich zu. "Verflucht sollst du sein, du elender menschlicher Wurm... das wirst du bereuen. Wisse, daß von diesem Tag an Tegar'in, der Dreimal Verdammte, nicht nur dein Verderben, sondern auch deine Seele suchen wird. Du wirst ein Lageranhänger im Blutkrieg sein, wenn ich meinen Willen bekomme, Sklave der Launen der niedrigsten Scheusale!"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 38
END

IF ~~ THEN BEGIN 41 // from:
  SAY #14712 /* ~"Nein, nicht jetzt. Laß ihn seiner Wege gehen. Wir haben schließlich die ganze Ewigkeit, Pläne gegen ihn zu schmieden..." Die beiden Scheusale lächeln sich gegenseitig böse an und winken dir dann zum Abschied.~ */
  IF ~~ THEN REPLY #14784 /* ~"Warte! Warte! Ich hab's mir noch mal überlegt!"~ */ EXTERN ~DAETHEL~ 39
  IF ~~ THEN REPLY #14785 /* ~Geh weg.~ */ DO ~SetGlobal("2Devils","AR0402",3)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #14713 /* ~"Ruhig, Aethelgrin! Wir machen alle Fehler." Tegar'in wendet sich dir zu und lächelt abfällig. "Du weißt, was wir jetzt von dir verlangen. Die meisten Wunden heilen mit der Zeit.... vielleicht wird unsere Freundschaft einmal wieder das sein, was sie einst war, wenn du deinen Teil des Handels erfüllt hast. Leb wohl."~ */
  IF ~~ THEN REPLY #14786 /* ~Geh weg.~ */ DO ~SetGlobal("2Devils","AR0402",2)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 53.0 54.0
  SAY #14714 /* ~"Wir werden die Macht des Anhängers dazu nutzen, dich zu kräftigen... du solltest feststellen, daß sie dich physisch stärker und ausdauernder macht. Die Wirkung sollte dauerhaft sein... bis du stirbst, natürlich, aber laß uns nicht von solchen Dingen sprechen, alter Freund."~ */
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14787 /* ~"So, hier ist der Anhänger."~ */ EXTERN ~DAETHEL~ 40
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14788 /* ~"Ich hätte da noch ein paar Fragen..."
~ */ GOTO 44
  IF ~  !PartyHasItem("SkulPend")
~ THEN REPLY #14789 /* ~"Ich hätte da noch ein paar Fragen..."
~ */ EXTERN ~DAETHEL~ 8
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14790 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 44
  IF ~  !PartyHasItem("SkulPend")
~ THEN REPLY #14791 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.1 43.3
  SAY #14715 /* ~"Warte... wir wollen erst den Anhänger von dir."~ */
  IF ~~ THEN REPLY #14792 /* ~"So, hier ist der Anhänger."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14793 /* ~"Ich hab beschlossen, den Anhänger zu behalten."~ */ EXTERN ~DAETHEL~ 44
END

IF ~~ THEN BEGIN 45 // from:
  SAY #14716 /* ~"Ja, Aethelgrin, das ist es. Und nun werden wir die gestohlene Macht des Anhängers auf dich anwenden, Kamerad aus alten Zeiten..." Das Scheusal umklammert den Anhänger mit seinen Klauen, und seine Augen leuchten mit einem fiebrigen Glanz auf. Ein Heiligenschein der Macht umgibt den Anhänger einen Moment lang - dann ist da nichts mehr.~ */
  IF ~~ THEN REPLY #14794 /* ~"Was ist passiert?"~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #14717 /* ~"Ich... ich weiß nicht, alter Freund!" Tegar'in sieht ehrlich geschockt aus, aber neben ihm grinst Aethelgrin böse. "Es scheint... es scheint, daß irgendein seltsamer Zauber auf dich angewendet wurde, ein Zauber, der irgendwie verhindert, daß dieser Anhänger dich kräftigt."
~ */
  IF ~~ THEN REPLY #14795 /* ~"Was?! Wußtest du das vorher?"
~ */ EXTERN ~DAETHEL~ 41
END

IF ~~ THEN BEGIN 47 // from:
  SAY #14718 /* ~"Nein, mein alter Freund! Das habe ich mit Sicherheit nicht getan. Aethelgrin?" Das Scheusal wirft den Anhänger wieder seinem Begleiter zu.~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 42
END

IF ~~ THEN BEGIN 48 // from:
  SAY #14719 /* ~"Es tut mir wirklich leid, teuerster Freund, wirklich. Vielleicht kannst du diesen Zauber...  entfernen lassen, und dann können wir den Anhänger zu deinem Nutzen anwenden. Du weißt, wo du uns finden kannst, wenn dir das gelingen sollte." Der Teufel lächelt dir zu.~ */
  IF ~~ THEN REPLY #14796 /* ~"Dann gib den Anhänger zurück. Ich werde ihn zurückgeben, wenn sein Zauber verbraucht ist."~ */ GOTO 49
  IF ~~ THEN REPLY #14797 /* ~Greif die Scheusale an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14798 /* ~"Hm. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #14720 /* ~Tegar'in schüttelt traurig seinen Kopf.~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 43
END

IF ~~ THEN BEGIN 50 // from:
  SAY #14721 /* ~"Er gehört von Rechts wegen jetzt uns. Denk an den Handel, mein langjähriger Freund."~ */
  IF ~~ THEN REPLY #14799 /* ~"Na gut. Hier ist der Anhänger."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14800 /* ~"Nein, ich glaub, ich behalt ihn erstmal."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #14722 /* ~"Oh, traurig, traurig... würdest du wirklich unsere Freunschaft in solch einer gedankenlosen Weise wegwerfen? Bitte, ich beschwöre dich... verrate eine so alte Kameradschaft nicht. Gib uns den Anhänger zurück."~ */
  IF ~~ THEN REPLY #14801 /* ~"Na gut. Hier ist er."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14802 /* ~"Nein. Geht nicht an."~ */ EXTERN ~DAETHEL~ 45
END

IF ~~ THEN BEGIN 52 // from:
  SAY #14723 /* ~"Ja, machen wir."~ */
  IF ~~ THEN REPLY #14803 /* ~Erwidere ihren Angriff.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14804 /* ~Flieh mit dem Anhänger.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #14724 /* ~"Tja..." Die beiden Scheusale lächeln sich gegenseitig an und nicken dann. "In diesem Fall..."~ */
  IF ~~ THEN REPLY #14805 /* ~"Wartet. Was für eine Macht werdet ihr mir geben?"~ */ GOTO 43
  IF ~~ THEN REPLY #14806 /* ~"Hier ist der Anhänger."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14807 /* ~"Ich hab' beschlossen, den Anhänger zu behalten."~ */ EXTERN ~DAETHEL~ 44
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 54 // from:
  SAY #14725 /* ~"Sieh mal, er ist zurück, und zwar mit dem Anhänger!"~ */
  IF ~~ THEN REPLY #14808 /* ~"Wartet. Was für eine Macht werdet ihr mir geben?"~ */ GOTO 43
  IF ~~ THEN REPLY #14809 /* ~"Hier ist der Anhänger."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14810 /* ~"Ich hab' beschlossen, den Anhänger zu behalten."~ */ EXTERN ~DAETHEL~ 44
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",2)
~ THEN BEGIN 55 // from:
  SAY #14726 /* ~"Ah, sieh mal, wer zurück ist. Tut mir so leid, Freund, aber wir sprechen erst mit dir, wenn du uns den Anhänger gebracht hast. Leb wohl."~ */
  IF ~~ THEN REPLY #14811 /* ~Geh weg.~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",3)
~ THEN BEGIN 56 // from:
  SAY #14727 /* ~"Tja, tja... Betrüger deiner Freunde!"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 46
END

IF ~~ THEN BEGIN 57 // from:
  SAY #14728 /* ~Die Teufel starren dich in der langen, ungemütlichen Stille, die deinen Worten folgt, kalt an. Schließlich spricht Tegar'in: "Also gut. Es ist eine Schande... Freund."~ */
  IF ~~ THEN REPLY #14812 /* ~"Ich hätte da noch ein paar Fragen."~ */ DO ~SetGlobal("2Devils","AR0402",5)
~ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14813 /* ~"Das war's. Leb wohl."
~ */ DO ~SetGlobal("2Devils","AR0402",5)
~ EXIT
END
