init python:
    def _kill_dzm965(gsm):
        gsm.set_dead_dzm965(True)

init python:
    def _r34923_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)


init python:
    def _r34923_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r45070_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r45071_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r45072_condition(gsm):
        return gsm.get_can_speak_with_dead()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM965.DLG
# Starts:    dzm965_s0 dzm965_s1 dzm965_kill
# ###


label start_dzm965_talk_first:
    call dzm965_init
    jump dzm965_s0
label start_dzm965_talk:
    call dzm965_init
    jump dzm965_s1
label start_dzm965_kill:
    call dzm965_init
    jump dzm965_kill
label dzm965_init:
    $ gsm.set_location('mortuary_f2r2')
    $ gsm.set_meet_dzm965(True)
    scene bg mortuary2
    show dzm965_img default at center_left_down
    return
label dzm965_dispose:
    hide dzm965_img
    jump show_graphics_menu


# s0 # say34920
label dzm965_s0:  # from - # Manually checked EXTERN ~DMORTE~ : 477 as dmorte1_s477
    teller 'Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу.'
    teller 'На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.'

    jump dmorte_s477

# s1 # say34922
label dzm965_s1:  # from -
    teller 'Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу.'
    teller 'На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.'

    menu:
        'Итак… почему ты ходишь вдоль треугольника?' if _r34923_condition(gsm):
            # r0 # reply34923
            $ _r34923_action(gsm)
            jump dzm965_s2
        'Итак… почему ты ходишь вдоль треугольника?' if _r45070_condition(gsm):
            # r1 # reply45070
            jump dzm965_s2
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r45071_condition(gsm):
            # r2 # reply45071
            jump dzm965_s2
        'Использовать на трупе свою способность История костей.' if _r45072_condition(gsm):
            # r3 # reply45072
            jump dzm965_s3
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply45073
            jump dzm965_dispose
        'Оставить труп в покое.':
            # r5 # reply45074
            jump dzm965_dispose


# s2 # say34927
label dzm965_s2:  # from 1.0 1.1 1.2
    teller 'Труп уставился на тебя невидящим взглядом.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r45072_condition(gsm):
            # r3 # reply45072
            jump dzm965_s3
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply45073
            jump dzm965_dispose
        'Оставить труп в покое.':
            # r6 # reply34928
            jump dzm965_dispose


# s3 # say45069
label dzm965_s3:  # from 1.3
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r45071_condition(gsm):
            # r2 # reply45071
            jump dzm965_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply45073
            jump dzm965_dispose
        'Оставить труп в покое.':
            # r7 # reply45075
            jump dzm965_dispose


label dzm965_kill:
    teller 'Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу.'
    teller 'На боку его черепа вытатуирован номер «965». При твоем приближении он останавливается и пялится на тебя.'

    menu:
        '(Уйти.)':
            jump dzm965_dispose
        '(Убить зомби).':
            jump dzm965_killed


label dzm965_killed:
    $ _kill_dzm965(gsm)
    teller 'Я поджидаю труп на одном из углов его маршрута. Он идёт прямо на меня, смотря на моё оружие пустыми глазами.'
    teller 'В них нет ни жизни, ни разума. Я прерываю его цикл.'
    jump dzm965_dispose
