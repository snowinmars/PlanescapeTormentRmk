init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s996_logic import S996Logic
    s996Logic = S996Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS996.DLG
# ###


# s0 # say35460
label s996_s0: # - # IF ~  True()
    nr 'Kostlivec vypadá obzvláště staře, kožené pásy, které ho drží pohromadě jsou popraskané. Do jeho čela někdo pečlivě vyryl slovo "POKÁNÍ". Mnohem horší rytec později přidal na oba spánky číslo "996".'

    menu:
        '"Promiň, neviděl jsi tady někde chodit nějaké kostlivce?"' if s996Logic.r35461_condition():
            # a0 # r35461
            $ s996Logic.r35461_action()
            jump s996_s1

        '"Promiň, neviděl jsi tady někde chodit nějaké kostlivce?"' if s996Logic.r35484_condition():
            # a1 # r35484
            jump s996_s1

        '"Musím se tě zeptat: Proč ty šaty? Víš, myslím, že nemáš nic, za co by ses musel stydět."' if s996Logic.r35485_condition():
            # a2 # r35485
            $ s996Logic.r35485_action()
            jump s996_s1

        '"Musím se tě zeptat: Proč ty šaty? Víš, myslím, že nemáš nic, za co by ses musel stydět."' if s996Logic.r35486_condition():
            # a3 # r35486
            jump s996_s1

        'Použij na kostlivce svou schopnost Kosti-vyprávějte.' if s996Logic.r35487_condition():
            # a4 # r35487
            jump s996_s2

        'Pozorně prozkoumej kostlivce.':
            # a5 # r35492
            $ s996Logic.r35492_action()
            jump s996_s3

        'Zkus kostlivci vytáhnout svorky z kloubů.' if s996Logic.r35525_condition():
            # a6 # r35525
            $ s996Logic.r35525_action()
            jump morte_s392  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.' if s996Logic.r35526_condition():
            # a7 # r35526
            jump s996_s4

        'Zkus kostlivci vytáhnout svorky z kloubů.' if s996Logic.r35527_condition():
            # a8 # r35527
            jump s996_s5

        'Zkus kostlivci vytáhnout svorky z kloubů.' if s996Logic.r35528_condition():
            # a9 # r35528
            jump s996_s6

        'Zkus kostlivci vytáhnout svorky z kloubů.' if s996Logic.r35529_condition():
            # a10 # r35529
            jump s996_s4

        'Zkus kostlivci vytáhnout svorky z kloubů.' if s996Logic.r35530_condition():
            # a11 # r35530
            jump s996_s5

        'Zkus kostlivci vytáhnout svorky z kloubů.' if s996Logic.r35531_condition():
            # a12 # r35531
            jump s996_s6

        '"Co tahle kostra, Morte? Bude stačit jako tělo?"' if s996Logic.r35532_condition():
            # a13 # r35532
            jump morte_s388  # EXTERN

        'Nechej kostlivce být.' if s996Logic.r35533_condition():
            # a14 # r35533
            $ s996Logic.r35533_action()
            jump morte_s386  # EXTERN

        'Nechej kostlivce být.' if s996Logic.r35534_condition():
            # a15 # r35534
            jump s996_dispose

        'Nechej kostlivce být.' if s996Logic.r35535_condition():
            # a16 # r35535
            jump s996_dispose


# s1 # say35462
label s996_s1: # from 0.0 0.1 0.2 0.3
    nr 'Kostlivec neodpovídá.'

    menu:
        '"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."' if s996Logic.r35463_condition():
            # a17 # r35463
            $ s996Logic.r35463_action()
            jump morte_s386  # EXTERN

        '"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."' if s996Logic.r35482_condition():
            # a18 # r35482
            jump s996_dispose

        '"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."' if s996Logic.r35483_condition():
            # a19 # r35483
            jump s996_dispose


# s2 # say35488
label s996_s2: # from 0.4
    nr 'Kostlivec neodpovídá. Asi už se dostal příliš daleko, aby byl ještě schopný odpovídat na tvé otázky.'

    menu:
        'Nechej kostlivce být.' if s996Logic.r35489_condition():
            # a20 # r35489
            $ s996Logic.r35489_action()
            jump morte_s386  # EXTERN

        'Nechej kostlivce být.' if s996Logic.r35490_condition():
            # a21 # r35490
            jump s996_dispose

        'Nechej kostlivce být.' if s996Logic.r35491_condition():
            # a22 # r35491
            jump s996_dispose


# s3 # say35493
label s996_s3: # from 0.5
    nr 'Někdo si dal práci a spojil kosti tohoto kostlivce koženými pásky, omotanými kolem těla tak, že připomínají svaly a šlachy. Pásky jsou připevněné na kovových svorkách, vražených do kloubů kostlivce. Kostlivec vypadá, že už si svoje odsloužil: Mnoho kostí je oštípáno a početné fraktury jsou slepeny zapáchajícím lepidlem.'

    menu:
        'Zkus kostlivci vytáhnout svorky z kloubů.' if s996Logic.r35494_condition():
            # a23 # r35494
            $ s996Logic.r35494_action()
            jump morte_s392  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.' if s996Logic.r35516_condition():
            # a24 # r35516
            jump s996_s4

        'Zkus kostlivci vytáhnout svorky z kloubů.' if s996Logic.r35517_condition():
            # a25 # r35517
            jump s996_s5

        'Zkus kostlivci vytáhnout svorky z kloubů.' if s996Logic.r35518_condition():
            # a26 # r35518
            jump s996_s6

        '"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"' if s996Logic.r35519_condition():
            # a27 # r35519
            jump s996_s4

        '"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"' if s996Logic.r35520_condition():
            # a28 # r35520
            jump s996_s5

        '"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"' if s996Logic.r35521_condition():
            # a29 # r35521
            jump s996_s6

        'Nechej kostlivce být.' if s996Logic.r35522_condition():
            # a30 # r35522
            $ s996Logic.r35522_action()
            jump morte_s386  # EXTERN

        'Nechej kostlivce být.' if s996Logic.r35523_condition():
            # a31 # r35523
            jump s996_dispose

        'Nechej kostlivce být.' if s996Logic.r35524_condition():
            # a32 # r35524
            jump s996_dispose


# s4 # say35499
label s996_s4: # from 0.7 0.10 3.1 3.4
    nr 'Zaškubal jsi železnými svorkami, ale nemáš dost síly na to, abys je vyrval. Jsou pořádně upevněné.'

    menu:
        '"Kdybych měl správný nástroj, dokázal bych je vytáhnout… hmmm. Vrátím se, Kostro."' if s996Logic.r35500_condition():
            # a33 # r35500
            $ s996Logic.r35500_action()
            jump morte_s386  # EXTERN

        '"Kdybych měl správný nástroj, dokázal bych je vytáhnout… hmmm. Vrátím se, Kostro."' if s996Logic.r35501_condition():
            # a34 # r35501
            jump s996_dispose

        '"Kdybych měl správný nástroj, dokázal bych je vytáhnout… hmmm. Vrátím se, Kostro."' if s996Logic.r35502_condition():
            # a35 # r35502
            jump s996_dispose

        'Nechej kostlivce být.' if s996Logic.r35503_condition():
            # a36 # r35503
            $ s996Logic.r35503_action()
            jump morte_s386  # EXTERN

        'Nechej kostlivce být.' if s996Logic.r35504_condition():
            # a37 # r35504
            jump s996_dispose

        'Nechej kostlivce být.' if s996Logic.r35505_condition():
            # a38 # r35505
            jump s996_dispose


# s5 # say35507
label s996_s5: # from 0.8 0.11 3.2 3.5
    nr 'Zarval jsi veškerou svou silou. Po chvíli námahy jsi vyrval svorky z kostlivcových kloubů. Kostlivec se rozpadl, některé z kostí sebou stále škubají.'

    menu:
        '"Promiň, Kostro…"':
            # a39 # r35508
            $ s996Logic.r35508_action()
            jump s996_dispose


# s6 # say35510
label s996_s6: # from 0.9 0.12 3.3 3.6
    nr 'Pomocí svého páčidla jsi vyrval svorky z kostlivcových kloubů. Kostlivec se rozpadl, některé z kostí sebou stále škubají.'

    menu:
        '"Promiň, Kostro…"':
            # a40 # r35511
            $ s996Logic.r35511_action()
            jump s996_dispose


# s7 # say35536
label s996_s7: # - # IF ~  False()
    nr 'Kostlivec neodpovídá. Asi už se dostal příliš daleko, aby byl ještě schopný odpovídat na tvé otázky.'

    menu:
