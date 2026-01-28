init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.introduction_logic import IntroductionLogic
    introductionLogic = IntroductionLogic(runtime.global_state_manager)


label introduction:
    scene black

    snowinmars 'introduction_1{#introduction_1}' # '«Привет. Как ты относился к спойлерам?»'
    menu:
        'introduction_2{#introduction_2}': # '«Я не боялся спойлеров».'
            $ introductionLogic.set_can_spoiler_true()
        'introduction_3{#introduction_3}': # '«Я не хотел спойлерить игру».'
            pass

    if introductionLogic.can_spoiler:
        'introduction_4{#introduction_4}'
        # snowinmars '«В 1999 году игра была создана так, чтобы играть магом».'
        # snowinmars '«Ты последовал тому совету?»'
        menu:
            'introduction_5{#introduction_5}': # '«Я играл магом».'
                $ introductionLogic.setup_new_life_as_mage()
            'introduction_6{#introduction_6}': # '«Я играл тем персонажем, которого создал ранее сам».'
                pass

        'introduction_7{#introduction_7}'
        # snowinmars '«Ты проходил оригинальную игру?»'
        menu:
            'introduction_8{#introduction_8}': # '«„История костей“ позволяла мне говорить с мёртвыми, слепого лучника звали „Захария“».'
                $ introductionLogic.setup_as_highlvl()
            'introduction_9{#introduction_9}': # '«Я играл как в первый раз».'
                pass

    'introduction_10{#introduction_10}'
    # snowinmars '«В игру было добавлено большое количество мелких достижений. Ты включал их?»'
        menu:
            'introduction_11{#introduction_11}': # '«Я видел мелкие достижения».'
                $ persistent.add_custom_achievements = True
            'introduction_12{#introduction_12}': # '«Я скрыл мелких достижений».'
                $ persistent.add_custom_achievements = False

    'introduction_13{#introduction_13}'
    # snowinmars 'Напоследок ты увидел общую информацию и благодарности.'

    menu:
        'introduction_14{#introduction_14}': # 'Вспомнить.'
            jump intro


label intro:
    play music mortuary if_changed
    scene black

    $ runtime.global_narrat_manager.add_br()

    'intro{#intro}'

    jump morte1_speak
