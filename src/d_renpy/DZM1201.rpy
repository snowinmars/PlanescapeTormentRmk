init 10 python:
    from game.dlgs.zm1201_logic import Zm1201Logic
    zm1201Logic = Zm1201Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM1201.DLG
# ###


label start_zm1201_talk_first:
    call zm1201_init
    jump todo
label start_zm1201_talk:
    call zm1201_init
    jump todo
label start_zm1201_kill_first:
    call zm1201_init
    jump zm1201_kill_first
label start_zm1201_kill:
    call zm1201_init
    jump zm1201_kill
label zm1201_init:
    $ zm1201Logic.zm1201_init()
    scene bg LOCATION
    show zm1201_img default at center_left_down
    return
label zm1201_dispose:
    hide zm1201_img
    jump graphics_menu


# s0 # say34953
label zm1201_s0:  # - # IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
    SPEAKER 'На лбу этого трупа чернилами написан номер «1201», чернила стекли на глаза, щеки и челюсти. Чернильные капли падают с лица, ты замечаешь, что они попадают в зашитый рот, из которого торчит уголок какой-то записки.'

    menu:
        'Попробовать вытащить записку.' if zm1201Logic.r34954_condition():
            # r0 # reply34954
            jump zm1201_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm1201Logic.r34957_condition():
            # r1 # reply34957
            jump zm1201_s3

        'Использовать на трупе свою способность «История костей».' if zm1201Logic.r34958_condition():
            # r2 # reply34958
            jump zm1201_s4

        '«Было приятно поболтать с тобой. Прощай».':
            # r3 # reply34959
            jump zm1201_dispose

        'Оставить труп в покое.':
            # r4 # reply34962
            jump zm1201_dispose


# s1 # say34955
label zm1201_s1:  # from 0.0
    SPEAKER 'Записка во рту зомби заляпана гноем. Если ты попытаешься вытащить бумагу сквозь стежки, она порвется на части. Попытка вскрыть зомби уничтожит записку — тебе нужно найти деликатный способ удалить швы перед тем, как достать записку.'

    menu:
        'Срезать швы скальпелем.' if zm1201Logic.r34956_condition():
            # r5 # reply34956
            $ zm1201Logic.r34956_action()
            jump zm1201_s2

        '«Хм-м. Если бы у меня было что-нибудь, чтобы разрезать эти швы…»' if zm1201Logic.r45122_condition():
            # r6 # reply45122
            jump zm1201_dispose


# s2 # say34960
label zm1201_s2:  # from 1.0
    SPEAKER 'Ты ловко перерезаешь швы на рту зомби, и его челюсти раскрываются. Ты осторожно вынимаешь записку изо рта трупа… несмотря на состояние бумаги, записи все еще можно разобрать.'

    menu:
        'Снова осмотреть труп.':
            # r7 # reply34961
            jump zm1201_s5

        'Оставить труп в покое.':
            # r8 # reply45123
            jump zm1201_dispose


# s3 # say45124
label zm1201_s3:  # from 0.1 5.0 5.1 5.2
    SPEAKER 'Молочно-белые глаза трупа смотрят на тебя без выражения.'

    menu:
        'Оставить труп в покое.':
            # r9 # reply45125
            jump zm1201_dispose


# s4 # say45126
label zm1201_s4:  # from 0.2 5.3
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r10 # reply45127
            jump zm1201_dispose


# s5 # say45128
label zm1201_s5:  # from 2.0 # IF ~  Global("1201_Note_Retrieved","GLOBAL",1)
    SPEAKER 'На лбу этого трупа чернилами написан номер «1201», чернила стекли на глаза, щеки и челюсти, создавая впечатление, что он плачет. Его челюсть распахнута, из уголка рта течет струйка гноя.'

    menu:
        '«Извини, что срезал швы… Мне просто нужно было посмотреть, что у тебя во рту».' if zm1201Logic.r45129_condition():
            # r11 # reply45129
            $ zm1201Logic.r45129_action()
            jump zm1201_s3

        '«Извини, что срезал швы… Мне просто нужно было посмотреть, что у тебя во рту».' if zm1201Logic.r45130_condition():
            # r12 # reply45130
            jump zm1201_s3

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm1201Logic.r45131_condition():
            # r13 # reply45131
            jump zm1201_s3

        'Использовать на трупе свою способность «История костей».' if zm1201Logic.r45132_condition():
            # r14 # reply45132
            jump zm1201_s4

        '«Было приятно поболтать с тобой. Прощай».':
            # r15 # reply45133
            jump zm1201_dispose

        'Оставить труп в покое.':
            # r16 # reply45134
            jump zm1201_dispose


label zm1201_kill:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm1201_dispose
        'Убить.':
            jump zm1201_killed


label zm1201_killed:
    $ zm1201Logic.kill_zm1201()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm1201s.'
    nr 'Who is zm1201?'
    nr 'zm1201 is dead, baby, zm1201 is dead.'
    jump zm1201_dispose


label zm1201_kill_first:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm1201_dispose
        'Убить.':
            jump zm1201_killed_first


label zm1201_killed_first:
    $ zm1201Logic.kill_zm1201()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm1201s.'
    nr 'Who is zm1201?'
    nr 'zm1201 is dead, baby, zm1201 is dead.'
    jump zm1201_dispose
