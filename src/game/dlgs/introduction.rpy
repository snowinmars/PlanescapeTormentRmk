init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.introduction_logic import IntroductionLogic
    introductionLogic = IntroductionLogic(runtime.global_state_manager)


label quick_setup_as_mage:
    $ introductionLogic.setup_new_life_as_mage()
    return


label introduction:
    scene black
    'introduction{#introduction1}'

    menu:
        'introduction_menu1{#introduction_menu1}': # '«Я не боюсь спойлеров».'
            $ introductionLogic.set_can_spoiler_true()
            jump introduction_1
        'introduction_menu2{#introduction_menu2}': # '«Не надо мне спойлерить игру».'
            jump introduction_1


label introduction_1:
    'introduction_1_1{#introduction_1_1}'

    if introductionLogic.can_spoiler:
        'introduction_1_2{#introduction_1_2}'
    else:
        'introduction_1_3{#introduction_1_3}'

    'introduction_1_4{#introduction_1_4}'
    $ runtime.global_narrat_manager.add_br()
    'introduction_1_5{#introduction_1_5}'
    $ runtime.global_narrat_manager.add_br()
    'introduction_1_6{#introduction_1_6}'
    $ runtime.global_narrat_manager.add_br()
    'introduction_1_7{#introduction_1_7}'
    $ runtime.global_narrat_manager.add_br()

    if introductionLogic.can_spoiler:
        'introduction_1_8{#introduction_1_8}'
        menu:
            'introduction_1_8_menu1{#introduction_1_8_menu1}': # '«Замени мой билд на билд мага».'
                $ introductionLogic.setup_new_life_as_mage()
                'introduction_1_8_menu1_r1{#introduction_1_8_menu1_r1}'
            'introduction_1_8_menu2{#introduction_1_8_menu2}': # '«Не заменяй билд, оставь тот, который я создал».'
                'introduction_1_8_menu1_r2{#introduction_1_8_menu1_r2}'

    if introductionLogic.can_spoiler:
        'introduction_1_9{#introduction_1_9}'

        menu:
            'introduction_1_9_menu1{#introduction_1_9_menu1}': # '«Я знал „Историю костей“ и имя слепого лучника».'
                $ introductionLogic.setup_as_highlvl()
                'introduction_1_9_menu1_r1{#introduction_1_9_menu1_r1}'
            'introduction_1_9_menu2{#introduction_1_9_menu2}': # '«Не надо, я пройду как в первый раз».'
                'introduction_1_9_menu1_r2{#introduction_1_9_menu1_r2}'
    else:
        'introduction_1_10{#introduction_1_10}'

    'introduction_1_11{#introduction_1_11}'

    menu:
        'introduction_1_11_menu1{#introduction_1_11_menu1}': # '«Включи дополнительные достижения».'
            $ persistent.add_custom_achievements = True
            'introduction_1_11_menu1_r1{#introduction_1_11_menu1_r1}'
        'introduction_1_11_menu2{#introduction_1_11_menu2}': # '«Отключи дополнительные достижения».':
            $ persistent.add_custom_achievements = False
            'introduction_1_11_menu1_r2{#introduction_1_11_menu1_r2}'

    'introduction_1_12{#introduction_1_12}'

    menu:
        'introduction_1_12_menu1': # 'Вспомнить.'
            jump intro


label intro:
    play music mortuary if_changed
    scene black

    $ runtime.global_narrat_manager.add_br()

    'intro{#intro}'

    jump morte1_speak
