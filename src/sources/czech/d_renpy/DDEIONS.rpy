init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.deionarra_logic import DeionarraLogic
    deionarraLogic = DeionarraLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDEIONS.DLG
# ###


# s0 # say69459
label deionarra_s0: # from 5.2 9.5 10.8 11.3 12.3 13.4 14.2 25.3 27.4 28.4 30.2 31.3 32.2 41.4 41.5 42.3 42.4 43.4 44.4
    nr '"Budu na Tebe čekat v sálech smrti, má lásko." Usmívá se, ale přesto z jejích očí vyzařuje smutek. Zavřela oči a s lehkým šepotem se rozplynula.~ [DEN008B]{#deionarra_s0_}'

    menu:
        'Odejdi.{#deionarra_s0_r701}' if deionarraLogic.r701_condition():
            # a0 # r701
            $ deionarraLogic.r701_action()
            jump deionarra_dispose

        'Odejdi.{#deionarra_s0_r699}' if deionarraLogic.r699_condition():
            # a1 # r699
            $ deionarraLogic.r699_action()
            jump morte_s105  # EXTERN

        'Odejdi.{#deionarra_s0_r9616}' if deionarraLogic.r9616_condition():
            # a2 # r9616
            $ deionarraLogic.r9616_action()
            jump deionarra_dispose


# s1 # say5
label deionarra_s1: # - # IF WEIGHT #0 ~  Global("Deionarra","GLOBAL",0) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'Vidíš před sebou přízrak neobyčejně krásné ženy; má zkřížené ruce a zavřené oči, dlouhé plavé vlasy a zdá se, že s jejími šaty si pohrává lehounký vánek. Vidíš, jak se lehounce hýbe a její řasy se chvějí.{#deionarra_s1_}'

    menu:
        '"Zdravím…?"{#deionarra_s1_r703}':
            # a3 # r703
            jump deionarra_s2

        'Počkej.{#deionarra_s1_r704}':
            # a4 # r704
            jump deionarra_s2

        'Odejdi předtím než se duch zorientuje.{#deionarra_s1_r705}':
            # a5 # r705
            $ deionarraLogic.r705_action()
            jump deionarra_dispose


# s2 # say706
label deionarra_s2: # from 1.0 1.1
    nr 'Její oči se pomalu otevírají a v počátečním zmatku zamrká, jakoby si nebyla jistá, kde je. Rozhlíží se pomalu kolem a pak tě uvidí. Její poklidný obličej se náhle změnil. "Ty! Co *tebe* sem přivádí?! Přišel ses snad podívat na výsledek neštěstí, které jsi způsobil? Nebo snad, i po mé smrti, v tobě stále zůstal kousíček ze mne…?" Její hlas se změnil v šepot. "…„má lásko“."~ [DEN001]{#deionarra_s2_}'

    menu:
        '"Kdo jsi?"{#deionarra_s2_r707}':
            # a6 # r707
            $ deionarraLogic.r707_action()
            jump deionarra_s3

        '"„Má lásko?“ Znám tě snad?"{#deionarra_s2_r708}' if deionarraLogic.r708_condition():
            # a7 # r708
            $ deionarraLogic.r708_action()
            jump deionarra_s3

        '"„Má lásko?“ Znám tě snad?"{#deionarra_s2_r709}' if deionarraLogic.r709_condition():
            # a8 # r709
            $ deionarraLogic.r709_action()
            jump deionarra_s3


# s3 # say710
label deionarra_s3: # from 2.0 2.1 2.2 10.0
    nr 'Duch něco naznačuje rukama, nějaké tobě neznámé pohyby. "Jak se to mohlo stát, že ti zloději mysli ukradli z paměti mé jméno? *Nevzpomínáš* si na mne, má lásko?" Duch k tobě natahuje ruce. "Přemýšlej…" V jejím hlase je cítit zoufalost. "…jméno *Deionarra* musí přece v tobě vyvolávat nějaké vzpomínky."{#deionarra_s3_}'

    menu:
        '"Ne, promiň. Ztratil jsem paměť. "{#deionarra_s3_r711}':
            # a9 # r711
            jump deionarra_s6

        'Lež: "Ano… ano, to jméno mi *zní* hodně povědomě."{#deionarra_s3_r712}':
            # a10 # r712
            $ deionarraLogic.r712_action()
            jump deionarra_s7

        '"*Myslím*, že se mi vrací útržky paměti… řekni mi něco víc. Snad mi tvá slova pomohou vyhnat stíny z mysli, Deionarro."{#deionarra_s3_r713}' if deionarraLogic.r713_condition():
            # a11 # r713
            jump deionarra_s9

        '"*Myslím*, že se mi vrací útržky paměti… řekni mi něco víc. Snad mi tvá slova pomohou vyhnat stíny z mysli, Deionarro."{#deionarra_s3_r714}' if deionarraLogic.r714_condition():
            # a12 # r714
            jump deionarra_s9

        '"To ne. Sbohem… Deionarro."{#deionarra_s3_r1308}' if deionarraLogic.r1308_condition():
            # a13 # r1308
            jump deionarra_s15

        '"To nic. Sbohem… Deionarro."{#deionarra_s3_r6080}' if deionarraLogic.r6080_condition():
            # a14 # r6080
            jump deionarra_s26


# s4 # say715
label deionarra_s4: # - # IF WEIGHT #1 ~  Global("Deionarra","GLOBAL",2) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'Deionarra se znovu zjevila… tentokrát má obličej naplněn zoufalstvím a ruce natažené vpřed, jakoby se chtěla něčeho dotknout. Když se zjevila úplně, její zoufalství se změnilo v zuřivost. "Už jsi zase přišel! Chceš mě znovu trápit?"~ [DEN002]{#deionarra_s4_}'

    menu:
        '"Potřebuju vědět mnohem více. Měl bych pro tebe nějaké otázky…"{#deionarra_s4_r765}':
            # a15 # r765
            jump deionarra_s33

        '"Už tě nebudu víc trápit. Sbohem."{#deionarra_s4_r1307}':
            # a16 # r1307
            jump deionarra_s26


# s5 # say716
label deionarra_s5: # - # IF WEIGHT #2 ~  Global("Deionarra","GLOBAL",1) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'Deionarra se znovu zjevila… tentokrát má obličej naplněn zoufalstvím a ruce natažené vpřed, jakoby se chtěla něčeho dotknout. Když se zjevila úplně, zoufalý výraz v jejím obličeji se změnil v úlevu. "Má lásko… vrátil ses ke mně! Je to snad tím, že se ti vrátila paměť?"~ [DEN003A]{#deionarra_s5_}'

    menu:
        '"Měl bych na tebe nějaké otázky…"{#deionarra_s5_r766}':
            # a17 # r766
            jump deionarra_s10

        '"Ještě ne. Sbohem, Deionarro."{#deionarra_s5_r767}' if deionarraLogic.r767_condition():
            # a18 # r767
            jump deionarra_s15

        '"Teď ne. Sbohem, Deionarro."{#deionarra_s5_r1309}' if deionarraLogic.r1309_condition():
            # a19 # r1309
            jump deionarra_s0


# s6 # say717
label deionarra_s6: # from 3.0
    nr '"Toho jsem se obávala. Opravdu jsem se v tobě zmýlila… a pak když máš potíže, použiješ jako omluvu, že si mne nemůžeš vybavit v hlavě proto, žes ztratil paměť!"{#deionarra_s6_}'

    menu:
        '"„Potíže?“ „Vybavit v hlavě?“ Já tě neznám duchu… nemám vůbec žádné vzpomínky. Řekni mi… kdo jsi? Co o mně víš?"{#deionarra_s6_r720}':
            # a20 # r720
            jump deionarra_s11

        '"*Myslím*, že se mi vrací útržky paměti… řekni mi něco víc. Snad mi tvá slova pomohou vyhnat stíny z mysli, Deionarro."{#deionarra_s6_r718}' if deionarraLogic.r718_condition():
            # a21 # r718
            jump deionarra_s9

        '"*Myslím*, že se mi vrací útržky paměti… řekni mi něco víc. Snad mi tvá slova pomohou vyhnat stíny z mysli, Deionarro."{#deionarra_s6_r719}' if deionarraLogic.r719_condition():
            # a22 # r719
            jump deionarra_s9

        '"Jestli jsem tě už jednou vypustil z hlavy, nevím proč bych to nemohl udělat znovu. Sbohem duchu."{#deionarra_s6_r721}' if deionarraLogic.r721_condition():
            # a23 # r721
            jump deionarra_s15

        '"Musím jít, Deionarro. Sbohem."{#deionarra_s6_r1310}' if deionarraLogic.r1310_condition():
            # a24 # r1310
            jump deionarra_s15

        '"Už jsem tě jednou pustil z hlavy a vypadá to, že to budu muset udělat znovu. Sbohem duchu."{#deionarra_s6_r1311}' if deionarraLogic.r1311_condition():
            # a25 # r1311
            jump deionarra_s26

        '"Musím jít, Deionarro. Sbohem."{#deionarra_s6_r764}' if deionarraLogic.r764_condition():
            # a26 # r764
            jump deionarra_s26


# s7 # say722
label deionarra_s7: # from 3.1
    nr '"Ano…" Vypadá plná naděje. "Co mé jméno vyvolává?"{#deionarra_s7_}'

    menu:
        '"Nikdo. Lhal jsem."{#deionarra_s7_r700}':
            # a27 # r700
            $ deionarraLogic.r700_action()
            jump deionarra_s8

        'Lež: "Tvé jméno navozuje vášnivé myšlenky, i když jejich obsah je nečistý. Snad kdybys mi řekla víc…"{#deionarra_s7_r702}':
            # a28 # r702
            $ deionarraLogic.r702_action()
            jump deionarra_s9

        '"Nejsem si jistý… ale když spolu mluvíme cítím, že se mi vrací útržky paměti. Řekni mi víc. Snad mi tvá slova pomohou vyhnat stíny z mysli, Deionarro."{#deionarra_s7_r723}' if deionarraLogic.r723_condition():
            # a29 # r723
            jump deionarra_s9

        '"Nejsem si jistý… ale když spolu mluvíme cítím, že se mi vrací útržky paměti. Řekni mi víc. Snad mi tvá slova pomohou vyhnat stíny z mysli, Deionarro."{#deionarra_s7_r724}' if deionarraLogic.r724_condition():
            # a30 # r724
            jump deionarra_s9

        '"Musím jít, Deionarro. Sbohem."{#deionarra_s7_r1312}' if deionarraLogic.r1312_condition():
            # a31 # r1312
            jump deionarra_s15

        '"Musím jít, Deionarro. Sbohem."{#deionarra_s7_r6084}' if deionarraLogic.r6084_condition():
            # a32 # r6084
            jump deionarra_s26


# s8 # say725
label deionarra_s8: # from 7.0 47.2
    nr 'Výraz Deionarry přechází do naštvaného šklebu. "Ty malomocný pse! Zrádče mého srdce! Přeju si, abys byl proklet a aby tě muka prokletí dostala při každé tvé inkarnaci i bez pomoci mé kletby.! Táhni!" Zkřížila ruce a zavřela oči.{#deionarra_s8_}'

    menu:
        '"Dobře…"{#deionarra_s8_r747}' if deionarraLogic.r747_condition():
            # a33 # r747
            $ deionarraLogic.r747_action()
            jump deionarra_dispose

        '"Dobře…"{#deionarra_s8_r1313}' if deionarraLogic.r1313_condition():
            # a34 # r1313
            $ deionarraLogic.r1313_action()
            jump morte_s105  # EXTERN

        'Odejít.{#deionarra_s8_r13255}' if deionarraLogic.r13255_condition():
            # a35 # r13255
            $ deionarraLogic.r13255_action()
            jump deionarra_dispose


# s9 # say726
label deionarra_s9: # from 3.2 3.3 6.1 6.2 7.1 7.2 7.3
    nr '"Och, konečně je osud ke mně milosrdný! Dokonce ani smrt mne nemůže vymazat z tvé paměti, má lásko! Nevidíš? Tvé vzpomínky by se měly vrátit! Řekni mi, jak ti můžu pomoci a já to udělám!"{#deionarra_s9_}'

    menu:
        '"Víš, kdo jsem?"{#deionarra_s9_r729}':
            # a36 # r729
            jump deionarra_s11

        '"Můžeš mi říct kde jsem?"{#deionarra_s9_r730}':
            # a37 # r730
            jump deionarra_s12

        '"Potřebuju se dostat pryč z tohoto místa. Můžeš mi pomoct?"{#deionarra_s9_r731}' if deionarraLogic.r731_condition():
            # a38 # r731
            jump deionarra_s43

        '"Potřebuju se dostat pryč z tohoto místa. Můžeš mi pomoct?"{#deionarra_s9_r732}' if deionarraLogic.r732_condition():
            # a39 # r732
            jump deionarra_s44

        '"Teď nic, Deionarro, já se vrátím. Sbohem."{#deionarra_s9_r1314}' if deionarraLogic.r1314_condition():
            # a40 # r1314
            jump deionarra_s15

        '"Zrovna teď nic, Deionarro, možná se vrátím. Sbohem."{#deionarra_s9_r6127}' if deionarraLogic.r6127_condition():
            # a41 # r6127
            jump deionarra_s0


# s10 # say733
label deionarra_s10: # from 5.0 11.1 12.1 13.1 14.0 25.1 27.2 28.0 30.0 31.1 32.0 34.1 35.1 36.0 41.1 42.0 43.1 44.2 74.0
    nr '"Co si přeješ vědět?"{#deionarra_s10_}'

    menu:
        '"Kdo jsi?"{#deionarra_s10_r734}':
            # a42 # r734
            jump deionarra_s3

        '"Můžeš mi říct kdo jsem?"{#deionarra_s10_r735}':
            # a43 # r735
            jump deionarra_s11

        '"Můžeš mi říct kde jsem?"{#deionarra_s10_r736}':
            # a44 # r736
            jump deionarra_s12

        '"Potřebuju se dostat pryč z tohoto místa. Můžeš mi pomoct?"{#deionarra_s10_r737}' if deionarraLogic.r737_condition():
            # a45 # r737
            jump deionarra_s43

        '"Potřebuju se dostat pryč z tohoto místa. Můžeš mi pomoct?"{#deionarra_s10_r738}' if deionarraLogic.r738_condition():
            # a46 # r738
            jump deionarra_s44

        '"Co to bylo za vizi, o které jsi předtím mluvila?"{#deionarra_s10_r768}' if deionarraLogic.r768_condition():
            # a47 # r768
            jump deionarra_s22

        '"Můžeš odstranit tu kletbu, kterou jsi na mne uvalila?"{#deionarra_s10_r1315}' if deionarraLogic.r1315_condition():
            # a48 # r1315
            jump deionarra_s41

        '"Teď nic, Deionarro, ale ještě se vrátím. Sbohem."{#deionarra_s10_r6107}' if deionarraLogic.r6107_condition():
            # a49 # r6107
            jump deionarra_s15

        '"Zrovna teď nic, Deionarro, možná se vrátím. Sbohem."{#deionarra_s10_r6128}' if deionarraLogic.r6128_condition():
            # a50 # r6128
            jump deionarra_s0


# s11 # say739
label deionarra_s11: # from 6.0 9.0 10.1
    nr '"Ty jsi jak požehnán, tak proklet, má lásko. A jsi ten, kdo nikdy není daleko od mých myšlenek a mého srdce."{#deionarra_s11_}'

    menu:
        '"„Požehnán a proklet?“ Co tím myslíš?"{#deionarra_s11_r740}':
            # a51 # r740
            jump deionarra_s13

        '"Měl bych pro tebe nějaké další otázky…"{#deionarra_s11_r741}':
            # a52 # r741
            jump deionarra_s10

        '"Musím odejít. Sbohem, Deionarro."{#deionarra_s11_r742}' if deionarraLogic.r742_condition():
            # a53 # r742
            jump deionarra_s15

        '"Musím jít. Sbohem, Deionarro."{#deionarra_s11_r1316}' if deionarraLogic.r1316_condition():
            # a54 # r1316
            jump deionarra_s0


# s12 # say743
label deionarra_s12: # from 9.1 10.2
    nr '"Kde jsi? Proč jsi tady se mnou, má lásko… jako za časů, kdy jsme spolu sdíleli náš život. Teď je to Nekonečná hranice, která nás obklopuje."{#deionarra_s12_}'

    menu:
        '"„Nekonečná hranice?“"{#deionarra_s12_r744}':
            # a55 # r744
            jump deionarra_s14

        '"Měl bych pro tebe nějaké další otázky…"{#deionarra_s12_r745}':
            # a56 # r745
            jump deionarra_s10

        '"Musím odejít. Sbohem, Deionarro."{#deionarra_s12_r746}' if deionarraLogic.r746_condition():
            # a57 # r746
            jump deionarra_s15

        '"Musím odejít. Sbohem, Deionarro."{#deionarra_s12_r792}' if deionarraLogic.r792_condition():
            # a58 # r792
            jump deionarra_s0


# s13 # say748
label deionarra_s13: # from 11.0
    nr '"Podstata tvého prokletí by měla být zjevná, má lásko. Podívej se na sebe." ukazuje na tebe prstem. "Smrt tě odmítla. Tvé vzpomínky tě opustily. Nepozastavil ses nad tím nebo nechtěl bys vědět proč?"{#deionarra_s13_}'

    menu:
        '"Pořád se ještě pokouším zorientovat. Co jiného mi můžeš o mé osobě říct?"{#deionarra_s13_r749}':
            # a59 # r749
            jump deionarra_s27

        '"Měl bych nějaké další otázky…"{#deionarra_s13_r750}':
            # a60 # r750
            jump deionarra_s10

        '"Vzpomínky teď stranou… domýšlivá smrt mne zavrhla… proč je to prokletí?"{#deionarra_s13_r751}':
            # a61 # r751
            jump deionarra_s25

        '"Musím odejít. Sbohem, Deionarro."{#deionarra_s13_r790}' if deionarraLogic.r790_condition():
            # a62 # r790
            jump deionarra_s15

        '"Musím jít. Sbohem, Deionarro."{#deionarra_s13_r1318}' if deionarraLogic.r1318_condition():
            # a63 # r1318
            jump deionarra_s0


# s14 # say752
label deionarra_s14: # from 12.0
    nr 'Deionarra se smutkem promlouvá. "Bojím se, že je tu překážka, kterou asi nikdy nepřekonáš, má lásko. Je to překážka mezi tvým životem a tím, co ze mne zůstalo…"{#deionarra_s14_}'

    menu:
        '"A… ha. Snad bys mi mohla odpovědět na nějaké otázky…"{#deionarra_s14_r753}':
            # a64 # r753
            jump deionarra_s10

        '"Musím jít. Sbohem, Deionarro."{#deionarra_s14_r755}' if deionarraLogic.r755_condition():
            # a65 # r755
            jump deionarra_s15

        '"Musím jít. Sbohem, Deionarro."{#deionarra_s14_r1319}' if deionarraLogic.r1319_condition():
            # a66 # r1319
            jump deionarra_s0


# s15 # say756
label deionarra_s15: # from 3.4 5.1 6.3 6.4 7.4 9.4 10.7 11.2 12.2 13.3 14.1 25.2 27.3 28.1 28.3 30.1 31.2 32.1 41.2 41.3 42.1 42.2 43.3 44.3 47.3
    nr '"Počkej chviličku… hodně jsem se naučila, když jsem s Tebou cestovala, má lásko a co ty jsi ztratil, jsem já zachovala. Neprozradila jsem ti všechno, co vím. Můj pohled je jasný… zatímco ty pořád tápeš v temnotách po útržcích myšlenek."{#deionarra_s15_}'

    menu:
        '"Cokoliv mi chceš říct, může počkat. Sbohem."{#deionarra_s15_r757}':
            # a67 # r757
            jump deionarra_s26

        '"Co mi můžeš říct, co by mne mohlo zajímat?"{#deionarra_s15_r758}':
            # a68 # r758
            jump deionarra_s17

        '"Vidí tvůj pohled něco, co nevidím já?"{#deionarra_s15_r759}':
            # a69 # r759
            jump deionarra_s17

        '"Musím jít. Sbohem, Deionarro."{#deionarra_s15_r761}':
            # a70 # r761
            jump deionarra_s26


# s16 # say762
label deionarra_s16: # from 20.0 21.0
    nr 'Deionarra vypadá zaraženě, ale následně se její tón změnil, její hlas se začíná téměř obhajovat. "Já… jsem to nemyslela tak, abych z tebe získala přísahu, má lásko. Řekla jsem to jenom proto, že jsem na tebe tak dlouho čekala, aby ses ke mně připojil do…"{#deionarra_s16_}'

    menu:
        '"Jestli jsi tedy nechtěla, abych přísahal, Deionarro, pak to ani nežádej. A teď mi řekni svou vizi a už nebudeme mluvit o žádných slibech ani přísahách."{#deionarra_s16_r763}':
            # a71 # r763
            jump deionarra_s40


# s17 # say769
label deionarra_s17: # from 15.1 15.2
    nr '"Čas sám o sobě zmírňuje své sevření, jakoby nás pomalu obklopovalo mrazivé zapomnění, má lásko. Záblesky věcí najednou přicházejí houfně do mé vize. Vidím tě, má lásko. Vidím tě jako nyní, ale…" Deionarra najednou utichne.{#deionarra_s17_}'

    menu:
        '"Proč jsi najednou zticha? Že by tě tvoje řeč unavila?"{#deionarra_s17_r770}':
            # a72 # r770
            jump deionarra_s18

        '"Co to je? Co vidíš?"{#deionarra_s17_r771}':
            # a73 # r771
            jump deionarra_s18

        '"Nezajímají mě vize budoucnosti. Sbohem."{#deionarra_s17_r772}':
            # a74 # r772
            jump deionarra_s19


# s18 # say773
label deionarra_s18: # from 17.0 17.1
    nr '"Vidím, co na tebe čeká. Přichází to skrz sféry a zastavuje se to přesně tady. Mám mluvit o tom co vidím?"{#deionarra_s18_}'

    menu:
        '"Řekni mi to."{#deionarra_s18_r774}':
            # a75 # r774
            jump deionarra_s20

        '"Nechci to vědět. Budoucnost se zjeví sama… včas."{#deionarra_s18_r775}':
            # a76 # r775
            jump deionarra_s19


# s19 # say776
label deionarra_s19: # from 17.2 18.1
    nr '"Ty jsi byl vždycky takový, má lásko. Už dokonce odmítáš dávat si pozor na volání smrti. Bude čas další věcí, kterou od sebe odeženeš?" Zavírá oči a s éterickým šepotem se rozplývá.{#deionarra_s19_}'

    menu:
        'Odejdi.{#deionarra_s19_r803}' if deionarraLogic.r803_condition():
            # a77 # r803
            $ deionarraLogic.r803_action()
            jump deionarra_dispose

        'Odejdi.{#deionarra_s19_r6085}' if deionarraLogic.r6085_condition():
            # a78 # r6085
            $ deionarraLogic.r6085_action()
            jump morte_s105  # EXTERN

        'Odejít.{#deionarra_s19_r13256}' if deionarraLogic.r13256_condition():
            # a79 # r13256
            $ deionarraLogic.r13256_action()
            jump deionarra_dispose


# s20 # say777
label deionarra_s20: # from 18.0
    nr '"Nejdříve potřebuji tvůj slib. Slib mi, že se vrátíš. Že najdeš nějaké prostředky, jak mně zachránit nebo se ke mně připojit."{#deionarra_s20_}'

    menu:
        '"Je těžké uvěřit tomu, že žena, kterou miluju, by po mně vyžadovala slib, že se sem vrátím. Ty mi snad nedůvěřuješ, Deionarro?"{#deionarra_s20_r778}' if deionarraLogic.r778_condition():
            # a80 # r778
            jump deionarra_s16

        '"Ta cena slibu je pro mne moc vysoká."{#deionarra_s20_r779}':
            # a81 # r779
            jump deionarra_s21

        'Lež: "Přísahám, že najdu nějaký způsob, jak tě zachránit nebo se k tobě připojit."{#deionarra_s20_r780}':
            # a82 # r780
            $ deionarraLogic.r780_action()
            jump deionarra_s22

        '"Nebudu dělat žádné sliby, přízraku! Neotravuj mne s budoucností… mluv rozumně nebo táhni!"{#deionarra_s20_r781}':
            # a83 # r781
            jump deionarra_s26

        '"Já… udělám co budu moci."{#deionarra_s20_r782}':
            # a84 # r782
            jump deionarra_s40

        'Přísahej: "Přísahám, že najdu způsob, jak tě zachránit, nebo se k tobě přidám."{#deionarra_s20_r6093}':
            # a85 # r6093
            $ deionarraLogic.r6093_action()
            jump deionarra_s22


# s21 # say783
label deionarra_s21: # from 20.1
    nr 'Deionarra si založila ruce. "Skutečně je to tak, má lásko. Cena nesmrtelnosti nebyla, bohužel, zřejmě tak vysoká. Je neporušenost opravdu tak moc za jednu tvou vzpomínku?"{#deionarra_s21_}'

    menu:
        '"Je těžké uvěřit tomu, že žena, kterou miluju, by po mně vyžadovala slib, že se sem vrátím. Ty mi snad nedůvěřuješ, Deionarro?"{#deionarra_s21_r804}':
            # a86 # r804
            jump deionarra_s16

        'Lež: "Přísahám, že najdu nějaký způsob, jak tě zachránit nebo se k tobě připojit."{#deionarra_s21_r805}':
            # a87 # r805
            $ deionarraLogic.r805_action()
            jump deionarra_s22

        '"Nebudu dělat žádné sliby, přízraku! Neotravuj mne s budoucností… mluv rozumně nebo táhni!"{#deionarra_s21_r806}':
            # a88 # r806
            jump deionarra_s26

        '"Já… udělám co budu moci."{#deionarra_s21_r807}':
            # a89 # r807
            jump deionarra_s40

        'Přislíbit: "Přísahám, že najdu nějaký způsob, jak tě zachránit nebo se k tobě připojit."{#deionarra_s21_r808}':
            # a90 # r808
            $ deionarraLogic.r808_action()
            jump deionarra_s22

        '"Možná ano. Sbohem, Deionarro."{#deionarra_s21_r6094}':
            # a91 # r6094
            jump deionarra_s26


# s22 # say784
label deionarra_s22: # from 10.5 20.2 20.5 21.1 21.4 40.0
    nr '"Toto vidí mé oči, má lásko, osvobozená od pout času…"~ [DEN020]{#deionarra_s22_}'

    menu:
        'Čekej na její pokračování.{#deionarra_s22_r786}':
            # a92 # r786
            $ deionarraLogic.r786_action()
            jump deionarra_s23


# s23 # say785
label deionarra_s23: # from 22.0
    nr '"Měl bys potkat tři nepřátele, ale nikdo z nich není tak nebezpečný, jako ty sám v celé své kráse. Jsou to odstíny zla, dobra a neutrality, kterým byl dán život a jež jsou ovládány zákony sfér."~ [DEN021]{#deionarra_s23_}'

    menu:
        'Čekej na její pokračování.{#deionarra_s23_r787}':
            # a93 # r787
            jump deionarra_s24


# s24 # say788
label deionarra_s24: # from 23.0
    nr '"Měl bys přijít do věznice postavené z lítosti a žalu, kde samotné stíny zešílely. Tam budeš požádán, abys podstoupil strašlivou oběť, má lásko. K tomu, abys mohl konečně odpočívat v pokoji, potřebuješ zničit toho, kdo tě drží naživu, takže už potom nebudeš nesmrtelný."~ [DEN022]{#deionarra_s24_}'

    menu:
        '"„Zničit to, co mne drží naživu?“"{#deionarra_s24_r789}':
            # a94 # r789
            jump deionarra_s29


# s25 # say791
label deionarra_s25: # from 13.2 29.0
    nr '"Nepochybuji o tom, že máš schopnost vstávat z mrtvých. Věřím totiž, že každá inkarnace zeslabuje tvé myšlenky a vzpomínky. Tvrdil jsi, žes ztratil paměť. Je to snad vedlejší efekt nesčetných úmrtí? Jestli ano, co dalšího ztratíš při těch následných? Když ztratíš svou mysl, nakonec si ani nebudeš vědom toho, že nemůžeš umřít. Jsi asi skutečně zatracen."{#deionarra_s25_}'

    menu:
        '"„Nesčetných smrtí?“ Jak dlouho tohle už trvá?"{#deionarra_s25_r812}':
            # a95 # r812
            jump deionarra_s30

        '"Měl bych nějaké další otázky…"{#deionarra_s25_r811}':
            # a96 # r811
            jump deionarra_s10

        '"Sbohem, Deionarro."{#deionarra_s25_r813}' if deionarraLogic.r813_condition():
            # a97 # r813
            jump deionarra_s15

        '"Sbohem, Deionarro."{#deionarra_s25_r1320}' if deionarraLogic.r1320_condition():
            # a98 # r1320
            jump deionarra_s0


# s26 # say793
label deionarra_s26: # from 3.5 4.1 6.5 6.6 7.5 15.0 15.3 20.3 21.2 21.5 28.2 47.4
    nr 'Deionarra vypadá rozzuřeně. "Pak tedy odejdi, jako jsi to předtím udělal již stotřikrát! Přišel jsi jen kvůli tomu, abys mne trápil?! Odejdi a už se nevracej!" Zavírá a v nadpozemském tichu se rozplynula.{#deionarra_s26_}'

    menu:
        'Odejdi.{#deionarra_s26_r6081}' if deionarraLogic.r6081_condition():
            # a99 # r6081
            $ deionarraLogic.r6081_action()
            jump deionarra_dispose

        'Odejdi.{#deionarra_s26_r6082}' if deionarraLogic.r6082_condition():
            # a100 # r6082
            $ deionarraLogic.r6082_action()
            jump morte_s105  # EXTERN

        'Odejít.{#deionarra_s26_r13257}' if deionarraLogic.r13257_condition():
            # a101 # r13257
            $ deionarraLogic.r13257_action()
            jump deionarra_dispose


# s27 # say795
label deionarra_s27: # from 13.0
    nr '"Vím, že jsi říkal, že mne miluješ, a že bys mne miloval, dokud by nás smrt nedostala oba dva. Věřila jsem tomu a nikdy jsem nevěděla pravdu o tom, kdo jsi byl a jaký jsi byl."{#deionarra_s27_}'

    menu:
        '"A co jsem?"{#deionarra_s27_r797}' if deionarraLogic.r797_condition():
            # a102 # r797
            jump deionarra_s28

        '"A co jsem?"{#deionarra_s27_r66911}' if deionarraLogic.r66911_condition():
            # a103 # r66911
            jump deionarra_s72

        '"Měl bych nějaké další otázky…"{#deionarra_s27_r796}':
            # a104 # r796
            jump deionarra_s10

        '"Sbohem, Deionarro."{#deionarra_s27_r798}' if deionarraLogic.r798_condition():
            # a105 # r798
            jump deionarra_s15

        '"Sbohem, Deionarro."{#deionarra_s27_r1321}' if deionarraLogic.r1321_condition():
            # a106 # r1321
            jump deionarra_s0


# s28 # say799
label deionarra_s28: # from 27.0
    nr '"Už jsme o tvé osobě mluvili předtím." Obličej Deionarry nabral chladný výraz. "Už se o tom znovu bavit nehodlám."{#deionarra_s28_}'

    menu:
        '"V pořádku… Měl bych nějaké další otázky…"{#deionarra_s28_r800}':
            # a107 # r800
            jump deionarra_s10

        '"Tvrdila jsi, že mne znáš, ale teď to vypadá, že v podstatě o mně opravdu víš jen velmi málo. Sbohem, Deionarro."{#deionarra_s28_r801}' if deionarraLogic.r801_condition():
            # a108 # r801
            jump deionarra_s15

        '"Tvrdila jsi, že mne znáš, ale teď to vypadá, že v podstatě o mně opravdu víš jen velmi málo. Sbohem, Deionarro."{#deionarra_s28_r802}' if deionarraLogic.r802_condition():
            # a109 # r802
            jump deionarra_s26

        '"Pak tedy sbohem, Deionarro."{#deionarra_s28_r1322}' if deionarraLogic.r1322_condition():
            # a110 # r1322
            jump deionarra_s15

        '"Pak tedy sbohem, Deionarro."{#deionarra_s28_r1323}' if deionarraLogic.r1323_condition():
            # a111 # r1323
            jump deionarra_s0


# s29 # say809
label deionarra_s29: # from 24.0
    nr '"Vím, že musíš umřít… dokud to stále ještě jde. Kruh se *musí* uzavřít, má lásko. Nejsi určen pro takovýto život. Musíš najít ten život, který ti byl odepřen a projít skrz, do země mrtvých."~ [DEN023]{#deionarra_s29_}'

    menu:
        '"„Zemřít dokud to stále ještě jde?“"{#deionarra_s29_r810}':
            # a112 # r810
            $ deionarraLogic.j26087_s29_r810_action()
            jump deionarra_s25


# s30 # say814
label deionarra_s30: # from 25.0
    nr '"Já skutečně nevím. Výjimkou je ta, která trvala dostatečně dlouho."{#deionarra_s30_}'

    menu:
        '"Měl bych nějaké další otázky…"{#deionarra_s30_r815}':
            # a113 # r815
            jump deionarra_s10

        '"Sbohem, Deionarro."{#deionarra_s30_r816}' if deionarraLogic.r816_condition():
            # a114 # r816
            jump deionarra_s15

        '"Sbohem, Deionarro."{#deionarra_s30_r1324}' if deionarraLogic.r1324_condition():
            # a115 # r1324
            jump deionarra_s0


# s31 # say817
label deionarra_s31: # from 45.0
    nr '"Portály jsou díry v prostoru, vedoucí k cílům ve vnějších a vnitřních sférách… kdybys našel ten správný klíč, mohl bys utéct jedním z těchto portálů."{#deionarra_s31_}'

    menu:
        '"Klíč?"{#deionarra_s31_r819}':
            # a116 # r819
            jump deionarra_s32

        '"Měl bych nějaké další otázky…"{#deionarra_s31_r818}':
            # a117 # r818
            jump deionarra_s10

        '"Sbohem, Deionarro."{#deionarra_s31_r820}' if deionarraLogic.r820_condition():
            # a118 # r820
            jump deionarra_s15

        '"Sbohem, Deionarro."{#deionarra_s31_r1325}' if deionarraLogic.r1325_condition():
            # a119 # r1325
            jump deionarra_s0


# s32 # say821
label deionarra_s32: # from 31.0
    nr 'Deionarra se na chvíli odmlčí, jakoby se pokoušela na něco vzpomenout. "Portály se zjevují, když máš u sebe ten správný „klíč.“ Bohužel, těmito klíči může být opravdu téměř cokoliv… vzrušení, kousek dřeva, stříbřitě třpytivá dýka, ústřižek látky nebo melodie, kterou si pobroukáváš… obávám se, že pouze Spalovači jsou ti, kdož vědí o klíči, který bys měl použít k útěku z jejich hal, má lásko."{#deionarra_s32_}'

    menu:
        '"Aha. Měl bych nějaké další otázky…"{#deionarra_s32_r824}':
            # a120 # r824
            jump deionarra_s10

        '"Pak se tedy jednoho z nich na to zeptám. Sbohem, Deionarro."{#deionarra_s32_r823}' if deionarraLogic.r823_condition():
            # a121 # r823
            jump deionarra_s15

        '"Pak se tedy jednoho z nich zeptám. Sbohem, Deionarro."{#deionarra_s32_r1326}' if deionarraLogic.r1326_condition():
            # a122 # r1326
            jump deionarra_s0


# s33 # say6083
label deionarra_s33: # from 4.0
    nr '"Nemám pro tebe odpovědi! Tvé nevěrné srdce tě zavedlo sem, tak ať tě odtud i vyvede! A teď odejdi!"{#deionarra_s33_}'

    menu:
        'Lež: "Tohle není Deionarra, na niž si vzpomínám. Deionarra, kterou jsem miloval byla laskavá, něžná… a nikdy neodmítla pomoci duši v nouzi. Opravdu jsi klesla tak hluboko?"{#deionarra_s33_r6129}' if deionarraLogic.r6129_condition():
            # a123 # r6129
            $ deionarraLogic.r6129_action()
            jump deionarra_s35

        '"Potřebuji tvou pomoc, Deionarro. Odvrhneš mne, když tě nejvíc potřebuju?"{#deionarra_s33_r6130}':
            # a124 # r6130
            jump deionarra_s37

        'Bluf: "Tedy dobrá. Budu respektovat tvé přání, Deionarro… odejdu a nikdy se nevrátím."{#deionarra_s33_r6131}' if deionarraLogic.r6131_condition():
            # a125 # r6131
            $ deionarraLogic.r6131_action()
            jump deionarra_s34

        'Bluf: "Tedy dobrá. Budu respektovat tvé přání, Deionarro… odejdu a nikdy se nevrátím."{#deionarra_s33_r6132}' if deionarraLogic.r6132_condition():
            # a126 # r6132
            $ deionarraLogic.r6132_action()
            jump deionarra_s34

        '"Je mi líto, že jsem ti ublížil, Deionarro. Odejdu a nebudu tě už mučit."{#deionarra_s33_r6133}':
            # a127 # r6133
            $ deionarraLogic.r6133_action()
            jump deionarra_s34

        'Potichu odejdi.{#deionarra_s33_r6134}':
            # a128 # r6134
            jump deionarra_s48


# s34 # say6086
label deionarra_s34: # from 33.2 33.3 33.4
    nr 'Zuřivý výraz v tváři Deionarry se rozplynul - rychlost změny je stejně strašidelná jako zoufalství, které se jí ve tváři zračí teď. "Ne! Počkej, má lásko." Její hlas zni prosebně. "Prosím odpusť! Prosím tě! Neopouštěj mě!"{#deionarra_s34_}'

    menu:
        '"Deionarro, má trpělivost mizí, tvé výbuchy mě nebaví. Pokud máme mluvit dál, *budeš* se ovládat, nebo už si s tebou nikdy nepromluvím. Budeš sama. Je ti to jasné?"{#deionarra_s34_r6095}':
            # a129 # r6095
            $ deionarraLogic.r6095_action()
            jump deionarra_s36

        '"Odpouštím ti. A teď potřebuju tvou pomoc, Deionarro."{#deionarra_s34_r6096}':
            # a130 # r6096
            jump deionarra_s10


# s35 # say6087
label deionarra_s35: # from 33.0
    nr 'Zuřivý výraz v tváři Deionarry se rozplynul - rychlost změny je stejně strašidelná jako zoufalství, které se jí ve tváři zračí teď. "Ne… ne, jsem stále ta Deionarra, kterou si pamatuješ, má lásko. Prosím, odpusť mi, má lásko. Prosím."{#deionarra_s35_}'

    menu:
        '"Deionarro, má trpělivost mizí, tvé výbuchy mě nebaví. Pokud máme mluvit dál, *budeš* se ovládat, nebo už si s tebou nikdy nepromluvím. Budeš sama. Je ti to jasné?"{#deionarra_s35_r6097}':
            # a131 # r6097
            $ deionarraLogic.r6097_action()
            jump deionarra_s36

        '"Odpouštím ti. A teď potřebuju tvou pomoc, Deionarro."{#deionarra_s35_r6098}':
            # a132 # r6098
            jump deionarra_s10


# s36 # say6088
label deionarra_s36: # from 34.0 35.0
    nr 'Hlas jí přešel do slabého šeptání. "Ano… ano, prosím. Neopouštěj mě." Díky jejímu prosebnému výrazu ti přeběhl mráz po zádech - ale ne ze strachu. Je ti to příjemné. Máš pocit, že to není poprvé, kdy jsi touhle ženou takto manipuloval.{#deionarra_s36_}'

    menu:
        '"Poslouchej, Deionarro. Mám pro tebe pár otázek…"{#deionarra_s36_r6099}':
            # a133 # r6099
            jump deionarra_s10


# s37 # say6089
label deionarra_s37: # from 33.1 47.0
    nr '"Odvrhnout *tebe?!* Ty se OPOVAŽUJEŠ obvinit mě, že tě ODVRHUJU?!" Deionarra máchla rukama a zamířila je na tebe, ukazováčky ti míří přímo do obličeje. Vypadá to jako nějaký druh čarodějnictví. "Ty se OPOVAŽUJEŠ!"{#deionarra_s37_}'

    menu:
        '"Ticho! Poslouchej, duchu! Ztrácím trpělivost---"{#deionarra_s37_r6100}':
            # a134 # r6100
            $ deionarraLogic.r6100_action()
            jump deionarra_s38

        'Připrav se k obraně.{#deionarra_s37_r6101}':
            # a135 # r6101
            $ deionarraLogic.r6101_action()
            jump deionarra_s38


# s38 # say6090
label deionarra_s38: # from 37.0 37.1
    nr '"Shoř! Ať shoříš, jakoby tě plameny Baatoru stravovaly zevnitř! Shoř a věz že je to jenom *zlomek* mé nenávisti, kterou k tobě cítím! Proklínám tě--- proklínám tě celým svým srdcem a svou duší. Nikdy se neuvolníš z řetězů svého odporného neživota. Trp a umírej a tvá mysl bude slábnout a rozpadat se stejně jako tvé hnijící tělo!"{#deionarra_s38_}'

    menu:
        '"Dej si pozor na své kletby, ženo! Nemám trpělivost s---"{#deionarra_s38_r6102}':
            # a136 # r6102
            jump deionarra_s39

        '"Deionarro! Počkej,přišel jsem se omluvit…"{#deionarra_s38_r6103}':
            # a137 # r6103
            jump deionarra_s39


# s39 # say6091
label deionarra_s39: # from 38.0 38.1
    nr '"Jakmile je jednou kletba vyslovena, nedá se vrátit zpět." Deionařin hlas přešel do zasyčení: "Věz toto: já mám celou věčnost, „má lásko.“ Počkám si, až vejdeš do hal smrti." Usmála se, ale v tom úsměvu není žádná radost. "Zase *budeme* spolu."{#deionarra_s39_}'

    menu:
        '"Vydrž chvíli! Chci si promluvit -"{#deionarra_s39_r6104}':
            # a138 # r6104
            jump deionarra_s48

        '"Odvolej to! Varuju tě---"{#deionarra_s39_r6105}':
            # a139 # r6105
            jump deionarra_s48


# s40 # say6092
label deionarra_s40: # from 16.0 20.4 21.3
    nr 'Deionarra ztuhla. Vypadá to, že chtěla něco říct, ale pak to vzdala a vzdychla. "Dobrá, má lásko… stejně jako předtím ti musím důvěřovat." Zavřela oči.{#deionarra_s40_}'

    menu:
        'Počkej…{#deionarra_s40_r6106}':
            # a140 # r6106
            jump deionarra_s22


# s41 # say6108
label deionarra_s41: # from 10.6
    nr 'Deionarra smutně zavrtěla hlavou. "Jakmile je tato kletba vyslovena, nedá se odvolat. Odpusť mi, má lásko."{#deionarra_s41_}'

    menu:
        '"Copak ji nedokáže někdo odstranit?"{#deionarra_s41_r6110}':
            # a141 # r6110
            jump deionarra_s42

        '"Já… aha. Chtěl jsem se tě ještě na něco zeptat."{#deionarra_s41_r6111}':
            # a142 # r6111
            jump deionarra_s10

        '"Myslím, že teď už je trochu pozdě žádat odpuštění. Sbohem, Deionarro."{#deionarra_s41_r6112}' if deionarraLogic.r6112_condition():
            # a143 # r6112
            jump deionarra_s15

        '"Možná mi někdo pomůže. Sbohem, Deionarro."{#deionarra_s41_r6113}' if deionarraLogic.r6113_condition():
            # a144 # r6113
            jump deionarra_s15

        '"Myslím, že teď už je trochu pozdě žádat odpuštění. Sbohem, Deionarro."{#deionarra_s41_r6114}' if deionarraLogic.r6114_condition():
            # a145 # r6114
            jump deionarra_s0

        '"Možná mi někdo pomůže. Sbohem, Deionarro."{#deionarra_s41_r6115}' if deionarraLogic.r6115_condition():
            # a146 # r6115
            jump deionarra_s0


# s42 # say6109
label deionarra_s42: # from 41.0
    nr '"Pokud ano, nevím o tom." Deionarra se tváří nadějně. "Ale jsou jiní, mocnější než já, kteří by to mohli dokázat. Znovu tě prosím o odpuštění, má lásko. Nevěděla jsem, co dělám."{#deionarra_s42_}'

    menu:
        '"Chtěl jsem se tě ještě na něco zeptat."{#deionarra_s42_r6116}':
            # a147 # r6116
            jump deionarra_s10

        '"Myslím, že teď už je trochu pozdě žádat odpuštění. Sbohem, Deionarro."{#deionarra_s42_r6117}' if deionarraLogic.r6117_condition():
            # a148 # r6117
            jump deionarra_s15

        '"Možná mi někdo pomůže. Sbohem, Deionarro."{#deionarra_s42_r6118}' if deionarraLogic.r6118_condition():
            # a149 # r6118
            jump deionarra_s15

        '"Myslím, že teď už je trochu pozdě žádat odpuštění. Sbohem, Deionarro."{#deionarra_s42_r6119}' if deionarraLogic.r6119_condition():
            # a150 # r6119
            jump deionarra_s0

        '"Možná mi někdo pomůže. Sbohem, Deionarro."{#deionarra_s42_r6120}' if deionarraLogic.r6120_condition():
            # a151 # r6120
            jump deionarra_s0


# s43 # say6121
label deionarra_s43: # from 9.2 10.3 44.0
    nr '"Odejít…?" Deionařin hlas přešel v zasyčení. Pak zvedla hlas: "*ODEJÍT?!* Ty se ptáš mě, která jsem zde uvězněná kvůli tobě, jak odejít z tohoto místa?!"{#deionarra_s43_}'

    menu:
        '"Ano, musím odtud utéct. Znáš cestu ven?"{#deionarra_s43_r6137}':
            # a152 # r6137
            jump deionarra_s47

        '"Omlouvám se za svoji prosbu. Nechtěl jsem tě nějak urazit. Prosím, měl bych ještě nějaké otázky…"{#deionarra_s43_r6138}':
            # a153 # r6138
            jump deionarra_s10

        '"Deionarro, jsem v nebezpečí. Mohla bys mne dovést na nějaké bezpečné místo? Vrátím se, abychom si spolu mohli opět promluvit, jak jen to bude možné."{#deionarra_s43_r6139}' if deionarraLogic.r6139_condition():
            # a154 # r6139
            jump deionarra_s46

        '"Musím odejít. Sbohem, Deionarro."{#deionarra_s43_r6140}' if deionarraLogic.r6140_condition():
            # a155 # r6140
            jump deionarra_s15

        '"Musím odejít. Sbohem, Deionarro."{#deionarra_s43_r6141}' if deionarraLogic.r6141_condition():
            # a156 # r6141
            jump deionarra_s0


# s44 # say6122
label deionarra_s44: # from 9.3 10.4
    nr 'Už ses málem zeptal, když se ti slova najednou zadrhla v krku. Napadlo tě, že jestli se zeptáš, jak odtud uniknout, mohla by si myslet, že jí opouštíš. Pokud se jí chceš zeptat jak odejít, budeš muset být velice opatrný.{#deionarra_s44_}'

    menu:
        '"Můžeš mi říct, jak se odtud dostanu?"{#deionarra_s44_r6142}':
            # a157 # r6142
            jump deionarra_s43

        '"Deionarro, jsem v nebezpečí. Mohla bys mne dovést na nějaké bezpečné místo? Vrátím se, abychom si spolu mohli opět promluvit, jak jen to bude možné."{#deionarra_s44_r6143}':
            # a158 # r6143
            jump deionarra_s46

        '"Mám na tebe nějaké jiné otázky…"{#deionarra_s44_r6144}':
            # a159 # r6144
            jump deionarra_s10

        '"Musím odejít. Sbohem, Deionarro."{#deionarra_s44_r6145}' if deionarraLogic.r6145_condition():
            # a160 # r6145
            jump deionarra_s15

        '"Musím odejít. Sbohem, Deionarro."{#deionarra_s44_r6146}' if deionarraLogic.r6146_condition():
            # a161 # r6146
            jump deionarra_s0


# s45 # say6123
label deionarra_s45: # from 46.0 46.1
    nr '"Cítím, že toto místo má mnoho dveří zakrytých před zrakem smrtelníků. Možná bys mohl použít jeden z těchto portálů jako prostředek útěku."{#deionarra_s45_}'

    menu:
        '"Portály?"{#deionarra_s45_r6124}':
            # a162 # r6124
            jump deionarra_s31


# s46 # say6125
label deionarra_s46: # from 43.2 44.1 47.1
    nr '"V nebezpečí?" Deionarra vypadá zaujatě. "Samozřejmě, má lásko. Pomohu, jakkoliv budu moci…" Na chvíli zavřela oči a ty vidíš éterický vánek procházející jejím tělem, čechrajíce jí vlasy. Po chvíli vánek utichl a její oči se pomalu otevřely. "Možná by se to dalo udělat takto."{#deionarra_s46_}'

    menu:
        '"Ano?"{#deionarra_s46_r6147}' if deionarraLogic.r6147_condition():
            # a163 # r6147
            jump deionarra_s45

        '"Ano?"{#deionarra_s46_r6148}' if deionarraLogic.r6148_condition():
            # a164 # r6148
            $ deionarraLogic.r6148_action()
            jump deionarra_s45


# s47 # say6135
label deionarra_s47: # from 43.0
    nr '"Přicházíš za mnou ve smrti jen proto, abys mi řekl, že potřebuješ moji pomoc, abys mne mohl *zase* opustit?!" Její tvář je maskou zuřivosti. "*Zemřela jsem* pro tebe, má lásko. Ještě teď za to *trpím!*"{#deionarra_s47_}'

    menu:
        '"Deionarro, prosím… potřebuji tvou pomoc. Odvrhneš mne, když tě nejvíc potřebuju?"{#deionarra_s47_r6149}':
            # a165 # r6149
            jump deionarra_s37

        '"Deionarro, ptám se jen proto, že jsem v nebezpečí. Mohla bys mne dovést na nějaké bezpečné místo? Vrátím se, abychom si spolu mohli opět promluvit, jak jen to bude možné."{#deionarra_s47_r6150}' if deionarraLogic.r6150_condition():
            # a166 # r6150
            jump deionarra_s46

        '"Nevadí. Poslyš, mám ještě nějaké otázky…"{#deionarra_s47_r6151}':
            # a167 # r6151
            jump deionarra_s8

        '"Musím odejít. Sbohem, Deionarro."{#deionarra_s47_r6152}' if deionarraLogic.r6152_condition():
            # a168 # r6152
            jump deionarra_s15

        '" Musím odejít. Sbohem, Deionarro."{#deionarra_s47_r6153}' if deionarraLogic.r6153_condition():
            # a169 # r6153
            jump deionarra_s26


# s48 # say6136
label deionarra_s48: # from 33.5 39.0 39.1
    nr 'Deionarra zavřela oči a s nehmotným šuměním zmizela.{#deionarra_s48_}'

    menu:
        'Odejdi.{#deionarra_s48_r6154}' if deionarraLogic.r6154_condition():
            # a170 # r6154
            $ deionarraLogic.r6154_action()
            jump deionarra_dispose

        'Odejdi.{#deionarra_s48_r6155}' if deionarraLogic.r6155_condition():
            # a171 # r6155
            $ deionarraLogic.r6155_action()
            jump morte_s105  # EXTERN

        'Odejít.{#deionarra_s48_r13258}' if deionarraLogic.r13258_condition():
            # a172 # r13258
            $ deionarraLogic.r13258_action()
            jump deionarra_dispose


# s49 # say63356
label deionarra_s49: # - # IF WEIGHT #3 ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    nr 'Vidíš před sebou překvapivě krásnou spektrální formu; má dlouhé, uvolněné vlasy, a její šaty vypadají, jako by se chvěly nějakým éterickým vánkem. Její oči spočinuly na tobě, a ty získáváš cizí nesouvislý pocit, jako kdyby jsi se díval do několika párů očí najednou.{#deionarra_s49_}'

    menu:
        '"Ty jsi Deionarra…?"{#deionarra_s49_r63357}':
            # a173 # r63357
            jump deionarra_s51


# s50 # say63358
label deionarra_s50: # - # IF WEIGHT #4 ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    nr 'Před tebou je spektrální forma Deionarry; její šaty vypadají, jako by se chvěly nějakým éterickým vánkem. Její oči spočinuly na tobě, a ty získáváš cizí nesouvislý pocit, jako kdyby jsi se díval do několika párů očí najednou.{#deionarra_s50_}'

    menu:
        '"Deionarro…?"{#deionarra_s50_r63359}':
            # a174 # r63359
            jump deionarra_s51


# s51 # say63360
label deionarra_s51: # from 49.0 50.0
    nr '"Má Lásko, konečně jsem tě *našla*… Hledala jsem tě od té doby, co jsi byl rozdělen krystalem - tato pevnost se rozpíná na stovkách mil, a já jsem se bála, že jsi pro mne ztracený." Její strašidelné oči si tě změřily, hledaje na tvém těle nová zranění. "Jsi v pořádku?"{#deionarra_s51_}'

    menu:
        '"Myslím, že ano - krystal mne rozdělil, ale jsem zase jeden. Avšak teď jsem zde uvězněn."{#deionarra_s51_r63362}':
            # a175 # r63362
            jump deionarra_s52


# s52 # say63363
label deionarra_s52: # from 51.0
    nr '"Mám podezření, že tvé uvěznění zde bylo skutečným účelem krystalu. Ale to není žádná překážka pro někoho jako jsem já." Zavřela oči. "Mé oči toho mnoho spatřily, a sály pevnosti znám velmi dobře."{#deionarra_s52_}'

    jump deionarra_s53


# s53 # say63364
label deionarra_s53: # from 52.0 58.0 59.0
    nr '"Pokud jsi zde uvězněn, má Lásko, podívám se, jak tě vysvobodit. Kam chceš jít?"{#deionarra_s53_}'

    menu:
        '"Chci najít svého protivníka a porazit ho."{#deionarra_s53_r63365}':
            # a176 # r63365
            jump deionarra_s54

        '"Přál bych si jít tam, kde je má smrtelnost - a obnovit ji."{#deionarra_s53_r63366}':
            # a177 # r63366
            jump deionarra_s54

        '"Přál bych si se připojit ke svým přátelům."{#deionarra_s53_r63367}' if deionarraLogic.r63367_condition():
            # a178 # r63367
            jump deionarra_s54

        '"Přál bych si se připojit ke svým společníkům. Jsou určité věci, které od nich potřebuji."{#deionarra_s53_r63368}' if deionarraLogic.r63368_condition():
            # a179 # r63368
            jump deionarra_s54

        '"Přál bych si s tebou chvíli povídat a říci ti jak jsi zemřela… a proč."{#deionarra_s53_r63369}' if deionarraLogic.r63369_condition():
            # a180 # r63369
            jump deionarra_s55


# s54 # say63370
label deionarra_s54: # from 53.0 53.1 53.2 53.3
    nr '"Jak si přeješ, Má Lásko." Natáhla ruku. "Dotkni se mé ruky, a stěny této pevnosti již více stěny nebudou."{#deionarra_s54_}'

    menu:
        'Dotkni se její ruky…{#deionarra_s54_r63371}' if deionarraLogic.r63371_condition():
            # a181 # r63371
            $ deionarraLogic.r63371_action()
            jump deionarra_dispose

        'Dotkni se její ruky…{#deionarra_s54_r64594}' if deionarraLogic.r64594_condition():
            # a182 # r64594
            $ deionarraLogic.r64594_action()
            jump deionarra_dispose


# s55 # say63372
label deionarra_s55: # from 53.4
    nr '"O čem to mluvíš?"{#deionarra_s55_}'

    menu:
        'Pravda: "Když jsem tě přivedl do této pevnosti, bylo mým záměrem, abys zde zemřela. Potřeboval jsem někoho, kdo by tady zůstal, aby mohl sloužit jako spojení s tímto místem. Já vím, že jsi mne tak moc milovala, že tvá láska odvrátí smrt a dovolí ti stát se duchem. A proto tu teď trpíš."{#deionarra_s55_r63373}':
            # a183 # r63373
            $ deionarraLogic.r63373_action()
            jump deionarra_s56

        'Lež: "Když jsi zemřela v této pevnosti, bylo to kvůli protivníkovi, který na nás čekal. Přál si, abys zde zemřela, takže bychom byli odděleni. Brzy se mu půjdu postavit a pomstím se mu."{#deionarra_s55_r63374}':
            # a184 # r63374
            $ deionarraLogic.r63374_action()
            jump deionarra_s58


# s56 # say63375
label deionarra_s56: # from 55.0
    nr 'Zatímco mluvíš, zůstává tvář Deionarry nehybná jako maska.{#deionarra_s56_}'

    menu:
        'Lež: "Je mi líto Deionarro."{#deionarra_s56_r63376}':
            # a185 # r63376
            $ deionarraLogic.r63376_action()
            jump deionarra_s57

        'Pravda: "Je mi líto Deionarro."{#deionarra_s56_r63377}':
            # a186 # r63377
            $ deionarraLogic.r63377_action()
            jump deionarra_s57

        'Pravda: "Bylo to nezbytné, Deionarro - je mi líto, že jsi trpěla."{#deionarra_s56_r63378}':
            # a187 # r63378
            jump deionarra_s57


# s57 # say63379
label deionarra_s57: # from 56.0 56.1 56.2
    nr '"*Miluješ* mne? Pokud řekneš ano, má Lásko, pak na ničem co se stalo nezáleží."{#deionarra_s57_}'

    menu:
        'Lež: "Samozřejmě tě miluji. Dokonce ani smrt nemůže zničit pouto mezi námi."{#deionarra_s57_r63380}':
            # a188 # r63380
            $ deionarraLogic.r63380_action()
            jump deionarra_s58

        'Pravda: "Ačkoliv jsem to nejdříve nepoznal, zamiloval jsem se do tebe. Tvé utrpení se stalo i mým, a já jsem zjistil, že udělám co mohu abych ti pomohl."{#deionarra_s57_r63381}':
            # a189 # r63381
            $ deionarraLogic.r63381_action()
            jump deionarra_s58

        'Pravda: "Je mi líto, Deionarro. Ne. Nikdy jsem tě neznal. Snad kdybych se s tebou setkal za jiných okolností…"{#deionarra_s57_r63382}':
            # a190 # r63382
            $ deionarraLogic.r63382_action()
            jump deionarra_s59


# s58 # say63383
label deionarra_s58: # from 55.1 57.0 57.1
    nr '"Pak ti pomohu, má Lásko. Řekni mi jak ti mohu pomoci, a já to udělám."{#deionarra_s58_}'

    menu:
        '"Jsem zde uvězněn. Můžeš mi pomoci uniknout?"{#deionarra_s58_r63384}':
            # a191 # r63384
            $ deionarraLogic.r63384_action()
            jump deionarra_s53


# s59 # say63385
label deionarra_s59: # from 57.2
    nr '"Pak… tohle bude konec věcí mezi námi, má Lásko. Zůstávala jsem zde kvůli tobě - z žádného jiného důvodu. Naposledy ti pomohu, pak pocestuji za Hranici Věčnosti, jak jsem si předsevzala."{#deionarra_s59_}'

    menu:
        '"Pak se tě zeptám na poslední věc a odejdu v míru: Jsem zde uvězněn. Můžeš mi pomoci?"{#deionarra_s59_r63386}':
            # a192 # r63386
            jump deionarra_s53


# s60 # say63387
label deionarra_s60: # - # IF WEIGHT #6 /* Triggers after states #: 62 even though they appear after this state */ ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    nr 'Vidíš překvapivě krásnou spektrální formu; má dlouhé, rozpuštěné vlasy, a její šaty vypadají, jako by se chvěly nějakým éterickým vánkem. Stojí na okraji cesty z černých kamenů a strnule zírá do prázdnoty Sféry.{#deionarra_s60_}'

    menu:
        '"Kdo jsi?"{#deionarra_s60_r63388}':
            # a193 # r63388
            $ deionarraLogic.r63388_action()
            jump deionarra_s62

        'Zanech spektrální postavu o samotě.{#deionarra_s60_r63389}':
            # a194 # r63389
            jump deionarra_dispose


# s61 # say63390
label deionarra_s61: # - # IF WEIGHT #7 /* Triggers after states #: 62 even though they appear after this state */ ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    nr 'Před tebou je spektrální forma Deionarry; její šaty vypadají, jako by se chvěly nějakým éterickým vánkem. Stojí na okraji cesty z černých kamenů a strnule zírá do prázdnoty Sféry.{#deionarra_s61_}'

    menu:
        '"Deionarro…?"{#deionarra_s61_r63391}':
            # a195 # r63391
            $ deionarraLogic.r63391_action()
            jump deionarra_s62

        'Zanech Deionarru o samotě.{#deionarra_s61_r63392}':
            # a196 # r63392
            jump deionarra_dispose


# s62 # say63393
label deionarra_s62: # from 60.0 61.0 # IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",1)
    nr '"Má Lásko! *Neměl* bys tu být! Musíš okamžitě odejít!"{#deionarra_s62_}'

    menu:
        '"Proč? Kdo jsi, duchu… co je tohle za místo?"{#deionarra_s62_r63394}' if deionarraLogic.r63394_condition():
            # a197 # r63394
            jump deionarra_s63

        '"Deionarro, co je tohle za místo? Je tohle Pevnost?"{#deionarra_s62_r63395}' if deionarraLogic.r63395_condition():
            # a198 # r63395
            jump deionarra_s63


# s63 # say63396
label deionarra_s63: # from 62.0 62.1
    nr '"Tohle je Pevnost Lítosti. Tohle je místo, které drží v zajetí okamžik mé smrti, a já se nemohu vzdálit od jejich síní. Pokud můžeš najít cestu zpět do Sigilu pak *musíš* odejít; pokud zde zůstaneš, má Lásko, zemřeš."{#deionarra_s63_}'

    menu:
        '"Jsem nesmrtelný, duchu; tvé varování oceňuji, ale smrt mi teď  dělá nejmenší starosti."{#deionarra_s63_r63397}' if deionarraLogic.r63397_condition():
            # a199 # r63397
            jump deionarra_s64

        '"Jsem nesmrtelný, Deionarro; Nemyslím, že si s tím musím dělat starosti, dokonce ani tady ne."{#deionarra_s63_r63398}' if deionarraLogic.r63398_condition():
            # a200 # r63398
            jump deionarra_s64

        '"A co moje nesmrtelnost? Určitě jsem nesmrtelný, dokonce i tady…?"{#deionarra_s63_r63399}':
            # a201 # r63399
            jump deionarra_s64


# s64 # say63400
label deionarra_s64: # from 63.0 63.1 63.2
    nr 'Potřásla hlavou. "Ne, má Lásko. V této Pevnosti je něco - obal, který ji obklopuje ji odřezává od zbytku Sfér. Je to obal, který funguje jako zábrana k tvojí nesmrtelnosti."{#deionarra_s64_}'

    menu:
        '"Skořápka? Sloup mi řekl, že pokud zemřu, zemře za mne někdo jiný. A pokud se nenajde nikdo, kdo by zemřel za mne -"{#deionarra_s64_r63401}' if deionarraLogic.r63401_condition():
            # a202 # r63401
            jump deionarra_s66

        '"Jak může skořápka působit jako zábrana? To nedává smysl."{#deionarra_s64_r63402}' if deionarraLogic.r63402_condition():
            # a203 # r63402
            jump deionarra_s65


# s65 # say63403
label deionarra_s65: # from 64.1
    nr '"Jak jsem se zde snažila udržet vzhůru, dozvěděla jsem se o povaze tvé nesmrtelnosti, má Lásko. Je to věc, která touží po životech jiných. V okamžiku tvé smrti, si vyžádá jinou živou věc z tvého okolí, umožňujíce ti žít. Duše, které zemře místo tebe je přenesena sem, do Pevnosti, jako stín. Věřím, že tato skořápka zabraňuje tvé nesmrtelnosti najít jinou oběť."{#deionarra_s65_}'

    menu:
        '"Takže… když zemřu, zemře místo mne někdo jiný. A pokud nenajde jinou živou věc, která by zemřela *pro* mne…"{#deionarra_s65_r63404}':
            # a204 # r63404
            jump deionarra_s66


# s66 # say63405
label deionarra_s66: # from 64.0 65.0
    nr '"Pak jestliže zde zemřeš, je to konec, protože zde není nic *živého* - takže musíš být opatrný. Vrať se do Sigilu a opusť tohle prokleté místo!"{#deionarra_s66_}'

    menu:
        '"Ale - moji spojenci jsou tady: a to znamená, že jsou uvnitř této skořápky. Co se *jim* stane, když zemřu?"{#deionarra_s66_r63406}' if deionarraLogic.r63406_condition():
            # a205 # r63406
            jump deionarra_s67

        '"Ale - jeden z mých spojenců je tady. To znamená, že je uvnitř této skořápky. Co se stane mému společníku pokud zemřu?"{#deionarra_s66_r63407}' if deionarraLogic.r63407_condition():
            # a206 # r63407
            jump deionarra_s67

        '"Deionarro, můžeš mi říci něco jiného, co by mi mohlo být ku pomoci? Co čeká uvnitř?"{#deionarra_s66_r63408}' if deionarraLogic.r63408_condition():
            # a207 # r63408
            jump deionarra_s68

        '"Duchu, můžeš mi říci něco jiného co by mi mohlo být ku pomoci? Co čeká uvnitř?"{#deionarra_s66_r63409}' if deionarraLogic.r63409_condition():
            # a208 # r63409
            jump deionarra_s68


# s67 # say63410
label deionarra_s67: # from 66.0 66.1
    nr '"Má Lásko, pokud jsi s sebou přivedl *cokoliv*, co s tebou tady žije, potom to je v příšerném nebezpečí - od obojího od stínů a od tebe. Kdybys tady zemřel, tvá nesmrtelnost bude pátrat po něčem živém zavřeném v této Pevnosti, a *to* bude to, co tady zemře. Musíš odtud odejít, hned!"{#deionarra_s67_}'

    menu:
        '"Nemohu *jít* zpátky. Takže můžeš mi říci *něco* jiného co by mi mohlo pomoci? Co čeká uvnitř pevnosti?"{#deionarra_s67_r63411}':
            # a209 # r63411
            jump deionarra_s68


# s68 # say63412
label deionarra_s68: # from 66.2 66.3 67.0
    nr '"Uvnitř Pevnosti je nepřirozená temnota, má Lásko, pouze stíny těch kteří zemřeli na tvém místě. Krmí je energie této Sféry, a jejich nenávist k tobě převažuje nad všemi těmi důvody. Nenechají tě odejít." Vrhla letmý pohled na zdi Pevnosti. "*Nevstupuj*, prosím tě!"{#deionarra_s68_}'

    menu:
        '"Ale - moji spojenci jsou tam uvnitř. Nemohu je opustit. Nenapadá tě, kde by mohli být?"{#deionarra_s68_r63413}' if deionarraLogic.r63413_condition():
            # a210 # r63413
            jump deionarra_s69

        '"Ale - moji spojenci jsou tam uvnitř. Nemohu odejít. Nenapadá tě, kde by mohli být moji druhové?"{#deionarra_s68_r63414}' if deionarraLogic.r63414_condition():
            # a211 # r63414
            jump deionarra_s69

        '"Musím vstoupit do Pevnosti. Nemohu se vrátit."{#deionarra_s68_r63415}' if deionarraLogic.r63415_condition():
            # a212 # r63415
            $ deionarraLogic.j68117_s68_r63415_action()
            jump deionarra_s75


# s69 # say63416
label deionarra_s69: # from 68.0 68.1
    nr '"Pokud jsi sem přivedl jiné, pak od tebe byli odvrženi, když jste přišli - to je povaha tohoto místa, rozdělit živé věci… pak je zabít." Vypadá rozrušeně. "Pevnost je věc mnoha mil - nalézt tvé přátele bude náročné."{#deionarra_s69_}'

    menu:
        '"Musím je najít. V této věci nemám na vybranou."{#deionarra_s69_r63417}':
            # a213 # r63417
            $ deionarraLogic.j68117_s69_r63417_action()
            jump deionarra_s75


# s70 # say63418
label deionarra_s70: # from 75.0
    nr '"Ještě jedna věc…" Deionarra se odmlčela, jako kdyby se pokoušela zachytit letmou vzpomínku. "Uvnitř… uvnitř místnosti jsou veliké hodiny…" Její hlas se ustálil, zjistěl. "Hodiny, se kterými jsi již jednou mluvil, když jsi měl klič k útěku z této místnosti… když jsi tu byl jednou uvězněn předtím." Podívala se na tebe. "Já vím, že tě nemohu zdržovat na tvé cestě, má Lásko -- budu tě sledovat a pomohu ti, pokud budu moci."{#deionarra_s70_}'

    menu:
        '"Přinesl jsem ti tvůj prsten, Deionarro. Našel jsem tvůj odkaz pro mne."{#deionarra_s70_r63419}' if deionarraLogic.r63419_condition():
            # a214 # r63419
            $ deionarraLogic.r63419_action()
            jump deionarra_s71

        '"Máš mé díky, duchu. Už musím jít."{#deionarra_s70_r63420}' if deionarraLogic.r63420_condition():
            # a215 # r63420
            jump deionarra_dispose

        '"Máš mé díky, Deionarro. Už musím jít."{#deionarra_s70_r63421}' if deionarraLogic.r63421_condition():
            # a216 # r63421
            jump deionarra_dispose


# s71 # say63422
label deionarra_s71: # from 70.0
    nr '"Prsten ještě drží část mne v sobě, má Lásko. Když ho neseš, neseš s sebou moje srdce." Zavřela na chvíli oči, a najednou cítíš, jak tebou prochází teplo. Deionarra otevřela oči a usmála se. "Věděla jsem, že se ke mně vrátíš, když ho budeš mít u sebe. Nos ho teď s mým požehnáním, a drž si ho blízko svého srdce. Přes něho tě budu chránit."{#deionarra_s71_}'

    menu:
        '"Máš mé díky, Deionarro. Teď musím jít."{#deionarra_s71_r63423}' if deionarraLogic.r63423_condition():
            # a217 # r63423
            jump deionarra_dispose


# s72 # say66912
label deionarra_s72: # from 27.1
    nr '"Ty… já…nemůžu…" Náhle se zarazila a pak promluvila pomalu, opatrně, jakoby ji ta slova děsila. "Pravda je tato: Ty jsi ten, jenž umírá mnohou smrtí. Tyto smrti ti daly znalost všech smrtelných věcí a v tvých dlaních leží jiskra života… a smrti. Ti, kdož zemřou blízko tebe, si uchovají jiskřičku života, kterou ty můžeš vytáhnout na povrch a vdechnout ji zpět do jejich těla…"{#deionarra_s72_}'

    jump deionarra_s73


# s73 # say66913
label deionarra_s73: # from 72.0
    nr 'Jak Deionarra promluvila tato slova, v hlavě se ti objevil nepříjemný pocit… máš nutkání podívat se na své ruce. Když jsi je zvedl a *podíval* se na ně, VIDÍŠ, jak krev protéká tvou paží, rozlévá se do svalů a dává sílu tvým kostem…{#deionarra_s73_}'

    menu:
        '"Co…"{#deionarra_s73_r66914}':
            # a218 # r66914
            $ deionarraLogic.r66914_action()
            jump deionarra_s74


# s74 # say66915
label deionarra_s74: # from 73.0
    nr 'A náhle víš, že Deionarra má *pravdu*. Vzpomněl sis, jak rozdmýchat vyhaslou jiskřičku života v těle a vytáhnout ji na povrch. Potěšilo tě to, ale zároveň ses i zhrozil. POZNÁMKA: Vzpomněl sis, jak oživit jiné ze smrti. Abys mohl použít tuto schopnost, zvol tlačítko Zvláštní Schopnosti v Rychlém menu. Můžeš ji použít jenom na členy skupiny, kteří zemřou v tvé přítomnosti - nebude to fungovat na nikoho, kdo s tebou necestuje a *nebude* to fungovat na členy skupiny, které z party odstraníš poté, co zemřou.{#deionarra_s74_}'

    menu:
        '"Já… já… Mám pár dalších otázek…"{#deionarra_s74_r66916}':
            # a219 # r66916
            jump deionarra_s10


# s75 # say68114
label deionarra_s75: # from 68.2 69.0
    nr '"Velmi dobře má, lásko… pokud ale chceš jít dále, musíš vědět toto -  za vchodem do Pevnosti je velká komnata, ve které je bezpočet stínů. Musíš se pohybovat rychle a nenechat je, aby tě obklíčili, jinak tě určitě zabijí!"{#deionarra_s75_}'

    jump deionarra_s70
