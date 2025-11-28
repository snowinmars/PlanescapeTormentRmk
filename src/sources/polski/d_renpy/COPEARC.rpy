init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.copearc_logic import CopearcLogic
    copearcLogic = CopearcLogic(runtime.global_state_manager)


# ###
# Original:  DLG/COPEARC.DLG
# ###


# s0 # say46723
label copearc_s0: # - # IF ~  True()
    nr 'Ten miedziany kolczyk wygląda na bardzo stary. Chyba kiedyś się go nosiło, ale nie ma on nigdzie haczyka ani żadnego innego mechanizmu pozwalającego przyczepić go do ucha. W jego środku, jednakże, znajduje się seria dziwnych nacięć.{#copearc_s0_1}'

    menu:
        'Przyjrzyj się nacięciom.{#copearc_s0_r46724}':
            # a0 # r46724
            jump copearc_s1

        'Włóż paznokieć w nacięcie, które wskazywał trójkąt na okręgu widzianym na czole zombiego #79.{#copearc_s0_r46725}' if copearcLogic.r46725_condition():
            # a1 # r46725
            $ copearcLogic.r46725_action()
            jump copearc_s2

        'Odłóż kolczyk.{#copearc_s0_r46726}':
            # a2 # r46726
            jump copearc_dispose


# s1 # say46727
label copearc_s1: # from 0.0
    nr 'Nacięcia są równo rozłożone wzdłuż wnętrza kolczyka - po bliższym zbadaniu, przypominają ci małe ząbki. Z pewnością zrobione są przez człowieka, ale nie jesteś w stanie się domyślić, czemu miałyby służyć.{#copearc_s1_1}'

    menu:
        'Włóż paznokieć w nacięcie, które wskazywał trójkąt na okręgu widzianym na czole zombiego #79.{#copearc_s1_r46728}' if copearcLogic.r46728_condition():
            # a3 # r46728
            $ copearcLogic.r46728_action()
            jump copearc_s2

        'Odłóż kolczyk.{#copearc_s1_r46729}':
            # a4 # r46729
            jump copearc_dispose


# s2 # say46730
label copearc_s2: # from 0.1 1.0
    nr 'Wciskasz paznokieć w trzecie nacięcie od góry i naciskasz je do wewnątrz. Rozlega się *klik* i góra kolczyka otwiera się. Nie tylko można go teraz nosić, ale wygląda na to, że w środku znajduje się skrytka.{#copearc_s2_1}'

    menu:
        'Potrząśnij kolczykiem, zobacz, czy coś wypadnie.{#copearc_s2_r46731}':
            # a5 # r46731
            jump copearc_s3


# s3 # say46732
label copearc_s3: # from 2.0
    nr 'Potrząsasz kolczykiem, ale nic z niego nie wypada. Cokolwiek było tam ukryte, już tego nie ma.  UWAGA: Odkrycie zapięcia w kolczyku pozwoli co go teraz nosić. Dodatkowo skrytka może uczynić go cenniejszym dla handlarza.{#copearc_s3_1}'

    menu:
        'Odłóż kolczyk.{#copearc_s3_r46733}':
            # a6 # r46733
            $ copearcLogic.r46733_action()
            jump copearc_dispose
