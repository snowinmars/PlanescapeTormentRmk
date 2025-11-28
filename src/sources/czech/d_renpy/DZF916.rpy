init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf916_logic import Zf916Logic
    zf916Logic = Zf916Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF916.DLG
# ###


# s0 # say24719
label zf916_s0: # - # IF ~  True()
    nr 'Mrtvola ženy upřela na tebe oči s prázdným pohledem. Na jejím čele je vyřezáno číslo "916" a její ústa jsou pevně sešita. Kolem ní se šíří slabý zápach formaldehydu.{#zf916_s0_1}'

    menu:
        '"Tak… bude něco?"{#zf916_s0_r24720}' if zf916Logic.r24720_condition():
            # a0 # r24720
            $ zf916Logic.r24720_action()
            jump zf916_s1

        '"Tak… bude něco?"{#zf916_s0_r24737}' if zf916Logic.r24737_condition():
            # a1 # r24737
            jump zf916_s1

        '"Vím, že nejsi zombie. Nikoho tím neoklameš."{#zf916_s0_r24738}' if zf916Logic.r24738_condition():
            # a2 # r24738
            jump zf916_s1

        'Použij schopnost Kosti vyprávějte na mrtvolu.{#zf916_s0_r24739}' if zf916Logic.r24739_condition():
            # a3 # r24739
            jump zf916_s2

        '"Skvěle jsem si s tebou pohovořil. Sbohem."{#zf916_s0_r24744}' if zf916Logic.r24744_condition():
            # a4 # r24744
            jump morte_s46  # EXTERN

        'Nechej mrtvolu být.{#zf916_s0_r24745}' if zf916Logic.r24745_condition():
            # a5 # r24745
            jump morte_s46  # EXTERN

        '"Skvěle jsem si s tebou pohovořil. Sbohem."{#zf916_s0_r24746}' if zf916Logic.r24746_condition():
            # a6 # r24746
            jump zf916_dispose

        'Nechej mrtvolu být.{#zf916_s0_r24747}' if zf916Logic.r24747_condition():
            # a7 # r24747
            jump zf916_dispose

        '"Skvěle jsem si s tebou pohovořil. Sbohem."{#zf916_s0_r24748}' if zf916Logic.r24748_condition():
            # a8 # r24748
            jump zf916_dispose

        'Nechej mrtvolu být.{#zf916_s0_r24749}' if zf916Logic.r24749_condition():
            # a9 # r24749
            jump zf916_dispose


# s1 # say24721
label zf916_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola stále na tebe zírá.{#zf916_s1_1}'

    menu:
        '"Tedy, sbohem."{#zf916_s1_r24722}' if zf916Logic.r24722_condition():
            # a10 # r24722
            jump morte_s46  # EXTERN

        '"Tedy sbohem."{#zf916_s1_r24735}' if zf916Logic.r24735_condition():
            # a11 # r24735
            jump zf916_dispose

        '"Tedy sbohem."{#zf916_s1_r24736}' if zf916Logic.r24736_condition():
            # a12 # r24736
            jump zf916_dispose


# s2 # say24740
label zf916_s2: # from 0.3
    nr 'Tato mrtvola nereaguje. Vypadá, že je příliš mimo na to, aby ti odpověděla na nějaké otázky.{#zf916_s2_1}'

    menu:
        '"Tedy sbohem."{#zf916_s2_r24741}' if zf916Logic.r24741_condition():
            # a13 # r24741
            jump morte_s46  # EXTERN

        '"Tedy sbohem."{#zf916_s2_r24742}' if zf916Logic.r24742_condition():
            # a14 # r24742
            jump zf916_dispose

        '"Tedy sbohem."{#zf916_s2_r24743}' if zf916Logic.r24743_condition():
            # a15 # r24743
            jump zf916_dispose


# s3 # say24750
label zf916_s3: # - # IF ~  False()
    nr 'Tato mrtvola nereaguje. Vypadá, že je příliš mimo na to, aby ti odpověděla na nějaké otázky.{#zf916_s3_1}'

    menu:
