init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm310_logic import Zm310Logic
    zm310Logic = Zm310Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM310.DLG
# ###


# s0 # say6495
label zm310_s0: # - # IF ~  Global("Oinosian","GLOBAL",0)
    nr 'Dieser wiederbelebten Leiche wurden die Lippen zugenäht und die Nummer "310" in die Stirn geritzt. Der Geruch von Formaldehyd umgibt sie. Die Leiche richtet ihre leblosen Augen auf dich, als du dich ihr in den Weg stellst.{#zm310_s0_}'

    menu:
        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"{#zm310_s0_r6499}' if zm310Logic.r6499_condition():
            # a0 # r6499
            $ zm310Logic.r6499_action()
            jump zm310_s1

        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"{#zm310_s0_r6500}' if zm310Logic.r6500_condition():
            # a1 # r6500
            jump zm310_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm310_s0_r6501}' if zm310Logic.r6501_condition():
            # a2 # r6501
            jump zm310_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm310_s0_r6502}' if zm310Logic.r6502_condition():
            # a3 # r6502
            $ zm310Logic.r6502_action()
            jump zm310_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm310_s0_r6503}':
            # a4 # r6503
            jump zm310_dispose

        'Laß die Leiche in Ruhe.{#zm310_s0_r6504}':
            # a5 # r6504
            jump zm310_dispose


# s1 # say6496
label zm310_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zm310_s1_}'

    menu:
        'Laß die Leiche in Ruhe.{#zm310_s1_r6505}':
            # a6 # r6505
            jump zm310_dispose


# s2 # say6498
label zm310_s2: # from 0.3
    nr 'Einen Moment lang glaubst du, daß diese Leiche zu weit hinüber ist, um dir antworten zu können… aber plötzlich erkennst du, daß sich wahrhaftiges Leid in ihre Gesichtszüge gegraben hat und du spürst, daß sich dahinter eine so tiefe Verzweiflung verbirgt, daß der Geist wieder in seine alte, körperliche Hülle zurückkehren mußte.{#zm310_s2_}'

    menu:
        '"Ich würde dich gern was fragen…"{#zm310_s2_r6506}':
            # a7 # r6506
            jump zm310_s3

        'Laß den Geist in Ruhe.{#zm310_s2_r9657}':
            # a8 # r9657
            jump zm310_s17


# s3 # say9642
label zm310_s3: # from 2.0 4.2 5.2 6.2 7.2 8.1 9.0 10.0 11.2 12.1 13.1 14.1 15.1 16.0 18.0
    nr 'Er spricht mit der langsamen, monotonen Stimme eines gebrochenen, hoffnungslosen Mannes. Selbst jetzt unterscheidet er sich kaum von einem seelenlosen Zombie. "Was möchtet Ihr wissen, mein Herr?"{#zm310_s3_}'

    menu:
        '"Wer bist du?"{#zm310_s3_r9658}':
            # a9 # r9658
            jump zm310_s4

        '"Wo kommst du her?"{#zm310_s3_r9659}':
            # a10 # r9659
            jump zm310_s5

        '"Wie bist du denn hier gelandet? Als Zombie, meine ich?"{#zm310_s3_r9660}':
            # a11 # r9660
            jump zm310_s6

        '"Wo bist du… wo wohnt dein Geist… jetzt?"{#zm310_s3_r9661}':
            # a12 # r9661
            jump zm310_s7

        '"Warum bist du so verzweifelt?"{#zm310_s3_r9662}':
            # a13 # r9662
            jump zm310_s8

        '"Was weißt du über diesen Ort?"{#zm310_s3_r9663}':
            # a14 # r9663
            jump zm310_s9

        '"Kennst du jemanden mit dem Namen Pharod?"{#zm310_s3_r9664}' if zm310Logic.r9664_condition():
            # a15 # r9664
            jump zm310_s10

        '"Ach nichts, ist schon gut."{#zm310_s3_r9665}':
            # a16 # r9665
            jump zm310_s17


# s4 # say9643
label zm310_s4: # from 3.0
    nr 'Der Geist spricht so leise, daß du ihn nur schwer verstehst. Beim Sprechen bewegt sich der Mund seiner Hülle kaum. "Ich bin ein Niemand, mein Herr; ein elendes Insekt, das sich verzweifelt an den Turm der Einöde in Oinos klammert. Man nannte mich einst Arabhiem, mein Herr, aber… das ist lange, lange her."{#zm310_s4_}'

    menu:
        '"Turm der Einöde?"{#zm310_s4_r9666}':
            # a17 # r9666
            jump zm310_s13

        '"Oinos?"{#zm310_s4_r9667}':
            # a18 # r9667
            jump zm310_s7

        '"Ich hätte noch eine Frage…"{#zm310_s4_r9668}':
            # a19 # r9668
            jump zm310_s3

        '"Da ist nichts, was ich sonst noch wissen wollte. Leb wohl."{#zm310_s4_r9669}':
            # a20 # r9669
            jump zm310_s17


# s5 # say9644
label zm310_s5: # from 3.1
    nr '"Ich lebte in Sigil, mein Herr. Im Stock. Der Ort erscheint mir gar nicht mehr so schrecklich, wie ich einst glaubte, jetzt wo ich in… Oinos lebe." Die Leiche blinzelt so langsam, daß du kurz dachtest, sie würde einfach die Augen schließen.{#zm310_s5_}'

    menu:
        '"Der Stock?"{#zm310_s5_r9670}':
            # a21 # r9670
            jump zm310_s12

        '"Oinos?"{#zm310_s5_r9671}':
            # a22 # r9671
            jump zm310_s7

        '"Ich hätte noch eine Frage…"{#zm310_s5_r9672}':
            # a23 # r9672
            jump zm310_s3

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."{#zm310_s5_r9673}':
            # a24 # r9673
            jump zm310_s17


# s6 # say9645
label zm310_s6: # from 3.2
    nr '"Ich wurde ermordet, mein Herr, von Räubern. Betrunken torkelte ich durch die Gassen des Stocks. Ich verirrte mich und fiel der Bande schließlich in die Hände. Na ja, egal. Mein Leben war wahrscheinlich sowieso weniger wert als die paar Kupfermünzen, die ein Sammler womöglich für meine Leiche bekommen hat."{#zm310_s6_}'

    menu:
        '"Warum hast du solch schlechte Meinung über dein eigenes Leben?"{#zm310_s6_r9674}':
            # a25 # r9674
            jump zm310_s16

        '"Ein Sammler?"{#zm310_s6_r9675}':
            # a26 # r9675
            jump zm310_s15

        '"Ich hätte noch eine Frage…"{#zm310_s6_r9676}':
            # a27 # r9676
            jump zm310_s3

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."{#zm310_s6_r9677}':
            # a28 # r9677
            jump zm310_s17


# s7 # say9646
label zm310_s7: # from 3.3 4.1 5.1 8.0 12.0
    nr 'Als der Geist kurz die Augen schließt, geht ein leichtes Schaudern durch seine Hülle. "Im schrecklichen Oinos, mein Herr. In der Grauen Einöde. Dorthin wurde meine Seele verbannt, in den Schatten von Khin-Oin, dem Turm der Einöde."{#zm310_s7_}'

    menu:
        '"Erzähl mir mehr über dieses… Oinos."{#zm310_s7_r9678}':
            # a29 # r9678
            jump zm310_s11

        '"Khin-Oin?"{#zm310_s7_r9679}':
            # a30 # r9679
            jump zm310_s13

        '"Ich hätte da noch eine Frage…"{#zm310_s7_r9680}':
            # a31 # r9680
            jump zm310_s3

        '"Da ist nichts, was ich sonst noch wissen wollte. Leb wohl."{#zm310_s7_r9681}':
            # a32 # r9681
            jump zm310_s17


# s8 # say9647
label zm310_s8: # from 3.4
    nr '"Es gibt keinen Ausweg für mich, mein Herr. Ich bin auf alle Ewigkeit in der schrecklichen Einöde von Oinos gefangen. Für jemanden wie mich gibt es keine Hoffnung." Der Geist bietet immer mehr ein Bild des Jammers. Die Schultern seiner Hülle sinken unter der Last seines Leids zusammen.{#zm310_s8_}'

    menu:
        '"Oinos?"{#zm310_s8_r9682}':
            # a33 # r9682
            jump zm310_s7

        '"Ich verstehe. Ich hätte noch eine andere Frage…"{#zm310_s8_r9683}':
            # a34 # r9683
            jump zm310_s3

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm310_s8_r9684}':
            # a35 # r9684
            jump zm310_s17


# s9 # say9648
label zm310_s9: # from 3.5 15.0
    nr '"So gut wie nichts, mein Herr. Ich weiß nur, daß man die Toten hierher bringt, um sie zu begraben oder zu verbrennen… oder um sie als Arbeiter zu verwenden, wie in meinem Fall."{#zm310_s9_}'

    menu:
        '"Jetzt verstehe ich. Zu einer anderen Frage…"{#zm310_s9_r9685}':
            # a36 # r9685
            jump zm310_s3

        '"Da ist nichts, was ich sonst noch wissen wollte. Leb wohl."{#zm310_s9_r9686}':
            # a37 # r9686
            jump zm310_s17


# s10 # say9649
label zm310_s10: # from 3.6
    nr 'Der Geist schüttelt langsam den Kopf von einer Seite zur anderen. "Nein, mein Herr. Ich kenne niemanden, der so heißt. Tut mir leid."{#zm310_s10_}'

    menu:
        '"Schon gut. Ich hätte noch eine andere Frage…"{#zm310_s10_r9687}':
            # a38 # r9687
            jump zm310_s3

        '"Auf bald, dann."{#zm310_s10_r9688}':
            # a39 # r9688
            jump zm310_s17


# s11 # say9650
label zm310_s11: # from 7.0
    nr '"Da gibt es nicht viel zu sagen. Es ist das Land meines Meisters, des Herrn von Khin-Oin… eines Ortes voller Sorgen und Seuchen, wo Körper und Geist gleichermaßen verwesen, und wo nichts als Trostlosigkeit herrscht."{#zm310_s11_}'

    menu:
        '"Und wer ist dieser… „Meister“?"{#zm310_s11_r9689}':
            # a40 # r9689
            jump zm310_s14

        '"Khin-Oin?"{#zm310_s11_r9690}':
            # a41 # r9690
            jump zm310_s13

        '"Ich hätte noch eine Frage…"{#zm310_s11_r9691}':
            # a42 # r9691
            jump zm310_s3

        '"Es hört sich dennoch so an. Leb wohl, Geist."{#zm310_s11_r9692}':
            # a43 # r9692
            jump zm310_s17


# s12 # say9651
label zm310_s12: # from 5.0
    nr '"Ja, mein Herr. Ein elender Ort, aber nicht so schrecklich wie Oinos."{#zm310_s12_}'

    menu:
        '"Oinos?"{#zm310_s12_r9693}':
            # a44 # r9693
            jump zm310_s7

        '"Ich hätte noch eine Frage…"{#zm310_s12_r9694}':
            # a45 # r9694
            jump zm310_s3

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."{#zm310_s12_r9695}':
            # a46 # r9695
            jump zm310_s17


# s13 # say9652
label zm310_s13: # from 4.0 7.1 11.1 14.0
    nr '"Ja, mein Herr. Es ist ein großer Turm - noch höher als der höchste Turm Sigils. Er hat etwas Knochenartiges - wie die Wirbelsäule eines gigantischen Wesens. Dies ist der Ort, an dem ich schuften muß, um das wiederaufzubauen, was die Heere der Feinde meines Meisters, die rivalisierenden Fürsten, zerstört haben."{#zm310_s13_}'

    menu:
        '"Und wer ist dieser „Meister“?"{#zm310_s13_r9696}':
            # a47 # r9696
            jump zm310_s14

        '"Ich verstehe. Ich hätte noch eine andere Frage…"{#zm310_s13_r9697}':
            # a48 # r9697
            jump zm310_s3

        '"Ich verstehe. Ich werde dich jetzt verlassen, Geist, leb wohl."{#zm310_s13_r9698}':
            # a49 # r9698
            jump zm310_s17


# s14 # say9653
label zm310_s14: # from 11.0 13.0
    nr '"Ich kenne ihn nur als den Meister, den Herrn von Khin-Oin. Er ist ein übler Fürst - ein Ausbund an furcherregender Macht. Er besitzt meine Seele und wird sie immer besitzen und so lang mit Füßen treten, bis die Ewigkeit der Vergessenheit weicht."{#zm310_s14_}'

    menu:
        '"Erzähl mir über diesen „Khin-Oin“."{#zm310_s14_r9699}':
            # a50 # r9699
            jump zm310_s13

        '"Ich hätte noch eine Frage…"{#zm310_s14_r9700}':
            # a51 # r9700
            jump zm310_s3

        '"Da ist nichts, was ich sonst noch wissen wollte. Leb wohl."{#zm310_s14_r9701}':
            # a52 # r9701
            jump zm310_s17


# s15 # say9654
label zm310_s15: # from 6.1
    nr '"Ja, mein Herr, ein Sammler. Einer von denen, die die Toten Sigils von den Straßen auflesen, und sie für eine Handvoll Geld an die Leichenhalle verkaufen, in der wir jetzt stehen." Der Geist hält kurz inne und blickt um sich, dann seufzt er leise.{#zm310_s15_}'

    menu:
        '"Was weißt Du über diese Leichenhalle?"{#zm310_s15_r9702}':
            # a53 # r9702
            jump zm310_s9

        '"Ich verstehe. Ich hätte da noch eine andere Frage an dich…"{#zm310_s15_r9703}':
            # a54 # r9703
            jump zm310_s3

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#zm310_s15_r9704}':
            # a55 # r9704
            jump zm310_s17


# s16 # say9655
label zm310_s16: # from 6.0
    nr '"Darüber will ich nicht sprechen, mein Herr. Es lohnt sich nicht." Der Geist scheint sich nicht erweichen zu lassen.{#zm310_s16_}'

    menu:
        '"Also schön. Ich hätte da noch andere Fragen…"{#zm310_s16_r9705}':
            # a56 # r9705
            jump zm310_s3

        '"Dann leb wohl."{#zm310_s16_r9706}':
            # a57 # r9706
            jump zm310_s17


# s17 # say9656
label zm310_s17: # from 2.1 3.7 4.3 5.3 6.3 7.3 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.2 16.1
    nr 'Erst als der Zombie sich wieder an die Arbeit macht, merkst du, daß der Geist den Körper verlassen hat.{#zm310_s17_}'

    jump zm310_dispose


# s18 # say20102
label zm310_s18: # - # IF ~  Global("Oinosian","GLOBAL",1)
    nr 'Die Leiche scheint zu schrumpfen, sie beugt sich unter dem Gewicht der Verzweiflung des Geistes.{#zm310_s18_}'

    menu:
        '"Ich hätte da ein paar Fragen…"{#zm310_s18_r20103}':
            # a58 # r20103
            jump zm310_s3

        '"Komm nur gerade zufällig vorbei. Leb wohl."{#zm310_s18_r20104}':
            # a59 # r20104
            jump zm310_dispose
