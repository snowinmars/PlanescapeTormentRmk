init 10 python:
    from game.dlgs.zm985_logic import Zm985Logic
    zm985Logic = Zm985Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM985.DLG
# ###


label start_zm985_talk_first:
    call zm985_init
    jump todo
label start_zm985_talk:
    call zm985_init
    jump todo
label start_zm985_kill_first:
    call zm985_init
    jump zm985_kill_first
label start_zm985_kill:
    call zm985_init
    jump zm985_kill
label zm985_init:
    $ zm985Logic.zm985_init()
    scene bg LOCATION
    show zm985_img default at center_left_down
    return
label zm985_dispose:
    hide zm985_img
    jump graphics_menu


# s0 # say45515
label zm985_s0:  # - # IF ~  Global("Topple_985","GLOBAL",0)
    SPEAKER 'Этот труп, номер «985», встал как вкопанный; судя по состоянию его левой ноги, похоже, что его колено сгнило либо изъедено трупной плесенью. Труп неуверенно качается вперед и назад, пытаясь сохранить равновесие.'

    menu:
        'Толкнуть труп.' if zm985Logic.r45516_condition():
            # r0 # reply45516
            $ zm985Logic.r45516_action()
            jump morte_s482  # EXTERN

        'Толкнуть труп.' if zm985Logic.r45517_condition():
            # r1 # reply45517
            $ zm985Logic.r45517_action()
            jump zm985_s3

        'Помочь трупу остаться в равновесии.' if zm985Logic.r45518_condition():
            # r2 # reply45518
            $ zm985Logic.r45518_action()
            jump zm985_s4

        'Помочь трупу остаться в равновесии.' if zm985Logic.r45519_condition():
            # r3 # reply45519
            $ zm985Logic.r45519_action()
            jump zm985_s6

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm985Logic.r45520_condition():
            # r4 # reply45520
            jump zm985_s1

        'Использовать на трупе свою способность «История костей».' if zm985Logic.r45521_condition():
            # r5 # reply45521
            jump zm985_s2

        '«Было приятно с тобой поболтать. Прощай».':
            # r6 # reply45522
            jump zm985_dispose

        'Оставить труп в покое.':
            # r7 # reply45523
            jump zm985_dispose


# s1 # say45524
label zm985_s1:  # from 0.4 5.0 5.1 5.2
    SPEAKER 'Труп самозабвенно смотрит вперед, не подавая никаких признаков того, что он тебя услышал.'

    menu:
        'Оставить труп в покое.':
            # r8 # reply45525
            jump zm985_dispose


# s2 # say45526
label zm985_s2:  # from 0.5 5.3
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r9 # reply45527
            jump zm985_dispose


# s3 # say45528
label zm985_s3:  # from 0.1 6.0 # ~PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE) CreateItem("Limb985",1,0,0) SetGlobal("Topple_985","GLOBAL",1) Kill(Myself) Deactivate(Myself) ~ GOTO 7
    SPEAKER 'В левой ноге трупа раздается хруст, и тело падает, как срубленное дерево. Туловище ударяется о каменные плиты и раскалывается, как гнилая дыня; гной, булькая, вытекает из трещин. К твоему удивлению, никто даже не заметил падения мертвеца… и что еще более странно, левая нога продолжает стоять там, где стояло тело, словно по стойке «смирно». Спустя мгновенье, нога падает с сочным гулким ударом.'

    menu:

# s4 # say45530
label zm985_s4:  # from 0.2 # ~PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE) ~ EXTERN ~DMORTE~ 482
    SPEAKER 'Ты тянешься к левой руке трупа, желая помочь ему устоять. Но когда ты хватаешься за его руку, труп неожиданно кренится вправо, и ты скорее тянешь его, чем помогаешь удержаться…'

    menu:

# s5 # say45531
label zm985_s5:  # - # IF ~  GlobalGT("Topple_985","GLOBAL",0)
    SPEAKER 'Похоже, кто-то заменил этому трупу левую руку и ногу от другого тела. Левая нога короче, чем надо, но теперь, по крайней мере, труп может стоять.'

    menu:
        '«Извини, что сбил тебя с ног. Я случайно».' if zm985Logic.r45532_condition():
            # r10 # reply45532
            $ zm985Logic.r45532_action()
            jump zm985_s1

        '«Извини, что сбил тебя с ног. Я случайно».' if zm985Logic.r45533_condition():
            # r11 # reply45533
            jump zm985_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm985Logic.r45534_condition():
            # r12 # reply45534
            jump zm985_s1

        'Использовать на трупе свою способность «История костей».' if zm985Logic.r45535_condition():
            # r13 # reply45535
            jump zm985_s2

        '«Было приятно с тобой поболтать. Прощай».':
            # r14 # reply45536
            jump zm985_dispose

        'Оставить труп в покое.':
            # r15 # reply45537
            jump zm985_dispose


# s6 # say45538
label zm985_s6:  # from 0.3
    SPEAKER 'Ты тянешься к левой руке трупа, желая помочь ему устоять. Но когда ты хватаешься за его руку, труп неожиданно кренится вправо, и ты скорее тянешь его, чем помогаешь удержаться…'

    menu:
        '«Ой-ой…»':
            # r16 # reply45539
            $ zm985Logic.r45539_action()
            jump zm985_s3


# s7 # say64205
label zm985_s7:  # from 3.0
    SPEAKER 'Рассматривая гнилые остатки тела, ты замечаешь, левая рука совсем не тронута: она отвалилась от туловища во время падения, и совсем не похоже, чтобы она была поражена трупным гниением, как это случилось с остальной частью тела.'

    menu:
        '«Хм-м. Думаю, я смогу найти применение этой руке…»':
            # r17 # reply64206
            jump zm985_dispose


label zm985_kill:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm985_dispose
        'Убить.':
            jump zm985_killed


label zm985_killed:
    $ zm985Logic.kill_zm985()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm985s.'
    nr 'Who is zm985?'
    nr 'zm985 is dead, baby, zm985 is dead.'
    jump zm985_dispose


label zm985_kill_first:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm985_dispose
        'Убить.':
            jump zm985_killed_first


label zm985_killed_first:
    $ zm985Logic.kill_zm985()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm985s.'
    nr 'Who is zm985?'
    nr 'zm985 is dead, baby, zm985 is dead.'
    jump zm985_dispose
