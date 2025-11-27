init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm310_logic import Zm310Logic
    zm310Logic = Zm310Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM310.DLG
# ###


# s0 # say6495
label zm310_s0: # - # IF ~  Global("Oinosian","GLOBAL",0)
    nr 'Tato oživená mrtvola má sešité rty a do obočí má vyřezané číslo "310"; pach formaldehydu prostupuje oblast kolem ní. Když jí zastoupíš cestu, otáčí své neživé oči na tebe.{#zm310_s0_}'

    menu:
        '"Tak… je tam dál vidět něco zajímavého?"{#zm310_s0_r6499}' if zm310Logic.r6499_condition():
            # a0 # r6499
            $ zm310Logic.r6499_action()
            jump zm310_s1

        '"Tak… je tam dál vidět něco zajímavého?"{#zm310_s0_r6500}' if zm310Logic.r6500_condition():
            # a1 # r6500
            jump zm310_s1

        '"Vím, že nejsi zombie, jasný? Mě neoklameš."{#zm310_s0_r6501}' if zm310Logic.r6501_condition():
            # a2 # r6501
            jump zm310_s1

        'Použij svoji schopnost Kosti vyprávějte na mrtvolu.{#zm310_s0_r6502}' if zm310Logic.r6502_condition():
            # a3 # r6502
            $ zm310Logic.r6502_action()
            jump zm310_s2

        '"Rád jsem si s tebou popovídal. Sbohem."{#zm310_s0_r6503}':
            # a4 # r6503
            jump zm310_dispose

        'Nechej mrtvolu být.{#zm310_s0_r6504}':
            # a5 # r6504
            jump zm310_dispose


# s1 # say6496
label zm310_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe stále zírá.{#zm310_s1_}'

    menu:
        'Nechej mrtvolu být.{#zm310_s1_r6505}':
            # a6 # r6505
            jump zm310_dispose


# s2 # say6498
label zm310_s2: # from 0.3
    nr 'Na chvíli si myslíš, že tato mrtvola je příliš stará na to, aby mohla odpovědět… ale náhle rozpoznáváš v jejích rysech skutečné utrpení a tvé smysly za tím vycítily hluboké zoufalství z toho, že se duše musela vrátit zpět do své staré schránky.{#zm310_s2_}'

    menu:
        '"Rád bych ti položil otázku…"{#zm310_s2_r6506}':
            # a7 # r6506
            jump zm310_s3

        'Nechej ducha odpočívat v pokoji.{#zm310_s2_r9657}':
            # a8 # r9657
            jump zm310_s17


# s3 # say9642
label zm310_s3: # from 2.0 4.2 5.2 6.2 7.2 8.1 9.0 10.0 11.2 12.1 13.1 14.1 15.1 16.0 18.0
    nr 'Mrtvola promluvila hlubokým jednotvárným hlasem, z něhož čpí zklamání a beznaděj. Dokonce se dá říct, že je k nerozeznání od hlasu zombie. "Co potřebuješ, pane můj?"{#zm310_s3_}'

    menu:
        '"Kdo vlastně jsi?"{#zm310_s3_r9658}':
            # a9 # r9658
            jump zm310_s4

        '"Odkud pocházíš?"{#zm310_s3_r9659}':
            # a10 # r9659
            jump zm310_s5

        '"Jak ses sem dostal? Teda myslím tvé tělo?"{#zm310_s3_r9660}':
            # a11 # r9660
            jump zm310_s6

        '"Kde jsi… kde tvá duše spočívá… teď?"{#zm310_s3_r9661}':
            # a12 # r9661
            jump zm310_s7

        '"Proč propadáš takovéto beznaději?"{#zm310_s3_r9662}':
            # a13 # r9662
            jump zm310_s8

        '"Co všechno víš o tomto místě?"{#zm310_s3_r9663}':
            # a14 # r9663
            jump zm310_s9

        '"Neznáš náhodou muže jménem Pharod?"{#zm310_s3_r9664}' if zm310Logic.r9664_condition():
            # a15 # r9664
            jump zm310_s10

        '"Vlastně nic. Sbohem."{#zm310_s3_r9665}':
            # a16 # r9665
            jump zm310_s17


# s4 # say9643
label zm310_s4: # from 3.0
    nr 'Duch mluví tak tiše, že musíš napínat své uši, abys ho vůbec slyšel; mrtvolná ústa se jen stěží pohybují, aby vyprodukovala slova. "Jsem nikdo, pane můj; jen troska hmyzu, zoufale oddaná Pusté věži v Oinosu. Jednou jsem byl nazýván Arabhiemem, ale to bylo, pane můj… to bylo. Před dlouhou, velmi dlouhou dobou."{#zm310_s4_}'

    menu:
        '"Říkal jsi Pustá věž?"{#zm310_s4_r9666}':
            # a17 # r9666
            jump zm310_s13

        '"Oinos?"{#zm310_s4_r9667}':
            # a18 # r9667
            jump zm310_s7

        '"Měl bych další otázku…"{#zm310_s4_r9668}':
            # a19 # r9668
            jump zm310_s3

        '"Teď už vlastně nic nepotřebuju. Sbohem."{#zm310_s4_r9669}':
            # a20 # r9669
            jump zm310_s17


# s5 # say9644
label zm310_s5: # from 3.1
    nr '"Žil jsem v Sigilu, pane můj. V Úlu. Nebylo to tak hrozné místo, jak jsem dříve myslil, avšak teď je mým domovem… Oinos." Mrtvola mrkla tak pomalu, až ti připadalo, že pouze zavřela své oči.{#zm310_s5_}'

    menu:
        '"V Úlu?"{#zm310_s5_r9670}':
            # a21 # r9670
            jump zm310_s12

        '"Oinos?"{#zm310_s5_r9671}':
            # a22 # r9671
            jump zm310_s7

        '"Měl bych další otázku…"{#zm310_s5_r9672}':
            # a23 # r9672
            jump zm310_s3

        '"Tak to je prozatím vše. Sbohem."{#zm310_s5_r9673}':
            # a24 # r9673
            jump zm310_s17


# s6 # say9645
label zm310_s6: # from 3.2
    nr '"Byl jsem zavražděn, pane můj, zavražděn lupiči. Pln alkoholu jsem klopýtal ulicemi Úlu, až jsem se ztratil a padl jsem za oběť bandě pobudů. Avšak přesto; můj život pravděpodobně nebyl cennějším, než těch několik měděných, které za mě mohl Sběrač dostat."{#zm310_s6_}'

    menu:
        '"Proč svým životem tak opovrhuješ?"{#zm310_s6_r9674}':
            # a25 # r9674
            jump zm310_s16

        '"Sběrač?"{#zm310_s6_r9675}':
            # a26 # r9675
            jump zm310_s15

        '"Měl bych další otázku…"{#zm310_s6_r9676}':
            # a27 # r9676
            jump zm310_s3

        '"Tak to je prozatím vše. Sbohem."{#zm310_s6_r9677}':
            # a28 # r9677
            jump zm310_s17


# s7 # say9646
label zm310_s7: # from 3.3 4.1 5.1 8.0 12.0
    nr 'Duch na okamžik zavřel své oči, jeho mrtvé tělo se jemně chvělo. "V úděsném Oinosu, pane můj. V Šedé pustině. Tam byla upoutána má mysl, ve stínu Khin-Oin, Pusté věže."{#zm310_s7_}'

    menu:
        '"Pověz mi více o tom… Oinosu."{#zm310_s7_r9678}':
            # a29 # r9678
            jump zm310_s11

        '"Khin-Oin?"{#zm310_s7_r9679}':
            # a30 # r9679
            jump zm310_s13

        '"Měl bych další otázku…"{#zm310_s7_r9680}':
            # a31 # r9680
            jump zm310_s3

        '"Teď už vlastně nic nepotřebuju. Sbohem."{#zm310_s7_r9681}':
            # a32 # r9681
            jump zm310_s17


# s8 # say9647
label zm310_s8: # from 3.4
    nr '"Tady už pro mě nic není, pane můj. Jsem uvězněn v pusté šedi zničeného Oinosu. Pro takového, jako jsem já, už není naděje." Zdá se, že se duch propadl do ještě větší beznaděje, pod tíhou zármutku se mu podlamují kolena.{#zm310_s8_}'

    menu:
        '"Oinos?"{#zm310_s8_r9682}':
            # a33 # r9682
            jump zm310_s7

        '"Aha. Chtěl bych se zeptat ještě na něco…"{#zm310_s8_r9683}':
            # a34 # r9683
            jump zm310_s3

        '"Tak to je prozatím vše. Sbohem."{#zm310_s8_r9684}':
            # a35 # r9684
            jump zm310_s17


# s9 # say9648
label zm310_s9: # from 3.5 15.0
    nr '"Pouze hodně málo, pane můj; jen to, že sem jsou odnášeni mrtví, aby byli pohřbeni nebo spáleni… nebo použiti jako pomocníci - stejně jako moje tělo."{#zm310_s9_}'

    menu:
        '"Ach tak. Mno, měl bych ještě otázečku…"{#zm310_s9_r9685}':
            # a36 # r9685
            jump zm310_s3

        '"Teď už vlastně nic nepotřebuju. Sbohem."{#zm310_s9_r9686}':
            # a37 # r9686
            jump zm310_s17


# s10 # say9649
label zm310_s10: # from 3.6
    nr 'Mrtvola pomalu zatřásla hlavou ze strany na stranu. "Kdepak, pane můj. Neznám nikoho s takovým jménem. Je mi líto, pane můj."{#zm310_s10_}'

    menu:
        '"Mohl bych se ještě na něco zeptat?"{#zm310_s10_r9687}':
            # a38 # r9687
            jump zm310_s3

        '"Tak tedy sbohem."{#zm310_s10_r9688}':
            # a39 # r9688
            jump zm310_s17


# s11 # say9650
label zm310_s11: # from 7.0
    nr '"Tady není co povědět, pane můj. Je to země mého Pána, Lorda Khin-Oina… je plná utrpení a chorob, hniloby, která pohlcuje těla i duše. Je to místo naprosté beznaděje."{#zm310_s11_}'

    menu:
        '"Kdo je ten… Pán?„"{#zm310_s11_r9689}':
            # a40 # r9689
            jump zm310_s14

        '"Khin-Oinu?"{#zm310_s11_r9690}':
            # a41 # r9690
            jump zm310_s13

        '"Měl bych další otázku…"{#zm310_s11_r9691}':
            # a42 # r9691
            jump zm310_s3

        '"Zní to tak. Sbohem, duchu."{#zm310_s11_r9692}':
            # a43 # r9692
            jump zm310_s17


# s12 # say9651
label zm310_s12: # from 5.0
    nr '"Ano, pane můj. Je to bídné místo, avšak ne tak, jak Oinos."{#zm310_s12_}'

    menu:
        '"Oinos?"{#zm310_s12_r9693}':
            # a44 # r9693
            jump zm310_s7

        '"Měl bych další otázku…"{#zm310_s12_r9694}':
            # a45 # r9694
            jump zm310_s3

        '"Tak to je prozatím vše. Sbohem."{#zm310_s12_r9695}':
            # a46 # r9695
            jump zm310_s17


# s13 # say9652
label zm310_s13: # from 4.0 7.1 11.1 14.0
    nr '"Ano, pane můj. Je to ohromná věž, je mnohem vyšší než ty nejvyšší věže celého Sigilu.  Vypadá jako kost, pane můj -- jako páteř nějakého obrovitého stvoření. A právě na tomto místě musím dřít a opravovat poškození, která věži způsobily armády Pánových nepřátel, jeho knížecích soků."{#zm310_s13_}'

    menu:
        '"Kdo je ten… Pán?„"{#zm310_s13_r9696}':
            # a47 # r9696
            jump zm310_s14

        '"Aha. Měl bych ještě jednu otázečku…"{#zm310_s13_r9697}':
            # a48 # r9697
            jump zm310_s3

        '"Asi bych tě už měl opustit. Sbohem."{#zm310_s13_r9698}':
            # a49 # r9698
            jump zm310_s17


# s14 # say9653
label zm310_s14: # from 11.0 13.0
    nr '"Znám ho jen jako Pána, pane můj; Lorda of Khin-Oinu. On je fiendským knížetem -- a vládne děsivou silou. Právě on vlastní mou duši a bude ji vlastnit dále navěky. Mou duši - nepatrné zrnko prachu - jež je předurčena umdlévat pod jeho nohama, dokud vody věčnosti nevymelou mou cestu k Zapomnění."{#zm310_s14_}'

    menu:
        '"Pověz mi o tom „Khin-Oinu.“"{#zm310_s14_r9699}':
            # a50 # r9699
            jump zm310_s13

        '"Měl bych další otázku…"{#zm310_s14_r9700}':
            # a51 # r9700
            jump zm310_s3

        '"Tak to by bylo prozatím všechno. Sbohem."{#zm310_s14_r9701}':
            # a52 # r9701
            jump zm310_s17


# s15 # say9654
label zm310_s15: # from 6.1
    nr '"Ano, pane můj, Sběrač. Sběrači jsou ti, kteří v ulicích města hledají mrtvé a pak je vláčí do Márnice -- místa, kde teď stojíme -- za nepatrnou odměnu." Duch si udělal chviličku času, aby se mohl porozhlédnout kolem. Potom se zase otočil zpět a tiše si povzdechl.{#zm310_s15_}'

    menu:
        '"Co všechno víš o této Márnici?"{#zm310_s15_r9702}':
            # a53 # r9702
            jump zm310_s9

        '"Aha. Mám pro tebe ještě jednu otázku…"{#zm310_s15_r9703}':
            # a54 # r9703
            jump zm310_s3

        '"Tak to je prozatím vše. Sbohem."{#zm310_s15_r9704}':
            # a55 # r9704
            jump zm310_s17


# s16 # say9655
label zm310_s16: # from 6.0
    nr '"O tom nechci mluvit, pane můj. Nestojí to ani za řeč." Zdá se, že duch je v tomto mínění neochvějný.{#zm310_s16_}'

    menu:
        '"Fajn. Měl bych ještě další otázku…"{#zm310_s16_r9705}':
            # a56 # r9705
            jump zm310_s3

        '"Tak tedy sbohem."{#zm310_s16_r9706}':
            # a57 # r9706
            jump zm310_s17


# s17 # say9656
label zm310_s17: # from 2.1 3.7 4.3 5.3 6.3 7.3 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.2 16.1
    nr 'Nebyl bys býval postřehnul, že duch opustil tělo, dokud se šoupavými kroky nevrátila zombie opět ke své práci.{#zm310_s17_}'

    jump zm310_dispose


# s18 # say20102
label zm310_s18: # - # IF ~  Global("Oinosian","GLOBAL",1)
    nr 'Mrtvola jakoby se scvrkla, nahrbila se váhou duchova zoufalství.{#zm310_s18_}'

    menu:
        '"Mám pár otázek…"{#zm310_s18_r20103}':
            # a58 # r20103
            jump zm310_s3

        '"Jenom procházím. Sbohem."{#zm310_s18_r20104}':
            # a59 # r20104
            jump zm310_dispose
