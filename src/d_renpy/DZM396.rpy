init 10 python:
    from dlgs.zm396_logic import Zm396Logic
    zm396Logic = Zm396Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM396.DLG
# ###


label zm396_init:
    return


label zm396_dispose:
    jump show_graphics_menu


# s0 # say34931
label zm396_s0:  # - # IF ~  HasItem("Bandage","ZM396")
    SPEAKER 'Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. На левом виске у него выбит номер 396; его губы крепко зашиты. Ты замечаешь, что труп несет в руках несколько бинтов… похоже, они могут пригодиться.'

    menu:
        'Ты не против, если я одолжу у тебя эти бинты?' if zm396Logic.r34932_condition():
            # r0 # reply34932
            $ zm396Logic.r34932_action()
            jump zm396_s1

        'Ты не против, если я одолжу у тебя эти бинты?' if zm396Logic.r34935_condition():
            # r1 # reply34935
            jump zm396_s1

        'Попробовать забрать бинты у зомби.':
            # r2 # reply34936
            $ zm396Logic.r34936_action()
            jump zm396_s3

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zm396Logic.r34937_condition():
            # r3 # reply34937
            jump zm396_s1

        'Использовать на трупе свою способность История костей.' if zm396Logic.r34940_condition():
            # r4 # reply34940
            jump zm396_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r5 # reply34941
            jump zm396_dispose

        'Оставить труп в покое.':
            # r6 # reply45106
            jump zm396_dispose


# s1 # say34933
label zm396_s1:  # from 0.0 0.1 0.3 4.0 4.1 4.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Попробовать забрать бинты у зомби.' if zm396Logic.r34934_condition():
            # r7 # reply34934
            $ zm396Logic.r34934_action()
            jump zm396_s3

        'Оставить труп в покое.':
            # r8 # reply45107
            jump zm396_dispose


# s2 # say34938
label zm396_s2:  # from 0.4 4.3
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r9 # reply34939
            jump zm396_dispose


# s3 # say45108
label zm396_s3:  # from 0.2 1.0
    SPEAKER 'Ты протягиваешь руку и забираешь бинты из рук трупа. Труп даже не обратил на это внимания; он продолжает перевязывать тела.'

    menu:
        'Снова осмотреть труп.':
            # r10 # reply45109
            jump zm396_s4

        'Оставить труп в покое.':
            # r11 # reply45110
            jump zm396_dispose


# s4 # say45111
label zm396_s4:  # from 3.0 # IF ~  !HasItem("Bandage","ZM396")
    SPEAKER 'Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. Он продолжает выполнять свои обязанности, даже без бинтов. На левом виске у него выбит номер 396, а его губы крепко зашиты.'

    menu:
        'Извини, что забрал те бинты. Просто мне они нужны больше, чем этим телам.' if zm396Logic.r45112_condition():
            # r12 # reply45112
            $ zm396Logic.r45112_action()
            jump zm396_s1

        'Извини, что забрал те бинты. Просто мне они нужны больше, чем этим телам.' if zm396Logic.r45113_condition():
            # r13 # reply45113
            jump zm396_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zm396Logic.r45114_condition():
            # r14 # reply45114
            jump zm396_s1

        'Использовать на трупе свою способность История костей.' if zm396Logic.r45115_condition():
            # r15 # reply45115
            jump zm396_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r16 # reply45116
            jump zm396_dispose

        'Оставить труп в покое.':
            # r17 # reply45117
            jump zm396_dispose
