init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.eivene_logic import EiveneLogic
    eiveneLogic = EiveneLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DEIVENE.DLG
# ###


# s0 # say3404
label eivene_s0: # - # IF ~  Global("EiVene","GLOBAL",0)
    nr 'Du siehst eine zierliche junge Frau mit blasser Gesichtsfarbe. Mit ihren eingefallenen Wangen und dem dürren Hals sieht sie aus, als wäre sie kurz vor dem Verhungern. Sie scheint eifrig damit beschäftigt zu sein, die vor ihr liegende Leiche zu zerlegen, wobei sie mit einem Finger im Oberkörper herumstochert.'

    menu:
        '"Sei gegrüßt."':
            # a0 # r3406
            jump eivene_s1

        'Laß sie in Ruhe.':
            # a1 # r3407
            jump eivene_dispose


# s1 # say3410
label eivene_s1: # from 0.0
    nr 'Die Frau antwortet nicht… sie scheint zu eifrig mit der vor ihr liegenden Leiche beschäftigt zu sein. Als du sie dabei beobachtest, fällt dein Blick plötzlich auf ihre Hände… anstelle von Fingern hat sie Krallen, die sich in schneller Abfolge wie Messer in die Brusthöhle der Leiche bohren und ein Organ nach dem anderen herausholen.'

    menu:
        '"Ich sagte: Sei gegrüßt."' if eiveneLogic.r3412_condition():
            # a2 # r3412
            jump eivene_s2

        '"Ich sagte: Sei gegrüßt."' if eiveneLogic.r3413_condition():
            # a3 # r3413
            jump eivene_s3

        '"Was ist denn mit deinen Händen los?"' if eiveneLogic.r3414_condition():
            # a4 # r3414
            jump eivene_s2

        '"Was ist denn mit deinen Händen los?"' if eiveneLogic.r3415_condition():
            # a5 # r3415
            jump eivene_s19

        'Laß sie in Ruhe.':
            # a6 # r3416
            jump eivene_dispose


# s2 # say3417
label eivene_s2: # from 1.0 1.2
    nr 'Die Frau reagiert nicht.'

    menu:
        'Klopf der Frau auf die Schulter, damit sie dich bemerkt.':
            # a7 # r3418
            $ eiveneLogic.r3418_action()
            jump eivene_s4

        'Laß sie in Ruhe.':
            # a8 # r3419
            jump eivene_dispose


# s3 # say3420
label eivene_s3: # from 1.1
    nr 'Die Frau reagiert nicht.'

    jump morte_s55  # EXTERN


# s4 # say3421
label eivene_s4: # from 2.0
    nr 'Die Frau zuckt zusammen und dreht sich blitzschnell zu dir um… ihre Augen sind eitrig-gelb, mit kleinen orangefarbenen Punkten als Pupille. Als sie dich sieht, macht sie zuerst eine überraschte, dann eine verärgerte Miene. Sie wirft dir einen mißbilligenden Blick zu.'

    menu:
        '"Äh… sei gegrüßt."':
            # a9 # r3422
            $ eiveneLogic.r3422_action()
            jump eivene_s5


# s5 # say3423
label eivene_s5: # from 4.0
    nr 'Sie scheint dich nicht gehört zu haben. Sie beugt sich nach vorne und kneift ihre Augen zusammen, als ob sie versuchen würde, dich zu erkennen… sie scheint extrem kurzsichtig zu sein. "Du…" Sie schlägt ihre Krallen aufeinander und macht dann eine merkwürdige Bewegung mit ihren Händen. "Du suchen FADEN und BAL-samieröl, und bringen beides HIER zu Ei-Vene. Geh… geh… geh."  ^NHINWEIS: Dir ist eine Aufgabe zugewiesen worden. Aufgaben werden in deinem Tagebuch und in deinem Journal im Abschnitt "Aufgaben" angezeigt. Wenn du alle Aufgaben ansehen möchtest, die dir erteilt wurden sind, sowie ihren Status, wähle "Aufgaben" aus dem Menü des Journals aus.^-'

    menu:
        'Gib ihr den Faden und das Balsamierungsöl.' if eiveneLogic.r3424_condition():
            # a10 # r3424
            $ eiveneLogic.j37701_s5_r3424_action()
            $ eiveneLogic.r3424_action()
            jump eivene_s7

        '"Ich hätte erst noch ein paar Fragen…"' if eiveneLogic.r3425_condition():
            # a11 # r3425
            $ eiveneLogic.j37702_s5_r3425_action()
            jump eivene_s6

        '"Ich hätte erst noch ein paar Fragen…"' if eiveneLogic.r3426_condition():
            # a12 # r3426
            $ eiveneLogic.j37702_s5_r3426_action()
            jump eivene_s20

        '"Was ist denn mit deinen Händen los?"' if eiveneLogic.r3427_condition():
            # a13 # r3427
            $ eiveneLogic.j37702_s5_r3427_action()
            jump eivene_s6

        '"Was ist denn mit deinen Händen los?"' if eiveneLogic.r3428_condition():
            # a14 # r3428
            $ eiveneLogic.j37702_s5_r3428_action()
            jump eivene_s20

        'Verschwinde.':
            # a15 # r3429
            $ eiveneLogic.j37702_s5_r3429_action()
            jump eivene_dispose


# s6 # say3430
label eivene_s6: # from 5.1 5.3
    nr 'Sie dreht sich um… sie scheint dich nicht gehört zu haben. Ihr Gehör ist wohl genauso schlecht wie ihr Sehvermögen.'

    menu:
        'Klopf ihr auf die Schulter, damit sie dich bemerkt.':
            # a16 # r3431
            jump eivene_s17

        'Verschwinde.':
            # a17 # r3432
            jump eivene_dispose


# s7 # say3433
label eivene_s7: # from 5.0 17.0
    nr 'Ehe du dich„s versiehst, schnappt Ei-Vene dir den Faden aus der Hand und schlingt ihn um eine Kralle. Dann beginnt sie, der Leiche den Brustkorb zuzunähen. Anschließend nimmt sie das Balsamierungsöl und reibt die Leiche damit ein.'

    menu:
        'Warte.':
            # a18 # r3434
            jump eivene_s9

        'Geh weg.':
            # a19 # r3435
            jump eivene_s8


# s8 # say3436
label eivene_s8: # from 7.1
    nr 'Als du gehen willst, wendet Ei-Vene sich dir zu: "Du bleiben. Du Nächster."'

    menu:
        'Warte.':
            # a20 # r3437
            jump eivene_s9

        'Geh. Und zwar schnell.':
            # a21 # r3438
            jump eivene_dispose


# s9 # say3439
label eivene_s9: # from 7.0 8.0
    nr 'Nach ein paar Minuten ist sie fertig. Sie schlägt ihre Krallen aufeinander und dreht sich zu dir um. Zu deiner Überraschung streckt sie ihre Hand aus und zieht dir ihre Krallen über Brust und Arme.'

    menu:
        '"Äh, nicht, daß mir das nicht schmeichelt, aber…"' if eiveneLogic.r3440_condition():
            # a22 # r3440
            jump eivene_s11

        '"Äh, nicht, daß mir das nicht schmeichelt, aber…"' if eiveneLogic.r3441_condition():
            # a23 # r3441
            jump morte_s59  # EXTERN

        'Spiel weiter den Zombie.' if eiveneLogic.r3442_condition():
            # a24 # r3442
            jump eivene_s11

        'Spiel weiter den Zombie.' if eiveneLogic.r3443_condition():
            # a25 # r3443
            jump morte_s59  # EXTERN

        'Stoß sie weg und geh.':
            # a26 # r3444
            jump eivene_s10


# s10 # say3445
label eivene_s10: # from 9.4 12.1
    nr 'Sie wirkt schockiert, als du sie wegstößt. "Zomfie? Du kein Zomfie!" Sie geht einen Schritt zurück, und bevor du reagieren kannst, klatscht sie dreimal in die Hände. Daraufhin ertönt der Klang einer riesigen Glocke in der ganzen Leichenhalle.'

    menu:
        '"In Ordnung…"':
            # a27 # r3491
            $ eiveneLogic.r3491_action()
            jump eivene_dispose


# s11 # say3446
label eivene_s11: # from 9.0 9.2
    nr 'Als sie dir über Brust und Arme fährt, bemerkst du plötzlich, daß sie anscheinend deine Narben untersucht. Sie zieht ihre Krallen zurück, klappert zweimal damit, beugt sich nach vorn und untersucht verschiedene Tätowierungen auf deiner Brust. "Hmmm. Wer schreiben auf dir? Stockbewohner? Kein Respekt vor Zomfies. Zomfies, nix Bilder." Sie rümpft die Nase, dann stochert sie auf einer deiner Narben herum. "Diese hier schlecht aussehen, viele Narben, nix Balsam."'

    menu:
        'Warte.':
            # a28 # r3447
            jump eivene_s12


# s12 # say3448
label eivene_s12: # from 11.0
    nr 'Ihre Krallen haken sich plötzlich in den Faden fest, den du ihr gebracht hast, und plötzlich sticht sie mit einer anderen Kralle in die Haut um eine deiner Narben. Der Schmerz ist kaum schlimmer als bei einem Nadelstich, aber es scheint, als ob sie dich komplett zusammennähen wollte.'

    menu:
        'Laß sie ihre Arbeit tun.':
            # a29 # r3449
            $ eiveneLogic.r3449_action()
            jump eivene_s13

        'Stoß sie weg und geh.':
            # a30 # r3450
            jump eivene_s10


# s13 # say3451
label eivene_s13: # from 12.0
    nr 'Du empfindest eine seltsame Schmerzlosigkeit, als Ei-Vene beginnt, deine Narben zuzunähen.  Als sie fertig ist, schnuppert sie an dir, runzelt die Stirn und steckt dann ihre Finger in das Balsamierungsöl. Binnen weniger Minuten hat sie dich von Kopf bis Fuß mit dem Öl eingerieben… und komischerweise fühlst du dich tatsächlich *besser*.'

    menu:
        'Laß sie ihre Arbeit tun.' if eiveneLogic.r3452_condition():
            # a31 # r3452
            jump eivene_s14

        'Laß sie ihre Arbeit tun.' if eiveneLogic.r3453_condition():
            # a32 # r3453
            jump morte_s60  # EXTERN


# s14 # say3454
label eivene_s14: # from 13.0
    nr 'Ei-Vene reibt noch die letzten Stellen auf deinem Körper ein, beschnuppert dich noch einmal, nickt und scheucht dich mit einer Krallenbewegung fort. "Fertig. Geh… geh."'

    menu:
        '"Warte einen Moment." (Du machst eine Handbewegung, als ob du einen Schlüssel umdrehtest.) "Ich brauche einen Schlüssel zum Balsamierungsraum. Hast du einen?"' if eiveneLogic.r3456_condition():
            # a33 # r3456
            $ eiveneLogic.r3456_action()
            jump eivene_s18

        '"Warte einen Moment." (Du machst eine Handbewegung, als ob du einen Schlüssel umdrehtest.) "Ich brauche einen Schlüssel zum Balsamierungsraum. Hast du einen?"' if eiveneLogic.r3457_condition():
            # a34 # r3457
            jump eivene_s24

        'Verschwinde.':
            # a35 # r4350
            jump eivene_dispose


# s15 # say3458
label eivene_s15: # - # IF ~  Global("EiVene","GLOBAL",1)
    nr 'Du siehst Ei-Vene. Sie ist noch immer dabei, den Brustkorb der Leiche mit ihren Krallen zu zerlegen. Der Rhythmus, mit dem sie ihre Krallen bewegt, erinnert dich an irgend etwas, aber dir fällt im Moment nicht ein, an was.'

    menu:
        'Beobachte sie, verfolge ihre Handbewegungen genau.' if eiveneLogic.r3459_condition():
            # a36 # r3459
            $ eiveneLogic.r3459_action()
            jump eivene_s16

        'Klopf ihr auf die Schulter, damit sie dich bemerkt.' if eiveneLogic.r3463_condition():
            # a37 # r3463
            jump eivene_s17

        'Klopf ihr auf die Schulter, damit sie dich bemerkt.' if eiveneLogic.r4351_condition():
            # a38 # r4351
            jump eivene_s22

        'Verschwinde.':
            # a39 # r4352
            jump eivene_dispose


# s16 # say3464
label eivene_s16: # from 15.0
    nr 'Während du die Bewegung von Ei-Venes Händen beobachtest, spürst du ein Kribbeln auf deiner Kopfhaut, und plötzlich verschwimmt alles vor deinen Augen, bis…'

    $ eiveneLogic.s16_action()
    jump eivene_s26


# s17 # say3468
label eivene_s17: # from 6.0 15.1 25.0 27.0
    nr 'Sie dreht sich um, sieht dich und runzelt die Stirn. "Zomfies dumm." Sie schlägt ihre krallenbewehrten Finger ungeduldig gegeneinander, dann deutet sie mit ihren Fingern Stiche beim Nähen an. "Du suchen Faden und Balsamierungsöl und bringen beides zu Ei-Vene. Geh… geh… geh."'

    menu:
        'Gib ihr den Faden und das Balsamierungsöl.' if eiveneLogic.r3469_condition():
            # a40 # r3469
            $ eiveneLogic.j38202_s17_r3469_action()
            $ eiveneLogic.r3469_action()
            jump eivene_s7

        '"Warte einen Moment." (Du machst eine Handbewegung, als ob du einen Schlüssel umdrehtest.) "Ich brauche einen Schlüssel zum Balsamierungsraum. Hast du einen?"' if eiveneLogic.r3470_condition():
            # a41 # r3470
            $ eiveneLogic.r3470_action()
            jump eivene_s18

        '"Warte einen Moment." (Du machst eine Handbewegung, als ob du einen Schlüssel umdrehtest.) "Ich brauche einen Schlüssel zum Balsamierungsraum. Hast du einen?"' if eiveneLogic.r3497_condition():
            # a42 # r3497
            jump eivene_s24

        'Verschwinde.':
            # a43 # r4357
            jump eivene_dispose


# s18 # say3471
label eivene_s18: # from 14.0 17.1 22.0
    nr 'Sie beugt sich nach vorne, beobachtet deine Handbewegungen und rümpft die Nase. Ihre Hand schnellt in ihre Robe hinein und dann wieder heraus. An ihrem fürchterlich spitzen Zeigefinger hängt ein Schlüssel. Im Nu landet er in deiner Hand. "Zurückbringen wenn fertig. Geh… geh."'

    menu:
        '"Was ist denn mit deinen Händen los?"' if eiveneLogic.r3494_condition():
            # a44 # r3494
            $ eiveneLogic.j38203_s18_r3494_action()
            jump eivene_s23

        '"Was ist denn mit deinen Händen los?"' if eiveneLogic.r3495_condition():
            # a45 # r3495
            $ eiveneLogic.j38203_s18_r3495_action()
            jump eivene_s21

        'Verschwinde.':
            # a46 # r3496
            $ eiveneLogic.j38203_s18_r3496_action()
            jump eivene_dispose


# s19 # say3472
label eivene_s19: # from 1.3
    nr 'Die Frau reagiert nicht.'

    $ eiveneLogic.j38205_s19_action()
    jump morte_s56  # EXTERN


# s20 # say3485
label eivene_s20: # from 5.2 5.4
    nr 'Sie dreht sich um… sie scheint dich nicht gehört zu haben.'

    jump morte_s57  # EXTERN


# s21 # say3486
label eivene_s21: # from 18.1
    nr 'Sie dreht sich um… sie scheint dich nicht gehört zu haben. Ihr Gehör ist wohl genauso schlecht wie ihr Sehvermögen.'

    $ eiveneLogic.j38205_s21_action()
    jump morte_s58  # EXTERN


# s22 # say3493
label eivene_s22: # from 15.2 25.1 27.1
    nr 'Sie dreht sich um, sieht dich und runzelt die Stirn. "Zomfies dumm." Sie schlägt ihre krallenbewehrten Finger ungeduldig gegeneinander, dann deutet sie mit ihren Fingern Stiche beim Nähen an. "Du fertig. Zugenäht. Geh… geh… geh."'

    menu:
        '"Warte einen Moment." (Du machst eine Handbewegung, als ob du einen Schlüssel umdrehtest.) "Ich brauche einen Schlüssel zum Balsamierungsraum. Hast du einen?"' if eiveneLogic.r3501_condition():
            # a47 # r3501
            $ eiveneLogic.r3501_action()
            jump eivene_s18

        '"Warte einen Moment." (Du machst eine Handbewegung, als ob du einen Schlüssel umdrehtest.) "Ich brauche einen Schlüssel zum Balsamierungsraum. Hast du einen?"' if eiveneLogic.r3502_condition():
            # a48 # r3502
            jump eivene_s24

        'Verschwinde.':
            # a49 # r4358
            jump eivene_dispose


# s23 # say3498
label eivene_s23: # from 18.0
    nr 'Sie dreht sich um… sie scheint dich nicht gehört zu haben. Ihr Gehör ist wohl genauso schlecht wie ihr Sehvermögen.'

    menu:
        'Verschwinde.':
            # a50 # r3499
            jump eivene_dispose


# s24 # say4200
label eivene_s24: # from 14.1 17.2 22.1
    nr 'Sie beugt sich nach vorn und beobachtet deine Handbewegungen, woraufhin sie die Nase rümpft. Jetzt verschwindet ihre Hand blitzschnell in ihrer Robe, in der sie herumwühlt. Dann zuckt sie mit den Achseln. "Kein Schlüssel." Mit einer Geste scheucht sie dich weg. "Geh- geh - geh."'

    menu:
        'Verschwinde.':
            # a51 # r4201
            jump eivene_dispose


# s25 # say4353
label eivene_s25: # -
    nr 'Nachdem du sie eine Weile beobachtet hast, erinnert dich der Rhythmus ihrer Handbewegungen an zwei Dinge - daran, daß du irgendein Saiteninstrument gespielt hast, vielleicht eine Harfe. Und daß du irgendwann eine Geldbörse geklaut hast… zu deinem Erstaunen versetzt dich diese zweite Erinnerung in die Versuchung, Ei-Venes Tasche zu entwenden.  ^NHINWEIS: Du hast eine Erinnerung zurückgewonnen. Erinnerungen können dir zusätzliche Erfahrungspunkte und Fähigkeiten einbringen und sogar dazu führen, daß du später noch weitere Erinnerungen zurückgewinnst.^-'

    menu:
        'Klopf ihr auf die Schulter, damit sie dich bemerkt.' if eiveneLogic.r4354_condition():
            # a52 # r4354
            jump eivene_s17

        'Klopf ihr auf die Schulter, damit sie dich bemerkt.' if eiveneLogic.r4355_condition():
            # a53 # r4355
            jump eivene_s22

        'Verschwinde.':
            # a54 # r4356
            jump eivene_dispose


# s26 # say63477
label eivene_s26: # from 16.0
    nr '… Du stehst vor einer frisch niedergemetzelten Leiche, die Totenstarre entstellt ihr Lächeln auf groteske Weise. Auf ihrer Stirn ist die Nummer „42“ aufgestickt. Der Zombie liegt auf einer Totenbank, und du hast gerade seine Brust fertig zugenäht. Du hast etwas eingenäht, etwas, das sich als nützlich erweisen könnte, falls du hier noch mal vorbeikommst…'

    menu:
        'Echo: "Bewahre diese Dinge gut auf und warte, bis ich zurrücckkomme."' if eiveneLogic.r63478_condition():
            # a55 # r63478
            $ eiveneLogic.r63478_action()
            jump eivene_s27

        'Echo: "Bewahre diese Dinge gut auf und warte, bis ich zurrücckkomme."' if eiveneLogic.r63479_condition():
            # a56 # r63479
            jump eivene_s27


# s27 # say63480
label eivene_s27: # from 26.0 26.1
    nr 'Die Erinnerung an deine Stimme ist ein Echo, seltsam hohl in deinen Ohren. Du verschränkst die Arme vor der Brust, und zu deiner Überraschung tut der Leichnam dasselbe. Nach einer Weile fallen die Arme wieder an seine Seite und die Vision verblaßt… bis du wieder Ei-Venes Hände beobachtest, die ihre stickenden Bewegungen machen.  ^NHINWEIS: Du hast dein Gedächtnis wiedererlangt. Erinnerungen können dir zusätzliche Erfahrungspunkte oder Fähigkeiten verleihen oder dir sogar dazu verhelfen, später etwas Wertvolles zu erhalten.^-'

    menu:
        'Tipp ihr auf die Schulter, mach sie auf dich aufmerksam.' if eiveneLogic.r63482_condition():
            # a57 # r63482
            jump eivene_s17

        'Tipp ihr auf die Schulter, mach sie auf dich aufmerksam.' if eiveneLogic.r63481_condition():
            # a58 # r63481
            jump eivene_s22

        'Geh weg.':
            # a59 # r63483
            jump eivene_dispose
