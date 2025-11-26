init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.soego_logic import SoegoLogic
    soegoLogic = SoegoLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DSOEGO.DLG
# ###


# s0 # say1431
label soego_s0: # - # IF WEIGHT #8 /* Triggers after states #: 59 58 12 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    nr 'Du siehst einen müde wirkenden Mann in einer ausgebleichten, schwarzen Robe. Sein schmales Gesicht ist extrem blaß. Er sieht aus, als hätte er lange nicht geschlafen: seine Schultern hängen herab, und seine schlaffen Wangen unterstreichen die blutunterlaufenden Augen. Er scheint dich nicht zu bemerken… wahrscheinlich hält er dich für eine dieser lebenden Leichen, die hier arbeiten.'

    menu:
        '"Sei gegrüßt."':
            # a0 # r1432
            jump soego_s1

        '"Wer bist du?"':
            # a1 # r1433
            jump soego_s1

        '"Wo bin ich hier?"':
            # a2 # r1434
            jump soego_s1

        '"Ich hätte ein paar Fragen…"':
            # a3 # r1435
            jump soego_s1

        'Laß ihn in Ruhe.':
            # a4 # r1436
            jump soego_dispose


# s1 # say1437
label soego_s1: # from 0.0 0.1 0.2 0.3
    nr 'Der Staubmensch blickt blitzschnell auf, als du ihn ansprichst. "Wie…wie bitte? Habt Ihr mit mir gesprochen?"'

    menu:
        '"Ja, hab„ ich. Ich hätte da ein paar Fragen…"':
            # a5 # r1438
            $ soegoLogic.j63982_s1_r1438_action()
            jump soego_s2

        '"Nein. Nein, hab„ ich nicht."':
            # a6 # r1439
            $ soegoLogic.r1439_action()
            jump soego_s2

        'Verhalt dich totenstill.' if soegoLogic.r1440_condition():
            # a7 # r1440
            jump soego_s3

        'Verhalt dich totenstill.' if soegoLogic.r1441_condition():
            # a8 # r1441
            jump soego_s4

        'Geh. Und zwar schnell.':
            # a9 # r1442
            jump soego_s5


# s2 # say1443
label soego_s2: # from 1.0 1.1 3.0 3.3 4.0 4.1
    nr '"Bei den Mächten!" Der Staubmensch zuckt zusammen; dann schaut er dich durchdringend an. Dir fällt auf, daß seine Augen nicht blutunterlaufen sind, sondern einen Rotstich haben. "Mein Herr, Ihr entlockt mir eine wenig schmeichelhafte Bemerkung: Ihr wirkt durchaus überzeugend als Zombie." Er verbeugt sich leicht. "Ich bin Soego. Darf ich fragen, was Euch hierher führt…", er starrt auf deine Narben, "…so, wie Ihr ausseht?"'

    menu:
        '"Das geht dich gar nichts an."':
            # a10 # r1444
            jump soego_s6

        '"Ich bin mir selbst nicht sicher, was ich hier tue. Ich bin auf einer der Totenbänke oben aufgewacht, und meine Erinnerung ist… ein wenig umnachtet."':
            # a11 # r1445
            jump soego_s7

        '"Ich finde mich in diesen Hallen hier irgendwie nicht zurecht und weiß nicht, wo der Ausgang ist. Kannst du mir helfen?"' if soegoLogic.r1446_condition():
            # a12 # r1446
            jump soego_s8

        '"Ich versuche, hier rauszukommen."':
            # a13 # r1447
            jump soego_s13

        '"Ich brauchte mal „ne Luftveränderung."':
            # a14 # r1448
            $ soegoLogic.r1448_action()
            jump soego_s16

        'Für so was hab„ ich wirklich keine Zeit. Leb wohl.':
            # a15 # r4999
            jump soego_s17


# s3 # say1449
label soego_s3: # from 1.2
    nr 'Der Staubmensch schaut dich kurz prüfend an, dann schüttelt er den Kopf. "Meine Einbildung…" Er seufzt und reibt sich die Augen. "Diese Fieberzustände werden immer schlimmer…"'

    menu:
        '"Es ist keine Einbildung. Ich hätte da ein paar Fragen…"':
            # a16 # r1450
            $ soegoLogic.j63982_s3_r1450_action()
            jump soego_s2

        'Brich ihm das Genick, so lange er abgelenkt ist.' if soegoLogic.r1451_condition():
            # a17 # r1451
            jump soego_s19

        'Brich ihm das Genick, so lange er abgelenkt ist.' if soegoLogic.r1452_condition():
            # a18 # r1452
            jump soego_s22

        '"Ich hätte ein paar Fragen."':
            # a19 # r1453
            $ soegoLogic.j63982_s3_r1453_action()
            jump soego_s2

        'Geh ganz leise fort.':
            # a20 # r1454
            jump soego_dispose


# s4 # say1455
label soego_s4: # from 1.3
    nr 'Der Staubmensch betrachtet dich aufmerksam, dann beugt er sich vor… er zieht seine Lippen auseinander, unter denen seine schmutzigen, spitzen Zähne zum Vorschein kommen. Dann beschnuppert er dich wie eine Ratte.'

    menu:
        '"Äh… warum, zum Teufel, schnüffelst du so an mir?"':
            # a21 # r1456
            $ soegoLogic.r1456_action()
            jump soego_s2

        '"Sieh mal, ich hätte da ein paar Fragen an dich…"':
            # a22 # r1457
            $ soegoLogic.r1457_action()
            jump soego_s2

        'Brich ihm das Genick, wenn er sich vorbeugt.' if soegoLogic.r1458_condition():
            # a23 # r1458
            jump soego_s19

        'Brich ihm das Genick, wenn er sich vorbeugt.' if soegoLogic.r1459_condition():
            # a24 # r1459
            jump soego_s22

        'Geh. Und zwar schnell.':
            # a25 # r1460
            jump soego_s15


# s5 # say1461
label soego_s5: # from 1.4
    nr 'Als du dich umdrehst und gehen willst, läßt der Staubmensch ein leises Zischen hören, streckt seinen Kopf nach vorn und beschnuppert dich. "Bei den Mächten!" Der Staubmensch geht mit weit geöffneten Augen einen Schritt zurück. Dir fällt auf, daß seine Augen nicht blutunterlaufen sind, sondern einen Rotstich haben. "Mein Herr, Ihr entlockt mir eine wenig schmeichelhafte Bemerkung: Ihr wirkt durchaus überzeugend als Zombie." Er verbeugt sich leicht. "Ich bin Soego. Darf ich fragen, was Euch hierher führt… so, wie Ihr ausseht?"'

    menu:
        '"Das geht dich gar nichts an."':
            # a26 # r1462
            jump soego_s6

        '"Ich bin mir selbst nicht sicher, was ich hier tue. Ich bin auf einer der Totenbänke oben aufgewacht, und meine Erinnerung ist… ein wenig umnachtet."':
            # a27 # r1463
            jump soego_s7

        '"Ich habe mich verirrt und suche nach dem Ausgang. Kannst du mir helfen?"' if soegoLogic.r1464_condition():
            # a28 # r1464
            jump soego_s8

        '"Ich versuche, hier rauszukommen."':
            # a29 # r1465
            jump soego_s13

        '"Ich brauchte mal „ne Luftveränderung."':
            # a30 # r1466
            $ soegoLogic.r1466_action()
            jump soego_s16

        '"Für so was hab„ ich wirklich keine Zeit. Leb wohl."':
            # a31 # r1467
            jump soego_s17


# s6 # say1468
label soego_s6: # from 2.0 5.0 15.0 41.1 43.0 50.1 115.1
    nr '"Oh, ich fürchte, dies *geht* mich sehr wohl etwas an." Soegos Augen leuchten rot, und seine Mundwinkel zucken leicht. "Vielleicht…", er grinst höhnisch, wobei er seine spitzen, schmutzigen Zähne zeigt, "vielleicht sollte ich die Wache rufen, oder? Ja… genau. Ich glaube, das werde ich tun."'

    menu:
        '"Einen Moment mal! Ich hatte mich verirrt… Ich finde mich in diesen Hallen hier einfach nicht zurecht und weiß nicht, wo der Ausgang ist. Kannst du mir helfen?"' if soegoLogic.r1469_condition():
            # a32 # r1469
            jump soego_s8

        '"Stop! Ruf nicht die Wache! Ich will doch nur hier raus… kannst du mir helfen?"' if soegoLogic.r1470_condition():
            # a33 # r1470
            jump soego_s13

        'Brich ihm das Genick, bevor er rufen kann.' if soegoLogic.r1471_condition():
            # a34 # r1471
            jump soego_s19

        'Brich ihm das Genick, bevor er rufen kann.' if soegoLogic.r1472_condition():
            # a35 # r1472
            jump soego_s22

        '"Dann ruf sie doch zusammen. Würde sie gerne kennenlernen."':
            # a36 # r1473
            jump soego_s18


# s7 # say1474
label soego_s7: # from 2.1 5.1 13.3 15.1 42.1 57.0
    nr '"Wirklich?" Der Staubmensch mustert dich. "Ihr seht definitiv aus, als hätte man Euch präpariert. Ich weiß nicht, wie Ihr diese Schmerzen sonst hättet ertragen können… Ihr habt doch *Schmerzen,* oder? Scheint jedenfalls so."'

    menu:
        '"Wie soll ich denn überhaupt hierher gekommen sein?"':
            # a37 # r1475
            jump soego_s54

        '"Für so was hab„ ich keine Zeit. Leb wohl."':
            # a38 # r1476
            jump soego_s17


# s8 # say1477
label soego_s8: # from 2.2 5.2 6.0 13.0 15.2 16.0 17.0 26.0 40.0 41.0 50.0 61.0 62.0
    nr 'Soego nickt, und seine Mundwinkel zucken. "Hm… gewiß. Diese Hallen *können* für Besucher ganz schön verwirrend sein. Nehmt„s mir nicht übel, aber nach dem neunten Glockenschlag dürft Ihr Euch nicht mehr in der Leichenhalle aufhalten - wartet, ich öffne Euch das Haupttor."'

    menu:
        '"Vielen Dank."' if soegoLogic.r1478_condition():
            # a39 # r1478
            $ soegoLogic.r1478_action()
            jump soego_dispose

        '"Vielen Dank."' if soegoLogic.r1479_condition():
            # a40 # r1479
            jump soego_s9


# s9 # say1480
label soego_s9: # from 8.1 56.1 60.1
    nr 'Soego faßt an seinen Gürtel, nestelt kurz daran herum und zischt: "Der Schlüssel!" Seine Augen leuchten rot; wütend verzieht er seinen Mund… seine Fratze erinnert an ein wildes Tier. "Jemand hat den Schlüssel gestohlen!" Er dreht sich zu dir um und faucht. "Ihr! Ihr müßt es getan haben!"'

    menu:
        'Täusch ihn: "Äh… warte mal! Warum sollte ich dich danach fragen, wenn ich ihn gestohlen hätte?"':
            # a41 # r1481
            jump soego_s18

        'Lüge: "Wovon sprichst du?! Ich habe damit nichts zu tun!"':
            # a42 # r1482
            $ soegoLogic.r1482_action()
            jump soego_s18

        'Brich ihm das Genick, bevor er rufen kann.' if soegoLogic.r1483_condition():
            # a43 # r1483
            jump soego_s19

        'Brich ihm das Genick, bevor er rufen kann.' if soegoLogic.r1484_condition():
            # a44 # r1484
            jump soego_s22

        '"Und wenn ich„s war? Was würdest du dann tun?"':
            # a45 # r1485
            jump soego_s18


# s10 # say1486
label soego_s10: # -
    nr 'Soego nimmt einen großen Schlüssel von seinem Gürtel ab und geht zum Haupttor. Jetzt fällt dir sein merkwürdiger Gang auf… er krümmt sich nach vorn, als versuche er so, das Gleichgewicht zu halten.'

    menu:
        '"Komischen Gang hat der."' if soegoLogic.r1487_condition():
            # a46 # r1487
            jump morte_s101  # EXTERN

        'Warte, bis er das Tor geöffnet hat.' if soegoLogic.r1488_condition():
            # a47 # r1488
            jump soego_s11


# s11 # say1489
label soego_s11: # from 10.1
    nr 'Am Tor angelangt, dreht Soego den Schlüssel im Schloß um. Kurz darauf knirrscht es im Schloßkasten… das Geräusch hallt von den Marmorfußböden der Haupthalle wider.'

    menu:
        'Warte, bis er wiederkommt.':
            # a48 # r1490
            $ soegoLogic.r1490_action()
            jump soego_s12


# s12 # say1491
label soego_s12: # from 11.0 # IF WEIGHT #5 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1) Global("Gate_Cut_Scene","AR0201",1)
    nr '"Gut. Das Haupttor ist jetzt aufgeschlossen, aber Ihr könnt nicht wieder hineingehen."'

    menu:
        '"Kann ich dich vielleicht was fragen, bevor ich gehe?"':
            # a49 # r1492
            $ soegoLogic.r1492_action()
            jump soego_s26

        '"Vielen Dank, Soego. Ich werde jetzt gehen."':
            # a50 # r1493
            $ soegoLogic.r1493_action()
            jump soego_dispose


# s13 # say1494
label soego_s13: # from 2.3 5.3 6.1 15.3 16.1 17.1 26.1 61.1
    nr '"Ihr wollt hier raus?" Soego runzelt die Stirn. "Wie seid Ihr reingekommen?"'

    menu:
        '"Ich war für eine Bestattung vorhin hier, um jemandem die letzte Ehre zu erweisen. Ich wollte gehen… aber ich glaube, ich habe mich verirrt. Kannst du mir helfen, den Ausgang zu finden?"' if soegoLogic.r1495_condition():
            # a51 # r1495
            jump soego_s8

        '"Ich weiß es auch nicht."' if soegoLogic.r1496_condition():
            # a52 # r1496
            jump soego_s14

        '"Ich weiß es auch nicht."' if soegoLogic.r1497_condition():
            # a53 # r1497
            jump soego_s61

        '"Ich wachte auf einer der Totenbänke auf, und meine Erinnerung ist… ein wenig umnachtet."':
            # a54 # r1498
            jump soego_s7

        '"Für so was hab„ ich keine Zeit. Leb wohl."':
            # a55 # r1499
            jump soego_s17


# s14 # say1500
label soego_s14: # from 13.1
    nr 'Soego schnalzt mit der Zunge. "Sehr merkwürdig." Er betrachtet dich wieder mit prüfendem Blick. "Ist es möglich, daß Ihr einer der Vertragsarbeiter seid?"'

    menu:
        '"Ähh… „Vertragsarbeiter“?"':
            # a56 # r1501
            jump soego_s23

        '"Für so was hab„ ich wirklich keine Zeit. Leb wohl."':
            # a57 # r1502
            jump soego_s17


# s15 # say1503
label soego_s15: # from 4.4
    nr 'Als du dich umdrehst und gehen willst, hört der Staubmensch auf, dich zu beschnuppern und zischt: "Bei den Mächten!" Der Staubmensch geht mit weit geöffneten Augen einen Schritt zurück. Dir fällt auf, daß seine Augen nicht blutunterlaufen sind, sondern einen Rotstich haben. "Mein Herr, Ihr entlockt mir eine wenig schmeichelhafte Bemerkung: Ihr wirkt durchaus überzeugend als Zombie." Er verbeugt sich leicht. "Ich bin Soego. Darf ich fragen, was Euch hierher führt…so, wie Ihr ausseht?"'

    menu:
        '"Das geht dich gar nichts an."':
            # a58 # r1504
            jump soego_s6

        '"Ich bin mir selbst nicht sicher, was ich hier tue. Ich bin auf einer der Totenbänke oben aufgewacht, und meine Erinnerung ist… ein wenig umnachtet."':
            # a59 # r1505
            jump soego_s7

        '"Ich habe mich verirrt und suche nach dem Ausgang. Kannst du mir helfen?"' if soegoLogic.r1506_condition():
            # a60 # r1506
            jump soego_s8

        '"Ich versuche, hier rauszukommen."':
            # a61 # r1508
            jump soego_s13

        '"Ich brauchte mal „ne Luftveränderung."':
            # a62 # r1509
            $ soegoLogic.r1509_action()
            jump soego_s16

        '"Für so was hab„ ich wirklich keine Zeit. Leb wohl."':
            # a63 # r1510
            jump soego_s17


# s16 # say1511
label soego_s16: # from 2.4 5.4 15.4
    nr '"Aha…" Soegos Augen leuchten rot, und seine Mundwinkel zucken leicht. "Vielleicht…" Er grinst höhnisch, wobei er seine spitzen, schmutzigen Zähne zeigt. "Vielleicht sollte ich die Wache rufen, oder? Ja… genau. Ich glaube, das werde ich tun."'

    menu:
        '"Einen Moment mal! Ich hatte mich verirrt… Ich finde mich in diesen Hallen hier einfach nicht zurecht und weiß nicht, wo der Ausgang ist. Kannst du mir helfen?"' if soegoLogic.r1512_condition():
            # a64 # r1512
            jump soego_s8

        '"Stop! Ruf nicht die Wache! Ich will doch nur hier raus… kannst du mir helfen?"' if soegoLogic.r1513_condition():
            # a65 # r1513
            jump soego_s13

        'Brich ihm das Genick, bevor er rufen kann.' if soegoLogic.r1514_condition():
            # a66 # r1514
            jump soego_s19

        'Brich ihm das Genick, bevor er rufen kann.' if soegoLogic.r1515_condition():
            # a67 # r1515
            jump soego_s22

        '"Dann ruf sie doch zusammen. Würde sie gerne kennenlernen."':
            # a68 # r1516
            jump soego_s18


# s17 # say1517
label soego_s17: # from 2.5 5.5 7.1 13.4 14.1 15.5 23.2 24.2 25.2 26.9 27.4 28.2 29.3 31.3 32.2 33.4 34.4 35.3 36.3 37.2 114.3 115.4
    nr 'Als du dich umdrehst und gehen willst, faucht Soego dich an… doch dann beruhigt er sich plötzlich und erhebt die Hand. "Nein, nein. Ihr könnt leider nicht einfach gehen. Wir vermissen hier etwas. Vielleicht sollten wir diese Angelegenheit erst einmal klären…" Seine Mundwinkel zucken leicht, und seine Augen leuchten. "…vielleicht können die Wächter helfen. Ja… ich glaube, ich sollte sie rufen."'

    menu:
        '"Einen Moment mal! Ich hatte mich verirrt… Ich finde mich in diesen Hallen hier einfach nicht zurecht und weiß nicht, wo der Ausgang ist. Kannst du mir helfen?"' if soegoLogic.r1518_condition():
            # a69 # r1518
            jump soego_s8

        '"Stop! Ruf nicht die Wache! Ich will doch nur hier raus… kannst du mir helfen?"' if soegoLogic.r1520_condition():
            # a70 # r1520
            jump soego_s13

        'Brich ihm das Genick, bevor er rufen kann.' if soegoLogic.r1521_condition():
            # a71 # r1521
            jump soego_s19

        'Brich ihm das Genick, bevor er rufen kann.' if soegoLogic.r1522_condition():
            # a72 # r1522
            jump soego_s22

        '"Dann ruf sie doch zusammen. Würde sie gerne kennenlernen."':
            # a73 # r1523
            jump soego_s18


# s18 # say1524
label soego_s18: # from 6.4 9.0 9.1 9.4 16.4 17.4 40.4 40.5 41.6 50.6 53.6 61.4
    nr 'Soego geht einen Schritt zurück, dann klatscht er dreimal fest in die Hände. Daraufhin ertönt der Klang einer großen Eisenglocke durch die ganze Leichenhalle.'

    menu:
        '"In Ordnung…"':
            # a74 # r1525
            $ soegoLogic.r1525_action()
            jump soego_dispose


# s19 # say1526
label soego_s19: # from 3.1 4.2 6.2 9.2 16.2 17.2 40.2 51.0 61.2 114.2 115.3
    nr 'Bevor er auch nur ein Wort sagen kann, packst du ihn an den Schläfen und drehst seinen Kopf ruckartig nach links.'

    menu:
        '"Ich kann nicht zulassen, daß du deine Freunde warnst…"':
            # a75 # r1528
            $ soegoLogic.r1528_action()
            jump soego_s20


# s20 # say1529
label soego_s20: # from 19.0
    nr 'In seinem Genick macht es *Knacks*… aber anstatt zusammenzusacken gibt der Staubmensch nur einen Würgelaut von sich und reißt sich von dir los!'

    menu:
        '"Was…?!"' if soegoLogic.r1530_condition():
            # a76 # r1530
            $ soegoLogic.r1530_action()
            jump morte_s100  # EXTERN

        '"Was…?!"' if soegoLogic.r1531_condition():
            # a77 # r1531
            $ soegoLogic.r1531_action()
            jump soego_s21


# s21 # say1532
label soego_s21: # from 20.1
    nr 'Der Staubmensch macht einen genauso schockierten Eindruck wie du. Sein Blick ist irre, und aus seiner Kehle kommt ein gurgelndes Geräusch… du bist sicher, daß du ihm das Genick gebrochen hast, da sein Kopf in einem unnatürlichen Winkel auf dem Rumpf sitzt, aber er lebt noch! Als du ihn fassungslos anschaust, klatscht er dreimal schwach in die Hände. Daraufhin ertönt der Klang einer großen Eisenglocke durch die ganze Leichenhalle.'

    menu:
        '"In Ordnung…"':
            # a78 # r1533
            $ soegoLogic.r1533_action()
            jump soego_dispose


# s22 # say1534
label soego_s22: # from 3.2 4.3 6.3 9.3 16.3 17.3 40.3 61.3 114.1 115.2
    nr '*Irgendetwas* muß den Staubmenschen in Alarmbereitschaft versetzt haben… bevor du auf ihn losstürzen kannst, beginnen seine Augen rot zu leuchten, und er fletscht die Zähne. Er zischt und klatscht dreimal hintereinander fest in die Hände. Daraufhin ertönt der Klang einer großen Eisenglocke durch die ganze Leichenhalle.'

    menu:
        '"In Ordnung…"':
            # a79 # r1535
            $ soegoLogic.r1535_action()
            jump soego_dispose


# s23 # say4792
label soego_s23: # from 14.0
    nr '"Es gibt Leute, die haben einen Vertrag unterzeichnet, mit dem sie den Staubmenschen erlauben, ihren Körper nach dem Tod zu verwenden. Es ist möglich, daß Ihr einem… Mißverständnis zum Opfer gefallen seid. Ihr seht viel intelligenter aus als unsere gewöhnlichen Zombies."'

    menu:
        '"Leute verkaufen euch ihre Leiche?"':
            # a80 # r4793
            jump soego_s24

        '"Oh. Ich hätte noch ein paar Fragen…"':
            # a81 # r4794
            jump soego_s26

        '"Für so was hab„ ich keine Zeit. Leb wohl."':
            # a82 # r4795
            jump soego_s17


# s24 # say4796
label soego_s24: # from 23.0
    nr '"Oh ja. Für ein paar Kupfermünzen erklären sich viele bereit, einen Körper zu verkaufen, den sie im Wahren Tod ohnehin nicht mehr gebrauchen können."'

    menu:
        '"Was macht ihr mit diesen Leichen?"':
            # a83 # r4797
            jump soego_s25

        '"Ich… verstehe. Dürfte ich dir vielleicht noch ein paar Fragen stellen?"':
            # a84 # r4798
            jump soego_s25

        '"Vielen Dank für die Informationen. Auf bald."':
            # a85 # r4799
            jump soego_s17


# s25 # say4800
label soego_s25: # from 24.0 24.1
    nr '"Diese Zombies erledigen niedrige Aufgaben in der Leichenhalle. Sie transportieren Leichen, putzen den Boden und helfen uns, Leichen für die Bestattung vorzubereiten… alles ziemlich simple Aufgaben. Es ist ein Pech, daß sie keine komplizierteren Anweisungen befolgen können."'

    menu:
        '"Nun, „Vertragsarbeiter“ oder auch nicht; wie sollte ich denn hierhergekommen sein, wenn ich nicht tot war?"':
            # a86 # r4801
            jump soego_s54

        '"Ich… verstehe. Dürfte ich dir vielleicht noch ein paar Fragen stellen?"':
            # a87 # r4802
            jump soego_s26

        '"Vielen Dank für die Informationen. Auf bald."':
            # a88 # r4803
            jump soego_s17


# s26 # say4804
label soego_s26: # from 12.0 23.1 25.1 27.2 28.0 29.1 31.1 32.0 33.2 34.2 35.1 36.1 37.0 58.0
    nr 'Soego nickt. "Stellt Eure Fragen."'

    menu:
        '"Ich würde gerne gehen. Kannst du mich zum Ausgang bringen?"' if soegoLogic.r4805_condition():
            # a89 # r4805
            jump soego_s8

        '"Kannst du mir zeigen, wie ich hier rauskomme?"' if soegoLogic.r4806_condition():
            # a90 # r4806
            jump soego_s13

        '"Wußtest du schon, daß die eine Leiche im ersten Stock eigentlich ein verkleideter Mensch ist?"' if soegoLogic.r4807_condition():
            # a91 # r4807
            jump soego_s27

        '"Dürfte ich fragen…alles okay? Du siehst müde aus."':
            # a92 # r4809
            $ soegoLogic.r4809_action()
            jump soego_s31

        '"Du bis Soego, stimmt„s? Mir wurde gesagt, du wärst ein etwas merkwürdiger Staubmensch. Daß du Ratten magst."' if soegoLogic.r4810_condition():
            # a93 # r4810
            $ soegoLogic.r4810_action()
            jump soego_s30

        '"Du bis Soego, stimmt„s? Mir wurde gesagt, du wärst ein etwas merkwürdiger Staubmensch. Daß du Ratten magst."' if soegoLogic.r4811_condition():
            # a94 # r4811
            jump soego_s29

        '"Kennst du jemanden mit dem Namen Pharod?"' if soegoLogic.r4832_condition():
            # a95 # r4832
            jump soego_s33

        '"Ich vermisse ein Journal. Hast du zufällig eins gesehen?"' if soegoLogic.r4833_condition():
            # a96 # r4833
            jump soego_s37

        '"Macht nichts. Ich muß mich verabschieden. Leb wohl."' if soegoLogic.r4834_condition():
            # a97 # r4834
            jump soego_dispose

        '"Macht nichts. Ich muß mich verabschieden. Leb wohl."' if soegoLogic.r4835_condition():
            # a98 # r4835
            jump soego_s17


# s27 # say4808
label soego_s27: # from 26.2
    nr '"Wie bitte?"'

    menu:
        '"Da oben ist ein Mann, der sich als Leiche verkleidet hat. "Ich glaub, er bespitzelt die Staubmenschen."' if soegoLogic.r4836_condition():
            # a99 # r4836
            $ soegoLogic.r4836_action()
            jump soego_s28

        '"Da oben ist ein Mann, der sich als Leiche verkleidet hat. "Ich glaub, er bespitzelt die Staubmenschen."' if soegoLogic.r4837_condition():
            # a100 # r4837
            $ soegoLogic.r4837_action()
            jump soego_s28

        '"Vergiß es. Ich hätte ein paar andere Fragen…"':
            # a101 # r4838
            jump soego_s26

        '"Macht nichts. Ich muß mich verabschieden. Leb wohl."' if soegoLogic.r4839_condition():
            # a102 # r4839
            jump soego_dispose

        '"Macht nichts. Ich muß mich verabschieden. Leb wohl."' if soegoLogic.r916_condition():
            # a103 # r916
            jump soego_s17


# s28 # say4840
label soego_s28: # from 27.0 27.1
    nr '"Was? Weshalb sollte…?" Soegos Stimme wird plötzlich zischend. Er zieht seine Lippen auseinander, unter denen seine gezackten Zähne zum Vorschein kommen. "Ein *Anarchist*." Seine Augen leuchten grell rot. "Ein Anarchist. *Hier*." Plötzlich scheint er sich an deine Anwesenheit zu erinnern und reißt sich zusammen. "Danke für die Information. Ich werde dafür sorgen, daß die Wächter sich um diese Angelegenheit kümmern."'

    menu:
        '"Kein Problem. Ich hätte aber noch ein paar Fragen…"':
            # a104 # r4852
            jump soego_s26

        '"Macht nichts. Ich muß mich verabschieden. Leb wohl."' if soegoLogic.r4853_condition():
            # a105 # r4853
            jump soego_dispose

        '"Macht nichts. Ich muß mich verabschieden. Leb wohl."' if soegoLogic.r4854_condition():
            # a106 # r4854
            jump soego_s17


# s29 # say4855
label soego_s29: # from 26.5
    nr 'Du willst es gerade erwähnen, als du plötzlich zögerst. Dich überkommt ein merkwürdiges Gefühl, als du Soego betrachtest… irgendwie glaubst du, daß es am besten wäre, jetzt nichts zu sagen.'

    menu:
        '"Hab„ gehört, du wärst ein bißchen komisch, Soego. Daß du Ratten magst."':
            # a107 # r4856
            jump soego_s30

        '"Äh… hör mal, da war noch was, was ich dich fragen wollte…"':
            # a108 # r4857
            jump soego_s26

        '"Macht nichts. Ich muß mich verabschieden. Leb wohl."' if soegoLogic.r4858_condition():
            # a109 # r4858
            jump soego_dispose

        '"Macht nichts. Ich muß mich verabschieden. Leb wohl."' if soegoLogic.r4859_condition():
            # a110 # r4859
            jump soego_s17


# s30 # say4860
label soego_s30: # from 26.4 29.0
    nr 'Soego verstummt kurz, während er dich prüfend betrachtet. Seine Augen leuchten grell rot, und er zischt leise. "Ich glaube, Ihr habt die Gastfreundschaft überstrapaziert." Zu deinem Erstaunen geht er einen Schritt zurück und klatscht dreimal fest in die Hände. Daraufhin ertönt der Klang einer großen Eisenglocke durch die ganze Leichenhalle.'

    menu:
        '"Was zum…? Was machst du da?"':
            # a111 # r4861
            $ soegoLogic.r4861_action()
            jump soego_dispose

        '"Also gut. Bereite dich schon mal auf den Tod vor, Soego."':
            # a112 # r4862
            $ soegoLogic.r4862_action()
            jump soego_dispose


# s31 # say4863
label soego_s31: # from 26.3
    nr 'Soego zwingt sich zu einem Lächeln; seine Mundwinkel zucken leicht. "Ich bin in letzter Zeit öfter krank… leichtes Fieber, nichts Ernstes. Nur kann ich oft… nicht gut schlafen."'

    menu:
        '"Kann ich vielleicht irgendwas tun?"':
            # a113 # r4864
            $ soegoLogic.r4864_action()
            jump soego_s32

        '"Oh. Ich hätte noch ein paar Fragen…"':
            # a114 # r4865
            jump soego_s26

        '"Ich verstehe. Nun, ich muß mich verabschieden. Leb wohl."' if soegoLogic.r4866_condition():
            # a115 # r4866
            jump soego_dispose

        '"Ich verstehe. Nun, ich muß mich verabschieden. Leb wohl."' if soegoLogic.r4867_condition():
            # a116 # r4867
            jump soego_s17


# s32 # say4868
label soego_s32: # from 31.0
    nr 'Soego schüttelt den Kopf. "Nein, nein, danke der Nachfrage… ich komm schon zurecht." Mit einem leichten Stirnrunzeln: "Was kann ich sonst für Euch tun?"'

    menu:
        '"Ja. Ich hätte aber noch ein paar Fragen…"':
            # a117 # r4869
            jump soego_s26

        '"Nein, ich werde dich nicht länger belästigen. Danke für die Auskunft."' if soegoLogic.r4870_condition():
            # a118 # r4870
            jump soego_dispose

        '"Nein, ich werde dich nicht länger belästigen. Danke für die Auskunft."' if soegoLogic.r4871_condition():
            # a119 # r4871
            jump soego_s17


# s33 # say4872
label soego_s33: # from 26.6
    nr '"Pharod? Klar kenne ich ihn." Er runzelt die Stirn, und seine Augen leuchten rot. "Ein teuflischer Mensch ohne Respekt vor den Toten, und mit noch weniger Respekt vor den Lebenden. Er ist ein Aasgeier. Ein Sammler."'

    menu:
        '"Sammler?"':
            # a120 # r4873
            jump soego_s34

        '"Weißt du, wo ich ihn finden könnte?"':
            # a121 # r4874
            jump soego_s36

        '"Oh. Ich hätte noch ein paar Fragen…"':
            # a122 # r4875
            jump soego_s26

        '"Ich verstehe. Vielleicht sollte ich jetzt lieber gehen."' if soegoLogic.r4876_condition():
            # a123 # r4876
            jump soego_dispose

        '"Ich verstehe. Vielleicht sollte ich jetzt lieber gehen."' if soegoLogic.r4877_condition():
            # a124 # r4877
            jump soego_s17


# s34 # say4878
label soego_s34: # from 33.0 36.0
    nr '"Sammler bestreiten ihren Lebensunterhalt, indem sie Leichen sammeln und sie zur Leichenhalle bringen. Wir kümmern uns dann darum, daß sie ordnungsgemäß bestattet werden."'

    menu:
        '"Also, wenn ein Sammler eine Leiche findet… meine, zum Beispiel… dann könnte er sie hierherbringen und euch verkaufen?"' if soegoLogic.r4879_condition():
            # a125 # r4879
            jump soego_s35

        '"Und dieser Sammler, Pharod… hast du „ne Ahnung, wo ich ihn finden könnte?"':
            # a126 # r4880
            jump soego_s36

        '"Oh. Ich hätte noch ein paar Fragen…"':
            # a127 # r4881
            jump soego_s26

        '"Ich verstehe. Nun, ich muß mich verabschieden. Leb wohl."' if soegoLogic.r4882_condition():
            # a128 # r4882
            jump soego_dispose

        '"Ich verstehe. Nun, ich muß mich verabschieden. Leb wohl."' if soegoLogic.r4883_condition():
            # a129 # r4883
            jump soego_s17


# s35 # say4884
label soego_s35: # from 34.0
    nr '"Ja."'

    menu:
        '"Hmmmm. Plötzlich scheint es äußerst wichtig zu werden, daß ich diesen Pharod finde. Weißt du, wo er sein könnte?"':
            # a130 # r4885
            jump soego_s36

        '"Oh. Ich hätte noch ein paar Fragen…"':
            # a131 # r4886
            jump soego_s26

        '"Danke für die Information. Leb wohl."' if soegoLogic.r4887_condition():
            # a132 # r4887
            jump soego_dispose

        '"Danke für die Information. Leb wohl."' if soegoLogic.r4888_condition():
            # a133 # r4888
            jump soego_s17


# s36 # say4889
label soego_s36: # from 33.1 34.1 35.0
    nr '"Ich weiß, daß er im Stock wohnt, in den Elendsvierteln außerhalb der Leichenhalle. Wo genau, weiß ich aber nicht. Vielleicht kann Euch einer der anderen Sammler weiterhelfen, falls er mit Euch spricht."'

    menu:
        '"Was machen diese Sammler nochmal?"':
            # a134 # r4890
            jump soego_s34

        '"Oh. Ich hätte noch ein paar Fragen…"':
            # a135 # r4891
            jump soego_s26

        '"Danke für die Information. Leb wohl."' if soegoLogic.r4892_condition():
            # a136 # r4892
            jump soego_dispose

        '"Danke für die Information. Leb wohl."' if soegoLogic.r4893_condition():
            # a137 # r4893
            jump soego_s17


# s37 # say4894
label soego_s37: # from 26.7
    nr '"Ein Journal?" Soego scheint verwirrt. "Nein, ich habe keines gesehen."'

    menu:
        '"Auch egal. Ich hätte aber noch ein paar Fragen…"':
            # a138 # r4895
            jump soego_s26

        '"Trotzdem vielen Dank. Auf bald."' if soegoLogic.r4896_condition():
            # a139 # r4896
            jump soego_dispose

        '"Trotzdem vielen Dank. Auf bald."' if soegoLogic.r4897_condition():
            # a140 # r4897
            jump soego_s17


# s38 # say4898
label soego_s38: # - # IF WEIGHT #9 /* Triggers after states #: 59 58 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") !Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    nr 'Du siehst einen müde wirkenden Mann in einer schwarzen Robe. Sein schmales Gesicht ist extrem blaß. Er sieht aus, als hätte er lange nicht geschlafen: Seine Schultern hängen herab und seine schlaffen Wangen unterstreichen die blutunterlaufenen Augen. Er scheint in Gedanken versunken.'

    menu:
        '"Sei gegrüßt…"' if soegoLogic.r66706_condition():
            # a141 # r66706
            $ soegoLogic.r66706_action()
            jump soego_s39

        '"Sei gegrüßt…"' if soegoLogic.r66707_condition():
            # a142 # r66707
            $ soegoLogic.r66707_action()
            jump soego_s113

        'Laß ihn allein mit seinen Gedanken.':
            # a143 # r66708
            jump soego_dispose


# s39 # say4904
label soego_s39: # from 38.0
    nr '"Seid gegrüßt…" Der Mann dreht sich zu dir um und verbeugt sich leicht. Dir fällt plötzlich auf, daß seine Augen nicht blutunterlaufen sind, sondern einen Rotstich haben. "Ich bin Soego. Wie kann ich…" Als er deine Narben bemerkt, zucken seine Mundwinkel. "Verzeihung, mein Herr, habt Ihr Euch verlaufen?"'

    menu:
        '"Ja."':
            # a144 # r4905
            jump soego_s40

        '"Nein."':
            # a145 # r4906
            jump soego_s41

        '"Nein, ich habe mich nicht verirrt. Ich hätte da ein paar Fragen…"':
            # a146 # r4907
            jump soego_s41

        '"Nein. Ich suchte bloß nach dem Ausgang. Leb wohl."':
            # a147 # r4908
            jump soego_s41


# s40 # say4909
label soego_s40: # from 39.0
    nr '"Na gut…" Soegos Mundwinkel zucken erneut. "Ich rufe jetzt die Wächter, die Euch rausbringen werden. Wartet einen Moment." Er sieht aus, als würde er jeden Moment die Wache rufen.'

    menu:
        '"Einen Moment mal! Bitte… du brauchst wirklich nicht die Wache zu rufen. Ich bin wegen einer Bestattung hergekommen, und dann muß ich mich irgendwie in den Hallen verirrt haben… Kannst du mir vielleicht den Weg hier raus zeigen?"' if soegoLogic.r4910_condition():
            # a148 # r4910
            jump soego_s8

        '"Nein! Ich habe mich nicht verlaufen - ich habe mich versprochen."':
            # a149 # r4911
            jump soego_s50

        'Brich ihm das Genick, bevor er rufen kann.' if soegoLogic.r4912_condition():
            # a150 # r4912
            jump soego_s19

        'Brich ihm das Genick, bevor er rufen kann.' if soegoLogic.r4913_condition():
            # a151 # r4913
            jump soego_s22

        'Geh. Und zwar schnell.':
            # a152 # r4914
            jump soego_s18

        'Warte.':
            # a153 # r4915
            jump soego_s18


# s41 # say4916
label soego_s41: # from 39.1 39.2 39.3
    nr '"Ich kann mich nicht dran erinnern, Euch je hereingelassen zu haben." Soego begutachtet dich mißtrauisch; im Licht der Fackeln leuchten seine Augen rot. "Darf ich fragen, was Euch hierher führt?"'

    menu:
        '"Ich war für eine Bestattung vorhin hier, um jemandem die letzte Ehre zu erweisen. Ich wollte gehen… aber ich glaube, ich habe mich verirrt. Kannst du mir helfen, den Ausgang zu finden?"' if soegoLogic.r4917_condition():
            # a154 # r4917
            jump soego_s8

        '"Das geht dich nichts an."':
            # a155 # r4918
            jump soego_s6

        '"Ich bin auf einer der Totenbänke in eurem Vorbereitungsraum aufgewacht."':
            # a156 # r4919
            jump soego_s42

        '"Ich bin hier, um jemandem zu treffen."':
            # a157 # r4920
            jump soego_s43

        '"Ich bin wegen einer Bestattung hier, aber da scheint etwas schiefgelaufen zu sein."' if soegoLogic.r4921_condition():
            # a158 # r4921
            jump soego_s53

        'Beug dich nach vorne, als ob du ihm etwas zuflüstern wolltest, und brich ihm das Genick, wenn er sich vorbeugt.':
            # a159 # r4922
            jump soego_s51

        'Geh. Und zwar schnell.':
            # a160 # r4923
            jump soego_s18


# s42 # say4924
label soego_s42: # from 41.2 50.2 115.0
    nr 'Er wirkt überrascht. "Ihr… Ihr seid auf einer dieser Totenbänke oben aufgewacht?"'

    menu:
        '"Äh, nein. Ich habe mich versprochen."':
            # a161 # r4925
            jump soego_s50

        '"Ja. Ich weiß, daß das unglaublich klingt, aber es ist die Wahrheit. Ich bin auf einer eurer Totenbänke da oben aufgewacht."':
            # a162 # r4926
            $ soegoLogic.r4926_action()
            jump soego_s7


# s43 # say4927
label soego_s43: # from 41.3 50.3
    nr 'Soego nickt. "Wen sucht Ihr hier? Es wäre mir ein Vergnügen, Euch weiterzuhelfen."'

    menu:
        '"Das geht dich nichts an."':
            # a163 # r4928
            jump soego_s6

        '"Ich bin hier, um Dhall zu treffen."' if soegoLogic.r4929_condition():
            # a164 # r4929
            jump soego_s44

        '"Ich bin hier, um Deionarra zu treffen."' if soegoLogic.r4930_condition():
            # a165 # r4930
            jump soego_s47

        'Lüge: "Ähh… Adahn. Arbeitet er noch hier, oder…?"' if soegoLogic.r4931_condition():
            # a166 # r4931
            $ soegoLogic.r4931_action()
            jump soego_s49

        'Lüge: "Ähh… Adahn. Arbeitet er noch hier, oder…?"' if soegoLogic.r4932_condition():
            # a167 # r4932
            jump soego_s49

        '"Äh, niemanden. Ich habe mich versprochen."':
            # a168 # r4933
            jump soego_s50


# s44 # say4934
label soego_s44: # from 43.1
    nr '"Dhall? Dhall der Schreiberling ist im Empfangsraum im oberen Stockwerk." Soegos Mundwinkel zucken leicht. "Er hat alle Hände voll zu tun und ist nicht bei bester Gesundheit. Wenn es nicht furchtbar dringend ist, würde ich ihn lieber nicht stören."'

    menu:
        '"Was fehlt Dhall?"':
            # a169 # r4935
            jump soego_s46

        '"Im Empfangsraum?"':
            # a170 # r4936
            jump soego_s45

        '"Also gut. Ich werden meinen Besuch bei ihm kurz halten. Leb wohl."':
            # a171 # r4937
            jump soego_s62


# s45 # say4938
label soego_s45: # from 44.1
    nr '"Ja… der Empfangsraum. Dorthin werden die Leichen aus der Stadt gebracht, nachdem sie hier angeliefert wurden. Sie werden registriert und zum Bestatten vorbereitet."'

    menu:
        '"Was fehlt Dhall?"':
            # a172 # r4939
            jump soego_s46

        '"Danke für deine Hinweise. Ich werden meinen Besuch bei Dhall kurz halten. Leb wohl."':
            # a173 # r4940
            jump soego_s62


# s46 # say4941
label soego_s46: # from 44.0 45.0
    nr '"Ach, im Grunde ist alles in Ordnung mit ihm. Dhall ist…" Soego klappert mit den Zähnen. "…*alt*. Lange hat er die Toten katalogisiert, aber diese Zeit neigt sich langsam aber sicher dem Ende zu. Der Tod ist ihm gewiß nach seinem Siechtum."'

    menu:
        '"Also gut. Ich werden meinen Besuch bei ihm kurz halten. Leb wohl."':
            # a174 # r4942
            jump soego_s62


# s47 # say4943
label soego_s47: # from 43.2 53.2
    nr '"Deionarra? Eine Frau, die so heißt, ist im Nordwesten der Gedenkhalle bestattet. Ist das die Person, die Ihr sucht?"'

    menu:
        '"Ja… kannst du mir sagen, was mit ihr passiert ist?"':
            # a175 # r4944
            jump soego_s48

        '"Ja. Ich werde ihr jetzt meine letzte Ehre erweisen."':
            # a176 # r4945
            jump soego_s62


# s48 # say4946
label soego_s48: # from 47.0
    nr '"Ich weiß nicht, aber sie war eine ganze Weile hier. Vielleicht weiß ihr Vater, was sie hatte… auf dem Weg zu seinem Büro im Oberen Bezirk kommt er oft hier vorbei. Es war sein Wunsch, sie hier in der Gedenkhalle zu bestatten."'

    menu:
        '"Danke für die Hinweise. Ich werd gehen, um ihr die letzte Ehre zu erweisen."':
            # a177 # r4947
            jump soego_s62


# s49 # say4948
label soego_s49: # from 43.3 43.4 53.3 53.4
    nr '"Adahn…" Soego kneift seine Augen zusammen, und der Rotstich scheint jetzt noch ausgeprägter als zuvor. "Niemand, der so heißt, weder tot noch lebendig, befindet sich in der Leichenhalle." Seine Mundwinkel zucken, und zu deiner Überraschung schnüffelt er die Luft.'

    menu:
        '"Äh… da muß ich mich wohl versprochen haben."':
            # a178 # r4949
            jump soego_s50


# s50 # say4950
label soego_s50: # from 40.1 42.0 43.5 49.0 53.1 57.1
    nr 'Soegos Mundwinkel zucken erneut, und seine Augen leuchten. "Was führt Euch dann hierher?"'

    menu:
        '"Ich war für eine Bestattung vorhin hier, um jemandem die letzte Ehre zu erweisen. Ich wollte gehen… aber ich glaube, ich habe mich verirrt. Kannst du mir helfen, den Ausgang zu finden?"' if soegoLogic.r4951_condition():
            # a179 # r4951
            jump soego_s8

        '"Geht dich nichts an."':
            # a180 # r4952
            jump soego_s6

        '"Ich bin auf einer der Totenbänke in eurem Vorbereitungsraum aufgewacht."':
            # a181 # r4953
            jump soego_s42

        '"Ich bin hier, um jemandem zu treffen."':
            # a182 # r4954
            jump soego_s43

        '"Ich kam wegen einer Bestattung her."' if soegoLogic.r4955_condition():
            # a183 # r4955
            jump soego_s53

        'Beug dich nach vorne, als ob du ihm etwas zuflüstern wolltest, und brich ihm das Genick, wenn er sich vorbeugt.':
            # a184 # r4956
            jump soego_s51

        'Lauf weg, so schnell du kannst.':
            # a185 # r5028
            jump soego_s18


# s51 # say4957
label soego_s51: # from 41.5 50.5 53.5
    nr 'Soego runzelt die Stirn, als du dich vorbeugst. Dir fällt auf, daß er die Luft schnüffelt, als wollte er sie testen. Plötzlich kneift er die Augen zusammen; er sieht aus, als würde er jeden Moment die Wache rufen.'

    menu:
        'Brich ihm das Genick, bevor er rufen kann.' if soegoLogic.r4958_condition():
            # a186 # r4958
            jump soego_s19

        'Brich ihm das Genick, bevor er rufen kann.' if soegoLogic.r4959_condition():
            # a187 # r4959
            jump soego_s52


# s52 # say4960
label soego_s52: # from 51.1
    nr 'Als du auf ihn losgehen willst, macht Soego einen Satz zurück. Seine Augen leuchten rot, und er fletscht die Zähne. Er zischt und klatscht dreimal hintereinander fest in die Hände. Daraufhin ertönt durch die ganze Leichenhalle der Klang einer großen Eisenglocke.'

    menu:
        '"Nun gut…"':
            # a188 # r4961
            $ soegoLogic.r4961_action()
            jump soego_dispose


# s53 # say4962
label soego_s53: # from 41.4 50.4
    nr '"Wer sollte bestattet werden? Vielleicht finden die Feierlichkeiten woanders in der Leichenhalle statt."'

    menu:
        '"Du verstehst mich falsch… ICH sollte bestattet werden."':
            # a189 # r4963
            jump soego_s57

        '"Entschuldigung… Ich hab„ mich versprochen. Ich kenne den Namen des Verstorbenen nicht."':
            # a190 # r4964
            jump soego_s50

        '"Ihr Name ist Deionarra."' if soegoLogic.r4965_condition():
            # a191 # r4965
            jump soego_s47

        'Lüge: "Sein Name ist… äh, Adahn."' if soegoLogic.r4967_condition():
            # a192 # r4967
            $ soegoLogic.r4967_action()
            jump soego_s49

        'Lüge: "Sein Name ist… äh, Adahn."' if soegoLogic.r4968_condition():
            # a193 # r4968
            jump soego_s49

        'Beug dich nach vorne, als wenn du ihm etwas zuflüstern wolltest, und brich ihm das Genick.':
            # a194 # r4969
            jump soego_s51

        'Lauf weg, so schnell du kannst.':
            # a195 # r4970
            jump soego_s18


# s54 # say4966
label soego_s54: # from 7.0 25.0
    nr '"Hm…" Soego schielt dich an. Er scheint verwirrt. "Offensichtlich ist hier ein Fehler unterlaufen. Hierhergebracht haben Euch entweder Eure Blutsverwandten, andere Staubmenschen oder…", Soego fängt plötzlich an zu zischen, als hätte er soeben einen unangenehmen Gedanken gehabt, "oder einer der *Sammler*."'

    menu:
        '"Sammler?"':
            # a196 # r4971
            jump soego_s55


# s55 # say4972
label soego_s55: # from 54.0
    nr '"Ja, Sammler… ein Haufen Aasgeier, die die Leichen der Toten zu uns bringen. Sie haben Euch wohl für tot gehalten…", Soego zischt mit leuchtenden Augen, "…und sie sind so geldsüchtig, daß sie Euch nicht einmal genau angeschaut haben, bevor sie Euch abgeliefert haben." Soego mustert dich. "Zum Glück seid Ihr rechtzeitig aufgewacht… sonst hättet Ihr den Wahren Tod zu früh erlangt."'

    menu:
        '"Dann muß da jemandem ein Fehler unterlaufen sein… und ich würde gerne gehen. Und zwar sofort."':
            # a197 # r4973
            jump soego_s56


# s56 # say4974
label soego_s56: # from 55.0 59.1
    nr 'Soego nickt, wobei er mit den Mundwinkeln zuckt. "Hm… na gut. Kein Problem. Ich mach Euch das Haupttor auf."'

    menu:
        '"In Ordnung."' if soegoLogic.r4975_condition():
            # a198 # r4975
            $ soegoLogic.r4975_action()
            jump soego_dispose

        '"Also gut."' if soegoLogic.r4976_condition():
            # a199 # r4976
            jump soego_s9


# s57 # say4977
label soego_s57: # from 53.0
    nr '"Ihr?"'

    menu:
        '"Ja, ICH. Ich bin auf einer eurer Totenbänke da oben aufgewacht."':
            # a200 # r4978
            jump soego_s7

        '"Pardon… Ich muß mich wohl versprochen haben."':
            # a201 # r4979
            jump soego_s50


# s58 # say4980
label soego_s58: # - # IF WEIGHT #6 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1)
    nr 'Als du näherkommst, schnüffelt Soego die Luft und blickt auf. Als er dich sieht, runzelt er die Stirn. "Ich hab„ Euch doch das Tor aufgeschlossen. Weshalb seid Ihr immer noch hier?"'

    menu:
        '"Ich hätte da noch ein paar Fragen an dich, bevor ich gehe."':
            # a202 # r4981
            jump soego_s26

        '"Ich werde mich sofort auf den Weg zum Tor machen. Leb wohl."':
            # a203 # r4982
            jump soego_dispose


# s59 # say4983
label soego_s59: # - # IF WEIGHT #7 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Soego","GLOBAL",1) Global("Gate_Open","GLOBAL",0)
    nr 'Als du näherkommst, schnüffelt Soego die Luft und blickt auf. Als er dich sieht, beugt er sich leicht nach vorn: "Habt Ihr gefunden, wonach Ihr gesucht habt?"'

    menu:
        '"Ja, vielen Dank. Verzeih mir, aber ich muß mich in diesen Hallen irgendwie verirrt haben… kannst du mir helfen, den Ausgang zu finden?"' if soegoLogic.r4984_condition():
            # a204 # r4984
            jump soego_s60

        '"Ja. "Ich würde jetzt gern gehen. Kannst du mich zum Ausgang bringen?"' if soegoLogic.r4985_condition():
            # a205 # r4985
            jump soego_s56

        '"Ja, und ich werde mich sofort auf den Weg zum Tor machen. Leb wohl."':
            # a206 # r4986
            jump soego_dispose


# s60 # say4987
label soego_s60: # from 59.0
    nr 'Soego nickt, und seine Mundwinkel zucken. "Hm… stimmt schon. Diese Hallen *können* für Besucher schon verwirrend sein. Wartet, ich öffne Euch das Haupttor."'

    menu:
        '"Vielen Dank."' if soegoLogic.r4988_condition():
            # a207 # r4988
            $ soegoLogic.r4988_action()
            jump soego_dispose

        '"Vielen Dank."' if soegoLogic.r4989_condition():
            # a208 # r4989
            jump soego_s9


# s61 # say4990
label soego_s61: # from 13.2
    nr '"Das ist aber merkwürdig." Soegos Augen leuchten rot, und seine Mundwinkel zucken leicht. "Vielleicht…", er grinst höhnisch und zeigt dabei seine spitzen, schmutzigen Zähne, "vielleicht sollte ich die Wache rufen, oder? Ja… genau. Ich glaube, das werde ich tun."'

    menu:
        '"Einen Moment mal! Ich hatte mich verirrt… Ich finde mich in diesen Hallen hier einfach nicht zurecht und weiß nicht, wo der Ausgang ist. Kannst du mir helfen?"' if soegoLogic.r4991_condition():
            # a209 # r4991
            jump soego_s8

        '"Stop! Ruf nicht die Wache! Ich will doch nur hier raus… kannst du mir helfen?"' if soegoLogic.r4992_condition():
            # a210 # r4992
            jump soego_s13

        'Brich ihm das Genick, bevor er rufen kann.' if soegoLogic.r4993_condition():
            # a211 # r4993
            jump soego_s19

        'Brich ihm das Genick, bevor er rufen kann.' if soegoLogic.r4994_condition():
            # a212 # r4994
            jump soego_s22

        '"Dann ruf sie doch zusammen. Würde sie gerne kennenlernen."':
            # a213 # r4995
            jump soego_s18


# s62 # say4996
label soego_s62: # from 44.2 45.1 46.0 47.1 48.0
    nr 'Soego nickt… und seine Mundwinkel zucken leicht, was er nicht einmal zu bemerken scheint. "Kommt zurück, wenn Ihr Euren Totenbesuch beendet habt, dann schließ ich Euch das Haupttor auf. Es hat schon neunmal geläutet - wenn Ihr fertig seid, müßt Ihr uns sofort verlassen."'

    menu:
        '"Weißt du, das könnte ich ein andermal tun. Kannst du mich jetzt hier rauslassen?"':
            # a214 # r4997
            jump soego_s8

        '"Vielen Dank. Ich werde wiederkommen."':
            # a215 # r4998
            jump soego_dispose


# s63 # say21653
label soego_s63: # - # IF WEIGHT #4 /* Triggers after states #: 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") !Global("CR_Vic","GLOBAL",1)
    nr '"Aha, ein weiteres Mitglied der Lebenden. Die meisten, die soweit in die Katakomben vordringen, werden von Ghulen getötet; du hast Glück."'

    menu:
        '"Du bist Soego, aus der Leichenhalle. Was machst du hier?"' if soegoLogic.r21655_condition():
            # a216 # r21655
            $ soegoLogic.r21655_action()
            jump soego_s72

        '"Wer bist du?"' if soegoLogic.r21656_condition():
            # a217 # r21656
            $ soegoLogic.r21656_action()
            jump soego_s64

        '"Wo bin ich?"' if soegoLogic.r21657_condition():
            # a218 # r21657
            $ soegoLogic.r21657_action()
            jump soego_s77

        '"Warum werde ich hier festgehalten?"' if soegoLogic.r21658_condition():
            # a219 # r21658
            $ soegoLogic.r21658_action()
            jump soego_s78

        '"Vielleicht. Leb wohl."' if soegoLogic.r21660_condition():
            # a220 # r21660
            $ soegoLogic.r21660_action()
            jump soego_s71


# s64 # say21661
label soego_s64: # from 63.1 77.0 78.0
    nr '"Ich bin Soego Totenhimmel, Faktotum der Staubmenschen. Ich bin Missionar in dieser Gegend." Er verbeugt sich leicht.'

    menu:
        '"Missionar?"':
            # a221 # r21662
            jump soego_s65

        '"Was machen die Staubmenschen hier?"' if soegoLogic.r21663_condition():
            # a222 # r21663
            jump soego_s66

        '"Wo bin ich?"':
            # a223 # r64595
            jump soego_s77

        '"Warum werde ich hier festgehalten?"':
            # a224 # r64596
            jump soego_s78

        '"Sei gegrüßt und leb wohl."':
            # a225 # r21665
            jump soego_s71


# s65 # say21666
label soego_s65: # from 64.0 72.2 73.2 74.0 101.3 104.1
    nr '"Ja, ich kam in diese Katakomben, nachdem ich Gerüchte gehört hatte, daß es in dieser Gegend Untote mit *Bewußtsein* geben soll. Ich hoffe, sie retten zu können."'

    menu:
        '"Sie retten?"':
            # a226 # r21667
            jump soego_s67

        '"Wo bin ich?"':
            # a227 # r64597
            jump soego_s77

        '"Warum werde ich hier festgehalten?"':
            # a228 # r64599
            jump soego_s78

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a229 # r21669
            jump soego_s71


# s66 # say21670
label soego_s66: # from 64.1 72.3 73.3 74.1 101.4 104.2 109.2
    nr '"Ich bin der einzige. Ich kam in diese Katakomben, nachdem ich Gerüchte gehört hatte, daß es in dieser Gegend Untote mit *Bewußtsein* geben soll. Ich hoffe, sie retten zu können."'

    menu:
        '"Sie retten?"':
            # a230 # r21671
            jump soego_s67

        '"Wo bin ich?"':
            # a231 # r64600
            jump soego_s77

        '"Warum werde ich hier festgehalten?"':
            # a232 # r64601
            jump soego_s78

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a233 # r21673
            jump soego_s71


# s67 # say21674
label soego_s67: # from 65.0 66.0
    nr '"Ja, Leidenschaft bindet sie an dieses falsche Leben. Ich hoffe, ich kann ihnen beibringen, diesen Leidenschaften zu entsagen, dieses falsche Leben hinter sich zu lassen und den Wahren Tod zu erreichen."'

    menu:
        '"Falsches Leben?"':
            # a234 # r21675
            jump soego_s68

        '"Wahrer Tod?"':
            # a235 # r21676
            jump soego_s69

        '"Du willst sie tot sehen?"':
            # a236 # r21767
            jump soego_s70

        '"Wo bin ich?"':
            # a237 # r64602
            jump soego_s77

        '"Warum werde ich hier festgehalten?"':
            # a238 # r64603
            jump soego_s78

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a239 # r21770
            jump soego_s71


# s68 # say21771
label soego_s68: # from 67.0 69.0 70.0
    nr '"Diese… Toten… sind so nah am Wahren Tod… Trotzdem klammern sie sich an dieses Leben. Dieses falsche Leben ist die Lüge der Existenz auf dieser Ebene."'

    menu:
        '"Wahrer Tod?"':
            # a240 # r21772
            jump soego_s69

        '"Du willst sie tot sehen?"':
            # a241 # r21774
            jump soego_s70

        '"Wo bin ich?"':
            # a242 # r64604
            jump soego_s77

        '"Warum werde ich hier festgehalten?"':
            # a243 # r64605
            jump soego_s78

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a244 # r21776
            jump soego_s71


# s69 # say21777
label soego_s69: # from 67.1 68.0 70.1
    nr '"Der Wahre Tod ist die völlige Abwesenheit von Leidenschaft, das wahre Leben jenseits dieses Schattendaseins. Nach diesem Ort müssen diese Toten streben, um sich selbst zu befreien."'

    menu:
        '"Was war das für ein „falsches Leben“, von dem du gesprochen hast?"':
            # a245 # r21779
            jump soego_s68

        '"Du willst sie tot sehen?"':
            # a246 # r21780
            jump soego_s70

        '"Wo bin ich?"':
            # a247 # r64606
            jump soego_s77

        '"Warum werde ich hier festgehalten?"':
            # a248 # r64607
            jump soego_s78

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a249 # r21784
            jump soego_s71


# s70 # say21786
label soego_s70: # from 67.2 68.1 69.1
    nr '"Ich wünsche mir, daß sie diese Existenzebene überschreiten, sich von der Leidenschaft lossagen. Das kann sie retten."'

    menu:
        '"Was war das für ein „falsches Leben“, von dem du gesprochen hast?"':
            # a250 # r21788
            jump soego_s68

        '"Du hattest den „Wahren Tod“ erwähnt?„"':
            # a251 # r21790
            jump soego_s69

        '"Wo bin ich?"':
            # a252 # r64608
            jump soego_s77

        '"Warum werde ich hier festgehalten?"':
            # a253 # r64609
            jump soego_s78

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a254 # r21794
            jump soego_s71


# s71 # say21799
label soego_s71: # from 63.4 64.4 65.3 66.3 67.5 68.4 69.4 70.4 72.6 73.6 74.4 77.2 78.2 79.5 80.1 81.0 101.5 104.3 109.5 110.3 112.1
    nr '"Bitte gib mir noch einen Moment deiner Zeit, bevor du gehst. Greife keinen der Untoten hier in den Katakomben an. Sie werden dir nichts antun, solange du friedlich bleibst. Wenn du sie angreifst, werden sie sich verteidigen, und sie sind… viele. Du kannst hierher zurückkommen, wenn du dich ausruhen willst."'

    menu:
        '"Warte… Kann ich mich jetzt ausruhen?"' if soegoLogic.r21800_condition():
            # a255 # r21800
            $ soegoLogic.j21805_s71_r21800_action()
            jump soego_s84

        '"Warte… können wir uns ausruhen?"' if soegoLogic.r64569_condition():
            # a256 # r64569
            $ soegoLogic.j21805_s71_r64569_action()
            jump soego_s84

        'Geh weg.':
            # a257 # r64570
            $ soegoLogic.j21805_s71_r64570_action()
            jump soego_dispose


# s72 # say21806
label soego_s72: # from 63.0
    nr '"Du hast ein gutes Gedächtnis. Ich bin nicht mehr in der Leichenhalle beschäftigt… Statt dessen bin ich jetzt hier Missionar."'

    menu:
        '"Aber ich dachte, ich hätte dir das Genick gebrochen…"' if soegoLogic.r64547_condition():
            # a258 # r64547
            jump soego_s73

        '"Aber ich dachte, ich hätte dich *getötet*…"' if soegoLogic.r21808_condition():
            # a259 # r21808
            jump soego_s73

        '"Missionar?"':
            # a260 # r21809
            jump soego_s65

        '"Was machen die Staubmenschen hier?"' if soegoLogic.r21811_condition():
            # a261 # r21811
            jump soego_s66

        '"Wo bin ich?"':
            # a262 # r64610
            jump soego_s77

        '"Warum werde ich hier festgehalten?"':
            # a263 # r64611
            jump soego_s78

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a264 # r21813
            jump soego_s71


# s73 # say21814
label soego_s73: # from 72.0 72.1 109.0 109.1
    nr '"Die Wunde, die du mir beigebracht hast, war nicht tödlich. Ich habe mich schnell erholt… und festgestellt, daß ich Abstand zur Leichenhalle gewinnen wollte."'

    menu:
        '"Soego, ich hab„ dir das Genick gebrochen… und trotzdem lebst du noch?"' if soegoLogic.r21815_condition():
            # a265 # r21815
            jump soego_s101

        '"Bist du nicht wütend?"':
            # a266 # r21816
            jump soego_s74

        '"Hmmm… Du hast gesagt, du seist ein Missionar?"':
            # a267 # r21817
            jump soego_s65

        '"Na gut. Was machen die Staubmenschen hier?"' if soegoLogic.r21818_condition():
            # a268 # r21818
            jump soego_s66

        '"In Ordnung… Also, wo bin ich?"':
            # a269 # r64612
            jump soego_s77

        '"Ich… verstehe. Warum werde ich hier festgehalten?"':
            # a270 # r64613
            jump soego_s78

        '"Vergiß es, mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a271 # r21820
            jump soego_s71


# s74 # say21821
label soego_s74: # from 73.1 101.2 104.0
    nr '"Nein… sollte ich? Ich bin etwas enttäuscht, daß es nicht an der Zeit für mich war, diesen Ort zu verlassen. Trotzdem solltest du nicht zur Leichenhalle zurückkehren, denn vieler meiner Faktotum-Kollegen wären nicht erfreut, dich zu sehen."'

    menu:
        '"Du hattest gesagt, daß du ein Missionar bist?"':
            # a272 # r64614
            jump soego_s65

        '"Was machen die Staubmenschen hier?"' if soegoLogic.r21823_condition():
            # a273 # r21823
            jump soego_s66

        '"Wo bin ich?"':
            # a274 # r64615
            jump soego_s77

        '"Warum werde ich hier festgehalten?"':
            # a275 # r64616
            jump soego_s78

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a276 # r21825
            jump soego_s71


# s75 # say21716
label soego_s75: # -
    nr '"Du hast ein gutes Gedächtnis. Ich bin nicht mehr in der Leichenhalle beschäftigt… Statt dessen bin ich jetzt hier Missionar. Du solltest nicht zur Leichenhalle zurückkehren, denn viele meiner Faktotum-Kollegen wären nicht erfreut, dich nach deinem Angriff auf das Hauptquartier unseres Bundes zu sehen."'

    jump soego_dispose


# s76 # say21832
label soego_s76: # -
    nr '"Du bist bereits tot, Namenloser. Wiederaufzuerstehen war sehr… unhöflich."'

    jump soego_dispose


# s77 # say21837
label soego_s77: # from 63.2 64.2 65.1 66.1 67.3 68.2 69.2 70.2 72.4 73.4 74.2 78.1 109.3
    nr '"Du bist in den Katakomben der Toten Lande. Die Wächter haben dich hergebracht."'

    menu:
        '"Und wer warst du?"':
            # a277 # r21840
            jump soego_s64

        '"Warum werde ich hier festgehalten?"':
            # a278 # r21841
            jump soego_s78

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a279 # r21843
            jump soego_s71


# s78 # say21844
label soego_s78: # from 63.3 64.3 65.2 66.2 67.4 68.3 69.3 70.3 72.5 73.5 74.3 77.1 109.4
    nr '"Ich weiß es nicht. Frag einen der Bürger hier."'

    menu:
        '"Und wer warst du?"':
            # a280 # r21847
            jump soego_s64

        '"Wo bin ich?"':
            # a281 # r21848
            jump soego_s77

        '"Vielleicht. Leb wohl."':
            # a282 # r21850
            jump soego_s71


# s79 # say21851
label soego_s79: # - # IF WEIGHT #2 /* Triggers after states #: 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("CR_Vic","GLOBAL",1)
    nr '"Ach, jemand, der uns in unserem Anliegen unterstützt! Ich, als Agent von Viele-als-Einer, wurde über dein Kommen informiert. Du mußt für uns versuchen, einen Weg in den Thronsaal des Schweigenden Königs zu finden, und ihn töten. Tu das, und Viele-als-Einer wird dich belohnen."'

    menu:
        '"Soego… Emoric wollte wissen, wo du steckst."' if soegoLogic.r66181_condition():
            # a283 # r66181
            $ soegoLogic.r66181_action()
            jump soego_s110

        '"Warte - bist du nicht Soego? Emoric wollte wissen, wo du gewesen bist."' if soegoLogic.r21852_condition():
            # a284 # r21852
            $ soegoLogic.r21852_action()
            jump soego_s110

        '"Warte mal… Hab ich dir nicht in der Leichenhalle das Genick gebrochen?"' if soegoLogic.r64623_condition():
            # a285 # r64623
            $ soegoLogic.r64623_action()
            jump soego_s112

        '"Warte mal… Ich dachte, ich hätte dich in der Leichenhalle getötet…"' if soegoLogic.r64624_condition():
            # a286 # r64624
            $ soegoLogic.r64624_action()
            jump soego_s112

        '"Wie gelange ich zum Schweigenden König?"' if soegoLogic.r21853_condition():
            # a287 # r21853
            $ soegoLogic.r21853_action()
            jump soego_s80

        '"Ich verstehe. Dann leb wohl."' if soegoLogic.r21854_condition():
            # a288 # r21854
            $ soegoLogic.r21854_action()
            jump soego_s71


# s80 # say21858
label soego_s80: # from 79.4 110.2 112.0
    nr '"Ich weiß es nicht… Ich bin schon einige Zeit hier, und ich habe immer noch keinen Weg in seinen Thronsaal gefunden. Vielleicht hast du mehr Glück, weil sie dir nicht den Haß und die Borniertheit entgegenbringen, die sie mir gegenüber zeigen."'

    menu:
        '"Haß und Borniertheir?"':
            # a289 # r21860
            jump soego_s81

        '"Ich verstehe. Dann leb wohl."':
            # a290 # r21862
            jump soego_s71


# s81 # say21864
label soego_s81: # from 80.0
    nr '"Die Ansichten meines Bundes werden von einigen geteilt, aber nicht allen. Die wichtigsten Galionsfiguren dieser Zivilisation schätzen sie nicht besonders."'

    menu:
        '"Ich verstehe. Dann leb wohl."':
            # a291 # r21870
            jump soego_s71


# s82 # say21913
label soego_s82: # - # IF WEIGHT #1 /* Triggers after states #: 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("Met_Soego2","GLOBAL",1)
    nr '"Ah, wir treffen uns wieder."'

    menu:
        '"Der Schweigende König ist tot, und das schon eine ganze Weile. Es *gibt* keinen Schweigenden König."' if soegoLogic.r24206_condition():
            # a292 # r24206
            $ soegoLogic.r24206_action()
            jump soego_s94

        '"Der Schweigende König ist tot, und das schon eine ganze Weile. Es *gibt* keinen Schweigenden König."' if soegoLogic.r21915_condition():
            # a293 # r21915
            $ soegoLogic.r21915_action()
            jump soego_s94

        '"Bist du Soego? Emoric wollte wissen, wo du gewesen bist."' if soegoLogic.r21914_condition():
            # a294 # r21914
            $ soegoLogic.r21914_action()
            jump soego_s109

        '"Ich war in deinen Gemächern und hab„ dein Journal gesehen."' if soegoLogic.r21916_condition():
            # a295 # r21916
            $ soegoLogic.r21916_action()
            jump soego_s100

        '"Ich habe ein Skelett getroffen - in einem der Gänge hier - das kurz davor zu sein schien, den Wahren Tod zu suchen."' if soegoLogic.r21917_condition():
            # a296 # r21917
            $ soegoLogic.r21917_action()
            jump soego_s97

        '"Ich muß mich ausruhen."' if soegoLogic.r21920_condition():
            # a297 # r21920
            jump soego_s84

        '"Wir müssen uns ausruhen."' if soegoLogic.r21922_condition():
            # a298 # r21922
            jump soego_s84

        '"Ich hätte da ein paar Fragen…"':
            # a299 # r21924
            jump soego_s83

        '"Komm„ nur gerade zufällig vorbei. Leb wohl."':
            # a300 # r21925
            jump soego_dispose


# s83 # say21943
label soego_s83: # from 82.7 88.0 89.1 90.0 91.1 92.0 94.1 94.3 111.0
    nr '"Ich werde antworten, so gut ich kann."'

    menu:
        '"Erzähl mir was über Hargrimm."' if soegoLogic.r21944_condition():
            # a301 # r21944
            jump soego_s88

        '"Erzähl mir was über Akaste."' if soegoLogic.r21945_condition():
            # a302 # r21945
            jump soego_s89

        '"Erzähl mir was über die Muffige Mary."' if soegoLogic.r21946_condition():
            # a303 # r21946
            jump soego_s90

        '"Erzähl mir was über den Schweigenden König."' if soegoLogic.r21947_condition():
            # a304 # r21947
            jump soego_s91

        '"Was weißt du von dieser „Zivilisation“?"' if soegoLogic.r21948_condition():
            # a305 # r21948
            jump soego_s92

        '"Was weißt du von dieser „Zivilisation“?"' if soegoLogic.r21949_condition():
            # a306 # r21949
            jump soego_s93

        '"Vergiß es. Leb wohl."':
            # a307 # r21951
            jump soego_dispose


# s84 # say21954
label soego_s84: # from 71.0 71.1 82.5 82.6
    nr '"Natürlich. In dieser Kammer bist du sicher, während du dich ausruhst."'

    menu:
        '"Danke…"':
            # a308 # r21956
            $ soegoLogic.r21956_action()
            jump soego_dispose


# s85 # say21958
label soego_s85: # -
    nr 'Null node.'

    jump soego_dispose


# s86 # say21963
label soego_s86: # -
    nr 'Null node.'

    jump soego_dispose


# s87 # say21969
label soego_s87: # -
    nr 'Null node.'

    jump soego_dispose


# s88 # say21975
label soego_s88: # from 83.0 91.0
    nr '"Ein Starrköpfiger, aber bewundernswert in seiner Frömmigkeit und seinem Pflichtbewußtsein. Er ist hier mein stärkster Rivale, und er hat viele Jahre lang die Zivilisation zusammengehalten. Seine Leidenschaften stammen von seiner Frömmigkeit und seinem Pflichtbewußtsein… bewundernswerte Qualitäten, aber fehl am Platz."'

    menu:
        '"Ich hätte noch ein paar Fragen…"':
            # a309 # r21976
            jump soego_s83

        '"Das ist alles, was ich wissen wollte. Leb wohl."':
            # a310 # r21977
            jump soego_dispose


# s89 # say21978
label soego_s89: # from 83.1
    nr '"Akaste ist ein Scheusal. Nur der Schweigende König hält sie in Schach, fürchte ich. Ohne seine Anwesenheit würden die Ghule in den Katakomben Amok laufen."'

    menu:
        '"Erzähl mir was über den Schweigenden König."':
            # a311 # r21979
            $ soegoLogic.r21979_action()
            jump soego_s91

        '"Ich hätte da noch ein paar Fragen…"':
            # a312 # r21980
            jump soego_s83

        '"Das ist alles, was ich wissen wollte. Leb wohl."':
            # a313 # r21981
            jump soego_dispose


# s90 # say21982
label soego_s90: # from 83.2
    nr '"Die Muffige Mary ist eine gute Seele, wenn auch langsam. Ich verstehe nicht viel von dem, was sie sagt, aber sie und die Zombies neigen nicht zu Gewalt."'

    menu:
        '"Ich hätte noch ein paar Fragen…"':
            # a314 # r21983
            jump soego_s83

        '"Das ist alles, was ich wissen wollte. Leb wohl."':
            # a315 # r21984
            jump soego_dispose


# s91 # say21985
label soego_s91: # from 83.3 89.0
    nr '"Ich habe den Schweigenden König nie gesehen. Ich wünschte, ich könnte dir etwas über ihn erzählen, aber ich habe ihn nie gesehen. Vermutlich liegt sein Thronsaal hinter den purpurfarbenen Türen, aber ich erhalte keinen Zutritt… Hargrimm, der Skelettpriester, läßt mich nicht."'

    menu:
        '"Erzähl mir was über Hargrimm."':
            # a316 # r21986
            $ soegoLogic.r21986_action()
            jump soego_s88

        '"Ich hätte da noch ein paar Fragen…"':
            # a317 # r21987
            jump soego_s83

        '"Das ist alles, was ich wissen wollte. Leb wohl."':
            # a318 # r21988
            jump soego_dispose


# s92 # say21989
label soego_s92: # from 83.4
    nr '"Sie sind seit vielen Jahrhunderten hier, glaube ich, und kümmern sich um die, die in ihren Hallen verstorben sind. Solch ein Pflichtbewußtsein ist nicht mehr nötig… es ist beinahe ein Verbrechen."'

    menu:
        '"Ich hätte noch ein paar Fragen…"':
            # a319 # r21990
            jump soego_s83

        '"Das ist alles, was ich wissen wollte. Leb wohl."':
            # a320 # r21991
            jump soego_dispose


# s93 # say21992
label soego_s93: # from 83.5
    nr '"Sie sind seit vielen Jahrhunderten hier, glaube ich, und kümmern sich um die, die in ihren Hallen verstorben sind. Solch ein Pflichtbewußtsein ist nicht mehr nötig… es ist beinahe ein Verbrechen."'

    jump morte_s220  # EXTERN


# s94 # say21993
label soego_s94: # from 82.0 82.1
    nr '"Was? Ist das wahr? Ah, Viele-als-Einer würde dich gewiß für solche Informationen belohnen…"'

    menu:
        '"Viele-als-Einer?"' if soegoLogic.r25248_condition():
            # a321 # r25248
            $ soegoLogic.j25254_s94_r25248_action()
            jump soego_s111

        '"Interessant. Ich hätte da ein paar Fragen…"' if soegoLogic.r25252_condition():
            # a322 # r25252
            $ soegoLogic.j25254_s94_r25252_action()
            jump soego_s83

        '"Vielleicht. Leb wohl."' if soegoLogic.r25253_condition():
            # a323 # r25253
            $ soegoLogic.j25254_s94_r25253_action()
            jump soego_dispose

        '"Gut. Ich hätte ein paar Fragen…"' if soegoLogic.r21994_condition():
            # a324 # r21994
            $ soegoLogic.j21996_s94_r21994_action()
            jump soego_s83

        '"Dann werd ich„s ihm selbst sagen. Leb wohl."' if soegoLogic.r21995_condition():
            # a325 # r21995
            $ soegoLogic.j21996_s94_r21995_action()
            jump soego_dispose


# s95 # say21997
label soego_s95: # - # IF WEIGHT #0 ~  CreatureInArea("AR1500") GlobalGT("Soego_Exposed","GLOBAL",0)
    nr '"Du… Bastard!"'

    menu:
        '"Wa-"':
            # a326 # r21998
            $ soegoLogic.r21998_action()
            jump soego_dispose


# s96 # say22003
label soego_s96: # -
    nr '"Äh… diese Tür führt in meine Privatgemächer. Bitte betrete diese Gemächer nicht."'

    menu:
        'Geh weg.':
            # a327 # r22004
            jump soego_dispose


# s97 # say22005
label soego_s97: # from 82.4
    nr '"Oh! Ich werde gleich mit ihm reden!"'

    menu:
        '"Leb wohl."':
            # a328 # r22006
            jump soego_dispose


# s98 # say22007
label soego_s98: # -
    nr '"Nein, aber ich bin schon unterwegs."'

    menu:
        '"Leb wohl."':
            # a329 # r22008
            jump soego_dispose


# s99 # say22009
label soego_s99: # -
    nr '"Leider nein. Aber vielleicht kommt es irgendwann mal her."'

    menu:
        '"Ich verstehe. Leb wohl."':
            # a330 # r22010
            jump soego_dispose


# s100 # say22011
label soego_s100: # from 82.3
    nr 'Soego hält einen Moment lang inne. "Ich verstehe." Plötzlich beginnt er mit einer überraschenden Umwandlung…'

    menu:
        '"Was zum…?"':
            # a331 # r22012
            $ soegoLogic.r22012_action()
            jump soego_dispose


# s101 # say22014
label soego_s101: # from 73.0
    nr '"Ähm… Dein Gedächtnis ist nicht sehr gut. Mein Hals war verletzt, das schon… verrenkt. Aber gebrochen? Wohl kaum."'

    menu:
        '"Mit Verlaub, das seh ich anders. Was bist du, Soego?"' if soegoLogic.r22015_condition():
            # a332 # r22015
            jump soego_s106

        '"Mit Verlaub, das seh ich anders. Was bist du, Soego?"' if soegoLogic.r22016_condition():
            # a333 # r22016
            jump soego_s103

        '"Bist du nicht wütend?"':
            # a334 # r22018
            jump soego_s74

        '"Du hattest gesagt, daß du ein Missionar bist?"':
            # a335 # r22019
            jump soego_s65

        '"Was machen die Staubmenschen hier?"' if soegoLogic.r22020_condition():
            # a336 # r22020
            jump soego_s66

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a337 # r22022
            jump soego_s71


# s102 # say22023
label soego_s102: # -
    nr 'Er entzieht sich deinem Griff mit übernatürlicher Schnelligkeit. Höhnisch grinsend und ausspuckend zischt er: "Töricht, einen Agenten des geeinten Geistes der Schädelratten anzugreifen!" Unvermittelt setzt bei ihm eine erstaunliche Verwandlung ein…'

    menu:
        '"Was zum…?"':
            # a338 # r22024
            $ soegoLogic.r22024_action()
            jump soego_dispose


# s103 # say22026
label soego_s103: # from 101.1
    nr '"Lächerliche Frage! Du bist auf einer Totenbank aufgewacht, in der Leichenhalle… Das hast du mir selbst gesagt. Sicher konnten meine Wunden nicht schlimmer sein als die, wegen der dich die Sammler für eine Leiche gehalten haben, oder?"'

    menu:
        '"Das stimmt natürlich, aber… ach, egal."':
            # a339 # r22027
            jump soego_s104

        '"Mein Zustand ist… einzigartig."':
            # a340 # r22028
            jump soego_s105

        '"Nein. Irgendwas stimmt hier nicht, und ich werd schon früh genug herausfinden, was es ist."':
            # a341 # r22029
            jump soego_s104


# s104 # say22032
label soego_s104: # from 103.0 103.2 105.0 105.1 106.1 107.0
    nr 'Er zuckt mit den Schultern. "Wie du meinst."'

    menu:
        '"Bist du nicht wütend über das, was geschehen ist?"':
            # a342 # r22033
            jump soego_s74

        '"Du hattest gesagt, daß du ein Missionar bist?"':
            # a343 # r22034
            jump soego_s65

        '"Also was tun die Staubmenschen hier?"' if soegoLogic.r22035_condition():
            # a344 # r22035
            jump soego_s66

        '"Ich werd dann mal gehen. Leb wohl."':
            # a345 # r22038
            jump soego_s71


# s105 # say22039
label soego_s105: # from 103.1
    nr 'Er lächelt. "Jeder ist einzigartig. Jeder. Das willst du doch sicher nicht bestreiten?"'

    menu:
        '"Das stimmt natürlich, aber… ach, egal."':
            # a346 # r22040
            jump soego_s104

        '"Nein. Irgendwas stimmt hier nicht, und ich werd schon früh genug herausfinden, was es ist."':
            # a347 # r22041
            jump soego_s104


# s106 # say22043
label soego_s106: # from 101.0
    nr '"Was ich -? Was für eine Frage ist das?"'

    menu:
        '"Du hast gehört, was ich gesagt habe. Du bist kein gewöhnlicher Staubmensch… also, was *bist* du, Soego?"':
            # a348 # r22044
            jump soego_s107

        '"Ach, vergiß es. Ist nicht wichtig."':
            # a349 # r22045
            jump soego_s104


# s107 # say22047
label soego_s107: # from 106.0
    nr 'Soego sieht dich finster an. "Ich weiß nicht, *was* du meinst."'

    menu:
        '"Irgendwas stimmt hier nicht, und ich werd schon früh genug herausfinden, was es ist."':
            # a350 # r22048
            jump soego_s104


# s108 # say22050
label soego_s108: # - # IF WEIGHT #3 ~  Global("Dustman_Initiation","GLOBAL",5) GlobalLT("Soego","GLOBAL",3) !Global("CR_Vic","GLOBAL",1)
    nr '"Aha, ein weiteres Mitglied der Lebenden. Die meisten, die soweit in die Katakomben vordringen, werden von Ghulen getötet; du hast Glück."'

    menu:
        '"Bist du Soego? Emoric wollte wissen, wo du gewesen bist."' if soegoLogic.r22051_condition():
            # a351 # r22051
            $ soegoLogic.r22051_action()
            jump soego_s109

        '"Soego… Emoric wollte wissen, wo du steckst."' if soegoLogic.r66173_condition():
            # a352 # r66173
            $ soegoLogic.r66173_action()
            jump soego_s109


# s109 # say22053
label soego_s109: # from 82.2 108.0 108.1
    nr '"Ja, das bin ich. Ich leiste hier Missionsarbeit für die Staubmenschen."'

    menu:
        '"In Ordnung. Aber… Ich dachte, ich hätte dir das Genick gebrochen…"' if soegoLogic.r64617_condition():
            # a353 # r64617
            jump soego_s73

        '"Gut. Aber… Ich dachte, ich hätte dich getötet…"' if soegoLogic.r64618_condition():
            # a354 # r64618
            jump soego_s73

        '"Gibt„s hier noch andere Staubmenschen?"':
            # a355 # r22054
            jump soego_s66

        '"Wo bin ich?"':
            # a356 # r50792
            jump soego_s77

        '"Warum werde ich hier festgehalten?"':
            # a357 # r50793
            jump soego_s78

        '"Ich muß jetzt gehen. Leb wohl."':
            # a358 # r22056
            jump soego_s71


# s110 # say22057
label soego_s110: # from 79.0 79.1
    nr '"Ja, das bin ich."'

    menu:
        '"Warte mal… Hab ich dir nicht in der Leichenhalle das Genick gebrochen?"' if soegoLogic.r64625_condition():
            # a359 # r64625
            jump soego_s112

        '"Warte mal… Ich dachte, ich hätte dich in der Leichenhalle getötet…"' if soegoLogic.r64626_condition():
            # a360 # r64626
            jump soego_s112

        '"Gut. Also, wie komme ich zum Schweigenden König?"' if soegoLogic.r22058_condition():
            # a361 # r22058
            $ soegoLogic.j21857_s110_r22058_action()
            jump soego_s80

        '"Gut. Leb wohl."' if soegoLogic.r22060_condition():
            # a362 # r22060
            jump soego_s71


# s111 # say25249
label soego_s111: # from 94.0
    nr '"Ja, das Gehirn des Stocks für die Schädelratten. Geh zu den Katakomben östlich des Weinenden Steins. Von da aus wirst den Weg schon finden."'

    menu:
        '"Interessant. Ich hätte da ein paar Fragen…"':
            # a363 # r25250
            jump soego_s83

        '"Vielleicht. Leb wohl."':
            # a364 # r25251
            jump soego_dispose


# s112 # say64620
label soego_s112: # from 79.2 79.3 110.0 110.1
    nr 'Er winkt ab, als du sprichst. "Nichts, es war nichts für mich. Ich war bereits mit Lykanthropie gesegnet, die Wunden verheilten fast sofort."'

    menu:
        '"Ich… verstehe. Also, wie komme ich zum Schweigenden König?"':
            # a365 # r64621
            jump soego_s80

        '"In Ordnung… dann leb wohl."':
            # a366 # r64622
            jump soego_s71


# s113 # say66709
label soego_s113: # from 38.1
    nr '"Sei gegrüßt…" Der Mann dreht sich zu dir um und macht eine kurze Verbeugung. Plötzlich bemerkst du, daß seine Augen nicht so blutunterlaufen sind, da sie nur eine leichte rötliche Färbung aufweisen. "Ich bin Soego. Womit kann ich dir helfen?"'

    menu:
        '"Ich möchte die Leichenhalle verlassen. Kannt du mir helfen?"':
            # a367 # r66712
            jump soego_s114

        '"Ich hätte da ein paar Fragen…"':
            # a368 # r66713
            jump soego_s114

        '"Ich bin nur zufällig vorbeigekommen. Leb wohl."':
            # a369 # r66714
            jump soego_dispose


# s114 # say66710
label soego_s114: # from 113.0 113.1
    nr 'Mitten in deiner Antwort kommt hinter Soegos Lippen plötzlich eine Reihe dunkler, scharfer Zähne zum Vorschein, und er beugt sich vor und beschnüffelt dich.'

    menu:
        '"Äh… Warum zum Teufel beschnupperst du mich?"':
            # a370 # r66715
            jump soego_s115

        'Brich ihm das Genick, wenn er sich vorbeugt.' if soegoLogic.r66716_condition():
            # a371 # r66716
            jump soego_s22

        'Brich ihm das Genick, wenn er sich vorbeugt.' if soegoLogic.r66717_condition():
            # a372 # r66717
            jump soego_s19

        '"Vergiß es… Leb wohl."':
            # a373 # r66718
            jump soego_s17


# s115 # say66711
label soego_s115: # from 114.0
    nr '"Deine Kleidung,… diese Roben! Sie riechen nach jemand anders. Das sind nicht deine." Soego schließt die Lippen zu einem merkwürdigen Lächeln, und seine Augen glühen beinahe wild. "Wer *bist* du?"'

    menu:
        '"Ich… hab diese Roben nur genommen, damit ich hier in Ruhe verschwinden kann. Ich bin in einem der Vorbereitungsräume oben aufgewacht."':
            # a374 # r66719
            jump soego_s42

        '"Du hast recht. Diese Roben gehören mir nicht, aber wem sie gehör„n, geht dich nichts an."':
            # a375 # r66720
            jump soego_s6

        'Brich ihm das Genick, bevor er um Hilfe rufen kann.' if soegoLogic.r66721_condition():
            # a376 # r66721
            jump soego_s22

        'Brich ihm das Genick, bevor er um Hilfe rufen kann.' if soegoLogic.r66722_condition():
            # a377 # r66722
            jump soego_s19

        '"Das ist unerheblich. Ich gehe jetzt."':
            # a378 # r66723
            jump soego_s17
