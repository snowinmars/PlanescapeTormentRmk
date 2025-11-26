init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.vaxis_logic import VaxisLogic
    vaxisLogic = VaxisLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DVAXIS.DLG
# ###


# s0 # say453
label vaxis_s0: # - # IF ~  Global("Vaxis","GLOBAL",0)
    nr 'Belhající mrtvola na tebe civí svým prázdným pohledem. Má do čela vyryto číslo "821" a rty má sešity. Z těla vychází slabý zápach formaldehydu.'

    menu:
        '"Tak… viděl jsi tu něco zajímavého?"' if vaxisLogic.r454_condition():
            # a0 # r454
            $ vaxisLogic.r454_action()
            jump vaxis_s5

        '"Tak… viděl jsi tu něco zajímavého?"' if vaxisLogic.r455_condition():
            # a1 # r455
            jump vaxis_s5

        '"Já vím, že nejsi zombie, víš. Nikoho tím neoblafneš."' if vaxisLogic.r456_condition():
            # a2 # r456
            jump vaxis_s5

        'Použít tvojí schopnost Kosti-vyprávějte na mrtvolu.' if vaxisLogic.r457_condition():
            # a3 # r457
            jump vaxis_s1

        '"Bylo to skvělé s tebou pokecat. Sbohem."':
            # a4 # r458
            jump vaxis_s5

        'Nechej mrtvolu na pokoji.':
            # a5 # r459
            jump vaxis_dispose


# s1 # say460
label vaxis_s1: # from 0.3 # IF ~  False()
    nr 'Docela náhodou, nevypadá to, že by tvoje schopnost na tohle tělo fungovala.'

    menu:
        'Hrábni mu do oka.':
            # a6 # r461
            $ vaxisLogic.r461_action()
            jump vaxis_s2

        'Nechej mrtvolu na pokoji.':
            # a7 # r462
            jump vaxis_dispose


# s2 # say463
label vaxis_s2: # from 1.0
    nr 'Mrtvola vydala tlumené zasténání, když jsi jí sáhl do oka a prudce zdvihla ruce, aby si zakryla obličej. Začíná si mumlat různé nemravné nadávky, které jsou směřovány tobě.'

    menu:
        '"Ty nejsi zombie! Kdo jsi?"':
            # a8 # r464
            $ vaxisLogic.j64513_s2_r464_action()
            jump vaxis_s6

        '"Proč jsi maskovanej jako mrtvola?"':
            # a9 # r465
            $ vaxisLogic.j64513_s2_r465_action()
            jump vaxis_s6

        'Odejít. Rychle.':
            # a10 # r466
            $ vaxisLogic.j64513_s2_r466_action()
            jump vaxis_s3


# s3 # say467
label vaxis_s3: # from 2.2 5.2
    nr 'Jak se chystáš k odchodu, „zombie“ si něco mumlá… vypadá to jako by se pokoušela něco říct, ale je to pro ni těžké, když má sešité rty. "Kdu ty? Cu ty chcuš?"'

    menu:
        '"Hledám odtud cestu ven. Můžeš mi pomoct?"' if vaxisLogic.r468_condition():
            # a11 # r468
            jump vaxis_s7

        '"Kdo jsi?"':
            # a12 # r469
            jump vaxis_s7

        '"Řekni mi kdo jsi nebo zavolám stráže."':
            # a13 # r470
            jump vaxis_s7

        'Lež: "Proč… já jsem tě hledal."' if vaxisLogic.r472_condition():
            # a14 # r472
            $ vaxisLogic.r472_action()
            jump vaxis_s24

        '"Zeptám se na pár otázek, *zombie.* Řekni mi, kdo jsi, nebo se z převleku stane skutečnost."':
            # a15 # r473
            $ vaxisLogic.r473_action()
            jump vaxis_s7

        '"Promiň, že jsem tě otravoval… ať už jsi kdokoliv. Sbohem."':
            # a16 # r474
            jump vaxis_s4


# s4 # say471
label vaxis_s4: # from 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
    nr 'Když už jsi na odchodu, zombie ze svého hrdla vydá slabé zavrčení. "Tu nic neřúkneš o mně. Tu bút zticha. NIC neřúct Spaluvačům." Dává si prst před pusu. "Sssssst." Pak přejíždí prstem přes své hrdlo. "Nebu já tě navždu uspat. Slušíš mě?"'

    menu:
        '"Tak ty si mi VYHROŽOVAL? Tak to jo… připrav se na smrrrrrrrt."':
            # a17 # r475
            $ vaxisLogic.r475_action()
            jump vaxis_dispose

        'Lež: "Vůbec jsem ani trošku *nepomyslel*, že bych o tobě řekl Spalovačům."':
            # a18 # r476
            $ vaxisLogic.r476_action()
            jump vaxis_dispose

        'Pravda: "Slibuju, že o tobě Spalovačům neřeknu."':
            # a19 # r477
            $ vaxisLogic.r477_action()
            jump vaxis_dispose

        '"Jistěže. Ty si hleď svých věcí a já se budu starat o věci svoje."':
            # a20 # r478
            jump vaxis_dispose


# s5 # say479
label vaxis_s5: # from 0.0 0.1 0.2 0.4
    nr 'Jak jsi oslovil zombie, tak vypadá dost překvapeně. "Eh? Cu?"'

    menu:
        '"Ty nejsi zombie! Kdo jsi?„':
            # a21 # r480
            $ vaxisLogic.j64513_s5_r480_action()
            $ vaxisLogic.r480_action()
            jump vaxis_s6

        '"Proč jsi převlečený jako mrtvola?"':
            # a22 # r481
            $ vaxisLogic.j64513_s5_r481_action()
            $ vaxisLogic.r481_action()
            jump vaxis_s6

        'Odejdi. Rychle.':
            # a23 # r482
            $ vaxisLogic.j64513_s5_r482_action()
            $ vaxisLogic.r482_action()
            jump vaxis_s3


# s6 # say483
label vaxis_s6: # from 2.0 2.1 5.0 5.1
    nr '„Zombie“ se pokouší komunikovat skrz sešité rty; má podivný napůl vystrašený a napůl naštvaný výraz v obličeji. "Kdu TY? Cu ty chcuš?"'

    menu:
        '"Hledám odtud cestu ven. Můžeš mi pomoct?"' if vaxisLogic.r484_condition():
            # a24 # r484
            jump vaxis_s7

        '"Kdo jsi?"':
            # a25 # r485
            jump vaxis_s7

        '"Řekni mi, kdo jsi nebo zavolám stráže."':
            # a26 # r486
            jump vaxis_s7

        'Lež: "Proč… já jsem tě hledal."' if vaxisLogic.r487_condition():
            # a27 # r487
            $ vaxisLogic.r487_action()
            jump vaxis_s24

        '"Zeptám se na pár otázek, *zombie.* Řekni mi, kdo jsi, nebo se z převleku stane skutečnost."':
            # a28 # r488
            $ vaxisLogic.r488_action()
            jump vaxis_s7

        '"Promiň, že jsem tě otravoval… ať už jsi kdokoliv. Sbohem."':
            # a29 # r489
            jump vaxis_s4


# s7 # say490
label vaxis_s7: # from 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
    nr 'Zombie nevypadá, že by tě slyšel. Prohlíží si tě na chvíli shora dolů a pak se zamračí. "Cu poslucháš?" Jeho oči se podezíravě zúžily. "Tu špuhujuš Spaluvuču?"'

    menu:
        '"Ne. Pokouším se utéct."' if vaxisLogic.r491_condition():
            # a30 # r491
            jump vaxis_s12

        '"Nejsem špeh. Zapadnul jsem sem náhodou. Můžeš mi pomoct odsud?"' if vaxisLogic.r492_condition():
            # a31 # r492
            jump vaxis_s31

        'Lež: "Ano, špehuju… Spalovače."' if vaxisLogic.r493_condition():
            # a32 # r493
            $ vaxisLogic.r493_action()
            jump vaxis_s8

        'Lež: "Ano, špehuju… Spalovače."' if vaxisLogic.r494_condition():
            # a33 # r494
            $ vaxisLogic.r494_action()
            jump vaxis_s9

        '"Proč mi neřekneš co TU děláš než zavolám stráže."' if vaxisLogic.r495_condition():
            # a34 # r495
            jump vaxis_s21

        '"Proč mi neřekneš co TU děláš než zavolám stráže."' if vaxisLogic.r496_condition():
            # a35 # r496
            jump vaxis_s17

        '"Podívej, já tu pokládám otázky *zombie.* Řekni mi, co tu děláš, nebo se všichni dozví, co skrývá pod tvým převlekem."' if vaxisLogic.r1306_condition():
            # a36 # r1306
            $ vaxisLogic.r1306_action()
            jump vaxis_s19

        '"Podívej, já tu pokládám otázky *zombie.* Řekni mi, co tu děláš, nebo se všichni dozví, co skrývá pod tvým převlekem."' if vaxisLogic.r1348_condition():
            # a37 # r1348
            $ vaxisLogic.r1348_action()
            jump vaxis_s22

        '"Musím odejít. Sbohem."':
            # a38 # r1349
            jump vaxis_s4


# s8 # say1350
label vaxis_s8: # from 7.2
    nr 'Pozorně tě studuje. "Ty fpeh? Ty deláf frandu?"'

    menu:
        '"Huh?"':
            # a39 # r4671
            jump vaxis_s10

        '"Srandu?"':
            # a40 # r1352
            jump vaxis_s10

        'Lež: "Ano… zrovna jsem tě hledal. Jsem rád, že jsem tě konečně našel."' if vaxisLogic.r1359_condition():
            # a41 # r1359
            $ vaxisLogic.r1359_action()
            jump vaxis_s24

        'Lež: "Ano… ale teď o tom nemůžu moc mluvit. Co tu *máš* za úkol?"' if vaxisLogic.r1360_condition():
            # a42 # r1360
            $ vaxisLogic.r1360_action()
            jump vaxis_s28

        'Lež: "Ano… ale teď o tom nemůžu moc mluvit. Co tu děláš?"' if vaxisLogic.r1361_condition():
            # a43 # r1361
            $ vaxisLogic.r1361_action()
            jump vaxis_s28

        '"No, Teď nemám čas s tebou mluvit… možná někdy jindy."':
            # a44 # r1362
            jump vaxis_s4


# s9 # say1363
label vaxis_s9: # from 7.3
    nr 'Pozorně tě studuje. "Ty špeh? Ty děláš srandu?"'

    menu:
        '"Huh?"':
            # a45 # r4359
            jump morte_s85  # EXTERN

        '"Buňka?"':
            # a46 # r4360
            jump morte_s85  # EXTERN


# s10 # say4361
label vaxis_s10: # from 8.0 8.1
    nr 'Zamračil se a pak na tebe zasyčel. "Ty né fpíón!" Mávl rukou. "Vmiv! Vmivni!"'

    menu:
        '"Nejdřív mi řekni, co tady děláš, nebo zavolám stráže."' if vaxisLogic.r4362_condition():
            # a47 # r4362
            jump vaxis_s21

        '"Nejdřív mi řekni, co tady děláš, nebo zavolám stráže."' if vaxisLogic.r4363_condition():
            # a48 # r4363
            jump vaxis_s17

        '"Odpověz na moje zatracené otázky, nebo z tebe udělám pravou zombie dřív, než si třikrát uprdneš."' if vaxisLogic.r4364_condition():
            # a49 # r4364
            $ vaxisLogic.r4364_action()
            jump vaxis_s19

        '"Odpověz na moje zatracené otázky, nebo z tebe udělám pravou zombie dřív, než si třikrát uprdneš."' if vaxisLogic.r4365_condition():
            # a50 # r4365
            $ vaxisLogic.r4365_action()
            jump vaxis_s22

        '"Dobře, dobře… Já jdu."':
            # a51 # r4367
            jump vaxis_s4


# s11 # say4366
label vaxis_s11: # externs morte_s86
    nr 'Zombie na tohle přikývla. Máš pocit, že za vším tím maskováním vidíš pýchu.'

    menu:
        '"Můžeš mi pomoct s útěkem?"' if vaxisLogic.r4368_condition():
            # a52 # r4368
            jump vaxis_s12

        '"Tak co tady děláš?"':
            # a53 # r4369
            jump vaxis_s28

        'Lži: "Takže ty špehuješ pro Anarchisty? No, já taky špehuju spalováky… ale teď o tom nemůžu mluvit, jestli mi rozumíš. Co tady máš za úkol ty?"' if vaxisLogic.r4370_condition():
            # a54 # r4370
            $ vaxisLogic.r4370_action()
            jump vaxis_s28

        'Lži: "Takže ty špehuješ pro Anarchisty? No, já taky špehuju spalováky… ale teď o tom nemůžu mluvit. Co tady děláš?"' if vaxisLogic.r4371_condition():
            # a55 # r4371
            $ vaxisLogic.r4371_action()
            jump vaxis_s28

        '"Uh, zrovna nemám čas na pokec… možná později."':
            # a56 # r4372
            jump vaxis_s4


# s12 # say4373
label vaxis_s12: # from 7.0 11.0
    nr 'Vypadá to, že jsi zombie zaujal. "Máf problémy? Fo fe ftalo?"'

    menu:
        '"Probudil jsem se na jednom z kamenů nahoře."':
            # a57 # r4374
            jump vaxis_s13

        '"Já… zůstal jsem tady uvězněný. Můžeš mi pomoct?"':
            # a58 # r4375
            jump vaxis_s31

        '"Možná ti o tom řeknu někdy jindy."':
            # a59 # r4376
            jump vaxis_s4


# s13 # say4377
label vaxis_s13: # from 12.0
    nr 'Zombie se na tebe dívá, jako bys zešílel. "Ty blávnifej?"'

    menu:
        '"Ano, jsem blávnífej. Hodně blávnifej."':
            # a60 # r4378
            jump vaxis_s14

        '"„Blávnifej?“ Co je to?"' if vaxisLogic.r4379_condition():
            # a61 # r4379
            jump vaxis_s16

        '"„Blávnifej?“ Co je to?"' if vaxisLogic.r4380_condition():
            # a62 # r4380
            jump morte_s87  # EXTERN

        '"Vím, že to zní neuvěřitelně, ale vážně ti nelžu: Vstal jsem z mrtvých na jednom z náhrobků."':
            # a63 # r4381
            $ vaxisLogic.r4381_action()
            jump vaxis_s14

        '"Uh, ne… vlastně, tak nějak jsem tu uvíznul. Můžeš mi pomoct?"':
            # a64 # r4382
            jump vaxis_s31

        '"Zapomeň, žes mě potkal. Budu muset jít."':
            # a65 # r4383
            jump vaxis_s4


# s14 # say4384
label vaxis_s14: # from 13.0 13.3 15.0
    nr 'Dívá se na tebe, pak zasyčel a mávl rukou. "Fef blávnifej! Vypadni vode mně!"'

    menu:
        '"Já nikam nejdu. Řekni mi, co tady děláš, nebo zavolám stráže."' if vaxisLogic.r4385_condition():
            # a66 # r4385
            jump vaxis_s21

        '"Já nikam nejdu. Řekni mi, co tady děláš, nebo zavolám stráže."' if vaxisLogic.r4386_condition():
            # a67 # r4386
            jump vaxis_s17

        '"Nejdřív mi odpovíš na moje zatracené otázky, nebo to tvoje maskování bude pravé. Pravá zombie."' if vaxisLogic.r4387_condition():
            # a68 # r4387
            $ vaxisLogic.r4387_action()
            jump vaxis_s19

        '"Nejdřív mi odpovíš na moje zatracené otázky, nebo to tvoje maskování bude pravé. Pravá zombie."' if vaxisLogic.r4388_condition():
            # a69 # r4388
            $ vaxisLogic.r4388_action()
            jump vaxis_s22

        '"Dobře, dobře… sbohem."':
            # a70 # r4389
            jump vaxis_s4


# s15 # say4390
label vaxis_s15: # externs morte_s88
    nr 'Falešná zombie se na tebe podezřívavě dívá.'

    menu:
        '"Je to pravda: Probral jsem se na náhrobku."':
            # a71 # r4391
            $ vaxisLogic.r4391_action()
            jump vaxis_s14

        '"Uh, promiň… Vlastně, tak nějak jsem tu uvíznul. Můžeš mi pomoct?"':
            # a72 # r4392
            jump vaxis_s31

        '"To nic. Už budu muset jít."':
            # a73 # r4393
            jump vaxis_s4


# s16 # say4394
label vaxis_s16: # from 13.1
    nr 'Dívá se na tebe, pak zasyčel a mávl rukou. "Fef blávnifej! Magor! Blbef! Vypadni vode mně!"'

    menu:
        '"Já nikam nejdu. Řekni mi, co tady děláš, nebo zavolám stráže."' if vaxisLogic.r4395_condition():
            # a74 # r4395
            jump vaxis_s21

        '"Já nikam nejdu. Řekni mi, co tady děláš, nebo zavolám stráže."' if vaxisLogic.r4396_condition():
            # a75 # r4396
            jump vaxis_s17

        '"Nejdřív mi odpovíš na moje zatracené otázky, nebo to tvoje maskování bude pravé. Pravá zombie."' if vaxisLogic.r4397_condition():
            # a76 # r4397
            $ vaxisLogic.r4397_action()
            jump vaxis_s19

        '"Nejdřív mi odpovíš na moje zatracené otázky, nebo to tvoje maskování bude pravé. Pravá zombie."' if vaxisLogic.r4398_condition():
            # a77 # r4398
            $ vaxisLogic.r4398_action()
            jump vaxis_s22

        '"Dobře, dobře… Jdu."':
            # a78 # r4399
            jump vaxis_s4


# s17 # say4400
label vaxis_s17: # from 7.5 10.1 14.1 16.1 25.3 27.3
    nr 'Na chvíli vypadá zastrašeně, ale rychle se vzpamatoval. "Ty práfknef mě, já práfknu tebe. Já tu mám fchovaný kámofe, ty nemáf nikoho. Nemáf tu fo dělat. Fpalovafi tě vabijou. Já utefu."'

    menu:
        '"Neutečeš, jestli tě ZABIJU. A teď mi odpověz na mé otázky, nebo to tvoje maskování bude doopravdy. Zombie."' if vaxisLogic.r4401_condition():
            # a79 # r4401
            $ vaxisLogic.r4401_action()
            jump vaxis_s18

        '"Neutečeš, jestli tě ZABIJU. A teď mi odpověz na mé otázky, nebo to tvoje maskování bude doopravdy. Zombie."' if vaxisLogic.r4402_condition():
            # a80 # r4402
            $ vaxisLogic.r4402_action()
            jump vaxis_s22

        '"Tak si shoř v pekle. Já jdu."':
            # a81 # r4403
            jump vaxis_s4


# s18 # say4404
label vaxis_s18: # from 17.0
    nr 'Oči zombie se rošířily, pak na tebe zasyčel. "VKUFÍF mě dát do knihy mrtvejch? Mám tu fchovaný kámofe, ty nemáf nikoho. Dotkni fě mě a kámofi tě vabijou!"'

    menu:
        '"Risknu to. Připrav se na smrt."':
            # a82 # r4405
            $ vaxisLogic.r4405_action()
            jump vaxis_dispose

        '"Tak si shoř v pekle. Já jdu. Radši si dávej pozor…*zombie*."':
            # a83 # r4406
            jump vaxis_s4


# s19 # say4407
label vaxis_s19: # from 7.6 10.2 14.2 16.2 25.4 27.4
    nr 'Oči zombie se rošířily, pak přejel očima po tvé postavě a zasyčel na tebe. "TY mě VKUFÍF dát do knihy mrtvejch? Mám tu fchovaný kámofe, ty nemáf nikoho. Dotkni fě mě a kámofi tě vabijou!"'

    menu:
        '"Risknu to. Připrav se na smrt."':
            # a84 # r4408
            $ vaxisLogic.r4408_action()
            jump vaxis_dispose

        '"Co když tvé maskování prozradím strážím?"' if vaxisLogic.r4409_condition():
            # a85 # r4409
            jump vaxis_s21

        '"Co když tvé maskování prozradím strážím?"' if vaxisLogic.r4410_condition():
            # a86 # r4410
            jump vaxis_s20

        '"Tak si shoř v pekle. Já jdu. Radši si dávej pozor…*zombie*."':
            # a87 # r4411
            jump vaxis_s4


# s20 # say4412
label vaxis_s20: # from 19.2
    nr 'Oči zombie se rošířily, pak na tebe zasyčel. "Ty práfknef mě, já práfknu tebe. Já tu mám fchovaný kámofe, ty nemáf nikoho. Nemáf tu fo dělat. Fpalovafi tě vabijou. Já utefu."'

    menu:
        '"To byla tvoje poslední šance, mrtvolo. Připrav se na smrt."':
            # a88 # r4413
            $ vaxisLogic.r4413_action()
            jump vaxis_dispose

        '"Tak si shoř v pekle. Já jdu. Radši si dávej pozor, *zombie*."':
            # a89 # r4414
            jump vaxis_s4


# s21 # say4415
label vaxis_s21: # from 7.4 10.0 14.0 16.0 19.1 25.2 27.2
    nr 'V tvýh očích musí být něco, co způsobilo, že se zombie přikrčila. "Ne-ne-ne! Nevolej ftrávníky!" Vypadá vystrašeně. "Já fpehuju fpalovafe, víkám, fo vidím. Nif víf."'

    menu:
        '"Špehuješ? Pro koho?"':
            # a90 # r4416
            jump vaxis_s23

        '"Co jsi viděl Spalovače dělat?"':
            # a91 # r4417
            jump vaxis_s29

        '"Mám nějaké otázky…"':
            # a92 # r4418
            jump vaxis_s43

        '"To je vše, co jsem chtěl vědět. Sbohem, *zombie.*"':
            # a93 # r4419
            jump vaxis_dispose


# s22 # say4420
label vaxis_s22: # from 7.7 10.3 14.3 16.3 17.1 25.5 27.5
    nr '"Neh-neh-ne! Neublivuj mi!" Fakt, že vážíš o pár kilo svalů víc než zombie pravděpodobně zapůsobil. "Neublivuj mi! Já fpehuju fpalovafe, víkám, fo vidím. Nif víf."'

    menu:
        '"Špehuješ? Pro koho?"':
            # a94 # r4421
            jump vaxis_s23

        '"Co jsi viděl Spalovače dělat?"':
            # a95 # r4422
            jump vaxis_s29

        '"Mám nějaké otázky…"':
            # a96 # r4423
            jump vaxis_s43

        '"To je vše, co jsem chtěl vědět. A teď mi jdi z cesty, *zombie*."':
            # a97 # r4424
            jump vaxis_dispose


# s23 # say4425
label vaxis_s23: # from 21.0 22.0
    nr 'Zombie zmlkla, zjevně se bojí  Už nechce říct ani slovo.'

    menu:
        '"No tak. Proč to tady hlídáš?"' if vaxisLogic.r4426_condition():
            # a98 # r4426
            jump vaxis_s70

        '"No tak. Proč to tady hlídáš?"' if vaxisLogic.r4427_condition():
            # a99 # r4427
            jump morte_s89  # EXTERN

        '"Bude pro tebe MNOHEM míň bolestivé, když mi řekneš, pro koho tady špehuješ."' if vaxisLogic.r4428_condition():
            # a100 # r4428
            $ vaxisLogic.r4428_action()
            jump vaxis_s70

        '"Bude pro tebe MNOHEM míň bolestivé, když mi řekneš, pro koho tady špehuješ."' if vaxisLogic.r4429_condition():
            # a101 # r4429
            $ vaxisLogic.r4429_action()
            jump morte_s89  # EXTERN

        '"Tak to nic. Co jsi viděl Spalovače dělat?"':
            # a102 # r4430
            jump vaxis_s29

        '"Chtěl jsem vědět ještě něco…"':
            # a103 # r4431
            jump vaxis_s43

        '"Tak na to zapomeň. Sbohem, *zombie.*"':
            # a104 # r4432
            jump vaxis_dispose


# s24 # say4433
label vaxis_s24: # from 3.3 6.3 8.2
    nr '"Hledáf mě? Prof?" Zašilhal na tebe. "Ty máf fprávu pro mě?"'

    menu:
        'Lži: "Ano, mám pro tebe zprávu."':
            # a105 # r4434
            $ vaxisLogic.r4434_action()
            jump vaxis_s26

        '"Zprávu od koho?"':
            # a106 # r4435
            jump vaxis_s27

        '"Ne, nemám zprávu."':
            # a107 # r4436
            jump vaxis_s25


# s25 # say4437
label vaxis_s25: # from 24.2
    nr 'Zlostně zasyčel. "Tak fo chfef, vole?"'

    menu:
        '"Hledám cestu pryč. Můžeš mi pomoct?"' if vaxisLogic.r4438_condition():
            # a108 # r4438
            jump vaxis_s31

        '"Chci nějaké informace…"':
            # a109 # r4439
            jump vaxis_s43

        '"Řekni mi, co tady děláš, jinak zavolám stráže."' if vaxisLogic.r4440_condition():
            # a110 # r4440
            jump vaxis_s21

        '"Řekni mi, co tady děláš, jinak zavolám stráže."' if vaxisLogic.r4441_condition():
            # a111 # r4441
            jump vaxis_s17

        '"Odpověz na moje zatracené otázky, nebo z tebe udělám pravou zombie dřív, než si třikrát uprdneš."' if vaxisLogic.r4442_condition():
            # a112 # r4442
            $ vaxisLogic.r4442_action()
            jump vaxis_s19

        '"Odpověz na moje zatracené otázky, nebo z tebe udělám pravou zombie dřív, než si třikrát uprdneš."' if vaxisLogic.r4443_condition():
            # a113 # r4443
            $ vaxisLogic.r4443_action()
            jump vaxis_s22

        '"Omlouvám se, že jsem vyrušoval… ať už jsi kdokoli. Sbohem."':
            # a114 # r4444
            jump vaxis_s4


# s26 # say4445
label vaxis_s26: # from 24.0
    nr '"Jaká fpráva?"'

    menu:
        '"Řekneš mi o své misi."' if vaxisLogic.r4446_condition():
            # a115 # r4446
            jump vaxis_s28

        'Lži: "Mám nové rozkazy."' if vaxisLogic.r4447_condition():
            # a116 # r4447
            $ vaxisLogic.r4447_action()
            jump vaxis_s30

        'Lži: "Já… mám nové rozkazy."' if vaxisLogic.r4448_condition():
            # a117 # r4448
            $ vaxisLogic.r4448_action()
            jump vaxis_s30

        '"Promiň, nemám zprávu."':
            # a118 # r4449
            jump vaxis_s27

        '"To nic. Omlouvám se, že jsem vyrušoval. Sbohem."':
            # a119 # r4450
            jump vaxis_s27


# s27 # say4451
label vaxis_s27: # from 24.1 26.3 26.4
    nr 'Jeho oči se zúžily. "Ty nejfi pofel. Kdo fef?"'

    menu:
        '"Hledám cestu pryč. Můžeš mi pomoct?"' if vaxisLogic.r4452_condition():
            # a120 # r4452
            jump vaxis_s31

        '"Chci nějaké informace…"':
            # a121 # r4453
            jump vaxis_s43

        '"Řekni mi, co tady děláš, jinak zavolám stráže."' if vaxisLogic.r4454_condition():
            # a122 # r4454
            jump vaxis_s21

        '"Řekni mi, co tady děláš, jinak zavolám stráže."' if vaxisLogic.r4455_condition():
            # a123 # r4455
            jump vaxis_s17

        '"Já tady dávám otázky, *zombie*. Řekni mi, kdo jsi, nebo už ten převlek nebudeš potřebovat, protože s tebe udělám opravdovou mrtvolu."' if vaxisLogic.r4456_condition():
            # a124 # r4456
            $ vaxisLogic.r4456_action()
            jump vaxis_s19

        '"Já tady dávám otázky, *zombie*. Řekni mi, kdo jsi, nebo už ten převlek nebudeš potřebovat, protože s tebe udělám opravdovou mrtvolu."' if vaxisLogic.r4457_condition():
            # a125 # r4457
            $ vaxisLogic.r4457_action()
            jump vaxis_s22

        '"Omlouvám se, že jsem vyrušoval… kdokoli jsi. Sbohem."':
            # a126 # r4458
            jump vaxis_s4


# s28 # say4459
label vaxis_s28: # from 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
    nr '"Fpehuju Fpalovafe. Víkám, fo vidím. Nif víf."'

    menu:
        '"Co jsi viděl Spalovače dělat?"':
            # a127 # r4460
            jump vaxis_s29

        '"Aha. Ještě jsem se tě chtěl zeptat na něco jiného…"':
            # a128 # r4461
            jump vaxis_s43

        '"To je vše, co jsem chtěl vědět. Sbohem."':
            # a129 # r4462
            jump vaxis_dispose


# s29 # say4463
label vaxis_s29: # from 21.1 22.1 23.4 28.0 70.1 71.2
    nr '"Nif. Nedělaj nif. Nif fem nevjiftil. Mrtví, mrtví, akorát mrtví lidi. Fpalovafi nif nedělaj." Tváří se zklamaně. "Ftejně je ale hlídám."'

    menu:
        '"Aha. Ještě jsem se tě chtěl zeptat na něco jiného…"':
            # a130 # r4464
            jump vaxis_s43

        '"To je vše, co jsem chtěl vědět. Sbohem."':
            # a131 # r4465
            jump vaxis_dispose


# s30 # say4466
label vaxis_s30: # from 26.1 26.2
    nr 'Zamračil se, jakoby nad něčím přemýšlel. "Jaký pvíkavy?"'

    menu:
        '"Řekni mi o své misi."':
            # a132 # r4467
            jump vaxis_s28

        '"Potřebuji najít útěkovou cestu, kudy bych mohl odejít bez zpozorování."':
            # a133 # r4468
            jump vaxis_s49

        '"Jsem tady, abych tě vystřídal. Předej mi všechny informace, které jsi získal, tvé vybavení a jdi."' if vaxisLogic.r4469_condition():
            # a134 # r4469
            $ vaxisLogic.j64517_s30_r4469_action()
            $ vaxisLogic.r4469_action()
            jump vaxis_s72

        '"Přišel jsem ti pomoct."':
            # a135 # r4470
            jump vaxis_s35

        '"Tvé rozkazy budou muset ještě chvíli počkat. Ještě se vrátím."':
            # a136 # r4471
            jump vaxis_dispose


# s31 # say4472
label vaxis_s31: # from 7.1 12.1 13.4 15.1 25.0 27.0 50.0
    nr 'Je chvíli z ticha, pak přikývl, že rozumí. "Prof bych ti měl pomoft?"'

    menu:
        '"Protože potřebuju tvou pomoc."':
            # a137 # r4473
            jump vaxis_s32

        '"Možná bychom si mohli pomoct navzájem. Co chceš na oplátku?"' if vaxisLogic.r4474_condition():
            # a138 # r4474
            $ vaxisLogic.r4474_action()
            jump vaxis_s35

        '"Protože *nevyzradím* tvé maskování… pokud mi pomůžeš."' if vaxisLogic.r4475_condition():
            # a139 # r4475
            jump vaxis_s33

        '"Protože *nevyzradím* tvé maskování… pokud mi pomůžeš."' if vaxisLogic.r4476_condition():
            # a140 # r4476
            jump vaxis_s34

        '"Vypadáš jako někdo, kdo je za mrtvolu zamaskovaný, než že JE mrtvola. Dostatečný důvod?"' if vaxisLogic.r4477_condition():
            # a141 # r4477
            $ vaxisLogic.r4477_action()
            jump vaxis_s75

        '"Vypadáš jako někdo, kdo je za mrtvolu zamaskovaný, než že JE mrtvola. Dostatečný důvod?"' if vaxisLogic.r4478_condition():
            # a142 # r4478
            $ vaxisLogic.r4478_action()
            jump vaxis_s33

        '"Zapomeň, že jsme se potkali. Musím jít. Sbohem."':
            # a143 # r4479
            jump vaxis_s4


# s32 # say4480
label vaxis_s32: # from 31.0
    nr 'Zombie si odfrkla. "Kavdej něfo *potvebuje*, ale nikdo nif *nedá*. *Dej* mi něfo a já ti *movná* pomůvu."'

    menu:
        '"Co potřebuješ?"':
            # a144 # r4481
            jump vaxis_s35

        '"Co takhle mi pomoct a já nezavolám stráže?"' if vaxisLogic.r4482_condition():
            # a145 # r4482
            jump vaxis_s33

        '"Co takhle mi pomoct a já nezavolám stráže?"' if vaxisLogic.r4483_condition():
            # a146 # r4483
            jump vaxis_s34

        '"Vypadáš jako někdo, kdo by radši dýchal, než mi řekl ne. Takže teď naposled: jak se odsud dostanu?"' if vaxisLogic.r4484_condition():
            # a147 # r4484
            $ vaxisLogic.r4484_action()
            jump vaxis_s75

        '"Vypadáš jako někdo, kdo by radši dýchal, než mi řekl ne. Takže teď naposled: jak se odsud dostanu?"' if vaxisLogic.r4485_condition():
            # a148 # r4485
            $ vaxisLogic.r4485_action()
            jump vaxis_s33

        '"Nezájem. Sbohem."':
            # a149 # r4486
            jump vaxis_s4


# s33 # say4487
label vaxis_s33: # from 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
    nr 'Prohlíží si tě a uvažuje, jestli na tebe bude mít, pak si to ale raději rozmyslel. "Hmfff. Můvef utéft portálem."'

    menu:
        '"Portály?"':
            # a150 # r4672
            $ vaxisLogic.r4672_action()
            jump vaxis_s50


# s34 # say4491
label vaxis_s34: # from 31.3 32.2 35.3
    nr 'Na chvíli vypadá zastrašeně, ale rychle se vzpamatoval. "Ty práfknef mě, já práfknu tebe. Já tu mám fchovaný kámofe, ty nemáf nikoho. Nemáf tu fo dělat. Fpalovafi tě vabijou. Já utefu."'

    menu:
        '"Neutečeš, jestli tě ZABIJU. A teď mluv, nebo už to maskování nebudeš potřebovat… zombie."' if vaxisLogic.r4489_condition():
            # a151 # r4489
            $ vaxisLogic.r4489_action()
            jump vaxis_s74

        '"Neutečeš, jestli tě ZABIJU. A teď mluv, nebo už to maskování nebudeš potřebovat… zombie."' if vaxisLogic.r4490_condition():
            # a152 # r4490
            $ vaxisLogic.r4490_action()
            jump vaxis_s33

        '"Tak si shoř v pekle. Já jdu."':
            # a153 # r4492
            jump vaxis_s4


# s35 # say4493
label vaxis_s35: # from 30.3 31.1 32.0
    nr '"Mufíf mi donéft *klíf*. Potvebuju velevnej klíf k balvamovafí míftnofti."'

    menu:
        '"Myslíš tenhle klíč?"' if vaxisLogic.r4494_condition():
            # a154 # r4494
            $ vaxisLogic.r4494_action()
            jump vaxis_s42

        '"Dobře. Kde je ten klíč?"':
            # a155 # r4495
            jump vaxis_s36

        '"Na tohle nemám čas. Pomož mi utéct, nebo zavolám stráže."' if vaxisLogic.r4496_condition():
            # a156 # r4496
            $ vaxisLogic.r4496_action()
            jump vaxis_s33

        '"Na tohle nemám čas. Pomož mi utéct, nebo zavolám stráže."' if vaxisLogic.r4497_condition():
            # a157 # r4497
            $ vaxisLogic.r4497_action()
            jump vaxis_s34

        '"Nic ti nepřinesu. Pomož mi utéct, nebo ti přímo tady zlomím krk."' if vaxisLogic.r4498_condition():
            # a158 # r4498
            $ vaxisLogic.r4498_action()
            jump vaxis_s75

        '"Nic ti nepřinesu. Pomož mi utéct, nebo ti přímo tady zlomím krk."' if vaxisLogic.r4499_condition():
            # a159 # r4499
            $ vaxisLogic.r4499_action()
            jump vaxis_s33

        '"Ne, děkuju. Možná příště."':
            # a160 # r4500
            jump vaxis_s4


# s36 # say4501
label vaxis_s36: # from 35.1 58.2
    nr '"Fpalovafka ho má." Ukázal si na oči. "Má vlutý ofi…" Podivně zagestikuloval rukou, jako by se v nečem hrabal. "Na prftech má nove."'

    menu:
        '"Už jsem se s ní setkal. Tady je klíč."' if vaxisLogic.r4502_condition():
            # a161 # r4502
            $ vaxisLogic.r4502_action()
            jump vaxis_s42

        '"Spalovačka… se žlutýma očima a čepelema na svých prstech? Už jsem se s ní setkal, v balzamovacím pokoji. Počkej -- hned se s klíčem vrátím."' if vaxisLogic.r64520_condition():
            # a162 # r64520
            $ vaxisLogic.j64519_s36_r64520_action()
            jump vaxis_s38

        '"Spalovačka… se žlutýma očima a noži na prstech? Dobrá tedy. Vrátím se s klíčem."' if vaxisLogic.r4503_condition():
            # a163 # r4503
            $ vaxisLogic.j64518_s36_r4503_action()
            jump vaxis_s38

        '"Ta Spalovačka vypadá opravdu atraktivně. Jsi si jistý, že vás nemám představit?"':
            # a164 # r4504
            $ vaxisLogic.r4504_action()
            jump vaxis_s37


# s37 # say4505
label vaxis_s37: # from 36.3
    nr 'Zombie mrkl. Asi tě nepochopil.'

    menu:
        '"To byl jenom vtípek, měl bys… zapomeň na to. Zajdu ti pro ten klíč."' if vaxisLogic.r4506_condition():
            # a165 # r4506
            $ vaxisLogic.j64519_s37_r4506_action()
            jump vaxis_s38

        '"Byl to jenom fórek, mělo… zapomeň na to, půjdu hledat ten tvůj klíč."' if vaxisLogic.r66150_condition():
            # a166 # r66150
            $ vaxisLogic.j64518_s37_r66150_action()
            jump vaxis_s38


# s38 # say4507
label vaxis_s38: # from 36.1 36.2 37.0 37.1
    nr 'Zombie na tebe zašilhal. "Jefli tě chytěj, nif o mně nevíkej, nebo tě vabiju. Af budef fpát."'

    menu:
        '"Donesu ti ten tvůj zatracený klíč… ale ty už mi radši nevyhrožuj, jasný?!"' if vaxisLogic.r4508_condition():
            # a167 # r4508
            $ vaxisLogic.r4508_action()
            jump vaxis_dispose

        '"Já se vrátím."' if vaxisLogic.r4509_condition():
            # a168 # r4509
            $ vaxisLogic.r4509_action()
            jump vaxis_dispose

        '"Donesu ti ten tvůj zatracený klíč… ale ty už mi radši nevyhrožuj, jasný?!"' if vaxisLogic.r4510_condition():
            # a169 # r4510
            jump vaxis_dispose

        '"Já se vrátím."' if vaxisLogic.r4511_condition():
            # a170 # r4511
            jump vaxis_dispose


# s39 # say4512
label vaxis_s39: # from 43.12
    nr '"Já dobrej v mafkování. A taky mám jivvy. A napláfal fem na febe blvamovafí tekutinu. Já DOBRÁ vombie." Zombie se zasmál, jak mu to jenom sešitá pusa dovolila a pak si zaťukal na čelo. "Fpalovafi fou blllbíííí!"'

    jump morte_s93  # EXTERN


# s40 # say4514
label vaxis_s40: # -
    nr '"Pofkám na tebe. Donef klíf." Zombie se usmál. "Pak ti pomůvu."'

    menu:
        '"Jestli to najdu, vrátím se."':
            # a171 # r4515
            jump vaxis_dispose

        '"Tak na to zapomeň."':
            # a172 # r4516
            jump vaxis_dispose


# s41 # say4517
label vaxis_s41: # -
    nr 'Zombieho oči se rozšířily, pak natáhl ruku a lusknul prsty. "Dej mi ho."'

    menu:
        '"Vydrž chvíli. Nejdřív něco chci."':
            # a173 # r4518
            jump vaxis_dispose

        '"Tady máš."':
            # a174 # r4519
            $ vaxisLogic.r4519_action()
            jump vaxis_dispose


# s42 # say4520
label vaxis_s42: # from 35.0 36.0 58.0 58.1
    nr 'Zombieho oči se rozšířily. Popadl klíč z tvé dlaně. Pokyvuje si a obrací jej v dlani. "Dobve. Dobve."'

    menu:
        '"Tak… jak se odtud dostanu?"' if vaxisLogic.r4521_condition():
            # a175 # r4521
            $ vaxisLogic.j64521_s42_r4521_action()
            $ vaxisLogic.r4521_action()
            jump vaxis_s49

        '"Tak… je tady něco, co bych rád věděl…"' if vaxisLogic.r4522_condition():
            # a176 # r4522
            $ vaxisLogic.j64521_s42_r4522_action()
            $ vaxisLogic.r4522_action()
            jump vaxis_s43


# s43 # say4523
label vaxis_s43: # from 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
    nr '"Fo chfef fědět?"'

    menu:
        '"Jak odtud mohu uprchnout?"' if vaxisLogic.r64508_condition():
            # a177 # r64508
            jump vaxis_s49

        '"Jak odtud můžu utéct?"' if vaxisLogic.r4524_condition():
            # a178 # r4524
            jump vaxis_s49

        '"Kde že je ten portál, o kterém jsi mluvil?"' if vaxisLogic.r4525_condition():
            # a179 # r4525
            jump vaxis_s52

        '"Můžeš mě taky zamaskovat jako zombii?"' if vaxisLogic.r4526_condition():
            # a180 # r4526
            jump vaxis_s63

        '"Můžeš mě znovu zamaskovat jako zombii?"' if vaxisLogic.r4527_condition():
            # a181 # r4527
            jump vaxis_s63

        '"Co tady děláš?"' if vaxisLogic.r4528_condition():
            # a182 # r4528
            jump vaxis_s28

        '"Znáš někoho jménem Pharod?"' if vaxisLogic.r4673_condition():
            # a183 # r4673
            jump vaxis_s44

        '"Ztratil jsem deník. Neviděl jsi ho?"' if vaxisLogic.r4530_condition():
            # a184 # r4530
            jump vaxis_s47

        '"Můžeš mi něco říct o Dhallovi?"' if vaxisLogic.r4531_condition():
            # a185 # r4531
            jump vaxis_s53

        '"Můžeš mi něco říct o duchu Deionarry?"' if vaxisLogic.r4532_condition():
            # a186 # r4532
            jump vaxis_s54

        '"Můžeš mi něco říct o Soegovi?"' if vaxisLogic.r4533_condition():
            # a187 # r4533
            jump vaxis_s55

        '"Jak jsi to udělal, že vypadáš takhle?"' if vaxisLogic.r4534_condition():
            # a188 # r4534
            jump vaxis_s60

        '"Jak jsi to udělal, že vypadáš takhle?"' if vaxisLogic.r4535_condition():
            # a189 # r4535
            jump vaxis_s39

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."':
            # a190 # r4536
            jump vaxis_dispose


# s44 # say4537
label vaxis_s44: # from 43.6
    nr '"FÁ-ROD?" Zombie se na chvíli zamyšleně zamrači. "Já… flyfel fem, ve vije někde v Úlu. Nevím kde." Znovu se zamračil. "Fpálováfi móf naftvaní, némaj RÁDI Fá-roda."'

    menu:
        '"Úlu?"':
            # a191 # r4538
            jump vaxis_s45

        '"Proč nemají Spalovači rádi Pharoda?"':
            # a192 # r4539
            $ vaxisLogic.j64522_s44_r4539_action()
            jump vaxis_s46

        '"Chtěl jsem vědět ještě něco…"':
            # a193 # r4540
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."':
            # a194 # r4541
            jump vaxis_dispose


# s45 # say4542
label vaxis_s45: # from 44.0
    nr '"Flum tam fenku."'

    menu:
        '"Proč nemají Spalovači rádi Pharoda?"':
            # a195 # r4543
            $ vaxisLogic.j64522_s45_r4543_action()
            jump vaxis_s46

        '"Chtěl jsem vědět ještě něco…"':
            # a196 # r4544
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."':
            # a197 # r4545
            jump vaxis_dispose


# s46 # say4546
label vaxis_s46: # from 44.1 45.0
    nr '"On je fběraf. Nofí mrtvoly do márnife, prodává je Fpalovafům. Nofí MOF mrtváků. Fpalovafi nevěděj, fodkud má mrtváky. Myflej fi, ve Fá-rod ftrká lidi do mrtvý knihy."'

    menu:
        '"Uh… co?"' if vaxisLogic.r4547_condition():
            # a198 # r4547
            jump vaxis_s48

        '"Uh… co?"' if vaxisLogic.r4548_condition():
            # a199 # r4548
            jump morte_s91  # EXTERN

        '"Oh. Chtěl jsem vědět ještě něco…"':
            # a200 # r4549
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."':
            # a201 # r4550
            jump vaxis_dispose


# s47 # say4551
label vaxis_s47: # from 43.7
    nr '"Néfim. Nákej fůl tě fobral?"'

    menu:
        '"Uh… co?"' if vaxisLogic.r4552_condition():
            # a202 # r4552
            jump vaxis_s48

        '"Uh… co?"' if vaxisLogic.r4553_condition():
            # a203 # r4553
            jump morte_s92  # EXTERN

        '"Oh. Chtěl jsem vědět ještě něco…"':
            # a204 # r4554
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."':
            # a205 # r4555
            jump vaxis_dispose


# s48 # say4556
label vaxis_s48: # from 46.0 47.0
    nr 'Zombie se pokouší promluvit, zarazí se, promyslí si to a pak pokrčí rameny. Zjevně to nedovede lépe vysvětlit.'

    menu:
        '"Oh. Chtěl jsem vědět ještě něco…"':
            # a206 # r4557
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."':
            # a207 # r4558
            jump vaxis_dispose


# s49 # say4559
label vaxis_s49: # from 30.1 42.0 43.0 43.1
    nr 'Zombie zabručela. "Můvef utéft portálem." Zamával rukou. "Pufff."'

    menu:
        '"Portálem? Jakým portálem?"':
            # a208 # r4560
            jump vaxis_s50


# s50 # say4563
label vaxis_s50: # from 33.0 49.0
    nr '"Portály…" Zombie mávl rukou kolem. "Portály vfude."'

    menu:
        '"Můžeš mi ukázat některý z portálů?"' if vaxisLogic.r4564_condition():
            # a209 # r4564
            jump vaxis_s31

        '"Můžeš mi ukázat jeden z těch portálů?"' if vaxisLogic.r64509_condition():
            # a210 # r64509
            jump vaxis_s51

        '"Můžeš mi ukázat jeden z těch portálů?"' if vaxisLogic.r64510_condition():
            # a211 # r64510
            jump vaxis_s51

        '"Můžeš mi ukázat jeden z těch portálů?"' if vaxisLogic.r64511_condition():
            # a212 # r64511
            jump vaxis_s51


# s51 # say4567
label vaxis_s51: # from 50.1 50.2 50.3 72.0
    nr 'Zombie kývl. "Chfef pryf, tak projdi vobloukem na prvním patve, feverovápadní míftnoft… Potvebujef koftěnej prft, vkroufenej…" Zvedl ukazováček a ohnul ho. "Av budef mít klíf, jdi do voblouku, fkrofíf do tajný krypty. Vodtamtud můvef utéft. Tajná útěková fefta. Můvef fi tam i FODPOFINOUT."'

    menu:
        '"Křivou prstní kost? Kde něco takového najdu?"' if vaxisLogic.r64527_condition():
            # a213 # r64527
            $ vaxisLogic.j64528_s51_r64527_action()
            $ vaxisLogic.r64527_action()
            jump vaxis_s77

        '"Mám nějaké otázky…"' if vaxisLogic.r4568_condition():
            # a214 # r4568
            $ vaxisLogic.j64529_s51_r4568_action()
            $ vaxisLogic.r4568_action()
            jump vaxis_s43

        '"Oblouk na prvním patře, severozápadní místnost. Dobře, půjdu se tam podívat."' if vaxisLogic.r4569_condition():
            # a215 # r4569
            $ vaxisLogic.j64529_s51_r4569_action()
            $ vaxisLogic.r4569_action()
            jump vaxis_dispose


# s52 # say4570
label vaxis_s52: # from 43.2
    nr '"Poflouchej! Pamatuj fi!" Zombie začíná být naštvaný. "Voblouk, první patro, feverovápadní míftnoft." Zvedl ukazováček a zkroutil jej. "Potvebujef prftní koft, vkroufenou. Fkonfíf v tajný mífntnosfti, odkud můvef utéft. Můvef tam taky vodpofívat."'

    menu:
        '"Chtěl jsem vědět ještě něco…"':
            # a216 # r4571
            jump vaxis_s43

        '"Oblouk na prvním patře, severozápadní místnost, otevírá se zkroucenou prstní kostí? Dobře, půjdu se tam podívat."':
            # a217 # r4572
            jump vaxis_dispose


# s53 # say4573
label vaxis_s53: # from 43.8
    nr '"Pífav." Pokrčil rameny. "Ftarej. Vlutej."'

    menu:
        '"Asi už se k tomu nedá víc dodat. Chtěl bych vědět ještě něco."':
            # a218 # r4574
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."':
            # a219 # r4575
            jump vaxis_dispose


# s54 # say4576
label vaxis_s54: # from 43.9
    nr '"Hunh?" Zamračil se. "Kdo ona?"'

    menu:
        '"Zapomeň na to. Chtěl bych vědět ještě něco…"':
            # a220 # r4577
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."':
            # a221 # r4578
            jump vaxis_dispose


# s55 # say4579
label vaxis_s55: # from 43.10
    nr '"Průvodfe, u pvedních dveví márnife. Fo f ním?"'

    menu:
        '"Co o něm víš?"':
            # a222 # r4580
            $ vaxisLogic.j64530_s55_r4580_action()
            $ vaxisLogic.r4580_action()
            jump vaxis_s56

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."':
            # a223 # r4581
            jump vaxis_dispose


# s56 # say4582
label vaxis_s56: # from 55.0
    nr '"Je divnej, ne Fpalovaf, ne Anarchofta, má jiný vofi…" Pokrčil rameny. "Jako kryfa. Divnej."'

    menu:
        '"To je dobře, že je to jedinej divnej tady kolem. Ještě je tu něco, co bych chtěl vědět…"':
            # a224 # r4583
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."':
            # a225 # r4584
            jump vaxis_dispose


# s57 # say4585
label vaxis_s57: # - # IF ~  GlobalGT("Vaxis","GLOBAL",0)
    nr 'Vidíš falešnou zombie. Žasneš nad kvalitním maskováním… jeho dýchání je tak potlačené, že je skoro nelze zpozorovat."'

    menu:
        '"Zdravím."' if vaxisLogic.r4586_condition():
            # a226 # r4586
            jump vaxis_s58

        '"Zdravím."' if vaxisLogic.r4587_condition():
            # a227 # r4587
            jump vaxis_s58

        '"Zdravím."' if vaxisLogic.r4588_condition():
            # a228 # r4588
            jump vaxis_s59

        '"Zdravím."' if vaxisLogic.r4589_condition():
            # a229 # r4589
            jump vaxis_s58

        'Nechej ho být.':
            # a230 # r4590
            jump vaxis_dispose


# s58 # say4591
label vaxis_s58: # from 57.0 57.1 57.3
    nr 'Zombie se rychle rozhlédl, jestli vás někdo nevidí, pak se k tobě otočil. "Fo je?"'

    menu:
        '"Tady je ten klíč, cos ho chtěl."' if vaxisLogic.r4592_condition():
            # a231 # r4592
            $ vaxisLogic.r4592_action()
            jump vaxis_s42

        '"Tady je ten klíč, cos ho chtěl."' if vaxisLogic.r4593_condition():
            # a232 # r4593
            $ vaxisLogic.r4593_action()
            jump vaxis_s42

        '"Kdeže je ten klíč, cos o něm mluvil?"' if vaxisLogic.r4594_condition():
            # a233 # r4594
            jump vaxis_s36

        '"Mám pro tebe nějaké otázky…"':
            # a234 # r4595
            jump vaxis_s43

        '"To nic."':
            # a235 # r4596
            jump vaxis_dispose


# s59 # say4597
label vaxis_s59: # from 57.2
    nr 'Zombie se rychle rozhlédl, jestli vás někdo nevidí, pak na tebe zamával. "Vypadni! Jdi pryf!"'

    menu:
        '"Ne. Nejdřív mám nějaké otázky…"':
            # a236 # r4598
            jump vaxis_s43

        '"Tak to nic."' if vaxisLogic.r4599_condition():
            # a237 # r4599
            jump vaxis_s4

        '"Tak to nic."' if vaxisLogic.r4600_condition():
            # a238 # r4600
            jump vaxis_dispose


# s60 # say4601
label vaxis_s60: # from 43.11
    nr '"Já dobrej v mafkování. A taky mám jivvy. A napláfal fem na febe blvamovafí tekutinu. Já DOBRÁ vombie." Zombie se zasmál, jak mu to jenom sešitá pusa dovolila a pak si zaťukal na čelo. "Fpalovafi fou blllbíííí!"'

    menu:
        '"Jo, jsou pořádně pitomí."':
            # a239 # r4602
            jump vaxis_s61

        '"Nebolí to?"':
            # a240 # r4603
            jump vaxis_s62

        '"To maskování je dost dobrý. Hele, můžeš mě taky zamaskovat jako zombii?"' if vaxisLogic.r4604_condition():
            # a241 # r4604
            jump vaxis_s63

        '"Chtěl jsem vědět ještě něco…"':
            # a242 # r4605
            jump vaxis_s43

        '"Musím jít. Sbohem."':
            # a243 # r4606
            jump vaxis_dispose


# s61 # say4607
label vaxis_s61: # from 60.0
    nr 'Sarkasmus na zombie zjevně nezabral. "Blbí Fpalovafi. Já dobrá vombie."'

    menu:
        '"Nebude to bolet?"':
            # a244 # r4608
            jump vaxis_s62

        '"To maskování je dost dobrý. Můžeš mě taky zamaskovat jako zombii?"' if vaxisLogic.r4609_condition():
            # a245 # r4609
            jump vaxis_s63

        '"Chtěl jsem vědět ještě něco…"' if vaxisLogic.r4610_condition():
            # a246 # r4610
            jump vaxis_s64

        '"Musím jít. Sbohem."' if vaxisLogic.r4611_condition():
            # a247 # r4611
            jump vaxis_s64

        '"Chtěl jsem vědět ještě něco…"' if vaxisLogic.r4612_condition():
            # a248 # r4612
            jump vaxis_s43

        '"Musím jít. Sbohem."' if vaxisLogic.r4613_condition():
            # a249 # r4613
            jump vaxis_dispose


# s62 # say4614
label vaxis_s62: # from 60.1 61.0
    nr 'Podíval se na tvé jizvy. "Já fe tě prám to famý. Mě mof nebolelo." Poplácal se po hrudi. "Já TVRDEJ."'

    menu:
        '"To maskování je dost dobrý. Můžeš mě taky zamaskovat jako zombii?"' if vaxisLogic.r4615_condition():
            # a250 # r4615
            jump vaxis_s63

        '"Chtěl jsem vědět ještě něco…"' if vaxisLogic.r4616_condition():
            # a251 # r4616
            jump vaxis_s64

        '"Musím jít. Sbohem."' if vaxisLogic.r4617_condition():
            # a252 # r4617
            jump vaxis_s64

        '"Chtěl jsem vědět ještě něco…"' if vaxisLogic.r4618_condition():
            # a253 # r4618
            jump vaxis_s43

        '"Musím jít. Sbohem."' if vaxisLogic.r4674_condition():
            # a254 # r4674
            jump vaxis_dispose


# s63 # say4619
label vaxis_s63: # from 43.3 43.4 60.2 61.1 62.0 64.1 64.2
    nr 'Chvíli si tě prohlíží a něco si mumlá, nakonec přikývl. "Jo. Potvebuju fklínku balvamovafí tekutiny." Ukázal na jizvy na tvém hrudníku. "A nějakou nit a jehlu."'

    menu:
        '"Tady máš."' if vaxisLogic.r4620_condition():
            # a255 # r4620
            $ vaxisLogic.r4620_action()
            jump vaxis_s65

        '"Promyslím si to. Mám nějaké otázky…"':
            # a256 # r4621
            $ vaxisLogic.r4621_action()
            jump vaxis_s43

        '"Ne, děkuju. Možná příště… sbohem."':
            # a257 # r4622
            $ vaxisLogic.r4622_action()
            jump vaxis_dispose

        '"Blazamovací tekutinu a nit? Zkusím se po tom podívat."':
            # a258 # r4623
            $ vaxisLogic.r4623_action()
            jump vaxis_dispose


# s64 # say4624
label vaxis_s64: # from 61.2 61.3 62.1 62.2
    nr 'Prohlédl si tě s podivným výrazem na tváři. "Ty budef DOBRÁ vombie. Můvu tě udělat vombie? Dobrej pvevlek."'

    menu:
        '"Ne. Ale stejně díky. Mám pro tebe ještě další otázky…"':
            # a259 # r4625
            $ vaxisLogic.r4625_action()
            jump vaxis_s43

        '"Jistě. Dokážeš to?"':
            # a260 # r4626
            jump vaxis_s63

        '"Proč ne? Stejně se už cítím jako chodící mrtvola."':
            # a261 # r4627
            jump vaxis_s63

        '"Ne… no… to je v pořádku. Sbohem."':
            # a262 # r4628
            $ vaxisLogic.r4628_action()
            jump vaxis_dispose


# s65 # say4629
label vaxis_s65: # from 63.0
    nr 'Zombie si od tebe vzal předměty a pak se pustil do práce…'

    menu:
        'Zkus vydržet bez hnutí.' if vaxisLogic.r4630_condition():
            # a263 # r4630
            $ vaxisLogic.r4630_action()
            jump vaxis_s66

        'Zkus vydržet bez hnutí.' if vaxisLogic.r4631_condition():
            # a264 # r4631
            $ vaxisLogic.r4631_action()
            jump morte_s94  # EXTERN

        'Zkus vydržet bez hnutí.' if vaxisLogic.r4632_condition():
            # a265 # r4632
            $ vaxisLogic.r4632_action()
            jump vaxis_s66

        'Ještě se pokus vydržet.' if vaxisLogic.r64533_condition():
            # a266 # r64533
            $ vaxisLogic.r64533_action()
            jump vaxis_s66


# s66 # say4633
label vaxis_s66: # from 65.0 65.2 65.3
    nr 'Zombie tě potřel balzamovací tekutinou a pak zašil některé z tvých jizev. Nakonec dokončil maskování sešitím tvých rtů."'

    menu:
        '"Mmm-hmmph-mmm… Víky."' if vaxisLogic.r4634_condition():
            # a267 # r4634
            jump vaxis_s67

        '"Mmm-hmmph-mmm… Víky."' if vaxisLogic.r4635_condition():
            # a268 # r4635
            $ vaxisLogic.r4635_action()
            jump morte_s95  # EXTERN

        '"Mmm-hmmph-mmm… Víky."' if vaxisLogic.r4636_condition():
            # a269 # r4636
            jump vaxis_s67


# s67 # say4637
label vaxis_s67: # from 66.0 66.2
    nr 'Zombie zvedl ruku. "Opatrň! Mluvení trhá ftehu, vnifí máafkování. Vombie nemluví. Mufíf mluvit? Mluv pomalu, opatrň."  POZNÁMKA: Uvědom si, že nikdo nečeká, že budou zombie mluvit. Jestli si s někým promluvíš zamaskovaný jako zombie, pravděpodobně bude tvůj převlek odhalen.'

    menu:
        '"Mmph… mmm. Já… rovumím."':
            # a270 # r4638
            $ vaxisLogic.j64531_s67_r4638_action()
            jump vaxis_s68


# s68 # say4639
label vaxis_s68: # from 67.0
    nr 'Zombie se zamračil. "Mafkování nevydrví dlouho. Balvám ufchne, ftehy vypadají." Pokrčil rameny. "Afi ti to nevydrví, av fe doftanef ven. A neběhej. Běháf a vnifíf felý mafkování."  POZNÁMKA: Nasazení zbraní nebo běhání okamžitě zruší tvé maskování za zombie. Pokud najdeš novou zbraň, nesnaž se ji použít, dokud budeš chtít zůstat zamaskovaný. Pokud máš zapnuto automatické běhání, rozhodně je vypni, jakmile domluvíš s Vaxisem, tedy pokud chceš zůstat v přestrojení.'

    menu:
        'Přikývni a odejdi.':
            # a271 # r4640
            jump vaxis_dispose


# s69 # say4641
label vaxis_s69: # -
    nr '„Zombie“ se zamračil. "Ty vypadáf vnámě. Uf fem tě viděl?"'

    menu:
        '"Možná. Kde jsi mě viděl?"':
            # a272 # r4642
            jump vaxis_dispose

        'X.':
            # a273 # r4643
            jump vaxis_dispose


# s70 # say4644
label vaxis_s70: # from 23.0 23.2 71.0 71.1
    nr 'K tvému překvapení se od tebe zombie otočil… a začíná se bojácně rozhlížet kolem.'

    menu:
        '"Nebudeš mluvit? Tak se připrav, naučím tě aspoň řvát!"':
            # a274 # r4645
            $ vaxisLogic.r4645_action()
            jump vaxis_dispose

        '"Tak to nic. Co jsi viděl Spalovače dělat?"':
            # a275 # r4646
            jump vaxis_s29

        '"Chtěl jsem vědět ještě něco…"':
            # a276 # r4647
            jump vaxis_s43

        '"Tak na to zapomeň. Sbohem, *zombie.*"':
            # a277 # r4648
            jump vaxis_dispose


# s71 # say4649
label vaxis_s71: # externs morte_s90
    nr 'Zombie se vystrašeně dívá. Je stále potichu… ale něco v jeho výrazu ti říká, že Morteho poznámka byla přesná.'

    menu:
        '"Anarchisti, huh? To pro ně hlídáš tady tohle místo?"':
            # a278 # r4650
            jump vaxis_s70

        '"Bude mnohem MÉNĚ bolestivé, když mi řekneš, proč tě sem Anarchisti poslali špehovat."':
            # a279 # r4651
            $ vaxisLogic.r4651_action()
            jump vaxis_s70

        '"Tak to nic. Co jsi viděl Spalovače dělat?"':
            # a280 # r4652
            jump vaxis_s29

        '"Chtěl jsem vědět ještě něco…"':
            # a281 # r4653
            jump vaxis_s43

        '"Tak na to zapomeň. Sbohem, *zombie.*"':
            # a282 # r4654
            jump vaxis_dispose


# s72 # say4655
label vaxis_s72: # from 30.2
    nr 'Zombie vypadá zklamaně, ale pak pokrčil rameny a sáhl do své špianvé tuniky. "Byl tu klid. Fpalovafi klidní, nif novýho od poflední fprávy." Po chvíli vyhrabal nějaké předměty, které ti podal. "Tady." Podle pachu byly schovány tak, aby nebyly objeveny v případě, že by ho někdo prohledával. "Va chvilku odejdu."'

    menu:
        '"Odejdeš? Jak?"' if vaxisLogic.r4656_condition():
            # a283 # r4656
            jump vaxis_s51

        '"Výborně. Sbohem, Vaxisi."' if vaxisLogic.r64532_condition():
            # a284 # r64532
            jump vaxis_dispose


# s73 # say4658
label vaxis_s73: # -
    nr 'Zombie zabručel. "Portál je v oblouku na prvním patve, feverováapdní míftnoft. Potvebujef vkroufenou koft v prftu, abyf ho otevvel. Hodně ftěftí."'

    menu:
        '"Uh… dobře."':
            # a285 # r4659
            jump vaxis_dispose


# s74 # say4660
label vaxis_s74: # from 34.0
    nr 'Oči zombie se rošířily, pak na tebe zasyčel. "VKUFÍF mě dát do knihy mrtvejch? Mám tu fchovaný kámofe, ty nemáf nikoho. Dotkni fě mě a kámofi tě vabijou!"'

    menu:
        '"To byla tvá poslední šance. Připrav se na smrt."':
            # a286 # r4661
            $ vaxisLogic.r4661_action()
            jump vaxis_dispose

        '"Tak si shoř v pekle. Já jdu. Radši si dávej pozor…*zombie*."':
            # a287 # r4662
            jump vaxis_s4


# s75 # say4663
label vaxis_s75: # from 31.4 32.3 35.4
    nr 'Oči zombie se rošířily, pak přejel očima po tvé postavě a zasyčel na tebe. "TY mě VKUFÍF dát do knihy mrtvejch? Mám tu fchovaný kámofe, ty nemáf nikoho. Dotkni fě mě a kámofi tě vabijou!"'

    menu:
        '"Co kdybych tvůj převlek prozradil strážným?"' if vaxisLogic.r4664_condition():
            # a288 # r4664
            jump vaxis_s33

        '"Co kdybych tvůj převlek prozradil strážným?"' if vaxisLogic.r4665_condition():
            # a289 # r4665
            jump vaxis_s76

        '"Risknu to. Připrav se na smrt."':
            # a290 # r4666
            $ vaxisLogic.r4666_action()
            jump vaxis_dispose

        '"Tak si shoř v pekle. Já jdu. Radši si dávej pozor…*zombie*."':
            # a291 # r4667
            jump vaxis_s4


# s76 # say4668
label vaxis_s76: # from 75.1
    nr 'Oči zombie se rošířily, pak na tebe zasyčel. "Ty práfknef mě, já práfknu tebe. Já tu mám fchovaný kámofe, ty nemáf nikoho. Nemáf tu fo dělat. Fpalovafi tě vabijou. Já utefu."'

    menu:
        '"To byla tvoje poslední šance, mrtvolo. Připrav se na smrt."':
            # a292 # r4669
            $ vaxisLogic.r4669_action()
            jump vaxis_dispose

        '"Tak si shoř v pekle. Já jdu. Radši si dávej pozor…*zombie*."':
            # a293 # r4670
            jump vaxis_s4


# s77 # say64523
label vaxis_s77: # from 51.0
    nr 'Pokrčí rameny. "Mufí být někde kolem… podívej fe ve fkladiftích v hofním patfe. Mofná tam."'

    menu:
        '"Fajn. Mám další otázky…"':
            # a294 # r64524
            jump vaxis_s43

        '"Výborně. Kouknu se po té křivé prstní kosti nahoře, pak si to namířím do prvního patra, k jednomu z oblouků v severozápadní místnosti. Mám to."':
            # a295 # r64525
            jump vaxis_dispose
