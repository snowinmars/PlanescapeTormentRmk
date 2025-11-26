init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dust_logic import DustLogic
    dustLogic = DustLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUST.DLG
# ###


# s0 # say300
label dust_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'Spalovač nevypadá, že by tě poznal. Musel si tě splést s jedním z mrtvých dělníků.'

    menu:
        '"Zdravím."':
            # a0 # r302
            jump dust_s1

        '"Kdo jsi?"':
            # a1 # r303
            jump dust_s1

        '"Co je tohle za místo?"':
            # a2 # r304
            jump dust_s1

        '"Měl bych nějaké otázky…"':
            # a3 # r305
            jump dust_s1

        'Nechej ho být.':
            # a4 # r306
            jump dust_dispose


# s1 # say307
label dust_s1: # from 0.0 0.1 0.2 0.3
    nr 'Spalovač se zvedne, nejdříve se rozhlíží a pak se jeho pohled zastaví na tobě. Vypadá šokovaný - tvůj převlek zřejmě vypadá celkem dobře.'

    menu:
        'Využij výhody překvapení a chyť ho pod krkem, než může někoho zavolat.':
            # a5 # r310
            jump dust_s41

        '"Měl bych nějaké otázky…"':
            # a6 # r312
            jump dust_s2

        'Odejdi. Rychle.':
            # a7 # r1332
            jump dust_s2


# s2 # say309
label dust_s2: # from 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
    nr 'Spalovač couvá, pak najednou třikrát krátce zatleská. Hned nato je slyšet v Márnici zvonění velkého železného zvonu.'

    menu:
        '"Nuže dobrá…"':
            # a8 # r313
            $ dustLogic.r313_action()
            jump dust_dispose


# s3 # say314
label dust_s3: # externs morte_s64
    nr 'Bledý muž je oblečen do dlouhých tmavých šatů. Vychází z něj slabý zatuchlý zápach. Jeho vzezření je nevýrazné a zdá se, že je zaměstnán svými povinnostmi.'

    menu:
        '"Zdravím."':
            # a9 # r315
            jump dust_s4

        '"Kdo jsi?"':
            # a10 # r316
            jump dust_s4

        '"Co je tohle za místo?"':
            # a11 # r317
            jump dust_s4

        '"Měl bych nějaké otázky…"':
            # a12 # r319
            jump dust_s4

        'Nechej ho být.':
            # a13 # r382
            jump dust_dispose


# s4 # say321
label dust_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'Spalovač pomalu zvedne hlavu a otočí se k tobě. "Ztratil ses?"'

    menu:
        '"Ano."':
            # a14 # r322
            jump dust_s5

        '"Ne."':
            # a15 # r323
            jump dust_s6

        '"Ne, neztratil jsem se. Měl bych nějaké otázky…"':
            # a16 # r324
            jump dust_s6

        '"Sbohem."':
            # a17 # r325
            jump dust_s5


# s5 # say326
label dust_s5: # from 4.0 4.3 6.4 16.2 51.1
    nr '"Zavolám stráže, aby tě nasměrovaly. Vydrž chvíli."'

    menu:
        'Chyť ho pod krkem, než může někoho zavolat.' if dustLogic.r327_condition():
            # a18 # r327
            jump dust_s44

        'Chyť ho pod krkem, než může někoho zavolat.' if dustLogic.r328_condition():
            # a19 # r328
            jump dust_s41

        'Odejdi. Rychle.':
            # a20 # r329
            jump dust_s2

        'Čekej.':
            # a21 # r1333
            jump dust_s2


# s6 # say330
label dust_s6: # from 4.1 4.2 51.2 51.3
    nr '"Když ses neztratil, tak co tu děláš?"'

    menu:
        '"To se tě netýká."':
            # a22 # r331
            jump dust_s7

        '"Probudil jsem se na jedné z kamenných desek ve vaší preparační místnosti."':
            # a23 # r332
            jump dust_s8

        '"Někoho tu hledám."':
            # a24 # r333
            jump dust_s9

        '"Byl jsem sem umístěn, ale vypadá to, že se někde stala chyba."' if dustLogic.r334_condition():
            # a25 # r334
            jump dust_s16

        'Odejdi. Rychle.':
            # a26 # r337
            jump dust_s5


# s7 # say335
label dust_s7: # from 6.0 9.0 20.0
    nr '"Obávám se, že je to moje věc. Možná ti stráže rozvážou jazyk.." Spalovač začíná couvat; vypadá, že chce zavolat stráže.'

    menu:
        'Chyť ho pod krkem, než může někoho zavolat.' if dustLogic.r344_condition():
            # a27 # r344
            jump dust_s44

        'Zlom mu krk, než stačí někoho přivolat.' if dustLogic.r3887_condition():
            # a28 # r3887
            jump dust_s41

        '"Tak je tedy přivolej. Rád bych se s nimi setkal."':
            # a29 # r3888
            $ dustLogic.r3888_action()
            jump dust_dispose


# s8 # say336
label dust_s8: # from 6.1 16.0 20.1
    nr '"Děláš si legraci, jo? Snad to tedy moc rád sdělíš strážím."  Spalovač začíná couvat. Vypadá, jako by chtěl zavolat stráže.'

    menu:
        'Chyť ho pod krkem, než může někoho zavolat.' if dustLogic.r358_condition():
            # a30 # r358
            jump dust_s44

        'Zlom mu krk, než stačí někoho přivolat.' if dustLogic.r3885_condition():
            # a31 # r3885
            jump dust_s41

        '"Tak je tedy přivolej. Rád bych se s nimi setkal."':
            # a32 # r3886
            $ dustLogic.r3886_action()
            jump dust_dispose


# s9 # say338
label dust_s9: # from 6.2 20.2
    nr '"Koho tu hledáš?"'

    menu:
        '"To není tvůj problém."':
            # a33 # r3922
            jump dust_s7

        '"Hledám Dhalla."' if dustLogic.r342_condition():
            # a34 # r342
            jump dust_s10

        '"Hledám Dhalla."' if dustLogic.r343_condition():
            # a35 # r343
            jump dust_s11

        '"Přišel jsem sem za Deionarrou."' if dustLogic.r33183_condition():
            # a36 # r33183
            jump dust_s13

        '"Přišel jsem sem za Deionarrou."' if dustLogic.r33185_condition():
            # a37 # r33185
            jump dust_s12

        '"Přišel jsem sem za Soegem."' if dustLogic.r33186_condition():
            # a38 # r33186
            jump dust_s15

        '"Přišel jsem sem za Soegem."' if dustLogic.r33187_condition():
            # a39 # r33187
            jump dust_s14

        'Lži: "Uh… Adahn. Pracuje tu ještě, nebo…?"' if dustLogic.r33189_condition():
            # a40 # r33189
            $ dustLogic.r33189_action()
            jump dust_s21

        'Lži: "Uh… Adahn. Pracuje tu ještě, nebo…?"' if dustLogic.r33190_condition():
            # a41 # r33190
            jump dust_s21

        '"Uh, nikdo. Přeřekl jsem se."':
            # a42 # r33191
            jump dust_s20


# s10 # say345
label dust_s10: # from 9.1
    nr '"Dhall je v přijímací místnosti v tomhle patře. Musím tě varovat… Dhall je hodně zaneprázdněný svými povinnostmi a není zrovna v nejlepší formě, co se týče zdraví. Jestli nemáš nic obchodního, neměl bys ho vyrušovat."'

    menu:
        '"Dobře. Díky za informaci."':
            # a43 # r347
            jump dust_s48


# s11 # say346
label dust_s11: # from 9.2
    nr '"Dhall je docela určitě v přijímací místnosti v druhém patře. Je hodně zaneprázdněný a není zrovna v nejlepší formě, co se týče zdraví. Jestli nemáš nic obchodního, neměl bys ho vyrušovat."'

    menu:
        '"Dobře. Díky za informaci."':
            # a44 # r348
            jump dust_s48


# s12 # say349
label dust_s12: # from 9.4 19.1
    nr '"Deionarra? Vím, že v prvním patře v pamětní síni je pohřbena nějaká žena. Mohla by to být ona?"'

    menu:
        '"Docela určitě. Díky."':
            # a45 # r352
            jump dust_s48


# s13 # say350
label dust_s13: # from 9.3
    nr '"Deionarra? Vím, že v prvním patře v pamětní síni je pohřbena nějaká žena. Mohla by to být ona?"'

    menu:
        '"Docela určitě. Díky."':
            # a46 # r353
            jump dust_s48


# s14 # say351
label dust_s14: # from 9.6
    nr '"Myslím, že Soego je u vstupní brány v prvním patře. Funguje jako průvodce v hodinách, kdy není takový provoz."'

    menu:
        '"Dobře. Díky."':
            # a47 # r354
            jump dust_s48


# s15 # say355
label dust_s15: # from 9.5
    nr '"Myslím, že Soego je u vstupní brány v prvním patře. Funguje jako průvodce v hodinách, kdy není takový provoz."'

    menu:
        '"Dobře. Díky."':
            # a48 # r356
            jump dust_s48


# s16 # say357
label dust_s16: # from 6.3 20.3
    nr '"Kdo byl pohřben? Snad se bohoslužby uskutečňují někde jinde v Márnici."'

    menu:
        '"Ty jsi mi nerozuměl… to chybný umístění, to jsem byl JÁ."':
            # a49 # r359
            jump dust_s8

        '"To by mohlo být. Kde se tedy bohoslužby uskutečňují?"':
            # a50 # r360
            jump dust_s17

        '"Můžeš mi ukázat cestu ven?"':
            # a51 # r361
            jump dust_s5


# s17 # say362
label dust_s17: # from 16.1
    nr '"Několik internačních místností lemuje obvod Márnice. Stáčí se podél zdí v prvním a druhém patře. Znáš jméno toho zemřelého?"'

    menu:
        '"Ne."':
            # a52 # r363
            jump dust_s18

        '"Ano."':
            # a53 # r364
            jump dust_s19


# s18 # say365
label dust_s18: # from 17.0
    nr '"Pak by sis to tedy měl ověřit u někoho z průvodců u vstupní brány. Můžou ti pomoct."'

    menu:
        '"Dobře. Děkuju."':
            # a54 # r366
            jump dust_dispose


# s19 # say367
label dust_s19: # from 17.1
    nr 'Spalovač čeká.'

    menu:
        '"Promiň… nemluvil jsem pravdu. Neznám jméno toho zemřelého."':
            # a55 # r369
            jump dust_s20

        '"Jmenuje se Deionarra."' if dustLogic.r370_condition():
            # a56 # r370
            jump dust_s12

        'Lež: "Jmenuju se… ehm, Adahn."' if dustLogic.r371_condition():
            # a57 # r371
            $ dustLogic.r371_action()
            jump dust_s21

        'Lež: "Jmenuju se… ehm, Adahn."' if dustLogic.r372_condition():
            # a58 # r372
            jump dust_s21

        'Nakloň se k němu, jakoby si mu chtěl něco pošeptat a pak ho chyť pod krkem.' if dustLogic.r373_condition():
            # a59 # r373
            jump dust_s44

        'Nakloň se k ní, jako bys jí chtěl něco pošeptat, pak ji chyť pod krkem.' if dustLogic.r1335_condition():
            # a60 # r1335
            jump dust_s45

        'Uteč.':
            # a61 # r1336
            jump dust_s2


# s20 # say374
label dust_s20: # from 9.9 19.0
    nr '"Aha. Takže, co tu vlastně děláš?"'

    menu:
        '"To se tě netýká."':
            # a62 # r375
            jump dust_s7

        '"Probudil jsem se na jedné z kamenných desek ve vaší preparační místnosti."':
            # a63 # r376
            jump dust_s8

        '"Někoho tu hledám."':
            # a64 # r377
            jump dust_s9

        '"Byl jsem sem umístěn, ale vypadá to, že někde se musela stát chyba."' if dustLogic.r378_condition():
            # a65 # r378
            jump dust_s16

        'Poptej se po tom.':
            # a66 # r379
            jump dust_s2


# s21 # say368
label dust_s21: # from 9.7 9.8 19.2 19.3
    nr '"To jméno mi nic neříká. Ověř si to u někoho z průvodců u vstupní brány… měli by být schopni nasměrovat tě lépe než já."'

    menu:
        '"Dobře. Udělám to. Sbohem."':
            # a67 # r380
            jump dust_s48


# s22 # say294
label dust_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'Bledý muž je oblečen do dlouhých tmavých šatů. Vychází z něj slabý zatuchlý zápach. Jeho vzezření je nevýrazné a zdá se, že je zaměstnán svými povinnostmi.'

    menu:
        '"Zdravím."':
            # a68 # r295
            jump dust_s23

        'Nechej ho být.':
            # a69 # r297
            jump dust_dispose


# s23 # say381
label dust_s23: # from 22.0
    nr 'Pomalu se otáčí a jeho oči přejíždí tvé šaty. "Zdravím, kolego."'

    menu:
        '"Kdo jsi?"':
            # a70 # r383
            jump dust_s24

        '"Co je tohle za místo?"':
            # a71 # r384
            jump dust_s25

        '"Měl bych nějaké otázky…"':
            # a72 # r391
            jump dust_s26

        'Nechej ho být.':
            # a73 # r392
            jump dust_dispose


# s24 # say393
label dust_s24: # from 23.0
    nr '"Spíš bych měl já otázku na tebe. Tvůj obličej jsem tu ještě neviděl. Kdo jsi?"'

    menu:
        'Lež: "Jmenuju se… ehm, Adahn."' if dustLogic.r450_condition():
            # a74 # r450
            $ dustLogic.r450_action()
            jump dust_s49

        'Lež: "Mé jméno je… ehm, Adahn."' if dustLogic.r1337_condition():
            # a75 # r1337
            jump dust_s49

        '"Jak se jmenuju tě nemusí zajímat. Já teď musím jít, takže sbohem."' if dustLogic.r3904_condition():
            # a76 # r3904
            jump dust_s47

        '"Jak se jmenuju tě nemusí zajímat. Já teď musím jít, takže sbohem."' if dustLogic.r3905_condition():
            # a77 # r3905
            jump dust_s46


# s25 # say394
label dust_s25: # from 23.1
    nr '"Tohle je Márnice…" Spalovač na tebe chvíli zírá, jakoby zažíval, co jsi mu právě řekl. "Ještě jednou, jakže se to jmenuješ?"'

    menu:
        'Lež: "Jmenuju se… ehm, Adahn."' if dustLogic.r399_condition():
            # a78 # r399
            $ dustLogic.r399_action()
            jump dust_s49

        'Lži: "Jmenuju se… uh, Adahn."' if dustLogic.r3906_condition():
            # a79 # r3906
            jump dust_s49

        '"Jak se jmenuju tě nemusí zajímat. Já teď musím jít, takže sbohem."' if dustLogic.r3907_condition():
            # a80 # r3907
            jump dust_s47

        '"Jak se jmenuju tě nemusí zajímat. Já teď musím jít, takže sbohem."' if dustLogic.r3908_condition():
            # a81 # r3908
            jump dust_s46


# s26 # say400
label dust_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'Spalovač trpělivě čeká na tvoje pokračování.'

    menu:
        '"Můžeš mi říct jak se odtud dostat pryč?"':
            # a82 # r401
            jump dust_s27

        '"Neznáš někoho, kdo se jmenuje Pharod?"':
            # a83 # r402
            jump dust_s28

        '"Hledám svůj deník. Neviděl si ho?"':
            # a84 # r403
            jump dust_s39

        '"Nevadí. Promiň, že jsem tě otravoval."':
            # a85 # r404
            jump dust_s48


# s27 # say405
label dust_s27: # from 26.0
    nr '"Můžeš jednoduše odejít vstupní branou. Je v prvním patře."'

    menu:
        '"Mám ještě další otázky…"':
            # a86 # r406
            jump dust_s26

        '"Díky. Sbohem."':
            # a87 # r407
            jump dust_s48


# s28 # say408
label dust_s28: # from 26.1
    nr '"To jméno…" Spalovač se na chvíli odmlčí. "To jméno *mi zní* povědomě… Myslím, že Sběrače toho jména před nedávnem odvolali. Dhall Scrivener by měl o něm vědět."'

    menu:
        '"Sběrač?"':
            # a88 # r409
            jump dust_s29

        '"Dhall?"':
            # a89 # r410
            jump dust_s30

        '"Měl bych ještě jiné otázky…"':
            # a90 # r411
            jump dust_s26

        '"Díky za tvůj čas. Sbohem."':
            # a91 # r425
            jump dust_s48


# s29 # say412
label dust_s29: # from 28.0
    nr '"Sběrači… sbírají ty, kdož zemřeli na ulicích Sigilu a přináší je do Márnice…" Spalovač se odmlčí, pak se zamračí. "Ty nejsi ze zdejšího okolí. Kdo jsi?"'

    menu:
        '"Jsem tady nový. Promiň mou neznalost."' if dustLogic.r413_condition():
            # a92 # r413
            jump dust_s50

        '"Jsem… tady nový. Snažím se… zvyknout si."' if dustLogic.r3918_condition():
            # a93 # r3918
            jump dust_s47

        '"No, ech… na co jméno? Ať je tvá víra pevná, uh, příteli zasvěcenče."' if dustLogic.r3919_condition():
            # a94 # r3919
            jump dust_s47

        '"Pokud mi nemůžeš pomoct, budu si muset najít někoho schopnějšího. Sbohem."' if dustLogic.r3920_condition():
            # a95 # r3920
            jump dust_s46


# s30 # say414
label dust_s30: # from 28.1
    nr '"Dhall patří k nejváženějším osobám našeho společenstva. Když o tom uvažuju, nikdo nepřemýšlel o přirozenosti a zaslouženosti Pravé smrti více než právě on. Rozdává nám spoustu moudrosti. Jestliže ho neznáš, doporučuji ti, aby sis s ním při nejbližší příležitosti promluvil. On už nebude moc dlouho pobývat ve stínu této existence."'

    menu:
        '"*On nebude dlouho pobývat ve stínu této existence?*"':
            # a96 # r415
            jump dust_s31

        '"Kde bych mohl najít Dhalla?"' if dustLogic.r416_condition():
            # a97 # r416
            jump dust_s32

        '"Kde bych mohl najít Dhalla?"' if dustLogic.r417_condition():
            # a98 # r417
            jump dust_s33

        '"Měl bych ještě jiné otázky…"':
            # a99 # r418
            jump dust_s26

        '"Díky za informaci. Promluvím si s ním."':
            # a100 # r33204
            jump dust_s48


# s31 # say419
label dust_s31: # from 30.0 32.0 33.0
    nr 'Přikyvuje. "Dhall je nemocný. Podle githzeraiských norem je už hodně starý. Při nemoci, kterou pochytil, bude nepochybně následovat smrt. A on je vskutku šťastný."'

    menu:
        '"Githzeraiských norem?"':
            # a101 # r420
            jump dust_s34

        '"Co je to *githzerai?*"':
            # a102 # r421
            jump dust_s35

        '"Šťastný?"':
            # a103 # r422
            jump dust_s36

        '"Aha. Měl bych ještě jiné otázky…"':
            # a104 # r423
            jump dust_s26

        '"Díky za tvůj čas. Teď musím jít."':
            # a105 # r424
            jump dust_s48


# s32 # say427
label dust_s32: # from 30.1
    nr '"Dhall je docela určitě v přijímací místnosti v severozápadním rohu tohoto patra. Ale musím tě varovat… je docela zaneprázdněn… čas, který nespotřebují jeho povinnosti, velkou měrou vyplýtvá jeho nemoc."'

    menu:
        '"Dhall je nemocný?"':
            # a106 # r428
            jump dust_s31

        '"Díky za tvůj čas. Teď už musím jít. Sbohem."':
            # a107 # r429
            jump dust_s48


# s33 # say426
label dust_s33: # from 30.2
    nr '"Dhall je docela určitě v přijímací místnosti v druhém patře. Být tebou, moc bych ho nezdržoval, je docela zaneprázdněn… čas, který nespotřebují jeho povinnosti, velkou měrou vyplýtvá jeho nemoc."'

    menu:
        '"Dhall je nemocný?"':
            # a108 # r430
            jump dust_s31

        '"Díky za tvůj čas. Teď už musím jít. Sbohem."':
            # a109 # r431
            jump dust_s48


# s34 # say432
label dust_s34: # from 31.0
    nr '"Ano, githzeraiové mají mnohem delší život než obyčejní lidé."'

    menu:
        '"Kdo je to *githzerai?*"':
            # a110 # r433
            jump dust_s35

        '"Jakto, že je Dhallova smrt štěstím? On není snad oblíbený?"':
            # a111 # r437
            jump dust_s36

        '"Oh. Měl bych ještě jiné otázky…"':
            # a112 # r438
            jump dust_s26

        '"Díky za tvůj čas. Sbohem."':
            # a113 # r440
            jump dust_s48


# s35 # say435
label dust_s35: # from 31.1 34.0
    nr '"Githzeraiové jsou…" Spalovač se odmlčí, zamračí se a překvapeně na tebe civí. "Ty nejsi ze zdejšího okolí. Kdo jsi?"'

    menu:
        '"Jsem tady nový. Odpusť mi mou neznalost."' if dustLogic.r436_condition():
            # a114 # r436
            jump dust_s50

        '"Jsem… tady nový. Snažím se… zvyknout si."' if dustLogic.r3909_condition():
            # a115 # r3909
            jump dust_s47

        '"No, ech… na co jméno? Ať je tvá víra pevná, uh, příteli zasvěcenče."' if dustLogic.r3910_condition():
            # a116 # r3910
            jump dust_s47

        '"Pokud mi nemůžeš pomoct, budu si muset najít někoho schopnějšího. Sbohem."' if dustLogic.r3911_condition():
            # a117 # r3911
            jump dust_s46


# s36 # say439
label dust_s36: # from 31.2 34.1
    nr '"Je šťastný, že konečně dosáhne Pravé smrti. Už nemusí žít ve stínu této existence."'

    menu:
        '"A… to je dobrá věc?"':
            # a118 # r441
            jump dust_s37

        '"Aha. Velmi šťastné, vskutku. Měl bych ještě jiné otázky…"':
            # a119 # r442
            jump dust_s26

        '"Aha. Dobře, teď už tě musím opustit. Sbohem."':
            # a120 # r443
            jump dust_s48


# s37 # say444
label dust_s37: # from 36.0
    nr 'Spalovač přikyvuje. "Ano." Zamračí se a pak si tě pozorně prohlíží. "Ty nejsi ze zdejšího okolí. Kdo jsi?"'

    menu:
        '"Jsem tady nový. Odpusť mi mou neznalost."' if dustLogic.r445_condition():
            # a121 # r445
            jump dust_s50

        '"Jsem… tu nový. Já… pokouším se získat nějaké zkušenosti."' if dustLogic.r446_condition():
            # a122 # r446
            jump dust_s47

        '"No, ech… na co jméno? Ať je tvá víra pevná, uh, příteli zasvěcenče."' if dustLogic.r3912_condition():
            # a123 # r3912
            jump dust_s47

        '"Pokud mi nemůžeš pomoct, budu si muset najít někoho schopnějšího. Sbohem."' if dustLogic.r3913_condition():
            # a124 # r3913
            jump dust_s46


# s38 # say447
label dust_s38: # -
    nr '"Ty nejsi jedním z nás, že ne? Co tu děláš? Jsi členem Anarchistů? Nebo špeh jiného společenství? Stráže! Stráže!"'

    menu:
        '"Sakra!"':
            # a125 # r448
            $ dustLogic.r448_action()
            jump dust_dispose

        '"Shhhh! Nemůžu ti odpovědět když křičíš!"' if dustLogic.r449_condition():
            # a126 # r449
            $ dustLogic.r449_action()
            jump dust_dispose

        '"Shhhh! Nemůžu ti v tom křiku odpovědět!"' if dustLogic.r1339_condition():
            # a127 # r1339
            $ dustLogic.r1339_action()
            jump dust_dispose


# s39 # say398
label dust_s39: # from 26.2
    nr '"Deník? Žádný jsem neviděl."'

    menu:
        '"Měl bych ještě jiné otázky…"':
            # a128 # r451
            jump dust_s26

        '"Teď už musím jít. Sbohem."':
            # a129 # r452
            jump dust_s48


# s40 # say1419
label dust_s40: # -
    nr 'Bledý muž je oblečen do dlouhých tmavých šatů. Vychází z něj slabý zatuchlý zápach. Jeho vzezření je nevýrazné a zdá se, že je zaměstnán svými povinnostmi.'

    menu:
        '"Zdravím."' if dustLogic.r1420_condition():
            # a130 # r1420
            jump morte_s61  # EXTERN

        '"Zdravím."' if dustLogic.r1421_condition():
            # a131 # r1421
            jump morte_s63  # EXTERN

        '"Zdravím."' if dustLogic.r1422_condition():
            # a132 # r1422
            jump dust_s4

        '"Zdravím."' if dustLogic.r1423_condition():
            # a133 # r1423
            jump dust_s4

        'Nechej ho na pokoji.':
            # a134 # r1424
            jump dust_dispose


# s41 # say1425
label dust_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr 'Dřív, než Spalovač stačí utrousit nějaké slovo, pevně ho chytíš za spánky a prudce mu trhneš hlavou.'

    menu:
        '"Nemůžu tě nechat varovat tvé přátele…"':
            # a135 # r1426
            $ dustLogic.r1426_action()
            jump dust_s42


# s42 # say1427
label dust_s42: # from 41.0 45.0
    nr 'Ozve se *křupnutí* a Spalovač padá nehybně do tvé náruče.'

    menu:
        '"Radši ty než já, Spalovači."' if dustLogic.r1428_condition():
            # a136 # r1428
            $ dustLogic.r1428_action()
            jump dust_s43

        '"Radši ty než já, Spalovači."' if dustLogic.r1429_condition():
            # a137 # r1429
            $ dustLogic.r1429_action()
            jump dust_dispose


# s43 # say1430
label dust_s43: # from 42.0
    nr 'K svému překvapení zjišťuješ, žes jednal naprosto instinktivně, jako bys to už dělal mnohokrát předtím… spolu s touto myšlenkou se ti vrací útržky paměti, ale nejsou dost silné na to, aby se úplně vynořily na povrch.'

    menu:
        'Nechej tělo být, jdi dál.':
            # a138 # r3882
            $ dustLogic.r3882_action()
            jump dust_dispose


# s44 # say3883
label dust_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr 'Nejsi dost rychlý a Spalovač tvému skoku uhnul. Ukročil zpátky a rychle třikrát zatleskal. Jako odpověď začaly v celé márnici zvonit zvony.'

    menu:
        '"Dobrá tedy…"':
            # a139 # r3884
            $ dustLogic.r3884_action()
            jump dust_dispose


# s45 # say3889
label dust_s45: # from 19.5
    nr 'Když ses naklonil, abys mu mohl něco „pošeptat“ do ouška, Spalovač se taky naklonil. Když se dostal na dosah, popadl jsi ho za spánek a prudce zakroutil jeho hlavou doleva.'

    menu:
        '"Nemůžu ti dovolit spustit poplach…"':
            # a140 # r3890
            $ dustLogic.r3890_action()
            jump dust_s42


# s46 # say3891
label dust_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'Spalovač vypadá podezíravě. Vypadá, jako kdyby něco chtěl říci, pak lehce zakroutí hlavou a vrátí se zpátky ke svým povinnostem.'

    menu:
        'Odejdi pryč.':
            # a141 # r3892
            jump dust_dispose


# s47 # say3893
label dust_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'Spalovač tě pozorně sleduje. "Ty nejsi jeden z nás. Co tady děláš? Jsi člen Anarchistů? Nebo špión jiné frakce? Tohle vypadá na záležitost pro stráže…"'

    menu:
        'Zlom mu krk, než stačí někoho přivolat.' if dustLogic.r3914_condition():
            # a142 # r3914
            jump dust_s44

        'Zlom mu krk, než stačí někoho přivolat.' if dustLogic.r3915_condition():
            # a143 # r3915
            jump dust_s41

        '"Ne, ne… tak ne… Já, ech, já nejsem špión… hele, probudil jsem se na jednom z kamenů tady a…"':
            # a144 # r3916
            jump dust_s2

        'Odejdi. Rychle.':
            # a145 # r3917
            jump dust_s2


# s48 # say3894
label dust_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 21.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'Spalovač přikývl a vrátil se ke svým povinnostem.'

    menu:
        'Odejdi pryč.':
            # a146 # r3895
            jump dust_dispose


# s49 # say3896
label dust_s49: # from 24.0 24.1 25.0 25.1
    nr 'Spalovač se zamračil. "To jméno neznám."'

    menu:
        '"Jsem nový zasvěcený. Odpusť mi mou ignoranci."' if dustLogic.r3898_condition():
            # a147 # r3898
            jump dust_s50

        '"Jsem… tady nový. Snažím se… naučit se rutinu.."' if dustLogic.r3899_condition():
            # a148 # r3899
            jump dust_s47

        '"No, ech… na co jméno? Ať je tvá víra pevná, uh, příteli zasvěcenče."' if dustLogic.r3900_condition():
            # a149 # r3900
            jump dust_s47

        '"Pokud mi nemůžeš pomoct, budu si muset najít někoho schopnějšího. Sbohem."' if dustLogic.r3901_condition():
            # a150 # r3901
            jump dust_s46


# s50 # say3897
label dust_s50: # from 29.0 35.0 37.0 49.0
    nr 'Spalovač se dál mračí, ale přikývne. "Velmi dobře. Jak ti mohu pomoci, zasvěcenče?"'

    menu:
        '"Mám nějaké otázky…"':
            # a151 # r3902
            jump dust_s26

        '"Dneska nic. Sbohem."':
            # a152 # r3903
            jump dust_s46


# s51 # say66674
label dust_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'Spalovač tě sleduje s kamenným výrazem na tváři. "Ztratil ses?"'

    menu:
        '"Ne, jsem členem společenstva, jenom si prohlížím Márnici."' if dustLogic.r66675_condition():
            # a153 # r66675
            jump dust_s52

        '"Ano."' if dustLogic.r66676_condition():
            # a154 # r66676
            jump dust_s5

        '"Ne."' if dustLogic.r66677_condition():
            # a155 # r66677
            jump dust_s6

        '"Ne, neztratil jsem se. Mám pár otázek…"' if dustLogic.r66678_condition():
            # a156 # r66678
            jump dust_s6

        '"Sbohem."' if dustLogic.r66679_condition():
            # a157 # r66679
            jump dust_s2


# s52 # say66681
label dust_s52: # from 51.0
    nr 'Spalovač tě chvíli sleduje, a nakonec přikývne. "Dobrá tedy. Pokud budeš s něčím potřebovat pomoct, dej mi vědět."'

    menu:
        '"Udělám to tak. Sbohem."':
            # a158 # r66682
            jump dust_dispose
