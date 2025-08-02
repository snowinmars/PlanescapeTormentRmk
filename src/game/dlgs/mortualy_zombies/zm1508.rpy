init 10 python:
    from dlgs.mortualy_zombies.zm1508_logic import Zm1508Logic
    zm1508Logic = Zm1508Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM1508.DLG
# ###


label start_zm1508_talk:
    call zm1508_init
    jump zm1508_s0
label start_zm1508_kill:
    call zm1508_init
    jump zm1508_kill
label zm1508_init:
    $ zm1508Logic.zm1508_init()
    scene bg mortuary1
    show zm1508_img default at center_left_down
    return
label zm1508_dispose:
    hide zm1508_img
    jump show_graphics_menu


# s0 # say46745
label zm1508_s0:  # - # IF ~  True()
    teller 'На лбу этого очень мускулистого трупа масса шрамов, как будто при жизни в бою он бил своих врагов головой, как дубиной.'
    teller 'Номер «1508» вышит на лбу красными нитками, рот зашит грубой черной ниткой. От него слегка отдает бальзамирующей жидкостью.'

    menu:
        'Итак… что тут у нас интересного?' if zm1508Logic.r46746_condition():
            # r0 # reply46746
            $ zm1508Logic.r46746_action()
            jump zm1508_s1

        'Итак… что тут у нас интересного?' if zm1508Logic.r46749_condition():
            # r1 # reply46749
            jump zm1508_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zm1508Logic.r46750_condition():
            # r2 # reply46750
            jump zm1508_s1

        'Использовать на трупе свою способность История костей.' if zm1508Logic.r46751_condition():
            # r3 # reply46751
            jump zm1508_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply46754
            jump zm1508_dispose

        'Оставить труп в покое.':
            # r5 # reply46755
            jump zm1508_dispose


# s1 # say46747
label zm1508_s1:  # from 0.0 0.1 0.2
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if zm1508Logic.r46751_condition():
            # r3 # reply46751
            jump zm1508_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply46754
            jump zm1508_dispose
        'Оставить труп в покое.':
            # r6 # reply46748
            jump zm1508_dispose


# s2 # say46752
label zm1508_s2:  # from 0.3
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zm1508Logic.r46750_condition():
            # r2 # reply46750
            jump zm1508_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply46754
            jump zm1508_dispose
        'Оставить труп в покое.':
            # r7 # reply46753
            jump zm1508_dispose


label zm1508_kill:
    teller 'На лбу этого очень мускулистого трупа масса шрамов, как будто при жизни в бою он бил своих врагов головой, как дубиной.'
    teller 'Номер «1508» вышит на лбу красными нитками, рот зашит грубой черной ниткой. От него слегка отдает бальзамирующей жидкостью.'

    menu:
        '(Уйти.)':
            jump zm1508_dispose
        '(Убить зомби).':
            jump zm1508_killed


label zm1508_killed:
    $ zm1508Logic.kill_zm1508()
    teller 'Если бы он был воином, он бы жалел, что не может ответить на мои удары. Когда его тело падает на пол, я не чувствую сожалений.'
    jump zm1508_dispose
