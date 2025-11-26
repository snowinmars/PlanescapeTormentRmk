init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.n1201_logic import N1201Logic
    n1201Logic = N1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DN1201.DLG
# ###


# s0 # say44993
label n1201_s0: # from 1.6 3.0 # IF ~  True()
    nr 'Na zapáchající poznámce je pod textem nakreslen podivný diagram. Jako by tě vyzýval, ať složíš růžky papíru tak, aby se dotýkaly středu. Na každém rohu je nějaká značka - jedna na horním pravém, dvě značky na dolním pravém, tři na dolním levém a na horním levém není žádná.'

    menu:
        'Založ pravý horní roh do středu.':
            # a0 # r44994
            $ n1201Logic.r44994_action()
            jump n1201_s1

        'Založ pravý dolní roh do středu.':
            # a1 # r44995
            $ n1201Logic.r44995_action()
            jump n1201_s1

        'Založ levý dolní roh do středu.':
            # a2 # r44996
            $ n1201Logic.r44996_action()
            jump n1201_s1

        'Založ levý horní roh do středu.':
            # a3 # r44997
            $ n1201Logic.r44997_action()
            jump n1201_s1

        'Nechej poznámku být.':
            # a4 # r44998
            $ n1201Logic.r44998_action()
            jump n1201_dispose


# s1 # say44999
label n1201_s1: # from 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
    nr 'Založil jsi roh tak, že se špička dotýká středu.'

    menu:
        'Založ pravý horní roh do středu.' if n1201Logic.r45000_condition():
            # a5 # r45000
            $ n1201Logic.r45000_action()
            jump n1201_s1

        'Založ pravý dolní roh do středu.' if n1201Logic.r45001_condition():
            # a6 # r45001
            $ n1201Logic.r45001_action()
            jump n1201_s1

        'Založ pravý dolní roh do středu.' if n1201Logic.r45002_condition():
            # a7 # r45002
            $ n1201Logic.r45002_action()
            jump n1201_s1

        'Založ levý dolní roh do středu.' if n1201Logic.r45003_condition():
            # a8 # r45003
            $ n1201Logic.r45003_action()
            jump n1201_s1

        'Založ levý horní roh do středu.' if n1201Logic.r45004_condition():
            # a9 # r45004
            $ n1201Logic.r45004_action()
            jump n1201_s1

        'Založ levý horní roh do středu.' if n1201Logic.r45005_condition():
            # a10 # r45005
            jump n1201_s2

        'Rozbal papírek a začni od začátku.':
            # a11 # r45006
            $ n1201Logic.r45006_action()
            jump n1201_s0

        'Rozbal papírek a nechej ho být.':
            # a12 # r45008
            $ n1201Logic.r45008_action()
            jump n1201_dispose


# s2 # say45015
label n1201_s2: # from 1.5
    nr 'Jak jsi založil horní levý růže do prostřed papíru, všiml sis, jak se sám od sebe rozbalil pravý horní roh.'

    menu:
        'Založ horní pravý růžek do středu.':
            # a13 # r45016
            jump n1201_s4

        'Založ dolní levý růžek.':
            # a14 # r45017
            $ n1201Logic.r45017_action()
            jump n1201_s3

        'Rozbal papírek a nechej ho být.':
            # a15 # r45018
            $ n1201Logic.r45018_action()
            jump n1201_dispose


# s3 # say45019
label n1201_s3: # from 2.1
    nr 'Když jsi založil dolní levý růžek, chvíli tak zůstal a pak se druhé dva růžky rozbalily. Nic se nestalo.'

    menu:
        'Znovu prozkoumej papírek.':
            # a16 # r45020
            jump n1201_s0

        'Odlož poznámku.':
            # a17 # r45021
            jump n1201_dispose


# s4 # say45022
label n1201_s4: # from 2.0
    nr 'Jak jsi založil horní pravý růžek zpátky do středu, pohnul se i levý dolní růžek, a tak se všechny rohy dotýkají středu. Po chvíli se začal papír zvedat a změnil se na malou čtyřstěnnou pyramidu.'

    menu:
        'Otevři pyramidu-':
            # a18 # r45023
            $ n1201Logic.r45023_action()
            jump n1201_s5


# s5 # say45024
label n1201_s5: # from 4.0
    nr 'Rozevřel jsi stěny pyramidy a papír se rozpadl na prach. Uvnitř je malá náušnice trojúhelníkovitého tvaru. Odráží světlo a vrhá kolem třpytivé paprsky.'

    menu:
        'Vezmi si náušnici…':
            # a19 # r45025
            $ n1201Logic.r45025_action()
            jump n1201_dispose
