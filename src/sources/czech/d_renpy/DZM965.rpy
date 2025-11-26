init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm965_logic import Zm965Logic
    zm965Logic = Zm965Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM965.DLG
# ###


# s0 # say34920
label zm965_s0: # - # IF ~  NearbyDialog("Dmorte")
    nr 'Tato mrtvola se belhá kolem po trojúhelníkové dráze. Jakmile dojde do rohu trojúhelníku, zarazí se, pak se otočí a jde do dalšího rohu. Na straně lebky má vytetováno číslo "965". Když se přiblížíš, zastaví se a zírá na tebe.'

    jump morte_s477  # EXTERN


# s1 # say34922
label zm965_s1: # externs morte_s481 morte_s480 # IF ~  !NearbyDialog("Dmorte")
    nr 'Tato mrtvola se belhá kolem po trojúhelníkové dráze. Jakmile dojde do rohu trojúhelníku, zarazí se, pak se otočí a jde do dalšího rohu. Na straně lebky má vytetováno číslo "965". Když se přiblížíš, zastaví se a zírá na tebe.'

    menu:
        '"Hele… proč chodíš v trojúhelníku?"' if zm965Logic.r34923_condition():
            # a0 # r34923
            $ zm965Logic.r34923_action()
            jump zm965_s2

        '"Hele… proč vlastně chodíš do trojúhelníku?"' if zm965Logic.r45070_condition():
            # a1 # r45070
            jump zm965_s2

        '"Hele, já vím, že nejsi zombie. Nikoho neoblbneš."' if zm965Logic.r45071_condition():
            # a2 # r45071
            jump zm965_s2

        'Použij na mrtvolu schopnost Kosti-vyprávějte.' if zm965Logic.r45072_condition():
            # a3 # r45072
            jump zm965_s3

        '"Skvěle jsme si pokecali. Sbohem."':
            # a4 # r45073
            jump zm965_dispose

        'Nechej mrtvolu v klidu odpočívat.':
            # a5 # r45074
            jump zm965_dispose


# s2 # say34927
label zm965_s2: # from 1.0 1.1 1.2
    nr 'Mrtvola na tebe prázdně zírá.'

    menu:
        'Nechej mrtvolu být.':
            # a6 # r34928
            jump zm965_dispose


# s3 # say45069
label zm965_s3: # from 1.3
    nr 'Mrtvola se nepohnula. Asi už moc uhnila, anebo nemá náladu na povídání.'

    menu:
        'Nechej mrtvolu v klidu odpočívat.':
            # a7 # r45075
            jump zm965_dispose
