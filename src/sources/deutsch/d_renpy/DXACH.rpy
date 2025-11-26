init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.xach_logic import XachLogic
    xachLogic = XachLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DXACH.DLG
# ###


# s0 # say500
label xach_s0: # - # IF ~  True()
    nr 'Du siehst eine männliche Leiche. Auf ihrem Schädel ist die Zahl "331" eingemeißelt. Ihre Augen und Lippen sind zugenäht, und in ihrem Hals klafft ein Loch. Sie riecht *faulig*.'

    menu:
        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"' if xachLogic.r502_condition():
            # a0 # r502
            $ xachLogic.r502_action()
            jump xach_s1

        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"' if xachLogic.r503_condition():
            # a1 # r503
            jump xach_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if xachLogic.r1354_condition():
            # a2 # r1354
            jump xach_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if xachLogic.r1355_condition():
            # a3 # r1355
            jump xach_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."':
            # a4 # r1357
            jump xach_s1

        'Laß die Leiche in Ruhe.':
            # a5 # r1358
            jump xach_dispose


# s1 # say501
label xach_s1: # from 0.0 0.1 0.2 0.4
    nr 'Die Leiche starrt mit ihren erloschenen Augen still geradeaus.'

    menu:
        '"Dann leb wohl."':
            # a6 # r505
            jump xach_dispose


# s2 # say504
label xach_s2: # from 0.3
    nr '"W… w…" Die Stimme des Zombies kehrt langsam zurück. Er klingt sehr beunruhigt. "Wer ist da?! So antworte doch!"'

    menu:
        '"Kannst du mich denn nicht sehen?"':
            # a7 # r507
            jump xach_s3

        'Improvisiere: "Ich bin„s. Erkennst du meine Stimme nicht?"' if xachLogic.r508_condition():
            # a8 # r508
            jump xach_s30

        'Improvisiere: "Ich bin„s. Erkennst du meine Stimme nicht?"' if xachLogic.r63307_condition():
            # a9 # r63307
            jump xach_s30

        '"Wer bist du?"':
            # a10 # r519
            jump xach_s31

        'Xachariah?' if xachLogic.r506_condition():
            # a11 # r506
            jump xach_s4

        '"Du sollst an diesem heutigen Tag keine Antworten erhalten, Leiche. Leb wohl."':
            # a12 # r520
            jump xach_dispose


# s3 # say509
label xach_s3: # from 2.0
    nr '"Blind bin ich, im Tod genauso wie ich es im Leben war… Aber jetzt antworte mir: Wer bist du?"'

    menu:
        'Improvisiere: "Ich bin„s. Erkennst du meine Stimme nicht?"' if xachLogic.r510_condition():
            # a13 # r510
            jump xach_s30

        'Improvisiere: "Ich bin„s. Erkennst du meine Stimme nicht?"' if xachLogic.r63308_condition():
            # a14 # r63308
            jump xach_s30

        '"Wer bist du?"':
            # a15 # r511
            jump xach_s31

        'Xachariah?' if xachLogic.r521_condition():
            # a16 # r521
            jump xach_s4

        '"Du sollst an diesem heutigen Tag keine Antworten erhalten, Leiche. Leb wohl."':
            # a17 # r522
            jump xach_dispose


# s4 # say512
label xach_s4: # from 2.4 3.3 30.0 31.0
    nr '"Was… du hier!" Der Zombie macht einen bestürzten, aber erfreuten Eindruck. "Beim Blick der Dame…" Sein Ton wird fragend. "Bist du nicht *tot*, Schleifer?"'

    menu:
        '"Wer bist du?"':
            # a18 # r515
            jump xach_s5

        '"Was machst du hier?"':
            # a19 # r516
            jump xach_s47

        '"Was ist das für ein Ort?"':
            # a20 # r517
            jump xach_s6

        '"Ich kann nicht lange mit dir reden. Ich muß fort. Leb wohl."' if xachLogic.r518_condition():
            # a21 # r518
            jump xach_s41

        '"Ich kann nicht lange mit dir reden. Ich muß fort. Leb wohl."' if xachLogic.r1394_condition():
            # a22 # r1394
            jump xach_dispose


# s5 # say514
label xach_s5: # from 4.0
    nr '"Ganz schön übel, dieses schmutzige Leichentuch wegzuziehen und darunter den alten Narren Xachariah zu erblicken, was? Ich bin es, Schleifer. Gesegnet seien die Mächte, ich hätte nie gedacht, dich je wiederzusehen… Doch auch du hast dich verändert, wenn meine Ohren mich nicht täuschen… Hast du wieder eine schlechte Wahl getroffen?" Xachariah saugt Luft durch das Loch in seiner Kehle. "Bist du etwa auch tot?"'

    menu:
        '"Das ist eine lange Geschichte… aber nein, tot bin ich nicht."':
            # a23 # r685
            jump xach_s46

        '"Was machst du hier?"':
            # a24 # r686
            jump xach_s47

        '"Was ist das für ein Ort?"':
            # a25 # r687
            jump xach_s6

        '"Ich habe keine Zeit mehr, mit dir zu reden, Xachariah. Leb wohl."' if xachLogic.r688_condition():
            # a26 # r688
            jump xach_s41

        '"Ich habe keine Zeit mehr, mit dir zu reden, Xachariah. Leb wohl."' if xachLogic.r1393_condition():
            # a27 # r1393
            jump xach_dispose


# s6 # say513
label xach_s6: # from 4.2 5.2
    nr '"In der Leichenhalle, Schleifer. Wußtest du das nicht?"'

    menu:
        '"Wie konnte es mit dir denn so weit kommen?"':
            # a28 # r523
            jump xach_s8

        '"Was kannst du mir über die Leichenhalle sagen?"' if xachLogic.r524_condition():
            # a29 # r524
            $ xachLogic.r524_action()
            jump xach_s9

        '"Was kannst du mir über mein vorheriges Leben erzählen?"':
            # a30 # r525
            jump xach_s16

        '"Was kannst du mir von meinen damaligen Gefährten erzählen?"':
            # a31 # r526
            jump xach_s23

        '"Ich muß gehen. Leb wohl."' if xachLogic.r527_condition():
            # a32 # r527
            jump xach_s41

        '"Ich muß gehen. Leb wohl."' if xachLogic.r1392_condition():
            # a33 # r1392
            jump xach_dispose


# s7 # say528
label xach_s7: # from 8.0 9.1 10.2 11.1 12.1 13.0 14.0 15.0 16.2 17.1 18.1 19.3 22.1 23.5 24.2 25.0 26.2 27.4 28.1 29.1 32.1 33.2 35.0 36.1 40.0 46.1 47.1 48.0 49.1
    nr '"Ja?"'

    menu:
        '"Ich wollte diese Sache jetzt zurückholen, Xachariah…"' if xachLogic.r63484_condition():
            # a34 # r63484
            jump xach_s34

        '"Wie konnte es mit dir denn so weit kommen?"':
            # a35 # r637
            jump xach_s8

        '"Was kannst du mir über die Leichenhalle sagen?"':
            # a36 # r638
            jump xach_s9

        '"Was kannst du mir über mein vorheriges Leben erzählen?"':
            # a37 # r639
            jump xach_s16

        '"Was kannst du mir über meine damaligen Gefährten erzählen?"':
            # a38 # r640
            jump xach_s23

        '"Ich muß fort. Leb wohl, Xachariah."' if xachLogic.r1391_condition():
            # a39 # r1391
            jump xach_dispose

        '"Ich muß fort. Leb wohl, Xachariah."' if xachLogic.r641_condition():
            # a40 # r641
            jump xach_s41


# s8 # say529
label xach_s8: # from 6.0 7.1
    nr 'Seine Stimme wird leise, als schäme er sich. "Es ist ein schwieriger Pfad, deinen Schritten zu folgen, und viele schreckliche Dinge habe ich gesehen. Ich habe angefangen zu trinken und wurde halb schwachsinnig von dem Zeug. Einmal war ich so stockbesoffen, daß ich meinen Körper den Staubmenschen versprochen habe. Das Schicksal hat beschlossen, mir noch einen Tritt zu versetzen, als ich am Boden lag, und kurz danach bin ich gestorben."'

    menu:
        '"Ich hätte da noch ein paar Fragen."':
            # a41 # r531
            jump xach_s7

        '"Ich habe jetzt genug gehört. Leb wohl."' if xachLogic.r545_condition():
            # a42 # r545
            jump xach_s41

        '"Ich habe jetzt genug gehört. Leb wohl."' if xachLogic.r1390_condition():
            # a43 # r1390
            jump xach_dispose


# s9 # say533
label xach_s9: # from 6.1 7.2
    nr '"Ein Ort der Toten, der von den Toten verwaltet wird… aber irgend etwas stimmt hier nicht…"'

    menu:
        '"Und was wären das für Fragen?"':
            # a44 # r534
            jump xach_s10

        '"Ich hätte da noch ein paar Fragen…"':
            # a45 # r536
            jump xach_s7

        '"Ich hab keine Zeit mehr, mit dir zu reden. Leb wohl."' if xachLogic.r537_condition():
            # a46 # r537
            jump xach_s41

        '"Ich hab keine Zeit mehr, mit dir zu reden. Leb wohl."' if xachLogic.r1389_condition():
            # a47 # r1389
            jump xach_dispose


# s10 # say535
label xach_s10: # from 9.0
    nr '"Ich erzähl dir das Dunkel: Es gibt einen Zombie, der sich als Zombie ausgibt, aber keiner ist. Eigentlich ist mir egal, warum er das tut, aber merkwürdig ist es schon."'

    menu:
        '"Sonst noch was?"' if xachLogic.r538_condition():
            # a48 # r538
            jump xach_s11

        '"Welcher Zombie ist das?"':
            # a49 # r539
            jump xach_s12

        '"Interessant. Ich hätte da noch ein paar Fragen…"':
            # a50 # r540
            jump xach_s7

        '"Ich hab keine Zeit mehr, mit dir zu reden. Leb wohl."' if xachLogic.r546_condition():
            # a51 # r546
            jump xach_s41

        '"Ich hab keine Zeit mehr, mit dir zu reden. Leb wohl."' if xachLogic.r1388_condition():
            # a52 # r1388
            jump xach_dispose


# s11 # say541
label xach_s11: # from 10.0 12.0
    nr '"Der alte Githzerai… der, der sich um den Vorbereitungsraum kümmert… Dhall. Er hat dich zigmal vor der Einäscherung bewahrt. Du hast Glück, daß er dir freundlich gesonnen ist."'

    menu:
        '"Was genau hat Dhall getan, um mich zu retten?"' if xachLogic.r542_condition():
            # a53 # r542
            jump xach_s13

        '"Ich weiß. Ich hätte da noch ein paar Fragen…"':
            # a54 # r543
            jump xach_s7

        '"Ich hab keine Zeit mehr, mit dir zu reden. Leb wohl."' if xachLogic.r544_condition():
            # a55 # r544
            jump xach_s41

        '"Ich hab keine Zeit mehr, mit dir zu reden. Leb wohl."' if xachLogic.r1387_condition():
            # a56 # r1387
            jump xach_dispose


# s12 # say547
label xach_s12: # from 10.1
    nr '"Selbst wenn ich sie sehen könnte, ich kann mit Zahlen nichts anfangen. So erkennst du ihn, Schleifer: Seine Stimme paßt nicht zu einem Zombie… Er gibt andere Antworten als die anderen."'

    menu:
        '"Ist dir sonst noch irgendwas komisch vorgekommen an der Leichenhalle?"' if xachLogic.r548_condition():
            # a57 # r548
            jump xach_s11

        '"Hmmm. Interessant. Ich hätte da noch ein paar Fragen…"':
            # a58 # r554
            jump xach_s7

        '"Ich werde mich mal nach diesem Zombie umsehen. Leb wohl."' if xachLogic.r549_condition():
            # a59 # r549
            jump xach_s41

        '"Ich werde mich mal nach diesem Zombie umsehen. Leb wohl."' if xachLogic.r1386_condition():
            # a60 # r1386
            jump xach_dispose


# s13 # say550
label xach_s13: # from 11.0
    nr '"Er hat einfach deine Einäscherung verschoben, bis du von der Bahre gesprungen bist. Weiß eigentlich nicht, warum."'

    menu:
        '"Interessant. Ich hätte da noch ein paar Fragen…"':
            # a61 # r552
            jump xach_s7

        '"Ich muß gehen. Leb wohl."' if xachLogic.r553_condition():
            # a62 # r553
            jump xach_s41

        '"Ich muß gehen. Leb wohl."' if xachLogic.r1385_condition():
            # a63 # r1385
            jump xach_dispose


# s14 # say555
label xach_s14: # -
    nr '"Er glaubte, verhindern zu müssen, daß… Ich… ich kann mich nicht mehr genau erinnern, weshalb."'

    menu:
        '"Hmmm. Verdächtig… Ich hätte da noch ein paar Fragen…"':
            # a64 # r557
            jump xach_s7

        '"Ich verstehe. Ich frage mich, ob das wirklich nötig war. Dhall und ich sollten uns mal darüber unterhalten… Leb wohl."' if xachLogic.r556_condition():
            # a65 # r556
            jump xach_s41

        '"Ich verstehe. Ich frage mich, ob das wirklich nötig war. Dhall und ich sollten uns mal darüber unterhalten… Leb wohl."' if xachLogic.r1384_condition():
            # a66 # r1384
            jump xach_dispose


# s15 # say558
label xach_s15: # -
    nr 'Er wird leiser, als schämte er sich. "Als unsere Wege sich trennten, Schleifer, war nicht mehr viel Leben in mir. Es ist nicht leicht, in deine Fußstapfen zu treten, und ich sah viele schreckliche Dinge. Ich begann zu trinken und war schon halb benebelt von dem Zeug. Als ich vollkommen betrunken war, habe ich meinen Körper den Staubies überlassen. Das Schicksal versetzte mir einen Schlag, als ich ohnehin ganz unten war, und kurz darauf starb ich."'

    menu:
        '"Ich hätte da noch ein paar Fragen."':
            # a67 # r559
            jump xach_s7

        '"Ich muß gehen. Leb wohl."' if xachLogic.r560_condition():
            # a68 # r560
            jump xach_s41

        '"Ich muß gehen. Leb wohl."' if xachLogic.r1383_condition():
            # a69 # r1383
            jump xach_dispose


# s16 # say561
label xach_s16: # from 6.2 7.3
    nr '"Weshalb? Hast du dich selbst vergessen?"'

    menu:
        '"Wenn du so willst… ja."':
            # a70 # r562
            jump xach_s17

        '"Nein, ich wollte nur sehen, ob du wirklich der bist, für den du dich ausgibst."':
            # a71 # r563
            jump xach_s20

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a72 # r564
            jump xach_s7

        '"Ich muß gehen. Leb wohl."' if xachLogic.r565_condition():
            # a73 # r565
            jump xach_s41

        '"Ich muß gehen. Leb wohl."' if xachLogic.r1382_condition():
            # a74 # r1382
            jump xach_dispose


# s17 # say566
label xach_s17: # from 16.0 21.0 22.0
    nr '"Du warst eigenartig, immer mißtrauisch und immer nach irgend etwas auf der Suche… Jemand wie du hat sich wohl schon in seinem Leben viele Feinde gemacht. Und wenn sich jemand mit dir angelegte, landete er unweigerlich in den schwarzen Kapiteln des Totenbuches."'

    menu:
        '"Sonst noch was? Irgendwas Genaueres…"':
            # a75 # r569
            jump xach_s18

        '"Ich hätte da noch ein paar Fragen."':
            # a76 # r570
            jump xach_s7

        '"Ich muß gehen. Leb wohl."' if xachLogic.r571_condition():
            # a77 # r571
            jump xach_s41

        '"Ich muß gehen. Leb wohl."' if xachLogic.r1381_condition():
            # a78 # r1381
            jump xach_dispose


# s18 # say567
label xach_s18: # from 17.0
    nr '"Du konntest auch verdammt hart sein… zum Beispiel, als ich diesen Vertrag unterschreiben sollte, oder als du diese jammernde Braut auf Avernus sitzengelassen hast. Wir hatten auch Balor-mäßigen Spaß. Unter deiner Führung spielte keiner von uns je auch nur mit dem Gedanken, von Bord zu gehen, mein Sohn."'

    menu:
        '"Ich… verstehe. Was sonst noch? Alles, was du erzählst, könnte mir helfen."':
            # a79 # r572
            jump xach_s19

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a80 # r573
            jump xach_s7

        '"Ich muß gehen. Leb wohl."' if xachLogic.r574_condition():
            # a81 # r574
            jump xach_s41

        '"Ich muß gehen. Leb wohl."' if xachLogic.r1380_condition():
            # a82 # r1380
            jump xach_dispose


# s19 # say568
label xach_s19: # from 18.0
    nr '"Im Grunde hast du alles, was dir widerfuhr, wie das Erobern von Gebieten im Krieg betrachtet; für dich war alles eine Schlacht, und du warst der rücksichtsloseste Mistkerl, dem ich je begegnet bin. Das einzige, was zählte, war dieses Ziel. Arme Deionarra mit ihrem Schluchzen und Flehen, das dich nicht erweichen konnte, der Gith, der dich vor deinen Strategien gewarnt hat, und der arme Xachariah, der einfach nur durchhalten wollte, als wir auf den Ebenen landeten. Du warst so zäh, als könnte selbst der Tod dir nichts anhaben, aber wir waren doch nur Menschen. Ich glaube, jetzt stecken wir alle im Totenbuch… oder halb drin und halb draußen sozusagen."'

    menu:
        '"Sonst noch was?"' if xachLogic.r63234_condition():
            # a83 # r63234
            jump xach_s32

        'Deionarra?':
            # a84 # r576
            jump xach_s26

        '"Den „Gith“? Wen meinst du?"':
            # a85 # r577
            jump xach_s24

        '"Ich hätte da noch ein paar Fragen."':
            # a86 # r578
            jump xach_s7

        '"Ich verstehe… Ich muß jetzt gehen. Leb wohl, Xachariah."' if xachLogic.r579_condition():
            # a87 # r579
            jump xach_s41

        '"Ich verstehe… Ich muß jetzt gehen. Leb wohl, Xachariah."' if xachLogic.r1379_condition():
            # a88 # r1379
            jump xach_dispose


# s20 # say580
label xach_s20: # from 16.1
    nr '"Wie kann ich dir beweisen, daß ich es bin… An alles kann ich mich nicht erinnern, aber warte: Wie wäre es denn damit… Weißt du noch, als wir unseren Weg durch Avernus bahnten und auf diesen Haufen Abishai in dieser madenverseuchten Grube stießen?"'

    menu:
        'Lüge: "Ja."':
            # a89 # r581
            jump xach_s21

        '"Nein."':
            # a90 # r582
            jump xach_s22


# s21 # say583
label xach_s21: # from 20.0
    nr '"Freut mich sehr, daß sich wenigstens einer von uns daran erinnert, denn ich tue es nicht, das ist so sicher wie Balor. Wer bist du, Schleifer, und was versprichst du dir davon, in den Erinnerungen toter Menschen herumzustöbern?"'

    menu:
        '"Ich will mich selbst finden. Ich habe wirklich vergessen, wer ich bin, Xachariah, und ich glaube, daß du mich gekannt hast. Was kannst du mir über mein vorheriges Leben erzählen?"':
            # a91 # r584
            jump xach_s17

        '"Vergiß es einfach. Ich hätte ein paar Fragen."':
            # a92 # r586
            jump xach_dispose

        '"Nichts… ich muß fort. Leb wohl, Xachariah."' if xachLogic.r587_condition():
            # a93 # r587
            jump xach_s41

        '"Nichts… ich muß fort. Leb wohl, Xachariah."' if xachLogic.r1378_condition():
            # a94 # r1378
            jump xach_dispose


# s22 # say588
label xach_s22: # from 20.1
    nr '"Hmmm. Na gut, vielleicht war es auch anders. Versuchen wir„s mal damit: Weißt du noch, als Deionarra bei dem Versuch, dich von Verdammnis fernzuhalten, um ein Haar im Totenbuch gelandet wäre?"'

    menu:
        '"Nein… nicht wirklich. Aber das ist in Ordnung. Ich glaube, du hast mich gekannt. Kannst du mir also etwas über mein vorheriges Leben erzählen?"':
            # a95 # r590
            jump xach_s17

        '"Macht nichts… Ich hätte da noch ein paar Fragen."':
            # a96 # r591
            jump xach_s7

        '"Ich muß fort. Leb wohl, Xachariah."' if xachLogic.r592_condition():
            # a97 # r592
            jump xach_s41

        '"Ich muß fort. Leb wohl, Xachariah."' if xachLogic.r1377_condition():
            # a98 # r1377
            jump xach_dispose


# s23 # say589
label xach_s23: # from 6.3 7.4
    nr '"Ein bunter Haufen waren wir… ein Halbtoter, dessen Versuche, ins Totenbuch zu gelangen, alle scheiterten (er war so häßlich, daß nicht einmal die Mächte des Todes ihn wollten), eine jammernde Anwaltstochter, ein Gith im Exil, ein wippender Totenschädel mit der Zunge eines Schakals und ein halb betrunkener blinder Bogenschütze wie ich."'

    menu:
        'Gith?':
            # a99 # r593
            jump xach_s24

        '"Wimmernde Anwaltstochter?"':
            # a100 # r594
            jump xach_s26

        '"Ein schwebender Totenschädel?"':
            # a101 # r595
            jump xach_s28

        '"Du warst ein blinder Bogenschütze?"':
            # a102 # r596
            jump xach_s49

        '"Weißt du, was mit meinem Journal passiert ist?"':
            # a103 # r597
            jump xach_s29

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a104 # r598
            jump xach_s7

        '"Ich muß gehen. Leb wohl, Xachariah."' if xachLogic.r599_condition():
            # a105 # r599
            jump xach_s41

        '"Ich muß gehen. Leb wohl, Xachariah."' if xachLogic.r1376_condition():
            # a106 # r1376
            jump xach_dispose


# s24 # say600
label xach_s24: # from 19.2 23.0 27.0
    nr '"Ein finster dreinblickender Gith… unfreundlich und schweigsam, wie alle anderen auch. Ich habe ihm kein Stück über den Weg getraut. Weißt du, Schleifer, diese spindeldürren Giths haben nur zwei Dinge im Kopf: Sich von der Sklaverei fernzuhalten und die tintenfischköpfigen Illithids zu töten. Alles andere war zweitrangig, abgesehen von dir kümmerte er sich nicht die Bohne um uns."'

    menu:
        '"Warum das?"' if xachLogic.r601_condition():
            # a107 # r601
            jump xach_s25

        '"Zu einigen meiner anderen Gefährten…"':
            # a108 # r602
            jump xach_s27

        '"Ich hätte da noch ein paar Fragen."':
            # a109 # r603
            jump xach_s7

        '"Hmmm. Interessant. Danke, Xachariah."' if xachLogic.r604_condition():
            # a110 # r604
            jump xach_s41

        '"Hmmm. Interessant. Danke, Xachariah."' if xachLogic.r1375_condition():
            # a111 # r1375
            jump xach_dispose


# s25 # say605
label xach_s25: # from 24.0 26.0
    nr '"Eines der Dunkel, die ich nie lüften konnte, Schleifer. Vielleicht hilfst du mir auf die Sprünge?"'

    menu:
        '"Ich weiß es selbst nicht. Ich hätte da noch ein paar Fragen…"':
            # a112 # r606
            jump xach_s7

        '"Vielleicht sollte ich das lieber herausfinden. Leb wohl, Xachariah."' if xachLogic.r607_condition():
            # a113 # r607
            jump xach_s41

        '"Vielleicht sollte ich das lieber herausfinden. Leb wohl, Xachariah."' if xachLogic.r1374_condition():
            # a114 # r1374
            jump xach_dispose


# s26 # say608
label xach_s26: # from 19.1 23.1 27.1
    nr '"Diese halbwüchsige Möchtegern-Kämpferin schwor, sie würde dir nach Baator und zurück folgen, und, bei den Mächten, der Gedanke, ihr könntet voneinander getrennt sein, machte sie so fertig, daß sie ihren Schwur hielt. Ich oder der Gith waren ihr so was von egal. Ihr Herz schlug nur für dich, ein Beweis dafür, wie bescheuert sie war. Ich hab„ ja keine Ahnung, was die Weiber in deinem Narbengesicht sehen, aber irgendwas bringt ihr Blut in Wallung. Sie war so “ne reiche Göre aus dem Bezirk der Kuratoren, und du brauchtest etwas von ihr, und der einzige Preis dafür war, daß sie mit dir kommen durfte."'

    menu:
        '"Was wollte ich denn von ihr?"' if xachLogic.r609_condition():
            # a115 # r609
            jump xach_s25

        '"Zu einigen meiner anderen Gefährten…"':
            # a116 # r610
            jump xach_s27

        '"Ich hätte da noch ein paar Fragen."':
            # a117 # r614
            jump xach_s7

        '"Ich habe jetzt genug gehört. Leb wohl, Xachariah."' if xachLogic.r611_condition():
            # a118 # r611
            jump xach_s41

        '"Ich habe jetzt genug gehört. Leb wohl, Xachariah."' if xachLogic.r1373_condition():
            # a119 # r1373
            jump xach_dispose


# s27 # say612
label xach_s27: # from 24.1 26.1 28.0 29.0 33.1 49.0
    nr '"Welcher?"'

    menu:
        '"Der Gith."':
            # a120 # r613
            jump xach_s24

        '"Die „wimmernde Anwaltstochter“."':
            # a121 # r615
            jump xach_s26

        '"Der schwebende Totenschädel."':
            # a122 # r616
            jump xach_s28

        '"Du… warst ein… blinder Bogenschütze?"':
            # a123 # r617
            jump xach_s49

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a124 # r618
            jump xach_s7

        '"Ich habe jetzt genug gehört. Leb wohl, Xachariah."' if xachLogic.r619_condition():
            # a125 # r619
            jump xach_s41

        '"Ich habe jetzt genug gehört. Leb wohl, Xachariah."' if xachLogic.r1372_condition():
            # a126 # r1372
            jump xach_dispose


# s28 # say620
label xach_s28: # from 23.2 27.2
    nr '"Ach was, dieser Totenschädel mit seinem dreckigen Geschwätz hat doch geradezu danach geschrien, verprügelt zu werden! Er hat doch nur rumgeprahlt und sich über meinen Zustand lustig gemacht!"'

    menu:
        '"Zu einigen meiner anderen Gefährten…"':
            # a127 # r622
            jump xach_s27

        '"Ich hätte da noch ein paar Fragen."':
            # a128 # r623
            jump xach_s7

        '"Ich habe jetzt genug gehört. Leb wohl, Xachariah."' if xachLogic.r624_condition():
            # a129 # r624
            jump xach_s41

        '"Ich habe jetzt genug gehört. Leb wohl, Xachariah."' if xachLogic.r1371_condition():
            # a130 # r1371
            jump xach_dispose


# s29 # say625
label xach_s29: # from 23.4
    nr '"Dieses Album, das du dir aus deinem eigenen Fleisch zusammengenäht hast und das mehr Seiten zählte als ich Lebensjahre?! Was für ein Glück, wenn du dieses verteufelte Buch wirklich verloren hast! Du hast doch ständig irgendwas hinein gekritzelt, und es stank zum Himmel. Du schienst ständig Angst zu haben, jemand könnte es dir plötzlich wegnehmen… Du hast geschrieben, bis sich die Haut von deinen Fingern löste. Ich fragte mich, ob du den Inhalt deiner ganzen Rübe durch diesen Stift aufs Papier bringen wolltest. Durch deine Schreiberei hast du uns manchmal tagelang aufgehalten. Was habe ich dieses verdammte Buch gehaßt. Es schien dein Herz im Griff zu haben, und es war gewiß kein sanfter Griff. Das letzte Mal, das ich es gesehen habe, Schleifer, war es in deinem Besitz. Wenn„s nicht bei dir ist, hab ich keine Ahnung, wo auf den Ebenen es sein könnte."'

    menu:
        '"Um nochmal auf meine Gefährten zurückzukommen…"':
            # a131 # r626
            jump xach_s27

        '"Ich hätte da noch ein paar Fragen."':
            # a132 # r627
            jump xach_s7

        '"Danke für die Auskunft. Leb wohl, Xachariah."' if xachLogic.r628_condition():
            # a133 # r628
            jump xach_s41

        '"Danke für die Auskunft. Leb wohl, Xachariah."' if xachLogic.r1370_condition():
            # a134 # r1370
            jump xach_dispose


# s30 # say629
label xach_s30: # from 2.1 2.2 3.0 3.1
    nr '"Kommt mir irgendwie bekannt vor… Aber wenn du der bist, für den ich dich halte, dann… wer…" Der Zombie ist einen Augenblick lang still. "Wer bin ich?"'

    menu:
        'Xachariah?' if xachLogic.r631_condition():
            # a135 # r631
            jump xach_s4

        '"Dein Name ist mir nicht bekannt. Vielleicht komme ich wieder, wenn er mir einfällt. Leb wohl."' if xachLogic.r632_condition():
            # a136 # r632
            jump xach_dispose


# s31 # say630
label xach_s31: # from 2.3 3.2
    nr '"Ich…" Der Zombie schweigt. "… mein Name… ist mir entfallen. Ich… ich weiß nicht mehr, wer ich bin."'

    menu:
        'Xachariah?' if xachLogic.r634_condition():
            # a137 # r634
            jump xach_s4

        '"Ich kenne deinen Namen nicht. Vielleicht komme ich wieder, wenn ich ihn weiß. Leb wohl."' if xachLogic.r635_condition():
            # a138 # r635
            jump xach_dispose

        '"Leb wohl."' if xachLogic.r636_condition():
            # a139 # r636
            jump xach_dispose


# s32 # say642
label xach_s32: # from 19.0
    nr '"Du hast etwas vergessen, als du fortgingst, Schleifer… Du hast Deionarra mit ihrem Kummer, Dak„kon ohne Meister und den Schädel ohne Freund zurückgelassen. Und ich? Du hast mir etwas so tief in die Brust gebohrt, daß es für den Rest meines Lebens dort blieb. Ließ mir fast das Blut gefrieren, wie ein kalter Bleiklumpen steckte mir das Ding in der Brust."'

    menu:
        '"Was ist es?"':
            # a140 # r645
            $ xachLogic.r645_action()
            jump xach_s33

        '"Ich hätte da noch ein paar Fragen."':
            # a141 # r646
            jump xach_s7

        '"Ich muß fort. Leb wohl, Xachariah."' if xachLogic.r648_condition():
            # a142 # r648
            jump xach_s41

        '"Ich muß fort. Leb wohl, Xachariah."' if xachLogic.r1369_condition():
            # a143 # r1369
            jump xach_dispose


# s33 # say643
label xach_s33: # from 32.0
    nr '"Ich… Ich weiß es nicht. Aber es hat mich irgendwie verändert. Hat mich innen drin verändert. Ich lag sowieso im Sterben, als du es in meine Brust gebohrt hast, deshalb war es mir in dem Moment ziemlich egal."'

    menu:
        '"Kann ich ihn zurückbekommen?"':
            # a144 # r649
            jump xach_s34

        '"Zu meinen anderen Gefährten…"':
            # a145 # r650
            jump xach_s27

        '"Ich hätte da noch ein paar Fragen."':
            # a146 # r651
            jump xach_s7

        '"Ich muß fort. Leb wohl, Xachariah."' if xachLogic.r652_condition():
            # a147 # r652
            jump xach_s41

        '"Ich muß fort. Leb wohl, Xachariah."' if xachLogic.r1368_condition():
            # a148 # r1368
            jump xach_dispose


# s34 # say644
label xach_s34: # from 7.0 33.0
    nr '"Er sitzt ganz schön tief. Ohne ein Skalpell und ohne meine Anweisungen wirst du ihn nie herauskriegen. Hast du ein Skalpell?"'

    menu:
        '"Ja."' if xachLogic.r647_condition():
            # a149 # r647
            jump xach_s36

        '"Nein… Aber ich sollte einfach die Fäden ziehen können."' if xachLogic.r653_condition():
            # a150 # r653
            jump xach_s36


# s35 # say654
label xach_s35: # -
    nr '"Dann komm am besten wieder, wenn du dir eines besorgt hast, damit wir das Ding rausholen können."'

    menu:
        '"Ich hätte da noch ein paar Fragen."':
            # a151 # r655
            jump xach_s7

        '"Ich werde mich mal danach umsehen. Leb wohl, Xachariah."':
            # a152 # r656
            jump xach_dispose


# s36 # say657
label xach_s36: # from 34.0 34.1
    nr '"Setz die Klinge fünf Zentimeter unter dem Brustbein an und taste nach ihm."'

    menu:
        'Tu das.':
            # a153 # r658
            jump xach_s37

        '"Macht nichts, Xachariah… Ich würde dir statt dessen aber gern ein paar Fragen stellen…"':
            # a154 # r659
            jump xach_s7

        '"Das kann ich jetzt nicht, ich muß fort. Leb wohl, Xachariah."' if xachLogic.r660_condition():
            # a155 # r660
            jump xach_s41

        '"Das kann ich jetzt nicht, ich muß fort. Leb wohl, Xachariah."' if xachLogic.r1367_condition():
            # a156 # r1367
            jump xach_dispose


# s37 # say661
label xach_s37: # from 36.0
    nr '"Etwas weiter links… noch etwas weiter…" Deine Hand umschließt einen Gegenstand.'

    menu:
        'Zieh es raus.':
            # a157 # r663
            $ xachLogic.r663_action()
            jump xach_s38


# s38 # say662
label xach_s38: # from 37.0
    nr 'Du ziehst eine Zombieleber heraus. "Beim Blick der Dame! Tut mir leid, Schleifer… Ich dachte, die Staubmenschen hätten uns alle Organe bereits entnommen, bevor sie uns aus dem Totenbuch holten. Los, versuch„s noch einmal. Vielleicht weiter rechts."'

    menu:
        'Tu„s noch einmal.':
            # a158 # r664
            jump xach_s39


# s39 # say665
label xach_s39: # from 38.0
    nr '"Gut… jetzt etwas nach rechts und nach hinten… noch etwas weiter…" Du spürst etwas Hartes und Kaltes, das etwas größer ist, als du erwartet hast. "Ich glaube, das ist er. Hol ihn raus."'

    menu:
        'Zieh es raus.':
            # a159 # r666
            $ xachLogic.r666_action()
            jump xach_s40


# s40 # say667
label xach_s40: # from 39.0
    nr 'Du hältst ein schwärzliches, faustgroßes Objekt in der Hand, das für seine Größe äußerst schwer ist. "Das ist es. Hmm. Größer als ich dacht. Ist das… Was ist das? Sieht aus wie… ein Herz."'

    menu:
        '"Ja, ich glaube schon. Danke, Xachariah. Ich hätte da noch ein paar Fragen…"':
            # a160 # r668
            jump xach_s7

        '"Sieht so aus. Ich muß jetzt gehen. Leb wohl, Xachariah."' if xachLogic.r669_condition():
            # a161 # r669
            jump xach_s41

        '"Sieht so aus. Ich muß jetzt gehen. Leb wohl, Xachariah."' if xachLogic.r1366_condition():
            # a162 # r1366
            jump xach_dispose


# s41 # say670
label xach_s41: # from 4.3 5.3 6.4 7.6 8.1 9.2 10.3 11.2 12.2 13.1 14.1 15.1 16.3 17.2 18.2 19.4 21.2 22.2 23.6 24.3 25.1 26.3 27.5 28.2 29.2 32.2 33.3 36.2 40.1 46.2 47.2 48.1 49.2
    nr '"Bevor du gehst, mußt du mir noch einen kleinen Gefallen tun, Schleifer."'

    menu:
        '"Was ist es?"':
            # a163 # r672
            $ xachLogic.r672_action()
            jump xach_s42

        '"Ich habe schon genügend Gefallen und Aufgaben, daß es erst mal für eine Weile reicht… Ich muß jetzt gehen, Xachariah. Leb wohl."':
            # a164 # r671
            $ xachLogic.r671_action()
            jump xach_s45


# s42 # say673
label xach_s42: # from 41.0
    nr 'Er wird leiser, als schämte er sich. "Ich habe Fehler gemacht, sogar ein paar ganz dumme Fehler. Der schlimmste war, daß ich diesen Staubmenschen-Vertrag unterschrieben habe. Hätte ich nicht so viel Fusel intus gehabt, hätte ich das nie und nimmer getan. Ich bereue es und habe gehofft, du könntest das in Ordnung bringen."'

    menu:
        '"Wie?"':
            # a165 # r675
            jump xach_s43

        '"Ich habe schon genügend Gefallen und Aufgaben, daß es erst mal für eine Weile reicht… Ich muß jetzt gehen, Xachariah. Leb wohl."':
            # a166 # r676
            jump xach_s45


# s43 # say677
label xach_s43: # from 42.0
    nr '"Diese Leiche wird sich lange halten, glaub ich… und mir kommt schon ein einziger Tag zu lang vor. Könntest du mich vielleicht noch einmal ausnehmen, Schleifer… um der alten Zeiten willen? Bei dem Gedanken, mich noch ein paar Jahre mit diesen Milchgesichtern hier in der Leichenhalle herumschlagen zu müssen, läuft es mir eiskalt den Rücken runter. Kannst du dafür sorgen, daß ich zurück ins Totenbuch komme, wo ich hingehöre?"'

    menu:
        '"Wenn du das möchtest…"':
            # a167 # r679
            $ xachLogic.r679_action()
            jump xach_s44

        '"Xachariah, ich werde dich nicht töten. Nicht noch einmal. Leb wohl."':
            # a168 # r680
            jump xach_s45


# s44 # say678
label xach_s44: # from 43.0
    nr 'Du nimmst ihn aus, und Xachariah fällt mit einem dumpfen Geräusch zu Boden. Du hörst ein leichtes Zischen und siehst, wie der Brustkorb sich noch einmal hebt, bevor die Leiche ein letztes Rasseln von sich gibt.'

    menu:
        '"Ruhe in Frieden, Xachariah."':
            # a169 # r681
            $ xachLogic.r681_action()
            jump xach_dispose


# s45 # say682
label xach_s45: # from 41.1 42.1 43.1
    nr '"Schon gut. Jetzt brauchst du mich ja wohl nicht mehr."'

    menu:
        'Geh.':
            # a170 # r684
            jump xach_dispose


# s46 # say683
label xach_s46: # from 5.0
    nr '"Hm, die Tatsache, daß du tot bist, Schleifer, würde wohl niemand anzweifeln. Aber wie kommt es, daß du mit mir sprichst? Deine Stimme ist kristallklar…"'

    menu:
        '"Was machst du hier?"':
            # a171 # r689
            jump xach_s47

        '"Ich hätte da ein paar Fragen…"':
            # a172 # r690
            jump xach_s7

        '"Ich muß fort. Leb wohl, Xachariah."' if xachLogic.r691_condition():
            # a173 # r691
            jump xach_s41

        '"Ich muß fort. Leb wohl, Xachariah."' if xachLogic.r1365_condition():
            # a174 # r1365
            jump xach_dispose


# s47 # say692
label xach_s47: # from 4.1 5.1 46.0
    nr '"Ich bin ein Müllkutscher am leblosesten aller Orte. Ich wünschte, ich könnte die Ewige Grenze überschreiten und eine Ebene mein Heim nennen, doch von meiner Seele wurde viel verschwendet, und jetzt bin ich hier."'

    menu:
        '"Wie ist das denn eigentlich, so als Zombie?"':
            # a175 # r693
            jump xach_s48

        '"Ich hätte da ein paar Fragen…"':
            # a176 # r695
            jump xach_s7

        '"Ich muß fort. Leb wohl, Xachariah."' if xachLogic.r696_condition():
            # a177 # r696
            jump xach_s41

        '"Ich muß fort. Leb wohl, Xachariah."' if xachLogic.r1364_condition():
            # a178 # r1364
            jump xach_dispose


# s48 # say694
label xach_s48: # from 47.0
    nr '"Das ist ehrliche Arbeit… Die Naht an Xachariahs Mund löst sich, und seine Lippen zeigen etwas, was an ein Lächeln erinnerte. "…Es interessiert mich kaum.""'

    menu:
        '"Ich hätte da noch ein paar Fragen."':
            # a179 # r697
            jump xach_s7

        '"Dann leb wohl, Xachariah."' if xachLogic.r698_condition():
            # a180 # r698
            $ xachLogic.r698_action()
            jump xach_s41

        '"Dann leb wohl, Xachariah."' if xachLogic.r633_condition():
            # a181 # r633
            jump xach_dispose


# s49 # say63625
label xach_s49: # from 23.3 27.3
    nr '"Das war ich. Du hast es wirklich vergessen, nicht wahr? Alle Menschen sehen mit mehr als mit ihren Augen, Schleifer… manche besser als andere. Ich spürte die Herzen meiner Feinde - *deiner* Feinde - und meine Pfeile trafen immer ins Schwarze. Ach, das waren noch Zeiten…"'

    menu:
        '"Zu einigen meiner anderen Gefährten…"':
            # a182 # r63626
            jump xach_s27

        '"Ich hätte da noch ein paar Fragen."':
            # a183 # r63627
            jump xach_s7

        '"Hmmm. Interessant. Danke, Xachariah."' if xachLogic.r63628_condition():
            # a184 # r63628
            jump xach_s41

        '"Hmmm. Interessant. Danke, Xachariah."' if xachLogic.r63629_condition():
            # a185 # r63629
            jump xach_dispose
