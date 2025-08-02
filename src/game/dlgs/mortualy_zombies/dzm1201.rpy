init 10 python:
    from dlgs.mortualy_zombies.dzm1201_logic import Dzm1201Logic
    dzm1201Logic = Dzm1201Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZM1201.DLG
# ###


label start_dzm1201_talk:
    call dzm1201_init
    jump dzm1201_s0
label start_dzm1201_kill:
    call dzm1201_init
    jump dzm1201_kill
label dzm1201_init:
    $ dzm1201Logic.dzm1201_init()
    scene bg mortuary_f2r3
    show dzm1201_img default at center_left_down
    return
label dzm1201_dispose:
    hide dzm1201_img
    jump show_graphics_menu


# s0 # say34953
label dzm1201_s0:  # - # IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
    teller 'На лбу этого трупа чернилами написан номер «1201», чернила стекли на глаза, щеки и челюсти.'
    teller 'Чернильные капли падают с лица, ты замечаешь, что они попадают в зашитый рот, из которого торчит уголок какой-то записки.'

    menu:
        'Попробовать вытащить записку.' if dzm1201Logic.r34954_condition():
            # r0 # reply34954
            jump dzm1201_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm1201Logic.r34957_condition():
            # r1 # reply34957
            jump dzm1201_s3

        'Использовать на трупе свою способность История костей.' if dzm1201Logic.r34958_condition():
            # r2 # reply34958
            jump dzm1201_s4

        'Было приятно поболтать с тобой. Прощай.':
            # r3 # reply34959
            jump dzm1201_dispose

        'Оставить труп в покое.':
            # r4 # reply34962
            jump dzm1201_dispose


# s1 # say34955
label dzm1201_s1:  # from 0.0
    teller 'Записка во рту зомби заляпана гноем. Если ты попытаешься вытащить бумагу сквозь стежки, она порвется на части.'
    teller 'Попытка вскрыть зомби уничтожит записку — тебе нужно найти деликатный способ удалить швы перед тем, как достать записку.'

    menu:
        'Срезать швы скальпелем.' if dzm1201Logic.r34956_condition():
            # r5 # reply34956
            $ dzm1201Logic.r34956_action()
            jump dzm1201_s2

        'Хм-м. Если бы у меня было что-нибудь, чтобы разрезать эти швы…' if dzm1201Logic.r45122_condition():
            # r6 # reply45122
            jump dzm1201_dispose


# s2 # say34960
label dzm1201_s2:  # from 1.0
    teller 'Ты ловко перерезаешь швы на рту зомби, и его челюсти раскрываются. Ты осторожно вынимаешь записку изо рта трупа…'
    teller '…несмотря на состояние бумаги, записи все еще можно разобрать.'

    menu:
        'Снова осмотреть труп.':
            # r7 # reply34961
            jump dzm1201_s5

        'Оставить труп в покое.':
            # r8 # reply45123
            jump dzm1201_dispose


# s3 # say45124
label dzm1201_s3:  # from 0.1 5.0 5.1 5.2
    teller 'Молочно-белые глаза трупа смотрят на тебя без выражения.'

    menu:
        'Использовать на трупе свою способность История костей.' if dzm1201Logic.r34958_condition():
            # r2 # reply34958
            jump dzm1201_s4

        'Было приятно поболтать с тобой. Прощай.':
            # r3 # reply34959
            jump dzm1201_dispose

        'Оставить труп в покое.':
            # r9 # reply45125
            jump dzm1201_dispose


# s4 # say45126
label dzm1201_s4:  # from 0.2 5.3
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm1201Logic.r34957_condition():
            # r1 # reply34957
            jump dzm1201_s3

        'Было приятно поболтать с тобой. Прощай.':
            # r3 # reply34959
            jump dzm1201_dispose

        'Оставить труп в покое.':
            # r10 # reply45127
            jump dzm1201_dispose


# s5 # say45128
label dzm1201_s5:  # from 2.0 # IF ~  Global("1201_Note_Retrieved","GLOBAL",1)
    teller 'На лбу этого трупа чернилами написан номер «1201», чернила стекли на глаза, щеки и челюсти, создавая впечатление, что он плачет.'
    teller 'Его челюсть распахнута, из уголка рта течет струйка гноя.'

    menu:
        'Извини, что срезал швы… Мне просто нужно было посмотреть, что у тебя во рту.' if dzm1201Logic.r45129_condition():
            # r11 # reply45129
            $ dzm1201Logic.r45129_action()
            jump dzm1201_s3

        'Извини, что срезал швы… Мне просто нужно было посмотреть, что у тебя во рту.' if dzm1201Logic.r45130_condition():
            # r12 # reply45130
            jump dzm1201_s3

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm1201Logic.r45131_condition():
            # r13 # reply45131
            jump dzm1201_s3

        'Использовать на трупе свою способность История костей.' if dzm1201Logic.r45132_condition():
            # r14 # reply45132
            jump dzm1201_s4

        'Было приятно поболтать с тобой. Прощай.':
            # r15 # reply45133
            jump dzm1201_dispose

        'Оставить труп в покое.':
            # r16 # reply45134
            jump dzm1201_dispose


label dzm1201_kill:
    teller 'На лбу этого трупа чернилами написан номер «1201», чернила стекли на глаза, щеки и челюсти.'
    teller 'Чернильные капли падают с лица, ты замечаешь, что они попадают в зашитый рот, из которого торчит уголок какой-то записки.'

    menu:
        '(Уйти.)':
            jump dzm1201_dispose
        '(Убить зомби).':
            jump dzm1201_killed


label dzm1201_killed:
    $ dzm1201Logic.kill_dzm1201()
    teller "Я не знаю, откуда взялись чернила. Труп не реагирует на мои удары: пустые слёзы пустых глаз."
    teller "В них нет ни жизни, ни разума. Я без сожалений вбиваю скальпель между глаз до тех пор, пока ходячий труп не падает."
    if dzm1201Logic.r34954_condition():
        teller "Что-то отвратительное вытекает изо рта зомби. Записка очевидно уничтожена."
    jump dzm1201_dispose
