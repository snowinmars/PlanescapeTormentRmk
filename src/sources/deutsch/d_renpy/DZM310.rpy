init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm310_logic import Zm310Logic
    zm310Logic = Zm310Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM310.DLG
# ###


# s0 # say6495
label zm310_s0: # - # IF ~  Global("Oinosian","GLOBAL",0)
    nr 'Dieser wiederbelebten Leiche wurden die Lippen zugenäht und die Nummer "310" in die Stirn geritzt. Der Geruch von Formaldehyd umgibt sie. Die Leiche richtet ihre leblosen Augen auf dich, als du dich ihr in den Weg stellst.'

    menu:
        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"' if zm310Logic.r6499_condition():
            # a0 # r6499
            $ zm310Logic.r6499_action()
            jump zm310_s1

        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"' if zm310Logic.r6500_condition():
            # a1 # r6500
            jump zm310_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if zm310Logic.r6501_condition():
            # a2 # r6501
            jump zm310_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if zm310Logic.r6502_condition():
            # a3 # r6502
            $ zm310Logic.r6502_action()
            jump zm310_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."':
            # a4 # r6503
            jump zm310_dispose

        'Laß die Leiche in Ruhe.':
            # a5 # r6504
            jump zm310_dispose


# s1 # say6496
label zm310_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.'

    menu:
        'Laß die Leiche in Ruhe.':
            # a6 # r6505
            jump zm310_dispose


# s2 # say6498
label zm310_s2: # from 0.3
    nr 'Einen Moment lang glaubst du, daß diese Leiche zu weit hinüber ist, um dir antworten zu können… aber plötzlich erkennst du, daß sich wahrhaftiges Leid in ihre Gesichtszüge gegraben hat und du spürst, daß sich dahinter eine so tiefe Verzweiflung verbirgt, daß der Geist wieder in seine alte, körperliche Hülle zurückkehren mußte.'

    menu:
        '"Ich würde dich gern was fragen…"':
            # a7 # r6506
            jump zm310_s3

        'Laß den Geist in Ruhe.':
            # a8 # r9657
            jump zm310_s17


# s3 # say9642
label zm310_s3: # from 2.0 4.2 5.2 6.2 7.2 8.1 9.0 10.0 11.2 12.1 13.1 14.1 15.1 16.0 18.0
    nr 'Er spricht mit der langsamen, monotonen Stimme eines gebrochenen, hoffnungslosen Mannes. Selbst jetzt unterscheidet er sich kaum von einem seelenlosen Zombie. "Was möchtet Ihr wissen, mein Herr?"'

    menu:
        '"Wer bist du?"':
            # a9 # r9658
            jump zm310_s4

        '"Wo kommst du her?"':
            # a10 # r9659
            jump zm310_s5

        '"Wie bist du denn hier gelandet? Als Zombie, meine ich?"':
            # a11 # r9660
            jump zm310_s6

        '"Wo bist du… wo wohnt dein Geist… jetzt?"':
            # a12 # r9661
            jump zm310_s7

        '"Warum bist du so verzweifelt?"':
            # a13 # r9662
            jump zm310_s8

        '"Was weißt du über diesen Ort?"':
            # a14 # r9663
            jump zm310_s9

        '"Kennst du jemanden mit dem Namen Pharod?"' if zm310Logic.r9664_condition():
            # a15 # r9664
            jump zm310_s10

        '"Ach nichts, ist schon gut."':
            # a16 # r9665
            jump zm310_s17


# s4 # say9643
label zm310_s4: # from 3.0
    nr 'Der Geist spricht so leise, daß du ihn nur schwer verstehst. Beim Sprechen bewegt sich der Mund seiner Hülle kaum. "Ich bin ein Niemand, mein Herr; ein elendes Insekt, das sich verzweifelt an den Turm der Einöde in Oinos klammert. Man nannte mich einst Arabhiem, mein Herr, aber… das ist lange, lange her."'

    menu:
        '"Turm der Einöde?"':
            # a17 # r9666
            jump zm310_s13

        '"Oinos?"':
            # a18 # r9667
            jump zm310_s7

        '"Ich hätte noch eine Frage…"':
            # a19 # r9668
            jump zm310_s3

        '"Da ist nichts, was ich sonst noch wissen wollte. Leb wohl."':
            # a20 # r9669
            jump zm310_s17


# s5 # say9644
label zm310_s5: # from 3.1
    nr '"Ich lebte in Sigil, mein Herr. Im Stock. Der Ort erscheint mir gar nicht mehr so schrecklich, wie ich einst glaubte, jetzt wo ich in… Oinos lebe." Die Leiche blinzelt so langsam, daß du kurz dachtest, sie würde einfach die Augen schließen.'

    menu:
        '"Der Stock?"':
            # a21 # r9670
            jump zm310_s12

        '"Oinos?"':
            # a22 # r9671
            jump zm310_s7

        '"Ich hätte noch eine Frage…"':
            # a23 # r9672
            jump zm310_s3

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a24 # r9673
            jump zm310_s17


# s6 # say9645
label zm310_s6: # from 3.2
    nr '"Ich wurde ermordet, mein Herr, von Räubern. Betrunken torkelte ich durch die Gassen des Stocks. Ich verirrte mich und fiel der Bande schließlich in die Hände. Na ja, egal. Mein Leben war wahrscheinlich sowieso weniger wert als die paar Kupfermünzen, die ein Sammler womöglich für meine Leiche bekommen hat."'

    menu:
        '"Warum hast du solch schlechte Meinung über dein eigenes Leben?"':
            # a25 # r9674
            jump zm310_s16

        '"Ein Sammler?"':
            # a26 # r9675
            jump zm310_s15

        '"Ich hätte noch eine Frage…"':
            # a27 # r9676
            jump zm310_s3

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a28 # r9677
            jump zm310_s17


# s7 # say9646
label zm310_s7: # from 3.3 4.1 5.1 8.0 12.0
    nr 'Als der Geist kurz die Augen schließt, geht ein leichtes Schaudern durch seine Hülle. "Im schrecklichen Oinos, mein Herr. In der Grauen Einöde. Dorthin wurde meine Seele verbannt, in den Schatten von Khin-Oin, dem Turm der Einöde."'

    menu:
        '"Erzähl mir mehr über dieses… Oinos."':
            # a29 # r9678
            jump zm310_s11

        '"Khin-Oin?"':
            # a30 # r9679
            jump zm310_s13

        '"Ich hätte da noch eine Frage…"':
            # a31 # r9680
            jump zm310_s3

        '"Da ist nichts, was ich sonst noch wissen wollte. Leb wohl."':
            # a32 # r9681
            jump zm310_s17


# s8 # say9647
label zm310_s8: # from 3.4
    nr '"Es gibt keinen Ausweg für mich, mein Herr. Ich bin auf alle Ewigkeit in der schrecklichen Einöde von Oinos gefangen. Für jemanden wie mich gibt es keine Hoffnung." Der Geist bietet immer mehr ein Bild des Jammers. Die Schultern seiner Hülle sinken unter der Last seines Leids zusammen.'

    menu:
        '"Oinos?"':
            # a33 # r9682
            jump zm310_s7

        '"Ich verstehe. Ich hätte noch eine andere Frage…"':
            # a34 # r9683
            jump zm310_s3

        '"Das ist alles, was ich wissen wollte. Leb wohl."':
            # a35 # r9684
            jump zm310_s17


# s9 # say9648
label zm310_s9: # from 3.5 15.0
    nr '"So gut wie nichts, mein Herr. Ich weiß nur, daß man die Toten hierher bringt, um sie zu begraben oder zu verbrennen… oder um sie als Arbeiter zu verwenden, wie in meinem Fall."'

    menu:
        '"Jetzt verstehe ich. Zu einer anderen Frage…"':
            # a36 # r9685
            jump zm310_s3

        '"Da ist nichts, was ich sonst noch wissen wollte. Leb wohl."':
            # a37 # r9686
            jump zm310_s17


# s10 # say9649
label zm310_s10: # from 3.6
    nr 'Der Geist schüttelt langsam den Kopf von einer Seite zur anderen. "Nein, mein Herr. Ich kenne niemanden, der so heißt. Tut mir leid."'

    menu:
        '"Schon gut. Ich hätte noch eine andere Frage…"':
            # a38 # r9687
            jump zm310_s3

        '"Auf bald, dann."':
            # a39 # r9688
            jump zm310_s17


# s11 # say9650
label zm310_s11: # from 7.0
    nr '"Da gibt es nicht viel zu sagen. Es ist das Land meines Meisters, des Herrn von Khin-Oin… eines Ortes voller Sorgen und Seuchen, wo Körper und Geist gleichermaßen verwesen, und wo nichts als Trostlosigkeit herrscht."'

    menu:
        '"Und wer ist dieser… „Meister“?"':
            # a40 # r9689
            jump zm310_s14

        '"Khin-Oin?"':
            # a41 # r9690
            jump zm310_s13

        '"Ich hätte noch eine Frage…"':
            # a42 # r9691
            jump zm310_s3

        '"Es hört sich dennoch so an. Leb wohl, Geist."':
            # a43 # r9692
            jump zm310_s17


# s12 # say9651
label zm310_s12: # from 5.0
    nr '"Ja, mein Herr. Ein elender Ort, aber nicht so schrecklich wie Oinos."'

    menu:
        '"Oinos?"':
            # a44 # r9693
            jump zm310_s7

        '"Ich hätte noch eine Frage…"':
            # a45 # r9694
            jump zm310_s3

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a46 # r9695
            jump zm310_s17


# s13 # say9652
label zm310_s13: # from 4.0 7.1 11.1 14.0
    nr '"Ja, mein Herr. Es ist ein großer Turm - noch höher als der höchste Turm Sigils. Er hat etwas Knochenartiges - wie die Wirbelsäule eines gigantischen Wesens. Dies ist der Ort, an dem ich schuften muß, um das wiederaufzubauen, was die Heere der Feinde meines Meisters, die rivalisierenden Fürsten, zerstört haben."'

    menu:
        '"Und wer ist dieser „Meister“?"':
            # a47 # r9696
            jump zm310_s14

        '"Ich verstehe. Ich hätte noch eine andere Frage…"':
            # a48 # r9697
            jump zm310_s3

        '"Ich verstehe. Ich werde dich jetzt verlassen, Geist, leb wohl."':
            # a49 # r9698
            jump zm310_s17


# s14 # say9653
label zm310_s14: # from 11.0 13.0
    nr '"Ich kenne ihn nur als den Meister, den Herrn von Khin-Oin. Er ist ein übler Fürst - ein Ausbund an furcherregender Macht. Er besitzt meine Seele und wird sie immer besitzen und so lang mit Füßen treten, bis die Ewigkeit der Vergessenheit weicht."'

    menu:
        '"Erzähl mir über diesen „Khin-Oin“."':
            # a50 # r9699
            jump zm310_s13

        '"Ich hätte noch eine Frage…"':
            # a51 # r9700
            jump zm310_s3

        '"Da ist nichts, was ich sonst noch wissen wollte. Leb wohl."':
            # a52 # r9701
            jump zm310_s17


# s15 # say9654
label zm310_s15: # from 6.1
    nr '"Ja, mein Herr, ein Sammler. Einer von denen, die die Toten Sigils von den Straßen auflesen, und sie für eine Handvoll Geld an die Leichenhalle verkaufen, in der wir jetzt stehen." Der Geist hält kurz inne und blickt um sich, dann seufzt er leise.'

    menu:
        '"Was weißt Du über diese Leichenhalle?"':
            # a53 # r9702
            jump zm310_s9

        '"Ich verstehe. Ich hätte da noch eine andere Frage an dich…"':
            # a54 # r9703
            jump zm310_s3

        '"Das ist alles, was ich wissen wollte. Leb wohl."':
            # a55 # r9704
            jump zm310_s17


# s16 # say9655
label zm310_s16: # from 6.0
    nr '"Darüber will ich nicht sprechen, mein Herr. Es lohnt sich nicht." Der Geist scheint sich nicht erweichen zu lassen.'

    menu:
        '"Also schön. Ich hätte da noch andere Fragen…"':
            # a56 # r9705
            jump zm310_s3

        '"Dann leb wohl."':
            # a57 # r9706
            jump zm310_s17


# s17 # say9656
label zm310_s17: # from 2.1 3.7 4.3 5.3 6.3 7.3 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.2 16.1
    nr 'Erst als der Zombie sich wieder an die Arbeit macht, merkst du, daß der Geist den Körper verlassen hat.'

    jump zm310_dispose


# s18 # say20102
label zm310_s18: # - # IF ~  Global("Oinosian","GLOBAL",1)
    nr 'Die Leiche scheint zu schrumpfen, sie beugt sich unter dem Gewicht der Verzweiflung des Geistes.'

    menu:
        '"Ich hätte da ein paar Fragen…"':
            # a58 # r20103
            jump zm310_s3

        '"Komm nur gerade zufällig vorbei. Leb wohl."':
            # a59 # r20104
            jump zm310_dispose
