init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s863_logic import S863Logic
    s863Logic = S863Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS863.DLG
# ###


# s0 # say35537
label s863_s0: # from 10.0 # IF ~  !HasItem("DRemind","S863")
    nr 'Tenhle kostlivec už si toho určitě hodně prožil, ať už v boji, nebo spadl z příliš mnoha schodů. Všechny čtyři končetiny byly polámány a opraveny pomocí kožených pásků a tenkých železných tyčí. Předek lebky je ozdobený číslem "863", ale zadní část lebky se někde ztratila.{#s863_s0_}'

    menu:
        '"Sorry, že jsem si vzal ten pergamen, ale pochybuju, že bys ho někdy v brzké době doručil."{#s863_s0_r35538}' if s863Logic.r35538_condition():
            # a0 # r35538
            $ s863Logic.r35538_action()
            jump s863_s1

        '"Sorry, že jsem si vzal ten pergamen, ale pochybuju, že bys ho někdy v brzké době doručil."{#s863_s0_r35561}' if s863Logic.r35561_condition():
            # a1 # r35561
            jump s863_s1

        '"Musím se zeptat: Ty zlomené kosti máš z boje, nebo jsi spadl?"{#s863_s0_r35562}' if s863Logic.r35562_condition():
            # a2 # r35562
            $ s863Logic.r35562_action()
            jump s863_s1

        '"Musím se zeptat: Ty zlomené kosti máš z boje, nebo jsi spadl?"{#s863_s0_r35563}' if s863Logic.r35563_condition():
            # a3 # r35563
            jump s863_s1

        'Použij na kostlivce svou schopnost Kosti-vyprávějte.{#s863_s0_r35564}' if s863Logic.r35564_condition():
            # a4 # r35564
            jump s863_s2

        'Pozorně prozkoumej kostlivce.{#s863_s0_r35569}':
            # a5 # r35569
            $ s863Logic.r35569_action()
            jump s863_s3

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s863_s0_r35602}' if s863Logic.r35602_condition():
            # a6 # r35602
            $ s863Logic.r35602_action()
            jump morte_s400  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s863_s0_r35603}' if s863Logic.r35603_condition():
            # a7 # r35603
            jump s863_s4

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s863_s0_r35604}' if s863Logic.r35604_condition():
            # a8 # r35604
            jump s863_s5

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s863_s0_r35605}' if s863Logic.r35605_condition():
            # a9 # r35605
            jump s863_s6

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s863_s0_r35606}' if s863Logic.r35606_condition():
            # a10 # r35606
            jump s863_s4

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s863_s0_r35607}' if s863Logic.r35607_condition():
            # a11 # r35607
            jump s863_s5

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s863_s0_r35608}' if s863Logic.r35608_condition():
            # a12 # r35608
            jump s863_s6

        '"Co tahle kostra, Morte? Bude stačit jako tělo?"{#s863_s0_r35609}' if s863Logic.r35609_condition():
            # a13 # r35609
            jump morte_s396  # EXTERN

        'Nechej kostlivce být.{#s863_s0_r35610}' if s863Logic.r35610_condition():
            # a14 # r35610
            $ s863Logic.r35610_action()
            jump morte_s394  # EXTERN

        'Nechej kostlivce být.{#s863_s0_r35611}' if s863Logic.r35611_condition():
            # a15 # r35611
            jump s863_dispose

        'Nechej kostlivce být.{#s863_s0_r35612}' if s863Logic.r35612_condition():
            # a16 # r35612
            jump s863_dispose


# s1 # say35539
label s863_s1: # from 0.0 0.1 0.2 0.3
    nr 'Kostlivec neodpovídá.{#s863_s1_}'

    menu:
        '"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."{#s863_s1_r35540}' if s863Logic.r35540_condition():
            # a17 # r35540
            $ s863Logic.r35540_action()
            jump morte_s394  # EXTERN

        '"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."{#s863_s1_r35559}' if s863Logic.r35559_condition():
            # a18 # r35559
            jump s863_dispose

        '"Rád jsem si s tebou pokecal, Kostro. Buď zdráv."{#s863_s1_r35560}' if s863Logic.r35560_condition():
            # a19 # r35560
            jump s863_dispose


# s2 # say35565
label s863_s2: # from 0.4
    nr 'Kostlivec neodpovídá. Asi už se dostal příliš daleko, aby byl ještě schopný odpovídat na tvé otázky.{#s863_s2_}'

    menu:
        'Nechej kostlivce být.{#s863_s2_r35566}' if s863Logic.r35566_condition():
            # a20 # r35566
            $ s863Logic.r35566_action()
            jump morte_s394  # EXTERN

        'Nechej kostlivce být.{#s863_s2_r35567}' if s863Logic.r35567_condition():
            # a21 # r35567
            jump s863_dispose

        'Nechej kostlivce být.{#s863_s2_r35568}' if s863Logic.r35568_condition():
            # a22 # r35568
            jump s863_dispose


# s3 # say35570
label s863_s3: # from 0.5
    nr 'Někdo si dal práci a spojil kosti tohoto kostlivce koženými pásky, omotanými kolem těla tak, že připomínají svaly a šlachy. Pásky jsou připevněné na kovových svorkách, vražených do kloubů kostlivce. Kostlivec vypadá, že už si svoje odsloužil: Mnoho kostí je oštípáno a početné fraktury jsou slepeny zapáchajícím lepidlem.{#s863_s3_}'

    menu:
        'Zkus kostlivci vytáhnout svorky z kloubů.{#s863_s3_r35571}' if s863Logic.r35571_condition():
            # a23 # r35571
            $ s863Logic.r35571_action()
            jump morte_s400  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s863_s3_r35593}' if s863Logic.r35593_condition():
            # a24 # r35593
            jump s863_s4

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s863_s3_r35594}' if s863Logic.r35594_condition():
            # a25 # r35594
            jump s863_s5

        'Zkus kostlivci vytáhnout svorky z kloubů.{#s863_s3_r35595}' if s863Logic.r35595_condition():
            # a26 # r35595
            jump s863_s6

        '"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"{#s863_s3_r35596}' if s863Logic.r35596_condition():
            # a27 # r35596
            jump s863_s4

        '"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"{#s863_s3_r35597}' if s863Logic.r35597_condition():
            # a28 # r35597
            jump s863_s5

        '"Vadilo by ti, kdybych si půjčil pár těch řemenů a svorek?"{#s863_s3_r35598}' if s863Logic.r35598_condition():
            # a29 # r35598
            jump s863_s6

        'Nechej kostlivce být.{#s863_s3_r35599}' if s863Logic.r35599_condition():
            # a30 # r35599
            $ s863Logic.r35599_action()
            jump morte_s394  # EXTERN

        'Nechej kostlivce být.{#s863_s3_r35600}' if s863Logic.r35600_condition():
            # a31 # r35600
            jump s863_dispose

        'Nechej kostlivce být.{#s863_s3_r35601}' if s863Logic.r35601_condition():
            # a32 # r35601
            jump s863_dispose


# s4 # say35576
label s863_s4: # from 0.7 0.10 3.1 3.4
    nr 'Zaškubal jsi železnými svorkami, ale nemáš dost síly na to, abys je vyrval. Jsou pořádně upevněné.{#s863_s4_}'

    menu:
        '"Kdybych měl správný nástroj, dokázal bych je vytáhnout… hmmm. Vrátím se, Kostro."{#s863_s4_r35577}' if s863Logic.r35577_condition():
            # a33 # r35577
            $ s863Logic.r35577_action()
            jump morte_s394  # EXTERN

        '"Kdybych měl správný nástroj, dokázal bych je vytáhnout… hmmm. Vrátím se, Kostro."{#s863_s4_r35578}' if s863Logic.r35578_condition():
            # a34 # r35578
            jump s863_dispose

        '"Kdybych měl správný nástroj, dokázal bych je vytáhnout… hmmm. Vrátím se, Kostro."{#s863_s4_r35579}' if s863Logic.r35579_condition():
            # a35 # r35579
            jump s863_dispose

        'Nechej kostlivce být.{#s863_s4_r35580}' if s863Logic.r35580_condition():
            # a36 # r35580
            $ s863Logic.r35580_action()
            jump morte_s394  # EXTERN

        'Nechej kostlivce být.{#s863_s4_r35581}' if s863Logic.r35581_condition():
            # a37 # r35581
            jump s863_dispose

        'Nechej kostlivce být.{#s863_s4_r35582}' if s863Logic.r35582_condition():
            # a38 # r35582
            jump s863_dispose


# s5 # say35584
label s863_s5: # from 0.8 0.11 3.2 3.5
    nr 'Zarval jsi veškerou svou silou. Po chvíli námahy jsi vyrval svorky z kostlivcových kloubů. Kostlivec se rozpadl, některé z kostí sebou stále škubají.{#s863_s5_}'

    menu:
        '"Promiň, Kostro…"{#s863_s5_r35585}':
            # a39 # r35585
            $ s863Logic.r35585_action()
            jump s863_dispose


# s6 # say35587
label s863_s6: # from 0.9 0.12 3.3 3.6
    nr 'Pomocí svého páčidla jsi vyrval svorky z kostlivcových kloubů. Kostlivec se rozpadl, některé z kostí sebou stále škubají.{#s863_s6_}'

    menu:
        '"Promiň, Kostro…"{#s863_s6_r35588}':
            # a40 # r35588
            $ s863Logic.r35588_action()
            jump s863_dispose


# s7 # say35613
label s863_s7: # - # IF ~  False()
    nr 'Kostlivec neodpovídá. Asi už se dostal příliš daleko, aby byl ještě schopný odpovídat na tvé otázky.{#s863_s7_}'

    menu:

# s8 # say64262
label s863_s8: # - # IF ~  HasItem("DRemind","S863")
    nr 'Tenhle kostlivec buď prošel obrovským bojem, nebo se zřítil z hodně vysokých schodů; obě jeho paže i nohy byly zlomeny a znovu dány dohromady pomocí kožených popruhů a ocelových tyčí. Na předku lebky je vyraženo číslo "863"… ale zadek jeho lebky se propadl a vytvořil dutinu. Vidíš, že toho někdo využil a vyspároval jí kusem srolovaného pergamenu.{#s863_s8_}'

    menu:
        'Vyjmout kostlivci z lebky pergamen.{#s863_s8_r64263}':
            # a41 # r64263
            jump s863_s9

        'Nechat kostlivce na pokoji.{#s863_s8_r64264}':
            # a42 # r64264
            jump s863_dispose


# s9 # say64265
label s863_s9: # from 8.0
    nr 'Vykrádáš pergamen z dělníkovy lebky - dokonce to vypadá, že dutina v lebce přímo *slouží* pro ukládání zpráv; pergamen je tenounkou strunou přichycen k háku uvnitř lebky, zřejmě aby nemohl nechtěně vypadnout.{#s863_s9_}'

    menu:
        'Odháknout strunu, vzít pergamen.{#s863_s9_r64266}':
            # a43 # r64266
            $ s863Logic.r64266_action()
            jump s863_s10


# s10 # say64267
label s863_s10: # from 9.0
    nr 'Odhákneš strunu a pohlédneš na pergamen -- vypadá to jako poznámky jednoho ze strážců Márnice. Soudě dle poznámek, tento kostlivec je zřejmě nějaký druh posla. Jak se na něj chvíli díváš, uvědomuješ si, že se kostlivec zastavil před kamenou deskou, zřejmě si není schopný vypočítat, jak se přes ní dostat.  POZNÁMKA: Pro "přečtení" poznámek, knih nebo svitků je vlož do svého inventáře a pak na ně klikni pravým tlačítkem myši, vyvolá se informační panel.{#s863_s10_}'

    menu:
        'Prozkoumat kostlivce znovu.{#s863_s10_r64268}':
            # a44 # r64268
            jump s863_s0

        'Nechat kostlivce na pokoji.{#s863_s10_r64269}':
            # a45 # r64269
            jump s863_dispose
