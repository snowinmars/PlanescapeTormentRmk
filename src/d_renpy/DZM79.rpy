init 10 python:
    from game.dlgs.zm79_logic import Zm79Logic
    zm79Logic = Zm79Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM79.DLG
# ###


label start_zm79_talk_first:
    call zm79_init
    jump todo
label start_zm79_talk:
    call zm79_init
    jump todo
label start_zm79_kill_first:
    call zm79_init
    jump zm79_kill_first
label start_zm79_kill:
    call zm79_init
    jump zm79_kill
label zm79_init:
    $ zm79Logic.zm79_init()
    scene bg LOCATION
    show zm79_img default at center_left_down
    return
label zm79_dispose:
    hide zm79_img
    jump graphics_menu


# s0 # say34942
label zm79_s0:  # - # IF ~  True()
    SPEAKER 'Голова трупа была отрублена, а после наспех пришита назад. Несколько различных швов, все в разной степени потрепанности, указывают на то, голова в процессе работы постоянно отваливалась и возвращалась на место. На виске вырезан номер «79», рядом с неровным зубчатым кругом, выжженным на лбу.'

    menu:
        '«Итак… что тут у нас интересного?»':
            # r0 # reply34943
            $ zm79Logic.r34943_action()
            jump zm79_s1

        'Осмотреть зубчатый круг.' if zm79Logic.r34946_condition():
            # r1 # reply34946
            $ zm79Logic.r34946_action()
            jump zm79_s3

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm79Logic.r34947_condition():
            # r2 # reply34947
            jump zm79_s1

        'Использовать на трупе свою способность «История костей».' if zm79Logic.r34948_condition():
            # r3 # reply34948
            jump zm79_s2

        '«Было приятно с тобой поболтать. Прощай».':
            # r4 # reply34951
            jump zm79_dispose

        'Оставить труп в покое.':
            # r5 # reply34952
            jump zm79_dispose


# s1 # say34944
label zm79_s1:  # from 0.0 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply34945
            jump zm79_dispose


# s2 # say34949
label zm79_s2:  # from 0.3 3.0 3.1
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply34950
            jump zm79_dispose


# s3 # say64278
label zm79_s3:  # from 0.1
    SPEAKER 'Похоже, зубчатый круг на лбу трупа был выжжен очень давно, возможно даже еще до того, как он умер. Возможно, это какой-то религиозный символ или ритуальный знак. Ты замечаешь, что в одной из впадин между внутренними «зубцами» есть маленький треугольник, как будто у него есть какое-то особое назначение.'

    menu:
        '«Хм-м. Интересно… что здесь делает эта отметина, а, труп?»' if zm79Logic.r64279_condition():
            # r8 # reply64279
            $ zm79Logic.r64279_action()
            jump zm79_s2

        '«Хм-м… Не удивлюсь, если зазор между зубцами совпадет с выемками на той медной сережке…»' if zm79Logic.r64280_condition():
            # r9 # reply64280
            $ zm79Logic.r64280_action()
            jump zm79_s2


label zm79_kill:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm79_dispose
        'Убить.':
            jump zm79_killed


label zm79_killed:
    $ zm79Logic.kill_zm79()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm79s.'
    nr 'Who is zm79?'
    nr 'zm79 is dead, baby, zm79 is dead.'
    jump zm79_dispose


label zm79_kill_first:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm79_dispose
        'Убить.':
            jump zm79_killed_first


label zm79_killed_first:
    $ zm79Logic.kill_zm79()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm79s.'
    nr 'Who is zm79?'
    nr 'zm79 is dead, baby, zm79 is dead.'
    jump zm79_dispose
