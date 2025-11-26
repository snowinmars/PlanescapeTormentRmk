init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s42_logic import S42Logic
    s42Logic = S42Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS42.DLG
# ###


# s0 # say6595
label s42_s0: # - # IF ~  True()
    nr 'Kostlivec se otočil tváří k tobě. Na čele má vyryto číslo "42" a řada jeho kostí, hlavně na čelistech a spojích, byla svázána koženými pásky. Kostru halí černé pracovní šaty.'

    menu:
        '"*Myslím*, že tohle je tělo, na které si vzpomínám…"' if s42Logic.r6612_condition():
            # a0 # r6612
            jump s42_s1

        '"Promiňte prosím, neviděli jste tady někde kolem chodit kostlivce?"':
            # a1 # r6613
            $ s42Logic.r6613_action()
            jump s42_s1

        '"Ptám se: Proč šaty? Chci říct, že nevypadáš na to, jako bys měl něco, co bys musel zakrývat."' if s42Logic.r6614_condition():
            # a2 # r6614
            $ s42Logic.r6614_action()
            jump s42_s1

        '"Ptám se: Proč šaty? Chci říct, že nevypadáš na to, jako bys měl něco, co bys musel zakrývat."' if s42Logic.r6615_condition():
            # a3 # r6615
            jump s42_s1

        'Použij svou schopnost Kosti-vyprávějte na tělo.' if s42Logic.r6616_condition():
            # a4 # r6616
            jump s42_s2

        'Pečlivě prozkoumej kostlivce.':
            # a5 # r6617
            $ s42Logic.r6617_action()
            jump s42_s3

        'Zkus vypáčit šrouby z kostlivcových kloubů.' if s42Logic.r6618_condition():
            # a6 # r6618
            $ s42Logic.r6618_action()
            jump morte_s110  # EXTERN

        'Zkus vypáčit šrouby z kostlivcových kloubů.' if s42Logic.r6619_condition():
            # a7 # r6619
            jump s42_s6

        'Zkus vypáčit šrouby z kostlivcových kloubů.' if s42Logic.r6620_condition():
            # a8 # r6620
            jump s42_s6

        '"Co s tímhle kostlivcem, Morte? Bude ti stačit jako tělo?"' if s42Logic.r6621_condition():
            # a9 # r6621
            jump s42_s1

        'Nechej kostlivce na pokoji.' if s42Logic.r6622_condition():
            # a10 # r6622
            jump morte_s111  # EXTERN

        'Nechej kostlivce na pokoji.' if s42Logic.r6623_condition():
            # a11 # r6623
            jump s42_dispose

        'Nechej kostlivce na pokoji.' if s42Logic.r6624_condition():
            # a12 # r6624
            jump s42_dispose


# s1 # say6596
label s42_s1: # from 0.0 0.1 0.2 0.3 0.9 3.0 3.3
    nr 'Při zvuku tvého hlasu se kostlivec náhle napřímil. Zkřížil si paže na hrudníku a prsty zahákl za žebra.'

    menu:
        'Překřiž si ruce na hrudníku.' if s42Logic.r6625_condition():
            # a13 # r6625
            jump s42_s4

        'Napodob gesto… sleduj co se stane.' if s42Logic.r6626_condition():
            # a14 # r6626
            jump s42_s9

        '"Uh…"':
            # a15 # r6627
            jump s42_s10

        'Nechej kostlivce samotného.':
            # a16 # r6628
            jump s42_dispose


# s2 # say6597
label s42_s2: # from 0.4
    nr 'Mrtvola neodpovídá. Vypadá to, že je mrtvá příliš dlouho na to, aby byla schopna odpovědět na nějakou tvou otázku.'

    menu:
        'Nechej kostlivce na pokoji.' if s42Logic.r6629_condition():
            # a17 # r6629
            $ s42Logic.r6629_action()
            jump morte_s111  # EXTERN

        'Nechej kostlivce na pokoji.' if s42Logic.r6630_condition():
            # a18 # r6630
            jump s42_dispose

        'Nechej kostlivce na pokoji.' if s42Logic.r6631_condition():
            # a19 # r6631
            jump s42_dispose


# s3 # say6598
label s42_s3: # from 0.5 10.2
    nr 'Udivuje tě, že tahle hromada kostí pořád ještě drží pohromadě. Kostlivcovy zažloutlé kosti jsou zamazány sádrou a několika vrstvami odporně páchnoucího lepidla… vidíš, že kosti pokrývají stovky vlasových fraktur. Ačkoliv si někdo dal práci s tím, aby ovázal tohoto kostlivce koženými řemínky a sešrouboval jeho klouby dohromady, řemínky jsou otřepané a šrouby vypadají, že co chvíli upadnou.'

    menu:
        '"Myslím, že tohle je ta mrtvola, na kterou jsem si vzpomněl…"' if s42Logic.r63495_condition():
            # a20 # r63495
            jump s42_s1

        'Zkus vypáčit šrouby z kostlivcových kloubů.' if s42Logic.r6632_condition():
            # a21 # r6632
            $ s42Logic.r6632_action()
            jump morte_s110  # EXTERN

        'Zkus vypáčit šrouby z kostlivcových kloubů.' if s42Logic.r6633_condition():
            # a22 # r6633
            jump s42_s6

        '"Nevadí, když si vypůjčím některé z těchto řemínku a šroubů?"' if s42Logic.r6634_condition():
            # a23 # r6634
            jump s42_s1

        'Nechej kostlivce na pokoji.' if s42Logic.r6635_condition():
            # a24 # r6635
            $ s42Logic.r6635_action()
            jump morte_s111  # EXTERN

        'Nechej kostlivce na pokoji.' if s42Logic.r6636_condition():
            # a25 # r6636
            jump s42_dispose

        'Nechej kostlivce na pokoji.' if s42Logic.r6637_condition():
            # a26 # r6637
            jump s42_dispose


# s4 # say6599
label s42_s4: # from 1.0 12.0
    nr 'Jako odpověď nechal kostlivec spadnout paže podél těla. Kožený provaz udržující kostlivcovo torzo v pevném stavu praskl a žebra se vyhnula ven jako dvojité dveře.'

    menu:
        'Sáhni do hrudníku a prohledej ho.':
            # a27 # r6638
            jump s42_s5

        'Nechej kostlivce být.':
            # a28 # r6639
            jump s42_dispose


# s5 # say6600
label s42_s5: # from 4.0 9.0
    nr 'K tvému překvapení tvoje ruka zmizela hned, jak jsi ji vložil mezi žebra… máš silný pocit, že je někde úplně *jinde.* Jak saháš do hrudníku, tvá ruka znovu narazila na neviditelný objekt. Má velikost pěsti a zdá se, že je připojen k páteři kostlivce.'

    menu:
        'Vyjmi předmět.':
            # a29 # r6640
            $ s42Logic.r6640_action()
            jump s42_s7

        'Nechej kostlivce samotného.':
            # a30 # r6641
            jump s42_dispose


# s6 # say6601
label s42_s6: # from 0.7 0.8 3.2
    nr 'ŠRouby lehce vyklouzly z kostlivcových kloubů. Kostlivec se rozpadl, některé jeho kosti sebou dosud škubou.'

    menu:
        '"Omlouvám se za to, Kosti…"':
            # a31 # r6642
            $ s42Logic.r6642_action()
            jump s42_dispose


# s7 # say6602
label s42_s7: # from 5.0
    nr 'Jakmile jsi ten předmět vyňal, kostlivec se náhle rozpadl a kovové šrouby udržující jeho klouby zazvonily o podlahu. Ať už byl ten předmět cokoliv, zdá se, že to on držel kostlivce pohromadě.'

    menu:
        'Prozkoumej předmět.' if s42Logic.r6643_condition():
            # a32 # r6643
            jump s42_s8

        'Prozkoumej předmět.' if s42Logic.r6644_condition():
            # a33 # r6644
            jump s42_s8


# s8 # say6603
label s42_s8: # from 7.0 7.1
    nr 'Vypadá to jako nenápadná hromádka železa. Nedokážeš si představit, proč by to někdo schovával mezi kostlivcova žebra.'

    menu:
        'Prozkoumej kousek kovu.':
            # a34 # r6645
            $ s42Logic.r6645_action()
            jump s42_s14


# s9 # say6604
label s42_s9: # from 1.1 12.1
    nr 'Jako odpověď nechal kostlivec spadnout paže podél těla. Kožený provaz udržující kostlivcovo torzo v pevném stavu praskl a žebra se vyhnula ven jako dvojité dveře. Nedokážeš si vysvětlit proč, ale máš neodolatelné nutkání sáhnout do jeho hrudníku.'

    menu:
        'Sáhni do hrudníku a prohledej ho.':
            # a35 # r6646
            jump s42_s5

        'Nechej kostlivce být.':
            # a36 # r6647
            jump s42_dispose


# s10 # say6605
label s42_s10: # from 1.2 12.2
    nr 'Kostlivcovy paže spadly podél těla.'

    menu:
        '"Uh… ahoj?"' if s42Logic.r6648_condition():
            # a37 # r6648
            jump s42_s12

        '"Uh… ahoj?"' if s42Logic.r6649_condition():
            # a38 # r6649
            jump s42_s13

        'Pečlivě prozkoumej kostlivce.':
            # a39 # r6650
            $ s42Logic.r6650_action()
            jump s42_s3

        'Nechej kostlivce být.':
            # a40 # r6651
            jump s42_dispose


# s11 # say6606
label s42_s11: # -
    nr 'Vypadá to jako nenápadná hromádka železa. Tvé předchozí vtělení muselo mít důvod schovat to sem.'

    menu:
        'Pečlivě prozkoumej kousek kovu.':
            # a41 # r6652
            $ s42Logic.r6652_action()
            jump s42_s14


# s12 # say6607
label s42_s12: # from 10.0
    nr 'Kostlivec znovu zkřížil ruce na hrudi.'

    menu:
        'Překřiž si ruce na hrudníku.' if s42Logic.r6653_condition():
            # a42 # r6653
            jump s42_s4

        'Napodob gesto… sleduj co se stane.' if s42Logic.r6654_condition():
            # a43 # r6654
            jump s42_s9

        '"Uh…"':
            # a44 # r6655
            jump s42_s10

        'Nechej kostlivce být.':
            # a45 # r6656
            jump s42_dispose


# s13 # say6608
label s42_s13: # from 10.1
    nr 'Kostlivec znovu zkřížil ruce na hrudi.'

    jump morte_s112  # EXTERN


# s14 # say58983
label s42_s14: # from 8.0 11.0
    nr 'Když jsi položil obě ruce na kus železa, abys jej prozkoumal, ozvalo se *hssssss,* a kov se vypařil, zanechávaje za sebou podivnou dýku, hrstku mincí zabalených v hadříku a dvě krvavé kapky - vypadá to, že byly *uvnitř* kusu železa.'

    menu:
        'Vezmi si věci a jdi pryč.':
            # a46 # r58984
            $ s42Logic.r58984_action()
            jump s42_dispose
