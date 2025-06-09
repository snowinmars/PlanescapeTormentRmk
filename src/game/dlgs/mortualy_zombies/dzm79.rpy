init python:
    def _r34943_action(gsm):
        gsm.dec_once_law('zombie_chaotic')
    def _r34946_action(gsm):
        gsm.set_know_copper_earring_secret(True)
    def _r64279_action(gsm):
        gsm.update_journal('64536')
    def _r64280_action(gsm):
        gsm.update_journal('64537')


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


init 10 python:
    gsm = renpy.store.global_settings_manager
    glm = renpy.store.global_location_manager


# ###
# Original:  DLG/DZM79.DLG
# Starts:    dzm79_s0
# ###


label start_dzm79_talk:
    call dzm79_init
    jump dzm79_s0
label start_dzm79_kill:
    call dzm79_init
    jump dzm79_kill
label dzm79_init:
    $ glm.set_location('mortuary_f2r2')
    $ gsm.set_meet_dzm79(True)
    scene bg mortuary2
    show dzm79_img default at center_left_down
    return
label dzm79_dispose:
    hide dzm79_img
    jump show_graphics_menu


# s0 # say34942
label dzm79_s0:  # from -
    teller 'Голова трупа была отрублена, а после наспех пришита назад.'
    teller 'Несколько различных швов, все в разной степени потрепанности, указывают на то, голова в процессе работы постоянно отваливалась и возвращалась на место.'
    teller 'На виске вырезан номер «79», рядом с неровным зубчатым кругом, выжженным на лбу.'

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
            jump dzm79_dispose
        'Оставить труп в покое.':
            # r5 # reply34952
            jump dzm79_dispose


# s1 # say34944
label dzm79_s1:  # from 0.0 0.2
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r34948_condition(gsm):
            # r3 # reply34948
            jump dzm79_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply34951
            jump dzm79_dispose
        'Оставить труп в покое.':
            # r6 # reply34945
            jump dzm79_dispose


# s2 # say34949
label dzm79_s2:  # from 0.3 3.0 3.1
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r34947_condition(gsm):
            # r2 # reply34947
            jump dzm79_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply34951
            jump dzm79_dispose
        'Оставить труп в покое.':
            # r7 # reply34950
            jump dzm79_dispose


# s3 # say64278
label dzm79_s3:  # from 0.1
    teller 'Похоже, зубчатый круг на лбу трупа был выжжен очень давно, возможно даже еще до того, как он умер. Возможно, это какой-то религиозный символ или ритуальный знак.'
    teller 'Ты замечаешь, что в одной из впадин между внутренними зубцами есть маленький треугольник, как будто у него есть какое-то особое назначение.'

    menu:
        'Хм-м. Интересно… что здесь делает эта отметина, а, труп?' if _r64279_condition(gsm):
            # r8 # reply64279
            $ _r64279_action(gsm)
            jump dzm79_s2
        'Хм-м… Не удивлюсь, если зазор между зубцами совпадет с выемками на той медной сережке…' if _r64280_condition(gsm):
            # r9 # reply64280
            $ _r64280_action(gsm)
            jump dzm79_s2
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r34947_condition(gsm):
            # r2 # reply34947
            jump dzm79_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply34951
            jump dzm79_dispose
        'Оставить труп в покое.':
            # r7 # reply34950
            jump dzm79_dispose
