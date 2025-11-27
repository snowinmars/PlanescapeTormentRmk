init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.xach_logic import XachLogic
    xachLogic = XachLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DXACH.DLG
# ###


# s0 # say500
label xach_s0: # - # IF ~  True()
    nr 'Vidíš mrtvolu muže s číslem "331" vyrytým do lebky. Jeho oči i rty jsou sešité a v jeho hrdle je rozestupující se otvor. Vypadá *špatně*.{#xach_s0_}'

    menu:
        '"Tak… viděl jsi, že by se tu stalo něco zajímavého?"{#xach_s0_r502}' if xachLogic.r502_condition():
            # a0 # r502
            $ xachLogic.r502_action()
            jump xach_s1

        '"Tak… viděl jsi, že by se tu stalo něco zajímavého?"{#xach_s0_r503}' if xachLogic.r503_condition():
            # a1 # r503
            jump xach_s1

        '"Vím, že nejsi zombie. Nikoho neoblbneš."{#xach_s0_r1354}' if xachLogic.r1354_condition():
            # a2 # r1354
            jump xach_s1

        'Použij svoji schopnost Kosti-vyprávějte na mrtvolu.{#xach_s0_r1355}' if xachLogic.r1355_condition():
            # a3 # r1355
            jump xach_s2

        '"Bylo to skvělý s tebou pokecat. Sbohem."{#xach_s0_r1357}':
            # a4 # r1357
            jump xach_s1

        'Nechej mrtvolu na pokoji.{#xach_s0_r1358}':
            # a5 # r1358
            jump xach_dispose


# s1 # say501
label xach_s1: # from 0.0 0.1 0.2 0.4
    nr 'Mrtvola civí před sebe prázdným pohledem.{#xach_s1_}'

    menu:
        '"Pak tedy sbohem."{#xach_s1_r505}':
            # a6 # r505
            jump xach_dispose


# s2 # say504
label xach_s2: # from 0.3
    nr '"Kd-kdo…" Zombie se vrací jeho mrzutý hlas a vypadá vylekaně. "Kdo je tu?! Odpověz mi!"{#xach_s2_}'

    menu:
        '"Nemůžeš mne vidět?"{#xach_s2_r507}':
            # a7 # r507
            jump xach_s3

        'Improvizuj: "To jsem já. Nepoznáváš můj hlas?"{#xach_s2_r508}' if xachLogic.r508_condition():
            # a8 # r508
            jump xach_s30

        'Improvizuj: "To jsem já. Nepoznáváš můj hlas?"{#xach_s2_r63307}' if xachLogic.r63307_condition():
            # a9 # r63307
            jump xach_s30

        '"Kdo jsi?"{#xach_s2_r519}':
            # a10 # r519
            jump xach_s31

        '"Xachariáš?"{#xach_s2_r506}' if xachLogic.r506_condition():
            # a11 # r506
            jump xach_s4

        '"Tenhle den bude pro tebe bez odpovědí mrtvolo. Sbohem."{#xach_s2_r520}':
            # a12 # r520
            jump xach_dispose


# s3 # say509
label xach_s3: # from 2.0
    nr '"Jsem slepý, ve smrti jako jsem byl i v životě… a teď mi odpověz. Kdo jsi?"{#xach_s3_}'

    menu:
        'Improvizuj: "To jsem já. Nepoznáváš můj hlas?"{#xach_s3_r510}' if xachLogic.r510_condition():
            # a13 # r510
            jump xach_s30

        'Improvizuj: "To jsem já. Nepoznáváš můj hlas?"{#xach_s3_r63308}' if xachLogic.r63308_condition():
            # a14 # r63308
            jump xach_s30

        '"Kdo jsi?"{#xach_s3_r511}':
            # a15 # r511
            jump xach_s31

        '"Xachariáš?"{#xach_s3_r521}' if xachLogic.r521_condition():
            # a16 # r521
            jump xach_s4

        '"Tenhle den bude pro tebe bez odpovědí mrtvolo. Sbohem."{#xach_s3_r522}':
            # a17 # r522
            jump xach_dispose


# s4 # say512
label xach_s4: # from 2.4 3.3 30.0 31.0
    nr '"Kdo… jsi!" Zombie vypadá šokovaně, ale potěšeně. "U vočí Paní Bolesti…" jeho tón se změnil ve zvědavost. "Ty nejseš *mrtvej* kámo?"{#xach_s4_}'

    menu:
        '"Kdo jsi?"{#xach_s4_r515}':
            # a18 # r515
            jump xach_s5

        '"Co tu děláš?"{#xach_s4_r516}':
            # a19 # r516
            jump xach_s47

        '"Co je tohle za místo?"{#xach_s4_r517}':
            # a20 # r517
            jump xach_s6

        '"Nemůžu se dlouho vybavovat. Musím už jít. Sbohem."{#xach_s4_r518}' if xachLogic.r518_condition():
            # a21 # r518
            jump xach_s41

        '"Nemůžu mluvit dlouho. Musím odejít. Sbohem."{#xach_s4_r1394}' if xachLogic.r1394_condition():
            # a22 # r1394
            jump xach_dispose


# s5 # say514
label xach_s5: # from 4.0
    nr '"Bylo to těžký překvapení shodit tu starou špinavou pokrývku a uvidět za ní starýho blázna Xachariáše? To jsem já, kamaráde. Požehnáni buďte všechny Mocnosti, už jsem si myslel, že tě nikdy neuvidím… taky ses hodně změnil, jak můžou moje uši slyšet… už jsi zase dělal nějaká nešťastná rozhodnutí?" Xachariáš zavtipkoval. "Seš taky mrtvej?"{#xach_s5_}'

    menu:
        '"Je to dlouhý příběh… ale ne, nejsem mrtvý."{#xach_s5_r685}':
            # a23 # r685
            jump xach_s46

        '"Co tu děláš?"{#xach_s5_r686}':
            # a24 # r686
            jump xach_s47

        '"Co je tohle za místo?"{#xach_s5_r687}':
            # a25 # r687
            jump xach_s6

        '"Už nemám čas se s tebou vybavovat, Xachariáši. Sbohem."{#xach_s5_r688}' if xachLogic.r688_condition():
            # a26 # r688
            jump xach_s41

        '"Už nemám víc času s tebou mluvit, Xachariáši. Sbohem."{#xach_s5_r1393}' if xachLogic.r1393_condition():
            # a27 # r1393
            jump xach_dispose


# s6 # say513
label xach_s6: # from 4.2 5.2
    nr '"V Márnici, kámo. Ty to nevíš?"{#xach_s6_}'

    menu:
        '"Co tě přivedlo do tohoto postavení?"{#xach_s6_r523}':
            # a28 # r523
            jump xach_s8

        '"Co mi můžeš říct o Márnici?"{#xach_s6_r524}' if xachLogic.r524_condition():
            # a29 # r524
            $ xachLogic.r524_action()
            jump xach_s9

        '"Co mi můžeš říct o mém předchozím životě?"{#xach_s6_r525}':
            # a30 # r525
            jump xach_s16

        '"Co mi můžeš říct o mých předchozích druzích?"{#xach_s6_r526}':
            # a31 # r526
            jump xach_s23

        '"Musím jít. Sbohem."{#xach_s6_r527}' if xachLogic.r527_condition():
            # a32 # r527
            jump xach_s41

        '"Musím odejít. Sbohem."{#xach_s6_r1392}' if xachLogic.r1392_condition():
            # a33 # r1392
            jump xach_dispose


# s7 # say528
label xach_s7: # from 8.0 9.1 10.2 11.1 12.1 13.0 14.0 15.0 16.2 17.1 18.1 19.3 22.1 23.5 24.2 25.0 26.2 27.4 28.1 29.1 32.1 33.2 35.0 36.1 40.0 46.1 47.1 48.0 49.1
    nr '"Vždy?"{#xach_s7_}'

    menu:
        '"Chci ten předmět zpět, Xachariáši…"{#xach_s7_r63484}' if xachLogic.r63484_condition():
            # a34 # r63484
            jump xach_s34

        '"Jak ses dostal do tohohle postavení?"{#xach_s7_r637}':
            # a35 # r637
            jump xach_s8

        '"Co mi můžeš říct o Márnici?"{#xach_s7_r638}':
            # a36 # r638
            jump xach_s9

        '"Co mi můžeš říct o mém předchozím životě?"{#xach_s7_r639}':
            # a37 # r639
            jump xach_s16

        '"Co mi můžeš říct o mých dřívějších druzích?"{#xach_s7_r640}':
            # a38 # r640
            jump xach_s23

        '"Musím odejít. Sbohem, Xachariáši."{#xach_s7_r1391}' if xachLogic.r1391_condition():
            # a39 # r1391
            jump xach_dispose

        '"Musím jít. Sbohem, Xachariáši."{#xach_s7_r641}' if xachLogic.r641_condition():
            # a40 # r641
            jump xach_s41


# s8 # say529
label xach_s8: # from 6.0 7.1
    nr 'Jeho hlas zahanbeně poklesl. "Je velmi těžký jít ve tvejch stopách, kámo, viděl jsem spoustu hroznejch věcí. Dal jsem si jeden drink a pak jsem si dal další, začal jsem chlastat. Pak jednou, když jsem byl vožralej, upsal jsem svý tělo Spalovačům. Osud se rozhod postavit proti mně, když jsem byl na dně a já krátce na to umřel."{#xach_s8_}'

    menu:
        '"Měl bych nějaké další otázky…"{#xach_s8_r531}':
            # a41 # r531
            jump xach_s7

        '"Už jsem slyšel dost. Sbohem."{#xach_s8_r545}' if xachLogic.r545_condition():
            # a42 # r545
            jump xach_s41

        '"Už jsem slyšel dost. Sbohem."{#xach_s8_r1390}' if xachLogic.r1390_condition():
            # a43 # r1390
            jump xach_dispose


# s9 # say533
label xach_s9: # from 6.1 7.2
    nr '"Místo bez života kde pobíhaj živí mrtví… něco tu není správně, i když…"{#xach_s9_}'

    menu:
        '"Jako co?"{#xach_s9_r534}':
            # a44 # r534
            jump xach_s10

        '"Měl bych pro tebe nějaké další otázky…"{#xach_s9_r536}':
            # a45 # r536
            jump xach_s7

        '"Už nemám víc času, povídat si s tebou. Sbohem."{#xach_s9_r537}' if xachLogic.r537_condition():
            # a46 # r537
            jump xach_s41

        '"Už nemám víc času s tebou mluvit. Sbohem."{#xach_s9_r1389}' if xachLogic.r1389_condition():
            # a47 # r1389
            jump xach_dispose


# s10 # say535
label xach_s10: # from 9.0
    nr '"Řeknu ti tu tajemství jedný věci: Je tu zombie, kterej si hraje na zombie, ale nejni. Moc jsem se nestaral o důvod, proč to dělá, ale je to divný."{#xach_s10_}'

    menu:
        '"Ještě něco jiného?"{#xach_s10_r538}' if xachLogic.r538_condition():
            # a48 # r538
            jump xach_s11

        '"Která zombie to je?"{#xach_s10_r539}':
            # a49 # r539
            jump xach_s12

        '"Zajímavé. Měl bych nějaké další otázky…"{#xach_s10_r540}':
            # a50 # r540
            jump xach_s7

        '"Už nemám víc času, povídat si s tebou. Sbohem."{#xach_s10_r546}' if xachLogic.r546_condition():
            # a51 # r546
            jump xach_s41

        '"Už nemám víc času s tebou mluvit. Sbohem."{#xach_s10_r1388}' if xachLogic.r1388_condition():
            # a52 # r1388
            jump xach_dispose


# s11 # say541
label xach_s11: # from 10.0 12.0
    nr '"Nebo jiná věc, ten starej githzerai… jo ten, kterej má na starosti preparační místnost… Dhall. Zachránil tě před kremací už aspoň dvacetkrát. Můžeš bejt šťastnej, že máš takovýho kámoše."{#xach_s11_}'

    menu:
        '"Co přesně Dhall udělal, že mě zachránil?"{#xach_s11_r542}' if xachLogic.r542_condition():
            # a53 # r542
            jump xach_s13

        '"Já vím. Měl bych nějaké další otázky…"{#xach_s11_r543}':
            # a54 # r543
            jump xach_s7

        '"Už nemám víc času, povídat si s tebou. Sbohem."{#xach_s11_r544}' if xachLogic.r544_condition():
            # a55 # r544
            jump xach_s41

        '"Už nemám víc času s tebou mluvit. Sbohem."{#xach_s11_r1387}' if xachLogic.r1387_condition():
            # a56 # r1387
            jump xach_dispose


# s12 # say547
label xach_s12: # from 10.1
    nr '"Co mi mé oči dovolili uvidět "ho", nemůžu si to dát porád do kupy. Tady sice funguje, jako vořezávač mrtvol: ale jeho hlas na zombie je vopravdu divnej… nekomunikuje stejně jako ostatní."{#xach_s12_}'

    menu:
        '"Zpozoroval si ještě něco jiného divného tady v Márnici?"{#xach_s12_r548}' if xachLogic.r548_condition():
            # a57 # r548
            jump xach_s11

        '"Hmmm. Zajímavé. Měl bych nějaké další otázky…"{#xach_s12_r554}':
            # a58 # r554
            jump xach_s7

        '"Podívám se po tom zombie. Sbohem."{#xach_s12_r549}' if xachLogic.r549_condition():
            # a59 # r549
            jump xach_s41

        '"Půjdu se po tom zombie podívat. Sbohem."{#xach_s12_r1386}' if xachLogic.r1386_condition():
            # a60 # r1386
            jump xach_dispose


# s13 # say550
label xach_s13: # from 11.0
    nr '"Vodkládal tvou kremaci tak dlouho, dokud jsi nevstal z tý kamenné desky. Nevím proč, opravdu."{#xach_s13_}'

    menu:
        '"Zajímavé. Měl bych nějaké další otázky…"{#xach_s13_r552}':
            # a61 # r552
            jump xach_s7

        '"Musím jít. Sbohem."{#xach_s13_r553}' if xachLogic.r553_condition():
            # a62 # r553
            jump xach_s41

        '"Musím jít. Sbohem."{#xach_s13_r1385}' if xachLogic.r1385_condition():
            # a63 # r1385
            jump xach_dispose


# s14 # say555
label xach_s14: # -
    nr '"Myslel si, že je to nezbytně nutný k zabránění… toho… já… já si teď, sakra, nemůžu vzpomenout, proč to bylo nutný."{#xach_s14_}'

    menu:
        '"Hmmm. Podezřelé… Měl bych nějaké další otázky…"{#xach_s14_r557}':
            # a64 # r557
            jump xach_s7

        '"Aha. Rád bych věděl, jestli to *bylo* nutné. Měl bych si s Dhallem o tom popovídat… Sbohem."{#xach_s14_r556}' if xachLogic.r556_condition():
            # a65 # r556
            jump xach_s41

        '"Aha. Rád bych věděl, jestli to *bylo* nutné. Dhall a já bychom si měli o tom promluvit… Sbohem."{#xach_s14_r1384}' if xachLogic.r1384_condition():
            # a66 # r1384
            jump xach_dispose


# s15 # say558
label xach_s15: # -
    nr 'Jeho hlas se zahanbeně snížil. "Když se naše cesty rozdělily, kamaráde, nezbylo ve mně moc života. Je to těžký, následovat tvý kroky, zažil jsem moc hroznejch věcí. Začal jsem chlastat a začal být na pití závislej. A když sem byl jednou vožralej, upsal jsem svý tělo Spalovačům. Osud se rozhod postavit proti mně, když jsem byl na dně a já krátce na to umřel."{#xach_s15_}'

    menu:
        '"Měl bych nějaké další otázky…"{#xach_s15_r559}':
            # a67 # r559
            jump xach_s7

        '"Musím jít. Sbohem."{#xach_s15_r560}' if xachLogic.r560_condition():
            # a68 # r560
            jump xach_s41

        '"Musím jít. Sbohem."{#xach_s15_r1383}' if xachLogic.r1383_condition():
            # a69 # r1383
            jump xach_dispose


# s16 # say561
label xach_s16: # from 6.2 7.3
    nr '"Proč? Zapomněl jsi sám na sebe?"{#xach_s16_}'

    menu:
        '"Řekněme. Jak se říká… ano."{#xach_s16_r562}':
            # a70 # r562
            jump xach_s17

        '"Ne… chtěl jsem jenom vidět, jestli jsi opravdu byl tím, co říkáš."{#xach_s16_r563}':
            # a71 # r563
            jump xach_s20

        '"Nevadí. Měl bych nějaké další otázky…"{#xach_s16_r564}':
            # a72 # r564
            jump xach_s7

        '"Musím jít. Sbohem."{#xach_s16_r565}' if xachLogic.r565_condition():
            # a73 # r565
            jump xach_s41

        '"Musím jít. Sbohem."{#xach_s16_r1382}' if xachLogic.r1382_condition():
            # a74 # r1382
            jump xach_dispose


# s17 # say566
label xach_s17: # from 16.0 21.0 22.0
    nr '"Dobře… byl jsi vopravdu zvláštní, vždycky podezíravavej a dával sis porád na něco pozor… vypořádat se s někým jako jsi to dělal ty se svými nepřáteli po celý život. A nedá se popřít, že kdo si s tebou něco začal, skončil na černejch stránkách Knihy mrtvejch."{#xach_s17_}'

    menu:
        '"Ještě něco jiného? Něco určitého…"{#xach_s17_r569}':
            # a75 # r569
            jump xach_s18

        '"Měl bych nějaké další otázky…"{#xach_s17_r570}':
            # a76 # r570
            jump xach_s7

        '"Musím jít. Sbohem."{#xach_s17_r571}' if xachLogic.r571_condition():
            # a77 # r571
            jump xach_s41

        '"Musím jít. Sbohem."{#xach_s17_r1381}' if xachLogic.r1381_condition():
            # a78 # r1381
            jump xach_dispose


# s18 # say567
label xach_s18: # from 17.0
    nr '"Měl bys bejt taky proklatě bezcitnej… jako když jsi podepsal tu smlouvu nebo opustil tu kňourající žábu v Avernusu. Stejně jsme měli málo času. Ani jeden z nás nikdy nezvážil možnost odtamtud včas zdrhnout, synu."{#xach_s18_}'

    menu:
        '"A… aha. Co dalšího? Cokoliv co mi řekneš mi může pomoci."{#xach_s18_r572}':
            # a79 # r572
            jump xach_s19

        '"Nevadí. Měl bych nějaké další otázky…"{#xach_s18_r573}':
            # a80 # r573
            jump xach_s7

        '"Musím jít. Sbohem."{#xach_s18_r574}' if xachLogic.r574_condition():
            # a81 # r574
            jump xach_s41

        '"Musím jít. Sbohem."{#xach_s18_r1380}' if xachLogic.r1380_condition():
            # a82 # r1380
            jump xach_dispose


# s19 # say568
label xach_s19: # from 18.0
    nr '"A teď k jádru věci, ty vypadáš, jakoby se ti stalo to, žes zabral válečná území; všecko pro tebe bylo jako bitva a tys byl ten největší bezcitnej bastard jakýho jsem kdy potkal. Na ničem jiným ti nezáleželo krom vyřešení té věci. Chudák Deionarra se svojím brekotem a prošením, abys už nikoho neovládal, githové tě varovali kvůli tvýho válečnictví a chudák Xachariáš se pokoušel vytrvat, když jsme dorazili do Sfér. Tys byl houževnatej jako kdybys nemoh umřít, ale my jsme byli jen lidi. Teď si myslim, že jsme všichni v knize mrtvejch… nebo jsme v ní, ale nejsme v ní, takže mluv."{#xach_s19_}'

    menu:
        '"Něco jiného?"{#xach_s19_r63234}' if xachLogic.r63234_condition():
            # a83 # r63234
            jump xach_s32

        '"Deionarra?"{#xach_s19_r576}':
            # a84 # r576
            jump xach_s26

        '"„Githové?“ Co tím máš na mysli?"{#xach_s19_r577}':
            # a85 # r577
            jump xach_s24

        '"Měl bych nějaké další otázky…"{#xach_s19_r578}':
            # a86 # r578
            jump xach_s7

        '"Aha… Musím teď už jít. Sbohem, Xachariáši."{#xach_s19_r579}' if xachLogic.r579_condition():
            # a87 # r579
            jump xach_s41

        '"Aha… teď musím jít. Sbohem, Xachariáši."{#xach_s19_r1379}' if xachLogic.r1379_condition():
            # a88 # r1379
            jump xach_dispose


# s20 # say580
label xach_s20: # from 16.1
    nr '"Dobrý, ale když ti řeknu, že ti to můžu dokázat… teď podívej, už si moc na to nevzpomínám takže: takhle… vzpomínáš si když jsme táhli ten vozejk z Avernusu a běželi přímo prostředkem tý tlupy abishaiů v tý červí díře?"{#xach_s20_}'

    menu:
        'Lež: "Ano."{#xach_s20_r581}':
            # a89 # r581
            jump xach_s21

        '"Ne."{#xach_s20_r582}':
            # a90 # r582
            jump xach_s22


# s21 # say583
label xach_s21: # from 20.0
    nr '"Fajn, jsem rád, že si to aspoň jeden z nás pamatuje, protože já si na to, u Balora, nemůžu vzpomenout. Kdo jsi, kámo, a co čekáš od toho lapání vzpomínek od mrtvejch mužů?"{#xach_s21_}'

    menu:
        '"Doufám, že se mi vrátí paměť. Vážně jsem zapomněl, kdo jsem, Xachariáši, a věřím, že mi pomůžeš vzpomenout si. Co mi můžeš říct o mém předchozím životě?"{#xach_s21_r584}':
            # a91 # r584
            jump xach_s17

        '"Zapomeň na to. Měl bych nějaké otázky."{#xach_s21_r586}':
            # a92 # r586
            jump xach_dispose

        '"No nic… musím jít. Sbohem, Xachariáši."{#xach_s21_r587}' if xachLogic.r587_condition():
            # a93 # r587
            jump xach_s41

        '"Nic… Musím jít. Sbohem, Xachariáši."{#xach_s21_r1378}' if xachLogic.r1378_condition():
            # a94 # r1378
            jump xach_dispose


# s22 # say588
label xach_s22: # from 20.1
    nr '"Hmmm. No, možná se ta událost nestala přesně tak, jak sem si vzpomněl. A jak bylo tohle: pamatuješ si jak se Deionarra téměř zapsala do Knihy mrtvejch, když se tě pokoušela zastavit před vkročením do Curstu?"{#xach_s22_}'

    menu:
        '"Ne, ne ve skutečnosti… ale to je dobře; věřím, že jsi mne znal. Takže můžeš mi něco říci o mém předchozím životě?"{#xach_s22_r590}':
            # a95 # r590
            jump xach_s17

        '"Nevadí… Měl bych nějaké další otázky."{#xach_s22_r591}':
            # a96 # r591
            jump xach_s7

        '"Musím jít. Sbohem, Xachariáši."{#xach_s22_r592}' if xachLogic.r592_condition():
            # a97 # r592
            jump xach_s41

        '"Musím jít. Sbohem, Xachariáši."{#xach_s22_r1377}' if xachLogic.r1377_condition():
            # a98 # r1377
            jump xach_dispose


# s23 # say589
label xach_s23: # from 6.3 7.4
    nr '"My jsme teda byli skvělá sebranka… napůl mrtvý muž, který nemoh sám sebe dostat do Knihy mrtvejch, i když se o to pokoušel -- tak ujetej, že by ho ani Mocnosti smrti nechtěli přijmout -- bědující advokátova dcera, githzeraiský vyhnanec, lítající lebka s jazykem šakala a napůl-tupý slepý lukostřelec jako jsem já."{#xach_s23_}'

    menu:
        '"Githů?"{#xach_s23_r593}':
            # a99 # r593
            jump xach_s24

        '"Naříkající advokátova dcera?"{#xach_s23_r594}':
            # a100 # r594
            jump xach_s26

        '"Lítající lebka?"{#xach_s23_r595}':
            # a101 # r595
            jump xach_s28

        '"Ty jsi byl slepý lukostřelec?"{#xach_s23_r596}':
            # a102 # r596
            jump xach_s49

        '"Nevíš, co se stalo mému deníku?"{#xach_s23_r597}':
            # a103 # r597
            jump xach_s29

        '"Nevadí. Měl bych nějaké další otázky…"{#xach_s23_r598}':
            # a104 # r598
            jump xach_s7

        '"Musím jít. Sbohem, Xachariáši."{#xach_s23_r599}' if xachLogic.r599_condition():
            # a105 # r599
            jump xach_s41

        '"Musím jít. Sbohem, Xachariáši."{#xach_s23_r1376}' if xachLogic.r1376_condition():
            # a106 # r1376
            jump xach_dispose


# s24 # say600
label xach_s24: # from 19.2 23.0 27.0
    nr '"„Děsivě-vypadající“ githové… nepřátelští a tiší, ostatně to jsou všici z nich. Ani trošku githům nevěř, aspoň já jim nevěřím. Koukej, kamaráde, githům jde jen o dvě věci: nedostat se do votroctví a zabíjet illithidy. Všecko vostatní je pro ně nepodstatný a voni nepřijmou nikoho z nás, a to ani tebe ne."{#xach_s24_}'

    menu:
        '"Proč tomu tak bylo?"{#xach_s24_r601}' if xachLogic.r601_condition():
            # a107 # r601
            jump xach_s25

        '"O někom z mých druhů…"{#xach_s24_r602}':
            # a108 # r602
            jump xach_s27

        '"Měl bych nějaké další otázky…"{#xach_s24_r603}':
            # a109 # r603
            jump xach_s7

        '"Hmmm. Zajímavé. Díky, Xachariáši."{#xach_s24_r604}' if xachLogic.r604_condition():
            # a110 # r604
            jump xach_s41

        '"Hmmm. Zajímavé. Díky, Xachariáši."{#xach_s24_r1375}' if xachLogic.r1375_condition():
            # a111 # r1375
            jump xach_dispose


# s25 # say605
label xach_s25: # from 24.0 26.0
    nr '"Jedno z tajemství, na který sem nepřišel, kámo. Snad ty budeš vědět?"{#xach_s25_}'

    menu:
        '"Nemůžu si vzpomenout. Měl bych nějaké další otázky…"{#xach_s25_r606}':
            # a112 # r606
            jump xach_s7

        '"Možná na to přijdu. Sbohem, Xachariáši."{#xach_s25_r607}' if xachLogic.r607_condition():
            # a113 # r607
            jump xach_s41

        '"Možná bude lepší to zjistit. Sbohem, Xachariáši."{#xach_s25_r1374}' if xachLogic.r1374_condition():
            # a114 # r1374
            jump xach_dispose


# s26 # say608
label xach_s26: # from 19.1 23.1 27.1
    nr '"Ta žába-rádoby-vojanda přísahala, že s tebou půjde do Baatoru a nazpátek, a, u všech Mocností, byla tak posedlá strachem, aby o tebe nepřišla, že to udělala. Dávala si malý pozor na mne nebo na githy a bylo to fakt málo. Byla do tebe hrozně zamilovaná, důkazem byla její šílená oddanost tobě. Nerozumím tomu, co ti ty ženský řekli, zjizvenče, ale pravda je, že to v jejich krvi pěkně vře. Byla to totiž nějaká bohatá šťabajzna z Úřednický čtvrti a ty jsi od ní něco potřeboval a jediná cena byla ta, že šla s tebou."{#xach_s26_}'

    menu:
        '"Co jsem od ní chtěl?"{#xach_s26_r609}' if xachLogic.r609_condition():
            # a115 # r609
            jump xach_s25

        '"Něco o mých ostatních druzích…"{#xach_s26_r610}':
            # a116 # r610
            jump xach_s27

        '"Měl bych nějaké další otázky…"{#xach_s26_r614}':
            # a117 # r614
            jump xach_s7

        '"Už sem slyšel dost. Sbohem, Xachariáši."{#xach_s26_r611}' if xachLogic.r611_condition():
            # a118 # r611
            jump xach_s41

        '"Už jsem slyšel dost. Sbohem, Xachariáši."{#xach_s26_r1373}' if xachLogic.r1373_condition():
            # a119 # r1373
            jump xach_dispose


# s27 # say612
label xach_s27: # from 24.1 26.1 28.0 29.0 33.1 49.0
    nr '"Jo, kdo z nich?"{#xach_s27_}'

    menu:
        '"Githů."{#xach_s27_r613}':
            # a120 # r613
            jump xach_s24

        '"Naříkající advokátova dcera.„"{#xach_s27_r615}':
            # a121 # r615
            jump xach_s26

        '"Létající lebka."{#xach_s27_r616}':
            # a122 # r616
            jump xach_s28

        '"Ty… jsi byl… kamaráde lukostřelec?"{#xach_s27_r617}':
            # a123 # r617
            jump xach_s49

        '"Nevadí. Měl bych nějaké další otázky…"{#xach_s27_r618}':
            # a124 # r618
            jump xach_s7

        '"Už jsem slyšel dost. Sbohem, Xachariáši."{#xach_s27_r619}' if xachLogic.r619_condition():
            # a125 # r619
            jump xach_s41

        '"Už jsem slyšel dost. Sbohem, Xachariáši."{#xach_s27_r1372}' if xachLogic.r1372_condition():
            # a126 # r1372
            jump xach_dispose


# s28 # say620
label xach_s28: # from 23.2 27.2
    nr '"Ta oplzlá ukecaná lebka toužila po mlácení a modřinách, tak to bylo! Vždycky byla čilá a dovedla mi fakt spravit náladu!"{#xach_s28_}'

    menu:
        '"O někom z mých dalších druhů…"{#xach_s28_r622}':
            # a127 # r622
            jump xach_s27

        '"Měl bych nějaké další otázky…"{#xach_s28_r623}':
            # a128 # r623
            jump xach_s7

        '"Už jsem slyšel dost. Sbohem, Xachariáši."{#xach_s28_r624}' if xachLogic.r624_condition():
            # a129 # r624
            jump xach_s41

        '"Už jsem slyšel dost. Sbohem, Xachariáši."{#xach_s28_r1371}' if xachLogic.r1371_condition():
            # a130 # r1371
            jump xach_dispose


# s29 # say625
label xach_s29: # from 23.4
    nr '"Ta kniha cárů, co jsi sešil dohromady, měla více stránek než já počet let ve svým životě?! Tomu říkám opravdový štěstí, jestli jsi ztratil tu ghúlskou knihu! Pořád jsi do ní něco čmáral a ta věc děsně smrděla. Vobčas to vypadalo, jako by ses bál, že ti ji někdo každou chvíli čmajzne… psal jsi do ní, dokud se ti nezačala loupat kůže na prstech ruky a rád bych věděl, jestli jsi z toho psaní nezačal magořit. Někdy jsme se na pár dní někde zastavili, když jsi psal. Nenáviděl jsem tu ďábelskou knihu. Vypadalo to, že tě ta věc držela u srdce a bral jsi ji hodně vážně. Naposledy jsem ji viděl u tebe, kámo. Pokud jsi ji někde nechal, nemám vůbec tuchu, kde po Sférách by se mohla povalovat."{#xach_s29_}'

    menu:
        '"O těch mých druzích…"{#xach_s29_r626}':
            # a131 # r626
            jump xach_s27

        '"Měl bych nějaké další otázky…"{#xach_s29_r627}':
            # a132 # r627
            jump xach_s7

        '"Díky za informace. Sbohem, Xachariáši."{#xach_s29_r628}' if xachLogic.r628_condition():
            # a133 # r628
            jump xach_s41

        '"Díky za informaci. Sbohem, Xachariáši."{#xach_s29_r1370}' if xachLogic.r1370_condition():
            # a134 # r1370
            jump xach_dispose


# s30 # say629
label xach_s30: # from 2.1 2.2 3.0 3.1
    nr '"To mi zní povědomě… jestli seš ten, kdo si myslím, že seš, pak tedy… kdo…" Zombie na chvíli utichl. "Kdo jsem já?"{#xach_s30_}'

    menu:
        '"Xachariáš?"{#xach_s30_r631}' if xachLogic.r631_condition():
            # a135 # r631
            jump xach_s4

        '"Tvé jméno neznám. Můžu se vrátit jestli ho najdu. Sbohem."{#xach_s30_r632}' if xachLogic.r632_condition():
            # a136 # r632
            jump xach_dispose


# s31 # say630
label xach_s31: # from 2.3 3.2
    nr '"Já…" Zombie utichne. "…mé jméno… mi uteklo. Já… si nemůžu vzpomenout, kdo jsem."{#xach_s31_}'

    menu:
        '"Xachariáš?"{#xach_s31_r634}' if xachLogic.r634_condition():
            # a137 # r634
            jump xach_s4

        '"Tvé jméno neznám. Můžu se vrátit jestli ho najdu. Sbohem."{#xach_s31_r635}' if xachLogic.r635_condition():
            # a138 # r635
            jump xach_dispose

        '"Sbohem."{#xach_s31_r636}' if xachLogic.r636_condition():
            # a139 # r636
            jump xach_dispose


# s32 # say642
label xach_s32: # from 19.0
    nr '"Něco jsi ztratil, když jsi nám zdrhl, kámo… Dak„kona si nechal bez pána a lebku bez přítele. A mě? Něco jsi zabodnul hluboko do mne a nikdy to nevyšlo ven, dokud jsem byl naživu. Což mi způsobilo to, že mi v tepnách kolovala chladná krev, a že ta věc mě tlačí na prsou jako hrouda olova."{#xach_s32_}'

    menu:
        '"Co je to?"{#xach_s32_r645}':
            # a140 # r645
            $ xachLogic.r645_action()
            jump xach_s33

        '"Měl bych nějaké další otázky…"{#xach_s32_r646}':
            # a141 # r646
            jump xach_s7

        '"Musím jít. Sbohem, Xachariáši."{#xach_s32_r648}' if xachLogic.r648_condition():
            # a142 # r648
            jump xach_s41

        '"Musím jít. Sbohem, Xachariáši."{#xach_s32_r1369}' if xachLogic.r1369_condition():
            # a143 # r1369
            jump xach_dispose


# s33 # say643
label xach_s33: # from 32.0
    nr '"Já… já nevím. Ale nějak mě to změnilo. Změnilo mě to uvnitř. Už jsem umíral, když jsi to do mne dal, takže jsem se o to v tu chvíli nezajímal."{#xach_s33_}'

    menu:
        '"Můžu to dostat zpět?"{#xach_s33_r649}':
            # a144 # r649
            jump xach_s34

        '"O mých ostatních druzích…"{#xach_s33_r650}':
            # a145 # r650
            jump xach_s27

        '"Měl bych nějaké další otázky…"{#xach_s33_r651}':
            # a146 # r651
            jump xach_s7

        '"Musím jít. Sbohem, Xachariáši."{#xach_s33_r652}' if xachLogic.r652_condition():
            # a147 # r652
            jump xach_s41

        '"Musím jít. Sbohem, Xachariáši."{#xach_s33_r1368}' if xachLogic.r1368_condition():
            # a148 # r1368
            jump xach_dispose


# s34 # say644
label xach_s34: # from 7.0 33.0
    nr '"Je to někde pěkně hluboko, ale mám nápad, jak se k tomu dostat. Bez skalpelu a mého navigování ovšem nebudeš schopnej dostat to ven. Máš skalpel?"{#xach_s34_}'

    menu:
        '"Ano."{#xach_s34_r647}' if xachLogic.r647_condition():
            # a149 # r647
            jump xach_s36

        '"Ne… ale měl bych být schopen strhat ty stehy."{#xach_s34_r653}' if xachLogic.r653_condition():
            # a150 # r653
            jump xach_s36


# s35 # say654
label xach_s35: # -
    nr '"Dobře, vrať se, kdyby ti překážel a pak uvidíme jak ho dostat ven."{#xach_s35_}'

    menu:
        '"Měl bych nějaké další otázky…"{#xach_s35_r655}':
            # a151 # r655
            jump xach_s7

        '"Podívám se po něm. Sbohem, Xachariáši."{#xach_s35_r656}':
            # a152 # r656
            jump xach_dispose


# s36 # say657
label xach_s36: # from 34.0 34.1
    nr '"Tak mě tedy trochu otevři rukama v oblasti hrudníku a podívej se po tom."{#xach_s36_}'

    menu:
        'Udělej to.{#xach_s36_r658}':
            # a153 # r658
            jump xach_s37

        '"Nevadí, Xachariáši… Mimoto bych měl ještě nějaký otázky…"{#xach_s36_r659}':
            # a154 # r659
            jump xach_s7

        '"Už nemůžu, musím jít. Sbohem, Xachariáši."{#xach_s36_r660}' if xachLogic.r660_condition():
            # a155 # r660
            jump xach_s41

        '"Teď nemůžu, musím jít. Sbohem, Xachariáši."{#xach_s36_r1367}' if xachLogic.r1367_condition():
            # a156 # r1367
            jump xach_dispose


# s37 # say661
label xach_s37: # from 36.0
    nr '"Trošku více doleva… a trošku více…" Tvé ruce se skoro dotýkají té věci.{#xach_s37_}'

    menu:
        'Vytáhni to ven.{#xach_s37_r663}':
            # a157 # r663
            $ xachLogic.r663_action()
            jump xach_s38


# s38 # say662
label xach_s38: # from 37.0
    nr 'Vytáhl jsi játra ze zombie. "U vočí Paní bolesti! Omlouvám se, kámo… Myslel jsem, že Spalovači z nás vytáhli všechny vorgány ještě předtím, než nás vyškrtli z Knihy mrtvejch. Tak to zkusíme znovu. Možná je to víc napravo."{#xach_s38_}'

    menu:
        'Udělej to znovu.{#xach_s38_r664}':
            # a158 # r664
            jump xach_s39


# s39 # say665
label xach_s39: # from 38.0
    nr '"Jdi tamhle… teď trošku doprava a zpátky… ještě trošičku…" Cítíš něco tvrdého a studeného, trochu většího než jsi očekával. "Myslím, že to mám. Vytáhnu to ven."{#xach_s39_}'

    menu:
        'Vytáhni to ven.{#xach_s39_r666}':
            # a159 # r666
            $ xachLogic.r666_action()
            jump xach_s40


# s40 # say667
label xach_s40: # from 39.0
    nr 'Držíš zčernalý objekt velikosti pěsti, který je na svou velikost opravdu hodně těžký. "Tak to je vono. Jooo. Je to větší než jsem si myslel. Je to… co to je? Vypadá to jako… srdce."{#xach_s40_}'

    menu:
        '"Ano, to si myslím. Díky, Xachariáši. Měl bych nějaké další otázky…"{#xach_s40_r668}':
            # a160 # r668
            jump xach_s7

        '"Jo, to vypadá. Musím jít. Sbohem, Xachariáši."{#xach_s40_r669}' if xachLogic.r669_condition():
            # a161 # r669
            jump xach_s41

        '"To vypadá. Teď musím jít. Sbohem, Xachariáši."{#xach_s40_r1366}' if xachLogic.r1366_condition():
            # a162 # r1366
            jump xach_dispose


# s41 # say670
label xach_s41: # from 4.3 5.3 6.4 7.6 8.1 9.2 10.3 11.2 12.2 13.1 14.1 15.1 16.3 17.2 18.2 19.4 21.2 22.2 23.6 24.3 25.1 26.3 27.5 28.2 29.2 32.2 33.3 36.2 40.1 46.2 47.2 48.1 49.2
    nr '"Předtím než odejdeš: Potřebuju, abys mi udělal malou laskavost, kámo."{#xach_s41_}'

    menu:
        '"Oč jde?"{#xach_s41_r672}':
            # a163 # r672
            $ xachLogic.r672_action()
            jump xach_s42

        '"Už mám plné zuby těch laskavostí a úkolů, které pořád pro někoho dělám… Musím jít, Xachariáši. Sbohem."{#xach_s41_r671}':
            # a164 # r671
            $ xachLogic.r671_action()
            jump xach_s45


# s42 # say673
label xach_s42: # from 41.0
    nr 'Jeho hlas zahanbeně poklesl. "Udělal jsem pár chyb, některý zatraceně špatný, to je jasný, ale tou největší chybou je, že jsem podepsal spalovačskou smlouvu. Kdybych nebyl tak vožralej, nikdy bych takovou hovadinu neudělal. Moc toho lituju a doufal jsem, že bys to moh dát do pořádku."{#xach_s42_}'

    menu:
        '"Jak?"{#xach_s42_r675}':
            # a165 # r675
            jump xach_s43

        '"Už mám plné zuby těch laskavostí a úkolů, které pořád pro někoho dělám… Musím jít, Xachariáši. Sbohem."{#xach_s42_r676}':
            # a166 # r676
            jump xach_s45


# s43 # say677
label xach_s43: # from 42.0
    nr '"Když si spočítám, že todle tělo už tolik vytrpělo… a každej den je pro mne tak dlouhej. Možná bys mě měl bodnout ještě jednou, kámo… za starý dobrý časy? Myšlenka, že bych strávil dalších pár let tady v Márnici s těmadle vobživlákama, mi působí mrazení v zádech. Byl bys tý lásky a poslal mě zpátky do Knihy mrtvejch kam patřím?"{#xach_s43_}'

    menu:
        '"Jestli je to tvé přání…"{#xach_s43_r679}':
            # a167 # r679
            $ xachLogic.r679_action()
            jump xach_s44

        '"Xachariáši, já tě nezabiju. Znovu. Sbohem."{#xach_s43_r680}':
            # a168 # r680
            jump xach_s45


# s44 # say678
label xach_s44: # from 43.0
    nr 'Bodnul jsi ho a Xachariáš padá k zemi s těžkým žuchnutím. Slyšíš slabé zasyčení a vidíš, jak z něj vyprchává život, nakonec se v místnosti rozhostí ticho.{#xach_s44_}'

    menu:
        '"Odpočívej v pokoji, Xachariáši."{#xach_s44_r681}':
            # a169 # r681
            $ xachLogic.r681_action()
            jump xach_dispose


# s45 # say682
label xach_s45: # from 41.1 42.1 43.1
    nr '"Jo, dobře, na to nehleď. Doufám, že už mne na sebe nikdy nepoužiješ."{#xach_s45_}'

    menu:
        'Odejdi.{#xach_s45_r684}':
            # a170 # r684
            jump xach_dispose


# s46 # say683
label xach_s46: # from 5.0
    nr '"Dobře, kámo, domnívám se, že být mrtvý není nic, čeho by ses měl obávat, nicméně jak můžeš se mnou takhle mluvit? Tvůj hlas je ostrý jako nůž…"{#xach_s46_}'

    menu:
        '"Co tu děláš?"{#xach_s46_r689}':
            # a171 # r689
            jump xach_s47

        '"Měl bych nějaké otázky…"{#xach_s46_r690}':
            # a172 # r690
            jump xach_s7

        '"Musím jít. Sbohem, Xachariáši."{#xach_s46_r691}' if xachLogic.r691_condition():
            # a173 # r691
            jump xach_s41

        '"Musím jít. Sbohem, Xachariáši."{#xach_s46_r1365}' if xachLogic.r1365_condition():
            # a174 # r1365
            jump xach_dispose


# s47 # say692
label xach_s47: # from 4.1 5.1 46.0
    nr '"Jsem pevná ruka na většině míst bez života. Už aby to bylo, abych mohl projít za Nekonečnou hranici a nazval Sféru svým domovem, protože jsem promrhal celej svůj život a teď jsem tady."{#xach_s47_}'

    menu:
        '"Jaký to je být zombie?"{#xach_s47_r693}':
            # a175 # r693
            jump xach_s48

        '"Měl bych nějaké otázky…"{#xach_s47_r695}':
            # a176 # r695
            jump xach_s7

        '"Musím jít. Sbohem, Xachariáši."{#xach_s47_r696}' if xachLogic.r696_condition():
            # a177 # r696
            jump xach_s41

        '"Musím jít. Sbohem, Xachariáši."{#xach_s47_r1364}' if xachLogic.r1364_condition():
            # a178 # r1364
            jump xach_dispose


# s48 # say694
label xach_s48: # from 47.0
    nr '"Je to čestná práce…" Vytahuješ stehy z Xachariášových úst a na jeho rtech se objevil úsměv. "…Budu si teď o ústa více pečovat."{#xach_s48_}'

    menu:
        '"Měl bych nějaké další otázky…"{#xach_s48_r697}':
            # a179 # r697
            jump xach_s7

        '"Pak tedy sbohem, Xachariáši."{#xach_s48_r698}' if xachLogic.r698_condition():
            # a180 # r698
            $ xachLogic.r698_action()
            jump xach_s41

        '"Pak tedy sbohem, Xachariáši."{#xach_s48_r633}' if xachLogic.r633_condition():
            # a181 # r633
            jump xach_dispose


# s49 # say63625
label xach_s49: # from 23.3 27.3
    nr '"Je to tak. Opravdu jsi na to všechno zapomněl, opravdu? Víš, kamaráde, všichni muži vidí i něčím jiným než jen očima… někteří lépe než jiní. Já cítím srdce svých soků - *tvých* soků - a mé šípy vždy přinášejí pravdu. Ach, to byly časy…"{#xach_s49_}'

    menu:
        '"Ještě o mých dalších společnících…"{#xach_s49_r63626}':
            # a182 # r63626
            jump xach_s27

        '"Měl bych ještě pár dalších otázeček…"{#xach_s49_r63627}':
            # a183 # r63627
            jump xach_s7

        '"Hmmm. Zajímavé. Díky moc, Xachariáši."{#xach_s49_r63628}' if xachLogic.r63628_condition():
            # a184 # r63628
            jump xach_s41

        '"Hmmm. Zajímavé. Díky moc, Xachariáši."{#xach_s49_r63629}' if xachLogic.r63629_condition():
            # a185 # r63629
            jump xach_dispose
