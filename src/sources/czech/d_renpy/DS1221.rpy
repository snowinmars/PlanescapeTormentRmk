init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s1221_logic import S1221Logic
    s1221Logic = S1221Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS1221.DLG
# ###


# s0 # say35306
label s1221_s0: # - # IF ~  True()
    nr 'Oživený kostlivec příšerně páchne, jako by ho někdo stáhl a vypreparoval teprve před nedávnem. Jeho čelist a hlavní klouby drží pohromadě pevnými koženými pásy. Kostlivec má na sobě hrubé šaty. Do jeho čela je vytesáno číslo "1221".{#s1221_s0_}'

    menu:
        '"Promiň, neviděl jsi tady někde chodit nějaké kostlivce?"{#s1221_s0_r35307}' if s1221Logic.r35307_condition():
            # a0 # r35307
            $ s1221Logic.r35307_action()
            jump s1221_s1

        '"Promiň, neviděl jsi tady někde chodit nějaké kostlivce?"{#s1221_s0_r35330}' if s1221Logic.r35330_condition():
            # a1 # r35330
            jump s1221_s1

        '"Musím se tě zeptat: Proč ty šaty? Víš, myslím, že nemáš nic, za co by ses musel stydět."{#s1221_s0_r35331}' if s1221Logic.r35331_condition():
            # a2 # r35331
            $ s1221Logic.r35331_action()
            jump s1221_s1

        '"Musím se tě zeptat: Proč ty šaty? Víš, myslím, že nemáš nic, za co by ses musel stydět."{#s1221_s0_r35332}' if s1221Logic.r35332_condition():
            # a3 # r35332
            jump s1221_s1

        'Použij na kostlivce svou schopnost Kosti-vyprávějte.{#s1221_s0_r35333}' if s1221Logic.r35333_condition():
            # a4 # r35333
            jump s1221_s2

        'Pozorně prozkoumej kostlivce.{#s1221_s0_r35338}':
            # a5 # r35338
            $ s1221Logic.r35338_action()
            jump s1221_s3

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s1221_s0_r35371}' if s1221Logic.r35371_condition():
            # a6 # r35371
            $ s1221Logic.r35371_action()
            jump morte_s376  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s1221_s0_r35372}' if s1221Logic.r35372_condition():
            # a7 # r35372
            jump s1221_s4

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s1221_s0_r35373}' if s1221Logic.r35373_condition():
            # a8 # r35373
            jump s1221_s5

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s1221_s0_r35374}' if s1221Logic.r35374_condition():
            # a9 # r35374
            jump s1221_s6

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s1221_s0_r35375}' if s1221Logic.r35375_condition():
            # a10 # r35375
            jump s1221_s4

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s1221_s0_r35376}' if s1221Logic.r35376_condition():
            # a11 # r35376
            jump s1221_s5

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s1221_s0_r35377}' if s1221Logic.r35377_condition():
            # a12 # r35377
            jump s1221_s6

        '"Co tahle kostra, Morte? Bude stačit jako tělo?"{#s1221_s0_r35378}' if s1221Logic.r35378_condition():
            # a13 # r35378
            jump morte_s372  # EXTERN

        'Nechej kostlivce být.{#s1221_s0_r35379}' if s1221Logic.r35379_condition():
            # a14 # r35379
            $ s1221Logic.r35379_action()
            jump morte_s370  # EXTERN

        'Nechej kostlivce být.{#s1221_s0_r35380}' if s1221Logic.r35380_condition():
            # a15 # r35380
            jump s1221_dispose

        'Nechej kostlivce být.{#s1221_s0_r35381}' if s1221Logic.r35381_condition():
            # a16 # r35381
            jump s1221_dispose


# s1 # say35308
label s1221_s1: # from 0.0 0.1 0.2 0.3
    nr 'Kostlivec neodpovídá.{#s1221_s1_}'

    menu:
        '"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."{#s1221_s1_r35309}' if s1221Logic.r35309_condition():
            # a17 # r35309
            $ s1221Logic.r35309_action()
            jump morte_s370  # EXTERN

        '"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."{#s1221_s1_r35328}' if s1221Logic.r35328_condition():
            # a18 # r35328
            jump s1221_dispose

        '"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."{#s1221_s1_r35329}' if s1221Logic.r35329_condition():
            # a19 # r35329
            jump s1221_dispose


# s2 # say35334
label s1221_s2: # from 0.4
    nr 'Kostlivec neodpovídá. Asi už se dostal příliš daleko, aby byl ještě schopný odpovídat na tvé otázky.{#s1221_s2_}'

    menu:
        'Nechej kostlivce být.{#s1221_s2_r35335}' if s1221Logic.r35335_condition():
            # a20 # r35335
            $ s1221Logic.r35335_action()
            jump morte_s370  # EXTERN

        'Nechej kostlivce být.{#s1221_s2_r35336}' if s1221Logic.r35336_condition():
            # a21 # r35336
            jump s1221_dispose

        'Nechej kostlivce být.{#s1221_s2_r35337}' if s1221Logic.r35337_condition():
            # a22 # r35337
            jump s1221_dispose


# s3 # say35339
label s1221_s3: # from 0.5
    nr 'Někdo si dal práci a spojil kosti tohoto kostlivce koženými pásky, omotanými kolem těla tak, že připomínají svaly a šlachy. Pásky jsou připevněné na kovových svorkách, vražených do kloubů kostlivce. Kostlivec vypadá, že už si svoje odsloužil: Mnoho kostí je oštípáno a početné fraktury jsou slepeny zapáchajícím lepidlem.{#s1221_s3_}'

    menu:
        'Zkus kostlivci vytáhnout svorky z kloubů.{#s1221_s3_r35340}' if s1221Logic.r35340_condition():
            # a23 # r35340
            $ s1221Logic.r35340_action()
            jump morte_s376  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s1221_s3_r35362}' if s1221Logic.r35362_condition():
            # a24 # r35362
            jump s1221_s4

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s1221_s3_r35363}' if s1221Logic.r35363_condition():
            # a25 # r35363
            jump s1221_s5

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s1221_s3_r35364}' if s1221Logic.r35364_condition():
            # a26 # r35364
            jump s1221_s6

        '"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"{#s1221_s3_r35365}' if s1221Logic.r35365_condition():
            # a27 # r35365
            jump s1221_s4

        '"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"{#s1221_s3_r35366}' if s1221Logic.r35366_condition():
            # a28 # r35366
            jump s1221_s5

        '"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"{#s1221_s3_r35367}' if s1221Logic.r35367_condition():
            # a29 # r35367
            jump s1221_s6

        'Nechej kostlivce být.{#s1221_s3_r35368}' if s1221Logic.r35368_condition():
            # a30 # r35368
            $ s1221Logic.r35368_action()
            jump morte_s370  # EXTERN

        'Nechej kostlivce být.{#s1221_s3_r35369}' if s1221Logic.r35369_condition():
            # a31 # r35369
            jump s1221_dispose

        'Nechej kostlivce být.{#s1221_s3_r35370}' if s1221Logic.r35370_condition():
            # a32 # r35370
            jump s1221_dispose


# s4 # say35345
label s1221_s4: # from 0.7 0.10 3.1 3.4
    nr 'Zaškubal jsi železnými svorkami, ale nemáš dost síly na to, abys je vyrval. Jsou pořádně upevněné.{#s1221_s4_}'

    menu:
        '"Kdybych měl správný nástroj, dokázal bych je vytáhnout… hmmm. Vrátím se, Kostro."{#s1221_s4_r35346}' if s1221Logic.r35346_condition():
            # a33 # r35346
            $ s1221Logic.r35346_action()
            jump morte_s370  # EXTERN

        '"Kdybych měl správný nástroj, dokázal bych je vytáhnout… hmmm. Vrátím se, Kostro."{#s1221_s4_r35347}' if s1221Logic.r35347_condition():
            # a34 # r35347
            jump s1221_dispose

        '"Kdybych měl správný nástroj, dokázal bych je vytáhnout… hmmm. Vrátím se, Kostro."{#s1221_s4_r35348}' if s1221Logic.r35348_condition():
            # a35 # r35348
            jump s1221_dispose

        'Nechej kostlivce být.{#s1221_s4_r35349}' if s1221Logic.r35349_condition():
            # a36 # r35349
            $ s1221Logic.r35349_action()
            jump morte_s370  # EXTERN

        'Nechej kostlivce být.{#s1221_s4_r35350}' if s1221Logic.r35350_condition():
            # a37 # r35350
            jump s1221_dispose

        'Nechej kostlivce být.{#s1221_s4_r35351}' if s1221Logic.r35351_condition():
            # a38 # r35351
            jump s1221_dispose


# s5 # say35353
label s1221_s5: # from 0.8 0.11 3.2 3.5
    nr 'Zabral jsi veškerou svou silou. Po chvíli námahy jsi vyrval svorky z kostlivcových kloubů. Kostlivec se rozpadl, některé z kostí sebou stále škubají.{#s1221_s5_}'

    menu:
        '"Promiň, Kostro…"{#s1221_s5_r35354}':
            # a39 # r35354
            $ s1221Logic.r35354_action()
            jump s1221_dispose


# s6 # say35356
label s1221_s6: # from 0.9 0.12 3.3 3.6
    nr 'Pomocí svého páčidla jsi vyrval svorky z kostlivcových kloubů. Kostlivec se rozpadl, některé z kostí sebou stále škubají.{#s1221_s6_}'

    menu:
        '"Promiň, Kostro…"{#s1221_s6_r35357}':
            # a40 # r35357
            $ s1221Logic.r35357_action()
            jump s1221_dispose


# s7 # say35382
label s1221_s7: # - # IF ~  False()
    nr 'Kostlivec neodpovídá. Asi už se dostal příliš daleko, aby byl ještě schopný odpovídat na tvé otázky.{#s1221_s7_}'

    menu:
