init 10 python:
    from dlgs.dzm985_logic import Dzm985Logic
    dzm985Logic = Dzm985Logic(renpy.store.global_settings_manager)


# ###
# Original: DLG/DZM985.DLG
# ###


label dzm985_init:
    return


label dzm985_dispose:
    jump show_graphics_menu


# s0 # say45515
label dzm985_s0:  # - # IF ~  Global("Topple_985","GLOBAL",0)  Check EXTERN ~DMORTE~ : 482
    SPEAKER 'Этот труп, номер 985, встал как вкопанный; судя по состоянию его левой ноги, похоже, что его колено сгнило либо изъедено трупной плесенью. Труп неуверенно качается вперед и назад, пытаясь сохранить равновесие.'

    menu:
        'Толкнуть труп.' if dzm985Logic.r45517_condition():
            # r0 # reply45517
            $ dzm985Logic.r45517_action()
            jump dzm985_s3

        'Помочь трупу остаться в равновесии.' if dzm985Logic.r45518_condition():
            # r1 # reply45518
            $ dzm985Logic.r45518_action()
            jump dzm985_s4

        'Помочь трупу остаться в равновесии.' if dzm985Logic.r45519_condition():
            # r2 # reply45519
            $ dzm985Logic.r45519_action()
            jump dzm985_s6

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm985Logic.r45520_condition():
            # r3 # reply45520
            jump dzm985_s1

        'Использовать на трупе свою способность История костей.' if dzm985Logic.r45521_condition():
            # r4 # reply45521
            jump dzm985_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r5 # reply45522
            jump show_graphics_menu

        'Оставить труп в покое.':
            # r6 # reply45523
            jump show_graphics_menu


# s1 # say45524
label dzm985_s1:  # from 0.4 5.0 5.1 5.2
    SPEAKER 'Труп самозабвенно смотрит вперед, не подавая никаких признаков того, что он тебя услышал.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply45525
            jump show_graphics_menu


# s2 # say45526
label dzm985_s2:  # from 0.5 5.3
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r8 # reply45527
            jump show_graphics_menu


# s3 # say45528
label dzm985_s3:  # from 0.1 6.0 # ~PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE) CreateItem("Limb985",1,0,0) SetGlobal("Topple_985","GLOBAL",1) Kill(Myself) Deactivate(Myself) ~ GOTO 7
    SPEAKER 'В левой ноге трупа раздается хруст, и тело падает, как срубленное дерево. Туловище ударяется о каменные плиты и раскалывается, как гнилая дыня; гной, булькая, вытекает из трещин. К твоему удивлению, никто даже не заметил падения мертвеца… и что еще более странно, левая нога продолжает стоять там, где стояло тело, словно по стойке смирно. Спустя мгновенье, нога падает с сочным гулким ударом.'

    jump show_graphics_menu

# s4 # say45530
label dzm985_s4:  # from 0.2 # Check EXTERN ~DMORTE~ : 482
    SPEAKER 'Ты тянешься к левой руке трупа, желая помочь ему устоять. Но когда ты хватаешься за его руку, труп неожиданно кренится вправо, и ты скорее тянешь его, чем помогаешь удержаться…'

    jump show_graphics_menu

# s5 # say45531
label dzm985_s5:  # - # IF ~  GlobalGT("Topple_985","GLOBAL",0)
    SPEAKER 'Похоже, кто-то заменил этому трупу левую руку и ногу от другого тела. Левая нога короче, чем надо, но теперь, по крайней мере, труп может стоять.'

    menu:
        'Извини, что сбил тебя с ног. Я случайно.' if dzm985Logic.r45532_condition():
            # r9 # reply45532
            $ dzm985Logic.r45532_action()
            jump dzm985_s1

        'Извини, что сбил тебя с ног. Я случайно.' if dzm985Logic.r45533_condition():
            # r10 # reply45533
            jump dzm985_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm985Logic.r45534_condition():
            # r11 # reply45534
            jump dzm985_s1

        'Использовать на трупе свою способность История костей.' if dzm985Logic.r45535_condition():
            # r12 # reply45535
            jump dzm985_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r13 # reply45536
            jump show_graphics_menu

        'Оставить труп в покое.':
            # r14 # reply45537
            jump show_graphics_menu


# s6 # say45538
label dzm985_s6:  # from 0.3
    SPEAKER 'Ты тянешься к левой руке трупа, желая помочь ему устоять. Но когда ты хватаешься за его руку, труп неожиданно кренится вправо, и ты скорее тянешь его, чем помогаешь удержаться…'

    menu:
        'Ой-ой…':
            # r15 # reply45539
            $ dzm985Logic.r45539_action()
            jump dzm985_s3


# s7 # say64205
label dzm985_s7:  # from 3.0
    SPEAKER 'Рассматривая гнилые остатки тела, ты замечаешь, левая рука совсем не тронута: она отвалилась от туловища во время падения, и совсем не похоже, чтобы она была поражена трупным гниением, как это случилось с остальной частью тела.'

    menu:
        'Хм-м. Думаю, я смогу найти применение этой руке…':
            # r16 # reply64206
            jump show_graphics_menu
