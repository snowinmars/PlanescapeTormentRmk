init python:
    def _kill_dzm396(gsm):
        gsm.set_dead_dzm396(True)
    def _get_took_dzm396_bandages(gsm):
        gsm.get_has_bandages_zm396()
    def _r34936_condition(gsm):
        not gsm.get_has_bandages_zm396()

init python:
    def _r34932_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)
    def _r34936_action(gsm):
        gsm.set_has_bandages_zm396(True)
        gsm.set_has_bandages(True)
    def _r34934_action(gsm):
        gsm.set_has_bandages_zm396(True)
        gsm.set_has_bandages(True)
    def _r45112_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)


init python:
    def _r34932_condition(gsm):
        return not gsm.get_has_bandages_zm396() \
               and not gsm.get_zombie_chaotic()
    def _r34935_condition(gsm):
        return not gsm.get_has_bandages_zm396() \
               and gsm.get_zombie_chaotic()
    def _r34937_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r34940_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r34934_condition(gsm):
        return not gsm.get_has_bandages_zm396()
    def _r45112_condition(gsm):
        return gsm.get_has_bandages_zm396() \
               and not gsm.get_zombie_chaotic()
    def _r45113_condition(gsm):
        return gsm.get_has_bandages_zm396() \
               and gsm.get_zombie_chaotic()
    def _r45114_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r45115_condition(gsm):
        return gsm.get_can_speak_with_dead()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM396.DLG
# ###


label start_dzm396_talk_first:
    call dzm396_init
    jump dzm396_s0
label start_dzm396_talk:
    call dzm396_init
    jump dzm396_s4
label start_dzm396_kill:
    call dzm396_init
    jump dzm396_kill
label dzm396_init:
    $ gsm.set_location('mortuary_f2r3')
    $ gsm.set_meet_dzm396(True)
    scene bg mortuary3
    show dzm396_img default at center_left_down
    return
label dzm396_dispose:
    hide dzm396_img
    jump show_graphics_menu


# s0 # say34931
label dzm396_s0:  # from -
    teller 'Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. На левом виске у него выбит номер «396»; его губы крепко зашиты. Ты замечаешь, что труп несет в руках несколько бинтов.'

    menu:
        'Ты не против, если я одолжу у тебя эти бинты?' if _r34932_condition(gsm):
            # r0 # reply34932
            $ _r34932_action(gsm)
            jump dzm396_s1
        'Ты не против, если я одолжу у тебя эти бинты?' if _r34935_condition(gsm):
            # r1 # reply34935
            jump dzm396_s1
        'Попробовать забрать бинты у зомби.' if _r34936_condition(gsm):
            # r2 # reply34936
            $ _r34936_action(gsm)
            jump dzm396_s3
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r34937_condition(gsm):
            # r3 # reply34937
            jump dzm396_s1
        'Использовать на трупе свою способность История костей.' if _r34940_condition(gsm):
            # r4 # reply34940
            jump dzm396_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r5 # reply34941
            jump dzm396_dispose
        'Оставить труп в покое.':
            # r6 # reply45106
            jump dzm396_dispose


# s1 # say34933
label dzm396_s1:  # from 0.0 0.1 0.3 4.0 4.1 4.2
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Попробовать забрать бинты у зомби.' if _r34934_condition(gsm):
            # r7 # reply34934
            $ _r34934_action(gsm)
            jump dzm396_s3
        'Использовать на трупе свою способность История костей.' if _r34940_condition(gsm):
            # r4 # reply34940
            jump dzm396_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r5 # reply34941
            jump dzm396_dispose
        'Оставить труп в покое.':
            # r8 # reply45107
            jump dzm396_dispose


# s2 # say34938
label dzm396_s2:  # from 0.4 4.3
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Ты не против, если я одолжу у тебя эти бинты?' if _r34935_condition(gsm):
            # r1 # reply34935
            jump dzm396_s1
        'Попробовать забрать бинты у зомби.' if _r34936_condition(gsm):
            # r2 # reply34936
            $ _r34936_action(gsm)
            jump dzm396_s3
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r34937_condition(gsm):
            # r3 # reply34937
            jump dzm396_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r5 # reply34941
            jump dzm396_dispose
        'Оставить труп в покое.':
            # r9 # reply34939
            jump dzm396_dispose


# s3 # say45108
label dzm396_s3:  # from 0.2 1.0
    teller 'Ты протягиваешь руку и забираешь бинты из рук трупа. Труп даже не обратил на это внимания; он продолжает перевязывать тела.'

    menu:
        'Снова осмотреть труп.':
            # r10 # reply45109
            jump dzm396_s4
        'Оставить труп в покое.':
            # r11 # reply45110
            jump dzm396_dispose


# s4 # say45111
label dzm396_s4:  # from 3.0
    if not _get_took_dzm396_bandages(gsm):
        teller 'Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. На левом виске у него выбит номер «396»; его губы крепко зашиты. Ты замечаешь, что труп несет в руках несколько бинтов.'
    if _get_took_dzm396_bandages(gsm):
        teller 'Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. Он продолжает выполнять свои обязанности, даже без бинтов. На левом виске у него выбит номер «396», а его губы крепко зашиты.'

    menu:
        'Извини, что забрал те бинты. Просто мне они нужны больше, чем этим телам.' if _r45112_condition(gsm):
            # r12 # reply45112
            $ _r45112_action(gsm)
            jump dzm396_s1
        'Извини, что забрал те бинты. Просто мне они нужны больше, чем этим телам.' if _r45113_condition(gsm):
            # r13 # reply45113
            jump dzm396_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r45114_condition(gsm):
            # r14 # reply45114
            jump dzm396_s1
        'Использовать на трупе свою способность История костей.' if _r45115_condition(gsm):
            # r15 # reply45115
            jump dzm396_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r16 # reply45116
            jump dzm396_dispose
        'Оставить труп в покое.':
            # r17 # reply45117
            jump dzm396_dispose


label dzm396_kill:
    teller 'Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. Он продолжает выполнять свои обязанности, даже без бинтов. На левом виске у него выбит номер «396», а его губы крепко зашиты.'

    menu:
        '(Уйти.)':
            jump dzm396_dispose
        '(Убить зомби).':
            jump dzm396_killed


label dzm396_killed:
    $ _kill_dzm396(gsm)
    teller 'Я швыряю труп на одного из пациентов - и бью ему в грудь, пока она не открывается гноящимися сгустками. Пустые глаза трупа устало смотрят в потолок.'
    teller 'В них нет ни жизни, ни разума. Плодить ему подобных ближайшие часы больше некому.'
    jump dzm396_dispose
