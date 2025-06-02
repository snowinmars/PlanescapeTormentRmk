python:
    def _r34923_action(gsm):        
        gsm.dec_law() 
        gsm.set_zombie_chaotic(True)

        return python:
    def _r34923_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r45070_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r45071_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r45072_condition(gsm):
        return gsm.get_can_speak_with_dead()

python:
    gsm           = renpy.store.global_settings_manager


# s0 # say34920
label DZM965.D_s0:  # from - # Check EXTENDS ~DMORTE~ : 477
    SPEAKER 'Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу. На боку его черепа вытатуирован номер 965. При твоем приближении он останавливается и пялится на тебя.'

    jump 'show_graphics_menu'

# s1 # say34922
label DZM965.D_s1:  # from -
    SPEAKER 'Этот труп бродит по треугольной траектории. Достигнув одного из углов треугольника, он замирает, затем поворачивается и ковыляет к следующему углу. На боку его черепа вытатуирован номер 965. При твоем приближении он останавливается и пялится на тебя.'

    menu:
        'Итак… почему ты ходишь вдоль треугольника?' if _r34923_condition(gsm):
            # r0 # reply34923
            $ _r34923_action(gsm)
            jump 'DZM965.D_s2'
        'Итак… почему ты ходишь вдоль треугольника?' if _r45070_condition(gsm):
            # r1 # reply45070
            jump 'DZM965.D_s2'
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r45071_condition(gsm):
            # r2 # reply45071
            jump 'DZM965.D_s2'
        'Использовать на трупе свою способность История костей.' if _r45072_condition(gsm):
            # r3 # reply45072
            jump 'DZM965.D_s3'
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply45073
            jump 'show_graphics_menu'
        'Оставить труп в покое.':
            # r5 # reply45074
            jump 'show_graphics_menu'


# s2 # say34927
label DZM965.D_s2:  # from 1.0 1.1 1.2
    SPEAKER 'Труп уставился на тебя невидящим взглядом.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply34928
            jump 'show_graphics_menu'


# s3 # say45069
label DZM965.D_s3:  # from 1.3
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply45075
            jump 'show_graphics_menu'