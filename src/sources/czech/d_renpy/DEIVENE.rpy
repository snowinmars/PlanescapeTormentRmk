init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.eivene_logic import EiveneLogic
    eiveneLogic = EiveneLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DEIVENE.DLG
# ###


# s0 # say3404
label eivene_s0: # - # IF ~  Global("EiVene","GLOBAL",0)
    nr 'Vidíš nevelkou ženu se sinalými rysy. Povislé maso na jejích tvářích způsobuje, že vypadá, jako by hladověla. Právě rozřezává tělo před sebou, prsty se rýpe v hrudi.'

    menu:
        '"Zdravím."':
            # a0 # r3406
            jump eivene_s1

        'Nechej ji být.':
            # a1 # r3407
            jump eivene_dispose


# s1 # say3410
label eivene_s1: # from 0.0
    nr 'ŽEna neodpovídá… má zřejmě spoustu práce s tělem před ní. Když ji chvíli pozoruješ, náhle sis všiml jejích rukou… její prsty jsou jako drápy. Poletují v hrudníku mrtvoly jako nože a odstraňují orgány.'

    menu:
        '"Řekl jsem: Zdravím."' if eiveneLogic.r3412_condition():
            # a2 # r3412
            jump eivene_s2

        '"Řekl jsem: Zdravím."' if eiveneLogic.r3413_condition():
            # a3 # r3413
            jump eivene_s3

        '"Co to máš s rukama?"' if eiveneLogic.r3414_condition():
            # a4 # r3414
            jump eivene_s2

        '"Co to máš s rukama?"' if eiveneLogic.r3415_condition():
            # a5 # r3415
            jump eivene_s19

        'Nechej ji být.':
            # a6 # r3416
            jump eivene_dispose


# s2 # say3417
label eivene_s2: # from 1.0 1.2
    nr 'ŽEna neodpovídá.'

    menu:
        'Zaťukej jí na rameno, získej její pozornost.':
            # a7 # r3418
            $ eiveneLogic.r3418_action()
            jump eivene_s4

        'Nechej ji být.':
            # a8 # r3419
            jump eivene_dispose


# s3 # say3420
label eivene_s3: # from 1.1
    nr 'ŽEna neodpovídá.'

    jump morte_s55  # EXTERN


# s4 # say3421
label eivene_s4: # from 2.0
    nr 'ŽEna poskočila a otočila se k tobě… její oči jsou hnilobně žluté, z malými oranžovými tečkami. Když tě uviděla, její výraz se změnil z překvapeného na podrážděný. Zamračila se na tebe.'

    menu:
        '"Uh… zdravím."':
            # a9 # r3422
            $ eiveneLogic.r3422_action()
            jump eivene_s5


# s5 # say3423
label eivene_s5: # from 4.0
    nr 'Vypadá to, že tě neslyšela. Naklonila se dopředu, šilhajíc, jako by tě neviděla… ať už má s očima cokoli, je příšerně krátkozraká. "Ty-" Cvakla drápatýma rukama a pak udělala rukou podivný pohyb. "Najdi NIT a BALZAMOVACÍ tekutinu, dones to SEM, dones to Ei-Vene. Jdi - jdi - jdi."  POZNÁMKA: dostal jsi úkol. Úkoly jsou zobrazeny v tvém deníku.'

    menu:
        'Dej jí nit a balzamovací tekutinu.' if eiveneLogic.r3424_condition():
            # a10 # r3424
            $ eiveneLogic.j37701_s5_r3424_action()
            $ eiveneLogic.r3424_action()
            jump eivene_s7

        '"Nejdřív mám nějaké otázky…"' if eiveneLogic.r3425_condition():
            # a11 # r3425
            $ eiveneLogic.j37702_s5_r3425_action()
            jump eivene_s6

        '"Nejdřív mám nějaké otázky…"' if eiveneLogic.r3426_condition():
            # a12 # r3426
            $ eiveneLogic.j37702_s5_r3426_action()
            jump eivene_s20

        '"Co to máš s rukama?"' if eiveneLogic.r3427_condition():
            # a13 # r3427
            $ eiveneLogic.j37702_s5_r3427_action()
            jump eivene_s6

        '"Co to máš s rukama?"' if eiveneLogic.r3428_condition():
            # a14 # r3428
            $ eiveneLogic.j37702_s5_r3428_action()
            jump eivene_s20

        'Odejdi.':
            # a15 # r3429
            $ eiveneLogic.j37702_s5_r3429_action()
            jump eivene_dispose


# s6 # say3430
label eivene_s6: # from 5.1 5.3
    nr 'Otočila se od tebe… nejeví známky, že by tě slyšela. Její sluch musí být stejně špatný jako zrak.'

    menu:
        'Zaťukej jí na rameno, získej její pozornost.':
            # a16 # r3431
            jump eivene_s17

        'Odejdi.':
            # a17 # r3432
            jump eivene_dispose


# s7 # say3433
label eivene_s7: # from 5.0 17.0
    nr 'Bez ztráty rytmu Ei-Vene popadla nit z tvé ruky a omotala si ji kolem pařátu, potom začala zašívat hrudník mrtvoly. Vzala si balzamovací tekutinu a začala ji mazat na mrtvolu.'

    menu:
        'Počkej.':
            # a18 # r3434
            jump eivene_s9

        'Odejdi.':
            # a19 # r3435
            jump eivene_s8


# s8 # say3436
label eivene_s8: # from 7.1
    nr 'Když už se chystáš odejít, Ei-Vene promluvila: "Zůstaň. Ty další."'

    menu:
        'Počkej.':
            # a20 # r3437
            jump eivene_s9

        'Odejdi. Rychle.':
            # a21 # r3438
            jump eivene_dispose


# s9 # say3439
label eivene_s9: # from 7.0 8.0
    nr 'Během minuty skončila. Cvakla pařáty a pak se otočila k tobě. K tvému překvapení natáhla ruce a přejela svými pařáty po tvé hrudi a pažích.'

    menu:
        '"Uh, ne že by mi to nějak vadilo, ale, uh…"' if eiveneLogic.r3440_condition():
            # a22 # r3440
            jump eivene_s11

        '"Uh, ne že by mi to nějak vadilo, ale, uh…"' if eiveneLogic.r3441_condition():
            # a23 # r3441
            jump morte_s59  # EXTERN

        'Hrej si dál na zombie.' if eiveneLogic.r3442_condition():
            # a24 # r3442
            jump eivene_s11

        'Hrej si dál na zombie.' if eiveneLogic.r3443_condition():
            # a25 # r3443
            jump morte_s59  # EXTERN

        'Odstrč ji a jdi pryč.':
            # a26 # r3444
            jump eivene_s10


# s10 # say3445
label eivene_s10: # from 9.4 12.1
    nr 'Když jsi ji odstrčil, zatvářila se šokovaně. "Zomfie? Ty ne zomfie!" Ustoupila o krok, a než stačíš zareagovat, třikrát zatleskala rukou. Odpovědělo ji zvonění zvonu, které se rozléhá po celé márnici.'

    menu:
        '"Dobrá tedy…"':
            # a27 # r3491
            $ eiveneLogic.r3491_action()
            jump eivene_dispose


# s11 # say3446
label eivene_s11: # from 9.0 9.2
    nr 'Jak přejíždí po tvých pažích a hrudi, uvědomil sis, že zkoumá tvé jizvy. Sundala z tebe své pařáty, dvakrát s nimi zacvakala a pak se předklonila a zkoumá tetování na tvé hrudi. "Hmfff. Kdo na tebe psal? Ti z Úlu? Žádný respekt pro zomfie. Zomfie nejsou obrazy." Odfrkla si, pak šťouchla do jedné tvé jizvy. "Tenhle moc špatnej, moc jizev, žádnej balzám."'

    menu:
        'Počkej.':
            # a28 # r3447
            jump eivene_s12


# s12 # say3448
label eivene_s12: # from 11.0
    nr 'Její drápy náhle sevřely nit, kterou jsi jí přinesl a s bleskovou rychlostí zaryla druhý dráp do kůže blízko jedné tvé jizvy. Je to cítit sotva víc než píchnutí od komára, ale vypadá to, že se tě žena chystá zašít.'

    menu:
        'Nechej ji pracovat.':
            # a29 # r3449
            $ eiveneLogic.r3449_action()
            jump eivene_s13

        'Odstrč ji a jdi pryč.':
            # a30 # r3450
            jump eivene_s10


# s13 # say3451
label eivene_s13: # from 12.0
    nr 'Ei-Vene začíná šít tvé jizvy, je to podivně bezbolestné.  Když skončila, čichla si k tobě, zamračila se a pak popadla balzamovací tekutinu. Během někola minut pomazala celé tvé tělo tekutinou… a i když je to divné, cítíš se *líp*.'

    menu:
        'Nechej ji pracovat.' if eiveneLogic.r3452_condition():
            # a31 # r3452
            jump eivene_s14

        'Nechej ji pracovat.' if eiveneLogic.r3453_condition():
            # a32 # r3453
            jump morte_s60  # EXTERN


# s14 # say3454
label eivene_s14: # from 13.0
    nr 'Ei-Vene dokončila práci na tvém těle, znovu tě očichala a pak mávla pařátem. "Hotovo. Jdi - jdi."'

    menu:
        '"Počkej chvíli." (Rukou jsi naznačil, jako bys odmykal zámek klíčem.) "Potřebuju balzamovací klíč. Máš ho?"' if eiveneLogic.r3456_condition():
            # a33 # r3456
            $ eiveneLogic.r3456_action()
            jump eivene_s18

        '"Počkej chvíli." (Rukou jsi naznačil, jako bys odmykal zámek klíčem.) "Potřebuju balzamovací klíč. Máš ho?"' if eiveneLogic.r3457_condition():
            # a34 # r3457
            jump eivene_s24

        'Odejdi.':
            # a35 # r4350
            jump eivene_dispose


# s15 # say3458
label eivene_s15: # - # IF ~  Global("EiVene","GLOBAL",1)
    nr 'Vidíš Ei-Vene. Stále se hrabe pařáty v mrtvole. Rytmus jejích pohybů ti něco připomíná, ale nedokážeš si přesně vybavit co.'

    menu:
        'Dívej se na ní, studuj pohyby jejích rukou.' if eiveneLogic.r3459_condition():
            # a36 # r3459
            $ eiveneLogic.j61612_s15_r3459_action()
            $ eiveneLogic.r3459_action()
            jump eivene_s16

        'Zaťukej jí na rameno, získej její pozornost.' if eiveneLogic.r3463_condition():
            # a37 # r3463
            jump eivene_s17

        'Zaťukej jí na rameno, získej její pozornost.' if eiveneLogic.r4351_condition():
            # a38 # r4351
            jump eivene_s22

        'Odejdi.':
            # a39 # r4352
            jump eivene_dispose


# s16 # say3464
label eivene_s16: # from 15.0
    nr 'Když se díváš na pohyby Ei-Veniných rukou, cítíš v hlavě bodání a náhle se tvá vize rozostřila, rozmazala, až…'

    $ eiveneLogic.s16_action()
    jump eivene_s26


# s17 # say3468
label eivene_s17: # from 6.0 15.1 25.0 27.0
    nr 'Otočila se, uviděla tě a zamračila se. "Blbý zomfie." Netrpělivě zacvakala pařáty o sebe a pak naznačila jednou rukou šití. "Najdi nit a blazamovací tekutinu, dones to sem, k Ei-Vene. Jdi-jdi-jdi."'

    menu:
        'Dej jí nit a balzamovací tekutinu.' if eiveneLogic.r3469_condition():
            # a40 # r3469
            $ eiveneLogic.j38202_s17_r3469_action()
            $ eiveneLogic.r3469_action()
            jump eivene_s7

        '"Počkej chvíli." (Rukou jsi naznačil, jako bys odmykal zámek klíčem.) "Potřebuju balzamovací klíč. Máš ho?"' if eiveneLogic.r3470_condition():
            # a41 # r3470
            $ eiveneLogic.r3470_action()
            jump eivene_s18

        '"Počkej chvíli." (Rukou jsi naznačil, jako bys odmykal zámek klíčem.) "Potřebuju balzamovací klíč. Máš ho?"' if eiveneLogic.r3497_condition():
            # a42 # r3497
            jump eivene_s24

        'Odejdi.':
            # a43 # r4357
            jump eivene_dispose


# s18 # say3471
label eivene_s18: # from 14.0 17.1 22.0
    nr 'Naklonila se kupředu, prohlédla si pohyby rukou a pak si odfrkla. Ze své róby vytáhla klíč, visící na jejím podivně zkrouceném a ostrém ukazováku. Upustila ti ho do ruky. "Dones ho pak zpátky. Jdi-jdi."'

    menu:
        '"Co to máš s rukama?"' if eiveneLogic.r3494_condition():
            # a44 # r3494
            $ eiveneLogic.j38203_s18_r3494_action()
            jump eivene_s23

        '"Co to máš s rukama?"' if eiveneLogic.r3495_condition():
            # a45 # r3495
            $ eiveneLogic.j38203_s18_r3495_action()
            jump eivene_s21

        'Odejdi.':
            # a46 # r3496
            $ eiveneLogic.j38203_s18_r3496_action()
            jump eivene_dispose


# s19 # say3472
label eivene_s19: # from 1.3
    nr 'ŽEna neodpovídá.'

    $ eiveneLogic.j38205_s19_action()
    jump morte_s56  # EXTERN


# s20 # say3485
label eivene_s20: # from 5.2 5.4
    nr 'Otočila se od tebe… nejeví známky, že by tě slyšela.'

    jump morte_s57  # EXTERN


# s21 # say3486
label eivene_s21: # from 18.1
    nr 'Otočila se od tebe… nejeví známky, že by tě slyšela. Její sluch musí být stejně špatný jako zrak.'

    $ eiveneLogic.j38205_s21_action()
    jump morte_s58  # EXTERN


# s22 # say3493
label eivene_s22: # from 15.2 25.1 27.1
    nr 'Otočila se a uviděla tě. Zamračila se. "Blbá zomfie." Netrpělivě zacvakala pařáty o sebe. "Ty hotovej. Všechno zašitý. A teď jdi-jdi-jdi."'

    menu:
        '"Počkej chvíli." (Rukou jsi naznačil, jako bys odmykal zámek klíčem.) "Potřebuju balzamovací klíč. Máš ho?"' if eiveneLogic.r3501_condition():
            # a47 # r3501
            $ eiveneLogic.r3501_action()
            jump eivene_s18

        '"Počkej chvíli." (Rukou jsi naznačil, jako bys odmykal zámek klíčem.) "Potřebuju balzamovací klíč. Máš ho?"' if eiveneLogic.r3502_condition():
            # a48 # r3502
            jump eivene_s24

        'Odejdi.':
            # a49 # r4358
            jump eivene_dispose


# s23 # say3498
label eivene_s23: # from 18.0
    nr 'Otočila se od tebe… nejeví známky, že by tě slyšela. Její sluch musí být stejně špatný jako zrak.'

    menu:
        'Odejdi.':
            # a50 # r3499
            jump eivene_dispose


# s24 # say4200
label eivene_s24: # from 14.1 17.2 22.1
    nr 'Naklonila se, podívala se na tvé ruce a pak si odfrkla. Zajela rukou do roucha, chvíli tam šmátrá a pak pokrčila rameny. "Není klíč." Odmávla tě pryč. "Jdi-jdi-jdi."'

    menu:
        'Odejdi.':
            # a51 # r4201
            jump eivene_dispose


# s25 # say4353
label eivene_s25: # -
    nr 'Chvíli ji pozoruješ a rytmus jejich rukou ti přivolal dvě vzpomínky - jednu, jak hraješ na nějaký strunný nástroj, možná harfu. Druhá vzpomínka je o ukradnutí peněženku. K tvému překvapení se ti v hlavě objevilo nutkání vybrat Ei-Veniny kapsy.  POZNÁMKA: Získal jsi vzpomínku. Vzpomínky ti mohou přidat další zkušenosti, dovednosti a dokonce vést později k dalším vzpomínkám.'

    menu:
        'Zaťukej jí na rameno, získej její pozornost.' if eiveneLogic.r4354_condition():
            # a52 # r4354
            jump eivene_s17

        'Zaťukej jí na rameno, získej její pozornost.' if eiveneLogic.r4355_condition():
            # a53 # r4355
            jump eivene_s22

        'Odejdi.':
            # a54 # r4356
            jump eivene_dispose


# s26 # say63477
label eivene_s26: # from 16.0
    nr '…stojíš před čerstvě zabitou mrtvolou, jíž posmrtná ztuhlost obdařila úsměvem; pomocí skalpelu jí bylo na lebku vyryto číslo „42“. Zombie leží na desce a ty jsi právě dokončil sešívaní hrudního koše. Něco jsi umístil dovnitř. Něco, co by mohlo být užitečné, kdybys to znovu objevil…'

    menu:
        'Echo: "Ochraňuj tyhle věci a počkej, než se vrátím."' if eiveneLogic.r63478_condition():
            # a55 # r63478
            $ eiveneLogic.r63478_action()
            jump eivene_s27

        'Echo: "Ochraňuj tyhle věci a počkej, než se vrátím."' if eiveneLogic.r63479_condition():
            # a56 # r63479
            jump eivene_s27


# s27 # say63480
label eivene_s27: # from 26.0 26.1
    nr 'Plně ses tomu oddal a popustil jsi uzdu dvé paměti, která se dere ven… Zkřížil jsi ruce na hrudi a, jak jsi očekával, mrtvola udělala to samé. Po chvíli zase nechala spadnout ruce podél svých boků a jakmile to udělala, vidiny se začaly zrácet… teď až zase sleduješ, jak Ei-Veniny prsty divoce kmitají.  POZNÁMKA: Vrátily se ti vzpomínky. Ty ti mohou zaručit další zkoušenosti či schopnosti a mohou tě taky nasměrovat k něčemu hodnotnému.'

    menu:
        'Zatřes s ní, získej její pozornost.' if eiveneLogic.r63482_condition():
            # a57 # r63482
            jump eivene_s17

        'Zatřes s ní, získej její pozornost.' if eiveneLogic.r63481_condition():
            # a58 # r63481
            jump eivene_s22

        'Odejdi.':
            # a59 # r63483
            jump eivene_dispose
