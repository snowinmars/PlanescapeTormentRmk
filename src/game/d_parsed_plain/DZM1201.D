python:
    def _r34956_action(gsm):        
        gsm.set_1201_note_retrieved(True) 
        gsm.set_has_1201_note(True) 
        gsm.inc_exp(250)
    def _r45129_action(gsm):        
        gsm.dec_law() 
        gsm.set_zombie_chaotic(True)

        return python:
    def _r34954_condition(gsm):
        return not gsm.get_1201_note_retrieved()
    def _r34957_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r34958_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r34956_condition(gsm):
        return gsm.get_has_scalpel()
    def _r45122_condition(gsm):
        return not gsm.get_has_scalpel()
    def _r45129_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r45130_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r45131_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r45132_condition(gsm):
        return gsm.get_can_speak_with_dead()

python:
    gsm           = renpy.store.global_settings_manager


# s0 # say34953
label DZM1201.D_s0:  # from -
    SPEAKER 'На лбу этого трупа чернилами написан номер 1201, чернила стекли на глаза, щеки и челюсти. Чернильные капли падают с лица, ты замечаешь, что они попадают в зашитый рот, из которого торчит уголок какой-то записки.'

    menu:
        'Попробовать вытащить записку.' if _r34954_condition(gsm):
            # r0 # reply34954
            jump 'DZM1201.D_s1'
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r34957_condition(gsm):
            # r1 # reply34957
            jump 'DZM1201.D_s3'
        'Использовать на трупе свою способность История костей.' if _r34958_condition(gsm):
            # r2 # reply34958
            jump 'DZM1201.D_s4'
        'Было приятно поболтать с тобой. Прощай.':
            # r3 # reply34959
            jump 'show_graphics_menu'
        'Оставить труп в покое.':
            # r4 # reply34962
            jump 'show_graphics_menu'


# s1 # say34955
label DZM1201.D_s1:  # from 0.0
    SPEAKER 'Записка во рту зомби заляпана гноем. Если ты попытаешься вытащить бумагу сквозь стежки, она порвется на части. Попытка вскрыть зомби уничтожит записку — тебе нужно найти деликатный способ удалить швы перед тем, как достать записку.'

    menu:
        'Срезать швы скальпелем.' if _r34956_condition(gsm):
            # r5 # reply34956
            $ _r34956_action(gsm)
            jump 'DZM1201.D_s2'
        'Хм-м. Если бы у меня было что-нибудь, чтобы разрезать эти швы…' if _r45122_condition(gsm):
            # r6 # reply45122
            jump 'show_graphics_menu'


# s2 # say34960
label DZM1201.D_s2:  # from 1.0
    SPEAKER 'Ты ловко перерезаешь швы на рту зомби, и его челюсти раскрываются. Ты осторожно вынимаешь записку изо рта трупа… несмотря на состояние бумаги, записи все еще можно разобрать.'

    menu:
        'Снова осмотреть труп.':
            # r7 # reply34961
            jump 'DZM1201.D_s5'
        'Оставить труп в покое.':
            # r8 # reply45123
            jump 'show_graphics_menu'


# s3 # say45124
label DZM1201.D_s3:  # from 0.1 5.0 5.1 5.2
    SPEAKER 'Молочно-белые глаза трупа смотрят на тебя без выражения.'

    menu:
        'Оставить труп в покое.':
            # r9 # reply45125
            jump 'show_graphics_menu'


# s4 # say45126
label DZM1201.D_s4:  # from 0.2 5.3
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r10 # reply45127
            jump 'show_graphics_menu'


# s5 # say45128
label DZM1201.D_s5:  # from 2.0
    SPEAKER 'На лбу этого трупа чернилами написан номер 1201, чернила стекли на глаза, щеки и челюсти, создавая впечатление, что он плачет. Его челюсть распахнута, из уголка рта течет струйка гноя.'

    menu:
        'Извини, что срезал швы… Мне просто нужно было посмотреть, что у тебя во рту.' if _r45129_condition(gsm):
            # r11 # reply45129
            $ _r45129_action(gsm)
            jump 'DZM1201.D_s3'
        'Извини, что срезал швы… Мне просто нужно было посмотреть, что у тебя во рту.' if _r45130_condition(gsm):
            # r12 # reply45130
            jump 'DZM1201.D_s3'
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r45131_condition(gsm):
            # r13 # reply45131
            jump 'DZM1201.D_s3'
        'Использовать на трупе свою способность История костей.' if _r45132_condition(gsm):
            # r14 # reply45132
            jump 'DZM1201.D_s4'
        'Было приятно поболтать с тобой. Прощай.':
            # r15 # reply45133
            jump 'show_graphics_menu'
        'Оставить труп в покое.':
            # r16 # reply45134
            jump 'show_graphics_menu'