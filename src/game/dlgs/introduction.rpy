init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.IntroductionLogic import (IntroductionLogic)

    introductionLogic = IntroductionLogic(runtime.global_state_manager)


label introduction:
    scene black

    snowinmars 'introduction_1{#introduction_1}'
    # '«Привет. Как ты относился к спойлерам?»'
    menu:
        'introduction_2{#introduction_2}': # '«Я не опасался спойлеров».'
            $ introductionLogic.set_can_spoiler_true()
        'introduction_3{#introduction_3}': # '«Я не любил спойлеры».'
            pass

    if introductionLogic.can_spoiler:
        'introduction_4{#introduction_4}'
        # snowinmars '«Ты помнил прошлое?»'
        menu:
            'introduction_5{#introduction_5}': # '«Я помнил. „История костей“ позволяла мне говорить с мёртвыми, слепого лучника звали Захарией».'
                $ introductionLogic.setup_as_highlvl()
            'introduction_6{#introduction_6}': # '«Я не помнил».'
                pass

    'introduction_7{#introduction_7}'
    # snowinmars 'Напоследок ты увидел общую информацию и благодарности.'

    menu:
        'introduction_8{#introduction_8}': # 'Вспомнить.'
            jump intro


label intro:
    play music mortuary if_changed
    scene black

    $ runtime.global_narrat_manager.add_br()

    'intro{#intro}'

    jump speak_morte1
