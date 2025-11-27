init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s748_logic import S748Logic
    s748Logic = S748Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS748.DLG
# ###


# s0 # say35383
label s748_s0: # - # IF ~  True()
    nr 'Tento kostlivec, číslo "748," podle čísla vytesaného do čela, je zvláštní pouze v tom, že několik jeho zubů vypadá falešně - někdo je udělal z narudle hnědého kamene. Nemají ale žádnou hodnotu, jinak by je preparátoři určitě vytáhli.{#s748_s0_}'

    menu:
        '"Promiň, neviděl jsi tady někde chodit nějaké kostlivce?"{#s748_s0_r35384}' if s748Logic.r35384_condition():
            # a0 # r35384
            $ s748Logic.r35384_action()
            jump s748_s1

        '"Promiň, neviděl jsi tady někde chodit nějaké kostlivce?"{#s748_s0_r35407}' if s748Logic.r35407_condition():
            # a1 # r35407
            jump s748_s1

        '"Musím se tě zeptat: Proč ty šaty? Víš, myslím, že nemáš nic, za co by ses musel stydět."{#s748_s0_r35408}' if s748Logic.r35408_condition():
            # a2 # r35408
            $ s748Logic.r35408_action()
            jump s748_s1

        '"Musím se tě zeptat: Proč ty šaty? Víš, myslím, že nemáš nic, za co by ses musel stydět."{#s748_s0_r35409}' if s748Logic.r35409_condition():
            # a3 # r35409
            jump s748_s1

        'Použij na kostlivce svou schopnost Kosti-vyprávějte.{#s748_s0_r35410}' if s748Logic.r35410_condition():
            # a4 # r35410
            jump s748_s2

        'Pozorně prozkoumej kostlivce.{#s748_s0_r35415}':
            # a5 # r35415
            $ s748Logic.r35415_action()
            jump s748_s3

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s748_s0_r35448}' if s748Logic.r35448_condition():
            # a6 # r35448
            $ s748Logic.r35448_action()
            jump morte_s384  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s748_s0_r35449}' if s748Logic.r35449_condition():
            # a7 # r35449
            jump s748_s4

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s748_s0_r35450}' if s748Logic.r35450_condition():
            # a8 # r35450
            jump s748_s5

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s748_s0_r35451}' if s748Logic.r35451_condition():
            # a9 # r35451
            jump s748_s6

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s748_s0_r35452}' if s748Logic.r35452_condition():
            # a10 # r35452
            jump s748_s4

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s748_s0_r35453}' if s748Logic.r35453_condition():
            # a11 # r35453
            jump s748_s5

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s748_s0_r35454}' if s748Logic.r35454_condition():
            # a12 # r35454
            jump s748_s6

        '"Co tahle kostra, Morte? Bude stačit jako tělo?"{#s748_s0_r35455}' if s748Logic.r35455_condition():
            # a13 # r35455
            jump morte_s380  # EXTERN

        'Nechej kostlivce být.{#s748_s0_r35456}' if s748Logic.r35456_condition():
            # a14 # r35456
            $ s748Logic.r35456_action()
            jump morte_s378  # EXTERN

        'Nechej kostlivce být.{#s748_s0_r35457}' if s748Logic.r35457_condition():
            # a15 # r35457
            jump s748_dispose

        'Nechej kostlivce být.{#s748_s0_r35458}' if s748Logic.r35458_condition():
            # a16 # r35458
            jump s748_dispose


# s1 # say35385
label s748_s1: # from 0.0 0.1 0.2 0.3
    nr 'Kostlivec neodpovídá.{#s748_s1_}'

    menu:
        '"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."{#s748_s1_r35386}' if s748Logic.r35386_condition():
            # a17 # r35386
            $ s748Logic.r35386_action()
            jump morte_s378  # EXTERN

        '"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."{#s748_s1_r35405}' if s748Logic.r35405_condition():
            # a18 # r35405
            jump s748_dispose

        '"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."{#s748_s1_r35406}' if s748Logic.r35406_condition():
            # a19 # r35406
            jump s748_dispose


# s2 # say35411
label s748_s2: # from 0.4
    nr 'Kostlivec neodpovídá. Asi už se dostal příliš daleko, aby byl ještě schopný odpovídat na tvé otázky.{#s748_s2_}'

    menu:
        'Nechej kostlivce být.{#s748_s2_r35412}' if s748Logic.r35412_condition():
            # a20 # r35412
            $ s748Logic.r35412_action()
            jump morte_s378  # EXTERN

        'Nechej kostlivce být.{#s748_s2_r35413}' if s748Logic.r35413_condition():
            # a21 # r35413
            jump s748_dispose

        'Nechej kostlivce být.{#s748_s2_r35414}' if s748Logic.r35414_condition():
            # a22 # r35414
            jump s748_dispose


# s3 # say35416
label s748_s3: # from 0.5
    nr 'Někdo si dal práci a spojil kosti tohoto kostlivce koženými pásky, omotanými kolem těla tak, že připomínají svaly a šlachy. Pásky jsou připevněné na kovových svorkách, vražených do kloubů kostlivce. Kostlivec vypadá, že už si svoje odsloužil: Mnoho kostí je oštípáno a početné fraktury jsou slepeny zapáchajícím lepidlem.{#s748_s3_}'

    menu:
        'Zkus kostlivci vytáhnout svorky z kloubů.{#s748_s3_r35417}' if s748Logic.r35417_condition():
            # a23 # r35417
            $ s748Logic.r35417_action()
            jump morte_s384  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s748_s3_r35439}' if s748Logic.r35439_condition():
            # a24 # r35439
            jump s748_s4

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s748_s3_r35440}' if s748Logic.r35440_condition():
            # a25 # r35440
            jump s748_s5

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s748_s3_r35441}' if s748Logic.r35441_condition():
            # a26 # r35441
            jump s748_s6

        '"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"{#s748_s3_r35442}' if s748Logic.r35442_condition():
            # a27 # r35442
            jump s748_s4

        '"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"{#s748_s3_r35443}' if s748Logic.r35443_condition():
            # a28 # r35443
            jump s748_s5

        '"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"{#s748_s3_r35444}' if s748Logic.r35444_condition():
            # a29 # r35444
            jump s748_s6

        'Nechej kostlivce být.{#s748_s3_r35445}' if s748Logic.r35445_condition():
            # a30 # r35445
            $ s748Logic.r35445_action()
            jump morte_s378  # EXTERN

        'Nechej kostlivce být.{#s748_s3_r35446}' if s748Logic.r35446_condition():
            # a31 # r35446
            jump s748_dispose

        'Nechej kostlivce být.{#s748_s3_r35447}' if s748Logic.r35447_condition():
            # a32 # r35447
            jump s748_dispose


# s4 # say35422
label s748_s4: # from 0.7 0.10 3.1 3.4
    nr 'Zaškubal jsi železnými svorkami, ale nemáš dost síly na to, abys je vyrval. Jsou pořádně upevněné.{#s748_s4_}'

    menu:
        '"Kdybych měl správný nástroj, dokázal bych je vytáhnout… hmmm. Vrátím se, Kostro."{#s748_s4_r35423}' if s748Logic.r35423_condition():
            # a33 # r35423
            $ s748Logic.r35423_action()
            jump morte_s378  # EXTERN

        '"Kdybych měl správný nástroj, dokázal bych je vytáhnout… hmmm. Vrátím se, Kostro."{#s748_s4_r35424}' if s748Logic.r35424_condition():
            # a34 # r35424
            jump s748_dispose

        '"Kdybych měl správný nástroj, dokázal bych je vytáhnout… hmmm. Vrátím se, Kostro."{#s748_s4_r35425}' if s748Logic.r35425_condition():
            # a35 # r35425
            jump s748_dispose

        'Nechej kostlivce být.{#s748_s4_r35426}' if s748Logic.r35426_condition():
            # a36 # r35426
            $ s748Logic.r35426_action()
            jump morte_s378  # EXTERN

        'Nechej kostlivce být.{#s748_s4_r35427}' if s748Logic.r35427_condition():
            # a37 # r35427
            jump s748_dispose

        'Nechej kostlivce být.{#s748_s4_r35428}' if s748Logic.r35428_condition():
            # a38 # r35428
            jump s748_dispose


# s5 # say35430
label s748_s5: # from 0.8 0.11 3.2 3.5
    nr 'Zabral jsi veškerou svou silou. Po chvíli námahy jsi vyrval svorky z kostlivcových kloubů. Kostlivec se rozpadl, některé z kostí sebou stále škubají.{#s748_s5_}'

    menu:
        '"Promiň, Kostro…"{#s748_s5_r35431}':
            # a39 # r35431
            $ s748Logic.r35431_action()
            jump s748_dispose


# s6 # say35433
label s748_s6: # from 0.9 0.12 3.3 3.6
    nr 'Pomocí svého páčidla jsi vyrval svorky z kostlivcových kloubů. Kostlivec se rozpadl, některé z kostí sebou stále škubají.{#s748_s6_}'

    menu:
        '"Promiň, Kostro…"{#s748_s6_r35434}':
            # a40 # r35434
            $ s748Logic.r35434_action()
            jump s748_dispose


# s7 # say35459
label s748_s7: # - # IF ~  False()
    nr 'Kostlivec neodpovídá. Asi už se dostal příliš daleko, aby byl ještě schopný odpovídat na tvé otázky.{#s748_s7_}'

    menu:
