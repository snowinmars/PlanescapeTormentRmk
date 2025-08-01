init 10 python:
    from dlgs.zm506_logic import Zm506Logic
    zm506Logic = Zm506Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM506.DLG
# ###


label zm506_init:
    return


label zm506_dispose:
    jump show_graphics_menu


# s0 # say45419
label zm506_s0:  # from 3.2 # IF ~  Global("506_Thread","GLOBAL",0)
    SPEAKER 'Этот покрытый швами труп вяло передвигается между двумя плитами. Номер 506 вышит у него на лбу… и на боку шеи… и на правой руке… В сущности, у этого трупа так много швов, что его кожа выглядит как причудливая карта улиц.'

    menu:
        'Осмотреть швы.' if zm506Logic.r45420_condition():
            # r0 # reply45420
            jump zm506_s3

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zm506Logic.r45421_condition():
            # r1 # reply45421
            jump zm506_s1

        'Использовать на трупе свою способность История костей.' if zm506Logic.r45422_condition():
            # r2 # reply45422
            jump zm506_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r3 # reply45423
            jump zm506_dispose

        'Оставить зомби в покое.':
            # r4 # reply45424
            jump zm506_dispose


# s1 # say45425
label zm506_s1:  # from 0.1 4.0 4.1 5.0 5.1 5.2
    SPEAKER 'Труп самозабвенно смотрит вперед.'

    menu:
        'Оставить зомби в покое.':
            # r5 # reply45478
            jump zm506_dispose


# s2 # say45426
label zm506_s2:  # from 0.2 5.3
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить зомби в покое.':
            # r6 # reply45479
            jump zm506_dispose


# s3 # say45427
label zm506_s3:  # from 0.0
    SPEAKER 'Швы опоясывают тело, пробегая по рукам через весь торс наверх по шее и скрываясь в копне белых волос. Проходя по пересечениям швов, ты замечаешь, что кто-то приколол иголку ко лбу… в иглу вдета нить, которая выходит из шва на черепе. Ты мог бы вытащить ее, если бы у тебя было что-нибудь, чтобы разрезать нить.'

    menu:
        'Разрезать швы скальпелем, затем вытащить иголку с ниткой.' if zm506Logic.r45480_condition():
            # r7 # reply45480
            $ zm506Logic.r45480_action()
            jump zm506_s4

        'Хм-м. Возможно, здесь есть что-нибудь, чем я смог бы срезать нитку… Я еще вернусь.' if zm506Logic.r45481_condition():
            # r8 # reply45481
            jump zm506_dispose

        'Снова осмотреть труп.':
            # r9 # reply45482
            jump zm506_s0

        'Оставить труп в покое.':
            # r10 # reply45483
            jump zm506_dispose


# s4 # say45428
label zm506_s4:  # from 3.0
    SPEAKER 'Ты аккуратно срезаешь нить с помощью скальпеля, а затем выдергиваешь иголку, распуская швы. Кожа на лбу отваливается, обнажая белый как мел череп. К твоему удивлению, на нем выбит номер 78.'

    menu:
        'Похоже, у тебя два разных обозначения, труп.' if zm506Logic.r45484_condition():
            # r11 # reply45484
            $ zm506Logic.r45484_action()
            jump zm506_s1

        'Похоже, у тебя два разных обозначения, труп.' if zm506Logic.r45496_condition():
            # r12 # reply45496
            jump zm506_s1

        'Снова осмотреть труп.':
            # r13 # reply50097
            jump zm506_s5

        'Оставить зомби в покое.':
            # r14 # reply66889
            jump zm506_dispose


# s5 # say45429
label zm506_s5:  # from 4.2 # IF ~  Global("506_Thread","GLOBAL",1)
    SPEAKER 'Этот покрытый швами труп вяло передвигается между двумя плитами. Хотя по всему телу у него вышит номер 506, в месте, где кожа отвалилась ото лба, на кости выбит номер 78.'

    menu:
        'Похоже, у тебя два разных обозначения, труп.' if zm506Logic.r45502_condition():
            # r15 # reply45502
            $ zm506Logic.r45502_action()
            jump zm506_s1

        'Похоже, у тебя два разных обозначения, труп.' if zm506Logic.r45508_condition():
            # r16 # reply45508
            jump zm506_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zm506Logic.r45510_condition():
            # r17 # reply45510
            jump zm506_s1

        'Использовать на трупе свою способность История костей.' if zm506Logic.r45512_condition():
            # r18 # reply45512
            jump zm506_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r19 # reply45513
            jump zm506_dispose

        'Оставить зомби в покое.':
            # r20 # reply45514
            jump zm506_dispose
