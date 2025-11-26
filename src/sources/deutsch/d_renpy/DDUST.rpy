init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dust_logic import DustLogic
    dustLogic = DustLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUST.DLG
# ###


# s0 # say300
label dust_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'Der Staubmensch scheint dich nicht zu bemerken. Er scheint dich wohl für eine dieser lebenden Leichen zu halten, die hier arbeiten.'

    menu:
        '"Sei gegrüßt."':
            # a0 # r302
            jump dust_s1

        '"Wer bist du?"':
            # a1 # r303
            jump dust_s1

        '"Wo bin ich hier?"':
            # a2 # r304
            jump dust_s1

        '"Ich hätte ein paar Fragen…"':
            # a3 # r305
            jump dust_s1

        'Laß ihn in Ruhe.':
            # a4 # r306
            jump dust_dispose


# s1 # say307
label dust_s1: # from 0.0 0.1 0.2 0.3
    nr 'Der Staubmensch zuckt zusammen und wirft seinen Kopf zu dir herum. Er wirkt schockiert - deine Verkleidung muß wohl ganz gut sein.'

    menu:
        'Nutze seine Überraschung aus und brich ihm das Genick, bevor er rufen kann.':
            # a5 # r310
            jump dust_s41

        '"Ich hätte da ein paar Fragen…"':
            # a6 # r312
            jump dust_s2

        'Geh. Und zwar schnell.':
            # a7 # r1332
            jump dust_s2


# s2 # say309
label dust_s2: # from 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
    nr 'Der Staubmensch geht einen Schritt zurück und klatscht dann dreimal fest in die Hände. Daraufhin ertönt der Klang einer großen Eisenglocke durch die ganze Leichenhalle.'

    menu:
        '"Nun gut…"':
            # a8 # r313
            $ dustLogic.r313_action()
            jump dust_dispose


# s3 # say314
label dust_s3: # externs morte_s64
    nr 'Der blasse Mann trägt eine lange dunkle Robe und riecht leicht muffig. Sein Gesicht ist ausdruckslos; er scheint in seine Arbeit vertieft.'

    menu:
        '"Sei gegrüßt."':
            # a9 # r315
            jump dust_s4

        '"Wer bist du?"':
            # a10 # r316
            jump dust_s4

        '"Wo bin ich hier?"':
            # a11 # r317
            jump dust_s4

        '"Ich hätte ein paar Fragen…"':
            # a12 # r319
            jump dust_s4

        'Laß ihn in Ruhe.':
            # a13 # r382
            jump dust_dispose


# s4 # say321
label dust_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'Der Staubmensch blickt langsam auf und dreht sich zu dir um. "Hast du dich verirrt?"'

    menu:
        '"Ja."':
            # a14 # r322
            jump dust_s5

        '"Nein."':
            # a15 # r323
            jump dust_s6

        '"Nein, ich habe mich nicht verirrt. Ich hätte da ein paar Fragen…"':
            # a16 # r324
            jump dust_s6

        '"Leb wohl."':
            # a17 # r325
            jump dust_s5


# s5 # say326
label dust_s5: # from 4.0 4.3 6.4 16.2 51.1
    nr '"Ich rufe einen Wächter, der dich hinausführen wird. Warte einen Augenblick."'

    menu:
        'Brich ihm das Genick, bevor er rufen kann.' if dustLogic.r327_condition():
            # a18 # r327
            jump dust_s44

        'Brich ihm das Genick, bevor er rufen kann.' if dustLogic.r328_condition():
            # a19 # r328
            jump dust_s41

        'Geh. Und zwar schnell.':
            # a20 # r329
            jump dust_s2

        'Warte.':
            # a21 # r1333
            jump dust_s2


# s6 # say330
label dust_s6: # from 4.1 4.2 51.2 51.3
    nr '"Was hast du hier zu suchen, wenn du dich nicht verirrt hast?"'

    menu:
        '"Das geht dich nichts an."':
            # a22 # r331
            jump dust_s7

        '"Ich bin auf einer der Totenbänke in eurem Vorbereitungsraum aufgewacht."':
            # a23 # r332
            jump dust_s8

        '"Ich bin hier, um jemandem zu treffen."':
            # a24 # r333
            jump dust_s9

        '"Ich bin wegen einer Bestattung hier, aber da scheint etwas schiefgelaufen zu sein."' if dustLogic.r334_condition():
            # a25 # r334
            jump dust_s16

        'Geh. Und zwar schnell.':
            # a26 # r337
            jump dust_s5


# s7 # say335
label dust_s7: # from 6.0 9.0 20.0
    nr '"Das geht mich leider sehr wohl etwas an. Vielleicht können dir die Wächter ja die Zunge lösen." Der Staubmensch geht einen Schritt zurück; er sieht aus, als würde er jeden Moment die Wachen rufen.'

    menu:
        'Brich ihm das Genick, bevor er rufen kann.' if dustLogic.r344_condition():
            # a27 # r344
            jump dust_s44

        'Brich ihm das Genick, bevor er rufen kann.' if dustLogic.r3887_condition():
            # a28 # r3887
            jump dust_s41

        '"Dann ruf sie doch zusammen. Würde sie gerne kennenlernen."':
            # a29 # r3888
            $ dustLogic.r3888_action()
            jump dust_dispose


# s8 # say336
label dust_s8: # from 6.1 16.0 20.1
    nr '"Du machst wohl Witze? Vielleicht würdest du das gerne den Wachen erzählen." Er sieht aus, als würde er jeden Moment die Wachen rufen.'

    menu:
        'Brich ihm das Genick, bevor er rufen kann.' if dustLogic.r358_condition():
            # a30 # r358
            jump dust_s44

        'Brich ihm das Genick, bevor er rufen kann.' if dustLogic.r3885_condition():
            # a31 # r3885
            jump dust_s41

        '"Dann ruf sie doch zusammen. Würde sie gerne kennenlernen."':
            # a32 # r3886
            $ dustLogic.r3886_action()
            jump dust_dispose


# s9 # say338
label dust_s9: # from 6.2 20.2
    nr '"Wen möchtest du hier treffen?"'

    menu:
        '"Das geht dich nichts an."':
            # a33 # r3922
            jump dust_s7

        '"Ich bin gekommen, um Dhall zu sehen."' if dustLogic.r342_condition():
            # a34 # r342
            jump dust_s10

        '"Ich bin gekommen, um Dhall zu sehen."' if dustLogic.r343_condition():
            # a35 # r343
            jump dust_s11

        '"Ich bin gekommen, um Deionarra zu sehen."' if dustLogic.r33183_condition():
            # a36 # r33183
            jump dust_s13

        '"Ich bin gekommen, um Deionarra zu sehen."' if dustLogic.r33185_condition():
            # a37 # r33185
            jump dust_s12

        '"Ich bin gekommen, um Soego zu sehen."' if dustLogic.r33186_condition():
            # a38 # r33186
            jump dust_s15

        '"Ich bin gekommen, um Soego zu sehen."' if dustLogic.r33187_condition():
            # a39 # r33187
            jump dust_s14

        'Lüge: "Äh… Adahn. Arbeitet er noch hier, oder…?"' if dustLogic.r33189_condition():
            # a40 # r33189
            $ dustLogic.r33189_action()
            jump dust_s21

        'Lüge: "Äh… Adahn. Arbeitet er noch hier, oder…?"' if dustLogic.r33190_condition():
            # a41 # r33190
            jump dust_s21

        '"Äh, niemanden. Ich hab„ mich versprochen."':
            # a42 # r33191
            jump dust_s20


# s10 # say345
label dust_s10: # from 9.1
    nr '"Dhall ist im Empfangsraum auf diesem Stockwerk. Ich warne dich… er hat alle Hände voll zu tun und ist nicht gerade bei bester Gesundheit. Wenn es nicht absolut dringend ist, würde ich ihn lieber nicht stören."'

    menu:
        '"Also gut. Danke für die Auskunft."':
            # a43 # r347
            jump dust_s48


# s11 # say346
label dust_s11: # from 9.2
    nr '"Dhall ist höchstwahrscheinlich im Empfangsraum im ersten Stock. Er hat alle Hände voll zu tun und ist nicht gerade bei bester Gesundheit. Wenn es nicht absolut dringend ist, würde ich ihn lieber nicht stören."'

    menu:
        '"Also gut. Danke für die Auskunft."':
            # a44 # r348
            jump dust_s48


# s12 # say349
label dust_s12: # from 9.4 19.1
    nr '"Deionarra? Ich weiß, daß in der Gedenkhalle im Erdgeschoß eine Frau bestattet ist. Ob sie das ist?"'

    menu:
        '"Höchstwahrscheinlich. Vielen Dank."':
            # a45 # r352
            jump dust_s48


# s13 # say350
label dust_s13: # from 9.3
    nr '"Deionarra? Ich weiß, daß im Nordwesten der Gedenkhalle eine Frau bestattet ist. Ob sie das ist?"'

    menu:
        '"Höchstwahrscheinlich. Vielen Dank."':
            # a46 # r353
            jump dust_s48


# s14 # say351
label dust_s14: # from 9.6
    nr '"Ich glaube, Soego ist am Haupttor im Erdgeschoß. Er arbeitet hier während des Tiefstands als Führer."'

    menu:
        '"Also gut. Vielen Dank."':
            # a47 # r354
            jump dust_s48


# s15 # say355
label dust_s15: # from 9.5
    nr '"Ich glaube, Soego ist am Haupttor. Er arbeitet hier während des Tiefstands als Führer."'

    menu:
        '"Also gut. Vielen Dank."':
            # a48 # r356
            jump dust_s48


# s16 # say357
label dust_s16: # from 6.3 20.3
    nr '"Wer sollte bestattet werden? Vielleicht finden die Feierlichkeiten woanders in der Leichenhalle statt."'

    menu:
        '"Du verstehst mich falsch… ICH sollte bestattet werden."':
            # a49 # r359
            jump dust_s8

        '"Das könnte sein. Wo finden diese anderen Zeremonien statt?"':
            # a50 # r360
            jump dust_s17

        '"Kannst du mir den Weg hier raus zeigen?"':
            # a51 # r361
            jump dust_s5


# s17 # say362
label dust_s17: # from 16.1
    nr '"Mehrere Grabkammern umgeben die Leichenhalle. Sie folgen dem Verlauf der Mauer im Erdgeshoß und im ersten Stock. Kennst du den Namen des Verstorbenen?"'

    menu:
        '"Nein."':
            # a52 # r363
            jump dust_s18

        '"Ja."':
            # a53 # r364
            jump dust_s19


# s18 # say365
label dust_s18: # from 17.0
    nr '"Frag doch einfach einen der Führer am Haupttor. Sie können dir bestimmt helfen."'

    menu:
        '"Also gut. Vielen Dank."':
            # a54 # r366
            jump dust_dispose


# s19 # say367
label dust_s19: # from 17.1
    nr 'Der Staubmensch wartet.'

    menu:
        '"Entschuldigung… Ich hab„ mich versprochen. Ich kenne den Namen des Verstorbenen nicht."':
            # a55 # r369
            jump dust_s20

        '"Ihr Name ist Deionarra."' if dustLogic.r370_condition():
            # a56 # r370
            jump dust_s12

        'Lüge: "Sein Name ist… äh, Adahn."' if dustLogic.r371_condition():
            # a57 # r371
            $ dustLogic.r371_action()
            jump dust_s21

        'Lüge: "Sein Name ist… äh, Adahn."' if dustLogic.r372_condition():
            # a58 # r372
            jump dust_s21

        'Beug dich nach vorne, als wenn du ihm etwas zuflüstern wolltest, und brich ihm das Genick.' if dustLogic.r373_condition():
            # a59 # r373
            jump dust_s44

        'Beug dich nach vorne, als wenn du ihm etwas zuflüstern wolltest, und brich ihm das Genick.' if dustLogic.r1335_condition():
            # a60 # r1335
            jump dust_s45

        'Lauf weg, so schnell du kannst.':
            # a61 # r1336
            jump dust_s2


# s20 # say374
label dust_s20: # from 9.9 19.0
    nr '"Ah ja. Und was hast du hier zu suchen?"'

    menu:
        '"Geht dich nichts an."':
            # a62 # r375
            jump dust_s7

        '"Ich bin auf einer der Totenbänke in eurem Vorbereitungsraum aufgewacht."':
            # a63 # r376
            jump dust_s8

        '"Ich bin hier, um jemandem zu treffen."':
            # a64 # r377
            jump dust_s9

        '"Ich bin wegen einer Bestattung hier, aber da scheint etwas schiefgelaufen zu sein."' if dustLogic.r378_condition():
            # a65 # r378
            jump dust_s16

        'Lauf weg, so schnell du kannst.':
            # a66 # r379
            jump dust_s2


# s21 # say368
label dust_s21: # from 9.7 9.8 19.2 19.3
    nr '"Nie gehört. Frag doch einfach einen der Führer am Haupttor… sie können dir vielleicht mehr sagen."'

    menu:
        '"Also gut. Das mach ich. Leb wohl."':
            # a67 # r380
            jump dust_s48


# s22 # say294
label dust_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'Der blasse Mann trägt eine lange dunkle Robe und riecht leicht muffig. Sein Gesicht ist ausdruckslos; er scheint in seine Arbeit vertieft.'

    menu:
        '"Sei gegrüßt."':
            # a68 # r295
            jump dust_s23

        'Laß ihn in Frieden.':
            # a69 # r297
            jump dust_dispose


# s23 # say381
label dust_s23: # from 22.0
    nr 'Er dreht sich langsam um; seine Augen gleiten auf deine Robe. "Sei gegrüßt, Mitwisser."'

    menu:
        '"Wer bist du?"':
            # a70 # r383
            jump dust_s24

        '"Wo bin ich hier?"':
            # a71 # r384
            jump dust_s25

        '"Ich hätte ein paar Fragen…"':
            # a72 # r391
            jump dust_s26

        'Laß ihn in Ruhe.':
            # a73 # r392
            jump dust_dispose


# s24 # say393
label dust_s24: # from 23.0
    nr '"Das möchte ich auch gerne von dir wissen. Ich kenne dein Gesicht nicht. Wer bist du?"'

    menu:
        'Lüge: "Sein Name ist… äh, Adahn."' if dustLogic.r450_condition():
            # a74 # r450
            $ dustLogic.r450_action()
            jump dust_s49

        'Lüge: "Sein Name ist… äh, Adahn."' if dustLogic.r1337_condition():
            # a75 # r1337
            jump dust_s49

        '"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."' if dustLogic.r3904_condition():
            # a76 # r3904
            jump dust_s47

        '"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."' if dustLogic.r3905_condition():
            # a77 # r3905
            jump dust_s46


# s25 # say394
label dust_s25: # from 23.1
    nr '"Dies ist die Leichenhalle…" Der Staubmensch schaut dich an, als müßte er erst verdauen, was du gesagt hast. "Wie war doch gleich dein Name?"'

    menu:
        'Lüge: "Sein Name ist… äh, Adahn."' if dustLogic.r399_condition():
            # a78 # r399
            $ dustLogic.r399_action()
            jump dust_s49

        'Lüge: "Sein Name ist… äh, Adahn."' if dustLogic.r3906_condition():
            # a79 # r3906
            jump dust_s49

        '"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."' if dustLogic.r3907_condition():
            # a80 # r3907
            jump dust_s47

        '"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."' if dustLogic.r3908_condition():
            # a81 # r3908
            jump dust_s46


# s26 # say400
label dust_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'Der Staubmensch wartet geduldig darauf, daß du fortfährst.'

    menu:
        '"Kannst du mir sagen, wie ich hier rauskomme?"':
            # a82 # r401
            jump dust_s27

        '"Kennst du jemanden namens Pharod?"':
            # a83 # r402
            jump dust_s28

        '"Ich vermisse ein Journal. Hast du es zufällig gesehen?"':
            # a84 # r403
            jump dust_s39

        '"Schon gut. Tut mir leid, daß ich dich gestört habe."':
            # a85 # r404
            jump dust_s48


# s27 # say405
label dust_s27: # from 26.0
    nr '"Am besten du gehst einfach durch das Haupttor. Es ist im Erdgeschoß."'

    menu:
        '"Ich hätte noch ein paar Fragen…"':
            # a86 # r406
            jump dust_s26

        'Vielen Dank. Leb wohl."':
            # a87 # r407
            jump dust_s48


# s28 # say408
label dust_s28: # from 26.1
    nr '"Dieser Name…" Der Staubmensch hält kurz inne. "Dieser Name kommt mir irgendwie *bekannt* vor… ich glaube, es gab da mal einen Sammler, der so hieß. Dhall, der Schreiberling, könnte ihn kennen."'

    menu:
        '"Sammler?"':
            # a88 # r409
            jump dust_s29

        '"Dhall?"':
            # a89 # r410
            jump dust_s30

        '"Ich hätte noch ein paar andere Fragen…"':
            # a90 # r411
            jump dust_s26

        '"Danke, daß du dir für mich Zeit genommen hast. Leb wohl."':
            # a91 # r425
            jump dust_s48


# s29 # say412
label dust_s29: # from 28.0
    nr '"Sammler… lesen Tote von den Straßen Sigils auf und schaffen sie in die Leichenhalle…" Der Staubmensch zögert, dann runzelt er die Stirn. "Du bist nicht von hier. Wer bist du?"'

    menu:
        '"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."' if dustLogic.r413_condition():
            # a92 # r413
            jump dust_s50

        '"Ich bin… hier neu. Ich… versuche mich zurechtzufinden."' if dustLogic.r3918_condition():
            # a93 # r3918
            jump dust_s47

        '"Nun ja… was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."' if dustLogic.r3919_condition():
            # a94 # r3919
            jump dust_s47

        '"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der„s kann. Leb wohl."' if dustLogic.r3920_condition():
            # a95 # r3920
            jump dust_s46


# s30 # say414
label dust_s30: # from 28.1
    nr '"Dhall ist eines der angesehensten Mitglieder unseres Bundes. Ich kenne niemanden, der mehr über das Wesen des Wahren Todes nachgedacht oder sich mehr darum verdient gemacht hätte als er. Er kann viel Wissen weitergeben. Wenn du ihn nicht kennst, solltest du die erste Gelegenheit nutzen, mit ihm zu reden. Er wird nicht mehr lange im Schatten dieser Existenz verweilen."'

    menu:
        '"„Er wird nicht mehr lange im Schatten dieser Existenz veweilen“?"':
            # a96 # r415
            jump dust_s31

        '"Wo kann ich Dhall finden?"' if dustLogic.r416_condition():
            # a97 # r416
            jump dust_s32

        '"Wo finde ich Dhall?"' if dustLogic.r417_condition():
            # a98 # r417
            jump dust_s33

        '"Ich hätte noch ein paar Fragen…"':
            # a99 # r418
            jump dust_s26

        '"Danke für die Information. Ich werde mit ihm reden."':
            # a100 # r33204
            jump dust_s48


# s31 # say419
label dust_s31: # from 30.0 32.0 33.0
    nr 'Nickt. "Dhall ist krank. Er ist alt, selbst für einen Githzerai. Der Tod ist ihm gewiß nach diesem Siechtum. Er ist wirklich gesegnet."'

    menu:
        '"Für einen Githzerai?"':
            # a101 # r420
            jump dust_s34

        '"Was ist ein „Githzerai“?"':
            # a102 # r421
            jump dust_s35

        '"Gesegnet?"':
            # a103 # r422
            jump dust_s36

        '"Ich verstehe. Ich hätte noch ein paar Fragen…"':
            # a104 # r423
            jump dust_s26

        '"Danke, daß du dir für mich Zeit genommen hast. Ich muß jetzt gehen."':
            # a105 # r424
            jump dust_s48


# s32 # say427
label dust_s32: # from 30.1
    nr '"Dhall ist im Empfangsraum in der nordwestlichen Winkel dieses Stockwerks. Ich warne dich… Dhall ist ziemlich beschäftigt… wenn er nicht gerade seiner Arbeit nachgeht, wird ein Großteil seiner Zeit von seiner Krankheit beansprucht."'

    menu:
        '"Ist Dhall krank?"':
            # a106 # r428
            jump dust_s31

        '"Danke, daß du dir für mich Zeit genommen hast. Ich muß mich jetzt verabschieden. Leb wohl."':
            # a107 # r429
            jump dust_s48


# s33 # say426
label dust_s33: # from 30.2
    nr '"Dhall ist höchstwahrscheinlich im Empfangsraum im ersten Stock. An deiner Stelle würde ich ihn nicht allzu lang aufhalten, da er alle Hände voll zu tun hat… wenn er nicht gerade seinen Pflichten nachkommt, schlägt er sich die meiste Zeit mit seiner Krankheit herum."'

    menu:
        '"Ist Dhall krank?"':
            # a108 # r430
            jump dust_s31

        '"Danke, daß du mir ein wenig Zeit geopfert hast. Ich muß mich jetzt von dir verabschieden. Leb wohl."':
            # a109 # r431
            jump dust_s48


# s34 # say432
label dust_s34: # from 31.0
    nr '"Ja, die Githzerai leben wesentlich länger als die Menschen."'

    menu:
        '"Was ist ein „Githzerai“?"':
            # a110 # r433
            jump dust_s35

        '"Wieso bezeichnest Du Dhalls Tod als Segen? Er ist wohl nicht sehr beliebt?"':
            # a111 # r437
            jump dust_s36

        '"Oh. Ich hätte noch ein paar Fragen…"':
            # a112 # r438
            jump dust_s26

        '"Vielen Dank für deine Zeit. Auf bald."':
            # a113 # r440
            jump dust_s48


# s35 # say435
label dust_s35: # from 31.1 34.0
    nr '"Die Githzerai sind…" Der Staubmensch zögert; dann runzelt er die Stirn und starrt dich durchdringend an. "Du bist nicht von hier. Wer bist du?"'

    menu:
        '"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."' if dustLogic.r436_condition():
            # a114 # r436
            jump dust_s50

        '"Ich bin… hier neu. Ich… versuche mich zurechtzufinden."' if dustLogic.r3909_condition():
            # a115 # r3909
            jump dust_s47

        '"Nun ja… was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."' if dustLogic.r3910_condition():
            # a116 # r3910
            jump dust_s47

        '"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der„s kann. Leb wohl."' if dustLogic.r3911_condition():
            # a117 # r3911
            jump dust_s46


# s36 # say439
label dust_s36: # from 31.2 34.1
    nr '"Er ist  gesegnet, weil er den Wahren Tod erlangen wird. Dann braucht er nicht mehr im Schatten dieser Existenz zu verweilen."'

    menu:
        '"Und… das ist gut?"':
            # a118 # r441
            jump dust_s37

        '"Ich verstehe. Wirklich ein Segen. Ich hätte da noch ein paar Fragen…"':
            # a119 # r442
            jump dust_s26

        '"Ich verstehe. Nun, ich muß mich jetzt von dir verabschieden. Leb wohl."':
            # a120 # r443
            jump dust_s48


# s37 # say444
label dust_s37: # from 36.0
    nr 'Der Staubmensch nickt. "Ja." Er runzelt die Stirn, dann mustert er dich prüfend. "Du bist nicht von hier. Wer bist du?"'

    menu:
        '"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."' if dustLogic.r445_condition():
            # a121 # r445
            jump dust_s50

        '"Ich bin… hier neu. Ich… versuche mich zurechtzufinden."' if dustLogic.r446_condition():
            # a122 # r446
            jump dust_s47

        '"Nun ja… was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."' if dustLogic.r3912_condition():
            # a123 # r3912
            jump dust_s47

        '"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der„s kann. Leb wohl."' if dustLogic.r3913_condition():
            # a124 # r3913
            jump dust_s46


# s38 # say447
label dust_s38: # -
    nr '"Du bist keiner von uns, oder? Was hast du hier zu suchen? Bist du ein Anarchist? Oder ein Spitzel eines anderen Bundes? Wachen! Wachen!"'

    menu:
        '"Verdammt!"':
            # a125 # r448
            $ dustLogic.r448_action()
            jump dust_dispose

        '"Schhhh! Ich kann dir ja gar keine Antwort geben, wenn du so schreist!"' if dustLogic.r449_condition():
            # a126 # r449
            $ dustLogic.r449_action()
            jump dust_dispose

        '"Schhhh! Ich kann dir ja gar keine Antwort geben, wenn du so schreist!"' if dustLogic.r1339_condition():
            # a127 # r1339
            $ dustLogic.r1339_action()
            jump dust_dispose


# s39 # say398
label dust_s39: # from 26.2
    nr '"Ein Journal? Ich habe keines gesehen."'

    menu:
        '"Ich hätte noch ein paar Fragen…"':
            # a128 # r451
            jump dust_s26

        '"Ich muß mich jetzt verabschieden. Leb wohl."':
            # a129 # r452
            jump dust_s48


# s40 # say1419
label dust_s40: # -
    nr 'Der blasse Mann trägt eine lange dunkle Robe und riecht leicht muffig. Sein Gesicht ist ausdruckslos; er scheint in seine Arbeit vertieft.'

    menu:
        '"Sei gegrüßt."' if dustLogic.r1420_condition():
            # a130 # r1420
            jump morte_s61  # EXTERN

        '"Sei gegrüßt."' if dustLogic.r1421_condition():
            # a131 # r1421
            jump morte_s63  # EXTERN

        '"Sei gegrüßt."' if dustLogic.r1422_condition():
            # a132 # r1422
            jump dust_s4

        '"Sei gegrüßt."' if dustLogic.r1423_condition():
            # a133 # r1423
            jump dust_s4

        'Laß ihn in Frieden.':
            # a134 # r1424
            jump dust_dispose


# s41 # say1425
label dust_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr 'Bevor der Staubmensch auch nur ein Wort sagen kann, packst du ihn an den Schläfen und drehst seinen Kopf ruckartig nach links.'

    menu:
        '"Ich kann nicht zulassen, daß du deine Freunde warnst…"':
            # a135 # r1426
            $ dustLogic.r1426_action()
            jump dust_s42


# s42 # say1427
label dust_s42: # from 41.0 45.0
    nr 'Es macht *Knacks*, und der Staubmensch fällt dir erschlafft in die Arme.'

    menu:
        '"Besser du als ich, Staubie."' if dustLogic.r1428_condition():
            # a136 # r1428
            $ dustLogic.r1428_action()
            jump dust_s43

        '"Besser du als ich, Staubie."' if dustLogic.r1429_condition():
            # a137 # r1429
            $ dustLogic.r1429_action()
            jump dust_dispose


# s43 # say1430
label dust_s43: # from 42.0
    nr 'Zu deiner Überraschung scheint diese Handlung instinktiv zu sein, als hättest du das schon viele Male getan. Mit diesem Gedanken regt sich eine vage Erinnerung, die jedoch nicht stark genug ist, um an die Oberfläche zu gelangen.'

    menu:
        'Laß die Leiche liegen, geh weiter.':
            # a138 # r3882
            $ dustLogic.r3882_action()
            jump dust_dispose


# s44 # say3883
label dust_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr 'Du bist nicht schnell genug. Der Staubmensch weicht deinem Angriffsversuch aus. Er geht einen Schritt zurück und klatscht dreimal fest in Hände. Daraufhin ertönt der Klang einer großen Eisenglocke durch die ganze Leichenhalle.'

    menu:
        '"Nun gut…"':
            # a139 # r3884
            $ dustLogic.r3884_action()
            jump dust_dispose


# s45 # say3889
label dust_s45: # from 19.5
    nr 'Als du dich vorbeugst, um ihm etwas „zuzuflüstern“, beugt der Staubmensch seinen Kopf auch nach vorn. Als er in Reichweite kommt, packst du ihn an den Schläfen und drehst seinen Kopf ruckartig nach links.'

    menu:
        '"Ich kann nicht zulassen, daß du deine Freunde warnst…"':
            # a140 # r3890
            $ dustLogic.r3890_action()
            jump dust_s42


# s46 # say3891
label dust_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'Der Staubmensch wirkt mißtrauisch. Er sieht aus, als würde er jeden Moment etwas sagen, doch dann schüttelt er nur kurz den Kopf und wendet sich wieder seiner Arbeit zu.'

    menu:
        'Geh einfach weg.':
            # a141 # r3892
            jump dust_dispose


# s47 # say3893
label dust_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'Der Staubmensch mustert dich aufmerksam. "Du bist keiner von uns, oder? Was führt dich hierher? Bist du ein Anarchist? Oder ein Spitzel eines anderen Bundes? Ich glaube, dies ist ein Fall für die Wache…"'

    menu:
        'Brich ihm das Genick, bevor er rufen kann.' if dustLogic.r3914_condition():
            # a142 # r3914
            jump dust_s44

        'Brich ihm das Genick, bevor er rufen kann.' if dustLogic.r3915_condition():
            # a143 # r3915
            jump dust_s41

        '"Nein, nein… das stimmt nicht, äh… Ich meine, ich bin kein Spitzel… weißt du, ich bin hier auf einer der Totenbänke aufgewacht… und…"':
            # a144 # r3916
            jump dust_s2

        'Geh. Und zwar schnell.':
            # a145 # r3917
            jump dust_s2


# s48 # say3894
label dust_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 21.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'Der Staubmensch nickt, bevor er sich wieder seiner Arbeit zuwendet.'

    menu:
        'Geh einfach weg.':
            # a146 # r3895
            jump dust_dispose


# s49 # say3896
label dust_s49: # from 24.0 24.1 25.0 25.1
    nr 'Der Staubmensch runzelt die Stirn. "Dieser Name kommt mir nicht bekannt vor."'

    menu:
        '"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."' if dustLogic.r3898_condition():
            # a147 # r3898
            jump dust_s50

        '"Ich… bin hier neu. Ich… bin dabei, mich einzuarbeiten."' if dustLogic.r3899_condition():
            # a148 # r3899
            jump dust_s47

        '"Nun ja… was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."' if dustLogic.r3900_condition():
            # a149 # r3900
            jump dust_s47

        '"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der„s kann. Leb wohl."' if dustLogic.r3901_condition():
            # a150 # r3901
            jump dust_s46


# s50 # say3897
label dust_s50: # from 29.0 35.0 37.0 49.0
    nr 'Der Staubmensch runzelt weiter die Stirn und sagt mit einem leichten Nicken: "Sehr gut. Was kann ich für dich tun, Eingeweihter?"'

    menu:
        '"Ich hätte da ein paar Fragen…"':
            # a151 # r3902
            jump dust_s26

        '"Heute grade nicht. Leb wohl."':
            # a152 # r3903
            jump dust_s46


# s51 # say66674
label dust_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'Der Staubmensch sieht dich mit versteinerter Miene an. "Hast du dich verlaufen?"'

    menu:
        '"Nein, ich bin Mitglied des Bundes. Ich seh mir nur ein bißchen die Leichenhalle an."' if dustLogic.r66675_condition():
            # a153 # r66675
            jump dust_s52

        '"Ja."' if dustLogic.r66676_condition():
            # a154 # r66676
            jump dust_s5

        '"Nein."' if dustLogic.r66677_condition():
            # a155 # r66677
            jump dust_s6

        '"Nein, ich hab mich nicht verlaufen. Ich hätte da ein paar Fragen…"' if dustLogic.r66678_condition():
            # a156 # r66678
            jump dust_s6

        '"Leb wohl."' if dustLogic.r66679_condition():
            # a157 # r66679
            jump dust_s2


# s52 # say66681
label dust_s52: # from 51.0
    nr 'Der Staubmensch starrt dich einen Moment lang an und nickt dann. "Nun denn. Sag mir bescheid, wenn du Hilfe brauchst."'

    menu:
        '"Mach ich. Leb wohl."':
            # a158 # r66682
            jump dust_dispose
