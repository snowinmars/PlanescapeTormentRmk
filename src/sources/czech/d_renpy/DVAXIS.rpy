init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.vaxis_logic import VaxisLogic
    vaxisLogic = VaxisLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DVAXIS.DLG
# ###


# s0 # say453
label vaxis_s0: # - # IF ~  Global("Vaxis","GLOBAL",0)
    nr 'Belhající mrtvola na tebe civí svým prázdným pohledem. Má do čela vyryto číslo "821" a rty má sešity. Z těla vychází slabý zápach formaldehydu.{#vaxis_s0_}'

    menu:
        '"Tak… viděl jsi tu něco zajímavého?"{#vaxis_s0_r454}' if vaxisLogic.r454_condition():
            # a0 # r454
            $ vaxisLogic.r454_action()
            jump vaxis_s5

        '"Tak… viděl jsi tu něco zajímavého?"{#vaxis_s0_r455}' if vaxisLogic.r455_condition():
            # a1 # r455
            jump vaxis_s5

        '"Já vím, že nejsi zombie, víš. Nikoho tím neoblafneš."{#vaxis_s0_r456}' if vaxisLogic.r456_condition():
            # a2 # r456
            jump vaxis_s5

        'Použít tvojí schopnost Kosti-vyprávějte na mrtvolu.{#vaxis_s0_r457}' if vaxisLogic.r457_condition():
            # a3 # r457
            jump vaxis_s1

        '"Bylo to skvělé s tebou pokecat. Sbohem."{#vaxis_s0_r458}':
            # a4 # r458
            jump vaxis_s5

        'Nechej mrtvolu na pokoji.{#vaxis_s0_r459}':
            # a5 # r459
            jump vaxis_dispose


# s1 # say460
label vaxis_s1: # from 0.3 # IF ~  False()
    nr 'Docela náhodou, nevypadá to, že by tvoje schopnost na tohle tělo fungovala.{#vaxis_s1_}'

    menu:
        'Hrábni mu do oka.{#vaxis_s1_r461}':
            # a6 # r461
            $ vaxisLogic.r461_action()
            jump vaxis_s2

        'Nechej mrtvolu na pokoji.{#vaxis_s1_r462}':
            # a7 # r462
            jump vaxis_dispose


# s2 # say463
label vaxis_s2: # from 1.0
    nr 'Mrtvola vydala tlumené zasténání, když jsi jí sáhl do oka a prudce zdvihla ruce, aby si zakryla obličej. Začíná si mumlat různé nemravné nadávky, které jsou směřovány tobě.{#vaxis_s2_}'

    menu:
        '"Ty nejsi zombie! Kdo jsi?"{#vaxis_s2_r464}':
            # a8 # r464
            $ vaxisLogic.j64513_s2_r464_action()
            jump vaxis_s6

        '"Proč jsi maskovanej jako mrtvola?"{#vaxis_s2_r465}':
            # a9 # r465
            $ vaxisLogic.j64513_s2_r465_action()
            jump vaxis_s6

        'Odejít. Rychle.{#vaxis_s2_r466}':
            # a10 # r466
            $ vaxisLogic.j64513_s2_r466_action()
            jump vaxis_s3


# s3 # say467
label vaxis_s3: # from 2.2 5.2
    nr 'Jak se chystáš k odchodu, „zombie“ si něco mumlá… vypadá to jako by se pokoušela něco říct, ale je to pro ni těžké, když má sešité rty. "Kdu ty? Cu ty chcuš?"{#vaxis_s3_}'

    menu:
        '"Hledám odtud cestu ven. Můžeš mi pomoct?"{#vaxis_s3_r468}' if vaxisLogic.r468_condition():
            # a11 # r468
            jump vaxis_s7

        '"Kdo jsi?"{#vaxis_s3_r469}':
            # a12 # r469
            jump vaxis_s7

        '"Řekni mi kdo jsi nebo zavolám stráže."{#vaxis_s3_r470}':
            # a13 # r470
            jump vaxis_s7

        'Lež: "Proč… já jsem tě hledal."{#vaxis_s3_r472}' if vaxisLogic.r472_condition():
            # a14 # r472
            $ vaxisLogic.r472_action()
            jump vaxis_s24

        '"Zeptám se na pár otázek, *zombie.* Řekni mi, kdo jsi, nebo se z převleku stane skutečnost."{#vaxis_s3_r473}':
            # a15 # r473
            $ vaxisLogic.r473_action()
            jump vaxis_s7

        '"Promiň, že jsem tě otravoval… ať už jsi kdokoliv. Sbohem."{#vaxis_s3_r474}':
            # a16 # r474
            jump vaxis_s4


# s4 # say471
label vaxis_s4: # from 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
    nr 'Když už jsi na odchodu, zombie ze svého hrdla vydá slabé zavrčení. "Tu nic neřúkneš o mně. Tu bút zticha. NIC neřúct Spaluvačům." Dává si prst před pusu. "Sssssst." Pak přejíždí prstem přes své hrdlo. "Nebu já tě navždu uspat. Slušíš mě?"{#vaxis_s4_}'

    menu:
        '"Tak ty si mi VYHROŽOVAL? Tak to jo… připrav se na smrrrrrrrt."{#vaxis_s4_r475}':
            # a17 # r475
            $ vaxisLogic.r475_action()
            jump vaxis_dispose

        'Lež: "Vůbec jsem ani trošku *nepomyslel*, že bych o tobě řekl Spalovačům."{#vaxis_s4_r476}':
            # a18 # r476
            $ vaxisLogic.r476_action()
            jump vaxis_dispose

        'Pravda: "Slibuju, že o tobě Spalovačům neřeknu."{#vaxis_s4_r477}':
            # a19 # r477
            $ vaxisLogic.r477_action()
            jump vaxis_dispose

        '"Jistěže. Ty si hleď svých věcí a já se budu starat o věci svoje."{#vaxis_s4_r478}':
            # a20 # r478
            jump vaxis_dispose


# s5 # say479
label vaxis_s5: # from 0.0 0.1 0.2 0.4
    nr 'Jak jsi oslovil zombie, tak vypadá dost překvapeně. "Eh? Cu?"{#vaxis_s5_}'

    menu:
        '"Ty nejsi zombie! Kdo jsi?„{#vaxis_s5_r480}':
            # a21 # r480
            $ vaxisLogic.j64513_s5_r480_action()
            $ vaxisLogic.r480_action()
            jump vaxis_s6

        '"Proč jsi převlečený jako mrtvola?"{#vaxis_s5_r481}':
            # a22 # r481
            $ vaxisLogic.j64513_s5_r481_action()
            $ vaxisLogic.r481_action()
            jump vaxis_s6

        'Odejdi. Rychle.{#vaxis_s5_r482}':
            # a23 # r482
            $ vaxisLogic.j64513_s5_r482_action()
            $ vaxisLogic.r482_action()
            jump vaxis_s3


# s6 # say483
label vaxis_s6: # from 2.0 2.1 5.0 5.1
    nr '„Zombie“ se pokouší komunikovat skrz sešité rty; má podivný napůl vystrašený a napůl naštvaný výraz v obličeji. "Kdu TY? Cu ty chcuš?"{#vaxis_s6_}'

    menu:
        '"Hledám odtud cestu ven. Můžeš mi pomoct?"{#vaxis_s6_r484}' if vaxisLogic.r484_condition():
            # a24 # r484
            jump vaxis_s7

        '"Kdo jsi?"{#vaxis_s6_r485}':
            # a25 # r485
            jump vaxis_s7

        '"Řekni mi, kdo jsi nebo zavolám stráže."{#vaxis_s6_r486}':
            # a26 # r486
            jump vaxis_s7

        'Lež: "Proč… já jsem tě hledal."{#vaxis_s6_r487}' if vaxisLogic.r487_condition():
            # a27 # r487
            $ vaxisLogic.r487_action()
            jump vaxis_s24

        '"Zeptám se na pár otázek, *zombie.* Řekni mi, kdo jsi, nebo se z převleku stane skutečnost."{#vaxis_s6_r488}':
            # a28 # r488
            $ vaxisLogic.r488_action()
            jump vaxis_s7

        '"Promiň, že jsem tě otravoval… ať už jsi kdokoliv. Sbohem."{#vaxis_s6_r489}':
            # a29 # r489
            jump vaxis_s4


# s7 # say490
label vaxis_s7: # from 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
    nr 'Zombie nevypadá, že by tě slyšel. Prohlíží si tě na chvíli shora dolů a pak se zamračí. "Cu poslucháš?" Jeho oči se podezíravě zúžily. "Tu špuhujuš Spaluvuču?"{#vaxis_s7_}'

    menu:
        '"Ne. Pokouším se utéct."{#vaxis_s7_r491}' if vaxisLogic.r491_condition():
            # a30 # r491
            jump vaxis_s12

        '"Nejsem špeh. Zapadnul jsem sem náhodou. Můžeš mi pomoct odsud?"{#vaxis_s7_r492}' if vaxisLogic.r492_condition():
            # a31 # r492
            jump vaxis_s31

        'Lež: "Ano, špehuju… Spalovače."{#vaxis_s7_r493}' if vaxisLogic.r493_condition():
            # a32 # r493
            $ vaxisLogic.r493_action()
            jump vaxis_s8

        'Lež: "Ano, špehuju… Spalovače."{#vaxis_s7_r494}' if vaxisLogic.r494_condition():
            # a33 # r494
            $ vaxisLogic.r494_action()
            jump vaxis_s9

        '"Proč mi neřekneš co TU děláš než zavolám stráže."{#vaxis_s7_r495}' if vaxisLogic.r495_condition():
            # a34 # r495
            jump vaxis_s21

        '"Proč mi neřekneš co TU děláš než zavolám stráže."{#vaxis_s7_r496}' if vaxisLogic.r496_condition():
            # a35 # r496
            jump vaxis_s17

        '"Podívej, já tu pokládám otázky *zombie.* Řekni mi, co tu děláš, nebo se všichni dozví, co skrývá pod tvým převlekem."{#vaxis_s7_r1306}' if vaxisLogic.r1306_condition():
            # a36 # r1306
            $ vaxisLogic.r1306_action()
            jump vaxis_s19

        '"Podívej, já tu pokládám otázky *zombie.* Řekni mi, co tu děláš, nebo se všichni dozví, co skrývá pod tvým převlekem."{#vaxis_s7_r1348}' if vaxisLogic.r1348_condition():
            # a37 # r1348
            $ vaxisLogic.r1348_action()
            jump vaxis_s22

        '"Musím odejít. Sbohem."{#vaxis_s7_r1349}':
            # a38 # r1349
            jump vaxis_s4


# s8 # say1350
label vaxis_s8: # from 7.2
    nr 'Pozorně tě studuje. "Ty fpeh? Ty deláf frandu?"{#vaxis_s8_}'

    menu:
        '"Huh?"{#vaxis_s8_r4671}':
            # a39 # r4671
            jump vaxis_s10

        '"Srandu?"{#vaxis_s8_r1352}':
            # a40 # r1352
            jump vaxis_s10

        'Lež: "Ano… zrovna jsem tě hledal. Jsem rád, že jsem tě konečně našel."{#vaxis_s8_r1359}' if vaxisLogic.r1359_condition():
            # a41 # r1359
            $ vaxisLogic.r1359_action()
            jump vaxis_s24

        'Lež: "Ano… ale teď o tom nemůžu moc mluvit. Co tu *máš* za úkol?"{#vaxis_s8_r1360}' if vaxisLogic.r1360_condition():
            # a42 # r1360
            $ vaxisLogic.r1360_action()
            jump vaxis_s28

        'Lež: "Ano… ale teď o tom nemůžu moc mluvit. Co tu děláš?"{#vaxis_s8_r1361}' if vaxisLogic.r1361_condition():
            # a43 # r1361
            $ vaxisLogic.r1361_action()
            jump vaxis_s28

        '"No, Teď nemám čas s tebou mluvit… možná někdy jindy."{#vaxis_s8_r1362}':
            # a44 # r1362
            jump vaxis_s4


# s9 # say1363
label vaxis_s9: # from 7.3
    nr 'Pozorně tě studuje. "Ty špeh? Ty děláš srandu?"{#vaxis_s9_}'

    menu:
        '"Huh?"{#vaxis_s9_r4359}':
            # a45 # r4359
            jump morte_s85  # EXTERN

        '"Buňka?"{#vaxis_s9_r4360}':
            # a46 # r4360
            jump morte_s85  # EXTERN


# s10 # say4361
label vaxis_s10: # from 8.0 8.1
    nr 'Zamračil se a pak na tebe zasyčel. "Ty né fpíón!" Mávl rukou. "Vmiv! Vmivni!"{#vaxis_s10_}'

    menu:
        '"Nejdřív mi řekni, co tady děláš, nebo zavolám stráže."{#vaxis_s10_r4362}' if vaxisLogic.r4362_condition():
            # a47 # r4362
            jump vaxis_s21

        '"Nejdřív mi řekni, co tady děláš, nebo zavolám stráže."{#vaxis_s10_r4363}' if vaxisLogic.r4363_condition():
            # a48 # r4363
            jump vaxis_s17

        '"Odpověz na moje zatracené otázky, nebo z tebe udělám pravou zombie dřív, než si třikrát uprdneš."{#vaxis_s10_r4364}' if vaxisLogic.r4364_condition():
            # a49 # r4364
            $ vaxisLogic.r4364_action()
            jump vaxis_s19

        '"Odpověz na moje zatracené otázky, nebo z tebe udělám pravou zombie dřív, než si třikrát uprdneš."{#vaxis_s10_r4365}' if vaxisLogic.r4365_condition():
            # a50 # r4365
            $ vaxisLogic.r4365_action()
            jump vaxis_s22

        '"Dobře, dobře… Já jdu."{#vaxis_s10_r4367}':
            # a51 # r4367
            jump vaxis_s4


# s11 # say4366
label vaxis_s11: # externs morte_s86
    nr 'Zombie na tohle přikývla. Máš pocit, že za vším tím maskováním vidíš pýchu.{#vaxis_s11_}'

    menu:
        '"Můžeš mi pomoct s útěkem?"{#vaxis_s11_r4368}' if vaxisLogic.r4368_condition():
            # a52 # r4368
            jump vaxis_s12

        '"Tak co tady děláš?"{#vaxis_s11_r4369}':
            # a53 # r4369
            jump vaxis_s28

        'Lži: "Takže ty špehuješ pro Anarchisty? No, já taky špehuju spalováky… ale teď o tom nemůžu mluvit, jestli mi rozumíš. Co tady máš za úkol ty?"{#vaxis_s11_r4370}' if vaxisLogic.r4370_condition():
            # a54 # r4370
            $ vaxisLogic.r4370_action()
            jump vaxis_s28

        'Lži: "Takže ty špehuješ pro Anarchisty? No, já taky špehuju spalováky… ale teď o tom nemůžu mluvit. Co tady děláš?"{#vaxis_s11_r4371}' if vaxisLogic.r4371_condition():
            # a55 # r4371
            $ vaxisLogic.r4371_action()
            jump vaxis_s28

        '"Uh, zrovna nemám čas na pokec… možná později."{#vaxis_s11_r4372}':
            # a56 # r4372
            jump vaxis_s4


# s12 # say4373
label vaxis_s12: # from 7.0 11.0
    nr 'Vypadá to, že jsi zombie zaujal. "Máf problémy? Fo fe ftalo?"{#vaxis_s12_}'

    menu:
        '"Probudil jsem se na jednom z kamenů nahoře."{#vaxis_s12_r4374}':
            # a57 # r4374
            jump vaxis_s13

        '"Já… zůstal jsem tady uvězněný. Můžeš mi pomoct?"{#vaxis_s12_r4375}':
            # a58 # r4375
            jump vaxis_s31

        '"Možná ti o tom řeknu někdy jindy."{#vaxis_s12_r4376}':
            # a59 # r4376
            jump vaxis_s4


# s13 # say4377
label vaxis_s13: # from 12.0
    nr 'Zombie se na tebe dívá, jako bys zešílel. "Ty blávnifej?"{#vaxis_s13_}'

    menu:
        '"Ano, jsem blávnífej. Hodně blávnifej."{#vaxis_s13_r4378}':
            # a60 # r4378
            jump vaxis_s14

        '"„Blávnifej?“ Co je to?"{#vaxis_s13_r4379}' if vaxisLogic.r4379_condition():
            # a61 # r4379
            jump vaxis_s16

        '"„Blávnifej?“ Co je to?"{#vaxis_s13_r4380}' if vaxisLogic.r4380_condition():
            # a62 # r4380
            jump morte_s87  # EXTERN

        '"Vím, že to zní neuvěřitelně, ale vážně ti nelžu: Vstal jsem z mrtvých na jednom z náhrobků."{#vaxis_s13_r4381}':
            # a63 # r4381
            $ vaxisLogic.r4381_action()
            jump vaxis_s14

        '"Uh, ne… vlastně, tak nějak jsem tu uvíznul. Můžeš mi pomoct?"{#vaxis_s13_r4382}':
            # a64 # r4382
            jump vaxis_s31

        '"Zapomeň, žes mě potkal. Budu muset jít."{#vaxis_s13_r4383}':
            # a65 # r4383
            jump vaxis_s4


# s14 # say4384
label vaxis_s14: # from 13.0 13.3 15.0
    nr 'Dívá se na tebe, pak zasyčel a mávl rukou. "Fef blávnifej! Vypadni vode mně!"{#vaxis_s14_}'

    menu:
        '"Já nikam nejdu. Řekni mi, co tady děláš, nebo zavolám stráže."{#vaxis_s14_r4385}' if vaxisLogic.r4385_condition():
            # a66 # r4385
            jump vaxis_s21

        '"Já nikam nejdu. Řekni mi, co tady děláš, nebo zavolám stráže."{#vaxis_s14_r4386}' if vaxisLogic.r4386_condition():
            # a67 # r4386
            jump vaxis_s17

        '"Nejdřív mi odpovíš na moje zatracené otázky, nebo to tvoje maskování bude pravé. Pravá zombie."{#vaxis_s14_r4387}' if vaxisLogic.r4387_condition():
            # a68 # r4387
            $ vaxisLogic.r4387_action()
            jump vaxis_s19

        '"Nejdřív mi odpovíš na moje zatracené otázky, nebo to tvoje maskování bude pravé. Pravá zombie."{#vaxis_s14_r4388}' if vaxisLogic.r4388_condition():
            # a69 # r4388
            $ vaxisLogic.r4388_action()
            jump vaxis_s22

        '"Dobře, dobře… sbohem."{#vaxis_s14_r4389}':
            # a70 # r4389
            jump vaxis_s4


# s15 # say4390
label vaxis_s15: # externs morte_s88
    nr 'Falešná zombie se na tebe podezřívavě dívá.{#vaxis_s15_}'

    menu:
        '"Je to pravda: Probral jsem se na náhrobku."{#vaxis_s15_r4391}':
            # a71 # r4391
            $ vaxisLogic.r4391_action()
            jump vaxis_s14

        '"Uh, promiň… Vlastně, tak nějak jsem tu uvíznul. Můžeš mi pomoct?"{#vaxis_s15_r4392}':
            # a72 # r4392
            jump vaxis_s31

        '"To nic. Už budu muset jít."{#vaxis_s15_r4393}':
            # a73 # r4393
            jump vaxis_s4


# s16 # say4394
label vaxis_s16: # from 13.1
    nr 'Dívá se na tebe, pak zasyčel a mávl rukou. "Fef blávnifej! Magor! Blbef! Vypadni vode mně!"{#vaxis_s16_}'

    menu:
        '"Já nikam nejdu. Řekni mi, co tady děláš, nebo zavolám stráže."{#vaxis_s16_r4395}' if vaxisLogic.r4395_condition():
            # a74 # r4395
            jump vaxis_s21

        '"Já nikam nejdu. Řekni mi, co tady děláš, nebo zavolám stráže."{#vaxis_s16_r4396}' if vaxisLogic.r4396_condition():
            # a75 # r4396
            jump vaxis_s17

        '"Nejdřív mi odpovíš na moje zatracené otázky, nebo to tvoje maskování bude pravé. Pravá zombie."{#vaxis_s16_r4397}' if vaxisLogic.r4397_condition():
            # a76 # r4397
            $ vaxisLogic.r4397_action()
            jump vaxis_s19

        '"Nejdřív mi odpovíš na moje zatracené otázky, nebo to tvoje maskování bude pravé. Pravá zombie."{#vaxis_s16_r4398}' if vaxisLogic.r4398_condition():
            # a77 # r4398
            $ vaxisLogic.r4398_action()
            jump vaxis_s22

        '"Dobře, dobře… Jdu."{#vaxis_s16_r4399}':
            # a78 # r4399
            jump vaxis_s4


# s17 # say4400
label vaxis_s17: # from 7.5 10.1 14.1 16.1 25.3 27.3
    nr 'Na chvíli vypadá zastrašeně, ale rychle se vzpamatoval. "Ty práfknef mě, já práfknu tebe. Já tu mám fchovaný kámofe, ty nemáf nikoho. Nemáf tu fo dělat. Fpalovafi tě vabijou. Já utefu."{#vaxis_s17_}'

    menu:
        '"Neutečeš, jestli tě ZABIJU. A teď mi odpověz na mé otázky, nebo to tvoje maskování bude doopravdy. Zombie."{#vaxis_s17_r4401}' if vaxisLogic.r4401_condition():
            # a79 # r4401
            $ vaxisLogic.r4401_action()
            jump vaxis_s18

        '"Neutečeš, jestli tě ZABIJU. A teď mi odpověz na mé otázky, nebo to tvoje maskování bude doopravdy. Zombie."{#vaxis_s17_r4402}' if vaxisLogic.r4402_condition():
            # a80 # r4402
            $ vaxisLogic.r4402_action()
            jump vaxis_s22

        '"Tak si shoř v pekle. Já jdu."{#vaxis_s17_r4403}':
            # a81 # r4403
            jump vaxis_s4


# s18 # say4404
label vaxis_s18: # from 17.0
    nr 'Oči zombie se rošířily, pak na tebe zasyčel. "VKUFÍF mě dát do knihy mrtvejch? Mám tu fchovaný kámofe, ty nemáf nikoho. Dotkni fě mě a kámofi tě vabijou!"{#vaxis_s18_}'

    menu:
        '"Risknu to. Připrav se na smrt."{#vaxis_s18_r4405}':
            # a82 # r4405
            $ vaxisLogic.r4405_action()
            jump vaxis_dispose

        '"Tak si shoř v pekle. Já jdu. Radši si dávej pozor…*zombie*."{#vaxis_s18_r4406}':
            # a83 # r4406
            jump vaxis_s4


# s19 # say4407
label vaxis_s19: # from 7.6 10.2 14.2 16.2 25.4 27.4
    nr 'Oči zombie se rošířily, pak přejel očima po tvé postavě a zasyčel na tebe. "TY mě VKUFÍF dát do knihy mrtvejch? Mám tu fchovaný kámofe, ty nemáf nikoho. Dotkni fě mě a kámofi tě vabijou!"{#vaxis_s19_}'

    menu:
        '"Risknu to. Připrav se na smrt."{#vaxis_s19_r4408}':
            # a84 # r4408
            $ vaxisLogic.r4408_action()
            jump vaxis_dispose

        '"Co když tvé maskování prozradím strážím?"{#vaxis_s19_r4409}' if vaxisLogic.r4409_condition():
            # a85 # r4409
            jump vaxis_s21

        '"Co když tvé maskování prozradím strážím?"{#vaxis_s19_r4410}' if vaxisLogic.r4410_condition():
            # a86 # r4410
            jump vaxis_s20

        '"Tak si shoř v pekle. Já jdu. Radši si dávej pozor…*zombie*."{#vaxis_s19_r4411}':
            # a87 # r4411
            jump vaxis_s4


# s20 # say4412
label vaxis_s20: # from 19.2
    nr 'Oči zombie se rošířily, pak na tebe zasyčel. "Ty práfknef mě, já práfknu tebe. Já tu mám fchovaný kámofe, ty nemáf nikoho. Nemáf tu fo dělat. Fpalovafi tě vabijou. Já utefu."{#vaxis_s20_}'

    menu:
        '"To byla tvoje poslední šance, mrtvolo. Připrav se na smrt."{#vaxis_s20_r4413}':
            # a88 # r4413
            $ vaxisLogic.r4413_action()
            jump vaxis_dispose

        '"Tak si shoř v pekle. Já jdu. Radši si dávej pozor, *zombie*."{#vaxis_s20_r4414}':
            # a89 # r4414
            jump vaxis_s4


# s21 # say4415
label vaxis_s21: # from 7.4 10.0 14.0 16.0 19.1 25.2 27.2
    nr 'V tvýh očích musí být něco, co způsobilo, že se zombie přikrčila. "Ne-ne-ne! Nevolej ftrávníky!" Vypadá vystrašeně. "Já fpehuju fpalovafe, víkám, fo vidím. Nif víf."{#vaxis_s21_}'

    menu:
        '"Špehuješ? Pro koho?"{#vaxis_s21_r4416}':
            # a90 # r4416
            jump vaxis_s23

        '"Co jsi viděl Spalovače dělat?"{#vaxis_s21_r4417}':
            # a91 # r4417
            jump vaxis_s29

        '"Mám nějaké otázky…"{#vaxis_s21_r4418}':
            # a92 # r4418
            jump vaxis_s43

        '"To je vše, co jsem chtěl vědět. Sbohem, *zombie.*"{#vaxis_s21_r4419}':
            # a93 # r4419
            jump vaxis_dispose


# s22 # say4420
label vaxis_s22: # from 7.7 10.3 14.3 16.3 17.1 25.5 27.5
    nr '"Neh-neh-ne! Neublivuj mi!" Fakt, že vážíš o pár kilo svalů víc než zombie pravděpodobně zapůsobil. "Neublivuj mi! Já fpehuju fpalovafe, víkám, fo vidím. Nif víf."{#vaxis_s22_}'

    menu:
        '"Špehuješ? Pro koho?"{#vaxis_s22_r4421}':
            # a94 # r4421
            jump vaxis_s23

        '"Co jsi viděl Spalovače dělat?"{#vaxis_s22_r4422}':
            # a95 # r4422
            jump vaxis_s29

        '"Mám nějaké otázky…"{#vaxis_s22_r4423}':
            # a96 # r4423
            jump vaxis_s43

        '"To je vše, co jsem chtěl vědět. A teď mi jdi z cesty, *zombie*."{#vaxis_s22_r4424}':
            # a97 # r4424
            jump vaxis_dispose


# s23 # say4425
label vaxis_s23: # from 21.0 22.0
    nr 'Zombie zmlkla, zjevně se bojí  Už nechce říct ani slovo.{#vaxis_s23_}'

    menu:
        '"No tak. Proč to tady hlídáš?"{#vaxis_s23_r4426}' if vaxisLogic.r4426_condition():
            # a98 # r4426
            jump vaxis_s70

        '"No tak. Proč to tady hlídáš?"{#vaxis_s23_r4427}' if vaxisLogic.r4427_condition():
            # a99 # r4427
            jump morte_s89  # EXTERN

        '"Bude pro tebe MNOHEM míň bolestivé, když mi řekneš, pro koho tady špehuješ."{#vaxis_s23_r4428}' if vaxisLogic.r4428_condition():
            # a100 # r4428
            $ vaxisLogic.r4428_action()
            jump vaxis_s70

        '"Bude pro tebe MNOHEM míň bolestivé, když mi řekneš, pro koho tady špehuješ."{#vaxis_s23_r4429}' if vaxisLogic.r4429_condition():
            # a101 # r4429
            $ vaxisLogic.r4429_action()
            jump morte_s89  # EXTERN

        '"Tak to nic. Co jsi viděl Spalovače dělat?"{#vaxis_s23_r4430}':
            # a102 # r4430
            jump vaxis_s29

        '"Chtěl jsem vědět ještě něco…"{#vaxis_s23_r4431}':
            # a103 # r4431
            jump vaxis_s43

        '"Tak na to zapomeň. Sbohem, *zombie.*"{#vaxis_s23_r4432}':
            # a104 # r4432
            jump vaxis_dispose


# s24 # say4433
label vaxis_s24: # from 3.3 6.3 8.2
    nr '"Hledáf mě? Prof?" Zašilhal na tebe. "Ty máf fprávu pro mě?"{#vaxis_s24_}'

    menu:
        'Lži: "Ano, mám pro tebe zprávu."{#vaxis_s24_r4434}':
            # a105 # r4434
            $ vaxisLogic.r4434_action()
            jump vaxis_s26

        '"Zprávu od koho?"{#vaxis_s24_r4435}':
            # a106 # r4435
            jump vaxis_s27

        '"Ne, nemám zprávu."{#vaxis_s24_r4436}':
            # a107 # r4436
            jump vaxis_s25


# s25 # say4437
label vaxis_s25: # from 24.2
    nr 'Zlostně zasyčel. "Tak fo chfef, vole?"{#vaxis_s25_}'

    menu:
        '"Hledám cestu pryč. Můžeš mi pomoct?"{#vaxis_s25_r4438}' if vaxisLogic.r4438_condition():
            # a108 # r4438
            jump vaxis_s31

        '"Chci nějaké informace…"{#vaxis_s25_r4439}':
            # a109 # r4439
            jump vaxis_s43

        '"Řekni mi, co tady děláš, jinak zavolám stráže."{#vaxis_s25_r4440}' if vaxisLogic.r4440_condition():
            # a110 # r4440
            jump vaxis_s21

        '"Řekni mi, co tady děláš, jinak zavolám stráže."{#vaxis_s25_r4441}' if vaxisLogic.r4441_condition():
            # a111 # r4441
            jump vaxis_s17

        '"Odpověz na moje zatracené otázky, nebo z tebe udělám pravou zombie dřív, než si třikrát uprdneš."{#vaxis_s25_r4442}' if vaxisLogic.r4442_condition():
            # a112 # r4442
            $ vaxisLogic.r4442_action()
            jump vaxis_s19

        '"Odpověz na moje zatracené otázky, nebo z tebe udělám pravou zombie dřív, než si třikrát uprdneš."{#vaxis_s25_r4443}' if vaxisLogic.r4443_condition():
            # a113 # r4443
            $ vaxisLogic.r4443_action()
            jump vaxis_s22

        '"Omlouvám se, že jsem vyrušoval… ať už jsi kdokoli. Sbohem."{#vaxis_s25_r4444}':
            # a114 # r4444
            jump vaxis_s4


# s26 # say4445
label vaxis_s26: # from 24.0
    nr '"Jaká fpráva?"{#vaxis_s26_}'

    menu:
        '"Řekneš mi o své misi."{#vaxis_s26_r4446}' if vaxisLogic.r4446_condition():
            # a115 # r4446
            jump vaxis_s28

        'Lži: "Mám nové rozkazy."{#vaxis_s26_r4447}' if vaxisLogic.r4447_condition():
            # a116 # r4447
            $ vaxisLogic.r4447_action()
            jump vaxis_s30

        'Lži: "Já… mám nové rozkazy."{#vaxis_s26_r4448}' if vaxisLogic.r4448_condition():
            # a117 # r4448
            $ vaxisLogic.r4448_action()
            jump vaxis_s30

        '"Promiň, nemám zprávu."{#vaxis_s26_r4449}':
            # a118 # r4449
            jump vaxis_s27

        '"To nic. Omlouvám se, že jsem vyrušoval. Sbohem."{#vaxis_s26_r4450}':
            # a119 # r4450
            jump vaxis_s27


# s27 # say4451
label vaxis_s27: # from 24.1 26.3 26.4
    nr 'Jeho oči se zúžily. "Ty nejfi pofel. Kdo fef?"{#vaxis_s27_}'

    menu:
        '"Hledám cestu pryč. Můžeš mi pomoct?"{#vaxis_s27_r4452}' if vaxisLogic.r4452_condition():
            # a120 # r4452
            jump vaxis_s31

        '"Chci nějaké informace…"{#vaxis_s27_r4453}':
            # a121 # r4453
            jump vaxis_s43

        '"Řekni mi, co tady děláš, jinak zavolám stráže."{#vaxis_s27_r4454}' if vaxisLogic.r4454_condition():
            # a122 # r4454
            jump vaxis_s21

        '"Řekni mi, co tady děláš, jinak zavolám stráže."{#vaxis_s27_r4455}' if vaxisLogic.r4455_condition():
            # a123 # r4455
            jump vaxis_s17

        '"Já tady dávám otázky, *zombie*. Řekni mi, kdo jsi, nebo už ten převlek nebudeš potřebovat, protože s tebe udělám opravdovou mrtvolu."{#vaxis_s27_r4456}' if vaxisLogic.r4456_condition():
            # a124 # r4456
            $ vaxisLogic.r4456_action()
            jump vaxis_s19

        '"Já tady dávám otázky, *zombie*. Řekni mi, kdo jsi, nebo už ten převlek nebudeš potřebovat, protože s tebe udělám opravdovou mrtvolu."{#vaxis_s27_r4457}' if vaxisLogic.r4457_condition():
            # a125 # r4457
            $ vaxisLogic.r4457_action()
            jump vaxis_s22

        '"Omlouvám se, že jsem vyrušoval… kdokoli jsi. Sbohem."{#vaxis_s27_r4458}':
            # a126 # r4458
            jump vaxis_s4


# s28 # say4459
label vaxis_s28: # from 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
    nr '"Fpehuju Fpalovafe. Víkám, fo vidím. Nif víf."{#vaxis_s28_}'

    menu:
        '"Co jsi viděl Spalovače dělat?"{#vaxis_s28_r4460}':
            # a127 # r4460
            jump vaxis_s29

        '"Aha. Ještě jsem se tě chtěl zeptat na něco jiného…"{#vaxis_s28_r4461}':
            # a128 # r4461
            jump vaxis_s43

        '"To je vše, co jsem chtěl vědět. Sbohem."{#vaxis_s28_r4462}':
            # a129 # r4462
            jump vaxis_dispose


# s29 # say4463
label vaxis_s29: # from 21.1 22.1 23.4 28.0 70.1 71.2
    nr '"Nif. Nedělaj nif. Nif fem nevjiftil. Mrtví, mrtví, akorát mrtví lidi. Fpalovafi nif nedělaj." Tváří se zklamaně. "Ftejně je ale hlídám."{#vaxis_s29_}'

    menu:
        '"Aha. Ještě jsem se tě chtěl zeptat na něco jiného…"{#vaxis_s29_r4464}':
            # a130 # r4464
            jump vaxis_s43

        '"To je vše, co jsem chtěl vědět. Sbohem."{#vaxis_s29_r4465}':
            # a131 # r4465
            jump vaxis_dispose


# s30 # say4466
label vaxis_s30: # from 26.1 26.2
    nr 'Zamračil se, jakoby nad něčím přemýšlel. "Jaký pvíkavy?"{#vaxis_s30_}'

    menu:
        '"Řekni mi o své misi."{#vaxis_s30_r4467}':
            # a132 # r4467
            jump vaxis_s28

        '"Potřebuji najít útěkovou cestu, kudy bych mohl odejít bez zpozorování."{#vaxis_s30_r4468}':
            # a133 # r4468
            jump vaxis_s49

        '"Jsem tady, abych tě vystřídal. Předej mi všechny informace, které jsi získal, tvé vybavení a jdi."{#vaxis_s30_r4469}' if vaxisLogic.r4469_condition():
            # a134 # r4469
            $ vaxisLogic.j64517_s30_r4469_action()
            $ vaxisLogic.r4469_action()
            jump vaxis_s72

        '"Přišel jsem ti pomoct."{#vaxis_s30_r4470}':
            # a135 # r4470
            jump vaxis_s35

        '"Tvé rozkazy budou muset ještě chvíli počkat. Ještě se vrátím."{#vaxis_s30_r4471}':
            # a136 # r4471
            jump vaxis_dispose


# s31 # say4472
label vaxis_s31: # from 7.1 12.1 13.4 15.1 25.0 27.0 50.0
    nr 'Je chvíli z ticha, pak přikývl, že rozumí. "Prof bych ti měl pomoft?"{#vaxis_s31_}'

    menu:
        '"Protože potřebuju tvou pomoc."{#vaxis_s31_r4473}':
            # a137 # r4473
            jump vaxis_s32

        '"Možná bychom si mohli pomoct navzájem. Co chceš na oplátku?"{#vaxis_s31_r4474}' if vaxisLogic.r4474_condition():
            # a138 # r4474
            $ vaxisLogic.r4474_action()
            jump vaxis_s35

        '"Protože *nevyzradím* tvé maskování… pokud mi pomůžeš."{#vaxis_s31_r4475}' if vaxisLogic.r4475_condition():
            # a139 # r4475
            jump vaxis_s33

        '"Protože *nevyzradím* tvé maskování… pokud mi pomůžeš."{#vaxis_s31_r4476}' if vaxisLogic.r4476_condition():
            # a140 # r4476
            jump vaxis_s34

        '"Vypadáš jako někdo, kdo je za mrtvolu zamaskovaný, než že JE mrtvola. Dostatečný důvod?"{#vaxis_s31_r4477}' if vaxisLogic.r4477_condition():
            # a141 # r4477
            $ vaxisLogic.r4477_action()
            jump vaxis_s75

        '"Vypadáš jako někdo, kdo je za mrtvolu zamaskovaný, než že JE mrtvola. Dostatečný důvod?"{#vaxis_s31_r4478}' if vaxisLogic.r4478_condition():
            # a142 # r4478
            $ vaxisLogic.r4478_action()
            jump vaxis_s33

        '"Zapomeň, že jsme se potkali. Musím jít. Sbohem."{#vaxis_s31_r4479}':
            # a143 # r4479
            jump vaxis_s4


# s32 # say4480
label vaxis_s32: # from 31.0
    nr 'Zombie si odfrkla. "Kavdej něfo *potvebuje*, ale nikdo nif *nedá*. *Dej* mi něfo a já ti *movná* pomůvu."{#vaxis_s32_}'

    menu:
        '"Co potřebuješ?"{#vaxis_s32_r4481}':
            # a144 # r4481
            jump vaxis_s35

        '"Co takhle mi pomoct a já nezavolám stráže?"{#vaxis_s32_r4482}' if vaxisLogic.r4482_condition():
            # a145 # r4482
            jump vaxis_s33

        '"Co takhle mi pomoct a já nezavolám stráže?"{#vaxis_s32_r4483}' if vaxisLogic.r4483_condition():
            # a146 # r4483
            jump vaxis_s34

        '"Vypadáš jako někdo, kdo by radši dýchal, než mi řekl ne. Takže teď naposled: jak se odsud dostanu?"{#vaxis_s32_r4484}' if vaxisLogic.r4484_condition():
            # a147 # r4484
            $ vaxisLogic.r4484_action()
            jump vaxis_s75

        '"Vypadáš jako někdo, kdo by radši dýchal, než mi řekl ne. Takže teď naposled: jak se odsud dostanu?"{#vaxis_s32_r4485}' if vaxisLogic.r4485_condition():
            # a148 # r4485
            $ vaxisLogic.r4485_action()
            jump vaxis_s33

        '"Nezájem. Sbohem."{#vaxis_s32_r4486}':
            # a149 # r4486
            jump vaxis_s4


# s33 # say4487
label vaxis_s33: # from 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
    nr 'Prohlíží si tě a uvažuje, jestli na tebe bude mít, pak si to ale raději rozmyslel. "Hmfff. Můvef utéft portálem."{#vaxis_s33_}'

    menu:
        '"Portály?"{#vaxis_s33_r4672}':
            # a150 # r4672
            $ vaxisLogic.r4672_action()
            jump vaxis_s50


# s34 # say4491
label vaxis_s34: # from 31.3 32.2 35.3
    nr 'Na chvíli vypadá zastrašeně, ale rychle se vzpamatoval. "Ty práfknef mě, já práfknu tebe. Já tu mám fchovaný kámofe, ty nemáf nikoho. Nemáf tu fo dělat. Fpalovafi tě vabijou. Já utefu."{#vaxis_s34_}'

    menu:
        '"Neutečeš, jestli tě ZABIJU. A teď mluv, nebo už to maskování nebudeš potřebovat… zombie."{#vaxis_s34_r4489}' if vaxisLogic.r4489_condition():
            # a151 # r4489
            $ vaxisLogic.r4489_action()
            jump vaxis_s74

        '"Neutečeš, jestli tě ZABIJU. A teď mluv, nebo už to maskování nebudeš potřebovat… zombie."{#vaxis_s34_r4490}' if vaxisLogic.r4490_condition():
            # a152 # r4490
            $ vaxisLogic.r4490_action()
            jump vaxis_s33

        '"Tak si shoř v pekle. Já jdu."{#vaxis_s34_r4492}':
            # a153 # r4492
            jump vaxis_s4


# s35 # say4493
label vaxis_s35: # from 30.3 31.1 32.0
    nr '"Mufíf mi donéft *klíf*. Potvebuju velevnej klíf k balvamovafí míftnofti."{#vaxis_s35_}'

    menu:
        '"Myslíš tenhle klíč?"{#vaxis_s35_r4494}' if vaxisLogic.r4494_condition():
            # a154 # r4494
            $ vaxisLogic.r4494_action()
            jump vaxis_s42

        '"Dobře. Kde je ten klíč?"{#vaxis_s35_r4495}':
            # a155 # r4495
            jump vaxis_s36

        '"Na tohle nemám čas. Pomož mi utéct, nebo zavolám stráže."{#vaxis_s35_r4496}' if vaxisLogic.r4496_condition():
            # a156 # r4496
            $ vaxisLogic.r4496_action()
            jump vaxis_s33

        '"Na tohle nemám čas. Pomož mi utéct, nebo zavolám stráže."{#vaxis_s35_r4497}' if vaxisLogic.r4497_condition():
            # a157 # r4497
            $ vaxisLogic.r4497_action()
            jump vaxis_s34

        '"Nic ti nepřinesu. Pomož mi utéct, nebo ti přímo tady zlomím krk."{#vaxis_s35_r4498}' if vaxisLogic.r4498_condition():
            # a158 # r4498
            $ vaxisLogic.r4498_action()
            jump vaxis_s75

        '"Nic ti nepřinesu. Pomož mi utéct, nebo ti přímo tady zlomím krk."{#vaxis_s35_r4499}' if vaxisLogic.r4499_condition():
            # a159 # r4499
            $ vaxisLogic.r4499_action()
            jump vaxis_s33

        '"Ne, děkuju. Možná příště."{#vaxis_s35_r4500}':
            # a160 # r4500
            jump vaxis_s4


# s36 # say4501
label vaxis_s36: # from 35.1 58.2
    nr '"Fpalovafka ho má." Ukázal si na oči. "Má vlutý ofi…" Podivně zagestikuloval rukou, jako by se v nečem hrabal. "Na prftech má nove."{#vaxis_s36_}'

    menu:
        '"Už jsem se s ní setkal. Tady je klíč."{#vaxis_s36_r4502}' if vaxisLogic.r4502_condition():
            # a161 # r4502
            $ vaxisLogic.r4502_action()
            jump vaxis_s42

        '"Spalovačka… se žlutýma očima a čepelema na svých prstech? Už jsem se s ní setkal, v balzamovacím pokoji. Počkej -- hned se s klíčem vrátím."{#vaxis_s36_r64520}' if vaxisLogic.r64520_condition():
            # a162 # r64520
            $ vaxisLogic.j64519_s36_r64520_action()
            jump vaxis_s38

        '"Spalovačka… se žlutýma očima a noži na prstech? Dobrá tedy. Vrátím se s klíčem."{#vaxis_s36_r4503}' if vaxisLogic.r4503_condition():
            # a163 # r4503
            $ vaxisLogic.j64518_s36_r4503_action()
            jump vaxis_s38

        '"Ta Spalovačka vypadá opravdu atraktivně. Jsi si jistý, že vás nemám představit?"{#vaxis_s36_r4504}':
            # a164 # r4504
            $ vaxisLogic.r4504_action()
            jump vaxis_s37


# s37 # say4505
label vaxis_s37: # from 36.3
    nr 'Zombie mrkl. Asi tě nepochopil.{#vaxis_s37_}'

    menu:
        '"To byl jenom vtípek, měl bys… zapomeň na to. Zajdu ti pro ten klíč."{#vaxis_s37_r4506}' if vaxisLogic.r4506_condition():
            # a165 # r4506
            $ vaxisLogic.j64519_s37_r4506_action()
            jump vaxis_s38

        '"Byl to jenom fórek, mělo… zapomeň na to, půjdu hledat ten tvůj klíč."{#vaxis_s37_r66150}' if vaxisLogic.r66150_condition():
            # a166 # r66150
            $ vaxisLogic.j64518_s37_r66150_action()
            jump vaxis_s38


# s38 # say4507
label vaxis_s38: # from 36.1 36.2 37.0 37.1
    nr 'Zombie na tebe zašilhal. "Jefli tě chytěj, nif o mně nevíkej, nebo tě vabiju. Af budef fpát."{#vaxis_s38_}'

    menu:
        '"Donesu ti ten tvůj zatracený klíč… ale ty už mi radši nevyhrožuj, jasný?!"{#vaxis_s38_r4508}' if vaxisLogic.r4508_condition():
            # a167 # r4508
            $ vaxisLogic.r4508_action()
            jump vaxis_dispose

        '"Já se vrátím."{#vaxis_s38_r4509}' if vaxisLogic.r4509_condition():
            # a168 # r4509
            $ vaxisLogic.r4509_action()
            jump vaxis_dispose

        '"Donesu ti ten tvůj zatracený klíč… ale ty už mi radši nevyhrožuj, jasný?!"{#vaxis_s38_r4510}' if vaxisLogic.r4510_condition():
            # a169 # r4510
            jump vaxis_dispose

        '"Já se vrátím."{#vaxis_s38_r4511}' if vaxisLogic.r4511_condition():
            # a170 # r4511
            jump vaxis_dispose


# s39 # say4512
label vaxis_s39: # from 43.12
    nr '"Já dobrej v mafkování. A taky mám jivvy. A napláfal fem na febe blvamovafí tekutinu. Já DOBRÁ vombie." Zombie se zasmál, jak mu to jenom sešitá pusa dovolila a pak si zaťukal na čelo. "Fpalovafi fou blllbíííí!"{#vaxis_s39_}'

    jump morte_s93  # EXTERN


# s40 # say4514
label vaxis_s40: # -
    nr '"Pofkám na tebe. Donef klíf." Zombie se usmál. "Pak ti pomůvu."{#vaxis_s40_}'

    menu:
        '"Jestli to najdu, vrátím se."{#vaxis_s40_r4515}':
            # a171 # r4515
            jump vaxis_dispose

        '"Tak na to zapomeň."{#vaxis_s40_r4516}':
            # a172 # r4516
            jump vaxis_dispose


# s41 # say4517
label vaxis_s41: # -
    nr 'Zombieho oči se rozšířily, pak natáhl ruku a lusknul prsty. "Dej mi ho."{#vaxis_s41_}'

    menu:
        '"Vydrž chvíli. Nejdřív něco chci."{#vaxis_s41_r4518}':
            # a173 # r4518
            jump vaxis_dispose

        '"Tady máš."{#vaxis_s41_r4519}':
            # a174 # r4519
            $ vaxisLogic.r4519_action()
            jump vaxis_dispose


# s42 # say4520
label vaxis_s42: # from 35.0 36.0 58.0 58.1
    nr 'Zombieho oči se rozšířily. Popadl klíč z tvé dlaně. Pokyvuje si a obrací jej v dlani. "Dobve. Dobve."{#vaxis_s42_}'

    menu:
        '"Tak… jak se odtud dostanu?"{#vaxis_s42_r4521}' if vaxisLogic.r4521_condition():
            # a175 # r4521
            $ vaxisLogic.j64521_s42_r4521_action()
            $ vaxisLogic.r4521_action()
            jump vaxis_s49

        '"Tak… je tady něco, co bych rád věděl…"{#vaxis_s42_r4522}' if vaxisLogic.r4522_condition():
            # a176 # r4522
            $ vaxisLogic.j64521_s42_r4522_action()
            $ vaxisLogic.r4522_action()
            jump vaxis_s43


# s43 # say4523
label vaxis_s43: # from 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
    nr '"Fo chfef fědět?"{#vaxis_s43_}'

    menu:
        '"Jak odtud mohu uprchnout?"{#vaxis_s43_r64508}' if vaxisLogic.r64508_condition():
            # a177 # r64508
            jump vaxis_s49

        '"Jak odtud můžu utéct?"{#vaxis_s43_r4524}' if vaxisLogic.r4524_condition():
            # a178 # r4524
            jump vaxis_s49

        '"Kde že je ten portál, o kterém jsi mluvil?"{#vaxis_s43_r4525}' if vaxisLogic.r4525_condition():
            # a179 # r4525
            jump vaxis_s52

        '"Můžeš mě taky zamaskovat jako zombii?"{#vaxis_s43_r4526}' if vaxisLogic.r4526_condition():
            # a180 # r4526
            jump vaxis_s63

        '"Můžeš mě znovu zamaskovat jako zombii?"{#vaxis_s43_r4527}' if vaxisLogic.r4527_condition():
            # a181 # r4527
            jump vaxis_s63

        '"Co tady děláš?"{#vaxis_s43_r4528}' if vaxisLogic.r4528_condition():
            # a182 # r4528
            jump vaxis_s28

        '"Znáš někoho jménem Pharod?"{#vaxis_s43_r4673}' if vaxisLogic.r4673_condition():
            # a183 # r4673
            jump vaxis_s44

        '"Ztratil jsem deník. Neviděl jsi ho?"{#vaxis_s43_r4530}' if vaxisLogic.r4530_condition():
            # a184 # r4530
            jump vaxis_s47

        '"Můžeš mi něco říct o Dhallovi?"{#vaxis_s43_r4531}' if vaxisLogic.r4531_condition():
            # a185 # r4531
            jump vaxis_s53

        '"Můžeš mi něco říct o duchu Deionarry?"{#vaxis_s43_r4532}' if vaxisLogic.r4532_condition():
            # a186 # r4532
            jump vaxis_s54

        '"Můžeš mi něco říct o Soegovi?"{#vaxis_s43_r4533}' if vaxisLogic.r4533_condition():
            # a187 # r4533
            jump vaxis_s55

        '"Jak jsi to udělal, že vypadáš takhle?"{#vaxis_s43_r4534}' if vaxisLogic.r4534_condition():
            # a188 # r4534
            jump vaxis_s60

        '"Jak jsi to udělal, že vypadáš takhle?"{#vaxis_s43_r4535}' if vaxisLogic.r4535_condition():
            # a189 # r4535
            jump vaxis_s39

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."{#vaxis_s43_r4536}':
            # a190 # r4536
            jump vaxis_dispose


# s44 # say4537
label vaxis_s44: # from 43.6
    nr '"FÁ-ROD?" Zombie se na chvíli zamyšleně zamrači. "Já… flyfel fem, ve vije někde v Úlu. Nevím kde." Znovu se zamračil. "Fpálováfi móf naftvaní, némaj RÁDI Fá-roda."{#vaxis_s44_}'

    menu:
        '"Úlu?"{#vaxis_s44_r4538}':
            # a191 # r4538
            jump vaxis_s45

        '"Proč nemají Spalovači rádi Pharoda?"{#vaxis_s44_r4539}':
            # a192 # r4539
            $ vaxisLogic.j64522_s44_r4539_action()
            jump vaxis_s46

        '"Chtěl jsem vědět ještě něco…"{#vaxis_s44_r4540}':
            # a193 # r4540
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."{#vaxis_s44_r4541}':
            # a194 # r4541
            jump vaxis_dispose


# s45 # say4542
label vaxis_s45: # from 44.0
    nr '"Flum tam fenku."{#vaxis_s45_}'

    menu:
        '"Proč nemají Spalovači rádi Pharoda?"{#vaxis_s45_r4543}':
            # a195 # r4543
            $ vaxisLogic.j64522_s45_r4543_action()
            jump vaxis_s46

        '"Chtěl jsem vědět ještě něco…"{#vaxis_s45_r4544}':
            # a196 # r4544
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."{#vaxis_s45_r4545}':
            # a197 # r4545
            jump vaxis_dispose


# s46 # say4546
label vaxis_s46: # from 44.1 45.0
    nr '"On je fběraf. Nofí mrtvoly do márnife, prodává je Fpalovafům. Nofí MOF mrtváků. Fpalovafi nevěděj, fodkud má mrtváky. Myflej fi, ve Fá-rod ftrká lidi do mrtvý knihy."{#vaxis_s46_}'

    menu:
        '"Uh… co?"{#vaxis_s46_r4547}' if vaxisLogic.r4547_condition():
            # a198 # r4547
            jump vaxis_s48

        '"Uh… co?"{#vaxis_s46_r4548}' if vaxisLogic.r4548_condition():
            # a199 # r4548
            jump morte_s91  # EXTERN

        '"Oh. Chtěl jsem vědět ještě něco…"{#vaxis_s46_r4549}':
            # a200 # r4549
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."{#vaxis_s46_r4550}':
            # a201 # r4550
            jump vaxis_dispose


# s47 # say4551
label vaxis_s47: # from 43.7
    nr '"Néfim. Nákej fůl tě fobral?"{#vaxis_s47_}'

    menu:
        '"Uh… co?"{#vaxis_s47_r4552}' if vaxisLogic.r4552_condition():
            # a202 # r4552
            jump vaxis_s48

        '"Uh… co?"{#vaxis_s47_r4553}' if vaxisLogic.r4553_condition():
            # a203 # r4553
            jump morte_s92  # EXTERN

        '"Oh. Chtěl jsem vědět ještě něco…"{#vaxis_s47_r4554}':
            # a204 # r4554
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."{#vaxis_s47_r4555}':
            # a205 # r4555
            jump vaxis_dispose


# s48 # say4556
label vaxis_s48: # from 46.0 47.0
    nr 'Zombie se pokouší promluvit, zarazí se, promyslí si to a pak pokrčí rameny. Zjevně to nedovede lépe vysvětlit.{#vaxis_s48_}'

    menu:
        '"Oh. Chtěl jsem vědět ještě něco…"{#vaxis_s48_r4557}':
            # a206 # r4557
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."{#vaxis_s48_r4558}':
            # a207 # r4558
            jump vaxis_dispose


# s49 # say4559
label vaxis_s49: # from 30.1 42.0 43.0 43.1
    nr 'Zombie zabručela. "Můvef utéft portálem." Zamával rukou. "Pufff."{#vaxis_s49_}'

    menu:
        '"Portálem? Jakým portálem?"{#vaxis_s49_r4560}':
            # a208 # r4560
            jump vaxis_s50


# s50 # say4563
label vaxis_s50: # from 33.0 49.0
    nr '"Portály…" Zombie mávl rukou kolem. "Portály vfude."{#vaxis_s50_}'

    menu:
        '"Můžeš mi ukázat některý z portálů?"{#vaxis_s50_r4564}' if vaxisLogic.r4564_condition():
            # a209 # r4564
            jump vaxis_s31

        '"Můžeš mi ukázat jeden z těch portálů?"{#vaxis_s50_r64509}' if vaxisLogic.r64509_condition():
            # a210 # r64509
            jump vaxis_s51

        '"Můžeš mi ukázat jeden z těch portálů?"{#vaxis_s50_r64510}' if vaxisLogic.r64510_condition():
            # a211 # r64510
            jump vaxis_s51

        '"Můžeš mi ukázat jeden z těch portálů?"{#vaxis_s50_r64511}' if vaxisLogic.r64511_condition():
            # a212 # r64511
            jump vaxis_s51


# s51 # say4567
label vaxis_s51: # from 50.1 50.2 50.3 72.0
    nr 'Zombie kývl. "Chfef pryf, tak projdi vobloukem na prvním patve, feverovápadní míftnoft… Potvebujef koftěnej prft, vkroufenej…" Zvedl ukazováček a ohnul ho. "Av budef mít klíf, jdi do voblouku, fkrofíf do tajný krypty. Vodtamtud můvef utéft. Tajná útěková fefta. Můvef fi tam i FODPOFINOUT."{#vaxis_s51_}'

    menu:
        '"Křivou prstní kost? Kde něco takového najdu?"{#vaxis_s51_r64527}' if vaxisLogic.r64527_condition():
            # a213 # r64527
            $ vaxisLogic.j64528_s51_r64527_action()
            $ vaxisLogic.r64527_action()
            jump vaxis_s77

        '"Mám nějaké otázky…"{#vaxis_s51_r4568}' if vaxisLogic.r4568_condition():
            # a214 # r4568
            $ vaxisLogic.j64529_s51_r4568_action()
            $ vaxisLogic.r4568_action()
            jump vaxis_s43

        '"Oblouk na prvním patře, severozápadní místnost. Dobře, půjdu se tam podívat."{#vaxis_s51_r4569}' if vaxisLogic.r4569_condition():
            # a215 # r4569
            $ vaxisLogic.j64529_s51_r4569_action()
            $ vaxisLogic.r4569_action()
            jump vaxis_dispose


# s52 # say4570
label vaxis_s52: # from 43.2
    nr '"Poflouchej! Pamatuj fi!" Zombie začíná být naštvaný. "Voblouk, první patro, feverovápadní míftnoft." Zvedl ukazováček a zkroutil jej. "Potvebujef prftní koft, vkroufenou. Fkonfíf v tajný mífntnosfti, odkud můvef utéft. Můvef tam taky vodpofívat."{#vaxis_s52_}'

    menu:
        '"Chtěl jsem vědět ještě něco…"{#vaxis_s52_r4571}':
            # a216 # r4571
            jump vaxis_s43

        '"Oblouk na prvním patře, severozápadní místnost, otevírá se zkroucenou prstní kostí? Dobře, půjdu se tam podívat."{#vaxis_s52_r4572}':
            # a217 # r4572
            jump vaxis_dispose


# s53 # say4573
label vaxis_s53: # from 43.8
    nr '"Pífav." Pokrčil rameny. "Ftarej. Vlutej."{#vaxis_s53_}'

    menu:
        '"Asi už se k tomu nedá víc dodat. Chtěl bych vědět ještě něco."{#vaxis_s53_r4574}':
            # a218 # r4574
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."{#vaxis_s53_r4575}':
            # a219 # r4575
            jump vaxis_dispose


# s54 # say4576
label vaxis_s54: # from 43.9
    nr '"Hunh?" Zamračil se. "Kdo ona?"{#vaxis_s54_}'

    menu:
        '"Zapomeň na to. Chtěl bych vědět ještě něco…"{#vaxis_s54_r4577}':
            # a220 # r4577
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."{#vaxis_s54_r4578}':
            # a221 # r4578
            jump vaxis_dispose


# s55 # say4579
label vaxis_s55: # from 43.10
    nr '"Průvodfe, u pvedních dveví márnife. Fo f ním?"{#vaxis_s55_}'

    menu:
        '"Co o něm víš?"{#vaxis_s55_r4580}':
            # a222 # r4580
            $ vaxisLogic.j64530_s55_r4580_action()
            $ vaxisLogic.r4580_action()
            jump vaxis_s56

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."{#vaxis_s55_r4581}':
            # a223 # r4581
            jump vaxis_dispose


# s56 # say4582
label vaxis_s56: # from 55.0
    nr '"Je divnej, ne Fpalovaf, ne Anarchofta, má jiný vofi…" Pokrčil rameny. "Jako kryfa. Divnej."{#vaxis_s56_}'

    menu:
        '"To je dobře, že je to jedinej divnej tady kolem. Ještě je tu něco, co bych chtěl vědět…"{#vaxis_s56_r4583}':
            # a224 # r4583
            jump vaxis_s43

        '"To nic. Možná budu mít nějaké otázky později. Nikam nechoď."{#vaxis_s56_r4584}':
            # a225 # r4584
            jump vaxis_dispose


# s57 # say4585
label vaxis_s57: # - # IF ~  GlobalGT("Vaxis","GLOBAL",0)
    nr 'Vidíš falešnou zombie. Žasneš nad kvalitním maskováním… jeho dýchání je tak potlačené, že je skoro nelze zpozorovat."{#vaxis_s57_}'

    menu:
        '"Zdravím."{#vaxis_s57_r4586}' if vaxisLogic.r4586_condition():
            # a226 # r4586
            jump vaxis_s58

        '"Zdravím."{#vaxis_s57_r4587}' if vaxisLogic.r4587_condition():
            # a227 # r4587
            jump vaxis_s58

        '"Zdravím."{#vaxis_s57_r4588}' if vaxisLogic.r4588_condition():
            # a228 # r4588
            jump vaxis_s59

        '"Zdravím."{#vaxis_s57_r4589}' if vaxisLogic.r4589_condition():
            # a229 # r4589
            jump vaxis_s58

        'Nechej ho být.{#vaxis_s57_r4590}':
            # a230 # r4590
            jump vaxis_dispose


# s58 # say4591
label vaxis_s58: # from 57.0 57.1 57.3
    nr 'Zombie se rychle rozhlédl, jestli vás někdo nevidí, pak se k tobě otočil. "Fo je?"{#vaxis_s58_}'

    menu:
        '"Tady je ten klíč, cos ho chtěl."{#vaxis_s58_r4592}' if vaxisLogic.r4592_condition():
            # a231 # r4592
            $ vaxisLogic.r4592_action()
            jump vaxis_s42

        '"Tady je ten klíč, cos ho chtěl."{#vaxis_s58_r4593}' if vaxisLogic.r4593_condition():
            # a232 # r4593
            $ vaxisLogic.r4593_action()
            jump vaxis_s42

        '"Kdeže je ten klíč, cos o něm mluvil?"{#vaxis_s58_r4594}' if vaxisLogic.r4594_condition():
            # a233 # r4594
            jump vaxis_s36

        '"Mám pro tebe nějaké otázky…"{#vaxis_s58_r4595}':
            # a234 # r4595
            jump vaxis_s43

        '"To nic."{#vaxis_s58_r4596}':
            # a235 # r4596
            jump vaxis_dispose


# s59 # say4597
label vaxis_s59: # from 57.2
    nr 'Zombie se rychle rozhlédl, jestli vás někdo nevidí, pak na tebe zamával. "Vypadni! Jdi pryf!"{#vaxis_s59_}'

    menu:
        '"Ne. Nejdřív mám nějaké otázky…"{#vaxis_s59_r4598}':
            # a236 # r4598
            jump vaxis_s43

        '"Tak to nic."{#vaxis_s59_r4599}' if vaxisLogic.r4599_condition():
            # a237 # r4599
            jump vaxis_s4

        '"Tak to nic."{#vaxis_s59_r4600}' if vaxisLogic.r4600_condition():
            # a238 # r4600
            jump vaxis_dispose


# s60 # say4601
label vaxis_s60: # from 43.11
    nr '"Já dobrej v mafkování. A taky mám jivvy. A napláfal fem na febe blvamovafí tekutinu. Já DOBRÁ vombie." Zombie se zasmál, jak mu to jenom sešitá pusa dovolila a pak si zaťukal na čelo. "Fpalovafi fou blllbíííí!"{#vaxis_s60_}'

    menu:
        '"Jo, jsou pořádně pitomí."{#vaxis_s60_r4602}':
            # a239 # r4602
            jump vaxis_s61

        '"Nebolí to?"{#vaxis_s60_r4603}':
            # a240 # r4603
            jump vaxis_s62

        '"To maskování je dost dobrý. Hele, můžeš mě taky zamaskovat jako zombii?"{#vaxis_s60_r4604}' if vaxisLogic.r4604_condition():
            # a241 # r4604
            jump vaxis_s63

        '"Chtěl jsem vědět ještě něco…"{#vaxis_s60_r4605}':
            # a242 # r4605
            jump vaxis_s43

        '"Musím jít. Sbohem."{#vaxis_s60_r4606}':
            # a243 # r4606
            jump vaxis_dispose


# s61 # say4607
label vaxis_s61: # from 60.0
    nr 'Sarkasmus na zombie zjevně nezabral. "Blbí Fpalovafi. Já dobrá vombie."{#vaxis_s61_}'

    menu:
        '"Nebude to bolet?"{#vaxis_s61_r4608}':
            # a244 # r4608
            jump vaxis_s62

        '"To maskování je dost dobrý. Můžeš mě taky zamaskovat jako zombii?"{#vaxis_s61_r4609}' if vaxisLogic.r4609_condition():
            # a245 # r4609
            jump vaxis_s63

        '"Chtěl jsem vědět ještě něco…"{#vaxis_s61_r4610}' if vaxisLogic.r4610_condition():
            # a246 # r4610
            jump vaxis_s64

        '"Musím jít. Sbohem."{#vaxis_s61_r4611}' if vaxisLogic.r4611_condition():
            # a247 # r4611
            jump vaxis_s64

        '"Chtěl jsem vědět ještě něco…"{#vaxis_s61_r4612}' if vaxisLogic.r4612_condition():
            # a248 # r4612
            jump vaxis_s43

        '"Musím jít. Sbohem."{#vaxis_s61_r4613}' if vaxisLogic.r4613_condition():
            # a249 # r4613
            jump vaxis_dispose


# s62 # say4614
label vaxis_s62: # from 60.1 61.0
    nr 'Podíval se na tvé jizvy. "Já fe tě prám to famý. Mě mof nebolelo." Poplácal se po hrudi. "Já TVRDEJ."{#vaxis_s62_}'

    menu:
        '"To maskování je dost dobrý. Můžeš mě taky zamaskovat jako zombii?"{#vaxis_s62_r4615}' if vaxisLogic.r4615_condition():
            # a250 # r4615
            jump vaxis_s63

        '"Chtěl jsem vědět ještě něco…"{#vaxis_s62_r4616}' if vaxisLogic.r4616_condition():
            # a251 # r4616
            jump vaxis_s64

        '"Musím jít. Sbohem."{#vaxis_s62_r4617}' if vaxisLogic.r4617_condition():
            # a252 # r4617
            jump vaxis_s64

        '"Chtěl jsem vědět ještě něco…"{#vaxis_s62_r4618}' if vaxisLogic.r4618_condition():
            # a253 # r4618
            jump vaxis_s43

        '"Musím jít. Sbohem."{#vaxis_s62_r4674}' if vaxisLogic.r4674_condition():
            # a254 # r4674
            jump vaxis_dispose


# s63 # say4619
label vaxis_s63: # from 43.3 43.4 60.2 61.1 62.0 64.1 64.2
    nr 'Chvíli si tě prohlíží a něco si mumlá, nakonec přikývl. "Jo. Potvebuju fklínku balvamovafí tekutiny." Ukázal na jizvy na tvém hrudníku. "A nějakou nit a jehlu."{#vaxis_s63_}'

    menu:
        '"Tady máš."{#vaxis_s63_r4620}' if vaxisLogic.r4620_condition():
            # a255 # r4620
            $ vaxisLogic.r4620_action()
            jump vaxis_s65

        '"Promyslím si to. Mám nějaké otázky…"{#vaxis_s63_r4621}':
            # a256 # r4621
            $ vaxisLogic.r4621_action()
            jump vaxis_s43

        '"Ne, děkuju. Možná příště… sbohem."{#vaxis_s63_r4622}':
            # a257 # r4622
            $ vaxisLogic.r4622_action()
            jump vaxis_dispose

        '"Blazamovací tekutinu a nit? Zkusím se po tom podívat."{#vaxis_s63_r4623}':
            # a258 # r4623
            $ vaxisLogic.r4623_action()
            jump vaxis_dispose


# s64 # say4624
label vaxis_s64: # from 61.2 61.3 62.1 62.2
    nr 'Prohlédl si tě s podivným výrazem na tváři. "Ty budef DOBRÁ vombie. Můvu tě udělat vombie? Dobrej pvevlek."{#vaxis_s64_}'

    menu:
        '"Ne. Ale stejně díky. Mám pro tebe ještě další otázky…"{#vaxis_s64_r4625}':
            # a259 # r4625
            $ vaxisLogic.r4625_action()
            jump vaxis_s43

        '"Jistě. Dokážeš to?"{#vaxis_s64_r4626}':
            # a260 # r4626
            jump vaxis_s63

        '"Proč ne? Stejně se už cítím jako chodící mrtvola."{#vaxis_s64_r4627}':
            # a261 # r4627
            jump vaxis_s63

        '"Ne… no… to je v pořádku. Sbohem."{#vaxis_s64_r4628}':
            # a262 # r4628
            $ vaxisLogic.r4628_action()
            jump vaxis_dispose


# s65 # say4629
label vaxis_s65: # from 63.0
    nr 'Zombie si od tebe vzal předměty a pak se pustil do práce…{#vaxis_s65_}'

    menu:
        'Zkus vydržet bez hnutí.{#vaxis_s65_r4630}' if vaxisLogic.r4630_condition():
            # a263 # r4630
            $ vaxisLogic.r4630_action()
            jump vaxis_s66

        'Zkus vydržet bez hnutí.{#vaxis_s65_r4631}' if vaxisLogic.r4631_condition():
            # a264 # r4631
            $ vaxisLogic.r4631_action()
            jump morte_s94  # EXTERN

        'Zkus vydržet bez hnutí.{#vaxis_s65_r4632}' if vaxisLogic.r4632_condition():
            # a265 # r4632
            $ vaxisLogic.r4632_action()
            jump vaxis_s66

        'Ještě se pokus vydržet.{#vaxis_s65_r64533}' if vaxisLogic.r64533_condition():
            # a266 # r64533
            $ vaxisLogic.r64533_action()
            jump vaxis_s66


# s66 # say4633
label vaxis_s66: # from 65.0 65.2 65.3
    nr 'Zombie tě potřel balzamovací tekutinou a pak zašil některé z tvých jizev. Nakonec dokončil maskování sešitím tvých rtů."{#vaxis_s66_}'

    menu:
        '"Mmm-hmmph-mmm… Víky."{#vaxis_s66_r4634}' if vaxisLogic.r4634_condition():
            # a267 # r4634
            jump vaxis_s67

        '"Mmm-hmmph-mmm… Víky."{#vaxis_s66_r4635}' if vaxisLogic.r4635_condition():
            # a268 # r4635
            $ vaxisLogic.r4635_action()
            jump morte_s95  # EXTERN

        '"Mmm-hmmph-mmm… Víky."{#vaxis_s66_r4636}' if vaxisLogic.r4636_condition():
            # a269 # r4636
            jump vaxis_s67


# s67 # say4637
label vaxis_s67: # from 66.0 66.2
    nr 'Zombie zvedl ruku. "Opatrň! Mluvení trhá ftehu, vnifí máafkování. Vombie nemluví. Mufíf mluvit? Mluv pomalu, opatrň."  POZNÁMKA: Uvědom si, že nikdo nečeká, že budou zombie mluvit. Jestli si s někým promluvíš zamaskovaný jako zombie, pravděpodobně bude tvůj převlek odhalen.{#vaxis_s67_}'

    menu:
        '"Mmph… mmm. Já… rovumím."{#vaxis_s67_r4638}':
            # a270 # r4638
            $ vaxisLogic.j64531_s67_r4638_action()
            jump vaxis_s68


# s68 # say4639
label vaxis_s68: # from 67.0
    nr 'Zombie se zamračil. "Mafkování nevydrví dlouho. Balvám ufchne, ftehy vypadají." Pokrčil rameny. "Afi ti to nevydrví, av fe doftanef ven. A neběhej. Běháf a vnifíf felý mafkování."  POZNÁMKA: Nasazení zbraní nebo běhání okamžitě zruší tvé maskování za zombie. Pokud najdeš novou zbraň, nesnaž se ji použít, dokud budeš chtít zůstat zamaskovaný. Pokud máš zapnuto automatické běhání, rozhodně je vypni, jakmile domluvíš s Vaxisem, tedy pokud chceš zůstat v přestrojení.{#vaxis_s68_}'

    menu:
        'Přikývni a odejdi.{#vaxis_s68_r4640}':
            # a271 # r4640
            jump vaxis_dispose


# s69 # say4641
label vaxis_s69: # -
    nr '„Zombie“ se zamračil. "Ty vypadáf vnámě. Uf fem tě viděl?"{#vaxis_s69_}'

    menu:
        '"Možná. Kde jsi mě viděl?"{#vaxis_s69_r4642}':
            # a272 # r4642
            jump vaxis_dispose

        'X.{#vaxis_s69_r4643}':
            # a273 # r4643
            jump vaxis_dispose


# s70 # say4644
label vaxis_s70: # from 23.0 23.2 71.0 71.1
    nr 'K tvému překvapení se od tebe zombie otočil… a začíná se bojácně rozhlížet kolem.{#vaxis_s70_}'

    menu:
        '"Nebudeš mluvit? Tak se připrav, naučím tě aspoň řvát!"{#vaxis_s70_r4645}':
            # a274 # r4645
            $ vaxisLogic.r4645_action()
            jump vaxis_dispose

        '"Tak to nic. Co jsi viděl Spalovače dělat?"{#vaxis_s70_r4646}':
            # a275 # r4646
            jump vaxis_s29

        '"Chtěl jsem vědět ještě něco…"{#vaxis_s70_r4647}':
            # a276 # r4647
            jump vaxis_s43

        '"Tak na to zapomeň. Sbohem, *zombie.*"{#vaxis_s70_r4648}':
            # a277 # r4648
            jump vaxis_dispose


# s71 # say4649
label vaxis_s71: # externs morte_s90
    nr 'Zombie se vystrašeně dívá. Je stále potichu… ale něco v jeho výrazu ti říká, že Morteho poznámka byla přesná.{#vaxis_s71_}'

    menu:
        '"Anarchisti, huh? To pro ně hlídáš tady tohle místo?"{#vaxis_s71_r4650}':
            # a278 # r4650
            jump vaxis_s70

        '"Bude mnohem MÉNĚ bolestivé, když mi řekneš, proč tě sem Anarchisti poslali špehovat."{#vaxis_s71_r4651}':
            # a279 # r4651
            $ vaxisLogic.r4651_action()
            jump vaxis_s70

        '"Tak to nic. Co jsi viděl Spalovače dělat?"{#vaxis_s71_r4652}':
            # a280 # r4652
            jump vaxis_s29

        '"Chtěl jsem vědět ještě něco…"{#vaxis_s71_r4653}':
            # a281 # r4653
            jump vaxis_s43

        '"Tak na to zapomeň. Sbohem, *zombie.*"{#vaxis_s71_r4654}':
            # a282 # r4654
            jump vaxis_dispose


# s72 # say4655
label vaxis_s72: # from 30.2
    nr 'Zombie vypadá zklamaně, ale pak pokrčil rameny a sáhl do své špianvé tuniky. "Byl tu klid. Fpalovafi klidní, nif novýho od poflední fprávy." Po chvíli vyhrabal nějaké předměty, které ti podal. "Tady." Podle pachu byly schovány tak, aby nebyly objeveny v případě, že by ho někdo prohledával. "Va chvilku odejdu."{#vaxis_s72_}'

    menu:
        '"Odejdeš? Jak?"{#vaxis_s72_r4656}' if vaxisLogic.r4656_condition():
            # a283 # r4656
            jump vaxis_s51

        '"Výborně. Sbohem, Vaxisi."{#vaxis_s72_r64532}' if vaxisLogic.r64532_condition():
            # a284 # r64532
            jump vaxis_dispose


# s73 # say4658
label vaxis_s73: # -
    nr 'Zombie zabručel. "Portál je v oblouku na prvním patve, feverováapdní míftnoft. Potvebujef vkroufenou koft v prftu, abyf ho otevvel. Hodně ftěftí."{#vaxis_s73_}'

    menu:
        '"Uh… dobře."{#vaxis_s73_r4659}':
            # a285 # r4659
            jump vaxis_dispose


# s74 # say4660
label vaxis_s74: # from 34.0
    nr 'Oči zombie se rošířily, pak na tebe zasyčel. "VKUFÍF mě dát do knihy mrtvejch? Mám tu fchovaný kámofe, ty nemáf nikoho. Dotkni fě mě a kámofi tě vabijou!"{#vaxis_s74_}'

    menu:
        '"To byla tvá poslední šance. Připrav se na smrt."{#vaxis_s74_r4661}':
            # a286 # r4661
            $ vaxisLogic.r4661_action()
            jump vaxis_dispose

        '"Tak si shoř v pekle. Já jdu. Radši si dávej pozor…*zombie*."{#vaxis_s74_r4662}':
            # a287 # r4662
            jump vaxis_s4


# s75 # say4663
label vaxis_s75: # from 31.4 32.3 35.4
    nr 'Oči zombie se rošířily, pak přejel očima po tvé postavě a zasyčel na tebe. "TY mě VKUFÍF dát do knihy mrtvejch? Mám tu fchovaný kámofe, ty nemáf nikoho. Dotkni fě mě a kámofi tě vabijou!"{#vaxis_s75_}'

    menu:
        '"Co kdybych tvůj převlek prozradil strážným?"{#vaxis_s75_r4664}' if vaxisLogic.r4664_condition():
            # a288 # r4664
            jump vaxis_s33

        '"Co kdybych tvůj převlek prozradil strážným?"{#vaxis_s75_r4665}' if vaxisLogic.r4665_condition():
            # a289 # r4665
            jump vaxis_s76

        '"Risknu to. Připrav se na smrt."{#vaxis_s75_r4666}':
            # a290 # r4666
            $ vaxisLogic.r4666_action()
            jump vaxis_dispose

        '"Tak si shoř v pekle. Já jdu. Radši si dávej pozor…*zombie*."{#vaxis_s75_r4667}':
            # a291 # r4667
            jump vaxis_s4


# s76 # say4668
label vaxis_s76: # from 75.1
    nr 'Oči zombie se rošířily, pak na tebe zasyčel. "Ty práfknef mě, já práfknu tebe. Já tu mám fchovaný kámofe, ty nemáf nikoho. Nemáf tu fo dělat. Fpalovafi tě vabijou. Já utefu."{#vaxis_s76_}'

    menu:
        '"To byla tvoje poslední šance, mrtvolo. Připrav se na smrt."{#vaxis_s76_r4669}':
            # a292 # r4669
            $ vaxisLogic.r4669_action()
            jump vaxis_dispose

        '"Tak si shoř v pekle. Já jdu. Radši si dávej pozor…*zombie*."{#vaxis_s76_r4670}':
            # a293 # r4670
            jump vaxis_s4


# s77 # say64523
label vaxis_s77: # from 51.0
    nr 'Pokrčí rameny. "Mufí být někde kolem… podívej fe ve fkladiftích v hofním patfe. Mofná tam."{#vaxis_s77_}'

    menu:
        '"Fajn. Mám další otázky…"{#vaxis_s77_r64524}':
            # a294 # r64524
            jump vaxis_s43

        '"Výborně. Kouknu se po té křivé prstní kosti nahoře, pak si to namířím do prvního patra, k jednomu z oblouků v severozápadní místnosti. Mám to."{#vaxis_s77_r64525}':
            # a295 # r64525
            jump vaxis_dispose
