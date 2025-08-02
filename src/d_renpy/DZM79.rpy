init 10 python:
    from dlgs.dzm79_logic import Dzm79Logic
    dzm79Logic = Dzm79Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZM79.DLG
# ###


label dzm79_init:
    return


label dzm79_dispose:
    jump show_graphics_menu


# s0 # say34942
label dzm79_s0:  # - # IF ~  True()
    SPEAKER 'Голова трупа была отрублена, а после наспех пришита назад. Несколько различных швов, все в разной степени потрепанности, указывают на то, голова в процессе работы постоянно отваливалась и возвращалась на место. На виске вырезан номер 79, рядом с неровным зубчатым кругом, выжженным на лбу.'

    menu:
        'Итак… что тут у нас интересного?':
            # r0 # reply34943
            $ dzm79Logic.r34943_action()
            jump dzm79_s1

        'Осмотреть зубчатый круг.' if dzm79Logic.r34946_condition():
            # r1 # reply34946
            $ dzm79Logic.r34946_action()
            jump dzm79_s3

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm79Logic.r34947_condition():
            # r2 # reply34947
            jump dzm79_s1

        'Использовать на трупе свою способность История костей.' if dzm79Logic.r34948_condition():
            # r3 # reply34948
            jump dzm79_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply34951
            jump dzm79_dispose

        'Оставить труп в покое.':
            # r5 # reply34952
            jump dzm79_dispose


# s1 # say34944
label dzm79_s1:  # from 0.0 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply34945
            jump dzm79_dispose


# s2 # say34949
label dzm79_s2:  # from 0.3 3.0 3.1
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply34950
            jump dzm79_dispose


# s3 # say64278
label dzm79_s3:  # from 0.1
    SPEAKER 'Похоже, зубчатый круг на лбу трупа был выжжен очень давно, возможно даже еще до того, как он умер. Возможно, это какой-то религиозный символ или ритуальный знак. Ты замечаешь, что в одной из впадин между внутренними зубцами есть маленький треугольник, как будто у него есть какое-то особое назначение.'

    menu:
        'Хм-м. Интересно… что здесь делает эта отметина, а, труп?' if dzm79Logic.r64279_condition():
            # r8 # reply64279
            $ dzm79Logic.r64279_action()
            jump dzm79_s2

        'Хм-м… Не удивлюсь, если зазор между зубцами совпадет с выемками на той медной сережке…' if dzm79Logic.r64280_condition():
            # r9 # reply64280
            $ dzm79Logic.r64280_action()
            jump dzm79_s2
