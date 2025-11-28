init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1146_logic import Zm1146Logic
    zm1146Logic = Zm1146Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1146.DLG
# ###


# s0 # say6518
label zm1146_s0: # - # IF ~  Global("Crispy","GLOBAL",0)
    nr 'Do čela této chodící mrtvoly je vyřezáno číslo "1146", rty má sešity obyčejnou černou nití. Celé tělo je pokryto hroznými jizvami - snad dokonce horšími než jsou tvé vlastní - jako kdyby jeho vlastník byl upálen. Nos, uši a některé prsty zombii chybí, pravděpodobně shořely při nějakém dávném požáru. Když jí zablokuješ cestu, abys upoutal její „pozornost,“ zastaví se a zírá na tebe prázdnýma očima.{#zm1146_s0_1}'

    menu:
        '"Tak… je tam dál vidět něco zajímavého?"{#zm1146_s0_r6521}' if zm1146Logic.r6521_condition():
            # a0 # r6521
            $ zm1146Logic.r6521_action()
            jump zm1146_s1

        '"Tak… je tam dál vidět něco zajímavého?"{#zm1146_s0_r6522}' if zm1146Logic.r6522_condition():
            # a1 # r6522
            jump zm1146_s1

        '"Vím, že nejsi zombie, jasný? Mě neoklameš."{#zm1146_s0_r6523}' if zm1146Logic.r6523_condition():
            # a2 # r6523
            jump zm1146_s1

        'Použij svoji schopnost Kosti vyprávějte na mrtvolu.{#zm1146_s0_r6524}' if zm1146Logic.r6524_condition():
            # a3 # r6524
            $ zm1146Logic.r6524_action()
            jump zm1146_s2

        '"Rád jsem si s tebou popovídal. Sbohem."{#zm1146_s0_r6525}':
            # a4 # r6525
            jump zm1146_dispose

        'Nechej mrtvolu být.{#zm1146_s0_r6526}':
            # a5 # r6526
            jump zm1146_dispose


# s1 # say6519
label zm1146_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe stále zírá.{#zm1146_s1_1}'

    menu:
        'Nechej mrtvolu být.{#zm1146_s1_r6527}':
            # a6 # r6527
            jump zm1146_dispose


# s2 # say6520
label zm1146_s2: # from 0.3
    nr 'Když se duch vrátil do svého někdejšího příbytku, zaplavil tvé smysly zápach dýmající síry, spálených chlupů a vařící krve. Mrtvola se téměř okamžitě zhroutila na podlahu, prudce se chvěje a uboze sténá. Téměř vidíš slabý proužek páchnoucího kouře vycházejícího z jejího těla a údů.{#zm1146_s2_1}'

    menu:
        '"Jsi… v pořádku?"{#zm1146_s2_r6528}':
            # a7 # r6528
            jump zm1146_s3

        '"Měl bych pro tebe pár otázek…"{#zm1146_s2_r9413}':
            # a8 # r9413
            jump zm1146_s9

        'Opusť hořící duši.{#zm1146_s2_r9414}':
            # a9 # r9414
            jump zm1146_dispose


# s3 # say9398
label zm1146_s3: # from 2.0
    nr 'Duch otevřel jedno oko. Oční bělmo přímo září v porovnání se šedí zvrásněného masa, které ho obklopuje. Pomalu otočil svou hlavu a zírá ne tebe; roztrhané a rozervané maso na hlavě i krku má pevně napnuto na kosti. Konečně se z jeho sešlého hrdla vydralo: "Ne. Ne… já ne, ty… pitomej… vylízanče."{#zm1146_s3_1}'

    menu:
        '"Můžu ti nějak pomoci?"{#zm1146_s3_r9415}':
            # a10 # r9415
            $ zm1146Logic.r9415_action()
            jump zm1146_s4

        '"Mám pár otázek…"{#zm1146_s3_r9416}':
            # a11 # r9416
            jump zm1146_s9

        '"Tak to má být, ty jedna smrdutá ohořelá trosko; takovýhle osud si zasloužíš. Sbohem."{#zm1146_s3_r9417}':
            # a12 # r9417
            jump zm1146_s6

        'Opusť utrápenou duši.{#zm1146_s3_r9418}':
            # a13 # r9418
            jump zm1146_dispose


# s4 # say9399
label zm1146_s4: # from 3.0
    nr '"HA, hA-HURG!" Duch se hlasitě zasmál, když tu náhle ztichl, začal se svíjet v křečích a vyzvracel na zem směsici balzamovací tekutiny s hnilobou. Stále ještě zkroucen bolestí začal chrchlavě kašlat, přičemž chvílemi přestal, aby mohl ze svých zničených rtů vypravit další várku nažloutlé tekutiny a rozervaných stehů.{#zm1146_s4_1}'

    menu:
        'Trpělivě vyčkej, než záchvat skončí.{#zm1146_s4_r9419}':
            # a14 # r9419
            jump zm1146_s5

        '"Ještě bych se chtěl na něco zeptat…"{#zm1146_s4_r9421}':
            # a15 # r9421
            jump zm1146_s9

        'Zanechej utrápenou duši v jejích mukách.{#zm1146_s4_r9422}':
            # a16 # r9422
            jump zm1146_dispose


# s5 # say9400
label zm1146_s5: # from 4.0
    nr 'Duchovo příšerné kašlání konečně ustalo. "Ne, blbče… nemůžeš. Leda bys… leda bys odtancoval přímo do Baatoru a zachránil mě tam. Tam sem… sem oslep. Je čas k mýmu… mýmu pokání." Opět zavřel své oči a položil hlavu na zem.{#zm1146_s5_1}'

    menu:
        '"Ještě bych se chtěl na něco zeptat…"{#zm1146_s5_r9423}':
            # a17 # r9423
            jump zm1146_s9

        '"Dobrá. Sbohem."{#zm1146_s5_r9424}':
            # a18 # r9424
            jump zm1146_dispose


# s6 # say9401
label zm1146_s6: # from 3.2 17.0
    nr 'Duch se sebe vypravil chrchlavý zvuk, jeho zčernalé seschlé rty odhalily křivé žluté zuby. "Jen… jen počkej, než se dostanu… z tý díry… Pro tebe… si přídu jako pro prvního, blbče…"{#zm1146_s6_1}'

    menu:
        '"To klidně udělej. Nebojím se někoho, jako jsi ty."{#zm1146_s6_r9425}':
            # a19 # r9425
            jump zm1146_s7

        'Kopni ho.{#zm1146_s6_r9426}':
            # a20 # r9426
            $ zm1146Logic.r9426_action()
            jump zm1146_s8

        'Ignoruj trosku, otoč se a odejdi.{#zm1146_s6_r9427}':
            # a21 # r9427
            jump zm1146_dispose


# s7 # say9402
label zm1146_s7: # from 6.0
    nr 'Duch slabě, ale nevrle zavrčel a plivl na tebe -- jeho špinavé sliny tě ale o pár stop minuly. Vyčerpaně sebou třískl na zem a z jeho těla opět začal vyprchávat všechen život.{#zm1146_s7_1}'

    jump zm1146_dispose


# s8 # say9403
label zm1146_s8: # from 6.1
    nr 'Pohotově jsi mrtvolu nakopl do ledvin, ale patrně bez jakéhokoliv efektu; duch se zdá být nezraněný. "Ha, ha-ha," zachrčelo stvoření těsně předtím, než opustilo tělo. Takže tu teď jen tak stojíš s jistým pocitem neuspokojenosti.{#zm1146_s8_1}'

    jump zm1146_dispose


# s9 # say9404
label zm1146_s9: # from 2.1 3.1 4.1 5.0 10.0 11.0 12.1 13.1 14.1 15.0 16.0 17.1 18.1 19.0 20.0
    nr '"Tak… tak co bys ode mě teda potřeboval, blbečku?" Chvílemi se tělo opět zkroutí a hází sebou na zemi, jako by se pokoušelo uhasit malé ohníčky na vlastním těle.{#zm1146_s9_1}'

    menu:
        '"Kdo jsi?"{#zm1146_s9_r9428}':
            # a22 # r9428
            jump zm1146_s10

        '"Odkud pocházíš?"{#zm1146_s9_r9429}':
            # a23 # r9429
            jump zm1146_s11

        '"Jak ses sem dostal? Teda myslím tvoje tělo?"{#zm1146_s9_r9430}':
            # a24 # r9430
            jump zm1146_s12

        '"Kde jsi… kde tvá duše spočívá… teď?"{#zm1146_s9_r9431}':
            # a25 # r9431
            jump zm1146_s13

        '"Čím sis zasloužil takováto muka?"{#zm1146_s9_r9432}':
            # a26 # r9432
            jump zm1146_s14

        '"Co všechno víš o tomto místě?"{#zm1146_s9_r9433}':
            # a27 # r9433
            jump zm1146_s15

        '"Neznáš náhodou někoho jménem Pharod?"{#zm1146_s9_r9434}' if zm1146Logic.r9434_condition():
            # a28 # r9434
            jump zm1146_s16

        '"Vlastně nic, zapomeň na to."{#zm1146_s9_r9435}':
            # a29 # r9435
            jump zm1146_dispose


# s10 # say9405
label zm1146_s10: # from 9.0
    nr '"To neni tvoje starost… nech mě… bejt…"{#zm1146_s10_1}'

    menu:
        '"Ne. Mám ještě další otázku…"{#zm1146_s10_r9436}':
            # a30 # r9436
            jump zm1146_s9

        '"Tak tedy sbohem."{#zm1146_s10_r9437}':
            # a31 # r9437
            jump zm1146_dispose


# s11 # say9406
label zm1146_s11: # from 9.1
    nr '"Eh? Pro lásku mocnejch, kdo… se ptá? Ze Sigilu, ty… ty jedno hovado."{#zm1146_s11_1}'

    menu:
        '"Mám ještě další otázku…"{#zm1146_s11_r9438}':
            # a32 # r9438
            jump zm1146_s9

        '"Tak to by bylo prozatím vše. Sbohem."{#zm1146_s11_r9439}':
            # a33 # r9439
            jump zm1146_dispose


# s12 # say9407
label zm1146_s12: # from 9.2
    nr '"Sakra, přemejšlej trochu, idiote." Toto vybuchnutí přivedlo ducha až k dalšímu bolestivému záchvatu přerývaného kašle. "Takhle sem se proklel kvůli… pitomý hrstce prachů. Pitomý Spalovači… a ta jejich pravá smrt - PRAVÁ SMRT, taková hovadina - navíc se ňákej střelenej čaroděj rozhod usmažit Úl a zrovna já sem musel stát uprostřed toho ohnivýho pekla!" Začal si sám pro sebe zlostně pobroukávat, zatímco mu pochybná tekutina odkapává z mnoha puklin ve rtech.{#zm1146_s12_1}'

    menu:
        '"Nějaký čaroděj chtěl usmažit Úl?"{#zm1146_s12_r9440}':
            # a34 # r9440
            jump zm1146_s18

        '"Mám ještě další otázku…"{#zm1146_s12_r9441}':
            # a35 # r9441
            jump zm1146_s9

        '"Tak to by bylo prozatím vše. Sbohem."{#zm1146_s12_r9465}':
            # a36 # r9465
            jump zm1146_dispose


# s13 # say9408
label zm1146_s13: # from 9.3
    nr '"Kde asi… kde myslíš, hovado boží? Kde jinde než v Baatoru, v tý jedný smradlavý díře, kerý říkaj Phlegethos. Hořim, hořim… hořim… a nic jinýho tam nedělám. Uhořel sem za života a teď si hořim za smrti. Aaarrgh!" Mrtvola začala skřípat zubama - je to ke zbláznění. "Takovej hnusnej osud! Až se vodtaď dostanu, vynasnažim se dostat tam spoustu dalších nebožáků. Ha, ha-ha…"{#zm1146_s13_1}'

    menu:
        '"Proč si chceš svou zlost vylívat na jiných?"{#zm1146_s13_r9442}':
            # a37 # r9442
            jump zm1146_s17

        '"Mám ještě další otázku…"{#zm1146_s13_r9443}':
            # a38 # r9443
            jump zm1146_s9

        '"Tak to by bylo prozatím vše. Sbohem."{#zm1146_s13_r9444}':
            # a39 # r9444
            jump zm1146_dispose


# s14 # say9409
label zm1146_s14: # from 9.4
    nr '"Zasloužil? TOHLE? Ničim! Já… jsem vážně nic neproved. Sem se jen tak procházel po ulici… jako každej normální člověk… a pak najednou „vvmmmmžžžž!“ Ňákej cvoklej kouzelníček začal pálit Úl!"{#zm1146_s14_1}'

    menu:
        '"Kouzelník… začal pálit… Úl?"{#zm1146_s14_r9445}':
            # a40 # r9445
            jump zm1146_s18

        '"Aha. Chtěl bych se zeptat ještě na něco…"{#zm1146_s14_r9446}':
            # a41 # r9446
            jump zm1146_s9

        '"To je vše, co jsem chtěl vědět. Sbohem."{#zm1146_s14_r9745}':
            # a42 # r9745
            jump zm1146_dispose


# s15 # say9410
label zm1146_s15: # from 9.5
    nr '"Nic. Povidám nic, blbečku. Prostě… prostě mě nech, ať si v klidu hořim…"{#zm1146_s15_1}'

    menu:
        '"Fajn. Měl bych pro tebe ještě další otázečku…"{#zm1146_s15_r9447}':
            # a43 # r9447
            jump zm1146_s9

        '"Tak tedy sbohem."{#zm1146_s15_r9448}':
            # a44 # r9448
            jump zm1146_dispose


# s16 # say9411
label zm1146_s16: # from 9.6
    nr '"Koho? Co? NE! Jaks… jaks přišel na to, že ho znám… hovado jedno nedomrlý? Hmph…"{#zm1146_s16_1}'

    menu:
        '"Fajn. Měl bych pro tebe ještě další otázečku…"{#zm1146_s16_r9449}':
            # a45 # r9449
            jump zm1146_s9

        '"Tak to by bylo prozatím vše. Sbohem."{#zm1146_s16_r9450}':
            # a46 # r9450
            jump zm1146_dispose


# s17 # say9412
label zm1146_s17: # from 13.0
    nr '"Říká se tomu pomsta, vylízanče! Dostanu… dostanu tam všechny, co mě kdy rozzlobili. A hlavně toho čaroděje! Rozsekám ho na mrňavý kousíčky a ty mu potom narvu do držky! A pak ho zatáhnu do týhle zatracený díry - všechny ty kousíčky a potom nějaký další! Jeho a pár dalších… jen tak do počtu! Ha, ha-ha…"{#zm1146_s17_1}'

    menu:
        '"Nezávidím ti to, ale tvůj osud se zdá být zasloužený."{#zm1146_s17_r9420}':
            # a47 # r9420
            jump zm1146_s6

        '"Aha. Chtěl bych se zeptat ještě na něco…"{#zm1146_s17_r9451}':
            # a48 # r9451
            jump zm1146_s9

        '"Tak to by bylo prozatím vše. Sbohem."{#zm1146_s17_r9452}':
            # a49 # r9452
            jump zm1146_dispose


# s18 # say9458
label zm1146_s18: # from 12.0 14.0
    nr '"Jo, Úl… tu nejhorší část Sigilu. V celym svym životě sem nikdy neviděl tolik vohně… zdrhal sem pryč, chtěl sem vocaď vypadnout, ale všechno bylo v jednom plameni! Baráky, ulice, lidi i jejich děti… a ten zpropadenej mág se celou tu dobu jenom chechtal! Pak sem uhnul za roh a myslel sem, že už je to za mnou, jenže ta příští věc, co sem si uvědomil byla, že mi hoří hlava! No a pak… už to se mnou šlo hezky rychle z kopce…" Duchovi oči září zlomyslným světlem.{#zm1146_s18_1}'

    menu:
        '"Co to bylo za mága?"{#zm1146_s18_r9459}':
            # a50 # r9459
            jump zm1146_s19

        '"Aha. Měl bych pro tebe ještě pár otázek…"{#zm1146_s18_r9464}':
            # a51 # r9464
            jump zm1146_s9

        '"To je vše, co jsem chtěl vědět. Sbohem."{#zm1146_s18_r9746}':
            # a52 # r9746
            jump zm1146_dispose


# s19 # say9744
label zm1146_s19: # from 18.0
    nr '"Nevím. Byl jsem už docela propečenej, než ho kdosi zastavil, pokaď ho vůbec někdo zastavil. Pamatuju si, jak ho ňácí lidi ze začátku honili a řvali na něj jménem… ééé… jo! Ignis, myslím, že tak nějak. Ignis. Nebo něco podobnýho. Doufám, že je ten parchant v horší díře, než já!"{#zm1146_s19_1}'

    menu:
        '"Aha. Mám pro tebe víc otázek…"{#zm1146_s19_r9747}':
            # a53 # r9747
            jump zm1146_s9

        '"To je vše, co jsem chtěl vědět. Sbohem."{#zm1146_s19_r9748}':
            # a54 # r9748
            jump zm1146_dispose


# s20 # say20099
label zm1146_s20: # - # IF ~  Global("Crispy","GLOBAL",1)
    nr '"Zase?!"{#zm1146_s20_1}'

    menu:
        '"Mám pár otázek…"{#zm1146_s20_r20100}':
            # a55 # r20100
            jump zm1146_s9

        '"Nic, jenom procházím. Sbohem."{#zm1146_s20_r20101}':
            # a56 # r20101
            jump zm1146_dispose
