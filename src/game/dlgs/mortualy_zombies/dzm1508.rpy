init python:
    def _kill_dzm1508(gsm):
        gsm.set_dead_dzm1508(True)
        gsm.inc_exp_custom('party', 65)


init python:
    def _r46746_action(gsm):
        gsm.gcm.modify_property('protagonist', 'law', -1)
        gsm.set_zombie_chaotic(True)


init python:
    def _r46746_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r46749_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r46750_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r46751_condition(gsm):
        return gsm.get_can_speak_with_dead()


init 10 python:
    gsm = renpy.store.global_settings_manager
    glm = renpy.store.global_location_manager


# ###
# Original:  DLG/DZM1508.DLG
# ###


label start_dzm1508_talk:
    call dzm1508_init
    jump dzm1508_s0
label start_dzm1508_kill:
    call dzm1508_init
    jump dzm1508_kill
label dzm1508_init:
    $ glm.set_location('mortuary_f2r1')
    $ gsm.set_meet_dzm1508(True)
    scene bg mortuary1
    show dzm1508_img default at center_left_down
    return
label dzm1508_dispose:
    hide dzm1508_img
    jump show_graphics_menu


# s0 # say46745
label dzm1508_s0:  # from - # IF ~  True()
    teller 'На лбу этого очень мускулистого трупа масса шрамов, как будто при жизни в бою он бил своих врагов головой, как дубиной.'
    teller 'Номер «1508» вышит на лбу красными нитками, рот зашит грубой черной ниткой. От него слегка отдает бальзамирующей жидкостью.'

    menu:
        'Итак… что тут у нас интересного?' if _r46746_condition(gsm):
            # r0 # reply46746
            $ _r46746_action(gsm)
            jump dzm1508_s1
        'Итак… что тут у нас интересного?' if _r46749_condition(gsm):
            # r1 # reply46749
            jump dzm1508_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r46750_condition(gsm):
            # r2 # reply46750
            jump dzm1508_s1
        'Использовать на трупе свою способность История костей.' if _r46751_condition(gsm):
            # r3 # reply46751
            jump dzm1508_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply46754
            jump dzm1508_dispose
        'Оставить труп в покое.':
            # r5 # reply46755
            jump dzm1508_dispose


# s1 # say46747
label dzm1508_s1:  # from 0.0 0.1 0.2
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r46751_condition(gsm):
            # r3 # reply46751
            jump dzm1508_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply46754
            jump dzm1508_dispose
        'Оставить труп в покое.':
            # r6 # reply46748
            jump dzm1508_dispose


# s2 # say46752
label dzm1508_s2:  # from 0.3
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r46750_condition(gsm):
            # r2 # reply46750
            jump dzm1508_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply46754
            jump dzm1508_dispose
        'Оставить труп в покое.':
            # r7 # reply46753
            jump dzm1508_dispose


label dzm1508_kill:
    teller 'На лбу этого очень мускулистого трупа масса шрамов, как будто при жизни в бою он бил своих врагов головой, как дубиной.'
    teller 'Номер «1508» вышит на лбу красными нитками, рот зашит грубой черной ниткой. От него слегка отдает бальзамирующей жидкостью.'

    menu:
        '(Уйти.)':
            jump dzm1508_dispose
        '(Убить зомби).':
            jump dzm1508_killed


label dzm1508_killed:
    $ _kill_dzm1508(gsm)
    teller 'Если бы он был воином, он бы жалел, что не может ответить на мои удары. Когда его тело падает на пол, я не чувствую сожалений.'
    jump dzm1508_dispose
