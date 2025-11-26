init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm732_logic import Zm732Logic
    zm732Logic = Zm732Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM732.DLG
# ###


# s0 # say6529
label zm732_s0: # from 4.0 # IF ~  !HasItem("TomeBA","ZM732")
    nr 'Vetchá mrtvola má sešité oči i ústa a v jejím obočí je vyřezáno číslo "732". Způsob šití, které udržuje její oční dutiny zapečetěné, vypadá neobyčejně staře… rozvažuješ se, zda oči byly sešity před, nebo až po smrti tohoto muže.'

    menu:
        '"Omlouvám se, že ti beru tuto knihu… vypadá příliš zajímavě na to, abych se jí zřekl."' if zm732Logic.r6533_condition():
            # a0 # r6533
            $ zm732Logic.r6533_action()
            jump zm732_s1

        '"Omlouvám se, že ti beru tuto knihu…  vypadá příliš zajímavě na to, abych se jí zřekl."' if zm732Logic.r6532_condition():
            # a1 # r6532
            jump zm732_s1

        '"Vím, že nejsi zombie, jasný? Mě neoklameš."' if zm732Logic.r6534_condition():
            # a2 # r6534
            jump zm732_s1

        'Použij svou schopnost  Kosti-vyprávějte na tělo.' if zm732Logic.r6535_condition():
            # a3 # r6535
            jump zm732_s2

        '"Rád jsem si s tebou popovídal. Sbohem."':
            # a4 # r6536
            jump zm732_dispose

        'Nechej mrtvolu být.':
            # a5 # r6537
            jump zm732_dispose


# s1 # say6530
label zm732_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe stále zírá.'

    menu:
        'Nechej mrtvolu být.':
            # a6 # r6538
            jump zm732_dispose


# s2 # say6531
label zm732_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Vypadá to, že je mrtvá příliš dlouho na to, aby byla schopna odpovědět na nějakou tvou otázku.'

    menu:
        'Nechej mrtvolu být.':
            # a7 # r6539
            jump zm732_dispose


# s3 # say64270
label zm732_s3: # - # IF ~  HasItem("TomeBA","ZM732")
    nr 'Této rozpadající se mrtvole byly zašity oči i ústa a do obočí je vyřezáno číslo "732". Nitě, držící jeho oči zapečetěné, vypadají extrémně staře… zajímalo by tě, jestli neměl oči sešité dříve než zemřel. Vidíš, že v rukách svírá tlustý svazek, drží ho jako by ho někomu vzal.'

    menu:
        'Vzít svazek z jeho rukou… opatrně.':
            # a8 # r64271
            $ zm732Logic.r64271_action()
            jump zm732_s4

        'Nechat mrtvolu být.':
            # a9 # r64272
            jump zm732_dispose


# s4 # say64273
label zm732_s4: # from 3.0
    nr 'Opatrně bereš svazek z rukou mrtvoly -- nezdá se, že by mu to vadilo. Svazek vypadá jako kniha kouzel a ochrany -- je plná nákresů a diagramů popisujících různé aspekty nekromantického umění. Kniha je šíleně těžká; jak moc byla zombie neopatrná, tak moc musela být silná.  POZNÁMKA: Pro "přečtení" poznámek, knih nebo svitků je vlož do svého inventáře, a pak na ně klikni pravým tlačítkem myši, vyvolá se informační panel.'

    menu:
        'Prozkoumej mrtvolu znovu.':
            # a10 # r64274
            jump zm732_s0

        'Zanech mrtvolu v míru.':
            # a11 # r64275
            jump zm732_dispose
