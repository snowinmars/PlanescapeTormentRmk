init 10 python:
    from dlgs.mortualy_zombies.dzm396_logic import Dzm396Logic
    dzm396Logic = Dzm396Logic(renpy.store.global_settings_manager)


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
    $ dzm396Logic.dzm396_init()
    scene bg mortuary_f2r3
    show dzm396_img default at center_left_down
    return
label dzm396_dispose:
    hide dzm396_img
    jump show_graphics_menu


# s0 # say34931
label dzm396_s0:  # - # IF ~  HasItem("Bandage","ZM396")
    teller 'Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. На левом виске у него выбит номер «396»; его губы крепко зашиты. Ты замечаешь, что труп несет в руках несколько бинтов.'

    menu:
        'Ты не против, если я одолжу у тебя эти бинты?' if dzm396Logic.r34932_condition():
            # r0 # reply34932
            $ dzm396Logic.r34932_action()
            jump dzm396_s1

        'Ты не против, если я одолжу у тебя эти бинты?' if dzm396Logic.r34935_condition():
            # r1 # reply34935
            jump dzm396_s1

        'Попробовать забрать бинты у зомби.' if dzm396Logic.r34936_condition():
            # r2 # reply34936
            $ dzm396Logic.r34936_action()
            jump dzm396_s3

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm396Logic.r34937_condition():
            # r3 # reply34937
            jump dzm396_s1

        'Использовать на трупе свою способность История костей.' if dzm396Logic.r34940_condition():
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
        'Попробовать забрать бинты у зомби.' if dzm396Logic.r34934_condition():
            # r7 # reply34934
            $ dzm396Logic.r34934_action()
            jump dzm396_s3

        'Использовать на трупе свою способность История костей.' if dzm396Logic.r34940_condition():
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
        'Ты не против, если я одолжу у тебя эти бинты?' if dzm396Logic.r34935_condition():
            # r1 # reply34935
            jump dzm396_s1

        'Попробовать забрать бинты у зомби.' if dzm396Logic.r34936_condition():
            # r2 # reply34936
            $ dzm396Logic.r34936_action()
            jump dzm396_s3

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm396Logic.r34937_condition():
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
label dzm396_s4:  # from 3.0 # IF ~  !HasItem("Bandage","ZM396") TODO [snow]: wtf is this if?
    if not _get_took_dzm396_bandages():
        teller 'Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. На левом виске у него выбит номер «396»; его губы крепко зашиты. Ты замечаешь, что труп несет в руках несколько бинтов.'
    if _get_took_dzm396_bandages():
        teller 'Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. Он продолжает выполнять свои обязанности, даже без бинтов. На левом виске у него выбит номер «396», а его губы крепко зашиты.'

    menu:
        'Извини, что забрал те бинты. Просто мне они нужны больше, чем этим телам.' if dzm396Logic.r45112_condition():
            # r12 # reply45112
            $ dzm396Logic.r45112_action()
            jump dzm396_s1

        'Извини, что забрал те бинты. Просто мне они нужны больше, чем этим телам.' if dzm396Logic.r45113_condition():
            # r13 # reply45113
            jump dzm396_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm396Logic.r45114_condition():
            # r14 # reply45114
            jump dzm396_s1

        'Использовать на трупе свою способность История костей.' if dzm396Logic.r45115_condition():
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
    $ dzm396Logic.kill_dzm396()
    teller 'Я швыряю труп на одного из пациентов - и бью ему в грудь, пока она не открывается гноящимися сгустками. Пустые глаза трупа устало смотрят в потолок.'
    teller 'В них нет ни жизни, ни разума. Плодить ему подобных ближайшие часы больше некому.'
    jump dzm396_dispose
