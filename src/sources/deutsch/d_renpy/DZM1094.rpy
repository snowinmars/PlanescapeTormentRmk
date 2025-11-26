init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1094_logic import Zm1094Logic
    zm1094Logic = Zm1094Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1094.DLG
# ###


# s0 # say6562
label zm1094_s0: # - # IF ~  Global("Asonje","GLOBAL",0)
    nr 'Dieser wandelnden Leiche wurde die Nummer "1094" in die Stirn eingeritzt. Ihr Mund wurde fest zugenäht und der Geruch von frischem Formaldehyd umgibt sie wie eine Wolke. Trotz ihrer bleichen, eingefallenen Gesichtszüge und leblosen, milchigen Augen kann man noch gut erkennen, daß dies einmal ein ansehnlicher junger Mann gewesen sein muß.'

    menu:
        '"Na… irgendwas Interessantes passiert?"' if zm1094Logic.r6565_condition():
            # a0 # r6565
            $ zm1094Logic.r6565_action()
            jump zm1094_s1

        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"' if zm1094Logic.r6566_condition():
            # a1 # r6566
            jump zm1094_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if zm1094Logic.r6567_condition():
            # a2 # r6567
            jump zm1094_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if zm1094Logic.r6568_condition():
            # a3 # r6568
            $ zm1094Logic.r6568_action()
            jump zm1094_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."':
            # a4 # r6569
            jump zm1094_dispose

        'Laß die Leiche in Ruhe.':
            # a5 # r6570
            jump zm1094_dispose


# s1 # say6563
label zm1094_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.'

    menu:
        'Laß die Leiche in Ruhe.':
            # a6 # r6571
            jump zm1094_dispose


# s2 # say6564
label zm1094_s2: # from 0.3
    nr 'Die Leiche zuckt einen Moment lang und wird still, als der Geist noch einmal in die sterbliche Hülle zurückkehrt. Innerhalb von Sekunden scheint so etwas wie Leben in den Augen des Zombies aufzuflackern, und er beginnt, sich mit erstauntem Gesichtsausdruck umzublicken. Der Körper scheint jetzt von einer weichen, goldenen Aura umgeben zu sein.'

    menu:
        '"Ich würde dich gern was fragen…"':
            # a7 # r6572
            jump zm1094_s3

        'Verlaß den Geist.':
            # a8 # r9246
            jump zm1094_dispose


# s3 # say9224
label zm1094_s3: # from 2.0
    nr 'Der Geist scheint dich plötzlich bemerkt zu haben. Er grinst so breit, daß die Nähte um seinen Mund herum aufplatzen und die Fäden herabhängen. Angesichts dieser Überraschung hält er sich die Hand vor den Mund, zuckt mit den Achseln und nickt dir zur Begrüßung zu. "Wo… wo bin ich? Was ist das für ein merkwürdiger Ort" Er hustet leise und reibt seine Kehle.'

    menu:
        '"Du bist hier, um *meine* Fragen zu beantworten, Geist."':
            # a9 # r9247
            $ zm1094Logic.r9247_action()
            jump zm1094_s4

        '"Du… naja, zumindest deine Überreste… sind in einer Leichenhalle."':
            # a10 # r9248
            jump zm1094_s13

        '"Nein, ich bezweifle, daß du mich kennst. Ich hätte aber eine Frage an dich…"':
            # a11 # r9249
            jump zm1094_s14

        '"Das möchte ich bezweifeln. Leb wohl."':
            # a12 # r9250
            jump zm1094_dispose


# s4 # say9225
label zm1094_s4: # from 3.0
    nr 'Der freundliche Ton des Geistes erstirbt plötzlich. Er schaut dich einen Moment lang geringschätzig an, während die losen Fäden von seinen grauen, verwelkten Lippen herabhängen. "Na schön, fragt was Ihr wollt." Er schaut gelangweilt weg.'

    menu:
        '"Wer bist du?"':
            # a13 # r9251
            jump zm1094_s5

        '"Wo kommst du her?"':
            # a14 # r9252
            jump zm1094_s6

        '"Wie bist du denn hier gelandet? Als Zombie, meine ich?"':
            # a15 # r9253
            jump zm1094_s7

        '"Wo bist du… wo wohnt dein Geist… jetzt?"':
            # a16 # r9254
            jump zm1094_s8

        '"Was weißt du über diesen Ort?"':
            # a17 # r9255
            jump zm1094_s9

        '"Kennst du jemanden mit dem Namen Pharod?"' if zm1094Logic.r9256_condition():
            # a18 # r9256
            jump zm1094_s10

        '"Ach nichts, ist schon gut."':
            # a19 # r9257
            jump zm1094_dispose


# s5 # say9226
label zm1094_s5: # from 4.0 11.0
    nr '"Mein Name war Asonje. Darf ich gehen?"'

    menu:
        '"Nein, ich hätte da noch eine andere Frage…"':
            # a20 # r9258
            jump zm1094_s11

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a21 # r9259
            jump zm1094_dispose


# s6 # say9227
label zm1094_s6: # from 4.1 11.1
    nr '"Ich kann mich nicht erinnern. Sonst noch was?"'

    menu:
        '"Ja, ich hätte da noch eine andere Frage…"':
            # a22 # r9260
            jump zm1094_s11

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a23 # r9261
            jump zm1094_dispose


# s7 # say9228
label zm1094_s7: # from 4.2 11.2
    nr 'Der Geist zuckt mit den Achseln und blickt in den Himmel. "Das kann ich nicht sagen. Aber was macht das überhaupt aus?" Er preßt seine Lippen gereizt zusammen und wirft dir einen strafenden Blick zu; seine toten Augen funkeln böse. "Wollt Ihr noch etwas von mir?"'

    menu:
        '"Ja, ich hätte da noch eine andere Frage…"':
            # a24 # r9262
            jump zm1094_s11

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a25 # r9263
            jump zm1094_dispose


# s8 # say9229
label zm1094_s8: # from 4.3 11.3
    nr '"Mein Geist existiert in Arborea…" Er hält kurz inne, ganz in Erinnerungen versunken. "Selbst jetzt sehne ich mich danach, wieder an diesen Ort zurückkehren, weit weg von deiner eigennützigen, respektlosen und ziemlich lästigen Neugier. Darf ich wieder dorthin zurückkehren?"'

    menu:
        '"Nein, ich hätte da noch eine andere Frage…"':
            # a26 # r9264
            jump zm1094_s11

        '"Ja, geh nur. Leb wohl."':
            # a27 # r9265
            jump zm1094_dispose


# s9 # say9230
label zm1094_s9: # from 4.4 11.4
    nr 'Der Geist wirft dir einen verzweifelten Blick zu. "Natürlich nichts!" Er schüttelt ärgerlich den Kopf, wobei die losen Fäden seiner Nähte bei jeder Bewegung hin und her fliegen.'

    menu:
        '"Und wie ist dann deine Hülle hierhergekommen, um in diesen öden Hallen zu arbeiten?"':
            # a28 # r9266
            jump zm1094_s12

        '"Ich hätte noch eine Frage…"':
            # a29 # r9267
            jump zm1094_s11

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a30 # r9268
            jump zm1094_dispose


# s10 # say9231
label zm1094_s10: # from 4.5 11.5
    nr '"Nein." Der Geist scheint dir kaum Aufmerksamkeit zu schenken.'

    menu:
        '"Dann hätte ich da noch eine andere Frage…"':
            # a31 # r9269
            jump zm1094_s11

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a32 # r9270
            jump zm1094_dispose


# s11 # say9232
label zm1094_s11: # from 5.0 6.0 7.0 8.0 9.1 10.0 12.0 27.0
    nr 'Der Geist seufzt laut. Dabei füllt sich die Luft mit dem Formaldehydgeruch aus der Lunge der Leiche. "Ja, ja… schieß los."'

    menu:
        '"Wer bist du?"':
            # a33 # r9271
            jump zm1094_s5

        '"Wo kommst du her?"':
            # a34 # r9272
            jump zm1094_s6

        '"Wie bist du denn hier gelandet? Als Zombie, meine ich?"':
            # a35 # r9273
            jump zm1094_s7

        '"Wo bist du… wo wohnt dein Geist… jetzt?"':
            # a36 # r9274
            jump zm1094_s8

        '"Was weißt du über diesen Ort?"':
            # a37 # r9275
            jump zm1094_s9

        '"Kennst du jemanden mit dem Namen Pharod?"' if zm1094Logic.r9276_condition():
            # a38 # r9276
            jump zm1094_s10

        '"Ach nichts, ist schon gut."':
            # a39 # r9277
            jump zm1094_dispose


# s12 # say9233
label zm1094_s12: # from 9.0
    nr '"Das möchte ich auch gerne wissen, Dummkopf. Und wenn du erlaubst, würde ich jetzt gern gehen."'

    menu:
        '"Nein, ich hätte da noch eine andere Frage…"':
            # a40 # r9278
            jump zm1094_s11

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a41 # r9279
            jump zm1094_dispose


# s13 # say9234
label zm1094_s13: # from 3.1
    nr 'Er denkt kurz darüber nach und lacht. "Ja! Das würde Sinn ergeben, nicht wahr? Sag mal, kenne ich dich überhaupt?" Er legt den Kopf auf die Seite und schaut dich prüfend an. Es scheint ihm Spaß zu machen, deine Identität zu erraten.'

    menu:
        '"Nein, ich bezweifle, daß du mich kennst. Ich hätte aber eine Frage an dich…"':
            # a42 # r9280
            jump zm1094_s14

        '"Das möchte ich bezweifeln. Leb wohl."':
            # a43 # r9281
            jump zm1094_dispose


# s14 # say9235
label zm1094_s14: # from 3.2 13.0
    nr 'Der Geist zuckt mit den Achseln und kichert leise. "Da magst du recht haben! Was wolltest du mich fragen?" Abwesend beginnt er, die restlichen Fäden aus seinen Lippen zu ziehen und einen nach dem anderen zu Boden fallen zu lassen.'

    menu:
        '"Wer bist du?"' if zm1094Logic.r9282_condition():
            # a44 # r9282
            jump zm1094_s15

        '"Wer bist du?"' if zm1094Logic.r9286_condition():
            # a45 # r9286
            jump zm1094_s25

        '"Wo kommst du her?"':
            # a46 # r9287
            jump zm1094_s16

        '"Wie bist du denn hier gelandet? Als Zombie, meine ich?"':
            # a47 # r9288
            jump zm1094_s17

        '"Wo bist du… wo wohnt dein Geist… jetzt?"':
            # a48 # r9317
            jump zm1094_s18

        '"Was weißt du über diesen Ort?"':
            # a49 # r9318
            jump zm1094_s19

        '"Kennst du jemanden mit dem Namen Pharod?"' if zm1094Logic.r9319_condition():
            # a50 # r9319
            jump zm1094_s20

        '"Ach nichts, ist schon gut."':
            # a51 # r9320
            jump zm1094_dispose


# s15 # say9236
label zm1094_s15: # from 14.0 22.0
    nr '" Mein Name war Asonje. Und mit wem habe ich das Vergnügen?"'

    menu:
        '"Ich… ich weiß es nicht."':
            # a52 # r9289
            $ zm1094Logic.r9289_action()
            jump zm1094_s21

        '"Das werde ich dir ein andermal sagen. Ich hätte eine Frage…"':
            # a53 # r9290
            $ zm1094Logic.r9290_action()
            jump zm1094_s22

        '"Vielleicht ein andermal. Leb wohl."':
            # a54 # r9291
            $ zm1094Logic.r9291_action()
            jump zm1094_dispose


# s16 # say9237
label zm1094_s16: # from 14.2 22.2
    nr '"Ich komme von vielen Orten! Ehrlich gesagt weiß ich nicht, wo ich geboren bin. Ich bin in meinem Leben viel gereist und an vielen Orten zu Hause gewesen. Jetzt darf ich ganz Arborea erkunden…" Der Geist macht einen zufriedenen Eindruck.'

    menu:
        '"Ich verstehe. Ich hätte noch eine andere Frage…"':
            # a55 # r9292
            jump zm1094_s22

        '"Das ist alles, was ich wissen wollte. Leb wohl."':
            # a56 # r9293
            jump zm1094_dispose


# s17 # say9238
label zm1094_s17: # from 14.3 22.3
    nr 'Das Lächeln auf dem Gesicht des Geistes erstirbt, und er wirkt besorgt. "Merkwürdig… ich weiß es nicht! Ich hab„ keine Ahnung, wie ich gestorben bin." Er zuckt mit den Achseln: "Na ja, was soll“s!" Auf sein fahles Gesicht kehrt ein freudiges Grinsen zurück, das für eine Leiche erstaunlich strahlend ist.'

    menu:
        '"Ich hätte noch eine andere Frage…"':
            # a57 # r9294
            jump zm1094_s22

        '"Das ist alles, was ich wissen wollte. Leb wohl."':
            # a58 # r9295
            jump zm1094_dispose


# s18 # say9239
label zm1094_s18: # from 14.4 22.4
    nr '"In Arborea! Einen schöneren Ort gibt es für mich nicht. Nirgends sonst in meinem sterblichen Leben habe ich einen Ort von ähnlicher Leidenschaft… ähnlicher Pracht gesehen…" Er hält inne, ganz in angenehme Erinnerungen versunken. "Die Schönheit des Landes, der Menschen - ein Traum. Selbst in diesem Augenblick vermisse ich Arborea!"'

    menu:
        '"Ich verstehe. Ich hätte noch eine andere Frage…"':
            # a59 # r9296
            jump zm1094_s22

        '"Das ist alles, was ich wissen wollte. Leb wohl."':
            # a60 # r9297
            jump zm1094_dispose


# s19 # say9240
label zm1094_s19: # from 14.5 22.5
    nr '"Nicht besonders viel. Ich habe aus einer Laune heraus einen Vertrag bei einer Staubmenschen-Frau unterzeichnet… sie hatte mich einst auf den schrecklichen Ort aufmerksam gemacht und gesagt, mein Körper würde nach meinem Tod als Arbeiter verwendet. Ich dachte, ich könnte ihn im nächsten Leben ohnehin nicht mehr gebrauchen, warum also nicht? Kann ich genauso gut den Klimper nehmen und in Saus und Braus leben!" Bei der Vorstellung kichert er, und der geisterhafte Schalk schaut ihm aus den Augen.'

    menu:
        '"Weißt du irgendetwas über die Stadt um die Leichenhalle herum?"':
            # a61 # r9298
            jump zm1094_s24

        '"Ich verstehe. Ich hätte noch eine andere Frage…"':
            # a62 # r9299
            jump zm1094_s22

        '"Das ist alles, was ich wissen wollte. Leb wohl."':
            # a63 # r9300
            jump zm1094_dispose


# s20 # say9241
label zm1094_s20: # from 14.6 22.6
    nr 'Der Geist denkt kurz nach. "Nein, tut mir leid, dieser Name sagt mir nichts. Ein Freund von dir?"'

    menu:
        '"Vielleicht. Ich hätte noch eine andere Frage…"':
            # a64 # r9301
            jump zm1094_s22

        '"Ich weiß es nicht. Leb wohl."':
            # a65 # r9302
            jump zm1094_dispose


# s21 # say9242
label zm1094_s21: # from 15.0
    nr 'Er wirkt überrascht. "Komisch! Schade, eigentlich. Aber *irgendwie* muß ich dich doch nennen, oder?" Der Geist sieht dich erwartungsvoll an.'

    menu:
        '"Ich bin sicher, daß dir was einfallen wird. Ich hätte eine Frage…"':
            # a66 # r9303
            jump zm1094_s22

        'Erfinde einen Namen: "Ich weiß nicht… „Adahn“?"':
            # a67 # r9304
            $ zm1094Logic.r9304_action()
            jump zm1094_s23

        '"Nein, das ist nicht wichtig. Leb wohl."':
            # a68 # r9305
            jump zm1094_dispose


# s22 # say9243
label zm1094_s22: # from 15.1 16.0 17.0 18.0 19.1 20.0 21.0 23.0 24.0 25.0 26.0
    nr '"Selbstverständlich. Schieß los!" Mit einem zufriedenen Lächeln wartet er gespannt auf deine Frage. Jetzt, wo alle Nähte aufgetrennt sind, wirkt sein Grinsen nicht mehr ganz so schaurig.'

    menu:
        '"Wer bist du?"' if zm1094Logic.r9306_condition():
            # a69 # r9306
            jump zm1094_s15

        '"Wer bist du?"' if zm1094Logic.r9307_condition():
            # a70 # r9307
            jump zm1094_s25

        '"Wo kommst du her?"':
            # a71 # r9308
            jump zm1094_s16

        '"Wie bist du denn hier gelandet? Als Zombie, meine ich?"':
            # a72 # r9309
            jump zm1094_s17

        '"Wo bist du… wo wohnt dein Geist… jetzt?"':
            # a73 # r9310
            jump zm1094_s18

        '"Was weißt du über diesen Ort?"':
            # a74 # r9311
            jump zm1094_s19

        '"Kennst du jemanden mit dem Namen Pharod?"' if zm1094Logic.r9312_condition():
            # a75 # r9312
            jump zm1094_s20

        '"Ach nichts, ist schon gut."':
            # a76 # r9321
            jump zm1094_dispose


# s23 # say9244
label zm1094_s23: # from 21.1
    nr 'Der Geist spürt deine Verzweiflung und lacht gutherzig. "Armer Schlucker! Adahn also. Aber wolltest du mich nicht was fragen?"'

    menu:
        '"Ja…"':
            # a77 # r9313
            jump zm1094_s22

        '"Nein, habe ich nicht. Leb wohl."':
            # a78 # r9314
            jump zm1094_dispose


# s24 # say9245
label zm1094_s24: # from 19.0
    nr '"Du meinst Sigil?" Als du nickst, verzieht sich sein Lächeln zu einem breiten, hinterhältigen Grinsen. "Oh, ich will dir nicht den Spaß verderben! Am besten findest du selbst etwas über diesen Ort raus! Verliere dich in seinen Straßen, Tavernen und Menschen… aber sieh dich vor! Sigil ist gefährlich und wunderschön zugleich. Aber gerade das macht es ja so aufregend."'

    menu:
        '"Ich… nehme es an. Ich habe da noch eine andere Frage…"':
            # a79 # r9315
            jump zm1094_s22

        '"Vielleicht. Leb wohl."':
            # a80 # r9316
            jump zm1094_dispose


# s25 # say9283
label zm1094_s25: # from 14.1 22.1
    nr '"Mein Name war Asonje."'

    menu:
        '"Ich hätte noch eine Frage…"':
            # a81 # r9284
            jump zm1094_s22

        '"Mehr wollt„ ich gar nicht wissen. Leb wohl."':
            # a82 # r9285
            jump zm1094_dispose


# s26 # say20061
label zm1094_s26: # - # IF ~  GlobalGT("Asonje","GLOBAL",0) GlobalLT("Asonje","GLOBAL",3)
    nr '"Wieder da, was?" Er lächelt breit.'

    menu:
        '"Ich hätte da ein paar Fragen…"':
            # a83 # r20063
            jump zm1094_s22

        '"Ich war zufällig in der Gegend. Leb wohl."':
            # a84 # r20064
            jump zm1094_dispose


# s27 # say20062
label zm1094_s27: # - # IF ~  Global("Asonje","GLOBAL",3)
    nr '"Oh, du… schon wieder." Er runzelt die Stirn und schaut weg.'

    menu:
        '"Ich hätte da ein paar Fragen…"':
            # a85 # r20065
            jump zm1094_s11

        '"Ich war zufällig in der Gegend. Leb wohl."':
            # a86 # r20066
            jump zm1094_dispose
