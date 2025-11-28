init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.vaxis_logic import VaxisLogic
    vaxisLogic = VaxisLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DVAXIS.DLG
# ###


# s0 # say453
label vaxis_s0: # - # IF ~  Global("Vaxis","GLOBAL",0)
    nr 'Die elendige Leiche starrt dich mit leerem Blick an. Auf ihrer Stirn ist die Zahl "821" eingeritzt, und ihre Lippen sind zugenäht. Dem Körper entströmt ein leichter Formaldehydgeruch.{#vaxis_s0_1}'

    menu:
        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"{#vaxis_s0_r454}' if vaxisLogic.r454_condition():
            # a0 # r454
            $ vaxisLogic.r454_action()
            jump vaxis_s5

        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"{#vaxis_s0_r455}' if vaxisLogic.r455_condition():
            # a1 # r455
            jump vaxis_s5

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#vaxis_s0_r456}' if vaxisLogic.r456_condition():
            # a2 # r456
            jump vaxis_s5

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#vaxis_s0_r457}' if vaxisLogic.r457_condition():
            # a3 # r457
            jump vaxis_s1

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#vaxis_s0_r458}':
            # a4 # r458
            jump vaxis_s5

        'Laß die Leiche in Ruhe.{#vaxis_s0_r459}':
            # a5 # r459
            jump vaxis_dispose


# s1 # say460
label vaxis_s1: # from 0.3 # IF ~  False()
    nr 'Merkwürdigerweise scheinen deine Fähigkeiten bei dieser Leiche wirkungslos zu bleiben.{#vaxis_s1_1}'

    menu:
        'Pieks ihr ins Auge.{#vaxis_s1_r461}':
            # a6 # r461
            $ vaxisLogic.r461_action()
            jump vaxis_s2

        'Laß die Leiche in Ruhe.{#vaxis_s1_r462}':
            # a7 # r462
            jump vaxis_dispose


# s2 # say463
label vaxis_s2: # from 1.0
    nr 'Die Leiche stößt einen gedämpften Schrei aus, als du ihr ins Auge stichst, und blitzschnell legt sie ihre Hände vors Gesicht. Keuchend gibt sie irgendwelches Zeug von sich, das du für Obszönitäten hältst.{#vaxis_s2_1}'

    menu:
        '"Du bist kein Zombie! Wer bist du?"{#vaxis_s2_r464}':
            # a8 # r464
            $ vaxisLogic.j64513_s2_r464_action()
            jump vaxis_s6

        '"Warum spielst du hier eine Leiche?"{#vaxis_s2_r465}':
            # a9 # r465
            $ vaxisLogic.j64513_s2_r465_action()
            jump vaxis_s6

        'Geh. Und zwar schnell.{#vaxis_s2_r466}':
            # a10 # r466
            $ vaxisLogic.j64513_s2_r466_action()
            jump vaxis_s3


# s3 # say467
label vaxis_s3: # from 2.2 5.2
    nr 'Als du dich umdrehst und gehen willst, murmelt der „Zombie“ irgendetwas… als würde er versuchen, etwas zu sagen, was jedoch mit großen Schwierigkeiten verbunden ist, da seine Lippen zugenäht sind. "Mwer mbist DU? Mwas mwillst du?"{#vaxis_s3_1}'

    menu:
        '"Ich suche nach einem Weg hier raus. Kannst du mir helfen?"{#vaxis_s3_r468}' if vaxisLogic.r468_condition():
            # a11 # r468
            jump vaxis_s7

        '"Wer bist du?"{#vaxis_s3_r469}':
            # a12 # r469
            jump vaxis_s7

        '"Sag mir, wer du bist, oder ich rufe die Wache."{#vaxis_s3_r470}':
            # a13 # r470
            jump vaxis_s7

        'Lüge: "Na… Ich habe nach dir gesucht."{#vaxis_s3_r472}' if vaxisLogic.r472_condition():
            # a14 # r472
            $ vaxisLogic.r472_action()
            jump vaxis_s24

        '"Ich bin hier der, der Fragen stellt, *Zombie*. Sag mir, wer du bist, oder du brauchst dich nicht länger als Zombie zu VERKLEIDEN."{#vaxis_s3_r473}':
            # a15 # r473
            $ vaxisLogic.r473_action()
            jump vaxis_s7

        '"Tut mir leid, wollte nicht stören… wer immer du auch sein magst. Leb wohl."{#vaxis_s3_r474}':
            # a16 # r474
            jump vaxis_s4


# s4 # say471
label vaxis_s4: # from 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
    nr 'Als du dich umdrehst und gehen willst, vernimmst du einen kehligen Laut aus der Richtung des Zombies. "Mkein Mwort über MICH, zu niemndm. Mund hulten. Mkein WORT zu den Stubies." Er legt den Finger auf die Lippen. "Schhhhhh." Dann streicht er mit dem Finger über seine Kehle. "Oder ich muß mdir im Schluf die Mkehle durchschneiden. MKLAR?"{#vaxis_s4_1}'

    menu:
        '"Sollte das eine DROHUNG sein? Das war„s dann… bereite dich schon mal auf den Tod vor."{#vaxis_s4_r475}':
            # a17 # r475
            $ vaxisLogic.r475_action()
            jump vaxis_dispose

        'Lüge: "Ich würde nicht mal im Traum daran denken, den Staubmenschen von dir zu erzählen."{#vaxis_s4_r476}':
            # a18 # r476
            $ vaxisLogic.r476_action()
            jump vaxis_dispose

        'Wahrheit: "Ich verspreche, den Staubmenschen nichts von dir zu erzählen."{#vaxis_s4_r477}':
            # a19 # r477
            $ vaxisLogic.r477_action()
            jump vaxis_dispose

        '"Was auch immer. Kümmer du dich um deine Angelegenheiten, dann kümmer ich mich um meine."{#vaxis_s4_r478}':
            # a20 # r478
            jump vaxis_dispose


# s5 # say479
label vaxis_s5: # from 0.0 0.1 0.2 0.4
    nr 'Als du den Zombie ansprichst, blinzelt er überrascht. "Jaaa? Mwas?"{#vaxis_s5_1}'

    menu:
        '"Du bist kein Zombie! Wer bist du?"{#vaxis_s5_r480}':
            # a21 # r480
            $ vaxisLogic.r480_action()
            jump vaxis_s6

        '"Warum spielst du Leiche?"{#vaxis_s5_r481}':
            # a22 # r481
            $ vaxisLogic.r481_action()
            jump vaxis_s6

        'Geh. Und zwar schnell.{#vaxis_s5_r482}':
            # a23 # r482
            $ vaxisLogic.r482_action()
            jump vaxis_s3


# s6 # say483
label vaxis_s6: # from 2.0 2.1 5.0 5.1
    nr 'Der „Zombie“ versucht durch seine zugenähten Lippen hindurch zu antworten; seine Miene ist eine merkwürdige Mischung aus Angst und Wut. "Mwer mbist DU? Mwas mwillst du?"{#vaxis_s6_1}'

    menu:
        '"Ich suche nach einem Weg hier raus. Kannst du mir helfen?"{#vaxis_s6_r484}' if vaxisLogic.r484_condition():
            # a24 # r484
            jump vaxis_s7

        '"Wer bist du?"{#vaxis_s6_r485}':
            # a25 # r485
            jump vaxis_s7

        '"Sag mir, wer du bist, oder ich rufe die Wache."{#vaxis_s6_r486}':
            # a26 # r486
            jump vaxis_s7

        'Lüge: "Na… Ich habe nach dir gesucht."{#vaxis_s6_r487}' if vaxisLogic.r487_condition():
            # a27 # r487
            $ vaxisLogic.r487_action()
            jump vaxis_s24

        '"Ich bin hier der, der Fragen stellt, *Zombie*. Sag mir, wer du bist, oder du brauchst dich nicht länger als Zombie zu VERKLEIDEN."{#vaxis_s6_r488}':
            # a28 # r488
            $ vaxisLogic.r488_action()
            jump vaxis_s7

        '"Tut mir leid, wollte nicht stören… wer immer du auch sein magst. Leb wohl."{#vaxis_s6_r489}':
            # a29 # r489
            jump vaxis_s4


# s7 # say490
label vaxis_s7: # from 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
    nr 'Der Zombie scheint dich nicht gehört zu haben. Er mustert dich einen Augenblick lang von Kopf bis Fuß, dann runzelt er die Stirn. "Mwas mwillst du?" Argwöhnisch kneift er seine Augen zusammen. "Stubies usspionieren?"{#vaxis_s7_1}'

    menu:
        '"Nein. Ich versuche hier rauszukommen."{#vaxis_s7_r491}' if vaxisLogic.r491_condition():
            # a30 # r491
            jump vaxis_s12

        '"Ich bin kein Spitzel. Ich wurde hier aus Versehen eingesperrt. Kannst du mir raushelfen?"{#vaxis_s7_r492}' if vaxisLogic.r492_condition():
            # a31 # r492
            jump vaxis_s31

        'Lüge: "Ja, Ich bespitzele die… Staubies."{#vaxis_s7_r493}' if vaxisLogic.r493_condition():
            # a32 # r493
            $ vaxisLogic.r493_action()
            jump vaxis_s8

        'Lüge: "Ja, Ich bespitzele die… Staubies."{#vaxis_s7_r494}' if vaxisLogic.r494_condition():
            # a33 # r494
            $ vaxisLogic.r494_action()
            jump vaxis_s9

        '"Sag mir lieber, was DU hier tust, bevor ich die Wache rufe."{#vaxis_s7_r495}' if vaxisLogic.r495_condition():
            # a34 # r495
            jump vaxis_s21

        '"Sag mir lieber, was DU hier tust, bevor ich die Wache rufe."{#vaxis_s7_r496}' if vaxisLogic.r496_condition():
            # a35 # r496
            jump vaxis_s17

        '"Moment mal: Ich bin hier der, der Fragen stellt, *Zombie*. Sag mir was du hier machst, oder deine Verkleidung wird zur Realität."{#vaxis_s7_r1306}' if vaxisLogic.r1306_condition():
            # a36 # r1306
            $ vaxisLogic.r1306_action()
            jump vaxis_s19

        '"Moment mal: Ich bin hier der, der Fragen stellt, *Zombie*. Sag mir was du hier machst, oder deine Verkleidung wird zur Realität."{#vaxis_s7_r1348}' if vaxisLogic.r1348_condition():
            # a37 # r1348
            $ vaxisLogic.r1348_action()
            jump vaxis_s22

        '"Ich muß mich verabschieden. Leb wohl."{#vaxis_s7_r1349}':
            # a38 # r1349
            jump vaxis_s4


# s8 # say1350
label vaxis_s8: # from 7.2
    nr 'Jetzt schaut er dich noch prüfender an. "Mdu Spion? Mghörst zu Zelle?"{#vaxis_s8_1}'

    menu:
        '"Hä?"{#vaxis_s8_r4671}':
            # a39 # r4671
            jump vaxis_s10

        '"Zelle?"{#vaxis_s8_r1352}':
            # a40 # r1352
            jump vaxis_s10

        'Lüge: "Ja… Ich habe nach dir gesucht. Endlich hab„ ich dich gefunden."{#vaxis_s8_r1359}' if vaxisLogic.r1359_condition():
            # a41 # r1359
            $ vaxisLogic.r1359_action()
            jump vaxis_s24

        'Lüge: "Ja… aber ich kann da jetzt nicht viel zu sagen, falls du mich verstehst. Und in was für einer Mission bist *du* hier?"{#vaxis_s8_r1360}' if vaxisLogic.r1360_condition():
            # a42 # r1360
            $ vaxisLogic.r1360_action()
            jump vaxis_s28

        'Lüge: "Ja… aber ich kann da jetzt nicht viel zu sagen. Und was machst du hier?"{#vaxis_s8_r1361}' if vaxisLogic.r1361_condition():
            # a43 # r1361
            $ vaxisLogic.r1361_action()
            jump vaxis_s28

        '"Äh, ich hab„ grad keine Zeit zum Schwatzen… vielleicht ein andermal."{#vaxis_s8_r1362}':
            # a44 # r1362
            jump vaxis_s4


# s9 # say1363
label vaxis_s9: # from 7.3
    nr 'Jetzt schaut er dich noch prüfender an. "Mdu Spion? Mghörst zu Zelle?"{#vaxis_s9_1}'

    menu:
        '"Hä?"{#vaxis_s9_r4359}':
            # a45 # r4359
            jump morte_s85  # EXTERN

        '"Zelle?"{#vaxis_s9_r4360}':
            # a46 # r4360
            jump morte_s85  # EXTERN


# s10 # say4361
label vaxis_s10: # from 8.0 8.1
    nr 'Er runzelt die Stirn, dann zischt er dich an. "Mdu kein Spion!" Er scheucht dich mit einer Geste fort. "Geh! Geh!"{#vaxis_s10_1}'

    menu:
        '"Erst mußt du mir sagen, was du hier tust, oder ich rufe die Wache."{#vaxis_s10_r4362}' if vaxisLogic.r4362_condition():
            # a47 # r4362
            jump vaxis_s21

        '"Erst mußt du mir sagen, was du hier tust, oder ich rufe die Wache."{#vaxis_s10_r4363}' if vaxisLogic.r4363_condition():
            # a48 # r4363
            jump vaxis_s17

        '"Verflucht, antworte auf meine Fragen, oder ich seh zu, daß deine Verkleidung zur Realität wird, bevor du auch nur drei Schritte weit kommst."{#vaxis_s10_r4364}' if vaxisLogic.r4364_condition():
            # a49 # r4364
            $ vaxisLogic.r4364_action()
            jump vaxis_s19

        '"Verflucht, antworte auf meine Fragen, oder ich seh zu, daß deine Verkleidung zur Realität wird, bevor du auch nur drei Schritte weit kommst."{#vaxis_s10_r4365}' if vaxisLogic.r4365_condition():
            # a50 # r4365
            $ vaxisLogic.r4365_action()
            jump vaxis_s22

        '"Schon gut, schon gut… Ich geh ja schon."{#vaxis_s10_r4367}':
            # a51 # r4367
            jump vaxis_s4


# s11 # say4366
label vaxis_s11: # externs morte_s86
    nr 'Der Zombie nickt jetzt, und du glaubst zu bemerken, daß er sich unter seiner Zombie-Tarnung vor Stolz aufplustert.{#vaxis_s11_1}'

    menu:
        '"Kannst du mir helfen, hier rauszukommen?"{#vaxis_s11_r4368}' if vaxisLogic.r4368_condition():
            # a52 # r4368
            jump vaxis_s12

        '"Nun, und was machst du hier?"{#vaxis_s11_r4369}':
            # a53 # r4369
            jump vaxis_s28

        'Lüge: "Du bist also ein Spitzel für die Anarchisten? Nun, ich bespitzle auch die Staubies… aber ich kann da jetzt nicht mehr zu sagen, falls du mich verstehst. Und auf was für einer Mission bist *du* hier?"{#vaxis_s11_r4370}' if vaxisLogic.r4370_condition():
            # a54 # r4370
            $ vaxisLogic.r4370_action()
            jump vaxis_s28

        'Lüge: "Du bist also ein Spitzel für die Anarchisten? Ich bespitzle die Staubies… aber ich kann da jetzt nicht mehr zu sagen. Und was machst du hier?"{#vaxis_s11_r4371}' if vaxisLogic.r4371_condition():
            # a55 # r4371
            $ vaxisLogic.r4371_action()
            jump vaxis_s28

        '"Äh, ich hab„ grad keine Zeit zum Schwatzen… vielleicht ein andermal."{#vaxis_s11_r4372}':
            # a56 # r4372
            jump vaxis_s4


# s12 # say4373
label vaxis_s12: # from 7.0 11.0
    nr 'Der Zombie scheint interessiert. "Mdu in Schwierigkitn? Mwas hust du mverbrochn?"{#vaxis_s12_1}'

    menu:
        '"Ich bin auf einer der Totenbänke oben aufgewacht."{#vaxis_s12_r4374}':
            # a57 # r4374
            jump vaxis_s13

        '"Ich bin hier irgendwie… gefangen. Kannst du mir raushelfen?"{#vaxis_s12_r4375}':
            # a58 # r4375
            jump vaxis_s31

        '"Vielleicht erzähl ich dir später mal davon."{#vaxis_s12_r4376}':
            # a59 # r4376
            jump vaxis_s4


# s13 # say4377
label vaxis_s13: # from 12.0
    nr 'Der Zombie schaut dich an, als wärst du verrückt. "Mbist du übergeschnuppt?"{#vaxis_s13_1}'

    menu:
        '"Ja, ich bin übergeschnappt. Total übergeschnappt."{#vaxis_s13_r4378}':
            # a60 # r4378
            jump vaxis_s14

        '"„Übergeschnappt“? Wie meinst„n das?"{#vaxis_s13_r4379}' if vaxisLogic.r4379_condition():
            # a61 # r4379
            jump vaxis_s16

        '"„Übergeschnappt“? Wie meinst„n das?"{#vaxis_s13_r4380}' if vaxisLogic.r4380_condition():
            # a62 # r4380
            jump morte_s87  # EXTERN

        '"Ich weiß, daß es unglaublich klingt, aber ich werde dich nicht anlügen. Ich bin auf einer der Totenbänke oben aufgewacht."{#vaxis_s13_r4381}':
            # a63 # r4381
            $ vaxisLogic.r4381_action()
            jump vaxis_s14

        '"Äh, nein… ehrlich gesagt bin ich hier irgendwie gefangen. Kannst du mir raushelfen?"{#vaxis_s13_r4382}':
            # a64 # r4382
            jump vaxis_s31

        '"Vergiß unsere Unterhaltung einfach. Ich muß jetzt gehen."{#vaxis_s13_r4383}':
            # a65 # r4383
            jump vaxis_s4


# s14 # say4384
label vaxis_s14: # from 13.0 13.3 15.0
    nr 'Er schaut dich an, dann scheucht er dich mit einer Geste fort und zischt. "Mdu bescheuert! Luß mich in Ruhe!"{#vaxis_s14_1}'

    menu:
        '"Ich gehe nirgendwo hin. Sag mir, was du hier tust, oder ich rufe die Wache."{#vaxis_s14_r4385}' if vaxisLogic.r4385_condition():
            # a66 # r4385
            jump vaxis_s21

        '"Ich gehe nirgendwo hin. Sag mir, was du hier tust, oder ich rufe die Wache."{#vaxis_s14_r4386}' if vaxisLogic.r4386_condition():
            # a67 # r4386
            jump vaxis_s17

        '"Verflucht, wirst du wohl zuerst auf meine Fragen antworten, oder ich seh zu, daß deine Verkleidung zur Realität wird."{#vaxis_s14_r4387}' if vaxisLogic.r4387_condition():
            # a68 # r4387
            $ vaxisLogic.r4387_action()
            jump vaxis_s19

        '"Verflucht, wirst du wohl zuerst auf meine Fragen antworten, oder ich seh zu, daß deine Verkleidung zur Realität wird."{#vaxis_s14_r4388}' if vaxisLogic.r4388_condition():
            # a69 # r4388
            $ vaxisLogic.r4388_action()
            jump vaxis_s22

        '"Schon gut, schon gut… leb wohl."{#vaxis_s14_r4389}':
            # a70 # r4389
            jump vaxis_s4


# s15 # say4390
label vaxis_s15: # externs morte_s88
    nr 'Der falsche Zombie schaut euch beide mißtrauisch an.{#vaxis_s15_1}'

    menu:
        '"Das ist die reine Wahrheit - ich bin auf einer der Totenbänke hier aufgewacht."{#vaxis_s15_r4391}':
            # a71 # r4391
            $ vaxisLogic.r4391_action()
            jump vaxis_s14

        '"Ähh, tut mir leid." Ehrlich gesagt bin ich hier irgendwie gefangen. Kannst du mir raushelfen?"{#vaxis_s15_r4392}':
            # a72 # r4392
            jump vaxis_s31

        '"Vergiß es. Ich muß los."{#vaxis_s15_r4393}':
            # a73 # r4393
            jump vaxis_s4


# s16 # say4394
label vaxis_s16: # from 13.1
    nr 'Er schaut dich an, dann scheucht er dich mit einer Geste fort und zischt. "Hohlkopfh! Idiot! Mweg hier, mdu Mdussel! Geh!"{#vaxis_s16_1}'

    menu:
        '"Ich gehe nirgendwo hin. Sag mir, was du hier tust, oder ich rufe die Wache."{#vaxis_s16_r4395}' if vaxisLogic.r4395_condition():
            # a74 # r4395
            jump vaxis_s21

        '"Ich gehe nirgendwo hin. Sag mir, was du hier tust, oder ich rufe die Wache."{#vaxis_s16_r4396}' if vaxisLogic.r4396_condition():
            # a75 # r4396
            jump vaxis_s17

        '"Verflucht, wirst du wohl zuerst auf meine Fragen antworten, oder ich seh zu, daß deine Verkleidung zur Realität wird."{#vaxis_s16_r4397}' if vaxisLogic.r4397_condition():
            # a76 # r4397
            $ vaxisLogic.r4397_action()
            jump vaxis_s19

        '"Verflucht, wirst du wohl zuerst auf meine Fragen antworten, oder ich seh zu, daß deine Verkleidung zur Realität wird."{#vaxis_s16_r4398}' if vaxisLogic.r4398_condition():
            # a77 # r4398
            $ vaxisLogic.r4398_action()
            jump vaxis_s22

        '"Schon gut, schon gut… Ich geh ja schon."{#vaxis_s16_r4399}':
            # a78 # r4399
            jump vaxis_s4


# s17 # say4400
label vaxis_s17: # from 7.5 10.1 14.1 16.1 25.3 27.3
    nr 'Einen Moment lang wirkt er ängstlich. Dann schaut er dich prüfend an und grinst spöttisch über das ganze Gesicht. "Mdu erzählst mir Mdunkel, ich erzähl *mdir* Mdunkel. Ich Freunde, hier versteckt, mdu *niemndn.* Mdu solltest nicht mhier sein. Mdich töten Stubies, ich mach mich us dem Stub."{#vaxis_s17_1}'

    menu:
        '"Du wirst nicht entkommen, wenn ich dich TÖTE. Und jetzt antworte auf meine Fragen, oder ich seh zu, daß deine Verkleidung zur Realität wird."{#vaxis_s17_r4401}' if vaxisLogic.r4401_condition():
            # a79 # r4401
            $ vaxisLogic.r4401_action()
            jump vaxis_s18

        '"Du wirst nicht entkommen, wenn ich dich TÖTE. Und jetzt antworte auf meine Fragen, oder ich seh zu, daß deine Verkleidung zur Realität wird."{#vaxis_s17_r4402}' if vaxisLogic.r4402_condition():
            # a80 # r4402
            $ vaxisLogic.r4402_action()
            jump vaxis_s22

        '"Dann schmor doch in der Hölle. Ich gehe."{#vaxis_s17_r4403}':
            # a81 # r4403
            jump vaxis_s4


# s18 # say4404
label vaxis_s18: # from 17.0
    nr 'Der Zombie kneift die Augen zusammen und zischt dich an. "Mdu WILLST mich ins Totenbuch stecken? Ich Freunde, hier versteckt, mdu *niemndn.* Mwenn mdu mir ein Mhaar krümmst, mtöten DICH meine Mfreunde."{#vaxis_s18_1}'

    menu:
        '"Ich werd„s wagen. Bereite dich schon mal auf den Tod vor."{#vaxis_s18_r4405}':
            # a82 # r4405
            $ vaxisLogic.r4405_action()
            jump vaxis_dispose

        '"Dann schmor doch in der Hölle. Ich gehe. Und du, nimm dich in acht… *Zombie*."{#vaxis_s18_r4406}':
            # a83 # r4406
            jump vaxis_s4


# s19 # say4407
label vaxis_s19: # from 7.6 10.2 14.2 16.2 25.4 27.4
    nr 'Einen Moment lang wirkt er ängstlich. Dann begutachtet er deine Statur und grinst spöttisch über das ganze Gesicht. "MDUUU MICH ins Totenbuch stecken? Ich Freunde, hier versteckt. Mdu *niemndn.* Mwenn mdu mir ein Mhaar krümmst, mtöten DICH meine Mfreunde."{#vaxis_s19_1}'

    menu:
        '"Ich werd„s wagen. Bereite dich schon mal auf den Tod vor."{#vaxis_s19_r4408}':
            # a84 # r4408
            $ vaxisLogic.r4408_action()
            jump vaxis_dispose

        '"Und wenn ich deine Verkleidung an die Wache verraten würde?"{#vaxis_s19_r4409}' if vaxisLogic.r4409_condition():
            # a85 # r4409
            jump vaxis_s21

        '"Und wenn ich deine Verkleidung an die Wache verraten würde?"{#vaxis_s19_r4410}' if vaxisLogic.r4410_condition():
            # a86 # r4410
            jump vaxis_s20

        '"Dann schmor doch in der Hölle. Ich gehe. Und du, nimm dich in acht… *Zombie*."{#vaxis_s19_r4411}':
            # a87 # r4411
            jump vaxis_s4


# s20 # say4412
label vaxis_s20: # from 19.2
    nr 'Der Zombie kneift die Augen zusammen und zischt dich an. "Mdu erzählst mir Mdunkel, ich erzähl *mdir* Mdunkel. Ich Freunde, hier versteckt, mdu *niemndn.* Mdu solltest nicht hier sein. Mdich töten Stuubies, ich mach mich us dem Stub."{#vaxis_s20_1}'

    menu:
        '"Das war deine letzte Chance, Leiche. Bereite dich schon mal auf den Tod vor."{#vaxis_s20_r4413}':
            # a88 # r4413
            $ vaxisLogic.r4413_action()
            jump vaxis_dispose

        '"Dann schmor doch in der Hölle. Ich gehe. Und du, nimm dich in acht, *Zombie*."{#vaxis_s20_r4414}':
            # a89 # r4414
            jump vaxis_s4


# s21 # say4415
label vaxis_s21: # from 7.4 10.0 14.0 16.0 19.1 25.2 27.2
    nr 'Irgendetwas in deinem Blick scheint den Zombie stark zu verunsichern. "Nein-nein-nicht! Kkeine Mwachen rufn!" Er scheint sich zu fürchten. "Ich-ich-ich mspioniere Stubies aus; sssage, mwas ich sehe. Sonst nnnichts."{#vaxis_s21_1}'

    menu:
        '"Spitzel? Für wen?"{#vaxis_s21_r4416}':
            # a90 # r4416
            jump vaxis_s23

        '"Hast du gesehen, was die Staubmenschen machen?"{#vaxis_s21_r4417}':
            # a91 # r4417
            jump vaxis_s29

        '"Ich hätte noch ein paar andere Fragen…"{#vaxis_s21_r4418}':
            # a92 # r4418
            jump vaxis_s43

        '"Das ist alles, was ich wissen wollte. Leb wohl, *Zombie*."{#vaxis_s21_r4419}':
            # a93 # r4419
            jump vaxis_dispose


# s22 # say4420
label vaxis_s22: # from 7.7 10.3 14.3 16.3 17.1 25.5 27.5
    nr '"Nein-nein-nicht! Nicht mweh tun!" Die Tatsache, daß du ein paar Kilo mehr Muskelmasse auf die Waage bringst, scheint die Entscheidung des Zombies zu beeinflussen. Er wirkt verunsichert. "Nicht mweh tun! Ich-ich-ich mspioniere Stubies us; sssage, mwus ich sehe. Sonst nnnichts."{#vaxis_s22_1}'

    menu:
        '"Spitzel? Für wen?"{#vaxis_s22_r4421}':
            # a94 # r4421
            jump vaxis_s23

        '"Hast du gesehen, was die Staubmenschen machen?"{#vaxis_s22_r4422}':
            # a95 # r4422
            jump vaxis_s29

        '"Ich hätte noch ein paar andere Fragen…"{#vaxis_s22_r4423}':
            # a96 # r4423
            jump vaxis_s43

        '"Das ist alles, was ich wissen wollte. Und nun aus dem Weg, *Zombie*."{#vaxis_s22_r4424}':
            # a97 # r4424
            jump vaxis_dispose


# s23 # say4425
label vaxis_s23: # from 21.0 22.0
    nr 'Der Zombie verstummt vor Angst. Er sieht aus, als würde er überhaupt nichts mehr sagen wollen.{#vaxis_s23_1}'

    menu:
        '"Nun komm schon. "Für wen sperrst du hier die Augen auf?"{#vaxis_s23_r4426}' if vaxisLogic.r4426_condition():
            # a98 # r4426
            jump vaxis_s70

        '"Nun komm schon. "Für wen sperrst du hier die Augen auf?"{#vaxis_s23_r4427}' if vaxisLogic.r4427_condition():
            # a99 # r4427
            jump morte_s89  # EXTERN

        '"Es wird SEHR viel weniger schmerzvoll sein, wenn du mir jetzt sagst, für wen du hier spitzelst."{#vaxis_s23_r4428}' if vaxisLogic.r4428_condition():
            # a100 # r4428
            $ vaxisLogic.r4428_action()
            jump vaxis_s70

        '"Es wird SEHR viel weniger schmerzvoll sein, wenn du mir jetzt sagst, für wen du hier spitzelst."{#vaxis_s23_r4429}' if vaxisLogic.r4429_condition():
            # a101 # r4429
            $ vaxisLogic.r4429_action()
            jump morte_s89  # EXTERN

        '"Ist ja schon gut. Hast du gesehen, was die Staubmenschen gemacht haben?"{#vaxis_s23_r4430}':
            # a102 # r4430
            jump vaxis_s29

        '"Da ist noch was, was ich wissen wollte…"{#vaxis_s23_r4431}':
            # a103 # r4431
            jump vaxis_s43

        '"Dann vergiß es einfach. Leb wohl, *Zombie*."{#vaxis_s23_r4432}':
            # a104 # r4432
            jump vaxis_dispose


# s24 # say4433
label vaxis_s24: # from 3.3 6.3 8.2
    nr '"Mdu hast mich gggesucht? Mweshalb?" Er schielt dich an. "Mdu hust eine Nuchricht für mmmich?"{#vaxis_s24_1}'

    menu:
        'Lüge: "Ja, ich habe eine Nachricht für dich."{#vaxis_s24_r4434}':
            # a105 # r4434
            $ vaxisLogic.r4434_action()
            jump vaxis_s26

        '"Nachricht von wem?"{#vaxis_s24_r4435}':
            # a106 # r4435
            jump vaxis_s27

        '"Nein, ich habe keine Nachricht."{#vaxis_s24_r4436}':
            # a107 # r4436
            jump vaxis_s25


# s25 # say4437
label vaxis_s25: # from 24.2
    nr 'Er zischt dich wütend an. "Mwas *mwillst* du mdunn, Dussel?!"{#vaxis_s25_1}'

    menu:
        '"Ich suche nach einem Weg hier raus. Kannst du mir helfen?"{#vaxis_s25_r4438}' if vaxisLogic.r4438_condition():
            # a108 # r4438
            jump vaxis_s31

        '"Ich hätte gern ein paar Informationen…"{#vaxis_s25_r4439}':
            # a109 # r4439
            jump vaxis_s43

        '"Sag mir, was du hier tust, oder ich rufe die Wache."{#vaxis_s25_r4440}' if vaxisLogic.r4440_condition():
            # a110 # r4440
            jump vaxis_s21

        '"Sag mir, was du hier tust, oder ich rufe die Wache."{#vaxis_s25_r4441}' if vaxisLogic.r4441_condition():
            # a111 # r4441
            jump vaxis_s17

        '"Ich will, daß du mir auf meine Fragen antwortest, oder ich seh zu, daß deine Verkleidung zur Realität wird, bevor du auch nur drei Schritte weit kommst."{#vaxis_s25_r4442}' if vaxisLogic.r4442_condition():
            # a112 # r4442
            $ vaxisLogic.r4442_action()
            jump vaxis_s19

        '"Ich will, daß du mir auf meine Fragen antwortest, oder ich seh zu, daß deine Verkleidung zur Realität wird, bevor du auch nur drei Schritte weit kommst."{#vaxis_s25_r4443}' if vaxisLogic.r4443_condition():
            # a113 # r4443
            $ vaxisLogic.r4443_action()
            jump vaxis_s22

        '"Tut mir leid, wollte nicht stören… wer immer du auch sein magst. Leb wohl."{#vaxis_s25_r4444}':
            # a114 # r4444
            jump vaxis_s4


# s26 # say4445
label vaxis_s26: # from 24.0
    nr '"Mwas für eine Nachricht?"{#vaxis_s26_1}'

    menu:
        '"Du sollst mir von deiner Mission erzählen."{#vaxis_s26_r4446}' if vaxisLogic.r4446_condition():
            # a115 # r4446
            jump vaxis_s28

        'Lüge: "Ich habe die neuen Anweisungen für dich."{#vaxis_s26_r4447}' if vaxisLogic.r4447_condition():
            # a116 # r4447
            $ vaxisLogic.r4447_action()
            jump vaxis_s30

        'Lüge: "Ich… habe die neuen Anweisungen für dich."{#vaxis_s26_r4448}' if vaxisLogic.r4448_condition():
            # a117 # r4448
            $ vaxisLogic.r4448_action()
            jump vaxis_s30

        '"Tut mir leid, ich habe keine Nachricht für dich."{#vaxis_s26_r4449}':
            # a118 # r4449
            jump vaxis_s27

        '"Vergiß es. Tut mir leid, daß ich dich gestört habe. Lebe wohl."{#vaxis_s26_r4450}':
            # a119 # r4450
            jump vaxis_s27


# s27 # say4451
label vaxis_s27: # from 24.1 26.3 26.4
    nr 'Wütend kneift er die Augen zusammen. "Mdu mkein Bote. Mwer bist du?"{#vaxis_s27_1}'

    menu:
        '"Ich suche nach einem Weg hier raus. Kannst du mir helfen?"{#vaxis_s27_r4452}' if vaxisLogic.r4452_condition():
            # a120 # r4452
            jump vaxis_s31

        '"Ich hätte gern ein paar Informationen…"{#vaxis_s27_r4453}':
            # a121 # r4453
            jump vaxis_s43

        '"Sag mir, was du hier tust, oder ich rufe die Wache."{#vaxis_s27_r4454}' if vaxisLogic.r4454_condition():
            # a122 # r4454
            jump vaxis_s21

        '"Sag mir, was du hier tust, oder ich rufe die Wache."{#vaxis_s27_r4455}' if vaxisLogic.r4455_condition():
            # a123 # r4455
            jump vaxis_s17

        '"Ich bin hier der, der Fragen stellt, *Zombie*. Sag mir, wer du bist, oder du brauchst dich nicht länger als Zombie zu VERKLEIDEN."{#vaxis_s27_r4456}' if vaxisLogic.r4456_condition():
            # a124 # r4456
            $ vaxisLogic.r4456_action()
            jump vaxis_s19

        '"Ich bin hier der, der Fragen stellt, *Zombie*. Sag mir, wer du bist, oder du brauchst dich nicht länger als Zombie zu VERKLEIDEN."{#vaxis_s27_r4457}' if vaxisLogic.r4457_condition():
            # a125 # r4457
            $ vaxisLogic.r4457_action()
            jump vaxis_s22

        '"Tut mir leid, wollte nicht stören… wer immer du auch sein magst. Leb wohl."{#vaxis_s27_r4458}':
            # a126 # r4458
            jump vaxis_s4


# s28 # say4459
label vaxis_s28: # from 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
    nr '"Ich bespitzle Stubies. Sage, mwas ich sehe. Sssonst nichts."{#vaxis_s28_1}'

    menu:
        '"Hast du gesehen, was die Staubmenschen machen?"{#vaxis_s28_r4460}':
            # a127 # r4460
            jump vaxis_s29

        '"Ich verstehe. Da war noch was, was ich wissen wollte…"{#vaxis_s28_r4461}':
            # a128 # r4461
            jump vaxis_s43

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#vaxis_s28_r4462}':
            # a129 # r4462
            jump vaxis_dispose


# s29 # say4463
label vaxis_s29: # from 21.1 22.1 23.4 28.0 70.1 71.2
    nr '"Nix. Sie tun nix. Ich habe nix gesehen. Nur Tote, tote Leute. Stubies tun *nix.*" Er kneift seine Augen zusammen und sagt voller Überzeugung "Uber ich mguck trotzdm hin."{#vaxis_s29_1}'

    menu:
        '"Ich verstehe. Da war noch was, was ich wissen wollte…"{#vaxis_s29_r4464}':
            # a130 # r4464
            jump vaxis_s43

        '"Das ist alles, was ich wissen wollte. Leb wohl."{#vaxis_s29_r4465}':
            # a131 # r4465
            jump vaxis_dispose


# s30 # say4466
label vaxis_s30: # from 26.1 26.2
    nr 'Er kneift seine Augen zusammen, um dich besser zu sehen. "Mwas für mwelche?"{#vaxis_s30_1}'

    menu:
        '"Erzähl mir von deiner Mission."{#vaxis_s30_r4467}':
            # a132 # r4467
            jump vaxis_s28

        '"Ich muß einen Weg hier raus finden, so daß ich unbemerkt davonkomme."{#vaxis_s30_r4468}':
            # a133 # r4468
            jump vaxis_s49

        '"Ich bin hier, um dich abzulösen. Gib mir alle Informationen, die du gesammelt hast, alles was du besitzt, und dann geh."{#vaxis_s30_r4469}' if vaxisLogic.r4469_condition():
            # a134 # r4469
            $ vaxisLogic.r4469_action()
            jump vaxis_s72

        '"Ich bin hier, um dir in jeder Weise zu helfen."{#vaxis_s30_r4470}':
            # a135 # r4470
            jump vaxis_s35

        '"Deine Anweisungen werden wohl bis zum nächsten Mal warten müssen. Ich werde wiederkommen."{#vaxis_s30_r4471}':
            # a136 # r4471
            jump vaxis_dispose


# s31 # say4472
label vaxis_s31: # from 7.1 12.1 13.4 15.1 25.0 27.0 50.0
    nr 'Er ist kurz still, dann nickt er verständig. "Mweshalb sollte ich mdir hlfen?"{#vaxis_s31_1}'

    menu:
        '"Weil ich deine Hilfe brauche."{#vaxis_s31_r4473}':
            # a137 # r4473
            jump vaxis_s32

        '"Vielleicht könnten wir uns gegenseitig helfen. Was willst du dafür?"{#vaxis_s31_r4474}' if vaxisLogic.r4474_condition():
            # a138 # r4474
            $ vaxisLogic.r4474_action()
            jump vaxis_s35

        '"Weil ich deine alberne Verkleidung nicht *verraten* werde… wenn du mir hilfst."{#vaxis_s31_r4475}' if vaxisLogic.r4475_condition():
            # a139 # r4475
            jump vaxis_s33

        '"Weil ich deine alberne Verkleidung nicht *verraten* werde… wenn du mir hilfst."{#vaxis_s31_r4476}' if vaxisLogic.r4476_condition():
            # a140 # r4476
            jump vaxis_s34

        '"Du siehst aus wie jemand, der sich eher als Leiche verkleidet, als eine SEIN will. Ist das Grund genug?"{#vaxis_s31_r4477}' if vaxisLogic.r4477_condition():
            # a141 # r4477
            $ vaxisLogic.r4477_action()
            jump vaxis_s75

        '"Du siehst aus wie jemand, der sich eher als Leiche verkleidet, als eine SEIN will. Ist das Grund genug?"{#vaxis_s31_r4478}' if vaxisLogic.r4478_condition():
            # a142 # r4478
            $ vaxisLogic.r4478_action()
            jump vaxis_s33

        '"Vergiß einfach, daß wir uns begegnet sind. Ich muß mich verabschieden. Leb wohl."{#vaxis_s31_r4479}':
            # a143 # r4479
            jump vaxis_s4


# s32 # say4480
label vaxis_s32: # from 31.0
    nr 'Der Zombie grinst leicht verächtlich. "Jeder *mbraucht* was - niemand *mgibt* was. Mwenn du mir mwas *gibst*, hlf ich dir *vielleicht*."{#vaxis_s32_1}'

    menu:
        '"Was brauchst du?"{#vaxis_s32_r4481}':
            # a144 # r4481
            jump vaxis_s35

        '"Wie wär„s, wenn du mir hilfst, und ich rufe dafür nicht die Wache?"{#vaxis_s32_r4482}' if vaxisLogic.r4482_condition():
            # a145 # r4482
            jump vaxis_s33

        '"Wie wär„s, wenn du mir hilfst, und ich rufe dafür nicht die Wache?"{#vaxis_s32_r4483}' if vaxisLogic.r4483_condition():
            # a146 # r4483
            jump vaxis_s34

        '"Du siehst aus wie jemand, der lieber seine Fähigkeit zum Atmen behält, als mir einen Korb zu geben. Also… ich frage dich jetzt zum letzten Mal: Wie komme ich hier raus?"{#vaxis_s32_r4484}' if vaxisLogic.r4484_condition():
            # a147 # r4484
            $ vaxisLogic.r4484_action()
            jump vaxis_s75

        '"Du siehst aus wie jemand, der lieber seine Fähigkeit zum Atmen behält, als mir einen Korb zu geben. Also… ich frage dich jetzt zum letzten Mal: Wie komme ich hier raus?"{#vaxis_s32_r4485}' if vaxisLogic.r4485_condition():
            # a148 # r4485
            $ vaxisLogic.r4485_action()
            jump vaxis_s33

        '"Kein Interesse. Leb wohl."{#vaxis_s32_r4486}':
            # a149 # r4486
            jump vaxis_s4


# s33 # say4487
label vaxis_s33: # from 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
    nr 'Er mustert dich von Kopf bis Fuß, als frage er sich, ober er einen Angriff wagen sollte. Dann starrt er auf deine Narben und entscheidet sich dagegen. "Hmmm. Mdu kunnst durch Mportule entkommn."{#vaxis_s33_1}'

    menu:
        '"Portale?"{#vaxis_s33_r4672}':
            # a150 # r4672
            $ vaxisLogic.r4672_action()
            jump vaxis_s50


# s34 # say4491
label vaxis_s34: # from 31.3 32.2 35.3
    nr 'Einen Moment lang wirkt er ängstlich. Dann schaut er dich prüfend an und grinst spöttisch über das ganze Gesicht. "Mdu erzählst mir Mdunkel, ich erzähl *mdir* Mdunkel. Ich Freunde, hier versteckt, mdu *niemndn.* Mdu solltest nicht mhier sein. Mdich töten Stubies, ich mach mich us dem Stub."{#vaxis_s34_1}'

    menu:
        '"Du wirst nicht entkommen, wenn ich dich TÖTE. Und jetzt mach endlich den Mund auf, oder ich seh zu, daß deine Verkleidung zur Realität wird."{#vaxis_s34_r4489}' if vaxisLogic.r4489_condition():
            # a151 # r4489
            $ vaxisLogic.r4489_action()
            jump vaxis_s74

        '"Du wirst nicht entkommen, wenn ich dich TÖTE. Und jetzt red„ endlich, oder ich seh zu, daß deine Verkleidung zur Realität wird."{#vaxis_s34_r4490}' if vaxisLogic.r4490_condition():
            # a152 # r4490
            $ vaxisLogic.r4490_action()
            jump vaxis_s33

        '"Dann schmor doch in der Hölle. Ich gehe."{#vaxis_s34_r4492}':
            # a153 # r4492
            jump vaxis_s4


# s35 # say4493
label vaxis_s35: # from 30.3 31.1 32.0
    nr '"Mhol mir dn *Schlüssel*. Eisnschlssel zum Bulsumierungsrum."{#vaxis_s35_1}'

    menu:
        '"Sprichst du von diesem Schlüssel hier?"{#vaxis_s35_r4494}' if vaxisLogic.r4494_condition():
            # a154 # r4494
            $ vaxisLogic.r4494_action()
            jump vaxis_s42

        '"Also gut. Und wo ist dieser Schlüssel?"{#vaxis_s35_r4495}':
            # a155 # r4495
            jump vaxis_s36

        '"Für so was hab„ ich keine Zeit. Hilf mir zu entkommen, oder ich rufe die Wache!"{#vaxis_s35_r4496}' if vaxisLogic.r4496_condition():
            # a156 # r4496
            $ vaxisLogic.r4496_action()
            jump vaxis_s33

        '"Für so was hab„ ich keine Zeit. Hilf mir zu entkommen, oder ich rufe die Wache!"{#vaxis_s35_r4497}' if vaxisLogic.r4497_condition():
            # a157 # r4497
            $ vaxisLogic.r4497_action()
            jump vaxis_s34

        '"Ich werde dir überhaupt nichts holen. Hilf mir zu entkommen, oder ich dreh dir hier und jetzt den Hals um."{#vaxis_s35_r4498}' if vaxisLogic.r4498_condition():
            # a158 # r4498
            $ vaxisLogic.r4498_action()
            jump vaxis_s75

        '"Ich werde dir überhaupt nichts holen. Hilf mir zu entkommen, oder ich dreh dir hier und jetzt den Hals um."{#vaxis_s35_r4499}' if vaxisLogic.r4499_condition():
            # a159 # r4499
            $ vaxisLogic.r4499_action()
            jump vaxis_s33

        '"Nein danke. Vielleicht ein andermal."{#vaxis_s35_r4500}':
            # a160 # r4500
            jump vaxis_s4


# s36 # say4501
label vaxis_s36: # from 35.1 58.2
    nr '"Ssstubie-Frau hut ihn." Er zeigt auf seine Augen. "Mgelbe Ugen…" Mit seinen Händen deutet er eine Schere an. "Mklingen un Mfingern."{#vaxis_s36_1}'

    menu:
        '"Unsere Wege haben sich schon einmal gekreuzt. "Hier ist der Schlüssel."{#vaxis_s36_r4502}' if vaxisLogic.r4502_condition():
            # a161 # r4502
            $ vaxisLogic.r4502_action()
            jump vaxis_s42

        '"Eine Staubfrau… mit gelben Augen und Klingen an den Fingen? Ich habe sie schon im Balsamierungsraum getroffen. Warte - ich  bin gleich mit dem Schlüssel zurück."{#vaxis_s36_r64520}' if vaxisLogic.r64520_condition():
            # a162 # r64520
            $ vaxisLogic.j64519_s36_r64520_action()
            jump vaxis_s38

        '"Eine Staubmenschenfrau… mit gelben Augen und Klingen an ihren Fingern? Also gut. Ich bin gleich mit dem Schlüssel wieder da."{#vaxis_s36_r4503}' if vaxisLogic.r4503_condition():
            # a163 # r4503
            $ vaxisLogic.j64518_s36_r4503_action()
            jump vaxis_s38

        '"Diese Staubmenschenfrau muß wirklich attraktiv sein. Bist du sicher, daß ich euch einander nicht vorstellen soll?"{#vaxis_s36_r4504}':
            # a164 # r4504
            $ vaxisLogic.r4504_action()
            jump vaxis_s37


# s37 # say4505
label vaxis_s37: # from 36.3
    nr 'Der Zombie blinzelt. Er scheint dich nicht verstanden zu haben.{#vaxis_s37_1}'

    menu:
        '"Hör mal, das sollte„n Witz sein, du Idiot… vergiß es, ich geh jetzt und hole deinen Schlüssel."{#vaxis_s37_r4506}' if vaxisLogic.r4506_condition():
            # a165 # r4506
            $ vaxisLogic.j64519_s37_r4506_action()
            jump vaxis_s38

        '"Das war ein Witz, Mensch! Du bist… Ach, vergiß es! Ich such jetzt deinen Schlüssel."{#vaxis_s37_r66150}' if vaxisLogic.r66150_condition():
            # a166 # r66150
            $ vaxisLogic.j64518_s37_r66150_action()
            jump vaxis_s38


# s38 # say4507
label vaxis_s38: # from 36.1 36.2 37.0 37.1
    nr 'Der Zombie schielt dich an. "Mwenn sssie dich kriegen, kein Mwort über mich, oder ich ssschneid mdir im Schluf mdie Mkehle durch."{#vaxis_s38_1}'

    menu:
        '"Ich werd dir deinen verdammten Schlüssel holen… aber nimm dich in acht mit deinen Drohungen, verstanden?"{#vaxis_s38_r4508}' if vaxisLogic.r4508_condition():
            # a167 # r4508
            $ vaxisLogic.r4508_action()
            jump vaxis_dispose

        '"Ich bin bald zurück."{#vaxis_s38_r4509}' if vaxisLogic.r4509_condition():
            # a168 # r4509
            $ vaxisLogic.r4509_action()
            jump vaxis_dispose

        '"Ich werd dir deinen verdammten Schlüssel holen… aber nimm dich in acht mit deinen Drohungen, verstanden?"{#vaxis_s38_r4510}' if vaxisLogic.r4510_condition():
            # a169 # r4510
            jump vaxis_dispose

        '"Ich bin bald zurück."{#vaxis_s38_r4511}' if vaxisLogic.r4511_condition():
            # a170 # r4511
            jump vaxis_dispose


# s39 # say4512
label vaxis_s39: # from 43.12
    nr '"Ich mgut im Tarnen. Ich uch Nurben. Ich viel Mbulsumierungsöl. Muche GUUUTE Zombies." Der Zombie kichert durch die zugenähten Lippen. "Stubies sssind mblöd."{#vaxis_s39_1}'

    jump morte_s93  # EXTERN


# s40 # say4514
label vaxis_s40: # -
    nr '"Ich mwurte hier. Hol erst mden Schlssel." Der Zombie lächelt so breit, daß es dir den Magen umdreht "Mdunn helf ich dir."{#vaxis_s40_1}'

    menu:
        '"Wenn ich ihn finde, bring ich ihn dir."{#vaxis_s40_r4515}':
            # a171 # r4515
            jump vaxis_dispose

        '"Dann vergiß es einfach."{#vaxis_s40_r4516}':
            # a172 # r4516
            jump vaxis_dispose


# s41 # say4517
label vaxis_s41: # -
    nr 'Der Zombie macht große Augen; dann streckt er die Hand aus und schnippst mit den Fingern. "Mgib her."{#vaxis_s41_1}'

    menu:
        '"Einen Moment mal. Erst will ich hier noch was."{#vaxis_s41_r4518}':
            # a173 # r4518
            jump vaxis_dispose

        '"Hier, bitte sehr."{#vaxis_s41_r4519}':
            # a174 # r4519
            $ vaxisLogic.r4519_action()
            jump vaxis_dispose


# s42 # say4520
label vaxis_s42: # from 35.0 36.0 58.0 58.1
    nr 'Der Zombie macht große Augen und entreißt dir den Schlüssel. Er dreht ihn um und nickt dabei. "Mguuut… mguuut."{#vaxis_s42_1}'

    menu:
        '"Also… wie komme ich hier raus?"{#vaxis_s42_r4521}' if vaxisLogic.r4521_condition():
            # a175 # r4521
            $ vaxisLogic.r4521_action()
            jump vaxis_s49

        '"Nun… da war noch was, was ich wissen wollte…"{#vaxis_s42_r4522}' if vaxisLogic.r4522_condition():
            # a176 # r4522
            $ vaxisLogic.r4522_action()
            jump vaxis_s43


# s43 # say4523
label vaxis_s43: # from 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
    nr '"Mwas mwillst du mwissn?"{#vaxis_s43_1}'

    menu:
        '"Wie komme ich hier raus?"{#vaxis_s43_r64508}' if vaxisLogic.r64508_condition():
            # a177 # r64508
            jump vaxis_s49

        '"Wie komme ich hier raus?"{#vaxis_s43_r4524}' if vaxisLogic.r4524_condition():
            # a178 # r4524
            jump vaxis_s49

        '"Wo war doch gleich dieses Portal, von dem du gesprochen hast?"{#vaxis_s43_r4525}' if vaxisLogic.r4525_condition():
            # a179 # r4525
            jump vaxis_s52

        '"Kannst du mich als Zombie verkleiden?"{#vaxis_s43_r4526}' if vaxisLogic.r4526_condition():
            # a180 # r4526
            jump vaxis_s63

        '"Kannst du mich nochmal als Zombie verkleiden?"{#vaxis_s43_r4527}' if vaxisLogic.r4527_condition():
            # a181 # r4527
            jump vaxis_s63

        '"Was machst du hier?"{#vaxis_s43_r4528}' if vaxisLogic.r4528_condition():
            # a182 # r4528
            jump vaxis_s28

        '"Kennst du jemanden namens Pharod?"{#vaxis_s43_r4673}' if vaxisLogic.r4673_condition():
            # a183 # r4673
            jump vaxis_s44

        '"Ich vermisse ein Journal. Hast du es zufällig gesehen?"{#vaxis_s43_r4530}' if vaxisLogic.r4530_condition():
            # a184 # r4530
            jump vaxis_s47

        '"Kannst du mir vielleicht was über Dhall erzählen?"{#vaxis_s43_r4531}' if vaxisLogic.r4531_condition():
            # a185 # r4531
            jump vaxis_s53

        '"Kannst du mir vielleicht was über Deionarra erzählen?"{#vaxis_s43_r4532}' if vaxisLogic.r4532_condition():
            # a186 # r4532
            jump vaxis_s54

        '"Kannst du mir was über Soego erzählen?"{#vaxis_s43_r4533}' if vaxisLogic.r4533_condition():
            # a187 # r4533
            jump vaxis_s55

        '"Wie kommt es denn, daß du so aussiehst?"{#vaxis_s43_r4534}' if vaxisLogic.r4534_condition():
            # a188 # r4534
            jump vaxis_s60

        '"Wie kommt es denn, daß du so aussiehst?"{#vaxis_s43_r4535}' if vaxisLogic.r4535_condition():
            # a189 # r4535
            jump vaxis_s39

        '"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."{#vaxis_s43_r4536}':
            # a190 # r4536
            jump vaxis_dispose


# s44 # say4537
label vaxis_s44: # from 43.6
    nr '"Fff-UROD?" Der Zombie runzelt nachdenklich die Stirn. "Er… er mlebt irgndwo im Stock." Er schüttelt den Kopf. "Mweiß nicht mwo." Er runzelt erneut die Stirn. "Stubies seeehr mböse, MMMÖGEN Mfff-arod nicht."{#vaxis_s44_1}'

    menu:
        '"Stock?"{#vaxis_s44_r4538}':
            # a191 # r4538
            jump vaxis_s45

        '"Warum mögen die Staubmenschen Pharod nicht?"{#vaxis_s44_r4539}':
            # a192 # r4539
            $ vaxisLogic.j64522_s44_r4539_action()
            jump vaxis_s46

        '"Da ist noch was, was ich wissen wollte…"{#vaxis_s44_r4540}':
            # a193 # r4540
            jump vaxis_s43

        '"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."{#vaxis_s44_r4541}':
            # a194 # r4541
            jump vaxis_dispose


# s45 # say4542
label vaxis_s45: # from 44.0
    nr '"Slums da mdrußen."{#vaxis_s45_1}'

    menu:
        '"Warum mögen die Staubmenschen Pharod nicht?"{#vaxis_s45_r4543}':
            # a195 # r4543
            $ vaxisLogic.j64522_s45_r4543_action()
            jump vaxis_s46

        '"Da ist noch was, was ich wissen wollte…"{#vaxis_s45_r4544}':
            # a196 # r4544
            jump vaxis_s43

        '"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."{#vaxis_s45_r4545}':
            # a197 # r4545
            jump vaxis_dispose


# s46 # say4546
label vaxis_s46: # from 44.1 45.0
    nr '"Ein Summler. Mbringt Tote in Leichenhulle und mverkuft sie an Ssstubies. Mbringt VIELE Tote. Stubies wissen nicht, woher. Gluben, er msteckt Mdussl in Totnbuch."{#vaxis_s46_1}'

    menu:
        '"Äh… was?"{#vaxis_s46_r4547}' if vaxisLogic.r4547_condition():
            # a198 # r4547
            jump vaxis_s48

        '"Äh… was?"{#vaxis_s46_r4548}' if vaxisLogic.r4548_condition():
            # a199 # r4548
            jump morte_s91  # EXTERN

        '"Oh. Da war noch was, was ich wissen wollte…"{#vaxis_s46_r4549}':
            # a200 # r4549
            jump vaxis_s43

        '"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."{#vaxis_s46_r4550}':
            # a201 # r4550
            jump vaxis_dispose


# s47 # say4551
label vaxis_s47: # from 43.7
    nr '"Weiß nicht. Von nem Dussel geschält?"{#vaxis_s47_1}'

    menu:
        '"Äh… was?"{#vaxis_s47_r4552}' if vaxisLogic.r4552_condition():
            # a202 # r4552
            jump vaxis_s48

        '"Äh… was?"{#vaxis_s47_r4553}' if vaxisLogic.r4553_condition():
            # a203 # r4553
            jump morte_s92  # EXTERN

        '"Oh. Da war noch was, was ich wissen wollte…"{#vaxis_s47_r4554}':
            # a204 # r4554
            jump vaxis_s43

        '"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."{#vaxis_s47_r4555}':
            # a205 # r4555
            jump vaxis_dispose


# s48 # say4556
label vaxis_s48: # from 46.0 47.0
    nr 'Der Zombie versucht, etwas zu sagen; er wartet kurz, versucht erneut zu sprechen und zuckt dann mit den Achseln. Scheinbar findet er keine bessere Erklärung{#vaxis_s48_1}'

    menu:
        '"Oh. Da war noch was, was ich wissen wollte…"{#vaxis_s48_r4557}':
            # a206 # r4557
            jump vaxis_s43

        '"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."{#vaxis_s48_r4558}':
            # a207 # r4558
            jump vaxis_dispose


# s49 # say4559
label vaxis_s49: # from 30.1 42.0 43.0 43.1
    nr 'Der Zombie brummt. "Mdu mkunnst durch die Mportule entkmmen." Er winkt mit der Hand. "So."{#vaxis_s49_1}'

    menu:
        '"Portale? Was für Portale?"{#vaxis_s49_r4560}':
            # a208 # r4560
            jump vaxis_s50


# s50 # say4563
label vaxis_s50: # from 33.0 49.0
    nr '"Mportule…" Der Zombie zeigt um sich. "Mportule überull."{#vaxis_s50_1}'

    menu:
        '"Kannst du mir so ein Portal zeigen?"{#vaxis_s50_r4564}' if vaxisLogic.r4564_condition():
            # a209 # r4564
            jump vaxis_s31

        '"Kannst du mir so ein Portal zeigen?"{#vaxis_s50_r64509}' if vaxisLogic.r64509_condition():
            # a210 # r64509
            jump vaxis_s51

        '"Kannst du mir so ein Portal zeigen?"{#vaxis_s50_r64510}' if vaxisLogic.r64510_condition():
            # a211 # r64510
            jump vaxis_s51

        '"Kannst du mir so ein Portal zeigen?"{#vaxis_s50_r64511}' if vaxisLogic.r64511_condition():
            # a212 # r64511
            jump vaxis_s51


# s51 # say4567
label vaxis_s51: # from 50.1 50.2 50.3 72.0
    nr 'Der Zombie nickt. "Mwenn mdu rus mwillst, geh zum Mbugen im ersstn Stuck, nordwstlichr Rum… Mdu bruchst Fingerknuchen, Hakenform…" Er hält einen Zeigefinger hoch und biegt ihn wie einen Haken. "Wunn du Schlussel hast, geh zu Bugen, sprung in Mgeheimkryptu. Mvun durt kunnst du mfliehen. Geheimer Mfluchtweg." Er nickt eifrig. "Da kunnst du AUSRUHN."{#vaxis_s51_1}'

    menu:
        '"Krummer Fingerknochen? Wo soll ich denn sowas finden?"{#vaxis_s51_r64527}' if vaxisLogic.r64527_condition():
            # a213 # r64527
            $ vaxisLogic.r64527_action()
            jump vaxis_s77

        '"Ich hätte noch ein paar andere Fragen…"{#vaxis_s51_r4568}' if vaxisLogic.r4568_condition():
            # a214 # r4568
            $ vaxisLogic.r4568_action()
            jump vaxis_s43

        '"Ein Bogen im Erdgeschoß, nordwestlicher Raum? Gut, ich werde mal nachsehen."{#vaxis_s51_r4569}' if vaxisLogic.r4569_condition():
            # a215 # r4569
            $ vaxisLogic.r4569_action()
            jump vaxis_dispose


# s52 # say4570
label vaxis_s52: # from 43.2
    nr '"Hör mr doch zu!" Der Zombie macht einen verärgerten Eindruck. "Bugen, ersstr Stuck, nordwstlichr Rum…" Er hält einen Zeigefinger hoch und beugt ihn. "Mdu bruchst Fingerknuchen, krumm. Mdu gehst in Geheimkryptu. Mfluchtweg Da kunnst du AUSRUHN."{#vaxis_s52_1}'

    menu:
        '"Da ist noch was, was ich wissen wollte…"{#vaxis_s52_r4571}':
            # a216 # r4571
            jump vaxis_s43

        '"Bogen, Erdgeschoß, nordwestlicher Raum, öffnet sich mit einem krummen Fingerknochen? Gut, jetzt hab„ ich“s verstanden."{#vaxis_s52_r4572}':
            # a217 # r4572
            jump vaxis_dispose


# s53 # say4573
label vaxis_s53: # from 43.8
    nr '"Schreiber." Zuckt mit den Achseln. "Ult. Gelb."{#vaxis_s53_1}'

    menu:
        '"Weiter ist da nichts zu sagen, schätze ich. Ich wollte noch was anderes wissen…"{#vaxis_s53_r4574}':
            # a218 # r4574
            jump vaxis_s43

        '"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."{#vaxis_s53_r4575}':
            # a219 # r4575
            jump vaxis_dispose


# s54 # say4576
label vaxis_s54: # from 43.9
    nr '"Hmmm?" Er runzelt die Stirn. "Mwer ist dddus?"{#vaxis_s54_1}'

    menu:
        '"Vergiß es einfach. Ich wollte noch was anderes wissen…"{#vaxis_s54_r4577}':
            # a220 # r4577
            jump vaxis_s43

        '"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."{#vaxis_s54_r4578}':
            # a221 # r4578
            jump vaxis_dispose


# s55 # say4579
label vaxis_s55: # from 43.10
    nr '"Führer, am Hupttur zur Leichnhulle. Mwus hust du mit ihm vor?"{#vaxis_s55_1}'

    menu:
        '"Was weißt du über ihn?"{#vaxis_s55_r4580}':
            # a222 # r4580
            $ vaxisLogic.r4580_action()
            jump vaxis_s56

        '"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."{#vaxis_s55_r4581}':
            # a223 # r4581
            jump vaxis_dispose


# s56 # say4582
label vaxis_s56: # from 55.0
    nr '"Mmmerkwürdig, kein Stubie, kein Unurchist, Augen unders…" Mit den Achseln zuckend. "Mag Ratten. Merkwürdig."{#vaxis_s56_1}'

    menu:
        '"Gut, daß er der Einzige hier ist, der merkwürdig ist. Da war noch was, was ich wissen wollte…"{#vaxis_s56_r4583}':
            # a224 # r4583
            jump vaxis_s43

        '"Vergiß es. Ich habe vielleicht später noch ein paar Fragen. Geh bloß nicht weg."{#vaxis_s56_r4584}':
            # a225 # r4584
            jump vaxis_dispose


# s57 # say4585
label vaxis_s57: # - # IF ~  GlobalGT("Vaxis","GLOBAL",0)
    nr 'Du erblickst den falschen Zombie. Du bist erstaunt, wie gut er getarnt ist… sein Atem ist so schwach, daß man ihn kaum wahrnimmt.{#vaxis_s57_1}'

    menu:
        '"Sei gegrüßt."{#vaxis_s57_r4586}' if vaxisLogic.r4586_condition():
            # a226 # r4586
            jump vaxis_s58

        '"Sei gegrüßt."{#vaxis_s57_r4587}' if vaxisLogic.r4587_condition():
            # a227 # r4587
            jump vaxis_s58

        '"Sei gegrüßt."{#vaxis_s57_r4588}' if vaxisLogic.r4588_condition():
            # a228 # r4588
            jump vaxis_s59

        '"Sei gegrüßt."{#vaxis_s57_r4589}' if vaxisLogic.r4589_condition():
            # a229 # r4589
            jump vaxis_s58

        'Laß ihn in Ruhe.{#vaxis_s57_r4590}':
            # a230 # r4590
            jump vaxis_dispose


# s58 # say4591
label vaxis_s58: # from 57.0 57.1 57.3
    nr 'Der Zombie blickt rasch um sich. Er will sich überzeugen, daß niemand zusieht. Dann dreht er sich zu dir. "Mwus?"{#vaxis_s58_1}'

    menu:
        '"Hier hat du den Schlüssel für den Balsamierungsraum."{#vaxis_s58_r4592}' if vaxisLogic.r4592_condition():
            # a231 # r4592
            $ vaxisLogic.r4592_action()
            jump vaxis_s42

        '"Hier hat du den Schlüssel für den Balsamierungsraum."{#vaxis_s58_r4593}' if vaxisLogic.r4593_condition():
            # a232 # r4593
            $ vaxisLogic.r4593_action()
            jump vaxis_s42

        '"Wo ist dieser Schlüssel, von dem du gesprochen hast, doch gleich zu finden?"{#vaxis_s58_r4594}' if vaxisLogic.r4594_condition():
            # a233 # r4594
            jump vaxis_s36

        '"Ich hätte ein paar Fragen an dich…"{#vaxis_s58_r4595}':
            # a234 # r4595
            jump vaxis_s43

        '"Ach, nichts."{#vaxis_s58_r4596}':
            # a235 # r4596
            jump vaxis_dispose


# s59 # say4597
label vaxis_s59: # from 57.2
    nr 'Der Zombie blickt um sich. Er will sich überzeugen, daß niemand zusieht. Dann scheucht er dich mit einer Geste fort und zischt dich an. "Geh mweg! Los!"{#vaxis_s59_1}'

    menu:
        '"Nein. Ich hätte da erstmal ein paar Fragen an dich…"{#vaxis_s59_r4598}':
            # a236 # r4598
            jump vaxis_s43

        '"Dann vergiß es."{#vaxis_s59_r4599}' if vaxisLogic.r4599_condition():
            # a237 # r4599
            jump vaxis_s4

        '"Dann vergiß es."{#vaxis_s59_r4600}' if vaxisLogic.r4600_condition():
            # a238 # r4600
            jump vaxis_dispose


# s60 # say4601
label vaxis_s60: # from 43.11
    nr '"Ich mgut im Tarnen. Ich uch Nurben. Ich viel Mbulsumierungsöl. Muche GUUUTE Zombies." Der Zombie kichert durch die zugenähten Lippen. "Stubies sssind mblöd."{#vaxis_s60_1}'

    menu:
        '"Ja klar, das sind die Dummen, was?"{#vaxis_s60_r4602}':
            # a239 # r4602
            jump vaxis_s61

        '"Tut das nicht weh?"{#vaxis_s60_r4603}':
            # a240 # r4603
            jump vaxis_s62

        '"Diese Verkleidung ist gar nicht so schlecht. Sag… kannst du mich auch als Zombie verkleiden?"{#vaxis_s60_r4604}' if vaxisLogic.r4604_condition():
            # a241 # r4604
            jump vaxis_s63

        '"Da ist noch was, was ich wissen wollte…"{#vaxis_s60_r4605}':
            # a242 # r4605
            jump vaxis_s43

        '"Ich muß gehen. Leb wohl."{#vaxis_s60_r4606}':
            # a243 # r4606
            jump vaxis_dispose


# s61 # say4607
label vaxis_s61: # from 60.0
    nr 'Der Sarkasmus geht an dem Zombie offensichtlich vorbei, denn er nickt eifrig. "Stubies ddumm. Ich muche MGUTE Zombies."{#vaxis_s61_1}'

    menu:
        '"Tut das nicht weh?"{#vaxis_s61_r4608}':
            # a244 # r4608
            jump vaxis_s62

        '"Diese Verkleidung ist nicht schlecht. Kannst du mich als Zombie verkleiden?"{#vaxis_s61_r4609}' if vaxisLogic.r4609_condition():
            # a245 # r4609
            jump vaxis_s63

        '"Da ist noch was, was ich wissen wollte…"{#vaxis_s61_r4610}' if vaxisLogic.r4610_condition():
            # a246 # r4610
            jump vaxis_s64

        '"Ich muß gehen. Leb wohl."{#vaxis_s61_r4611}' if vaxisLogic.r4611_condition():
            # a247 # r4611
            jump vaxis_s64

        '"Da ist noch was, was ich wissen wollte…"{#vaxis_s61_r4612}' if vaxisLogic.r4612_condition():
            # a248 # r4612
            jump vaxis_s43

        '"Ich muß gehen. Leb wohl."{#vaxis_s61_r4613}' if vaxisLogic.r4613_condition():
            # a249 # r4613
            jump vaxis_dispose


# s62 # say4614
label vaxis_s62: # from 60.1 61.0
    nr 'Er betrachtet deine Narben. "Ich gleiche Fruge. Mir nicht mwehgetun." Auf seine Brust klopfend: "Ich STRK."{#vaxis_s62_1}'

    menu:
        '"Diese Verkleidung ist nicht schlecht. Kannst du mich als Zombie verkleiden?"{#vaxis_s62_r4615}' if vaxisLogic.r4615_condition():
            # a250 # r4615
            jump vaxis_s63

        '"Da ist noch was, was ich wissen wollte…"{#vaxis_s62_r4616}' if vaxisLogic.r4616_condition():
            # a251 # r4616
            jump vaxis_s64

        '"Ich muß gehen. Leb wohl."{#vaxis_s62_r4617}' if vaxisLogic.r4617_condition():
            # a252 # r4617
            jump vaxis_s64

        '"Da ist noch was, was ich wissen wollte…"{#vaxis_s62_r4618}' if vaxisLogic.r4618_condition():
            # a253 # r4618
            jump vaxis_s43

        '"Ich muß gehen. Leb wohl."{#vaxis_s62_r4674}' if vaxisLogic.r4674_condition():
            # a254 # r4674
            jump vaxis_dispose


# s63 # say4619
label vaxis_s63: # from 43.3 43.4 60.2 61.1 62.0 64.1 64.2
    nr 'Er mustert dich kurz von Kopf bis Fuß, murmelt etwas vor sich hin und nickt. "U-huh. Ich mbruche Mbalsmierungsöl." Auf die Narben auf deiner Brust zeigend. "Und Nnnudel und Fffuden."{#vaxis_s63_1}'

    menu:
        '"Hier, bitte sehr."{#vaxis_s63_r4620}' if vaxisLogic.r4620_condition():
            # a255 # r4620
            $ vaxisLogic.r4620_action()
            jump vaxis_s65

        '"Ich werd mal drüber nachdenken. Ich hätte aber noch ein paar Fragen…"{#vaxis_s63_r4621}':
            # a256 # r4621
            $ vaxisLogic.r4621_action()
            jump vaxis_s43

        '"Nein danke. Vielleicht ein andermal… leb wohl."{#vaxis_s63_r4622}':
            # a257 # r4622
            $ vaxisLogic.r4622_action()
            jump vaxis_dispose

        '"Ein bißchen Balsamierungsöl und Faden? Ich werde mal sehen, ob sich so was auftreiben läßt."{#vaxis_s63_r4623}':
            # a258 # r4623
            $ vaxisLogic.r4623_action()
            jump vaxis_dispose


# s64 # say4624
label vaxis_s64: # from 61.2 61.3 62.1 62.2
    nr 'Mit seltsamer Miene mustert er dich von Kopf bis Fuß. "Du GUUUTER Zombie. Ich Zombie us dir muchen? GUUUTE Turnung."{#vaxis_s64_1}'

    menu:
        '"Trotzdem vielen Dank. Ich hätte da noch ein paar Fragen an dich…"{#vaxis_s64_r4625}':
            # a259 # r4625
            $ vaxisLogic.r4625_action()
            jump vaxis_s43

        '"Klar. Kannst du das tun?"{#vaxis_s64_r4626}':
            # a260 # r4626
            jump vaxis_s63

        '"Warum nicht? Ich fühl mich eh schon wie ein wandelnder Toter."{#vaxis_s64_r4627}':
            # a261 # r4627
            jump vaxis_s63

        '"Nein… nein… das ist schon in Ordnung. Leb wohl."{#vaxis_s64_r4628}':
            # a262 # r4628
            $ vaxisLogic.r4628_action()
            jump vaxis_dispose


# s65 # say4629
label vaxis_s65: # from 63.0
    nr 'Der Zombie nimmt dir die Sachen ab und macht sich an die Arbeit…{#vaxis_s65_1}'

    menu:
        'Versuche, ganz stillzuhalten.{#vaxis_s65_r4630}' if vaxisLogic.r4630_condition():
            # a263 # r4630
            $ vaxisLogic.r4630_action()
            jump vaxis_s66

        'Versuche, ganz stillzuhalten.{#vaxis_s65_r4631}' if vaxisLogic.r4631_condition():
            # a264 # r4631
            $ vaxisLogic.r4631_action()
            jump morte_s94  # EXTERN

        'Versuche, ganz stillzuhalten.{#vaxis_s65_r4632}' if vaxisLogic.r4632_condition():
            # a265 # r4632
            $ vaxisLogic.r4632_action()
            jump vaxis_s66

        'Versuche, still zu halten.{#vaxis_s65_r64533}' if vaxisLogic.r64533_condition():
            # a266 # r64533
            $ vaxisLogic.r64533_action()
            jump vaxis_s66


# s66 # say4633
label vaxis_s66: # from 65.0 65.2 65.3
    nr 'Der Zombie bestreicht dich mit Balsamierungsöl. Dann näht er verschiedene Narben zu. Er arbeitet von den Füßen aufwärts und vollendet die Tarnung, indem er deine Lippen zusammennäht.{#vaxis_s66_1}'

    menu:
        '"Mmm-hmmph-mmm… Danke fön."{#vaxis_s66_r4634}' if vaxisLogic.r4634_condition():
            # a267 # r4634
            jump vaxis_s67

        '"Mmm-hmmph-mmm… Danke fön."{#vaxis_s66_r4635}' if vaxisLogic.r4635_condition():
            # a268 # r4635
            $ vaxisLogic.r4635_action()
            jump morte_s95  # EXTERN

        '"Mmm-hmmph-mmm… Danke fön."{#vaxis_s66_r4636}' if vaxisLogic.r4636_condition():
            # a269 # r4636
            jump vaxis_s67


# s67 # say4637
label vaxis_s67: # from 66.0 66.2
    nr 'Der Zombie hält seine Hand hoch. "Vorsücht! Reden zieht Fäden raus, ruiniert Vör-kloidung. Zumbie nix reden. Duu müssen reden? Reden langsam, vorsüchtüg."  ^NHINWEIS: Denk daran, daß niemand damit rechnet, daß ein Zombie spricht. Wenn du als Zombie jemanden ansprichst, riskierst du, daß man deine Verkleidung durchschaut.^-{#vaxis_s67_1}'

    menu:
        '"Mmph… mmm. Ich… verstehe."{#vaxis_s67_r4638}':
            # a270 # r4638
            $ vaxisLogic.j64531_s67_r4638_action()
            jump vaxis_s68


# s68 # say4639
label vaxis_s68: # from 67.0
    nr 'Er runzelt die Stirn. "Mverkleigung mbald kaputt… Mbalsamieröl trocknet aus, Stiche gehen uf." Er zuckt die Achseln. "Mwuhrscheinlich hulten nicht ußerhalb Mleichenhulle. Uhnd nicht laufen! Duu laufen, du gunze Vör-kloidung ruinieren."  ^NHINWEIS: Durch Laufen wird deine Zombie-Verkleidung sofort aufgehoben. Falls du "Immer rennen" eingeschaltet hast, denke unbedingt daran, es auszuschalten, wenn du deine Verkleidung beibehalten willst, nachdem du mit Vaxis geredet hast.^-{#vaxis_s68_1}'

    menu:
        'Nicke noch einmal und geh dann.{#vaxis_s68_r4640}':
            # a271 # r4640
            jump vaxis_dispose


# s69 # say4641
label vaxis_s69: # -
    nr 'Der „Zombie“ runzelt die Stirn. "Mdu mkommst mir mbekannt vor. Mkennen wir uns?"{#vaxis_s69_1}'

    menu:
        '"Kann schon sein. Wo willst du mich denn gesehen haben?"{#vaxis_s69_r4642}':
            # a272 # r4642
            jump vaxis_dispose

        'X.{#vaxis_s69_r4643}':
            # a273 # r4643
            jump vaxis_dispose


# s70 # say4644
label vaxis_s70: # from 23.0 23.2 71.0 71.1
    nr 'Zu deiner Überraschung wendet sich der Zombie von dir ab… er beginnt, ängstlich um sich zu blicken.{#vaxis_s70_1}'

    menu:
        '"Du willst nicht reden? Dann wirst du gleich schreien."{#vaxis_s70_r4645}':
            # a274 # r4645
            $ vaxisLogic.r4645_action()
            jump vaxis_dispose

        '"Ist ja schon gut. Hast du gesehen, was die Staubmenschen gemacht haben?"{#vaxis_s70_r4646}':
            # a275 # r4646
            jump vaxis_s29

        '"Da ist noch was, was ich wissen wollte…"{#vaxis_s70_r4647}':
            # a276 # r4647
            jump vaxis_s43

        '"Dann vergiß es einfach. Leb wohl, *Zombie*."{#vaxis_s70_r4648}':
            # a277 # r4648
            jump vaxis_dispose


# s71 # say4649
label vaxis_s71: # externs morte_s90
    nr 'Der Zombie schaut euch beide ängstlich an. Er ist noch immer stumm… aber irgendetwas in seinem Ausdruck scheint zu bestätigen, daß Morte recht hatte.{#vaxis_s71_1}'

    menu:
        '"Soso, die Anarchisten. Für die sperrst du hier also die Augen auf?"{#vaxis_s71_r4650}':
            # a278 # r4650
            jump vaxis_s70

        '"Es wird SEHR viel weniger schmerzvoll sein, wenn du mir jetzt sagst, warum die Anarchisten dich hier zum Spitzeln hergeschickt haben."{#vaxis_s71_r4651}':
            # a279 # r4651
            $ vaxisLogic.r4651_action()
            jump vaxis_s70

        '"Ist ja schon gut. Hast du gesehen, was die Staubmenschen gemacht haben?"{#vaxis_s71_r4652}':
            # a280 # r4652
            jump vaxis_s29

        '"Da ist noch was, was ich wissen wollte…"{#vaxis_s71_r4653}':
            # a281 # r4653
            jump vaxis_s43

        '"Dann vergiß es einfach. Leb wohl, *Zombie*."{#vaxis_s71_r4654}':
            # a282 # r4654
            jump vaxis_dispose


# s72 # say4655
label vaxis_s72: # from 30.2
    nr 'Der Zombie macht einen enttäuschten Eindruck, aber er zuckt mit den Achseln und beginnt, in seinem fleckigen Umhang herumzukramen. "Mruhig, Stubies mruhig, nix Neues seit letztm Rupport." Kurz darauf überreicht er dir ein paar Sachen und brummt. "Hiiierr." Den Geruch nach muß er die Dinger so versteckt haben, daß sie bei einer Durchsuchung niemand gefunden hätte. "Ich mgehe bbbald."{#vaxis_s72_1}'

    menu:
        '"Gehen? Wie?"{#vaxis_s72_r4656}' if vaxisLogic.r4656_condition():
            # a283 # r4656
            jump vaxis_s51

        '"Also gut. Leb wohl, Vaxis."{#vaxis_s72_r64532}' if vaxisLogic.r64532_condition():
            # a284 # r64532
            jump vaxis_dispose


# s73 # say4658
label vaxis_s73: # -
    nr 'Der Zombie brummt. "Mportul istn Bugen - Urdgeschusss, mnordöstlichr Rum, mbruchst Fingerknochen von Skelett zum Ufmachen." Er nickt. "Mviel Glück."{#vaxis_s73_1}'

    menu:
        '"Äh… na gut."{#vaxis_s73_r4659}':
            # a285 # r4659
            jump vaxis_dispose


# s74 # say4660
label vaxis_s74: # from 34.0
    nr 'Der Zombie kneift die Augen zusammen und zischt dich an. "Mdu WILLST mich ins Totenbuch stecken? Ich Freunde, hier versteckt, mdu *niemndn.* Mwenn mdu mir ein Mhaar krümmst, mtöten DICH meine Mfreunde."{#vaxis_s74_1}'

    menu:
        '"Das war deine letzte Chance. Bereite dich schon mal auf den Tod vor."{#vaxis_s74_r4661}':
            # a286 # r4661
            $ vaxisLogic.r4661_action()
            jump vaxis_dispose

        '"Dann schmor in der Hölle. Ich gehe. Und du, nimm dich in acht… *Zombie*!"{#vaxis_s74_r4662}':
            # a287 # r4662
            jump vaxis_s4


# s75 # say4663
label vaxis_s75: # from 31.4 32.3 35.4
    nr 'Einen Moment lang wirkt er ängstlich. Dann begutachtet er deine Statur und grinst spöttisch über das ganze Gesicht. "MDUUU MICH ins Totenbuch stecken? Ich Freunde, hier versteckt. Mdu *niemndn.* Mwenn mdu mir ein Mhaar krümmst, mtöten DICH meine Mfreunde."{#vaxis_s75_1}'

    menu:
        '"Wie wär„s, wenn ich deine Verkleidung an die Wache verraten würde?"{#vaxis_s75_r4664}' if vaxisLogic.r4664_condition():
            # a288 # r4664
            jump vaxis_s33

        '"Wie wär„s, wenn ich deine Verkleidung an die Wache verraten würde?"{#vaxis_s75_r4665}' if vaxisLogic.r4665_condition():
            # a289 # r4665
            jump vaxis_s76

        '"Ich werd„s wagen. Bereite dich schon mal auf den Tod vor."{#vaxis_s75_r4666}':
            # a290 # r4666
            $ vaxisLogic.r4666_action()
            jump vaxis_dispose

        '"Dann schmor doch in der Hölle. Ich gehe. Und du, nimm dich in acht… *Zombie*."{#vaxis_s75_r4667}':
            # a291 # r4667
            jump vaxis_s4


# s76 # say4668
label vaxis_s76: # from 75.1
    nr 'Der Zombie kneift die Augen zusammen und zischt dich an. "Mdu erzählst mir Mdunkel, ich erzähl *mdir* Mdunkel. Ich Freunde, hier versteckt, mdu *niemndn.* Mdu solltest nicht hier sein. Mdich töten Stuubies, ich mach mich us dem Stub."{#vaxis_s76_1}'

    menu:
        '"Das war deine letzte Chance, Leiche. Bereite dich schon mal auf den Tod vor."{#vaxis_s76_r4669}':
            # a292 # r4669
            $ vaxisLogic.r4669_action()
            jump vaxis_dispose

        '"Dann schmor doch in der Hölle. Ich gehe. Und du, nimm dich in acht… *Zombie*."{#vaxis_s76_r4670}':
            # a293 # r4670
            jump vaxis_s4


# s77 # say64523
label vaxis_s77: # from 51.0
    nr 'Er zuckt die Schultern. "Muß wohl einer in der Nähe sein, irgendwo. Sieh mal in den Lagerräumen im Obergeschoß nach. Vielleicht dort."{#vaxis_s77_1}'

    menu:
        '"Okay. Ich hätte da noch ein paar andere Fragen…"{#vaxis_s77_r64524}':
            # a294 # r64524
            jump vaxis_s43

        '"In Ordnung. Ich werde oben nach diesem krummen Fingerknochen suchen, und dann gehe ich ins Erdgeschoß, zu einem der Bögen im nordwestlichen Zimmer. Verstanden."{#vaxis_s77_r64525}':
            # a295 # r64525
            jump vaxis_dispose
