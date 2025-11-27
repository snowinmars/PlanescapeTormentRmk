init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm257_logic import Zm257Logic
    zm257Logic = Zm257Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM257.DLG
# ###


# s0 # say6507
label zm257_s0: # - # IF ~  True()
    nr 'Oči této mrtvoly jsou těsně u sebe a samotné oční bulvy jsou lehce nakřivo; jedna je obrácená nalevo a druhá napravo. Na jejím rozbitém čele stěží rozpoznáváš číslo „257“ - vypadá to, že mrtvola obdržela několik úderů do hlavy, a proto je číslo tak špatně čitelné.{#zm257_s0_}'

    menu:
        '"Nemáš závrať, když tohle děláš se svýma očima?"{#zm257_s0_r6510}' if zm257Logic.r6510_condition():
            # a0 # r6510
            $ zm257Logic.r6510_action()
            jump zm257_s1

        '"Nemáš závrať, když tohle děláš se svýma očima?"{#zm257_s0_r6511}' if zm257Logic.r6511_condition():
            # a1 # r6511
            jump zm257_s1

        '"Vím, že nejsi zombie, jasný? Mě neoklameš."{#zm257_s0_r6512}' if zm257Logic.r6512_condition():
            # a2 # r6512
            jump zm257_s1

        'Použij svoji schopnost Kosti vyprávějte na mrtvolu.{#zm257_s0_r6513}' if zm257Logic.r6513_condition():
            # a3 # r6513
            jump zm257_s2

        '"Rád jsem si s tebou popovídal. Sbohem."{#zm257_s0_r6514}':
            # a4 # r6514
            jump zm257_dispose

        'Nechej mrtvolu být.{#zm257_s0_r6515}':
            # a5 # r6515
            jump zm257_dispose


# s1 # say6508
label zm257_s1: # from 0.0 0.1 0.2
    nr 'V očích mrtvoly se neobjevil ani záblesk pochopení; jen tiše strnule zírá doleva a doprava.{#zm257_s1_}'

    menu:
        'Nechej mrtvolu být.{#zm257_s1_r6516}':
            # a6 # r6516
            jump zm257_dispose


# s2 # say6509
label zm257_s2: # from 0.3
    nr 'Duch se vrátil do mrtvoly s takovou zuřivostí, až se jí stáhly svaly a přepadla dozadu! Tělo je okamžitě zase zpět na nohou, tancuje a šíleně sebou trhá, vlní rukama a napíná si stehy. Uvolněné maso plácá, jak skáče sem a tam, oči se koulí a kymácí v hlavě, zatímco se šíleně hihňá…{#zm257_s2_}'

    menu:
        '"Ee… Mám na tebe otázku, duchu…"{#zm257_s2_r6517}':
            # a7 # r6517
            jump zm257_s3

        'Nechej ducha o samotě.{#zm257_s2_r9558}':
            # a8 # r9558
            jump zm257_dispose


# s3 # say9553
label zm257_s3: # from 2.0
    nr 'Mrtvola zazpívala, jak vyskočila, a rozhlédla se kolem. Hlasitost a výška jejího hlasu stoupá a zase klesá v náhodných intervalech. "TY jsi DUCH JÁ, ŽIJÍCÍ, zodpovědět mé otázky TY SMÍŠ!" Tvůj zmatený výraz ducha očividně potěšil; strčil si své kostěné prsty do pusy a roztáhl ji do příšerného úšklebku. Nato se začal hlasitě smát a v puse se mu při tom kmital bílý, těstovitý jazyk.{#zm257_s3_}'

    menu:
        '"Tak fajn… jen se zeptej."{#zm257_s3_r9559}':
            # a9 # r9559
            jump zm257_s4

        '"Tak to teda ne. Ty mi odpovíš na *mé* otázky…"{#zm257_s3_r9560}':
            # a10 # r9560
            jump zm257_s5

        'Opusť chaotickou duši.{#zm257_s3_r9561}':
            # a11 # r9561
            jump zm257_s6


# s4 # say9554
label zm257_s4: # from 3.0 4.0 5.0
    nr 'Na chviličku duch umlkl, ale náhle začal hlasitě, nesnesitelně a nesmylně žvatlat. Taková nelibozvučnost je téměř k zbláznění; chvílemi máš pocit, že to nevydržíš a zhroutíš se. Najednou, jak rychle to začalo… tak to i skončilo. Mrtvola stojí před tebou a v tichosti se dloube v nose.{#zm257_s4_}'

    menu:
        '"To jsem zrovna nějak nepostřehnul. Mohl bys mi to zopakovat?"{#zm257_s4_r9562}':
            # a12 # r9562
            $ zm257Logic.r9562_action()
            jump zm257_s4

        '"Nerozumím ti. Ale měl bych otázečku…"{#zm257_s4_r9563}':
            # a13 # r9563
            jump zm257_s5

        '"Nerozumím ti. Sbohem."{#zm257_s4_r9564}':
            # a14 # r9564
            jump zm257_s6


# s5 # say9555
label zm257_s5: # from 3.1 4.1 5.1
    nr 'A opět začal duch zpívat: "Otázky ŽIJÍCÍHO smí zodpovědět MRTVÝ; TAK to bylo, je TO tak, mělo by tak TO BÝT. Ty ZODPOVÍŠ mé otázky!" Tvůj zmatený pohled ho opět potěšil; začal tak divoce vyvádět, až se divíš, že to jeho mrtvé tělo vydrží. Téměř slyšíš, jak jeho kosti vržou a lámou se, jak jeho šlachy praskají, když se tak točí a hází sebou.{#zm257_s5_}'

    menu:
        '"Tak fajn… jen se ptej."{#zm257_s5_r9565}':
            # a15 # r9565
            jump zm257_s4

        '"Nerozumíš. Mám otázku pro *tebe*…"{#zm257_s5_r9566}':
            # a16 # r9566
            jump zm257_s5

        'Vzdej to a odejdi od žvatlajícího ducha.{#zm257_s5_r9567}':
            # a17 # r9567
            jump zm257_s6


# s6 # say9556
label zm257_s6: # from 3.2 4.2 5.2
    nr 'Jak duch s bláznivými nápady opouští své mrtvé tělo, zkroutí se ústa mrtvoly do významného úsměvu. Její nespoutaně blýskající oči se do tebe zavrtávají s pronikavou září divokosti a pak zašeptá osamocené, pečlivě formulované slovo "Limbo…"{#zm257_s6_}'

    menu:
        '"Co?"{#zm257_s6_r9568}':
            # a18 # r9568
            jump zm257_s7

        'Ignoruj to, otoč se pryč.{#zm257_s6_r9569}':
            # a19 # r9569
            jump zm257_dispose


# s7 # say9557
label zm257_s7: # from 6.0
    nr '…a s těmi slovy opustila duše tento svět a zanechala tě tu o nic bohatšího s pocitem mírného znepokojení. Zombie se tiše vrátila ke své práci.{#zm257_s7_}'

    jump zm257_dispose
