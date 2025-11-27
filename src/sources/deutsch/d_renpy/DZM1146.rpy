init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1146_logic import Zm1146Logic
    zm1146Logic = Zm1146Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1146.DLG
# ###


# s0 # say6518
label zm1146_s0: # - # IF ~  Global("Crispy","GLOBAL",0)
    nr 'Die Nummer "1146" ist in die Stirn dieser wandelnden Leiche geritzt, und ihre Lippen sind mit grobem, schwarzem Zwirn zugenäht. Der gesamte Körper ist mit schrecklichen Narben übersät - schlimmer noch als deine eigenen - so als ob sein Besitzer verbrannt wäre. Nase, Ohren und mehrere Finger sowie Zehen fehlen, wahrscheinlich sind sie in einer verheerenden Feuersbrunst verbrannt. Als du der Leiche den Weg versperrst, um ihre „Aufmerksamkeit“ zu erregen, bleibt sie stehen und starrt dich mit leeren Augen an.{#zm1146_s0_}'

    menu:
        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"{#zm1146_s0_r6521}' if zm1146Logic.r6521_condition():
            # a0 # r6521
            $ zm1146Logic.r6521_action()
            jump zm1146_s1

        '"Na… irgendwas Interessantes passiert?"{#zm1146_s0_r6522}' if zm1146Logic.r6522_condition():
            # a1 # r6522
            jump zm1146_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm1146_s0_r6523}' if zm1146Logic.r6523_condition():
            # a2 # r6523
            jump zm1146_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm1146_s0_r6524}' if zm1146Logic.r6524_condition():
            # a3 # r6524
            $ zm1146Logic.r6524_action()
            jump zm1146_s2

        '"Es war nett, sich mit dir zu unterhalten. Leb wohl."{#zm1146_s0_r6525}':
            # a4 # r6525
            jump zm1146_dispose

        'Laß die Leiche in Ruhe.{#zm1146_s0_r6526}':
            # a5 # r6526
            jump zm1146_dispose


# s1 # say6519
label zm1146_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zm1146_s1_}'

    menu:
        'Laß die Leiche in Ruhe.{#zm1146_s1_r6527}':
            # a6 # r6527
            jump zm1146_dispose


# s2 # say6520
label zm1146_s2: # from 0.3
    nr 'Der Geruch von rauchendem Schwefel, versengtem Haar und verbranntem Blut schlägt dir entgegen, als der Geist in seine frühere menschliche Hülle zurückkehrt. Die Leiche bricht plötzlich zusammen, zuckt heftig und verkrampft, während sie jämmerlich stöhnt. Du kannst fast sehen, wie kleine, übelriechende Rauchwolken aus ihrem Körper und den Gliedmaßen herausquellen.{#zm1146_s2_}'

    menu:
        '"Bist du… OK?"{#zm1146_s2_r6528}':
            # a7 # r6528
            jump zm1146_s3

        '"Ich hätte da „n paar Fragen an dich…"{#zm1146_s2_r9413}':
            # a8 # r9413
            jump zm1146_s9

        'Laß den brennenden Geist in Ruhe.{#zm1146_s2_r9414}':
            # a9 # r9414
            jump zm1146_dispose


# s3 # say9398
label zm1146_s3: # from 2.0
    nr 'Der Geist öffnet ein Auge. Der weiße Augapfel hebt sich deutlich von der grauen Farbe seines runzligen Gesichts ab. Langsam dreht er den Kopf, bis er zu dir aufblicken kann; seine unregelmäßige, narbige Haut spannt sich über die Knochen seines Gesichts und seines Genicks. Dann krächzt er: "Nein. Nein… überhaupt nicht, du… verdammter… Hohlkopf."{#zm1146_s3_}'

    menu:
        '"Kann ich dir irgendwie helfen?"{#zm1146_s3_r9415}':
            # a10 # r9415
            $ zm1146Logic.r9415_action()
            jump zm1146_s4

        '"Ich hätte eine Frage…"{#zm1146_s3_r9416}':
            # a11 # r9416
            jump zm1146_s9

        '"Auch gut, du stinkende, schwelende Heiserkeit. Du hast dies Schicksal gewiß verdient. Leb wohl."{#zm1146_s3_r9417}':
            # a12 # r9417
            jump zm1146_s6

        'Verlaß den gequälten Geist.{#zm1146_s3_r9418}':
            # a13 # r9418
            jump zm1146_dispose


# s4 # say9399
label zm1146_s4: # from 3.0
    nr '"Ha, ha, HA!" Der Geist fängt an zu lachen, doch dann wird er plötzlich von einem Hustenanfall geschüttelt und speit einen Schwall Balsamierungsöl und schwarzen Schmodder aus. Er hustet und röchelt schmerzerfüllt und hält nur manchmal inne, um durch seine ausgefransten Lippen eine gelbliche Flüssigkeit und die Fäden seiner geplatzten Nähte auszuspucken.{#zm1146_s4_}'

    menu:
        'Warte geduldig bis der Anfall vorüber ist.{#zm1146_s4_r9419}':
            # a14 # r9419
            jump zm1146_s5

        '"Ich hätte noch eine Frage…"{#zm1146_s4_r9421}':
            # a15 # r9421
            jump zm1146_s9

        'Überlaß den gequälten Geist seinen Leiden.{#zm1146_s4_r9422}':
            # a16 # r9422
            jump zm1146_dispose


# s5 # say9400
label zm1146_s5: # from 4.0
    nr 'Der schreckliche Hustenanfall läßt langsam nach. "Nein, Dussel… das geht… nicht. Ich bin am… am Ende… es sei denn… es sei denn, du gehst nach Baator und rettest mich. Zeit für… für meine Buße." Der Geist schließt sein Auge wieder und läßt seinen Kopf auf den Boden sinken.{#zm1146_s5_}'

    menu:
        '"Ich verstehe. Ich hätte noch eine andere Frage…"{#zm1146_s5_r9423}':
            # a17 # r9423
            jump zm1146_s9

        '"Also gut. Leb wohl."{#zm1146_s5_r9424}':
            # a18 # r9424
            jump zm1146_dispose


# s6 # say9401
label zm1146_s6: # from 3.2 17.0
    nr 'Der Geist gibt ein röchelndes Geräusch von sich. Dabei geben die schwarzen, rissigen Lippen den Blick auf seine schiefen, gelben Zähne frei. "Warte… warte nur, bis ich… aus diesem Loch rauskomme… Dann bist du als erster dran… Dussel…"{#zm1146_s6_}'

    menu:
        '"Wie du meinst. Ich fürchte mich nicht vor deinesgleichen."{#zm1146_s6_r9425}':
            # a19 # r9425
            jump zm1146_s7

        'Schlag ihn.{#zm1146_s6_r9426}':
            # a20 # r9426
            $ zm1146Logic.r9426_action()
            jump zm1146_s8

        'Ignoriere den armen Tropf, dreh dich weg und geh.{#zm1146_s6_r9427}':
            # a21 # r9427
            jump zm1146_dispose


# s7 # say9402
label zm1146_s7: # from 6.0
    nr 'Der Geist gibt ein schwaches, kehliges Knurren von sich und spuckt dich an - das faulige Zeug landet nur wenige Zentimeter vor deinen Füßen. Erschöpft sinkt er wieder zu Boden, und das Leben beginnt erneut aus seinem Körper zu weichen.{#zm1146_s7_}'

    jump zm1146_dispose


# s8 # say9403
label zm1146_s8: # from 6.1
    nr 'Du versetzt der Leiche einen kurzen Tritt in die Nieren, jedoch ohne Erfolg; der Geist darin scheint unversehrt zu bleiben. "Hi, hi, hi," gluckst der Geist, bevor er endgültig aus dem Körper weicht. Du bleibst mit einem vagen Gefühl der Enttäuschung zurück.{#zm1146_s8_}'

    jump zm1146_dispose


# s9 # say9404
label zm1146_s9: # from 2.1 3.1 4.1 5.0 10.0 11.0 12.1 13.1 14.1 15.0 16.0 17.1 18.1 19.0 20.0
    nr '"Was… was könntest du *denn* jetzt noch von mir wollen, Dussel?" Der Geist windet sich noch gelegentlich und klopft sich ab, als versuche er, mehrere kleine Flammen auf seinem Körper zu löschen.{#zm1146_s9_}'

    menu:
        '"Wer bist du?"{#zm1146_s9_r9428}':
            # a22 # r9428
            jump zm1146_s10

        '"Wo kommst du her?"{#zm1146_s9_r9429}':
            # a23 # r9429
            jump zm1146_s11

        '"Wie bist du denn hier gelandet? Als Zombie, meine ich?"{#zm1146_s9_r9430}':
            # a24 # r9430
            jump zm1146_s12

        '"Wo bist du… wo wohnt dein Geist… jetzt?"{#zm1146_s9_r9431}':
            # a25 # r9431
            jump zm1146_s13

        '"Was hast du getan, um solche Qualen zu verdienen?"{#zm1146_s9_r9432}':
            # a26 # r9432
            jump zm1146_s14

        '"Was weißt du über diesen Ort?"{#zm1146_s9_r9433}':
            # a27 # r9433
            jump zm1146_s15

        '"Kennst du jemanden mit dem Namen Pharod?"{#zm1146_s9_r9434}' if zm1146Logic.r9434_condition():
            # a28 # r9434
            jump zm1146_s16

        '"Ach nichts, ist schon gut."{#zm1146_s9_r9435}':
            # a29 # r9435
            jump zm1146_dispose


# s10 # say9405
label zm1146_s10: # from 9.0
    nr '"Geht dich nichts an… laß mich… in Ruhe…"{#zm1146_s10_}'

    menu:
        '"Nein. Ich hätte da noch eine andere Frage…"{#zm1146_s10_r9436}':
            # a30 # r9436
            jump zm1146_s9

        '"Dann leb wohl."{#zm1146_s10_r9437}':
            # a31 # r9437
            jump zm1146_dispose


# s11 # say9406
label zm1146_s11: # from 9.1
    nr '"Was? Im Namen der Mächte, wen… interessiert„s? Aus Sigil, du… du Nervtöter."{#zm1146_s11_}'

    menu:
        '"Ich hätte noch eine Frage…"{#zm1146_s11_r9438}':
            # a32 # r9438
            jump zm1146_s9

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."{#zm1146_s11_r9439}':
            # a33 # r9439
            jump zm1146_dispose


# s12 # say9407
label zm1146_s12: # from 9.2
    nr '"Was denkst du denn, Planloser?" Dieser Gefühlsausbruch beschert dem Geist einen kurzen, schmerzhaften Hustenanfall. "Ich hab„ mein Fleisch und Blut… für etwas Klimper verkauft. An diese verdammten Staubies… und genau dann - wirklich GENAU DANN - hat irgendein bekloppter Magier beschlossen, den Stock abzufackeln, mit mir mittendrin!" Der Geist grummelt böse, und aus den Winkeln seines ausgefransten Mundes quillt eine dampfende Flüssigkeit hervor.{#zm1146_s12_}'

    menu:
        '"Ein Zauberer hat den Stock niedergebrannt?"{#zm1146_s12_r9440}':
            # a34 # r9440
            jump zm1146_s18

        '"Ich hätte da noch eine Frage…"{#zm1146_s12_r9441}':
            # a35 # r9441
            jump zm1146_s9

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm1146_s12_r9465}':
            # a36 # r9465
            jump zm1146_dispose


# s13 # say9408
label zm1146_s13: # from 9.3
    nr '"Was glaubst du denn… du stumpfsinniger Knochenbrecher? In Baator, in diesem stinkenden Dreckloch namens Phlegethos. Brennen, brennen… brennen… das ist alles, was ich tue. Ich starb, indem ich verbrannte, und im Tod brenne ich weiter. Arrr!" Die Leiche knirrscht wütend mit den Zähnen. "Diese Ironie macht mich krank! Sobald ich hier raus bin, schmeiß ich die ganzen Schlucker in dieses verdammte Loch. He, he, he… *schluck*"{#zm1146_s13_}'

    menu:
        '"Warum solltest du dein Schicksal anderen an den Hals wünschen?"{#zm1146_s13_r9442}':
            # a37 # r9442
            jump zm1146_s17

        '"Ich hätte da noch eine Frage…"{#zm1146_s13_r9443}':
            # a38 # r9443
            jump zm1146_s9

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm1146_s13_r9444}':
            # a39 # r9444
            jump zm1146_dispose


# s14 # say9409
label zm1146_s14: # from 9.4
    nr '"Verdienen? DAS? Nichts! Ich… *schluck*… habe nichts getan. Ich hab„ doch nur versucht, über die Runden zu kommen… wie alle anderen auch… und dann - “wwwum!„ - hat dieser verfluchte Magier plötzlich den Stock abgefackelt!"{#zm1146_s14_}'

    menu:
        '"Ein Magier… hat den Stock… abgefackelt?"{#zm1146_s14_r9445}':
            # a40 # r9445
            jump zm1146_s18

        '"Ich verstehe. Ich hätte noch eine andere Frage…"{#zm1146_s14_r9446}':
            # a41 # r9446
            jump zm1146_s9

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm1146_s14_r9745}':
            # a42 # r9745
            jump zm1146_dispose


# s15 # say9410
label zm1146_s15: # from 9.5
    nr '"Nichts. Nichts. Hab„ ich *dir* doch schon gesagt, Dussel. Laß… laß mich einfach nur in Ruhe brennen…"{#zm1146_s15_}'

    menu:
        '"Also schön. Ich hätte dann noch eine andere Frage…"{#zm1146_s15_r9447}':
            # a43 # r9447
            jump zm1146_s9

        '"Auf bald, dann."{#zm1146_s15_r9448}':
            # a44 # r9448
            jump zm1146_dispose


# s16 # say9411
label zm1146_s16: # from 9.6
    nr '"Wen? Was? Nein! Und wenn doch … warum sollte ich es dir sagen, du… du jämmerlicher Dussel? Hmpf…"{#zm1146_s16_}'

    menu:
        '"Na schön. Ich hätte da noch eine Frage…"{#zm1146_s16_r9449}':
            # a45 # r9449
            jump zm1146_s9

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm1146_s16_r9450}':
            # a46 # r9450
            jump zm1146_dispose


# s17 # say9412
label zm1146_s17: # from 13.0
    nr '"Aus Rache, du Hohlkopf! Ich krieg sie alle noch… alle, die mir untergekommen sind. Besonders diesen Zauberer! Ich reiß ihm die Eier ab und stopf sie ihm in den Hals, wenn ich ihn finde! Und dann werf„ ich ihn in dieses stinkende Loch! Ihn und ein paar andere auch… damit sich“s auch richtig lohnt! He, he, he…"{#zm1146_s17_}'

    menu:
        '"Du bist ein verderbter, engstirniger Winzling. Du hast dein Schicksal bestimmt wohlverdient."{#zm1146_s17_r9420}':
            # a47 # r9420
            jump zm1146_s6

        '"Ich verstehe. Ich hätte da noch ein paar Fragen an dich…"{#zm1146_s17_r9451}':
            # a48 # r9451
            jump zm1146_s9

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm1146_s17_r9452}':
            # a49 # r9452
            jump zm1146_dispose


# s18 # say9458
label zm1146_s18: # from 12.0 14.0
    nr '"Ja, den Stock… der schlimmste Ort Sigils. Ich hatte in meinem Leben noch nie so viele Flammen gesehen… ich bin wie ein Irrer umhergerannt und wollte flüchten, aber plötzlich stand alles in Flammen! Häuser, Straßen, Männer, Frauen, Kinder… und dieser dreimal verfluchte Zauberer hat die ganze Zeit nur gelacht! Ich flüchtete mich in eine Ecke und dachte, kurz verschnaufen zu können, doch plötzlich stand mein verdammter Kopf in Flammen! Von diesem Augenblick an… ging alles ziemlich bergab…" Das geöffnete Auge des Geistes funkelt böse.{#zm1146_s18_}'

    menu:
        '"Und wer war dieser Zauberer?"{#zm1146_s18_r9459}':
            # a50 # r9459
            jump zm1146_s19

        '"Ich verstehe. Ich hätte da noch ein paar Fragen an dich…"{#zm1146_s18_r9464}':
            # a51 # r9464
            jump zm1146_s9

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm1146_s18_r9746}':
            # a52 # r9746
            jump zm1146_dispose


# s19 # say9744
label zm1146_s19: # from 18.0
    nr '"Keine Ahnung. Ich war schon ziemlich fix und fertig, als sie ihn gestoppt haben, wenn überhaupt. Ich erinnere mich dunkel daran, daß er, bevor alles anfing, von irgendwelchen Leuten gejagt wurde, die seinen Namen riefen… äh… oh! Ignis. Ja, ich glaube es war Ignis. Oder so ähnlich. Hoffentlich muß er in einem übleren Loch schmoren als ich!"{#zm1146_s19_}'

    menu:
        '"Ich verstehe. Ich hätte da noch ein paar Fragen an dich…"{#zm1146_s19_r9747}':
            # a53 # r9747
            jump zm1146_s9

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm1146_s19_r9748}':
            # a54 # r9748
            jump zm1146_dispose


# s20 # say20099
label zm1146_s20: # - # IF ~  Global("Crispy","GLOBAL",1)
    nr '"Schon wieder?!"{#zm1146_s20_}'

    menu:
        '"Ich hätte da ein paar Fragen…"{#zm1146_s20_r20100}':
            # a55 # r20100
            jump zm1146_s9

        '"Nichts, ich war nur zufällig in der Gegend. Leb wohl."{#zm1146_s20_r20101}':
            # a56 # r20101
            jump zm1146_dispose
