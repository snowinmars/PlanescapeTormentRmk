init python:
    def _r34943_action(gsm):        
        gsm.dec_once_law('zombie_chaotic')
    def _r34946_action(gsm):        
        gsm.set_know_copper_earring_secret(True)
    def _r64279_action(gsm):        
        gsm.update_journal('64536')    # '64536': ' ~На лбу зомби #79 я обнаружил странный зубчатый круг. По каким-то причинам этот знак кажется мне важным, однако я не знаю, почему.~ '
    def _r64280_action(gsm):        
        gsm.update_journal('64537')    # '64537': ' ~На лбу зомби #79 я обнаружил странный зубчатый круг. Символ по виду напоминает старую медную сережку, которую я нашел в юго-восточной препараторской — возможно, они как-то связаны между собой.~ '


init python:
    def _r34946_condition(gsm):
        return not gsm.get_know_copper_earring_secret()
    def _r34947_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r34948_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r64279_condition(gsm):
        return not gsm.get_has_copper_earring_closed()
    def _r64280_condition(gsm):
        return gsm.get_has_copper_earring_closed()


define gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM79.DLG
# Starts:    dzm79_s
# ###


label dzm79_init:
    return


label dzm79_dispose:
    jump show_graphics_menu


# s0 # say34942
label dzm79_s0:  # from -
    SPEAKER 'Голова трупа была отрублена, а после наспех пришита назад. Несколько различных швов, все в разной степени потрепанности, указывают на то, голова в процессе работы постоянно отваливалась и возвращалась на место. На виске вырезан номер 79, рядом с неровным зубчатым кругом, выжженным на лбу.'

    menu:
        'Итак… что тут у нас интересного?':
            # r0 # reply34943
            $ _r34943_action(gsm)
            jump dzm79_s1
        'Осмотреть зубчатый круг.' if _r34946_condition(gsm):
            # r1 # reply34946
            $ _r34946_action(gsm)
            jump dzm79_s3
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r34947_condition(gsm):
            # r2 # reply34947
            jump dzm79_s1
        'Использовать на трупе свою способность История костей.' if _r34948_condition(gsm):
            # r3 # reply34948
            jump dzm79_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply34951
            jump show_graphics_menu
        'Оставить труп в покое.':
            # r5 # reply34952
            jump show_graphics_menu


# s1 # say34944
label dzm79_s1:  # from 0.0 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply34945
            jump show_graphics_menu


# s2 # say34949
label dzm79_s2:  # from 0.3 3.0 3.1
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply34950
            jump show_graphics_menu


# s3 # say64278
label dzm79_s3:  # from 0.1
    SPEAKER 'Похоже, зубчатый круг на лбу трупа был выжжен очень давно, возможно даже еще до того, как он умер. Возможно, это какой-то религиозный символ или ритуальный знак. Ты замечаешь, что в одной из впадин между внутренними зубцами есть маленький треугольник, как будто у него есть какое-то особое назначение.'

    menu:
        'Хм-м. Интересно… что здесь делает эта отметина, а, труп?' if _r64279_condition(gsm):
            # r8 # reply64279
            $ _r64279_action(gsm)
            jump dzm79_s2
        'Хм-м… Не удивлюсь, если зазор между зубцами совпадет с выемками на той медной сережке…' if _r64280_condition(gsm):
            # r9 # reply64280
            $ _r64280_action(gsm)
            jump dzm79_s2